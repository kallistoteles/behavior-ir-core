# Next canonical Child row law

New unselected source-only plan. Only the specifically permitted repository,
retained component/type and backend source files were read. No model/code was
written, no process/build/test/kernel was run, and no other private output or
attempt state was inspected. The current live attempt's result is not inferred
or changed by this plan.

Citation owners:

- `D`: `experiments/transition-study036/proofs/Correspondence036/Dependencies`.
- `C`: `/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0460/project/NativeProjectionComponents.lean`.
- `T`: the same project’s `WorkerEntrypointsNames/Types.lean`.
- `B`: `/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/Core`.

## Proposed statement

Quantify an arbitrary **full recursive JSON Value** `raw`, arbitrary native String
`id`, `owner`, `phase`, and arbitrary parent/child JSON-map data accumulators P/C.
Do not restrict raw to the constructor helper's three-field object: unrelated
nested fields and payloads remain arbitrary.

Use three primitive successful field-read facts, each stating that the actual
root Str Index method, applied to the fixed field literal and raw, returns
`ok (some (Value.String payload))`: id→id, phase→phase, owner→owner. These are
primitive access conditions, not equations about canonical or view outputs.
The primitive method is `_root_.Str.Insts.Serde_jsonValueIndexIndex.index_into`.
Its interface can state these facts for arbitrary raw Values; non-object inputs
simply cannot satisfy all three successful-read premises under the candidate
definition. Sources: `D/NativeJsonIndexOperations.lean:24–33`, `:109–128`.

Add the ID representability premise
`(Correspondence036.NativeKeyOrder.ownedBytes id).length ≤ Aeneas.Std.Usize.max`.
It is needed because the actual canonical body calls Value.as_str on the ID,
then converts that borrow to an owned String. Phase and owner are cloned as full
Value payloads and do not pass through as_str in this body. No additional owner/
phase borrow bound is needed for this particular candidate-value theorem.
Sources: `C:69–92`; `D/NativeJsonScalarOperations.lean:24–35`, `:53–55`;
`D/NativeStringCodec.lean:95–118`.

Define the expected child accumulator in prose using the existing independent
normative formulas: C′ is `put C id` of an actual Value.Object whose map is
`projectedFields .nil owner phase`. Thus the two-field object starts empty,
inserts phase, then owner; the outer update targets the complete arbitrary child
ID. Do not use entityFields here: that constructor includes an extra id field.
Sources: `D/NativeProjectionLaws.lean:16–23`; `C:84–94`.

The canonical conclusion is that the actual
`transition_study036.reference.state_fact_row`, applied to
`transition_study036.behavior_store.documents.SeedEntity.mk "Child" raw` and
the map wrappers of P/C, returns outer success containing the triple:

- the inner Rust `Aeneas.Std.core.result.Result.Ok ()`;
- the unchanged parent-map wrapper of P;
- the child-map wrapper of C′.

This includes both success layers and the unchanged parent accumulator. It does
not merely assert a child-map lookup result. Sources: `C:68–97`; `T:544–546`.

An immediate comparison corollary can pair that result with existing
`materialize_step` instantiated at empty basis, the same C/id, actual
`transition_study036.views.ChildRow.mk owner phase`, and any remaining cursor
tail. The existing view law returns cont of that exact advanced tail and the
same C′. Derive both equations to the shared independent C′; do not assume their
output equality. Sources: `D/NativeProjectionLaws.lean:54–66`;
`C:116–129`; `T:1090–1092`.

## Namespaces and representations to use exactly

| Role | Owner/name distinction |
| --- | --- |
| Actual canonical function and row type | `transition_study036.reference.state_fact_row`; `transition_study036.behavior_store.documents.SeedEntity`, entity then value. `C:68`; `T:544–546`. |
| Actual view row | `transition_study036.views.ChildRow`, owner then phase. `T:1090–1092`. |
| Actual JSON constructors | `transition_study036.serde_json.value.Value.String` and `.Object`; do not append constructor names to the NativeValue abbrev. |
| Generated Str/shared dictionaries | `transition_study036.Str.Insts.Serde_jsonValueIndexIndex` and `transition_study036.Shared0T.Insts.Serde_jsonValueIndexIndex`. `C:34–64`. |
| Primitive Str/shared methods | Root `Str.Insts.Serde_jsonValueIndexIndex.index_into` and root `Shared0T.Insts.Serde_jsonValueIndexIndex.index_into`. These differ from the generated dictionary constructors. `D/NativeJsonIndexOperations.lean:28`, `:73–74`. |
| Ordinary indexing operator | Root `serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index`, parameterized by the actual generated shared dictionary. `D/NativeJsonIndexOperations.lean:94–97`; `C:69`. |
| Option conversion | `Aeneas.Std.core.option.Option.ok_or`, with public `ok_or_some`. `B/CoreOption.lean:24–37`. |
| Rust Try branch | `Aeneas.Std.core.result.Result.Insts.CoreOpsTry.branch`, returning Rust `core.ops.control_flow.ControlFlow.Continue` on inner Ok. `B/Convert.lean:95–104`. |
| Rust residual conversion | `Aeneas.Std.core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual`; `Aeneas.Std.core.convert.FromSame`. Its branch disappears on this successful ID path. `B/Convert.lean:31–37`, `:106–117`. |
| View-loop control | `Aeneas.Std.ControlFlow.cont`, distinct from Rust Try's Continue. Existing materialize_step already supplies this shape. |

Use the actual global `serde_json.map.Map.mk` map wrapper in the conclusions,
and distinguish outer `Aeneas.Std.Result.ok` from inner Rust Result.Ok. The source
imports/open namespaces make shortened names convenient, but explicit names in
the independent expected-type contract avoid accidental dictionary/constructor
resolution changes. Sources: `C:4–8`, `:68–97`.

## Local facts and tactic outline

1. **Lift each primitive field fact through the exact dictionary.** Reduce the
   generated shared/Str dictionary constructors and the root shared delegation,
   then apply `NativeJsonIndexOperations.index_some` to obtain the corresponding
   ordinary indexing result. Preserve the whole dictionaries; only their selected
   read field is reduced for this proof. Sources: `C:41–64`;
   `D/NativeJsonIndexOperations.lean:73–74`, `:148–151`, `:163–168`.
2. **Close the ID borrow/ownership chain.** Use as_str_string with the ID bound,
   then `decode_borrow` and `own_result_decoded` (or the public to_owned_valid
   wrapper theorem). This derives the exact original id after borrowing; it is
   not an assumed equality between canonical and view results. Sources:
   `D/NativeJsonScalarOperations.lean:53–55`;
   `D/NativeStringCodec.lean:47–50`, `:115–118`;
   `D/NativeStringOperations.lean:121–131`.
3. **Select the Child branch independently.** Prove a local decode fact for
   `toStr "Child"`, obtain its representability via decode_bound, and use
   borrow_result_valid plus borrow_decoded to identify String.as_str "Child"
   with that fixed Str literal. Reduce the candidate Str equality on Child/Parent
   to false and Child/Child to true. Closed literal proof steps such as
   `decide +kernel` are suggestions for later checking, not executed facts here.
   Sources: `D/NativeStringCodec.lean:59–69`, `:105–108`;
   `D/NativeStringOperations.lean:23–24`, `:116–119`;
   `C:75–84`.
4. **Reduce successful native-control plumbing.** Unfold/rewrite the actual
   canonical function only after the field results are available. Use
   ok_or_some and the Try branch definition to reach Continue; avoid carrying
   the unreachable residual case into the map calculation. Sources:
   `B/CoreOption.lean:31–33`; `B/Convert.lean:98–104`; `C:69–84`.
5. **Calculate the projection.** Rewrite phase/owner indexing results and
   Value clone, then use empty_new and insert_spec for the two field writes and
   the outer child write. Unfold only the normative put/projectedFields formulas
   to match the expanded expected result. The untouched P is visible directly in
   the actual success branch. Sources: `C:84–94`;
   `D/NativeJsonScalarOperations.lean:45–46`;
   `D/NativeJsonMapOperations.lean:76–87`;
   `D/NativeProjectionLaws.lean:16–23`.
6. **Compose the view step.** Instantiate the already named materialize_step
   at empty basis and the actual ChildRow constructor; normalize only its fields.
   This yields exactly C′ and the cursor tail from the independent formulas.

## Concrete interface constraints

The existing decode_id/decode_owner/decode_phase facts are private declarations
inside NativeProjectionLaws (`D/NativeProjectionLaws.lean:25–30`). They may be
reused by a later theorem added in that same source module, but a new importing
module should not refer to them by a purported public name. Recreate the tiny
literal facts locally there. The Child literal borrow/comparison fact is new;
the existing three literal facts do not select the entity branch.

The ID bound is a genuine blocker to an unconditional candidate success theorem:
Value.as_str intentionally fails on oversized model Strings. No analogous phase/
owner borrow occurs here. Also, read_object alone expects an Object/map input;
using index_some plus the primitive read premises avoids narrowing arbitrary raw
Values to a constructed object or assuming a desired projection equality.
Sources: `D/NativeJsonScalarOperations.lean:31–35`;
`D/NativeStringCodec.lean:95–113`;
`D/NativeJsonIndexOperations.lean:109–113`, `:163–168`.

No missing candidate primitive implementation for this successful Child path was
identified in the permitted reads. The local dictionary/literal/borrow glue still
needs actual Lean checking; no tactic script or new model was produced here.

This is a conditional one-row bridge under candidate dependency interpretations.
It does not prove that Store exports/versions satisfy the field premises, preserve
all version/context metadata through a full relation, establish the complete
finite folds or stage/apply invariants, or admit native JSON/ordering/ownership/
allocation/effects/compiler behavior. Those obligations remain separately open.
