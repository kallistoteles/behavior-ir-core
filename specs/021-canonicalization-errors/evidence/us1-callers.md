# US1 adapted callers

- crates/behavior-cli/src/lib.rs
- crates/behavior-core/src/canonical.rs
- crates/behavior-core/tests/canonical.rs
- crates/behavior-engine/src/lib.rs
- crates/behavior-store/tests/evidence.rs
- crates/behavior-store/tests/migration_context.rs
- crates/behavior-store/tests/migration_evidence.rs
- crates/behavior-verify/src/governance.rs
- crates/behavior-verify/src/lib.rs
- crates/behavior-verify/tests/closure.rs
- crates/behavior-verify/tests/governance.rs
- crates/behavior-verify/tests/migration.rs
- crates/behavior-verify/tests/read_soundness.rs
- crates/behavior-verify/tests/reads.rs
- crates/behavior-verify/tests/resulting_state_order.rs
- crates/behavior-verify/tests/soundness_regressions.rs
- crates/behavior-verify/tests/warnings.rs

CLI producer/serializer calls complete text before output and propagate canonical errors as exit2. Existing admission/record serializers retain their contracts.
