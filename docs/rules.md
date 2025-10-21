<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Public API re-exports

<a id="ts_proto_library"></a>

## ts_proto_library

<pre>
ts_proto_library(<a href="#ts_proto_library-name">name</a>, <a href="#ts_proto_library-proto">proto</a>, <a href="#ts_proto_library-visibility">visibility</a>, <a href="#ts_proto_library-deps">deps</a>, <a href="#ts_proto_library-tsconfig">tsconfig</a>, <a href="#ts_proto_library-source_map">source_map</a>, <a href="#ts_proto_library-declaration">declaration</a>, <a href="#ts_proto_library-declaration_map">declaration_map</a>)
</pre>

A rule for compiling protobufs into a ts_project.

**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="ts_proto_library-name"></a>name |  Name of the ts_project to produce.   |  none |
| <a id="ts_proto_library-proto"></a>proto |  proto_library rule to compile.   |  none |
| <a id="ts_proto_library-visibility"></a>visibility |  Visibility of output library.   |  <code>None</code> |
| <a id="ts_proto_library-deps"></a>deps |  TypeScript dependencies.   |  <code>[]</code> |
| <a id="ts_proto_library-tsconfig"></a>tsconfig |  The tsconfig to be passed to ts_project rules.   |  <code>None</code> |
| <a id="ts_proto_library-source_map"></a>source_map |  Whether the <code>sourceMap</code> bit is set in the tsconfig. Instructs Bazel to expect a <code>.js.map</code> output for each <code>.ts</code> source.   |  <code>True</code> |
| <a id="ts_proto_library-declaration"></a>declaration |  Whether the <code>declaration</code> bit is set in the tsconfig. Instructs Bazel to expect a <code>.d.ts</code> output for each <code>.ts</code> source.   |  <code>True</code> |
| <a id="ts_proto_library-declaration_map"></a>declaration_map |  Whether the <code>declarationMap</code> bit is set in the tsconfig. Instructs Bazel to expect a <code>.d.ts.map</code> output for each <code>.ts</code> source.   |  <code>True</code> |


