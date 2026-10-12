# T065 canonical candidate gates

Candidate: `1e8dc8194e131ba720640e1e249c9e15842bb5a4`.
The [candidate manifest](../candidate/source-test-fixture-manifest.json) binds
1,053 source/test/schema/script/consumer/fixture and pinned-environment files.
Documentation-only corrections do not alter those bytes.

The first [actual local attempt](run.json) stopped during cargo-test compilation
with exhausted filesystem space and a consequent linker failure. Formatting and
Clippy had passed; no cargo-test cases executed. This is infrastructure failure,
not semantic RED or passing tests. Its exact outputs remain unmodified.

Only this isolated checkout’s regenerable `target/debug` cache was removed after
checking that no compiler/test processes were active. Source, evidence, sibling
checkouts, the retained original binaries and the existing consumer cache were
preserved. [Cleanup evidence](../candidate/build-cache-cleanup.json) records the
before/after space. No semantic implementation changed.

The retry invokes the same required `nix develop -c scripts/gates.sh` with:

- `CARGO_INCREMENTAL=0`
- `CARGO_PROFILE_DEV_DEBUG=0`
- `CARGO_PROFILE_TEST_DEBUG=0`
- `CARGO_BUILD_JOBS=2`

These limit disposable build output and compilation parallelism. Debug assertions,
overflow checks, required gate commands, test selection and normal property-case
counts remain unchanged. No release/private dependency override or gate bypass is
used. The [local retry](retry/run.json) completed with exit0 and
`sources_unchanged_during_run: true`. Its complete output is retained.
[Verification](verification.json) confirms all eleven gates and `gates: OK`;
199 Cargo summaries total1,000 passed,0 failed,24 existing ignored,0 filtered.
This includes957 workspace tests and43 default-path consumer tests; it is not
the additional exact-Git-revision consumer acceptance.

The separate [candidate CI verification](../candidate/ci-verification.json)
records both required jobs as SUCCESS. The PR merge and candidate have identical
entire Git trees. Its actual job log includes all eleven canonical gate markers
and `gates: OK`:199 Cargo summaries total1,000 passed,0 failed,24 existing ignored,
0 filtered. These are execution counts, not unique proofs. Ignored workloads are
unexecuted and supply no stress/performance evidence. Candidate CI cannot replace
the local retry or the final-head checks required for delivery.
