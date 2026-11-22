# Full Index dictionaries at the actual494 row boundary

Source-only research, 2026-11-22. **New, unselected proposal.** No build, test, Lean invocation, extraction, acquisition, network access, process inspection or selected-artifact edit was performed. Owner-source citations below use the immutable actual492 snapshot. This note proposes a construction and required checks; it establishes no theorem, primitive admission, native row result or status promotion. The reported actual498 accessor success does not resolve this different row closure.

## Decision

**Yes, conditionally:** two explicit divergent str mutable definitions, together with genuine Shared forwarding definitions, can give a nonaxiomatic full dictionary interpretation for this **read-only consumer boundary**. Their justification must be a checked universal noninterference result over complete dictionaries and a source-derived abstraction of the actual generated caller. It is not enough to declare the fields unused, establish an equation for one divergent instance, or compare only successful results. This is a restricted contextual interpretation, not a refinement of the native mutable methods.

Keep generated `Types.lean` and `Funs.lean` byte-identical, including full Number/Value/Index/StudyError types and both complete dictionaries. Fill every external declaration reached by the new root, retaining its name, signature, Rust registration and provenance. Keep the three-foundation axiom allowlist unchanged. The contract explicitly requires preserved unsupported nodes, actual caller obligations, and independent full transitive checking. [contract](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:28), [construction and closure requirements](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:32).

## The present blocker is syntactic as well as semantic

The actual494 `Index Self` record has `privateSealedInst`, read `index_into`, mutable `index_into_mut` with its backward closure, and `index_or_insert` with its backward closure. The generated Str dictionary stores all three methods; the Shared dictionary constructs all three forwarding fields. The row supplies the complete Shared-over-Str expression to ordinary Value indexing at four sites: id, Parent phase, Child phase and Child owner. Its output contains only inner result plus two JSON maps. [full Index type](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Types.lean:78), [full dictionaries](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:36), [actual row](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:91).

The immutable actual494 external module still has all four Str/Shared mutable method axioms. `native_row_bindings_v2.py` lists eight reached operations, verifies their precise source blocks and signatures, and preserves every unselected declaration. It therefore does **not** close those four holes or certify that they are semantically irrelevant. [remaining Str axioms](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/project/CanonicalRowNames/FunsExternal.lean:61), [Shared axioms](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/project/CanonicalRowNames/FunsExternal.lean:92), [eight bindings](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_bindings_v2.py:9), [preserve-and-check behavior](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_row_bindings_v2.py:53).

A theorem whose type names the actual row brings that declaration into the checked subject. Reduction of a particular proof to its read projection is not permission to prune the original declaration's dependency record. The checker audits each root using `collectAxioms`, admits only `propext`, `Classical.choice`, `Quot.sound`, exports the selected roots, validates the export, and invokes the fresh checker. Export validation rejects every other exported axiom. Keep both checks; neither a source call-graph omission nor a custom “unused axiom” exception is warranted. The Python export validator consumes the export and enforces policy; it does not itself prove a semantic dependency slicer correct. [root audit](/data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:82), [export/replay](/data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:379), [export axiom rejection](/data/repos/behavior-ir-core-033/experiments/transition-study036/kernel_export_v2.py:83).

The native source gives the needed narrow consumer structure: Str read matches Object and calls `map.get`; Shared read forwards to the underlying read; Value.index calls `index.index_into(self).unwrap_or(&NULL)`. Native mutable insert instead mutates Null to Object before `to_owned`/entry, so divergence is **not** its actual behavior. [Str methods](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:83), [Shared forwarding](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:119), [ordinary index](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:212).

## Minimal external definitions and general Lean roots

In a fresh prospective external module, preserve each exact actual494 signature and registration. Define the two Str mutable leaves as `fun _ _ => Result.div`. Define both Shared mutable methods as their actual projections:

```lean
-- Proposed bodies for the four existing fully qualified external names.
-- V abbreviates the unchanged generated serde_json.value.Value.
-- Str.index_into_mut : Str → V → Result ((Option V) × (Option V → V))
-- Str.index_or_insert : Str → V → Result (V × (V → V))
-- Both Str bodies: fun _ _ => Result.div
-- Shared.index_into_mut {T} (d : Index T): fun k v => d.index_into_mut k v
-- Shared.index_or_insert {T} (d : Index T): fun k v => d.index_or_insert k v
```

This needs a separately reviewed, exact-block four-node binding ledger; the existing eight-node binder is insufficient and should not silently change meaning. These are classifications as **present, nonaxiomatic, unadmitted mutable semantics, contextually unobservable here**, not translated native implementations. Defining Shared forwarding literally avoids inventing another abstraction where the source already supplies a tiny generic body. The current candidate module contains precisely these forwarding bodies, while its mutable Str value-success interpretation explicitly disclaims failed key-copy mutation and panic effects. Do not import that older wrapper carrier into actual494 without its separate carrier bridge. [existing forwarding definitions](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonIndexOperations.lean:76), [model limits](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonIndexOperations.lean:8), [actual494 direct map carrier](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/project/CanonicalRowNames/TypesExternal.lean:30).

The following are **proposed theorem types**, not checked declarations or axiom additions. Define the aliases and `ReadEq` normally; prove the lemmas from the exact new external definitions. Use the fully qualified generated names in the actual files.

```lean
open Aeneas.Std
open transition_study036
abbrev V := serde_json.value.Value
abbrev D (K : Type) := serde_json.value.index.Index K
abbrev M := serde_json.map.Map String V
abbrev Row := behavior_store.documents.SeedEntity
abbrev Out := (core.result.Result Unit error.StudyError) × M × M

def ReadEq {K : Type} (a b : D K) : Prop :=
  ∀ k v, a.index_into k v = b.index_into k v

-- S abbreviates the UNCHANGED generated Shared dictionary constructor.
-- IX abbreviates the exact external ordinary Value.index definition.
-- SR abbreviates the exact external Shared index_into definition.
theorem shared_read_congr {K : Type} (a b : D K)
    (h : ReadEq a b) (k : K) (v : V) : SR a k v = SR b k v

theorem shared_dictionary_read_congr {K : Type} (a b : D K)
    (h : ReadEq a b) : ReadEq (S a) (S b)

theorem value_index_read_congr {K : Type} (a b : D K)
    (h : ReadEq a b) (v : V) (k : K) : IX a v k = IX b v k

-- Stronger than success-only lookup laws: these bind the actual dispatch.
theorem shared_read_exact {K : Type} (d : D K) (k : K) (v : V) :
    SR d k v = d.index_into k v

theorem value_index_exact {K : Type} (d : D K) (v : V) (k : K) :
    IX d v k = (do let x ← d.index_into k v; pure (x.getD .Null))
```

The source-backed model already has these last two definitional shapes. In particular the `IndexInst` argument is a dynamic record parameter: the laws must hold for every supplied record, not merely when simplification substitutes the fixed Str instance. An opaque callback receiving the complete dictionary would need its own proved read-respect law; its type alone would establish nothing. [Shared read body](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonIndexOperations.lean:69), [Value index body](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonIndexOperations.lean:90).

`Result.div` is an explicit nonaxiomatic ITree divergence, not a recursive Lean definition with an unproved termination claim. `Result.fail e` is a visible failure effect with no returning continuation, and `bind` preserves both failure and divergence. Equality of **complete Result values** in these types consequently preserves read failure/divergence as well as normal outcomes. It must not be weakened to equality after discarding unsuccessful outcomes. This SDK's outer Result has only the listed failure effect; it does not already contain native allocator/world/unwind traces. Inner Rust `core.result.Result` is the separate Ok/Err datatype. [ITree Result and constructors](/data/repos/behavior-ir-core-033/experiments/transition-study036/private/analysis/aeneas/backends/lean/Aeneas/Std/Primitives.lean:39), [bind laws](/data/repos/behavior-ir-core-033/experiments/transition-study036/private/analysis/aeneas/backends/lean/Aeneas/Std/Primitives.lean:253), [inner Result](/data/repos/behavior-ir-core-033/experiments/transition-study036/private/analysis/aeneas/backends/lean/Aeneas/Std/Core/Result.lean:7).

## Bind noninterference to the generated caller

Create `RowRead : D Str → Row → M → M → Result Out` by **mechanically abstracting the exact elaborated actual494 row body**: replace its four occurrences of the full `(Shared … StrDictionary)` argument by the parameter `d`, leaving every remaining expression, universe, monadic bind, branch, literal, constructor and call unchanged. Here `d` represents the full outer dictionary actually passed to IX. This is an automatically derived proof auxiliary, not an alternate selected implementation. Do not edit generated `Funs.lean` to add a parameter.

Require these roots, with independently frozen expected types:

```lean
-- ConcreteDictionary := S Str.Insts.Serde_jsonValueIndexIndex
-- ActualRow := transition_study036.reference.state_fact_row

theorem generated_row_is_RowRead (r : Row) (p c : M) :
    ActualRow r p c = RowRead ConcreteDictionary r p c

theorem row_read_noninterference (a b : D Str) (h : ReadEq a b)
    (r : Row) (p c : M) :
    RowRead a r p c = RowRead b r p c

-- A complete canonical record: same read, arbitrary chosen sealed field,
-- two divergent mutable fields; preserve ALL record fields.
def canonicalReadDict (read : Str → V → Result (Option V)) : D Str := {
  privateSealedInst := {}
  index_into := read
  index_into_mut := fun _ _ => Result.div
  index_or_insert := fun _ _ => Result.div
}

theorem generated_row_read_replacement (r : Row) (p c : M) :
    ActualRow r p c =
      RowRead (canonicalReadDict ConcreteDictionary.index_into) r p c
```

Prove the first theorem by the exact expression instantiation, ideally reflexivity after unfolding the auxiliary. Prove the second using the generic IX congruence at **all four sites**, monadic congruence and unchanged continuations. It should need no row-validity/normal-return assumption: arbitrary equal reads give equal complete model behavior even when read fails or diverges. The third follows from the first two and the canonical dictionary's read equation. Then prove the independent full-JSON row specification for the actual row, using the third plus genuine generic primitive/domain laws; do not substitute the third for the row specification.

A mechanical certificate must accompany these roots:

1. Bind exact extraction/LLBC/generated Types/Funs/template identities, imports, model source blocks, cfg/compiler/backend identities, and the native source item identities. Generate the auxiliary from the frozen elaborated body with capture-avoiding expression substitution. Compare the re-instantiated expression structurally, including all implicit arguments/universes; reject any unaccounted change. A digest plus a handwritten `RowRead` alone is insufficient. Kernel checking of the first theorem verifies the actual instantiated connection; structural abstraction checking also records why the universal parameter matches the original source dictionary boundary.
2. Check every occurrence and use of the abstract dictionary through the entire selected consumer closure. Here it is supplied only to IX; IX selects only read; Shared read selects only read. Permit these uses through their proved congruence summaries, not a textual search for mutable names. Reject arbitrary dictionary eliminators, whole-record equality/BEq/hash, pointer/cast/FFI/unsafe inspection, mutable projection calls, or passage to a consumer with no checked relation. Include lets, lambdas, record projections, implicit arguments, aliases and partial applications in this check.
3. Establish non-escape at the **semantic interface**, not from the name of the return type alone. `Out` contains no Index/functions and the row passes only JSON/string/map arguments to the other primitives; nevertheless audit those primitives' interpretations and any state/callback capture. A callback hidden in external state, global storage, closure, drop hook or later continuation would defeat the restricted context. No reachable source returns or compares the synthesized dictionary. The generated body gives the immediate argument/return inventory, not a proof of arbitrary external behavior. [body and call sites](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:99).
4. Keep every mutable declaration in the full transitive export, now as a checked definition; audit actual row binding, universal noninterference, dispatch laws and final row result roots. Reject a mutable callback read/call/escape mutant, an IX consumer invoking a mutable field before read, a Shared read bypassing its supplied field, changed dictionaries, omitted declarations and stale source/type bindings. Also retain positive cases where the read callback returns fail/div: these cannot be equated with successful Null lookup. No controls were executed for this research.

The universal theorem ranges over arbitrary full **Lean** dictionaries with equal read behavior, so it is stronger than choosing a convenient inert instance. It is not full dictionary equality: mutable fields can differ. A consumer allowed to call or compare them need not respect `ReadEq`. If a policy insists on a theorem mentioning the original opaque mutable axiom constants, that root still fails the unchanged allowlist; quantify arbitrary dictionary values instead, and instantiate the actual-row root only in the fresh fully defined external interpretation.

## Representation relation for the native boundary

The native-to-model dictionary relation must deliberately constrain **only observable reads**. A suitable independently defined family has the following shape (semantic notation, not new Lean axioms):

```text
ReadRep(KRel, VRel, ReadOutcomeRel, nativeRead, d) :=
  for every related native/model key and complete JSON input in related
  ownership/world states, nativeRead's execution and d.index_into's Result
  satisfy ReadOutcomeRel, including the declared read frame/effect behavior.
```

`KRel` uses complete UTF-8 bytes and actual borrow validity. `VRel` retains all six constructors, exact Number payload/bits, every array element in order, and every object key/value/order under the pinned backend. `ReadOutcomeRel` relates absence/presence and borrowed referent/frame on normal return; it also states precisely which nonreturning outcomes/effects the chosen source/runtime scope covers. There is **no requirement** on native mutable callbacks or their corresponding inert fields, and no conjunct mentioning the row's desired output, Parent/Child rules or observation equality. Actual494 retains all six Value constructors and all three number forms; runtime float carriers preserve bits without claiming native floating operations. [generated payloads](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Types.lean:24), [bit carriers](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/project/RuntimeNames.lean:5).

Prove that the **actual native read consumers** preserve this relation: Shared forwards once, IX performs one read then the exact Option fallback, and the actual row uses only those consumers at the recorded sites. Relate that consumer derivation to the same source/extraction schema used for `RowRead`. These are generic source-bound dispatch facts, not a premise saying the row is correct. The immutable owner shows statically generic `Index` methods and a sealed trait; the Lean full dictionary is the extraction's representation of this dispatch. Do not invent a runtime allocation merely from the appearance of a Lean structure, or infer allocator success from its absence. [native trait/signatures](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:37), [sealed implementations](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:134).

Constructing/storing a function value does not invoke its body in these pure Lean definitions. Thus a lambda returning div can inhabit a dictionary without causing row divergence. This fact is a property of the formal expression/consumer proof, **not** a claim that arbitrary native callback construction, capture, drop or code-pointer comparison has no effect. For the actual native source, bind the generic monomorphization and justify that no dictionary/callback identity is observed at this endpoint. The source returns references (including a static Null fallback); the JSON read relation must preserve borrow validity and applicable alias/frame facts. Abstracting referents to complete JSON content is permissible only for the proved content consumer scope. Address-sensitive callers, reference/code-pointer comparison or unsafe dictionary inspection require a finer relation and invalidate this coarse substitution.

This provides conservative coverage of arbitrary concrete unused mutable callback behavior **only within the checked read-consumer context and its stated observations**. It does not establish contextual equivalence in all Lean/Rust contexts and does not license general admission of either mutable API.

## What remains and the smallest fallback

A full kernel check of the fresh inert interpretation would establish its type/axiom closure and the proved **model** noninterference/result equations. It would not prove that native `state_fact_row` always returns, nor establish the read representation/source/compiler bridge, native Value clone/map/string ownership or complete runtime observations. The row actually calls `to_owned`, recursive Value clone and map insertion. No allocation-success, no-unwind, no-allocation, sufficient-stack or matched-OOM premise is introduced here. If applicable native abort/unwind/drop effects are not expressible by this Result model, retain that source/runtime relation as unresolved or use a prospectively justified richer outcome interpretation. Do not recode them as successful Null, SeedIdentity, `.undef` or div merely to close a theorem. [actual allocating/copying call sites](/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-a0492/positive-a0494/generated/Funs.lean:110), [outcome boundary](generic-primitive-admission-boundary-001.md:29), [ordinary trust limits](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:40).

The row root also reaches StudyError and its Json/Io payload sorts; their existing external type axioms remain separate blockers. The prior proposal's explicitly restricted nonaxiomatic carrier construction needs its own checked constructor/non-observation argument, or full source-derived error carriers. Removing mutable axioms alone is not full row closure. [actual494 type holes](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0494/project/CanonicalRowNames/TypesExternal.lean:23), [prior restricted strategy](native-row-composition-after494-001.md:58).

**Recommended next packet:** add the four exact external definition bindings, source-derived `RowRead`, the five generic dispatch/congruence roots above, the three generated-row binding/noninterference roots, and the strict consumer/abstraction certificate to a fresh prospective subject. Preserve complete generated files/full JSON and run the existing unchanged audits only when implementation is separately authorized. Keep mutable native semantics explicitly unadmitted. This is the smallest construction that resolves the particular dictionary axiom obstruction without claiming mutable correctness.

If a sound source-bound abstraction/consumer certificate cannot be supplied, **do not use arbitrary inert fields**. The smallest alternative consistent with unchanged generated Types/Funs is to supply real source-derived mutable method models, including backward-update compatibility, map frame/ownership and relevant mutation-before-failure outcomes, with genuine Shared forwarding and source/runtime admission. Existing mutable value-success models are useful algorithm sources but insufficient for that broader claim. If the present interface cannot express those effects, the alternative is a real shared Rust refactor to an explicit read helper without full Index dispatch, used by actual native workers and freshly extracted with reference compatibility proved. That is a new source subject and relinquishes the unchanged-Types/Funs condition; it cannot be passed off as a repair of actual494. Both alternatives follow the contract's explicit source-model repair/refactor path. [mutable gap](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonIndexOperations.lean:8), [native mutation order](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0492/source/owner/src/value/index.rs:96), [repair alternatives](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:35).
