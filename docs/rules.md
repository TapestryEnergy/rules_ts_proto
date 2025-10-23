<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Public API re-exports

<a id="ts_proto_library"></a>

## ts_proto_library

<pre>
load("@rules_ts_proto//ts_proto:defs.bzl", "ts_proto_library")

ts_proto_library(<a href="#ts_proto_library-name">name</a>, <a href="#ts_proto_library-proto">proto</a>, <a href="#ts_proto_library-visibility">visibility</a>, <a href="#ts_proto_library-deps">deps</a>, <a href="#ts_proto_library-tsconfig">tsconfig</a>, <a href="#ts_proto_library-source_map">source_map</a>, <a href="#ts_proto_library-declaration">declaration</a>, <a href="#ts_proto_library-declaration_map">declaration_map</a>)
</pre>

A rule for compiling protobufs into a ts_project.

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="ts_proto_library-name"></a>name |  Name of the ts_project to produce.   |  none |
| <a id="ts_proto_library-proto"></a>proto |  proto_library rule to compile.   |  none |
| <a id="ts_proto_library-visibility"></a>visibility |  Visibility of output library.   |  `None` |
| <a id="ts_proto_library-deps"></a>deps |  TypeScript dependencies.   |  `[]` |
| <a id="ts_proto_library-tsconfig"></a>tsconfig |  The tsconfig to be passed to ts_project rules.   |  `None` |
| <a id="ts_proto_library-source_map"></a>source_map |  Whether the `sourceMap` bit is set in the tsconfig. Instructs Bazel to expect a `.js.map` output for each `.ts` source.   |  `True` |
| <a id="ts_proto_library-declaration"></a>declaration |  Whether the `declaration` bit is set in the tsconfig. Instructs Bazel to expect a `.d.ts` output for each `.ts` source.   |  `True` |
| <a id="ts_proto_library-declaration_map"></a>declaration_map |  Whether the `declarationMap` bit is set in the tsconfig. Instructs Bazel to expect a `.d.ts.map` output for each `.ts` source.   |  `True` |


