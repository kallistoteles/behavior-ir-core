# US2 producer call adapters

- crates/behavior-store/tests/evidence.rs (2 calls)
- crates/behavior-verify/tests/invocation_bindings.rs (1 calls)
- crates/behavior-verify/tests/queries.rs (1 calls)
- crates/behavior-verify/tests/closure.rs (1 calls)
- crates/behavior-verify/tests/governance.rs (1 calls)
- crates/behavior-verify/tests/reads.rs (1 calls)
- crates/behavior-verify/tests/common.rs (1 calls)
- crates/behavior-verify/tests/perf.rs (4 calls)
- crates/behavior-verify/tests/soundness_regressions.rs (1 calls)
- crates/behavior-verify/tests/cache.rs (6 calls)
- crates/behavior-verify/tests/resulting_state_order.rs (7 calls)
- crates/behavior-verify/tests/read_soundness.rs (3 calls)
- crates/behavior-verify/tests/trusted_verification.rs (2 calls)
- consumer/tests/command_replay.rs (1 calls)
- consumer/tests/canonicalization.rs (1 calls)
- consumer/tests/capabilities.rs (1 calls)

Production CLI maps the producer error before serialization/output, under the existing US1 process regression. Tests unwrap only expected valid generation; negative Result patterns remain checked.
