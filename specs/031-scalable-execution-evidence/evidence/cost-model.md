# Complete-path cost model

Evidence class: retained measurements plus source-based attribution. No runtime optimization was implemented. All durations below are production-like release observations without `validation-work`; diagnostic counts are a separate group. Each primary point has three retained repetitions, summarized by median/min/max. `cycle_ms` is measured contiguously across eight evaluate/commit operations and the final next evaluation. Phase medians are not added to claim a cycle measurement.

Baseline: Core 0.16.0, source and binaries in `baseline/campaign-004/manifest.json`; source content tree, locks, actual tool observations and environment are retained there: 1,575 files, including 1,172 fixture files. Frozen reference bytes were produced by the private forced-full route, then matched exactly by all 96 production and 32 diagnostic runs. The original 120-second preparation timeout and subsequent explicit 300-second protocol are in `baseline/lineage.json`. The child limit is 8 GiB RLIMIT_AS, not a cgroup RSS ceiling.

## Live-state growth

| Case | Median ms | Min–max ms | Full audit bytes |
|---|---:|---:|---:|
| population-128 | 269.217 | 260.305–272.408 | 1,918,998 |
| population-512 | 1192.645 | 1034.107–1197.102 | 7,321,494 |
| population-2048 | 5081.503 | 4492.972–5241.664 | 29,076,130 |
| population-8192 | 20984.409 | 19843.354–21569.647 | 116,363,938 |

Eight creations from N=8192 have a median contiguous cycle of 20,984.409 ms. Evaluation's separate median is 4,413.240 ms, commit 15,942.907 ms and final drain 602.300 ms (rounded; see raw summary for exact values). The complete multi-path probe has median wall time 91,324.066 ms: it additionally performs reads, page authentication, three replay modes, reopen/first evaluation and audit retention/serialization. That is not the latency of one transaction.

Ordinary diagnostic predicate counts are 53 at both N=128 and N=8192. Named child-row visits grow from 2,240 to 139,328; the prepared canonical template path still walks parent rows and copies required trace/field observations. At N=8192, named hash input volume is 180,150,042 JSON bytes over 55 Store document hash calls and decision parsing is 32,695,612 bytes over eight calls. Backend enumerations, provider rows and snapshot-row decoding in this warm cycle are zero at their named sites. This demonstrates that the supported semantic-validation optimization works while evidence construction/reproduction still grows. It does not assign all commit CPU to hashing, or make `copied_rows=0` evidence of no allocation/copying.

The forced-full diagnostic has 557,380 predicate evaluations at N=8192, with the same child-row counter. Its timings are not production acceptance measurements. `documents::decode` has zero calls in the measured in-memory paths; optimizing that helper is not a demonstrated explanation for these costs. Other backends can parse/copy independently of that counter.

## Independently varied dimensions

### Prepared history, fixed population/window

| Case | Median ms | Min–max ms | Full audit bytes |
|---|---:|---:|---:|
| history-8 | 273.699 | 271.277–281.958 | 2,519,482 |
| history-32 | 274.260 | 241.746–275.098 | 4,345,439 |
| history-128 | 289.239 | 282.645–296.237 | 11,649,490 |

### Changed creations, N=512

| Case | Median ms | Min–max ms | Full audit bytes |
|---|---:|---:|---:|
| changed-create-1 | 1094.485 | 1093.741–1133.796 | 9,916,985 |
| changed-create-2 | 1104.998 | 1104.655–1106.130 | 10,000,199 |
| changed-create-8 | 1212.124 | 1207.480–1288.940 | 10,499,483 |

### Changed updates, N=128

| Case | Median ms | Min–max ms | Full audit bytes |
|---|---:|---:|---:|
| changed-update-1 | 253.945 | 244.880–275.691 | 2,519,489 |
| changed-update-2 | 252.186 | 250.460–254.361 | 2,538,285 |
| changed-update-8 | 317.825 | 289.560–345.797 | 2,651,061 |

### Named count rules

| Case | Median ms | Min–max ms | Full audit bytes |
|---|---:|---:|---:|
| rules-1 | 271.693 | 260.307–286.859 | 2,585,264 |
| rules-4 | 282.457 | 278.547–288.726 | 2,607,500 |
| rules-16 | 307.553 | 299.705–331.014 | 2,696,446 |

### Filter terms

| Case | Median ms | Min–max ms | Full audit bytes |
|---|---:|---:|---:|
| filter-1 | 382.796 | 377.526–469.557 | 2,519,040 |
| filter-2 | 445.517 | 388.264–448.274 | 2,874,791 |
| filter-4 | 445.330 | 427.199–468.583 | 2,874,791 |

### Unused payload string size

| Case | Median ms | Min–max ms | Full audit bytes |
|---|---:|---:|---:|
| bytes-16 | 267.422 | 248.643–276.783 | 2,585,265 |
| bytes-256 | 295.227 | 293.555–300.179 | 3,696,707 |
| bytes-4096 | 589.207 | 586.129–676.930 | 21,479,748 |

### Controls and interaction

| Case | Median ms | Min–max ms | Full audit bytes |
|---|---:|---:|---:|
| control-none | 249.041 | 246.234–250.820 | 2,462,642 |
| control-true | 251.829 | 250.845–255.448 | 2,467,266 |
| control-unsupported | 354.525 | 350.578–354.825 | 2,585,282 |
| combined | 4398.173 | 4349.992–4494.091 | 6,820,137 |

Each stratum keeps the other declared factors fixed. Creation and update D series have different fixed populations and must not be merged into one causal curve. Rule/filter shape changes are distinct from payload bytes. Coincident byte lengths do not imply equal predicates or equal work. Per-case count bounds keep the creation windows admissible; their literal values and module identities differ, while expression shape and policy slack remain controlled. This is not a paired identical-module comparison across populations.

The combined public case uses filtered counts, two changed child identities, Parent/child Ref relationships, two command intents and 256-byte padding. Its median cycle is 4,398.173 ms. Independent factor medians cannot be added to predict it: eligibility, command validation and reference/evidence work interact. It is a neutral fixture, not a production application's domain model.

## Output and processing lower bounds

The 116,363,938-byte N=8192 audit artifact deliberately retains duplicate views: evaluation records, bundles, all archived commits, final versions, read/page results and replay reports. It is not unique per-transition output. The nine cycle decision records total 36,784,493 canonical bytes; eight bundles total 36,948,024 bytes, and eight archived event documents total 36,955,416 bytes. These overlap and must not be added as independent semantic information. The separate cold decision record is 4,088,881 bytes.

Emitting B required canonical bytes costs at least Ω(B). This conditional output bound does not prove that every current in-memory clone, parse or hash is necessary; nor does it prove a physical disk-I/O bound for a lossless compressed/deduplicating backend. The current profile's logical records remain unchanged. A proposal changing their exposed meaning/fields needs a separate versioned contract.

A small read's N=8192 record is only 675 bytes, yet its diagnostic scope hashes 4,621,422 JSON bytes in one document-hash call after reading one backend record. Exact history/head checking processes the large committed event even with reused state validity. Likewise, an empty command page is 1,082 bytes, while named page hashing processes 229,415,944 bytes. Output-size lower bounds alone do not explain those verification paths.

## History, recovery and cold work

With fixed N=128 and a fixed eight-update window, command history H=8/32/128 has page medians 1,970.807 / 3,348.382 / 9,653.134 ms (exact values in `primary-summary.json`). Returned pages contain one command from one whole event and are 1,619 / 1,622 / 1,626 bytes. The pinned interval is eight events, but authentication/reconstruction can revisit the earlier prefix. US5 separates source phases and counters; the complete multi-path probe also replays from genesis, so its growth is not a page-only measurement.

Reopen moves the same in-memory backend into a new Store, losing Store validation/preparation caches while retaining the backend's historical/index structures. The subsequent first evaluation has exactly the same canonical record as the warm final drain in every frozen case. It is a meaningful cache-loss boundary, not cold disk or complete backend-index reconstruction. Missing-index semantic regressions remain covered by existing tests; their production rebuild performance is unmeasured.

Three fresh durable release recovery trials are in `baseline/recovery-release.json`, with exact binary/source identities and enforced CPU/AS/timeout profile. They cross a real process exit after persistence, recover position 1, preserve one original command and idempotent retry, and replay successfully. The fixture has no Ref fields; public dedicated reference replay is unavailable, while the internal baseline separately covers it. These local cooperating-filesystem tests do not prove power-loss/device honesty or general fsync/network performance.

## Scope and uncertainty

Process HWM includes retained Core/backend evidence and the audit envelope/serialization, not runtime-only peak. Native process wall minus disjoint named phases is retained per run as `unassigned_process_ms`; it includes untimed archive/version collection, JSON assembly, startup and teardown. At N=8192 its median is about 5,714 ms. No unsupported allocator/CPU attribution is invented.

CPU 7 affinity is enforced for measured children; orchestration/auxiliary work uses CPU 0, and no builds overlap timing. OS page cache is not flushed. Host snapshots and limits are retained, but this is not exclusive physical hardware or continuous per-process competing-load measurement. Observed ranges are reported, not discarded. Resource exhaustion is operational, never a semantic counterexample.

The 029 report's 19,106.547-ms cycle and 175,992,671 named hashing bytes are historical results from another exact source/workload/harness. Here the fixture adds an unused padding field, different admitted inputs/rule bounds and full audit retention. Host/profile differences also remain. The new 180,150,042-byte diagnostic is scoped like the named site; it is not a claim of regression or improvement over 029. A causal version comparison would require paired identical workloads. Raw repetitions, complete bytes and original attempts are retained for that assessment.
