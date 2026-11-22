# Small native String borrow admission packet

Source-only proposal, 2026-11-22. New, unselected research; no build, test, source acquisition, selected mutation, admission or status promotion. This note uses actual a0484 output and does not depend on prospective a0485. The packet below is an implementation recommendation, not a checking receipt.

## Decision and exact trust boundary

Admit one generic operation: **a shared, full-buffer UTF-8 view of a valid native String**, preserving its bytes, owner and frame. Its concrete entrypoints are `String::as_str` and, only if not translated, `<String as Deref<Target=str>>::deref`. Prove `serde_json::Value::as_str` from its actual extracted six-way match. Do not treat Value::as_str, JSON indexing, comparisons, cloning, ownership conversion, or map algorithms as trusted primitives. This follows the owner's explicit alternative of a justified generic runtime primitive and its separate source/domain requirement. [correctness:34](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:34), [correctness:40](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:40).

The native owning body is precise: String contains Vec<u8>; as_str applies unchecked UTF-8 view conversion to the vector's shared slice, relying on String's established UTF-8 invariant. Deref delegates to as_str. Vec::as_slice describes initialized contiguous storage, read validity, no mutable alias over the returned lifetime, and the isize byte bound. These are existing valid-value requirements, not newly imposed selector limits. This path performs no buffer allocation, copy into an owned String, recursive Value traversal, destructor, user callback or I/O in the inspected bodies. [String representation](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/string.rs:350), [as_str](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/string.rs:1057), [deref](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/string.rs:2845), [slice requirements](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/vec/mod.rs:1856).

Actual a0484 already translates Value::as_str, including the coercion call that is easy to miss:

```lean
| serde_json.value.Value.String s =>
  let s1 ← alloc.string.String.Insts.CoreOpsDerefDerefStr.deref s
  ok (some s1)
```

The other five constructors return `ok none`. Its external template declares deref separately from String.impl.as_str. The current nine-function String binder does **not** include deref. Registering its existing as_str candidate therefore does not close this actual call. [actual generated match](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0484/generated/Funs.lean:77), [separate external node](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0484/generated/FunsExternal_Template.lean:46), [current inventory](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_string_operations_v2.py:6). The Rust wrapper independently confirms a borrowed String arm and absence for other constructors. [owning Value body](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs:492).

The trusted statement is a byte-and-permission API interpretation, not an assertion of Core projection, observation, or final execution equivalence. Its implementation dossier must bind the native stable source/compiler/target tuple and extraction nightly source/compiler/target tuple independently. The retained stable-source acquisition identifies compiler commit `48a229ceaefd4985c50990b14116b6d856af0985` but explicitly does not admit cfg/ABI/runtime semantics. Thus it is source support, not an already established cross-toolchain bridge. [pin](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_std_source_v2.py:14), [acquisition scope](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_std_source_v2.py:260), [cross-pipeline obligation](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:11).

## Representation, frame and outcomes

Freeze these predicates in the admission dossier; native addresses/heaps here are specification variables at the declared ordinary runtime abstraction boundary, not a claim that a checked Rust operational semantics already exists:

```text
OwnedRep_T(H, owner, s):
  owner is a live, source-valid shared-borrowable String in H;
  its initialized Vec payload is exactly ownedBytes(s);
  payload is valid UTF-8;
  len <= isizeMax_T and len <= usizeMax_T.

StrRep_T(H, loan, owner, q):
  loan is a source-valid shared str slice of owner's complete payload;
  slice address/length designate the same bytes, with no normalization;
  borrowedBytes(q) = owner's initialized payload;
  shared permission lasts no longer than the receiver borrow;
  owner remains live and no mutable access aliases that loan.

BorrowCall_T(H, owner) normally returns (loan,H'):
  H'=H on allocated objects, payloads, owner/capacity and external state;
  only the logical read-loan permission is introduced;
  StrRep_T(H',loan,owner,q), with exact original length;
  no allocation/deallocation, ownership transfer, callbacks or I/O.
```

Empty Strings allow the source-valid empty-slice pointer convention; do not require a nonempty allocation. Preserve NUL, non-ASCII and normalization-distinct bytes. The isize bound comes from native Vec validity and target binding; the existing Lean conversion needs only its consequence `len <= Aeneas.Std.Usize.max`. The target relation must show that this max agrees with the selected Rust usize width. `String` has valid UTF-8 but no global Aeneas length bound; `Str` has its Slice bound but may contain invalid UTF-8. [byte carriers and borrow](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeKeyOrder.lean:25), [validity and decoder](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringCodec.lean:41).

Use two explicitly distinct outcome levels. The checked extracted-model root below returns `.ok` under the established byte bound. The source API realization states exact result/frame **when the source call normally returns**, and records that the inspected language-level path has no allocating, fallible or panicking operation on valid input. It does not assume allocator success, global no-unwind, sufficient stack, or termination of the enclosing worker. It does not turn an external interruption into `.ok`, `.none`, `.undef` or `.maximumSizeExceeded`. Applicable abnormal runtime outcomes of the enclosing execution remain an explicit caller/B10 obligation until its outcome interpretation is justified. This separation permits this actual helper packet without assuming that both whole programs already succeed. It cannot discharge the unconditional whole-operation relation. [required full relation](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:5), [premise discipline](/data/repos/behavior-ir-core-033/.specify/memory/constitution.md:95).

The generic trust entry must state exactly which conventional semantics it interprets: valid shared-reference/slice projection, the unchecked UTF-8 view cast on already valid bytes, and faithful compilation/extraction of these operations. These facts are justified at this tiny source boundary. A new Lean axiom `nativeBorrowCorrect`, an arbitrary `RunNative` with a desired-result law, or a hypothesis that the complete Core outputs agree is not this route. The kernel allowlist stays unchanged. [proof contract](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/proof-contract.json:16), [allowlist](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/proof-contract.json:94).

## Exact Lean/code edits to prepare next

1. Add a **standalone** `NativeStringBorrow.lean` over Aeneas, not over the a0365-linked NativeJsonIterators import chain. Factor/reuse only the byte/codec declarations actually needed: `toRustByte`, `toLeanByte`, `ownedBytes`, `borrowedBytes`, `borrow`, `borrow_bytes`, UTF-8 decode/validity and `borrowResult`. Preserve independent exact-byte roots. Existing implementations are suitable algorithms; their current placement imports a larger extraction context and is not a drop-in module for a0484. [current import chain](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeKeyOrder.lean:1), [borrowResult](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringCodec.lean:95).

2. Bind only the exact external `String.impl.as_str` node to `borrowResult`. For the **a0484-only** route, bind the separately external deref node to the same byte-view interpretation under its exact Rust registration/signature/block identity; justify both native entrypoints by the owning delegation body above. Prefer a subsequently extracted actual deref body if available: keep it unchanged and prove that wrapper reduces to the as_str interpretation. Do not define a second deref when it is already generated. No future a0485 result is assumed here.

   Freeze roots equivalent to the following (names are prospective):

```lean
-- K and C denote the standalone byte and codec namespaces.
theorem string_as_str_exact (s : String)
    (h : (K.ownedBytes s).length ≤ Aeneas.Std.Usize.max) :
  alloc.string.String.impl.as_str s = .ok (K.borrow s h) := by
  exact C.borrow_result_valid s h

theorem string_deref_exact (s : String)
    (h : (K.ownedBytes s).length ≤ Aeneas.Std.Usize.max) :
  alloc.string.String.Insts.CoreOpsDerefDerefStr.deref s =
    .ok (K.borrow s h) := by
  -- a0484 external interpretation: unfold its separately bound definition;
  -- translated-deref route: unfold the ACTUAL generated deref wrapper,
  -- then use string_as_str_exact. Never rewrite that generated body.
  ...
```

   Add separate roots `borrow_bytes`, valid UTF-8/`decode_borrow`, and returned Slice length. Thus a truncated view cannot satisfy a root merely restating a changed implementation. Current `borrow_result_valid`, `borrow_bytes`, `decode_borrow` already supply the mathematical content; copying their checked statements does not itself supply native admission. [byte root](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeKeyOrder.lean:31), [codec roots](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringCodec.lean:47).

3. Put byte-identical a0484 `Types.lean` and `Funs.lean` under the module prefix they already import, `CanonicalRowNames`. Supply fresh `CanonicalRowNames.TypesExternal` and `CanonicalRowNames.FunsExternal` from **that extraction's** templates with a fully enumerated edit ledger. Do not import a0365 Types under this prefix. The whole Funs file can elaborate with unrelated external declarations retained as explicitly unresolved stubs, but the leaf theorem must have no transitive dependency on them; selected-root checking does not admit the entire module. A component extractor is an optional optimization only after it independently preserves the selected declaration bytes and the full elaborated dependency closure. [generated prefix/types](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0484/generated/Types.lean:1), [component conservation limit](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_projection_component_v2.py:67).

4. **Close type dependencies before attempting the Value root.** a0484 TypesExternal contains axioms for Number and Map, as well as JSON/I/O errors. Merely proving a String-constructor lemma still mentions Value, whose transitive type contains Number and Map; these cannot pass the strict axiom audit. Do not replace Number with Nat/Unit, ignore its payload, or claim equality with a0365's Number. The narrow prospective extraction correction is exact includes of `serde_json::number::Number` and its active `serde_json::number::N` type, not a broad module include. Bind the active `arbitrary_precision` cfg: the ordinary N has U64/I64/F64 constructors; the alternate N is String. Retain generated Number/N bytes from the **same fresh subject** and independently compare the new Value/as_str declarations and cfg lineage to a0484. If the fresh Funs/Types change, select and prove that new exact pair; a0484 conservation evidence then records lineage rather than an invented type equality. [actual holes](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0484/generated/TypesExternal_Template.lean:22), [owning Number/N](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/number.rs:20), [alternate N](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/number.rs:72).

   Map needs only a conservative **carrier interpretation**, no lookup/ordering/new/insert API admission for this leaf. Reuse the positive generic `CollectionsData.Map K V` carrier and the exact serde Map wrapper declaration in a small standalone module, preserving every complete key/value payload. Define its source relation as enumeration of the source map's full entries (and retain source frame); the leaf never examines or modifies it. The generic carrier may overrepresent malformed maps, because all Object cases return none uniformly. No map algorithm theorem follows. Rebind only the exact a0484 Map template block; do not import the full a0365 NativeCollectionsData package or equate their Value carriers. If an acceptable source-to-carrier relation cannot yet be justified, retain Map as a blocker and check the String-only roots first. [positive carrier](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsData.lean:12), [existing standalone wrapper shape](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCollectionsData.lean:43), [owning Map/cfg](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:23).

   JSON/I/O error type axioms may remain declared for unrelated state_fact_row elaboration only if the selected Value root's independently audited transitive closure excludes them. Otherwise resolve or parameterize their exact use; do not extend the axiom allowlist. An explicit parameterized derivative would require separate checked transport and is unnecessary for this Value helper's intended closure.

5. Once that exact context is axiom-clean, define an independent byte specification:

```lean
def SourceBound : Value → Prop
  | .String s => (K.ownedBytes s).length ≤ Aeneas.Std.Usize.max
  | _ => True

def Spec : Value → Option (List UInt8)
  | .String s => some (K.ownedBytes s)
  | _ => none

theorem value_as_str_bytes (v : Value) (h : SourceBound v) :
    (do
      let out ← transition_study036.serde_json.value.Value.impl.as_str v
      pure (out.map K.borrowedBytes)) = .ok (Spec v) := by
  cases v <;>
    simp [transition_study036.serde_json.value.Value.impl.as_str,
          SourceBound, Spec, string_deref_exact, K.borrow_bytes, *]
```

   This is intended Lean shape, not executed syntax. Freeze the fully qualified elaborated type independently, with `Value` explicitly the new selected generated carrier. Also check a String-arm exact-view root and five separate nonstring roots (quantifying arbitrary full Number/Array/Object payloads), plus valid returned UTF-8. The general theorem has no premise asserting its result, no recursive bound on non-string payloads, and no fixture bound. The native representation composition establishes SourceBound only for the actual top-level String arm, preserves all unrelated payloads by frame, and transports the shared lifetime to the returned Option. It does not prove source input construction or caller projection correctness.

## Reusable checking and transport tools

- `template_function_bindings_v2.bind_functions` already checks the exact Rust name, Lean name/signature, template block byte count/digest, inventory equality and no removed external node. Its regex currently assumes one-line declarations. a0484 deref is multiline, so a dedicated small parser/guard or a narrowly specified multiline extension needs red/green controls; do not silently normalize the generated template first. [binder checks](/data/repos/behavior-ir-core-033/experiments/transition-study036/template_function_bindings_v2.py:7), [multiline deref](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0484/generated/FunsExternal_Template.lean:50).
- `check_proofs.check_declared_proof_v2` is the actual reusable engine: fresh empty compiled directory, frozen expected theorem types, source/import digest verification, transitive foundation-only axiom audit, and fresh kernel. Select `selected-root-export-v1` for a leaf in a module retaining unrelated unresolved stubs; this checks exactly the root's transitive export, not all imported constants. The type axioms above still cannot appear in that export. [engine scope](/data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:264), [strict expected type/axiom audit](/data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:69), [export and fresh kernel](/data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:379).
- The existing collection probe's `WorkerEntrypointsNames` prefix, ten-type inventory, and richer context are hard-coded. Reuse its template-block ledger/checking pattern, not its assembled project as if it were the CanonicalRowNames context. [hard-coded context](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_collection_layout_probe_v2.py:413), [assembly](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_collection_layout_probe_v2.py:738).
- If a type-parametric derivative becomes necessary, `NativeParametricConservation` supplies deep type/value/recursor dependency traversal, matcher expansion and kernel-certified definition transport; the Python inverse-edit check is explicitly lexical only. This is reusable machinery to adapt with new frozen expectations, not an already proved transport of Value/Number or of two extraction subjects. [deep audit](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:38), [certificate construction](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeParametricConservation.lean:144), [lexical limit](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_parametric_canonical_v2.py:74).

Before implementation, freeze genuine controls: truncate/reverse borrowed bytes; return none for the String arm; return some empty view for a nonstring arm; substitute wrong signature/source/cfg; preserve an unresolved Number/Map axiom; delete a root or change its expected type; introduce sorryAx; and substitute a stale generated wrapper. Require positive acceptance and the expected rejection at the responsible checker. A source canary must mutate/re-extract the owning body, separately from model mutants. Constitution requires observed red before code. [test-first](/data/repos/behavior-ir-core-033/.specify/memory/constitution.md:33), [actual source/proof controls](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/contracts/correctness.md:70).

Completion of this packet would establish only the enumerated String byte-view interpretation and the checked actual Value accessor wrapper at its source/runtime scope. Existing B01–B10 roots remain unestablished; JSON indexing, owned conversion, clone, maps, projection, authority, delivery and whole-runtime outcomes remain separate work. No status or selection changes are proposed by this note. [current native roots/status](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/inputs/v2/proof-contract.json:9).
