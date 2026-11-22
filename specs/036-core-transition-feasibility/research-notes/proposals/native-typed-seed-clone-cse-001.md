# Native typed seed clone factoring: source explanation and adequacy gap

Status: unselected source-only proposal; 2026-11-22. No proof or feature completion claim. Native/runtime correspondence and B01–B10 remain open.

Path abbreviations (literal absolute roots):

- `R=/data/repos/behavior-ir-core-033`
- `E=R/experiments/transition-study036`
- `F=R/specs/036-core-transition-feasibility`
- `P=/var/tmp/behavior-ir-core036-v2/w001`
- `S=P/disposable/frontend-translator-a0417/workspace/aeneas/src`

## Observed artifact boundary

`P/native-extraction/a0514/typed_seed_row.llbc`, `/translated/fun_decls/11`, is `views::seed_row`. Its normal control-flow tree contains function29 calls at statement IDs **632** and **781**, writing locals49/54 in the Parent branch; statement1752 writes local88 in Child. Function29 metadata names `alloc::string::{…}::clone`, with foreign/opaque body and `/rustc/library/alloc/src/string.rs:2425` span. These are three source call sites, not a runtime execution count. [raw LLBC][raw]

The embedded function11 source and retained `a0514/worker/src/views.rs` put the Parent clones at **76/79**, Child at89; current `E/src/views.rs` has those same lines. The supplied 78/81 labels therefore need this line-number correction. [retained Rust][rust]

`P/native-extraction/a0514/generated/Funs.lean:245–255` has one Parent `let s3 ← …clone key.id`, followed by `parents` insertion using `s3`, set creation, and `active` insertion using the same `s3`. Child retains its separate clone at286–287. This changes model call multiplicity without changing Rust source or raw LLBC. [generated function][funs]

The actual translator input was `typed_seed_row_names.llbc`, not the raw file. The normalization record lists only three trait-impl rename hints and one debug-local rename in function22; it reports instructions/call references retained. Direct guarded reads found hashes equal to `a0514/result.json`: raw `c827ceb1121fe2278c1ce801cf3ea38a33b41244c6808784227f41dd6805e7d6`, normalized `489cd9141f7340e3f506b936a76a8efc55729d9c47b0236070de10195a29d251`, generated Funs `88f5911277314978e6b891085cd880bb3b719b8786457f3e6b6fa995c257047a`. [normalization][names] [extraction record][actual]

## Exact source rule

The responsible rule in the inspected source is **`simplify_duplicate_calls`**, not a String-specific clone rewrite. `S/pure/PureMicroPassesGeneral.ml:685–715` registers an eligible let RHS and its bound pattern in `TExprMap`, then rewrites a later equal expression to that pattern; for monadic bindings it wraps the reused value in `ok`. Eligibility is a monadic binding, or an applied free variable (possible backward call), with a pattern convertible by `tpat_to_texpr`. There is no per-call allocation/effect check in this visitor. `S/pure/PureUtils.ml:84–94` keys the map with `compare_texpr`. [local rule][rule] [map][map]

`S/pure/PureMicroPasses.ml:59` schedules it with `None`; lines245–256 interpret `None` as enabled. Later `simplify_let_bindings` (line179) reduces a successful-result binding to a pure binding (`PureMicroPassesGeneral.ml:591–594`), and variable inlining (lines182–184) can remove the alias. Thus the source explains reduction of a second equal clone application to reuse of the first result. No intermediate-pass trace was inspected, so the precise cleanup sequence in actual514 is inferred from these rules. [pipeline][pipeline]

The rule's stated purpose is reducing repeated proof obligations/context size. Its comment explicitly warns that allowing stateful backward functions would invalidate it (`PureMicroPassesGeneral.ml:656–680`). This warning identifies its intended semantic boundary; it is not evidence that actual514 contains such a function. The same rule and schedule are present in the official full pinned source. [upstream rule][up-rule] [upstream pipeline][up-pipeline]

## Binary/source binding: evidence and limit

`P/native-extraction/a0514/commands/translate/result.json` records execution of **`P/analysis-toolchain/a0039/bin/aeneas`**, exit0, with Lean/split-files/impl-namespace, depth8192, and the normalized LLBC. `P/analysis-toolchain/a0040/result.json` records this binary's original/current SHA256 as `dec3bea49b6e361844e03ac768ba73835b57f8eb537a48efe462fb58846f24b0`, with executable sections unchanged. Its retained version stdout is `aeneas nightly-2026.11.15-1dc8ad3`. These are records, not new binary executions or binary rehashing. [actual invocation][translate] [analysis binding][analysis] [version][version]

In contrast, `P/nonpos-translator/a0417/result.json` binds **`P/disposable/frontend-translator-a0417/retained/aeneas`**, SHA256 `80d21f64ad7156045192d028100bcb54d1cece491be73ef8c73e82c47a5e1d06`, to a patched build with full Aeneas pin `1dc8ad31b1b062a77c50e29144a6c7bba955fa09`. It is a different binary; its build record does **not** establish that actual514 used it. [a0417 producer][producer]

`P/nonpos-source/a0273/result.json` records the full pin and source preparation. Direct comparison of the two relevant files at `S/pure/` and `P/tmp/nonpos-source/a0273/aeneas/src/pure/` found equal SHA256s: `PureMicroPassesGeneral.ml` = `04c8c1b4441765979864402043c92e4da1dedaa87745358cdaf41d7ded916080`; `PureMicroPasses.ml` = `3f09426f5a0787377ccd1c258cbe3876dd6450d7285af0cf2f56408f8b6f03cd`. [source preparation][prepared]

**Conclusion:** the exact upstream/source rule accounts for this clone factoring, and actual514's version prefix agrees with that pin. Attribution of the actual executable to those exact source bytes remains an inference until its release/build provenance is bound. Neither a short version string nor the unrelated a0417 build supplies that complete binding.

## Intended semantics and required native caveat

The generated external template declares clone as an **axiom `String → Result String`**, with no allocator/state argument (`FunsExternal_Template.lean:94–99`). It does not specify clone success or equality to its input. This is a pure mathematical result-valued function, rather than a command describing a fresh performed allocation. [external interface][external]

Semantic reasoning, conditional on that pure deterministic interpretation: if the first bind of `c(k)` returns `s`, the identical expression is `ok s` wherever evaluated again. If it fails, the continuation containing the second call is never entered. Deterministic failure therefore does not by itself invalidate factoring. This is a proposed local preservation argument, not a checked theorem and not a contract for native String cloning. Intervening model inserts do not change the immutable `key.id` argument.

For native/runtime adequacy, a future proof must bind the actual native source, Charon input/normalization, actual Aeneas executable/source, and linked external models; then give a simulation/refinement through this transformation under an explicit observation relation. It must account for **both native Parent clone calls** and intervening operations. Two separately owned native strings may map to one mathematical String value; reuse of `s3` alone does not assert native pointer sharing. The representation/ownership relation and insertion contracts must justify that abstraction across the whole branch and its exits.

If the intended observation includes allocator state, allocation counts, fresh identity, resource use, callbacks, or failures/aborts depending on the evolving native state, equality of `String → Result String` expressions alone is insufficient. Either prove the erased behavior unobservable under stated preconditions, or retain/model the state/effects and justify the optimization for that richer semantics. Explicit resource assumptions may be part of such a theorem, but these sources establish **neither** an OOM model **nor** an actual second-clone failure or semantic counterexample. No allocation/runtime behavior was inspected here.

Concrete control if native effects are retained: gate duplicate-call factoring on an established effect classification, or thread explicit state so distinct native allocations cannot be identified merely by equal value arguments. The inspected visitor currently has no such classification check. This is proposed follow-up work, not an implemented repair or evidence that the current model is wrong.

Practical implication: prove the pure factoring lemma at the model boundary and record its assumptions, but keep it separate from native correspondence. Call inventories should preserve source sites632/781/1752 as well as the two resulting generated clone expressions; generated syntax alone cannot certify native clone multiplicity. a0514's own `native_proof` and normalization `native_correspondence` remain `unestablished`. [extraction record][actual] [normalization][names]

[raw]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/typed_seed_row.llbc
[rust]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/worker/src/views.rs:76
[funs]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated/Funs.lean:245
[names]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/name-normalization.json
[actual]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/result.json
[rule]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0417/workspace/aeneas/src/pure/PureMicroPassesGeneral.ml:656
[map]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0417/workspace/aeneas/src/pure/PureUtils.ml:84
[pipeline]: /var/tmp/behavior-ir-core036-v2/w001/disposable/frontend-translator-a0417/workspace/aeneas/src/pure/PureMicroPasses.ml:59
[up-rule]: https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/src/pure/PureMicroPassesGeneral.ml#L656-L720
[up-pipeline]: https://github.com/AeneasVerif/aeneas/blob/1dc8ad31b1b062a77c50e29144a6c7bba955fa09/src/pure/PureMicroPasses.ml#L58-L59
[translate]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/commands/translate/result.json
[analysis]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0040/result.json
[version]: /var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0040/aeneas-version/stdout.txt
[producer]: /var/tmp/behavior-ir-core036-v2/w001/nonpos-translator/a0417/result.json
[prepared]: /var/tmp/behavior-ir-core036-v2/w001/nonpos-source/a0273/result.json
[external]: /var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0514/generated/FunsExternal_Template.lean:94
