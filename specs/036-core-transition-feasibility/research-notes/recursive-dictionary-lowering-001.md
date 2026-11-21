# Source-directed recursive dictionary lowering: implemented boundary

The source patch [aeneas-recursive-dictionary-lowering-001.patch](../../../experiments/transition-study036/patches/v2/aeneas-recursive-dictionary-lowering-001.patch) now builds as actual363. This establishes a compiler artifact, not preservation of native Core semantics. Actual364 is the pending use of that compiler on the frozen344 Core IR. Do not infer its outcome from this note.

The motivating dependency is concrete: the Value dictionary packages `serialize`; `serialize` calls a loop and passes the Value dictionary to the generic vector serializer; the loop body passes that dictionary to the generic map-entry serializer. Ordinary declaration sorting cannot order this cycle.

The implementation is deliberately narrower than a general mixed SCC compiler:

- It considers Lean NonPos implementations with no implementation generics, parent dictionaries, associated types or constants, and exactly one method.
- It examines the translated method and its existing flattened loops/bodies for concrete references to their own dictionary. The original function-only visitor did not collect these dictionary references.
- Those helper declarations must be transparent and their direct function dependency graph acyclic. A selected method must occur in a singleton emitted function group. Invalid selected forms stop with a diagnostic; they are not silently proved or replaced by an opaque body.
- New helper names must avoid existing emitted names. The synthetic dictionary binder is reserved before normal local-name allocation.

For an eligible family, the emitter adds an explicit dictionary argument to helper copies, redirects only the selected family's function references to those helpers, and binds concrete occurrences of the selected dictionary to that argument. This state lives in the extraction context, not a global mutable printer flag. The actual dictionary is emitted through the existing singleton NonPos `partial_fixpoint` path, invoking the parameterized method. Afterwards the original method/loop ASTs are emitted with the normal context. No generated Lean body is hand-edited, and the native Rust subject is unchanged.

Two mathematical obligations remain distinct: the method must satisfy its dictionary constructor's condition for each fixed recursive argument, and the dictionary operator must be continuous in that argument. Actual361 checks this mechanism for a small Encoder/Driver model, including a fresh kernel, exact theorem-type and transitive-foundation audit, genuine forward-reference rejection, a wrong-result theorem and rejection of an opaque method without continuity. It is not an actual Value or compiler preservation theorem.

Actual362 parses the five exact proposed OCaml source files with the bound compiler. Actual363 compiles them and verifies build/version/help, emitted source hashes and original source preservation. The successful artifact is SHA256 `f39b03a5b97da59084b2686b997de26c20842aebb570d3f47f289a4576306185`, version suffix `dictionary-840c71a4d89a`. Source/patch identity and the closed model/parse prerequisites are checked separately by `recursive_dictionary_source_v2.py`. Its admission tests also reject missing kernels, wrong subjects, changed source, duplicate/boolean/timed-out command records and promotion of a syntax/model result into a native proof.

The next evidence must come from the actual Core extraction and Lean output. It must show the complete Value branch/call graph, real constructor and operator obligations, actual unfolding/field equations and intended rejection controls. A typechecked helper or unchanged finite observation alone cannot establish the composed native proof. Full source-to-model/stdlib adequacy, other native dependency bridges, B01–B10, T052/T059 and the accepted experiment/reproduction matrices remain open.
