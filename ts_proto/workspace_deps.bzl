"A function to call in WORKSPACE files for projects that use rules_ts_proto."

_REQUIRED_NPM_PACKAGE_NAMES = [
    "grpc-web",
    "google-protobuf",
    "@types/google-protobuf",
]

def _config_bzl_contents(js_import_bazel_target_map):
    missing_keys = [
        required_key
        for required_key in _REQUIRED_NPM_PACKAGE_NAMES
        if required_key not in js_import_bazel_target_map
    ]

    if len(missing_keys) > 0:
        fail("js_import_bazel_target_map dictionary is missing {n} required keys: {keys}".format(
            n = len(missing_keys),
            keys = missing_keys,
        ))

    normalized_map = {}
    for (key, val) in js_import_bazel_target_map.items():
        if val == None:
            normalized_map[key] = []
        elif type(val) == "string":
            normalized_map[key] = [val]
        else:
            normalized_map[key] = val

    return """

JS_IMPORT_BAZEL_TARGET_MAP = {map}

""".format(map = json.encode(normalized_map))

def _config_repository_impl(repo_ctx):
    repo_ctx.file("ts_proto_library_config.bzl", repo_ctx.attr.bzl_contents)
    repo_ctx.file("BUILD.bazel", """
load("@bazel_skylib//:bzl_library.bzl", "bzl_library")

bzl_library(
    name = "ts_proto_library_config",
    srcs = ["ts_proto_library_config.bzl"],
    visibility = ["{rules_ts_proto_repo}//:__subpackages__"],
)
""".format(
        rules_ts_proto_repo = repo_ctx.attr.rules_ts_proto_repo_only_for_internal_use,
    ))

_config_repository = repository_rule(
    _config_repository_impl,
    attrs = {
        "rules_ts_proto_repo_only_for_internal_use": attr.string(
            default = "@rules_ts_proto",
        ),
        "bzl_contents": attr.string(
            doc = "Contents of the ts_proto_library_config.bzl file to generate.",
            mandatory = True,
        ),
    },
)

_config = tag_class(attrs = {
    "name": attr.string(),
    "dep_targets": attr.string_dict(),
})

def _config_repository_impl2(ctx):
    for mod in ctx.modules:
        for c in mod.tags.config:
            print("creating ", c.name)
            _config_repository(
                name = c.name,
                bzl_contents = _config_bzl_contents(c.dep_targets),
            )

config_repository = module_extension(
    implementation = _config_repository_impl2,
    tag_classes = {"config": _config},
)
