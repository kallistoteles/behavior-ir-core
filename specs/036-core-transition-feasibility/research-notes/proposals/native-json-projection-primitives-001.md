# Minimal JSON primitives for the actual projection component

Research only, 2026-11-21. **New, unselected note.** Read only the permitted serde_json 1.0.151 owners (`map.rs`, `value/index.rs`, `value/mod.rs`), `source_identity.rs`, `native_build.py`, and the unselected [next milestone proposal](native-projection-next-milestone-001.md). No build, test, output/private-artifact inspection, additional discovery, selected/private write, or status change was performed. Previously inspected String Clone owner lines are cited without a new source read. All models/refinement roots below are candidates, not native admission or Core correspondence.

## Exact scope and source/domain binding

The proposed component has **eight generated declarations**, not eight primitive functions: four actual projection/accessor functions and four complete str/shared Index dictionary declarations. Its external planning list contains sixteen signatures, and the source note explicitly says that list is not an authoritative elaborated closure audit. The contracts requested here comprise Map new/insert, Value clone/as_str/index, six str/shared Index methods, and String clone, alongside already scoped String/Str and iterator support. Preserve every retained dictionary field; do not erase mutable methods because a particular projection call only reads. [component/dependency inventory](native-projection-next-milestone-001.md:81).

Bind the exact registry source/version/checksum, complete selected features/cfg, native and analysis compiler subjects, generated item/signature/dictionary identities, and the model/expected-type source subject. The registry path inspected is:

```text
/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/
index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/
```

These source files establish API bodies, not that every selected native/extraction build used the same feature-resolved package. Model `Value` recursively with all six source constructors: Null, Bool, Number(Number), String(String), Array(Vec<Value>), Object(Map<String,Value>). Preserve arbitrary nested values and unrelated fields/accumulator entries, exact string bytes, number payload representation and object iteration order. Use target-bounded finite representations, valid UTF-8 String/Str, well-formed unique map keys and source-valid Number/array/map/heap representations. Number representation and `arbitrary_precision` behavior are **not established by the three permitted owners**, which expose `Number` as a payload type; do not replace numbers with Nat or assume a particular Number implementation. [Value constructors and Clone derive](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs:112).

### Feature uncertainty that must be closed

`MapImpl` is BTreeMap when `preserve_order` is absent and IndexMap when present. Value's owning docs explicitly make insertion order observable through serialization in the latter case. A sorted-list primitive is a candidate only after binding the selected `!preserve_order` branch; otherwise use a separately justified insertion-order model/backend interpretation. Do not infer the branch from a default feature description or from equality of object contents. [backend cfg](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:23), [serialized ordering observation](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs:162).

The inspected identity policy is insufficient by itself to settle `preserve_order` or `arbitrary_precision`: `source_identity.rs` exposes a generic feature vector, but `native_build.py` fills it with features from only four named Core packages, not the serde_json resolve node. The metadata command at lines 507–518 has no `--features worker`; the later worker build at 826–838 does. This is a source-level limitation of the summarized identity, not a claim about the actual current resolved features. Freeze the serde_json package ID/version/source/checksum and unified feature node under **the actual same manifest/target/feature build invocation**, for both native candidate/oracle and analysis. If enabling worker or another feature changes the graph, bind that graph rather than the earlier summary. The raw metadata outputs were not inspected here. [identity schema](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/source_identity.rs:15), [metadata invocation and Core-only summary](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_build.py:507), [embedded summary](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_build.py:560), [worker build invocation](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_build.py:826).

Prospectively reject a source/model feature mismatch. Bind `arbitrary_precision` and the actual Number clone/data owner before claiming a full Value clone primitive for arbitrary JSON; those owners are outside this task's permitted reads. A source/hash or compiler-release field is provenance, not a semantic proof, as the identity module itself states. [identity disclaimer](/data/repos/behavior-ir-core-033/experiments/transition-study036/src/source_identity.rs:1).

## Primitive equations and effect boundaries

Write `lookup_F(m,k)` and `put_F(m,k,v)` for a separately defined map interpretation under the **bound** feature configuration F. `put_F` preserves all unrelated entries and the selected backend's observable order. No desired projection result occurs in these definitions. The equations below are value-level specifications; exact forward/backward tuple order, generics, dictionary parameters and Result function types must be copied from and checked against the actual retained external declarations at integration. That template was not among this task's permitted reads, so this note does not invent its full Lean argument order.

### JSON Map.new and insert

Exact Rust source signatures and bodies:

```rust
pub fn new() -> Self { Map { map: MapImpl::new() } }
pub fn insert(&mut self, k: String, v: Value) -> Option<Value> {
    self.map.insert(k, v)
}
```

[new owner](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:38), [insert owner](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:120).

The minimal data equations are `new = ok empty_F` and `insert(m,k,v) = ok(old,put_F(m,k,v))`, where `old = lookup_F(m,k)`. Prove empty absence; new membership; replacement returns exactly the old full Value; unrelated entries and key/order invariants are preserved; size is unchanged on replacement and increases once on absence when representable. The wrapper delegates stored-key retention/order details to the selected backend; bind its legitimate primitive contract rather than pretending map.rs proves its internal behavior. For the BTree branch, preserve stored keys on comparator-equal replacement as in the independently scoped map model. For IndexMap, independently justify insertion-position/replacement behavior from its owner before admission; it was not read here.

The data model may represent insert as an explicit updated map, but native insert consumes key/value ownership and returns old-value ownership. No automatic clone of either argument is part of this source wrapper. A required new map entry can allocate; even occupied insertion can have backend/drop effects. Any dropped unused key or returned old Value and the caller's discard must be tracked or justified unobservable at the declared runtime boundary. Map.new's empty content is known here; its allocation/runtime behavior is delegated and cannot be proved from an empty-list equation. Do not convert native allocation failure into a successful insertion or a new logical refusal merely because the model has a length guard.

### Value.clone and String.clone: two separate contracts

Value uses `#[derive(Clone,...)]` over the complete six-constructor enum. Its Object payload's Map clone delegates to `self.map.clone()`. Thus a plausible mathematical clone primitive returns the same **full represented data**, with independent ownership/resources and no mutation of the original. It is not a method that reconstructs only phase/owner or only the fields currently selected by the caller. [Value derive](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs:115), [Map clone](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:395).

Define an independent recursive payload relation/clone specification, retaining Number payload, array order/multiplicity and object key/value/order data. Under that relation the candidate Lean value equation can be `valueClone(v)=ok v`; the source/library justification must explain the derive and payload Clone contracts, conditional allocations and failure/drop behavior. A proof by rfl of a model defined as identity would not establish those contracts. Scalar cases may need no buffer allocation; String/Array/Object clones can allocate, recursively, and the actual Number representation may allocate under a selected configuration. Resource independence does not mean native pointers/capacities must differ for empty/zero-sized cases.

String.clone is separately `String { vec: self.vec.clone() }` in the previously inspected native/analysis owners. Its candidate equation is `stringClone(s)=ok s` at the exact byte view, with copy/ownership and allocation effects declared independently. Do not replace it by `to_owned(as_str(s))` using same-function congruence: that is another call path with different identities and potentially different effects. Equal byte results can be proved as a lemma only after both separate contracts are justified. [native String Clone](/var/tmp/behavior-ir-core036-v2/w001/ground-lean-probe/a0443/sources/library/alloc/src/string.rs:2375), [analysis String Clone](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0039/sysroot/lib/rustlib/src/rust/library/alloc/src/string.rs:2422), [milestone congruence boundary](native-projection-next-milestone-001.md:113).

### Value.as_str

Exact Rust signature: `pub fn as_str(&self) -> Option<&str>`. Its match returns `Some(s)` only for `Value::String(s)`, otherwise `None`. This borrows the String payload through coercion; it does not clone, serialize, print quotes or parse a Number. [owner](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs:469).

Candidate equations: `as_str(String s)=ok(some borrowBytes(s))` on the valid target-bounded String domain; `as_str(v)=ok none` for all five other constructors. Prove returned Str's exact bytes/UTF-8 validity and read-only lifetime/frame relation. Only the String branch invokes the String→Str model; no decoder/borrow operation should be evaluated on a non-string branch. Model representations may copy bytes to express a borrow, but this is not a claim that the native accessor allocates a buffer. Exclude the model's oversized-String totalization from related source inputs; do not make the accessor fail on otherwise source-valid numbers/arrays/objects.

### Value's ordinary indexing operator

Exact Rust owner:

```rust
impl<I> ops::Index<I> for Value where I: Index {
    type Output = Value;
    fn index(&self, index: I) -> &Value {
        static NULL: Value = Value::Null;
        index.index_into(self).unwrap_or(&NULL)
    }
}
```

[owner and missing/wrong-type contract](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:178).

The candidate must evaluate the supplied Index dictionary's `index_into` **once**, propagate its Result failure/divergence/effects under the exact extraction interpretation, return its Some result, and map None to the Null value. This operator does not insert or panic for an ordinary str key on a missing key/non-object; the static-null reference is a read-only fallback, not a mutable slot. The mathematical returned Value represents a shared referent; it must not be charged/interpreted as native Value.clone. Limit the admitted dictionary domain to the actual sealed source instances or explicitly preserve generic dictionary behavior. Do not replace an arbitrary extracted dictionary field by a hard-coded lookup and claim to preserve its effects. [sealed trait](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:19), [source sealing instances](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:134).

## All six retained Index methods

The three **exact Rust signatures** are the same for str and &T:

```rust
fn index_into<'v>(&self, v: &'v Value) -> Option<&'v Value>;
fn index_into_mut<'v>(&self, v: &'v mut Value) -> Option<&'v mut Value>;
fn index_or_insert<'v>(&self, v: &'v mut Value) -> &'v mut Value;
```

The first two return None on absence or wrong container type. The third has a different contract: insert a Null field for an absent object key, treat Null as an empty object, panic on an unsuitable non-null container. [trait signatures/contracts](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:37).

| Retained method | Forward/value-level equation and required effects |
| --- | --- |
| `str::index_into` | For `Object m`, return `lookup_F(m,keyBytes)`; for every other Value constructor return None. Borrow only; do not insert/clone/mutate. Source uses Map.get, whose String Borrow and Q Ord/Eq/Hash bounds remain part of its instance binding. [str body](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:83), [Map.get bounds](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:68). |
| `str::index_into_mut` | For `Object m`, return an optional mutable focus on an existing field; otherwise None. No membership/Null-to-object change, no key ownership conversion. Source calls Map.get_mut. [str body](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:90), [Map.get_mut](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:94). |
| `str::index_or_insert` | If input is Null, replace it by Object(Map.new). For an object, evaluate `self.to_owned()`, then `map.entry(...).or_insert(Null)`, returning the existing value if occupied or a newly stored Null if vacant. For Bool/Number/String/Array input, panic. **Key to_owned is evaluated even for an occupied entry**; only insertion of the Null slot is conditional. [body](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:96), [entry wrapper](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:272), [or_insert branches](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:679). |
| `<&T as Index>::index_into` | Exactly forward to `(**self).index_into(v)` under `T: ?Sized+Index`: one supplied dictionary call, with its same result/effect behavior; do not implement a second lookup. [owner](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:119). |
| `<&T as Index>::index_into_mut` | Exactly forward to the underlying `index_into_mut`, retaining the same focus/absence and backward reconstruction semantics. [owner](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:126). |
| `<&T as Index>::index_or_insert` | Exactly forward to the underlying `index_or_insert`, retaining conditional object creation/insertion, eager key ownership conversion, panic and mutable focus. [owner](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:129). |

`str::index_or_insert` does not use the lazy closure form `or_insert_with`. The supplied default is already `Value::Null`; the returned reference selects the existing slot on occupied or the inserted slot on vacant. Mistakenly treating the whole operation as “allocate only if absent” loses the eager key copy and possible drop of the unused owned key. The wrong-container panic can itself perform formatting/runtime effects; representing it as `.fail .panic` requires the declared panic observation abstraction, not an assumption that its message/unwind is irrelevant. [eager source expression](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/index.rs:100), [lazy API distinction](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/map.rs:686).

### Mutable caller/backward reconstruction

Represent a found object field by a structural focus containing the unchanged context, **stored key**, old Value, and exact backend order position. The extraction's backward function must reconstruct that context, not perform a fresh lookup using a possibly different comparator/dictionary:

- For `index_into_mut` with a found slot, a compatible caller update `some newValue` changes only that Value, preserving stored key, every unrelated entry, membership, order and outer Object. No key insertion/removal follows from the source signature.
- For `index_into_mut` returning None (missing key or non-object), the reachable compatible absence continuation preserves the original entire Value. Define any incompatible backward argument as explicit model totalization and prove callers never supply it; do not silently interpret `None` as deletion or `Some` as insertion.
- For `index_or_insert`, its forward focus may already reflect Null→Object and absent→present Null creation. Updating the returned referent changes only that now-existing slot. Even if the caller writes Null back, a formerly Null container remains an Object containing that field; it does not revert to top-level Null. On an occupied key, retain the original stored key/order position. On a non-null wrong-type panic, no mutable referent/backward function is successfully returned.
- The &T forwarding methods preserve the exact underlying forward result and backward function semantics. Their sealed-source dictionary may be admitted, but arbitrary effectful/failing extracted dictionaries cannot be erased merely because the Rust trait is sealed.

These are requirements for matching the actual extraction interface, not proof that any proposed backward function is correct. Retain any forward/backward allocation/error staging and shape-compatibility conditions imposed by the actual caller extraction.

## Concrete model, proof and control plan

1. **Freeze the component and primitive signatures.** Bind the original byte spans of the four actual functions and four complete dictionary declarations plus every dependency. Obtain exact external template types from the previously named retained owner under a separately permitted bounded step, including every trait parameter and backward result. This note's source-derived equations must not substitute for that signature check. Bind serde features and the actual Number/clone/backend subjects before specializing the model. [milestone inventory and derivation constraints](native-projection-next-milestone-001.md:90).
2. **Define positive data and independent semantics.** Use the existing complete recursive Value type and a well-formed feature-bound map interpretation. Define independent lookup/update/focus/clone-payload functions. Define the JSON primitives against those operations; keep model totalizations, native panic/error effects and valid source domains explicit. Identity-valued clone models must be accompanied by ownership/frame and underlying-clone interpretations, not justified by `rfl` alone.
3. **General model roots.** Freeze expected statements for empty map, insert absent/replacement/frame/order/size, recursive clone content+domain preservation, String clone bytes+frame, as_str's six constructor cases, read index's Some/None→Null behavior, both mutable focus reconstructions, Null object creation/absent insertion, and exact one-call &T delegation. Quantify arbitrary source-valid UTF8 keys and full recursive payloads; preserve unrelated fields and accumulator entries. Carry comparator/Borrow/Eq/Hash consistency and compatible backward arguments explicitly.
4. **Runtime/source justification dossier.** Separately justify the generic library interpretation for the pinned native and analysis subjects: source/feature identity, actual dictionary dispatch, complete clones, copy/allocation/OOM/drop/panic/lifetime effects and the observation abstraction. Source validity does not imply fresh allocations succeed. If a success/allocator premise is used, justify its precise environmental scope without narrowing the admitted Core input domain; otherwise model relevant outcomes or leave the dependency unresolved. Model equations and kernel cleanliness alone do not constitute native primitive admission.
5. **Real positive/negative checks, later.** Check the intact complete component and expected roots; then reject constant-Null indexing, Some/None confusion, mutation-on-read, absent-key insertion in get_mut, failure to convert Null to Object, eager key-copy erasure in an effect-aware occupied case, wrong stored key/order/unrelated-field update, backward deletion/absence synthesis, clone dropping a Number/array element/unrelated field, or as_str serializing non-string input. Include Unicode/NUL/prefix keys, missing/present-Null/non-string field distinctions, new/replaced arbitrary child IDs, exhausted iterator, and arbitrary unrelated accumulator contents. Feature/cfg/source/dictionary/type substitutions and stale/edited bodies must fail the real binding checker. Use a genuine declared Rust source mutation/rebuild/extraction canary, not a flag-only rejection. No control was run here.
6. **Actual row roots.** Only after the primitive interpretation is justified, prove the unchanged `state_fact_row`, child materialization loop body, `child_entity_value` and `text` statements. They must derive the matching Child update and constructor/accessor roundtrips over the established data relations; do not assume desired row equality. `text` missing/non-string failure is not a theorem that all malformed canonical/view rows have identical errors. The original empty map parameter of each child materialization iteration must be instantiated correctly. [actual expected row relation](native-projection-next-milestone-001.md:25), [empty-map parameter](native-projection-next-milestone-001.md:38), [malformed-row distinction](native-projection-next-milestone-001.md:45).

Admission of these generic dependencies would still not prove Store export/version correspondence, seed validity, full finite-row folds, maintained view preservation, selector/fallback, authority/history, evaluation, all observations, delivery or session composition. The BTree borrowed iterator and any String/Str operations reused by this component retain their own source/runtime obligations. The actual eight-declaration component is a milestone toward Core B02/B04; neither dictionary compilation nor its primitive laws close the full Core relation. [remaining actual caller edges](native-projection-next-milestone-001.md:56).
