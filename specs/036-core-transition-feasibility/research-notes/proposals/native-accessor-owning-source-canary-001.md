# Owning-source canary for the selected native JSON accessor

Status: unselected proposal; source research only. No command below was run. No build, extraction, process inspection, acquisition, network access, status promotion, or selected E/F/P edit was performed for this note. This is a narrow negative control needed by full036, not full036 completion or native correspondence.

## Decision

Use one new exclusively owned copy of the **whole** `serde_json-1.0.151` crate, plus an isolated copy of the retained actual486 worker. Add a `[patch.crates-io]` entry only to that copied worker manifest. First extract the unchanged owned crate and pass the current fixed accessor proof packet. Then change the owning Rust `Value::as_str` match so `Null` returns `Some("")`, re-extract the **same** `crate::reference::state_fact_row` closure, and require the fixed `value_as_str_null` root to be rejected. Retain the String arm unchanged so the existing `String::deref` external binding remains exercised.

The positive relocation control is essential: a Cargo/path/name/foreign-binding failure must not be mistaken for rejection of wrong accessor semantics. Neither generated Lean edits nor changing report labels can supply this control.

## Primary-source facts and identities

* The actual owner is [serde_json/src/value/mod.rs:492](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs:492). Its entire method is `match self { Value::String(s) => Some(s), _ => None }` (lines 492–497). [The packaged manifest](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/Cargo.toml:12) says version 1.0.151, edition 2021, and `build.rs`; its default feature is `std`, and `arbitrary_precision` is a separate feature. [The packaged VCS record](/var/tmp/behavior-ir-core036-v2/w001/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/.cargo_vcs_info.json:1) records commit `de8500740cdcabffb9734f503e4889def823cf10`.
* [Actual486's retained Cargo.lock](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486/worker/Cargo.lock:553) records registry source `registry+https://github.com/rust-lang/crates.io-index`, version 1.0.151, checksum `c841b55ecdae098c80dcae9cf767f6f8a0c2cdb3416bbef72181df4d0fe73f14`. [Its real Cargo metadata](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486/commands/metadata/stdout.txt) identifies exactly that package, with manifest at the owner above and resolved features `default,std,unbounded_depth`. A `.cargo-checksum.json` read at this owner returned FileNotFoundError during research; do not assume that file exists or manufacture one. Copy/hash the actual guarded source inventory instead.
* [Actual486 result](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486/result.json:210) records one translated accessor, function ID 22, body digest `677c6bd6f102575959c38a810ce3b368dc210029964f7df18b369ce097b1f592`; full Number and N types are required. Its raw LLBC is 682117 bytes, hash `51191a8aba3db21104e7cee787120c568350af81e404bc6685a2eb55aee614b6`; normalized LLBC hash is `2502418e47a066befae02e910327ecce9d0b64546fbb38b129c7c4589c5f3632`; generated Funs hash is `d276fe1bd78c83aed2c289387ad837310da460a0e665e1a693368c418c2e67ee`. Do not make function ID 22 a selector across a new compilation: select uniquely by the actual name/impl/type.
* [Actual486 raw LLBC](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486/canonical_row.llbc) associates that owner with `translated.files[16]`, name `/cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151/src/value/mod.rs`; file contents are absent. This is a remapped name, **not** a host path to open. The new binder must map compiler source provenance through an explicit observed remap table, never guess a host owner from a Lean source comment.
* [Generated Funs](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486/generated/Funs.lean:72) contains the actual `Value.impl.as_str` match and its `String::deref` call; [the selected call root](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486/generated/Funs.lean:89) calls that declaration. The [owning worker source](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486/worker/src/reference.rs:38) must remain byte-for-byte fixed, including `.as_str()` and the `SeedIdentity` error.
* [Actual486 compiler identity](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486/commands/compiler/stdout.txt) is rustc `1.100.0-nightly`, commit `923c95cdf5ba65cea505aa2ea829f578e1506ed8`, host `x86_64-unknown-linux-gnu`, LLVM 23.1.1. [Its cfg output](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486/commands/cfg/stdout.txt) includes `feature="worker"`, debug/overflow checks, panic unwind, 64-bit little-endian GNU Linux, x86-64 `fxsr,sse,sse2,x87`. Retain the whole output, not just this summary.
* [Actual486 result](/var/tmp/behavior-ir-core036-v2/w001/native-extraction/a0486/result.json:203) distinguishes compiled native subject r9504 (`f338fe0f078fc6c6fddfcd6fef3d4769cc76c313bebcd7879eb89cd6d44b91b8`) from extraction executor subject r9510 (`4d3bd8baf8190e5ae7b6438b54e34c792c4b8da51af334f1bcac53d49f16516b`). A path-patched canary is a **new canary subject**, never an unchanged r9504 native build.

## Why a separate executor is the minimal honest route

[extract.py:182](/data/repos/behavior-ir-core-033/experiments/transition-study036/extract.py:182) hardcodes the selected input file, registered output root, prepared tool validation, and closed native context. [Its manifest/lock checks](/data/repos/behavior-ir-core-033/experiments/transition-study036/extract.py:388) bind the copied worker to the existing native build. A path patch necessarily changes that manifest and lock; bypassing those checks would misrepresent the compiled subject. [native_compiled_context_v2.py:39](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_compiled_context_v2.py:39) and [native_unit_completion_481_v2.py:22](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_unit_completion_481_v2.py:22) explicitly audit the historical materialization. Preserve these validators unchanged.

After the live attempt closes, add one separately selected `native_accessor_source_canary_v2.py` executor and one registered canary input/declaration through the ordinary future-attempt machinery. Reuse the pure inventory/name-normalization/proof helpers; replay actual486's retained extraction/translation argv. The new executor owns its own manifest/lock/source binding and never presents itself as a successful historical native completion. No broad extraction refactor is required.

[native_json_borrow_probe_v2.py:175](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_json_borrow_probe_v2.py:175) currently pins a0486 and its exact result path. Calling this unchanged function on a new extraction would reject its selection **before** checking the semantics; that is not a successful source canary. Reuse its guarded proof-project construction and `roots()` in the new executor with an explicit new extraction receipt, rather than loosening the old selection pin. Preserve the exact frozen wrapper/source/primitives/full Number/N/Map/F64 carriers and the current 21 roots. [The proof engine](/data/repos/behavior-ir-core-033/experiments/transition-study036/check_proofs.py:264) makes extraction/cfg provenance the caller's responsibility and can perform fresh selected-root kernel checking.

## Exclusive ownership and exact mutation

Use a newly allocated attempt ID `A` (not guessed/reused) and only these new roots:

```
case = P/disposable/native-accessor-canary-A
case/owner/serde_json-1.0.151     # whole owned crate
case/worker                     # copied materialized worker inputs
case/target                     # new compilation target, never old targets
case/positive                   # independent extraction/proof directory
case/mutant                     # independent extraction/proof directory
```

Register bounded retained evidence separately in the new attempt. No current E/F/P selection changes while a live attempt is active. Every filesystem operation, including stat/hash/resolve/open/directory descent, must first reject a path containing either protected basename `parameters.bin` or `compression_prover_key.bin`. During a walk, inspect an entry's lexical name and reject it **before** stat/type checks. Bound node count, depth, individual bytes, and aggregate bytes. Reject source symlinks and unexpected file types; do not follow them into another root. Use exclusive creation and `shutil.copyfile`/ordinary byte copies, never `cp -al`, `os.link`, or hardlinked source/target clones. Verify source/destination device+inode pairs differ after guarded stat; do not modify permissions on a shared source inode. Copy the complete serde_json crate, including build script and packaged manifests; do not replace it with a toy crate.

The copied worker retains all materialized Rust/expected/test files and manifest entries; all Rust files, request fixtures, and `src/source_identity.rs` remain exact original bytes. Add only this new root manifest table (absolute path is recorded in the canary subject):

```toml
[patch.crates-io]
serde_json = { path = "/var/tmp/behavior-ir-core036-v2/w001/disposable/native-accessor-canary-A/owner/serde_json-1.0.151" }
```

Keep the existing behavior-engine Git patch and every dependency version/feature unchanged. Generate the new lock offline once, audit its semantic difference (only serde_json registry-to-owned-path identity/checksum change, no version or dependency changes), freeze it, then require `--locked` for all extraction runs. Both positive and mutant use the same physical owner path, same worker path, same manifest/lock bytes, same toolchain, same cfg, same target triple, same request bytes and call root.

After positive evidence closes, mutate **only** the owned `src/value/mod.rs`, with this exact guarded edit (prospective Python, not executed):

```python
old = b"""    pub fn as_str(&self) -> Option<&str> {
        match self {
            Value::String(s) => Some(s),
            _ => None,
        }
    }"""
new = old.replace(b'            _ => None,',
                  b'            Value::Null => Some(""), _ => None,')
assert raw.count(old) == 1
assert new != old
mutated = raw.replace(old, new, 1)
# Write via exclusive temporary file in the owned directory, fsync, atomic replace.
# Guard both paths before IO. Verify the whole crate inventory changes only here.
```

This same-line insertion preserves line count and the String arm. It deliberately changes real source semantics: `Null.as_str()` now returns `Some("")`; the remaining nonstring variants return None. Translation support for this extra literal/arm is a prediction, not established by this research. Retain a unified diff, before/after full-file digests and lengths, complete owner inventories, canonical method identity, manifest/lock digests, original package checksum/VCS identity, tools, environment, remaps, raw/normalized LLBC, generated Lean, and subprocess receipts.

## Prospective commands and executor checks

Use Python argv lists and `subprocess.run(..., cwd=case/worker, env=env, timeout=..., check=False)` with bounded stdout/stderr and exclusive receipts; no shell interpolation. Take tool paths and base environment from [analysis-toolchain/a0040/result.json](/var/tmp/behavior-ir-core036-v2/w001/analysis-toolchain/a0040/result.json). Reproduce [extract.py:441](/data/repos/behavior-ir-core-033/experiments/transition-study036/extract.py:441) exactly: set target linker to `CC`, append ` -C linker-features=-lld` to RUSTFLAGS, copy the retained worker's `.cargo/config.toml` bytes, remove RUSTC_WRAPPER and RUSTC_WORKSPACE_WRAPPER. Keep `CARGO_BUILD_JOBS=1`, `CARGO_INCREMENTAL=0`, dev debug 0, `target-cpu=x86-64`, original offline Cargo home, and all prepared loader paths. Only set CARGO_TARGET_DIR to the new target and CHARON_CACHE_DIR to the new phase output. Preserve original registry source, SDK and Core source through the established immutable source inventories and exact before/after hash checks, guarded exclusive ordinary copies, fixed trusted compiler/build-script/source inputs, and no writes to historical targets; Cargo lock/cache bookkeeping does not authorize source writes. OS filesystem write confinement is an optional additional defense if already available, not a requirement established by the cited owner contracts and not a reason to require new sandbox infrastructure before launch.

The exact setup commands are:

```python
[cargo, 'metadata', '--offline', '--format-version', '1', '--features', 'worker']
# Audit the new lock and graph, then freeze both.
[cargo, 'metadata', '--locked', '--offline', '--format-version', '1', '--features', 'worker']
[rustc, '-vV']
[rustc, '--print', 'cfg', '--cfg', 'feature="worker"', '-C', 'target-cpu=x86-64']
```

Assert metadata has one serde_json 1.0.151 package with `source is None`, manifest exactly `case/owner/.../Cargo.toml`, target source exactly `owner/src/lib.rs`, resolve features exactly `['default','std','unbounded_depth']`, and every relevant dependency edge uses its path package ID. Compare the rest of the graph to actual486 after the one explicit package-ID substitution; reject alternate versions, stale registry selection, extra serde_json units or feature drift. The existing [check_json_unit](/data/repos/behavior-ir-core-033/experiments/transition-study036/native_compile_binding_v2.py:56) is a useful feature check but does not check owner source identity.

For each phase `phase in ['positive', 'mutant']`, use the following exact replay recipe rather than reconstructing the opaque/includes list:

```python
baseline = read_verified_actual486_result()
argv = list(next(c['argv'] for c in baseline['commands'] if c['label'] == 'extract'))
assert argv[argv.index('--start-from') + 1] == 'crate::reference::state_fact_row'
assert argv[argv.index('--manifest-path') + 1] == str(P/'native-extraction/a0486/worker/Cargo.toml')
assert argv[argv.index('--dest-file') + 1] == str(P/'native-extraction/a0486/canonical_row.llbc')
argv[argv.index('--manifest-path') + 1] = str(case/'worker/Cargo.toml')
argv[argv.index('--dest-file') + 1] = str(case/phase/'canonical_row.llbc')
# All other words identical, including --preset aeneas, --sysroot default,
# --locked --offline --lib --features worker, all opaque boundaries/includes.
run(argv, timeout=1800)
# Require exit 0, has_errors false, actual unique translated Value::as_str,
# full Number/N definitions, retained call root -> accessor reference.
# Apply normalize_namespace_debug_names and write_debug_normalized_llbc,
# retaining raw IR and exact name-only change verification as extract.py does.
argv = list(next(c['argv'] for c in baseline['commands'] if c['label'] == 'translate'))
argv[argv.index('-dest') + 1] = str(case/phase/'generated')
assert argv[-1] == str(P/'native-extraction/a0486/canonical_row_names.llbc')
argv[-1] = str(case/phase/'canonical_row_names.llbc')
run(argv, timeout=1800)
```

Tool digests must match their prepared inventory; compare full compiler/cfg outputs with actual486. Preserve LLBC target/options/runtime-check identities, allowing only explicitly recorded owner/output/target/cache path changes and the actual source change. Generated Lean files are consumed as emitted and hashed before and after proof; do not edit their function bodies. The external primitive completion remains the same checked source-bound adapter as the current probe. Never drop an unresolved declaration to force translation.

Use a fresh **empty** case target for each phase (delete/recreate only this canary-owned target after retaining positive receipts; no historical cache writes). This avoids stale Cargo timestamp/fingerprint explanations and needs only one cold target at peak, at the cost of two sequential cold compilations. No builds run concurrently with any other heavy tree. The Charon per-phase cache and Lean project/compiled output must also be fresh. If compilation is too expensive, report an operational resource stop; do not substitute reuse of old `analysis-a0114/target`.

## Checks and classifications

| Control | Required observed evidence | Classification |
| --- | --- | --- |
| Owned unmodified relocation | New owner inventory equals original complete crate bytes; actual metadata resolves owner; extraction/translation succeed; unchanged wrapper and **all current 21 expected-type roots**, foundation-only audit and fresh selected-root kernel pass | Positive control succeeds |
| Real owning-source mutant | Exact one-file source diff; unchanged manifest/lock/request/root/cfg; actual metadata/LLBC bind owned source; extraction/translation succeed; actual accessor body changes; fixed Null theorem cannot compile | Semantic source negative, only with independent witness below |
| Independent semantic witness | A fresh generated-Funs-only Lean module proves accessor `.Null ≠ ok none`, exports that exact expected-type root, passes foundation-only audit and fresh selected-root kernel | Confirms rejection is the changed semantics |
| Wrong-owner/replay binding | Bind the actual mutant extraction to the original registry owner or pair its source inventory with positive raw LLBC/generated output; strict binder rejects actual owner/inventory/phase-artifact mismatch | Provenance negative, recorded separately |
| Compiler error, unsupported LLBC/literal, missing primitive, selection pin, changed Number/N shape, timeout, quota stop, missing tools | Preserve exact stage/diagnostics; no witness and no validated semantic rejection | Operational failure/inconclusive; never negative-control success |

The fixed root is [NativeJsonBorrowWrapper.value_as_str_null](/data/repos/behavior-ir-core-033/experiments/transition-study036/proofs/Correspondence036/Dependencies/NativeJsonBorrowWrapper.lean:55):

```lean
transition_study036.serde_json.value.Value.impl.as_str
  transition_study036.serde_json.value.Value.Null = Aeneas.Std.Result.ok none
```

The prospective witness imports the same emitted generated modules and unchanged external bindings, **not** the failing wrapper:

```lean
theorem mutant_null_is_some :
    transition_study036.serde_json.value.Value.impl.as_str
      transition_study036.serde_json.value.Value.Null ≠ Aeneas.Std.Result.ok none := by
  simp [transition_study036.serde_json.value.Value.impl.as_str]
```

This proof is a prospective tactic, not a measured success. Check its exact inequality type and axiom closure through `check_declared_proof_v2(..., kernel_mode='selected-root-export-v1')`; use the same byte-bound adapter, never an always-succeeds primitive. The ordinary fixed wrapper may first fail at `value_as_str_bytes`' Null case before its named null root; retain that receipt, but additionally isolate the **unchanged null theorem declaration** in its own fixed assertion module to obtain a specific failure. A mere nonzero Lean return code is insufficient: require the successful inequality witness and generated dependency modules, and the frozen positive control. Missing expected artifacts is not acceptance evidence.

Source-body hashes include compiler metadata/spans/IDs, so an unequal body digest alone does not prove a semantic mutation; the witness and fixed root check supply that evidence. Conversely the [current body requirement](/data/repos/behavior-ir-core-033/experiments/transition-study036/extract.py:71) checks presence/uniqueness/translated form, not an expected hash. Add explicit canary expected **phase source and emitted artifact** digests in its binder. Strictly reject positive/mutant artifact substitution, even if a caller changes a report label. Do not promote this narrow binding to a full native source correspondence proof.

## Resource admission and bounded stop

User-provided observations (not remeasured here): private cache 24,740,077,770 / 25,769,803,776 bytes leaves **1,029,726,006 bytes**; temporary 4,272,380,762 / 4,294,967,296 leaves **22,586,534 bytes**; future evidence 8,223,512,328 / 8,321,499,136 leaves **97,986,808 bytes**. Preserve the existing combined 36 GiB ceiling. Do not use the nearly full temporary root for staging.

Proposed canary limits: 64 MiB for whole-crate+worker copies/inventories; one fresh target capped at 768 MiB; 32 MiB retained source/LLBC/generated/proof/log receipts (raw actual486 IR was below 1 MiB); 16 MiB transient phase/proof outputs, with aggregate private growth capped at 896 MiB and evidence growth capped at 32 MiB. These are **admission/stop limits, not forecasts of measured fit**. A full cold dependency target may exceed 768 MiB; no source-only reading establishes otherwise. Before launch, the normal controller must reobserve all registered resources using protected-basename guards, reserve all growth under the individual and combined caps, and supervise disk/RAM/PID/time continuously. Run only after the current heavy tree ends. Keep the existing memory/PID policy; no request here increases it. Two sequential extractions/translation/proof passes may each take minutes; actual elapsed/RSS is unknown.

If full cold compilation cannot fit, leave this proposal unexecuted or stop as resource-inconclusive. Seek a separately declared resource/reclamation decision from the parent workflow; do not silently clean old targets, reuse writable old caches, shrink the payload, acquire tools, modify SDK/registry/Core, or borrow unaccounted storage. Cleanup authority for this experiment extends only to its own newly created target/cache after receipts are retained. The successful end state remains `native_proof='unestablished'`, `feature_complete=false`, `runtime_totality_established=false`, `product_adoption='unactivated'`; full036 still requires its independently declared remaining native closure and controls.


## Exact proof-constructor seam

Keep `run_probe()` and its historical a0486 pin unchanged. The new executor's internal proof constructor should accept an explicit immutable expectation object with `canary_attempt_id`, `phase` (`positive` or `mutant`), `canary_source_subject_ref`, `extraction_directory`, `extraction_result_ref`, `owner_inventory_ref`, `manifest_ref`, `lock_ref`, and `frozen_roots_ref`. It must derive the expected directory from its own registered attempt plus phase, require all extraction/generated paths beneath that directory, verify exact phase-result source/artifact digests, and select the accessor by canonical serde_json Value inherent-method identity with uniqueness (never function ID 22). Root declarations and expected types are the frozen 21-root list, unchanged between phases. A caller-supplied phase label cannot override any digest/path/owner check.

Historical actual486/native checkpoints are verified closed before replay. New internal phase receipts are exclusive outputs of the current canary attempt; do not fabricate closed historical checkpoints for them or pretend a phase is a new native completion. Bind these internal receipts into the normal canary attempt closure when it finishes. Preserve the distinction between canary executor source, original compiled-source context, and newly owned mutated dependency source in every receipt.

The retained `rustc --print cfg` command describes root cfg; it alone does not establish the serde_json build-script cfg. Also retain the actual serde_json compiler invocation and build-script output/cfg through a Charon-compatible trace path, check all dependency cfg/feature/profile/target inputs identical between positive and mutant, and bind the real crate entry source to `owner/src/lib.rs`. If the existing tracing hook conflicts with Charon's wrapper, stop for that implementation gap rather than silently asserting exact dependency cfg provenance. No tracing change may alter toolchain bytes, functions, feature selection or source identity.
