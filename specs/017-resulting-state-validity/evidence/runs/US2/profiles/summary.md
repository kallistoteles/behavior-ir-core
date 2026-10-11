# US2 profile and boundary regression evidence

No production source was edited for this test-authoring/capture phase. Root reviewed assertions before execution. Runs pin production and test source digests; all results below concern actual collected tests.

| Run | Collected | Passed | Failed | Interpretation |
| --- | ---: | ---: | ---: | --- |
| `core-boundaries-run.json` | 8 | 4 | 4 | Intended missing observation/routing regressions |
| `consumer-canonical-run.json` | 10 | 7 | 3 | Existing capabilities harness; partial-parent and complete-validity expectations need current-profile integration |
| `consumer-target-run.json` | 8 | 4 | 4 | New facade evidence/version/current-proof regressions |

The Core failures cover lost typed old-parent field facts, nested derived query attribution/phase, unchanged-child arithmetic evidence, and a newly reached child field missing its real action binding. Error-node and operand assertions succeeded before their observation assertion failed. Passing controls cover plain/provider/invocation/unified-intent result parity, malformed or contradictory parents, optional entity-lookup fallback and actual provider errors, and rejection of injected archive selectors.

The new facade failures cover missing typed parent observations, missing record0.8 engine reporting, fresh authenticated proofs still stamped0.8.0, and an authentic old0.8 proof incorrectly eligible for current evaluation. Passing controls cover partial-parent refusal, command multiplicity plus replay, exact independently calculated0.9 policy binding, and injected archive selectors. The canonical consumer script was run unchanged; its capabilities failures are reported separately rather than counted as these new assertion failures.

`archive-proof-run.json` pins a clean immutable baseline932eb8188dc28393213491e27f66e3bc7e273a6b and its actual compiled CLI. That CLI computed and signed the archived Receipt proof using the public fixture authority. The2092-byte envelope digest is `e9f2ad97c9b52dd18da9e9871242571de9fb78e8c0a34563bcff15044eb73806`; its exact bytes are embedded in the consumer test so the canonical revision consumer remains self-contained. The test successfully authenticated and decoded the archive before reaching its intended current-eligibility assertion. Foundation proof files are separately identified as017 foundation evidence, not pre017 computation.

Initial Core/consumer linker failures caused by ENOSPC are preserved under `infrastructure-*` and excluded from correctness RED. Successful compiled consumer runs used `CARGO_INCREMENTAL=0`, `CARGO_PROFILE_DEV_DEBUG=0` and `CARGO_PROFILE_TEST_DEBUG=0` solely for resource use. Default debug assertions and overflow checks remain enabled. The targeted supplement shared the canonical consumer build target. No dependency, script, source or semantic check was bypassed.
