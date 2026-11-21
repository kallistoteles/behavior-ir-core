# Actual projection laws: source review

New unselected review of the unselected, untested draft. Only the expressly
permitted draft, dependency sources, retained component source and backend String
source were read. No Lean/build/test/selector was run; no binary, other private
output or state was inspected; no selected file was changed. No elaboration,
kernel success or native admission is claimed.

Owners:

- `L`: proposal `native-projection-laws-draft-001.lean`.
- `C`: `/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0454/project/NativeProjectionComponents.lean`.
- `D`: `experiments/transition-study036/proofs/Correspondence036/Dependencies`.
- `S`: `/var/tmp/behavior-ir-core036-v2/w001/analysis-backend-build/a0058/lean/Aeneas/Std/String.lean`.

## Assessment

No definite syntax/type/proof defect was identified statically in the three
statements or their proof scripts. The normative insertion/field formulas match
the actual retained constructor and materialization-body call sequences. This
assessment does not substitute for fresh compilation or checking the actual
elaborated dependencies and expected theorem types.

## Normative formulas and statement scope

`put` projects the updated map from the separately written recursive
`NativeJsonMapOperations.orderedInsert` specification, rather than calling the
JSON insert API being proved. That specification retains a stored key on
comparison equality and inserts/recurses in the lt/gt branches. Thus the draft's
result formula is independent of the generated component body and of the
capture/write API implementation. It still deliberately uses the candidate
String comparator and candidate map value interpretation. Sources: `L:16–23`;
`D/NativeJsonMapOperations.lean:19–30`, `:65–83`.

`entityFields` begins empty and writes id, then owner, then phase, matching the
three actual insertions in the retained `views.child_entity_value`. Its theorem
retains separate decoded values/premises for all three borrowed input strings.
There is no omitted ID or owner field and no reversal of the constructor's call
order. Sources: `L:19–20`, `:32–37`; `C:101–112`.

`projectedFields` writes phase then owner into the supplied basis, matching the
materialization body's fresh-field seed parameter. `materialize_step` then puts
that complete object under the actual child ID in the child accumulator and
returns the exact advanced iterator in `cont`. It does not substitute the basis
for children, or the completed parents map for the basis. The arbitrary-basis
statement is a valid generalization of this loop-body function; it does not
assert that the complete materialize caller supplies an arbitrary basis.
Sources: `L:22–23`, `:54–59`; `C:116–129`.

The empty law returns `done` with unchanged children and does not use the basis.
Both cursor shapes agree with the candidate iterator's empty/head-tail cases.
Sources: `L:48–52`; `C:117–120`;
`D/NativeCollectionIteration.lean:18–21`.

## Proof-interface checks

The private decode goals concern only the fixed literals id/owner/phase. Actual
backend `toStr` encodes a Lean String's bytes into the Rust Str carrier and has a
U32 literal-size premise. Those tiny closed literals are within that intended
interface; this does not impose a new U32 restriction on the arbitrary Str inputs
to the constructor theorem. Its input domain is expressed instead by each
explicit decode premise. `decide +kernel` is also syntax used by that backend
source itself. Whether the three closed reductions fit the eventual checking
configuration remains unexecuted. Sources: `L:25–35`; `S:29–38`;
`D/NativeStringCodec.lean:41–42`, `:115–118`.

The constructor simplification unfolds the actual component function, normative
field formulas and to_owned wrapper, rewrites the six ownership results using
their explicit decode equations, replaces new/insert using the candidate API
specifications, and reduces the successful monadic bindings. Those dependencies
have matching signatures. Sources: `L:38–46`; `C:101–112`;
`D/NativeStringOperations.lean:40–45`;
`D/NativeStringCodec.lean:115–118`;
`D/NativeJsonMapOperations.lean:76–86`.

The step simplification uses the iterator's head-tail result, the scalar
candidate's actual String clone definition (`ok value`), both literal ownership
equations and the insertion specification. No arbitrary String→Str borrow is
performed in that body, so this particular statement does not need an additional
borrow/Usize premise merely to simplify clone. The empty proof similarly reduces
the empty iterator result and the generated match. Sources: `L:48–66`;
`C:116–129`; `D/NativeJsonScalarOperations.lean:13–18`;
`D/NativeCollectionIteration.lean:18–21`.

These are source-level rewrite checks. No assertion is made that Lean has accepted
the simp scripts, that every intended candidate definition is present in a future
constructed import context, or that transitive axiom/export auditing has passed.

## Native boundary

The three statements compute actual unchanged component functions under candidate
dependency value definitions. They do not assume desired projection/Core
equality, but they also do not prove the native adequacy of insertion, String
ownership/clone, iterator order/effects or allocation. This limit is explicit in
the draft and the dependency owners. Sources: `L:7–10`;
`D/NativeJsonMapOperations.lean:8–10`;
`D/NativeJsonScalarOperations.lean:8–12`;
`D/NativeStringOperations.lean:7–10`;
`D/NativeCollectionIteration.lean:9–12`.

The roots cover a constructor and one materialization-loop step/exhaustion; they
do not yet relate `reference.state_fact_row`, prove field lookup/frame properties
for the constructed objects, establish the complete finite fold or connect Store
versions, seeding, stage/apply, original observations or B01–B10. The draft's
scope comment correctly excludes those claims. No scope correction is required
from this source review, and successful execution remains unestablished.
