# Minimum actual494 row composition packet

Source-only proposal, 2026-11-22. **New and unselected.** This note proposes the next bounded source/proof integration; it reports no new check, admission, selection or completion. Reads used immutable actual494 generated/project files and the immutable actual492 owner snapshot, not the mutable isolated owner. No tests, builds, compiles, extraction, acquisition or process inspection were performed. Existing boundary decisions are reused from [generic primitive boundary](generic-primitive-admission-boundary-001.md:7), [JSON operations](native-json-projection-primitives-001.md:26), [String admission](string-primitive-admission-plan-001.md:42) and [borrow packet](native-borrow-admission-packet-001.md:44).

## Decision and exact scope

The minimum next application result is a theorem over the **untouched actual494 `transition_study036.reference.state_fact_row`**, with an independent full-JSON row specification. It needs eight additional reachable external-function definitions, continuation of the two existing String-borrow definitions, a fresh map-carrier bridge, and closure of two inactive error-type holes. It does not need the other six String operations, String Clone as another generated external, typed-view seeding, JSON mutable indexing, iterators, Store export or a whole projection fold. Those become necessary when their actual callers are selected. The current generated caller enumerates its concrete operations and returns both mutated maps explicitly. [actual494 caller](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:89), [source row](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/reference.rs:38).

Actual494 checked 21 byte-view/accessor/carrier roots under the selected-root transitive-dependency policy. Its result expressly retains native status `unestablished` and feature completion false; it did not check this row theorem or every imported constant. Keep that distinction when adding a larger root. [21-root policy](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/declared-proof/result.json:645), [scope and status](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/declared-proof/result.json:679), [not all imported constants](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/declared-proof/result.json:2).

The governing contract requires actual caller proofs, precise source/cfg bindings, independently fixed types and transitive axiom/control checking. Generic API interpretations may supply reusable byte/lookup/copy/update behavior; they may not assert that this Core row, its views or its observation already agrees with the target specification. [correctness](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:28), [FR-002/003](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/spec.md:126), [T052–T059](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/tasks.md:112).

## Bind exactly the reachable operations

Names below are the generated actual494 names, not approximate Rust API names. All signatures must remain identical to that extraction's template, including dictionary parameters and forward/backward tuple shapes. The actual494 project has already defined `alloc.string.String.impl.as_str` and `alloc.string.String.Insts.CoreOpsDerefDerefStr.deref` as `NativeStringBorrow.borrowResult`; the eight other entries below remain axioms there. [actual494 external file](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/project/CanonicalRowNames/FunsExternal.lean:25), [existing two definitions](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/project/CanonicalRowNames/FunsExternal.lean:143).

| Binding to close | Required generic contract and caller use |
| --- | --- |
| `Str.Insts.CoreCmpPartialEqStr.eq` | Exact unsigned byte equality of the two Str slices. The row compares the entity with `Parent`, then `Child`; it must derive those branches from complete bytes. |
| `Str.Insts.AllocBorrowToOwnedString.to_owned` | On normal return, own the same complete valid UTF-8 bytes, preserving the borrowed referent/frame. Used for id and the two Child object keys. Invalid-UTF8 `.undef` is an off-source totalization, not a native error. |
| `Str.Insts.Serde_jsonValueIndexIndex.index_into` | Read-only lookup: Object returns the exact existing field or absence; all five other Value constructors return absence. It neither inserts nor clones the referent. |
| `Shared0T.Insts.Serde_jsonValueIndexIndex.index_into` | Forward once to the supplied dictionary's `index_into`, preserving its result, failure/divergence and applicable effects. |
| `serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index` | Invoke that field once, return Some's full referent, or static Null for None. Preserve the underlying outer Result behavior. |
| `serde_json.value.Value.Insts.CoreCloneClone.clone` | On normal return, preserve the complete recursive Value payload and source frame with the correct independent ownership interpretation. Numbers, nested arrays/objects and their order cannot be projected away. |
| `serde_json.map.MapStringValue.impl.new` | Empty map under the actual bound backend configuration. |
| `serde_json.map.MapStringValue.impl.insert` | Return the previous full Value or absence, replace/add exactly the selected key, preserve every unrelated entry, stored-key rule and backend order, and preserve map validity. The generated caller discards the old Value; its native drop/effect interpretation still matters. |

Exact type inventory for the eight new reachable definitions (using the `V`/`M` abbreviations given below, without changing the fully qualified generated names):

```lean
Str.Insts.CoreCmpPartialEqStr.eq : Str → Str → Result Bool
Str.Insts.AllocBorrowToOwnedString.to_owned : Str → Result String
Str.Insts.Serde_jsonValueIndexIndex.index_into : Str → V → Result (Option V)
Shared0T.Insts.Serde_jsonValueIndexIndex.index_into
  {T : Type _} (IndexInst : serde_json.value.index.Index T) :
  T → V → Result (Option V)
serde_json.value.Value.Insts.CoreOpsIndexIndexIValue.index
  {I : Type _} (IndexInst : serde_json.value.index.Index I) : V → I → Result V
serde_json.value.Value.Insts.CoreCloneClone.clone : V → Result V
serde_json.map.MapStringValue.impl.new : Result M
serde_json.map.MapStringValue.impl.insert : M → String → V → Result ((Option V) × M)
```

The last six signatures and their exact generated argument order are in the [actual494 template](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/FunsExternal_Template.lean:55). The owner implements str read through `Map.get`, shared forwarding through `(**self)`, and ordinary Value index through `unwrap_or(&NULL)`. These source bodies justify the small API interpretation, rather than a special-purpose “correct row projection” primitive. [str/shared owners](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:83), [ordinary index](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:212), [borrowed-key compatibility](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/map.rs:68).

Value Clone is a derive over all six constructors; Map Clone delegates to its backend and Number/N derive Clone. A generic full-payload interpretation can abstract these internals at the declared normal-return API boundary. An identity Lean definition by itself supplies no native ownership/allocation/derive justification. No independent **generated** String Clone binding is reached by this extracted row: its behavior is a transitive obligation of the Value Clone interpretation if that interpretation is admitted as one generic operation. [Value derive](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/mod.rs:115), [Map clone](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/map.rs:395), [Number/N derives](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/number.rs:20).

The existing algorithms are reusable reference material, not imports to attach blindly. `NativeJsonMapOperations` uses a wrapper with `.data` and `CollectionsData.Map`; the carrier used by actual494's checked leaf is directly `serde_json.map.Map.nil/cons`. `NativeJsonScalarOperations` also defines `Value.impl.as_str`, which would duplicate/replace the actual generated accessor and imports a larger old context. Build a small actual494-specific operation layer over its real Types; preserve the generated accessor. [current map algorithms](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonMapOperations.lean:54), [actual494 carrier](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/project/CanonicalRowNames/TypesExternal.lean:30), [duplicate candidate accessor](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonScalarOperations.lean:27).

## Three concrete bridges before the row root

**Bytes and literals.** Reuse the standalone `NativeStringBorrow` encoding/decoding laws, then add only the owned-copy/byte-equality lemmas required above. Prove borrowed-byte injectivity and equality coherence; prove `toStr` has the exact bytes of `id`, `phase`, `owner`, `Parent`, `Child`, `SeedIdentity`, and `UnexpectedEntity`. Derive the entity comparison results and the `to_owned(as_str id)` roundtrip, rather than assume the correct ID was chosen. String.as_str and Deref share the complete-buffer interpretation, but they remain distinct bindings. Existing codec lemmas already show decode/byte/bound correspondence and roundtrip content; factor them into the fresh standalone context without importing old generated types. [standalone byte/UTF8 laws](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringBorrow.lean:25), [codec copy/roundtrip candidates](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringCodec.lean:41), [String operation candidates](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringOperations.lean:110).

**Map storage and order.** Either implement the existing list algorithms directly over actual494 `Map.nil/cons`, or prove total inverse conversions to/from `CollectionsData.Map` preserving every key/value and exact list order. Do not identify the two carrier types by naming them alike. Define independent lookup and ordered insertion on actual494's carrier, then prove membership, replacement, previous-value, frame and validity preservation. `capture_write`, `insert_spec` and the existing occupied/vacant frame laws provide the mathematical pattern; a bridge must connect them to this carrier. [independent insertion specification](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonMapOperations.lean:19), [current frame laws](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonMapOperations.lean:105).

For a BTree interpretation, insertion needs unsigned UTF-8 lexicographic order plus equality coherence, even though generated `FunsExternal` has no direct String.cmp signature. That comparison can be a pure internal model helper with its generic API justification; it need not import all nine String bindings. Bind the actual native/analysis serde compile-unit features before attaching this ordered map model. The owner uses BTreeMap only without `preserve_order`; the alternate backend has observably different iteration/serialization order. Generated Number/N establishes the selected analysis representation, but an opaque generated Map does not by itself establish the worker's selected backend. [map cfg](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/map.rs:23), [observable order](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/mod.rs:162). This note's concrete child-object skeleton below is specifically the BTree branch; if final compile-unit evidence selects preserve_order, specify its insertion order independently before checking that branch.

**Inactive error sorts.** The row result type now mentions all of generated `error.StudyError`, including Json and Io. Actual494 `TypesExternal` still declares `core.io.error.Error` and `serde_json.error.Error` as Sort axioms. Accessor roots did not require StudyError; the row root's transitive type closure will. Do not truncate the untouched five-variant StudyError or claim these holes disappear because only Prerequisite is produced. [two holes](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/project/CanonicalRowNames/TypesExternal.lean:23), [generated StudyError](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Types.lean:89), [source variants](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/error.rs:3).

A minimal leaf-scoped strategy is to replace just those external Sort axioms in a **new** context by two distinct positive token carriers, for example distinct structures wrapping `List UInt8`, optionally with `opaque` definitions backed by those structures. They are nonaxiomatic carriers, not a model of error Display, exit code, native layout or serialization. Preserve all generated StudyError constructors unchanged. Use a uniform coarse relation for each inactive native payload and token (the universal relation suffices for this restricted sublanguage), while relating Prerequisite by exact bytes and retaining constructor discrimination. Prove that this row accepts no error argument, invokes no Json/Io constructor or eliminator, and normally returns only Ok or one of the two exact Prerequisite errors. Consequently changing either inactive carrier or token relation cannot affect any reachable row result. This is a conservative interpretation **for that sublanguage**; it is intentionally not an injective/full native error relation. It assumes no target projection equality and changes no observable returned error in this caller. If policy instead requires a globally lossless error carrier, retain the holes as blockers until source-derived native error payload encodings are supplied; do not silently weaken the audit. Full B05/B07 error behavior and `StudyError` formatting/exit-code clients require their own source-derived refinement before this coarse relation can be extended. [actual row's complete return paths](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:104), [whole error/outcome contract](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:9).

## Keep dictionary fields; prove the callable slice

The generated str dictionary contains `index_into`, `index_into_mut`, and `index_or_insert`; the generated shared dictionary retains all three forwarding functions. The row supplies those dictionaries only to ordinary Value.index. The reviewed Value.index body selects only `index_into`; the shared read selects only the underlying read field. No dictionary escapes in the result, and neither the generated accessor nor clone/new/insert receives an Index dictionary. This is the concrete reason the row requires three read bindings, not all seven Index functions' native semantics. [complete dictionaries](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:36), [caller uses](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:99), [source read dispatch](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:212).

Freeze a general dictionary-irrelevance root: Value.index is unchanged for any two Index dictionaries with equal `index_into`, irrespective of their mutable fields; similarly for shared `index_into`. This is a generic dispatch law, not a row-equivalence premise. Establish the actual row's no-escape/selection fact from its frozen generated body. Preserve both complete dictionary declarations. Four unused external method axioms may still be syntactic dependencies of the dictionary constants, so a strict transitive audit must not simply ignore them. In a fresh external layer give them explicit nonaxiomatic definitions with an enumerated edit ledger, retaining their signatures and classifying their **native semantics as unadmitted and unreachable here**. Existing normal-value mutable candidates can supply such definitions, but require no mutable-source claim for this row and no broadened root scope. An arbitrary totalization of an unused field is defensible only with the general irrelevance proof and explicit scope; it is not admission of that method. If those methods become callable or escape, repair their actual compatibility and abnormal-mutation contracts first. The existing candidate itself records the Null-before-failed-key-copy gap. [mutable model limit](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonIndexOperations.lean:8), [native eager mutation/copy](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:96).

## Independent row specification and theorem TYPE skeleton

Define a concrete `InputDomain row parents children` before authoring the proof: source-valid owned UTF-8 bytes/borrows and target byte bounds; every recursively contained String/key similarly valid and bounded; source-valid array/vector/map representation and finite payloads; source-valid Number/N; and unique byte-sorted object keys for the bound BTree branch. Derive these from the concrete native representation relation and preserve them under lookup/copy/insertion. In the model, the proof may quantify a larger domain where operations are total. No conjunct may mention the row's computed result, equality of canonical/typed projections, allocation success, no-unwind or a fixture N/H cap. Native String validity entails the actual target's byte-size bound; the model only consumes its `≤ Usize.max` consequence, whose target binding must be checked. [byte bound and off-domain branch](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringBorrow.lean:76), [arbitrary finite domain](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:5).

Keep Number/N exactly as generated: PosInt(U64), NegInt(I64), Float(F64), inside Number. Preserve all 64 float bits, including signed zero; source-valid N additionally has negative NegInt and finite Float. No floating arithmetic/equality theorem is needed to clone or carry those bits. The model can safely overrepresent other bit patterns without claiming they arise from valid native Number. Bind the native/analysis absence of arbitrary_precision separately: its alternate owner representation is String. [generated Number/N](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Types.lean:24), [source N invariants/cfg](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/number.rs:26), [alternate N](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/number.rs:72), [bit carrier limitation](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/RuntimeNames.lean:5).

The following is a proposed Lean **type/specification skeleton**, not checked code or new axioms. `lookup`, `put`, and `InputDomain` must be actual independent definitions with the meanings just stated; `put` is the map component of byte-ordered insertion, not a call to the generated insert. The exact map carrier here is actual494's direct nil/cons carrier.

```lean
open Aeneas.Std
open transition_study036
abbrev V := serde_json.value.Value
abbrev M := serde_json.map.Map String V
abbrev Row := behavior_store.documents.SeedEntity
abbrev Out := (core.result.Result Unit error.StudyError) × M × M

-- Independent lookup compares complete String bytes; no generated function calls.
-- lookup : M → String → Option V
-- put : M → String → V → M   -- independent BTree/byte-order insertion specification
-- InputDomain : Row → M → M → Prop   -- only the concrete invariants above

def field (v : V) (key : String) : V :=
  match v with
  | .Object fields => (lookup fields key).getD .Null
  | _ => .Null

def textId (row : Row) : Option String :=
  match field row.value "id" with
  | .String id => some id
  | _ => none

-- For BTree order, owner precedes phase despite source insertion phase then owner.
def childPayload (row : Row) : V :=
  .Object (.cons "owner" (field row.value "owner")
    (.cons "phase" (field row.value "phase") .nil))

def rowSpec (row : Row) (parents children : M) : Out :=
  match textId row with
  | none => (.Err (.Prerequisite (toStr "SeedIdentity")), parents, children)
  | some id =>
    if row.entity = "Parent" then
      (.Ok (), put parents id (field row.value "phase"), children)
    else if row.entity = "Child" then
      (.Ok (), parents, put children id (childPayload row))
    else
      (.Err (.Prerequisite (toStr "UnexpectedEntity")), parents, children)

-- Primary generated-caller root, after the exact external definitions are bound:
theorem state_fact_row_exact (row : Row) (parents children : M)
    (domain : InputDomain row parents children) :
    transition_study036.reference.state_fact_row row parents children =
      Aeneas.Std.Result.ok (rowSpec row parents children)

-- Separate type detects weakened/late ID checking even for unsupported entity:
theorem seed_identity_first (row : Row) (parents children : M)
    (domain : InputDomain row parents children) (missing : textId row = none) :
    transition_study036.reference.state_fact_row row parents children =
      .ok (.Err (.Prerequisite (toStr "SeedIdentity")), parents, children)

-- Independent frame observation; the premise selects an input ID, not an output.
theorem state_fact_row_other_keys (row : Row) (parents children : M)
    (domain : InputDomain row parents children)
    (id query : String) (identity : textId row = some id) (different : query ≠ id) :
    (do
      let (_, parents', children') ←
        transition_study036.reference.state_fact_row row parents children
      pure (lookup parents' query, lookup children' query)) =
      .ok (lookup parents query, lookup children query)
```

`state_fact_row_exact` already specifies exact complete other-map equality: Parent leaves children unchanged; Child leaves parents unchanged; either returned StudyError leaves both unchanged. Fix explicit Parent/Child and UnexpectedEntity corollary types as independent roots as well, including insertion on absent ID and replacement on present ID, plus payload selection and the two-field Child object shape. Keep map generic roots for old-value return even though this caller discards it. Input lookup absence and an explicit Null phase/owner both produce Null, while missing/non-string id always produces SeedIdentity. Empty id, Unicode/NUL-containing ids, arbitrary entity names and unrelated map entries remain admitted. Phase and owner are arbitrary complete Values, including arrays, objects and all Number variants; this reference row does **not** require them to be strings. [source exact behavior](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/reference.rs:43), [generated Parent branch](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:110), [generated Child/error branches](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:124).

The generated outer `Aeneas.Std.Result` models extraction/runtime control; the inner `core.result.Result Unit StudyError` is the native returned result. The primary equation proves normal **model** execution, including inner errors, under legitimate representation bounds. It does not prove native allocation always returns, and inner SeedIdentity/UnexpectedEntity must not be confused with outer `.fail`/`.div`. Native ordinary return is related through the declared generic API interpretation and faithful source/extraction/compiler boundary; no invented `RunNative` predicate with a desired-result law is needed.

## Module order, root checking and actual controls

Use a fresh prospective project, leaving actual494 immutable. Suggested composition order:

1. `RuntimeNames` plus standalone `NativeStringBorrow`; minimal independent copy/equality/order helpers without old extraction imports.
2. Fresh `CanonicalRowNames.TypesExternal`: retain actual494 direct Map carrier, close the two inactive error sorts under the explicit restricted interpretation, then import byte-identical actual494 `CanonicalRowNames.Types` with full Number/N/Value/StudyError.
3. Small `NativeRow494Primitives` over these Types, defining exact-signature operations and the independent map bridge/laws. No new definition of generated `Value.impl.as_str`.
4. Fresh `CanonicalRowNames.FunsExternal` from actual494's template and an exact edit ledger: existing as_str/deref definitions, eight reached definitions, and honest nonaxiomatic/unadmitted handling of the four unreachable mutable fields. Preserve every template node and Rust registration name.
5. Byte-identical actual494 `CanonicalRowNames.Funs`; existing `NativeJsonBorrowWrapper` leaf roots; new independent row spec, dispatch/frame/domain roots and generated-caller proof.
6. Independently authored expected types and complete selected-root source/type/axiom/export/kernel closure. Bind all source/template/model/compiler/cfg/backend identities and the justified native/analysis primitive interpretation. New external definitions make a new proof subject; actual494's receipts are lineage, not fresh acceptance of that subject.

For step 3 the old wrapper/entry modules are optional algorithm sources, not necessary runtime APIs. A whole unrelated collection stack is not a minimum dependency. In contrast, SDK Option.ok_or, Result Try.branch/from_residual, `FromSame`, `toStr`, monadic binds and literal/byte equality are genuinely used by the generated row and must remain in its transitive audit and runtime interpretation. [generated error choreography](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:103), [generated residual return](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:151).

Before implementation freeze expected semantic/types and genuine rejecting controls. Require: wrong field key; clone drops nested Number/array/object payload; borrow/copy truncates NUL/non-ASCII bytes; equality admits a wrong entity; missing index returns a non-Null; Parent writes children; Child swaps phase/owner or adds id; replacement deletes an unrelated entry; entity checked before invalid id; both error branches return the wrong string; dictionary read dispatches a mutable method or bypasses the supplied read; and wrong source/cfg/generated/template/expected-type/root/axiom substitution. Include both a positive checked subject and actual source mutation/re-extraction rejection, never only report flags. Recheck the current accessor's String and all five non-string cases in the new larger context. The separately planned owning-Null mutation control does not by itself cover map/clone/row/source controls. [required control inventory](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:58), [actual494 owner negative still pending in its record](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/result.json:119).

## Normal outcomes, abnormal outcomes and the next caller boundary

The minimal generic dossier must state normal-return content/ownership/frame guarantees independently of Core, and explicitly retain allocation abort, panic/unwind, drop/deallocation, recursion/stack and already-performed mutation/effects at their true scope. `to_owned`, recursive Value.clone and map insertion may allocate. No allocation-success, sufficient-stack, global no-unwind or matched-OOM premise is supplied by this note. A successful value-model row theorem remains useful conditional evidence; if the current Result interface cannot express applicable native abnormal outcomes, those runtime/source bridges remain unresolved. Do not translate abort into None, SeedIdentity, `.undef`, `.maximumSizeExceeded` or normal `.ok`, and do not infer simultaneous failure of different algorithms from successful-value equality. [existing outcome analysis](generic-primitive-admission-boundary-001.md:29), [contract boundary](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:40).

After this row theorem, the smallest application extension is actual `state_facts` fold/error-stop composition plus the actual Store-export row relation, then separately selected `views.text`/`seed_row`/materialize proofs. Typed seeding rejects non-string phase/owner and enforces identity/phase/owner/lifecycle checks; reference reconstruction above can preserve non-string JSON payloads. Therefore derive their agreement from the actual successful typed checks and real version/export relation, never add “views already equal canonical” or assert equal malformed-input errors. [reference fold](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/reference.rs:61), [typed text/row checks](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:54), [owner/lifecycle pass](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:106), [actual materialization](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/views.rs:204).

Even successful completion of this proposed packet would establish only this row component at its declared normal-value/source interpretation and runtime scope. Store/version provenance, selector/fallback, views/authority, native abnormal outcomes, complete error encoding, original observations, delivery, sessions and B01–B10 composition remain their own mandatory obligations. This proposal changes no selected source, evidence, task marker, admission or status. [remaining source obligations](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:15).
