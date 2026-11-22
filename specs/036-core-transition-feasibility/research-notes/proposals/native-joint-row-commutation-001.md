# Unselected proposal: joint canonical/typed row commutation

Source-only investigation, 2026-11-22. This proposes a contract; it establishes no proof, checked root, native/library/runtime admission, or full-feature completion. Actual520 supplies both generated functions and their common types; the prospective actual521 shared context has not been checked here. Independently pinned specifications remain unchanged. [G], [GS], [KS], [TS]

## One context and explicit projections

Use exactly one copy of actual520 `SeedCanonicalNames.Types` and one coherent interpretation of its external types/functions. The independent specifications currently import `CanonicalRowNames` and `TypedSeedRowNames`; their text is a specification reference, not permission to identify separately generated nominal types or combine conflicting global interpretations. In the common context reproduce their pure definitions over the shared types. Both operation models choose lexicographic `compare key.toByteArray stored.toByteArray`; prove their read/insert agreement with this common interpretation. The generated external templates themselves contain holes. [GS], [GE], [KO], [TO]

Write `J = serde_json.map.Map String Value`, `T V = BTreeMap String V Global`, and `A = BTreeMap String (BTreeSet String Global) Global`. Under the selected list models these have `nil/cons` constructors and sets are lists. Let `jput rows k v` be the second component of canonical `orderedInsert k v rows`, and `tput k v rows` be typed `put`. Define, rather than assume, the following total pure projections: [KS:41–46], [TS:15–39]

```text
parentValue phase = Value.String phase
childValue {owner,phase} = Value.Object
  (jput (jput nil "phase" (Value.String phase)) "owner" (Value.String owner))
P nil = nil
P (cons k phase tail) = cons k (parentValue phase) (P tail)
C nil = nil
C (cons k row tail) = cons k (childValue row) (C tail)
```

`P : T String → J` and `C : T ChildRow → J` preserve every input key, multiplicity, and list position. They perform no validation, lookup, filtering, or normalization. `childValue` starts from **empty** fields, so it contains exactly `phase` and `owner`, never `id` or unrelated JSON fields. Since byte comparison puts `"owner" < "phase"`, its literal constructor form is `Object (cons "owner" (String owner) (cons "phase" (String phase) nil))`. This stored order differs from insertion order (`phase`, then `owner`). [R:38–60], [KO:33–45], [V:198–219]

Required elementary lemmas, each inspectable by unfolding/induction and splitting the same comparator:

```text
canonical.field raw label = typed.field raw label
P (tput id phase ps) = jput (P ps) id (String phase)
C (tput id row cs) = jput (C cs) id (childValue row)
canonical.childFields {entity := "Child", value := raw} = childValue {owner,phase}
  if field raw "owner" = String owner and field raw "phase" = String phase
```

The two put lemmas are structural equality, even for off-native unsorted/duplicate lists: both algorithms retain the same stored key in the comparator-equal branch. No sortedness, uniqueness, empty-map, or population premise is needed for these algebraic lemmas. Native representation/comparator adequacy remains separate. A merely pointwise lookup bridge cannot establish this structural equality; native JSON equality or iteration/serialization claims additionally require the chosen representation/order argument. [KO:33–45], [TS:33–39], [TO:71–85], [JM:169–186]

## Inspectable input predicate and smallest success contract

Quantify arbitrary full `key : EntityKey`, `version : EntityVersion`, typed maps `ps,cs,active`; define `r := SeedEntity.mk version.entity version.value`. Feed canonical maps **constructed** as `P ps,C cs`, rather than postulating an opaque relation between arbitrary maps. With `field` defined by object lookup/default Null, require precisely:

1. `field version.value "id" = String key.id`, and `key.entity = version.entity`.
2. Either `key.entity = "Parent"` and `field version.value "phase" = String phase` with `phase ∈ ["Open","Gone","Abandoned"]`; or `key.entity = "Child"`, `field version.value "owner" = String owner`, and `field version.value "phase" = String phase` with `phase ∈ ["Active","Terminal"]`.

These are inputs to decoding and branching, not assumptions about outputs. They exactly characterize inner typed success in the pure `seedSpec`; canonical accepts more inputs. Additional/unused JSON fields are unrestricted, as are preexisting typed map entries and active buckets. No fixture, identifier pattern, N/H, history, lifecycle, or existing-owner restriction is introduced. [KS:24–56], [TS:21–66]

The pure algebraic target has the exact branch outputs below (`ps',cs',a'` are definitions, not witnesses of desired equality):

```text
Parent: ps' = tput key.id phase ps; cs' = cs; a' = tput key.id [] active
Child:  ps' = ps; cs' = tput key.id {owner,phase} cs; a' = active
seedSpec key version ps cs active = (Ok (), ps', cs', a')
rowSpec r (P ps) (C cs) = (Ok (), P ps', C cs')
```

For the **actual generated functions**, the prospective total-result statement is the conjunction:

```text
views.seed_row key version ps cs active = Result.ok (core.result.Result.Ok (), ps', cs', a')
reference.state_fact_row r (P ps) (C cs) = Result.ok (core.result.Result.Ok (), P ps', C cs')
```

The outer `Aeneas.Std.Result` distinguishes success/failure/divergence from the inner Rust result. Tuple order is status, parents, children, then active on the typed side; canonical has no active component. Do not interchange parents/children or treat these as two independent Rust results. [G:151–215,256–382]

Lifting the pure target to outer `Result.ok` needs shared operation definitions, source/read-noninterference linkage, and representability of strings actually borrowed. On the successful branches above, the only variable bounds are `(ownedBytes key.id).length ≤ Usize.max` and, for Child, `(ownedBytes owner).length ≤ Usize.max`. Entity and phase are bounded fixed literals by the input predicate; field labels are fixed valid UTF-8 literals. No bounds on unrelated fields, metadata strings, or existing map keys are demanded by these selected operation models. [G:137–145,273–360], [KO:20–26], [TO:64–88], [SB:25–79]

A conservative route through the existing proposed `state_fact_row_exact` and `seed_row_exact` requires both published `InputDomain`s, but typed `TextDomain` bounds **every** string-valued field and is stronger than the branch-local success contract. A minimal lifting proof should specialize text decoding to the reached id/phase/owner fields instead of importing that stronger restriction. No existing candidate theorem's checked status is asserted. [KS:35–38], [TS:77–81], [KE:40–43], [TP:48–63,163–166]

## Errors, metadata, and deferred obligations

Error-result commutation is false generally, including after typed `publicError`: non-string id gives canonical `SeedIdentity` versus typed `TypedViewField`; identity mismatch can leave canonical successful; a Parent numeric phase is canonical-successful but typed `Field`; disallowed textual phase is canonical-successful but typed phase failure; unknown entity gives `UnexpectedEntity` versus `UnknownViewEntity`. Both inner-error specifications frame their maps, but equal frames do not identify status/payloads. Outer failure/divergence also needs its own operation/runtime account. [R:38–60], [V:41–94], [KS:48–56], [TS:44–75]

`EntityVersion` remains the complete generated record: `content_hash, entity, id, revision, created_at, value`. Do not delete, replace, or constrain its metadata. In particular `version.id = key.id` is **not** tested here: only the JSON id and entity checks above occur. Quantify arbitrary metadata; the row function does not read it, as the metadata-frame candidate expresses. `r` is only the canonical observation of entity/value, not a reduced replacement for `version`. [GS:74–94], [G:273–294], [TP:65–70]

Active has no canonical projection. Its Child frame and Parent reset to an empty bucket are separate typed obligations retained explicitly in `a'`, even for populated input buckets. Owner existence and Active-child/Open-parent lifecycle validation belong to later `seed_relation`/`seed_relations`, not `seed_row`; neither is a premise of this row theorem. Extending to the seed fold requires ordering/reset and relation-index arguments. Store/export/version linkage, native collections/JSON/string/library adequacy, ownership/effects/runtime/compiler admission, full folds and full-feature correspondence remain open. [V:76–143], [KO:7–11,65–71], [TO:62–63]

## Primary sources inspected

References use line numbers of the inspected source text; all files were read only.

- [R] [reference.rs](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/reference.rs)
- [V] [views.rs](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs)
- [G] [actual520 Funs.lean](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated/Funs.lean)
- [GS] [actual520 Types.lean](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated/Types.lean)
- [GE] [actual520 FunsExternal_Template.lean](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0520/generated/FunsExternal_Template.lean)
- [KS] [NativeCanonicalRowSpec.lean](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowSpec.lean)
- [TS] [NativeTypedSeedSpec.lean](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeTypedSeedSpec.lean)
- [KO] [NativeCanonicalRowOperations.lean](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowOperations.lean)
- [TO] [NativeTypedSeedOperations.lean](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeTypedSeedOperations.lean)
- [JM] [NativeJsonMapRefinement.lean](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonMapRefinement.lean)
- [SB] [NativeStringBorrow.lean](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringBorrow.lean)
- [KE] [NativeCanonicalRowExact.lean](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCanonicalRowExact.lean)
- [TP] [NativeTypedSeedProofs.lean](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeTypedSeedProofs.lean)
