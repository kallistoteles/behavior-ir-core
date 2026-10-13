# Executed creation/profile/host closure

C1–C14 below abbreviate C019-01–C019-14.

Every C019 case is registered and executed on the InMemory reference and durable
consumer host under the applicable original Genesis v1/legacy policy and canonical
Genesis v2/trusted policy pairing. Unsupported format/policy combinations retain
their refusal rules; the matrix is not an artificial historical Cartesian product.

| Cases | Profiles / hosts | Actual evidence |
| --- | --- | --- |
| C1 complete product, C2 invalid seed, C13 incomplete product | Both supported genesis profiles; reference and durable | Exact original versions/universe/lifetimes/refs/head; negative seed no-publication counters; acknowledged incomplete mutants |
| C3 before publication, C4 lost acknowledgment, C11 read failure | Both profiles; same-target retained observers over both hosts | Primary error retention, one classification, explicit equivalent recovery, required read failures; source-level error mutants |
| C5 equivalent, C6 conflicting, C7 advanced, C8 migrated | Both profiles; Store and direct Backend paths on both hosts | Preserved full primary snapshots, updates/creates/removals/ever-used/refs/events, original schema versus current schema, equal later StateId; v1 sequence distinction |
| C9 equivalent publishers, C10 foreign publishers, C14 publication/read interleaving | Both profiles; deterministic same-target generic schedules plus real durable processes | Exactly one lineage, established foreign conflict, None-genesis publication straddle, Some-genesis then one captured head around first commits |
| C12 ordering | Both profiles; reordered/unindexed/indexed hosts | Creation/recovery product equality; nonempty supported query reads active_count1/open_total45/big_orderso1,o2; per-profile complete record equality |

Shared suite:45 cases total (31 existing +14 creation), complete conformance target
33PASS, private instruments19PASS, noignored new case. Reference reversed-key
positive and designated prior/creation negative controls remain. The durable
facade checks each of all 45 cases before its exact count assertion; all pass.
Logs/commands: `/home/kalle/validation-receipts/core019-work/us3-conformance/`
and `consumer-us3/summary.json`. Final C12 nonempty assertion confirmation is
`order-read-nonempty-green.log`; no cross-profile record equivalence is claimed.

Host-specific closure:11typed fault selectors actually activate;34observations
cover empty/referenced seeds and supported profiles at relevant boundaries;
6separate-process races and4 advanced-history workloads preserve actual lineage.
See [window coverage](host-window-coverage.md), which distinguishes scoped process
exits from unproven power-loss/device guarantees. The worker launcher itself is
not counted as a durability scenario. No unexplained missing or ignored required
window counts as pass.

The existing v2 ordinary-query-commit parsing defect is outside creation and is
retained in [follow-up finding](follow-up-findings.md). C12 does not repair it,
claim it unsupported or claim all Core semantics sound. The tests cover the
required creation/order/read domain; ordinary commit semantics remain unchanged.

These are working-source results with actual custody qualifications. Final gates
and exact Git consumer validation bind the frozen candidate externally; their
results are not inferred from dependency receipts or these scoped tests.
