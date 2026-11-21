# Narrow generic runtime admission: ordered maps and shared JSON reads

2026-11-21. Source-only proposal for specification revision 2. No implementation, extraction, build, test, kernel invocation, binary/IR inspection or admission was performed. Selected inputs, dependency models, native sources and private artifacts were read only. This note neither changes their status nor closes B01–B10. The reported fresh 465 helper checking is useful existing evidence; I did not independently check its receipts here.

## Decision

The current contract permits an **explicitly justified generic runtime primitive**, including a narrowly specified actual standard-library finite-map interface. It does not permit promoting the current candidate JSON/string definitions to native proofs because their Lean bodies have the right Rust names and checked algebraic laws. The next useful slice is:

```text
serde_json::Map<String, Value>::new
serde_json::Map<String, Value>::insert
shared str::index_into → serde_json::Map::get::<str>
```

Keep the full recursive `Value` payload opaque to these map laws. Include all existing admitted valid native strings and finite representable maps. Do not include mutable indexing/backward continuations, cloning, parsing, serialization, Number operations, deletion or iteration admission in this first slice. Their existing obligations remain open. Excluding those methods from this *admission packet* does not exclude callers from the feature's required native correspondence.

This follows [FR-002–004 and SC-001](../../spec.md), the [dependency classification and shared-function congruence rules](../../contracts/correctness.md), and [proof-contract.json](../../inputs/v2/proof-contract.json): a generic primitive needs explicit domain/source justification; an unresolved semantic refinement remains mandatory. A declared library assumption is still a declared compiler/runtime trust boundary, not a kernel proof of Rust's B-tree implementation. It cannot assume the desired Core projection or observation equality. The existing axiom allowlist is not enlarged.

## What the inspected native source actually establishes

The only original Rust sources inspected here were the pinned `serde_json-1.0.151` files under `/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/`:

| Source | Concrete behavior relevant to admission |
|---|---|
| [`src/map.rs:23`](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:23) | `MapImpl` is `BTreeMap` only under `not(feature = "preserve_order")`; the other branch is `IndexMap`. Source text alone does not establish the active build cfg. |
| [`src/map.rs:41`](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:41), [:73](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:73), [:127](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:127) | `new`, shared `get<Q>`, and `insert` delegate to `MapImpl`. `get` explicitly requires the borrowed ordering to match owned ordering. `insert` returns the old full value. |
| [`src/value/index.rs:84`](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:84) | Shared string indexing returns the map's optional borrowed value for `Object`, and `None` for every other variant. It does not allocate an owned search key. |
| [`src/value/index.rs:96`](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:96) | Mutable insertion converts `Null` into an empty `Object` **before** `self.to_owned()` and entry lookup; other scalar/array variants panic. This is a distinct effect/error boundary. |
| [`src/value/index.rs:212`](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:212) | `Value`'s read indexing substitutes a shared static `Null` for `None`. This must not collapse `get`'s distinction between missing and present-Null. |
| [`src/value/mod.rs:115`](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs:115), [:492](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs:492) | `Value` has all six variants, derived recursive Clone, and `as_str` is an exact variant match returning a borrow. This is source evidence, not proof that identity clone models preserve ownership/allocation effects. |

Map `entry`, `len`, iterators and Clone also delegate in [map.rs:274](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:274), [:291](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:291), [:303](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:303), [:395](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:395). Their simplicity does not make their complete contracts interchangeable.

## The precise finite-map contract

Use a mathematical finite map `μ` plus stored key representatives. For the first slice, keys are actual `String` values and queries are actual valid `str`; values are complete payloads. Generalization to another `K`, allocator or comparator is a separate instantiation obligation.

Define `RMap(native_map, rows)` through the admitted library abstraction and a checked carrier relation, with all of:

```text
rows contains exactly μ's entries and preserves every full stored key/value;
keys(rows) is strictly increasing under the actual String byte order;
there is exactly one entry per comparison-equivalence class;
native length = rows.length = |μ| and fits the actual target usize;
shared returned references denote the represented value with its lifetime/frame.
```

The model's `CollectionsData.WellFormed` is **only Nodup**. It is not this relation. Strict sortedness is necessary for an early-terminating ordered search or insertion. Under the actual String relation, comparison equality must coincide with byte/content equality; borrowed and owned comparisons must agree. Do not infer those facts merely from an `Ord`/`Borrow` dictionary type. A truly generic comparator-equivalence contract must retain its stored representative; it cannot silently replace comparison equality with structural equality for every possible K.

The primitive interface laws required by consumers are:

| Operation | Exact law |
|---|---|
| `new` | Produces the empty abstract map and a related empty representation. |
| `get::<str>(q)` | With q related to owned key k, returns `None` iff k is absent, or a shared reference related to the **full** `μ(k)`; neither map nor unrelated heap changes. Existing `Null` is `Some(Null)`. |
| `insert(k,v)` | Returns exactly old `μ(k)`; post-map is `μ[k↦v]`; all other lookups unchanged. On an occupied comparison class, the stored key is retained. |
| cardinality | Occupied insertion keeps length; absent insertion adds exactly one, under the actual representable successful operation. Sortedness/uniqueness and representation are preserved. |
| shared iteration, later packet | Yields each stored key/full value exactly once, in actual ascending key order, then terminal `None`; `keys`/`values` are corresponding projections. No result-permutation theorem substitutes for this sequence equality. |

Iteration laws are specified now because representation must support the already-required consumers; they are not admitted by the proposed `new/insert/get` packet. Owned iteration additionally needs move/drop relations. `get_mut` and entries additionally need the actual backward/aliasing relation.

A pure lawful comparator matters operationally: a model's linear `captureM` and native B-tree search need not compare the same keys in the same order. A generic contract over arbitrary effectful or panicking comparison callbacks would therefore be too strong. First instantiate the actual total, effect-free String byte comparison and valid borrowed-key relation, rather than treating every extracted `Ord` dictionary as admitted.

## Existing algebra that can be reused, and what it does not prove

These are source-inspected candidate-model theorem bodies; the existing checking history must be bound separately to their exact selected versions.

| Existing source/laws | What already suffices mathematically | Mandatory remaining bridge |
|---|---|---|
| [CollectionsData](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsData.lean): `insert_old`, `lookup_insert_same/other`, `length_insert_absent`; [CollectionsInvariant](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsInvariant.lean): `lookup_none_iff`, `wellFormed_insert`, `length_insert_present` | Finite association-map old-value, lookup, absence and size laws. | These concern **CollectionsData.insert**, not native BTree insertion or `orderedInsert`. |
| [CollectionsGap](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsGap.lean): `capture_valid`, `valid_vacant_splice_order`, `ordered_unique`, splice/frame laws | Constructing an ordered insertion gap under explicit comparison/order premises. | Instantiate actual comparison, derive whole ordered insertion preservation, old lookup and lookup-frame laws, including occupied case. |
| [NativeJsonMapOperations](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonMapOperations.lean): `capture_write`, `insert_spec`, `write_occupied`, `occupied_frame`, `vacant_frame` | The candidate insertion equals the candidate ordered specification; captures preserve payloads/keys and frame unrelated lookups. | Relate that candidate to the admitted native library contract and to actual serde wrappers, under RMap. `insert_spec` alone only unfolds the substituted candidate. |
| [CollectionsOrder](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsOrder.lean): `lookup_eq_of_perm`, `lookup_normalize`, `normalize_order` | Changing enumeration preserves extensional lookups under uniqueness; canonicalizing has conditional order laws. | Connect native enumeration to the sorted representation; don't silently normalize an observably ordered native sequence. |
| [NativeKeyOrder](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeKeyOrder.lean), [NativeStringCodec](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringCodec.lean): byte/ordering/round-trip laws | Concrete model order and codec agree over their stated carriers and domains. | Native String/str representation, real trait instance binding, valid UTF8, actual target length and call/effect adequacy. |
| [NativeJsonIndexOperations](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonIndexOperations.lean): `read_object`, nonobject read cases, `shared_read`, `index_some/none` | Candidate dictionary dispatch and shared optional-result behavior. | Source wrapper refinement plus the real get/borrow relation; static-Null reference adequacy if `Value::index` is included later. |

**Concrete bridge to add:** prove, on strictly sorted valid rows, that `orderedInsert` returns the same old lookup and same pointwise updated map as `CollectionsData.insert`, and preserves strict sortedness with exact cardinality. They are not structurally equal. Existing `keys_insert_absent` shows association insertion appends: inserting `"a"` into `["z"]` gives `["z","a"]`, while ordered insertion gives `["a","z"]`. Use an extensional relation/permutation theorem for lookups and a separate exact sorted enumeration theorem. Reusing the append-order theorem as a native iterator theorem would be wrong.

## Minimum source/cfg/runtime admission packet

Before calling this small slice admitted, retain and independently check the following concrete evidence; do not add a blanket JSON-equivalence premise.

1. **Exact owning sources and build choice.** Bind the actual native compiler/core/alloc source revision, target pointer width, relevant cfg and trait monomorphizations; serde_json 1.0.151 source/checksum; the effective crate-unit feature set; and native/extraction configuration agreement. Specifically establish `preserve_order = false` for this subject, rather than infer it from defaults or Cargo.lock. Bind any `Number`-affecting feature choices in the complete payload representation even though this slice does not interpret numbers. Reuse existing source acquisition evidence where valid; [native_std_source_v2.py](../../../../experiments/transition-study036/native_std_source_v2.py) explicitly describes its source/compiler ownership checks as **not** semantic admission. Its owning std source pin is `48a229ceaefd4985c50990b14116b6d856af0985`; I did not read or validate its acquired private artifacts in this task.
2. **A named ordinary library assumption.** Specify only the actual BTreeMap `new/get/insert` behavior above under lawful concrete comparison/borrowing and the existing runtime model. Cite the owning pinned standard-library interface/source for each law, including stored-key retention. Either justify that interface as a current-contract-permitted generic primitive, or translate/prove the necessary library source. Source hashes establish identity; they do not establish those laws. State which runtime facts remain trusted. Do not introduce a forbidden Lean axiom or a premise saying Native036 already equals OriginalCore.
3. **Checked model representation.** Supply RMap initialization/preservation and the `orderedInsert` extensional/order/cardinality lemmas above. Prove native valid strings map to all appropriate UTF8 model carriers with actual usize bounds and pure comparison/borrow agreement. Invalid-UTF8 slice inhabitants and oversize model Strings are off-source totalizations; prove unreachable at these native calls. Do not enforce a new ASCII/U32/fixture-size restriction to make this true.
4. **Actual serde wrapper refinements.** Extract the real pinned `Map::new`, `Map::insert`, `Map::get::<str>` and `str::index_into` wrappers with their concrete dictionaries, or provide checked source-bound refinement for their actual bodies. Target relations are `native_map_new_refines`, `native_map_insert_refines`, and `native_json_shared_read_refines` under RMap/value/key relations—not merely the current candidate equations. `get::<str>` needs explicit coverage even though the current map candidate file defines only new/insert. No selected/generated body is edited by this proposal.
5. **Effects, allocation and references at their actual scope.** Reuse only the already-declared compiler/runtime allocation, panic and resource semantics. For normal return, insertion consumes k/v and returns the old payload; shared get allocates no search String and returns a borrow. Show the actual concrete payloads/destructors/comparator/allocator cannot introduce omitted user callbacks or observable aliasing effects at this seam. A phantom allocator parameter does not justify arbitrary custom allocators. Do not add a stronger “allocation always succeeds” premise: if current E does not already account for a possible allocation/panic path, that path remains an explicit unresolved refinement, not `ok` by definition. Any resource-failure exclusion must already belong to the existing justified E; this note authorizes no new domain restriction. Native costs and failure/delivery paths remain charged.
6. **Source-bound positive and negative closure.** In a subsequent authorized attempt, check the exact expected relational types and transitive dependencies, freshly check the instantiated callers, and exercise actual source mutations for wrong old value, missing-vs-Null, replacement corruption and wrong comparator/feature selection. A wrong cfg must invalidate/reject admission. These are future checks, not actions executed for this note. Record only this admitted slice; mandatory caller projection, Safety, observer, publication and session refinements remain B01–B10 work.

The first packet needs no claim about B-tree node layout, rotations or O(log N) if the standard finite-map interface is admitted at the existing generic-runtime seam. It does need representation and caller-visible laws strong enough to preserve original ordering, errors and values. Avoid erasing physical identity at other seams: this packet says nothing about Arc epoch/writer identity.

## Boundaries that must remain refinements

- **Whole JSON:** preserving six constructors and full payloads is necessary but does not establish native parsing, number semantics, equality, hashing or original encoding. Same-native-function congruence is available only after actual function identity, equal complete native arguments and compatible performed call/error/effect conditions are proved. A simplified encoder callback is insufficient.
- **String conversion and clone:** [NativeStringOperations](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeStringOperations.lean) and [NativeJsonScalarOperations](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonScalarOperations.lean) currently define candidates. `fun value => ok value` does not prove recursive native clone ownership, allocation or error adequacy. `Value::as_str` is a particularly small next source wrapper once byte/lifetime representation is admitted; it is still a wrapper refinement.
- **Mutable borrowed results:** [CollectionsFocus.Compatible](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/CollectionsFocus.lean) allows only absent→None or present→Some. Actual caller continuations must satisfy that relation, preserve the frame and obey exclusive borrowing. A totalized model backward function accepting an incompatible replacement is not a Rust execution. `get_mut` does not insert an absent entry or delete a present one.
- **Mutable insertion/errors:** the source Null→Object mutation precedes key copy; the candidate explicitly omits that partial state on a failing key-copy path and uses coarse `.panic` for type mismatch. Do not admit `index_or_insert` without either exact source/error-effect refinement or an already-justified actual caller argument showing the omitted paths cannot occur. Existing scope cannot be narrowed to hide those paths.
- **Iteration:** [NativeCollectionIteration](../../../../experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeCollectionIteration.lean) exposes stored order. Its model cursor equations do not prove that native iteration has that complete order. Bind actual iterator wrappers/macros, borrow lifetimes, terminal behavior and RMap enumeration before admitting them; owned traversal additionally preserves moves/drop behavior.

## Why exact-name bindings and 465 do not close this boundary

[template_function_bindings_v2.py](../../../../experiments/transition-study036/template_function_bindings_v2.py) checks Rust names, exact generated signatures and source-block hashes, removes the identified external axiom blocks, and verifies no external inventory node was lost. It does **not** compare the replacement's semantics to native Rust. Each inspected `native_*_operations_v2.py` selects `exact_signature_candidate_api_not_native_admission` and requires `native_proof = unestablished`. The key/codec contract modules similarly state only expected model laws and controls.

Consequently a fresh kernel pass can legitimately establish arbitrary-input theorems about these candidate bodies and conserved-source callers *under those interpretations*. It cannot, by itself, establish their native interpretation. The next admission record must name which generic library facts were explicitly justified, which wrapper/source relations were checked, and which callers consume them. Only then can that slice contribute native facts to B02/B04/B07 and later B10 composition; it cannot relabel all B01–B10 closed.

The actionable next step is the bounded `new/insert/shared get` packet above, starting with source/cfg and RMap/ordered-insert closure. Its success removes one specific generic-library ambiguity while leaving the complete feature domain, required observation equality, trust/finality and selected proof subject unchanged.
