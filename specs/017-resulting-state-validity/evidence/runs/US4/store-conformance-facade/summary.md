# Public facade persistence conformance control

The supplemental pinned consumer command in `run.json` compiled and executed
`a_store_passes_the_persistence_conformance_suite`: **one passed, none failed or
ignored, nine filtered**. It uses only `behavior-engine` and the canonical
consumer target directory, with the same resource settings as the Store checks.
It is not a substitute for the complete `scripts/check-consumer.sh` gate.

The whole-workspace source snapshot reports changes during the command because
another assigned agent updated five Verifier integration test harnesses:
`closure.rs`, `fixed_scale.rs`, `invocation_bindings.rs`, `migration.rs` and
`reads.rs`. All production sources and the exercised consumer/Store conformance
sources retain their recorded digests. This scoped passing control is not a claim
of final release-revision validation. The full Store conformance/evidence run
in `../store-evidence-conformance-retry` reports all sources unchanged during
execution.
