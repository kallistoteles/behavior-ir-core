# Reuse premise mutation controls

`benchmarks/mutations.py` temporarily changed one production expression at a time,
required one actual test to execute and fail behaviorally, retained raw output, and
restored the exact original file in a finally block. A compile failure, zero matched
tests or a timeout cannot pass a mutation control. All six controls detected the defect;
see `mutations/results.json` for commands, source digest and return codes.

| Broken premise | Actual mutation | Detecting control |
|---|---|---|
| Cardinality maintenance | Do not add actual newly created members | Independently expected 1000/1001 result |
| Complete effect inventory | Omit actual created rows from promoted state | Complete child membership after apply |
| Exact parent | Accept another allocation epoch | Equal-content independent parent and duplicate-apply refusal |
| Complete locality | Treat arbitrary Exists as local | Suppressed transitive derived dependency classification |
| Exact observations | Replace successful row evidence with skipped evidence | Complete ordinary/prepared record equality |
| Exact module | Ignore full admitted module content | Same BehaviorHash/different source-content context |

The restored file's digest matches the recorded source digest. `us2-core.txt` and
`us2-store.txt` record focused successful re-execution after restoration. These are
implementation correspondence controls, not universal proofs or replacements for the
conditional finite-state argument. Published records and fixtures were not changed.
