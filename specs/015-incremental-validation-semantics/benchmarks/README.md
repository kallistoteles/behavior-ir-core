# Private 015 workload evidence

These experiments compare the revised optimizer with a genuinely full parent and
full candidate validator. The reference is intentionally a correctness/performance
comparator, not a claim about the exact latency of published 0.12.0 or feature 014.
No Core/Ecosystem/TCUP release metadata, official scripts or SC-007 expected failure
is changed. The TCUP calls use real handlers and JSONL, without live MCP transport.

## Controlled Rust series

From the owning Core root:

```bash
nix develop -c env CARGO_INCREMENTAL=0 CARGO_BUILD_JOBS=2 cargo test --release -p behavior-store --lib controlled_10000_pairs -- --ignored --nocapture
```

The private cfg(test) control forces complete canonical parent reconstruction at
each existing validation site and independently enumerates/applies all changes to
validate the whole child. It asserts complete decision, bundle, state/record hash
and read-evidence equality between strategies. No reference strategy is exported
in production or through behavior-engine. The saved 10,000-row result is
[controlled-015-results.json](controlled-015-results.json).

## Two isolated native TCUP builds

Use separate experiment checkouts, runtime environments and Cargo target directories.
The actual experiment roots are `/tmp/behavior-015-native-{optimized,reference}`.
Each Core copy starts from the recorded base, with the current uncommitted Core
`crates/` sources overlaid. Each ecosystem copy starts from its recorded HEAD.
Only the ecosystem experiment has an untracked `.cargo/config.toml` patch pointing
behavior-engine at its corresponding private Core copy. Never put this override
in the canonical ecosystem checkout or run official compatibility gates with it.

Apply [native-optimized.patch](native-optimized.patch) to one Core copy and
[native-reference.patch](native-reference.patch) to the other. Both only instrument
validation work; the reference patch additionally bypasses parent reuse and loads
all canonical parent rows, applies the full eligible atomic changeset and rebuilds
child reference facts before ordinary full validation. The patches are private
experimental instrumentation, not production engine capabilities.

Create a Python 3.13 environment with TCUP's pinned runtime dependencies for each
copy. Build from each private ecosystem root, using the pinned ecosystem Nix shell:

```bash
nix develop /tmp/behavior-015-python-experiment -c env VIRTUAL_ENV=/tmp/behavior-015-native-optimized/runtime CARGO_TARGET_DIR=/tmp/behavior-015-native-optimized/target CARGO_BUILD_JOBS=2 maturin develop --release
nix develop /tmp/behavior-015-python-experiment -c env VIRTUAL_ENV=/tmp/behavior-015-native-reference/runtime CARGO_TARGET_DIR=/tmp/behavior-015-native-reference/target CARGO_BUILD_JOBS=2 maturin develop --release
```

For each build, record a JSON manifest with `candidate_reference_full` (true only
for reference), exact `core_source_sha256` for the copied Rust sources,
`canonical_source_sha256` before the private patch, `patch_sha256`, untracked
Cargo-override SHA, `build_command`, base/consumer revisions and the loaded native
`extension_sha256`. Check that the imported `_engine` lives in the corresponding
experiment checkout; source or version labels alone cannot prove which binary ran.
Manifests are included verbatim in the paired result artifact.

Build both extensions before timing. Run the strategies sequentially with no other
build/test workload:

```bash
/tmp/behavior-015-native-optimized/runtime/bin/python tcup_workload.py --strategy optimized --tcup-root /home/kalle/repos/tcup --build-manifest /tmp/behavior-015-native-optimized/build-manifest.json --samples 30 --output /tmp/behavior-015-tcup-optimized.json
/tmp/behavior-015-native-reference/runtime/bin/python tcup_workload.py --strategy reference --tcup-root /home/kalle/repos/tcup --build-manifest /tmp/behavior-015-native-reference/build-manifest.json --samples 30 --output /tmp/behavior-015-tcup-reference.json
python3 tcup_workload.py --optimized-json /tmp/behavior-015-tcup-optimized.json --reference-json /tmp/behavior-015-tcup-reference.json --output tcup-015-results.json
```

These commands run from this directory. Canonical seed/model hashes and complete
handler outcomes, final head and all committed records must match. The harness
rejects parent-only reference instrumentation, absent provenance, missing paired
series and false zero-validation-work claims. Collect its tests with:

```bash
python3 -m unittest discover -s . -p test_tcup_workload.py
```

## Interpretation

Each final series has 30 samples. Report write, immediate read and total pair
separately; p50 is the median and p95 uses nearest rank. Cold initialization and
initial validity establishment are setup, outside measured samples. Validation
rows/universe traversal and total backend reads are distinct counters: legitimate
query, history, record, transport and integrity work is not eliminated to improve
the validation count. Native instrumentation itself adds small file/logging costs;
these are private controlled measurements, not a universal latency guarantee.

[controlled-results.json](controlled-results.json) and
[tcup-results.json](tcup-results.json) are historical prototype, parent-reconstruction-only
samples. Their reopen-only comparator is also archived in
[tcup_workload_parent_only.py](tcup_workload_parent_only.py). They do not establish
full candidate equivalence or revised implementation acceptance.
