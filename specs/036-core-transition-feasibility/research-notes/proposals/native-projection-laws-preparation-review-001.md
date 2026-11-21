# Projection laws preparation: source review

New unselected review. Only the four named proposal files and the expressly
permitted selected probe/component-selector sources were read. No helper/module,
test, build, Lean process or discovery was executed; no private output or selected
file was changed. No actual law, kernel result or native admission is inferred.

Owners, all proposals unless qualified:

- `H`: `native-projection-laws-helper-draft-001.py`.
- `T`: `native-projection-laws-tests-draft-001.py`.
- `I`: `native-projection-laws-integration-draft-001.py`.
- `L`: `native-projection-laws-draft-002.lean`.
- `B`: `experiments/transition-study036/native_collection_layout_probe_v2.py`.
- `C`: `experiments/transition-study036/native_projection_component_v2.py`.

## Assessment

No definite new formula, module-order, reference-shadowing or scope defect was
identified statically in this preparation. The helper's three expected types
expand the normative output definitions independently of the proposed law module,
and agree with the corrected draft statements.

The previous manual review missed draft001's invalid alias-qualified
`NativeValue.Object` constructor reference. Draft002 corrects the constructor
statement to the actual fully qualified
`transition_study036.serde_json.value.Value.Object` (`L:37`). The contextual
`.Object` in the step has an expected Value type and is a different syntax from
the invalid alias-qualified reference (`L:58–59`). This correction has not been
compiled here.

## Independent expected statements

`H.roots` constructs the expected outputs from fully qualified orderedInsert,
cmpString, actual Value constructors, actual component functions and concrete
map/cursor constructors. It does not read a theorem's reported type or reference
NativeProjectionLaws.put/entityFields/projectedFields in the expected types.
Sources: `H:7–41`.

| Root | Formula comparison |
| --- | --- |
| child_entity_value | Same six value/borrowed inputs and three decode premises; empty map receives id, owner, phase String values in that order, wrapped in actual Value.Object. `H:20–22`, `:27–29`; `L:19–20`, `:32–37`. |
| materialize_empty | Same arbitrary basis/children, empty actual cursor and done result with unchanged children. `H:31–33`; `L:48–50`. |
| materialize_step | Same arbitrary basis/children, actual ChildRow, head ID and exact tail. Phase then owner update the basis; resulting Object is put under ID in children; cont returns the advanced actual cursor. `H:24–25`, `:35–37`; `L:22–23`, `:54–59`. |

The nested put expressions project `.2` from the independently stated ordered
insertion specification, matching the draft's put definition. No desired
projection/Core equality is supplied as a premise. The formulas remain candidate
dependency interpretations, rather than independent proofs of native map or
iterator adequacy. Sources: `H:17–25`; `L:7–23`.

## Selector and source bindings

The law helper checks the exact selector field set, format, candidate-only scope,
fixed original producer SOURCE_SHA256, equality with the independently conserved
component's source checksum, and unestablished/false native fields before model
verification. It rejects protected logical basenames before reference reads,
requires the installed NativeProjectionLaws.lean path, and bounds model bytes and
the required component import. Sources: `H:4`, `:44–70`.

The model's selected reference is verified through `refs.verify` rather than
being accepted solely by its filename. The helper does not hardcode the law
model's own checksum: that identity comes from the selected model reference.
This review did not independently compute or confirm the producer/model hashes
against any private artifact. It assessed the source checks, not their successful
runtime execution. Sources: `H:57–68`.

Integration requires projection_component/json_scalar/json_map/json_index/
iteration when the law selector is present, along with the existing transitive
optional-selector constraints. The component is still derived from the original
closed365 generated tuple; its specification and fixed name list are checked
before the law helper receives it. The law model is included in the original
source-path/checksum inventory. The outer probe `reference` is not overwritten by
the new law-source variables. Sources: `I:103–164`, `:214–294`.

## Compile/import order and conserved bytes

The final module-map transformations append NativeProjectionComponents, then
NativeProjectionLaws, retaining ProofRoot last and adding explicit imports of each.
The law module itself imports NativeProjectionComponents. The three law roots are
added to the independently supplied root inventory. Sources: `I:617`, `:751–768`;
`L:1–3`.

Hashes are frozen from the prepared module bytes before writes, and the component
hash is compared with the selector's conserved component checksum. Those frozen
hashes are passed to the shared checker and used by saved-module rechecks.
This retains the earlier saved-component checksum correction rather than
reintroducing a current-disk snapshot as the expected authority.
Sources: `I:769–781`, `:899–938`; compare `B:748–760`, `:878–917`.

The selector conserves the original header/declaration ranges and returns source,
header, range and component checksums, while explicitly limiting its authority to
byte conservation. It remains a lexical selector, not an elaborated closure
checker. Sources: `C:19–31`, `:43–95`.

## Test sources and reporting scope

The proposed Python tests check three root identities, actual component function
references, absence of law-module aliases from expected types, three nested
insertions for constructor/step, owner/phase/tail coverage, protected-reference
refusal and wrong component source rejection before model verification.
Sources: `T:7–52`. They do not themselves establish Lean acceptance or real mutant
rejection. Future installation must provide `native_projection_laws_v2` and the
exact installed model path; the proposal names alone do not activate the route.

The result records the count and candidate-dependency scope of actual component
laws separately from the conserved component's typecheck scope. Native primitive
admission, native proof and feature completeness remain unestablished/false.
This is consistent with the draft's explicit exclusions of Store/version, full
fold, allocator/effect/compiler and B01–B10 correspondence claims.
Sources: `I:1095–1105`, `:1127–1130`; `L:7–10`.

Fresh checking of the exact installed sources, three expected types, transitive
axioms and selected-root export/kernel closure remains unperformed by this review.
