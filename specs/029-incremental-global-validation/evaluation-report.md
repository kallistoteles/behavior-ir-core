# Core 029 evaluation report

## G0 baseline and frozen criteria

309 production-like release processes completed:103 cases ×3 sequential repetitions. All repeats produced identical semantic observation digests per case. Six instrumented cardinality-growth pilots and four private full-reference pilots agree exactly with the released-source observations. No candidate optimization has been measured.

| Starting E population | Median complete cycle (ms) | Observation bytes across run |
|---|---:|---:|
| 1 | 29.066 | 40324 |
| 16 | 68.320 | 104539 |
| 128 | 362.920 | 587379 |
| 512 | 1522.373 | 2253172 |
| 2048 | 6378.113 | 8954077 |
| 8192 | 27655.414 | 35827933 |

Each run performs8 real committed creations in one Store, followed by a final evaluation. Larger starting populations are seeded; these are growing sequences, not eight independent single-operation Stores. Separate history runs use8,32 and128 updates at fixed128 live entities; batch2/8 and rule1/4 cases vary affected dimensions. Reopen and unsupported controls retain full validation.

The count-create diagnostic reports snapshot_rows=25*N+100 and decoded_rows=152*N+583 at all six measured populations. This is a measured/source-mapped mechanism for this exact corpus, not a universal complexity theorem. Existing record evidence also grows with N; necessary output work remains a distinct floor.

Frozen acceptance uses per-case numerical absolute budgets,10% median improvement for selected nonconstant high-population creation/update/unrelated cases and constant-update controls, plus10% lower count-create growth slope between512 and8192. Absolute budget/regression margins account for observed host noise while requiring every final timing repetition to pass its absolute limits. Local/unsupported/cold controls may not regress beyond the frozen10%+3ms median envelope. These choices precede all candidate implementation/timing.

Timing runs contain no diagnostic counters. Instrumented timings are explanatory only and cannot establish a speedup; their overhead is never subtracted to pass a criterion. Process wall time includes post-clock observation checksums/reporting, recorded separately from the actual Core cycle. Setup includes module admission and Store creation. Peak memory is process HWM, including the retained observation audit; it is not an isolated allocator measurement.

G1–G4 remain incomplete. Current validation-work regression is deliberately red. No claim of corrected scalability, production endurance, formal kernel verification or release readiness is made.

An initial ad-hoc reference-log parser missed the first inline Rust harness label. The raw log retained that observation; parsing every GLOBAL_029 marker yields all four matching records. This was evidence extraction, not a Core semantic difference.
