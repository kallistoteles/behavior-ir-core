# Command performance observations

The command_perf test measures admission, store evaluation, commit and a max_records=1 stream while asserting candidate/committed multiplicity, unique occurrence identities, universe size, history progression and command-only unchanged StateId. Independent axes vary entities1/16/64, commands1/8/32 and history1/4/16 for state-only, command-only and mixed actions. State-only command counts are necessarily zero; those rows are repeated controls.

Observed on 2026-10-06 in this Linux workspace, pinned Nix toolchain, unoptimized debug build, debug symbols/incremental disabled, InMemoryBackend, none evidence policy. The single measured run overlapped other compilation: these are observations, not stable benchmarks or an SLA. evaluate/commit columns sum all events; stream measures one page. Values are microseconds.

| Kind | Axis | Entities | Commands/event | History events | Admit µs | Evaluate total µs | Commit total µs | Stream µs | Page bytes |
|---|---|---:|---:|---:|---:|---:|---:|---:|---:|
| state | entities | 1 | 0 | 2 | 2490 | 11150 | 63602 | 197182 | 1082 |
| state | entities | 16 | 0 | 2 | 1299 | 30665 | 101361 | 200078 | 1082 |
| state | entities | 64 | 0 | 2 | 3626 | 119231 | 266724 | 494122 | 1082 |
| state | commands | 4 | 0 | 2 | 1494 | 14135 | 121023 | 123756 | 1082 |
| state | commands | 4 | 0 | 2 | 1309 | 13959 | 69754 | 132053 | 1082 |
| state | commands | 4 | 0 | 2 | 1186 | 12662 | 64173 | 108670 | 1082 |
| state | history | 4 | 0 | 1 | 1151 | 4208 | 42708 | 67539 | 1081 |
| state | history | 4 | 0 | 4 | 1120 | 31845 | 100439 | 180735 | 1082 |
| state | history | 4 | 0 | 16 | 1153 | 151949 | 328605 | 591041 | 1083 |
| command | entities | 1 | 4 | 2 | 2412 | 20085 | 54396 | 140631 | 3261 |
| command | entities | 16 | 4 | 2 | 1683 | 32623 | 76697 | 225619 | 3261 |
| command | entities | 64 | 4 | 2 | 1972 | 81200 | 173450 | 484217 | 3261 |
| command | commands | 4 | 1 | 2 | 1416 | 15179 | 38496 | 103825 | 1626 |
| command | commands | 4 | 8 | 2 | 2792 | 40116 | 101942 | 272046 | 5441 |
| command | commands | 4 | 32 | 2 | 7996 | 119866 | 317969 | 762046 | 18543 |
| command | history | 4 | 4 | 1 | 1912 | 7017 | 25008 | 95510 | 3260 |
| command | history | 4 | 4 | 4 | 1784 | 63920 | 136905 | 242833 | 3261 |
| command | history | 4 | 4 | 16 | 1800 | 308411 | 599760 | 767374 | 3262 |
| mixed | entities | 1 | 4 | 2 | 2115 | 22029 | 89474 | 186476 | 3261 |
| mixed | entities | 16 | 4 | 2 | 1890 | 34981 | 112314 | 252436 | 3261 |
| mixed | entities | 64 | 4 | 2 | 1906 | 77037 | 186445 | 473324 | 3261 |
| mixed | commands | 4 | 1 | 2 | 1498 | 16032 | 70415 | 136879 | 1626 |
| mixed | commands | 4 | 8 | 2 | 2768 | 36592 | 129813 | 285865 | 5441 |
| mixed | commands | 4 | 32 | 2 | 7721 | 107171 | 322453 | 785736 | 18543 |
| mixed | history | 4 | 4 | 1 | 1997 | 7743 | 56968 | 119774 | 3260 |
| mixed | history | 4 | 4 | 4 | 1827 | 70279 | 179328 | 324047 | 3261 |
| mixed | history | 4 | 4 | 16 | 1961 | 343135 | 696167 | 1077113 | 3262 |

## Cost and limits

The current profile validates the complete semantic snapshot at evaluation/commit, even when the action binds few entities. Increasing retained entities therefore affects both phases. Command count increases canonical record/archive/hash work and whole-event payload bytes. In this sample one command page is1626 bytes, eight5441 and thirty-two18543; max_records=1 never splits their multiplicity or bounds their bytes.

commands_since first validates the entire pinned historical interval and authenticated archives, then validates materialized as-of state/versions against reconstructed history before returning the page. It can therefore scan much more than one requested event. Increasing retained history1→16 raises command-only stream time95510→767374µs and mixed119774→1077113µs in this run. Historical replay/hash/snapshot reconstruction and repeated history checks can cause superlinear total work; no asymptotic linear guarantee is claimed.

None policy excludes proof/signature eligibility cost; the fsync host example is outside these measurements. Production backend persistence/locking, solver, network and external dispatch are not benchmarked. The data justify documenting complete-validation/page-byte cost, not introducing an unchecked index, new semantic primitive or an unsupported optimization. Future acceleration must preserve history authority, exact snapshot validation and the same finite-bag identities. Re-run with `cargo test -p behavior-store --test command_perf -- --nocapture` inside `nix develop`.
