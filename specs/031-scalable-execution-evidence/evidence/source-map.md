# Core 031 source map

Source review, not measured root-cause results.

| Seam | Reuse / gap |
|---|---|
| `crates/behavior-store/examples/global_validation_bench.rs` and `tests/support/global_workload.rs` | Existing public eight-transition loop and final drain. Old digest does not exercise every 031 observation family. |
| `src/store/incremental/workload_tests.rs` | Existing private forced-full reference and reconstructible parent/child controls; retain private access. |
| `specs/029-incremental-global-validation/benchmarks/run.py` | Retained raw subprocess provenance; old corpus/profile remain read-only. |
| `crates/behavior-core/src/eval/work.rs` | Named thread-local row/predicate counters; not comprehensive allocation/parse/hash measurement. |
| `crates/behavior-store/src/documents.rs::hash_of` | JSON size at named hash sites; not unique output bytes or all hash-domain input. |
| `crates/behavior-store/src/commands.rs::commands_since` | Exact endpoints, replay, reconstruction, snapshot checks and historical scans precede page extraction. Measure independently. |
| `consumer/tests/incremental_validation.rs` | Public replay/reopen and separate-process persisted-before-lost-ack fixture. No general fsync/network performance claim. |

New instrumentation and reference hooks are test/diagnostic only. No public forced-full API, canonical-output change or persistent acceleration structure is introduced.

Public facade boundary confirmed during compilation: `behavior_engine::store::replay` exports data replay and behavior replay with migrations, not dedicated reference-index replay. The no-Ref durable command fixture records this applicability limit explicitly. The internal Store measurement/reference harness exercises dedicated reference replay, including its Parent/child Ref fixture; the public surface remains unchanged.

Recovery semantic correction: Store idempotent recovery normalizes the incoming retry commit_time to the archived event time, while validating the complete original event/context. A new retry time is accepted without rewriting history; a different nonempty authorization context is refused. The original mistaken test failure is retained in attempts/recovery-retry-time-assumption.txt. No Core fix is made.
