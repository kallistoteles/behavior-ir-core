# Reproducing the single-create profile

The retained measurements are scoped wall-clock profiles, not `perf` samples or allocation traces. Use [method.json](method.json) and [profile-summary.json](profile-summary.json) for conditions and limits. Installation and builds must finish before collection; do not run compilations concurrently with measurements. These commands use CPU 7 for the probe and CPU 0 for the collector, so select a compatible machine or explicitly document an amended profile.

From the Core repository, create a separate detached worktree at the measured baseline:

```sh
git worktree add --detach /data/core028/core031-reprofile-source 6de1c8e
```

Copy `baseline-driver.rs` from this directory to that worktree's `crates/behavior-store/examples/single_create_profile.rs`. In that worktree:

```sh
TMPDIR=/data/core028/core031-tmp CARGO_TARGET_DIR=/data/core028/core031-target CARGO_BUILD_JOBS=3 CARGO_INCREMENTAL=0 nix develop -c cargo build --release -p behavior-store --example single_create_profile
cp /data/core028/core031-target/release/examples/single_create_profile /data/core028/core031-reprofile-baseline
```

From this directory run:

```sh
python3 collect.py /data/core028/core031-reprofile-baseline /data/core028/core031-reprofile-baseline-results uninstrumented
```

Copy `driver.rs` over the example in the scratch worktree, then instrument that scratch source tree:

```sh
python3 instrument.py /data/core028/core031-reprofile-source
```

In the scratch worktree:

```sh
TMPDIR=/data/core028/core031-tmp CARGO_TARGET_DIR=/data/core028/core031-target CARGO_BUILD_JOBS=3 CARGO_INCREMENTAL=0 nix develop -c cargo build --release -p behavior-store --features validation-work --example single_create_profile
cp /data/core028/core031-target/release/examples/single_create_profile /data/core028/core031-reprofile-instrumented
```

From this directory:

```sh
python3 collect.py /data/core028/core031-reprofile-instrumented /data/core028/core031-reprofile-instrumented-results instrumented
```

All output directories must be new. Compare each original instrumented record byte-for-byte with the corresponding uninstrumented record. The other variants deliberately change the module: check that `no-global` has no `invariant_global` trace entry, `no-constraint` has no `constraint_post`, and `neither` has only the create trace entry. These are causal controls, not safe optimizations of the original module.

`record_breakdown.py` independently reconstructs the frozen first decisions from the original checked gzip corpus, asserts the large-record symptom, and writes the size report. It must be run with the retained repository layout. It also reconstructs the N8192 first decision under `/data/core028/core031-single-create-profile/`; use a fresh directory or compare against the existing bytes.

The exact executed instrumentation is retained in `instrumentation.patch`. `instrument.py` has the same instrumentation plus an optional scratch-root argument for reproduction. The first partial instrumentation attempt stopped because `Facts::to_json` has two implementations; its build was cancelled without collecting measurements. The corrected script instruments both. The cancelled log is retained.

The source patch and source inventory identify the instrumented build. `baseline-driver.rs` retains the original baseline probe, whose unused `no-constraint` branch was corrected in `driver.rs` before diagnostic variant runs. Only the `original` variant was ever measured using the baseline binary. No production source or published record has been altered.
