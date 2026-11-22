# Cold gate capacity: source findings and admission proposal

Read-only investigation, 2026-11-22; no build, test, binary read/hash, cache inventory, cleanup, or gate execution. This note establishes neither a cold peak nor Q/native/feature acceptance.

The old retained ELF total is **not a fresh-target allocation**. The exact index has 333 paths, 279 content references, 2,194,400,360 path bytes and 1,960,038,056 globally unique content bytes. The historical retention function copies executable ELF files unchanged and deduplicates by content hash; these are original executable lengths, not complete Cargo target sizes. All references are extensionless hash paths: no compressed reference is identified, so no compressed-byte estimate follows from this index. Objects, rlibs, metadata, link scratch and concurrent temporary files are outside this executable-only inventory. [Index](/var/tmp/behavior-ir-core036-v2/w001/quality/a0162/retained-cache-executables.json), [historical retention source, lines 188–230](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/evidence/v2/w001/subjects/r9111/sources/00128:188).

| Relative target paths (all `debug`) | Paths | Path bytes | Unique contents / bytes within group |
|---|---:|---:|---:|
| `debug/behavior` | 1 | 24,972,400 | 1 / 24,972,400 |
| `debug/build/*` | 32 | 19,707,440 | 16 / 9,853,720 |
| `debug/deps/*` | 215 | 1,443,874,392 | 215 / 1,443,874,392 |
| `debug/examples/*` | 22 | 358,416,368 | 14 / 209,067,400 |
| `consumer/debug/build/*` | 22 | 13,580,416 | 11 / 6,790,208 |
| `consumer/debug/deps/*` | 29 | 274,256,368 | 29 / 274,256,368 |
| `consumer/debug/examples/*` | 12 | 59,592,976 | 6 / 29,796,488 |

Group unique totals overlap. Package attribution below uses only uniquely matching indexed test/example stems, known crate binaries and the consumer prefix; ambiguous stems and dependency/build scripts remain unresolved. This is filename attribution, not Cargo fingerprint/profile reconstruction. [Exact source inventory](/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/subject-inventory-v2.json), [consumer package](/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/consumer/Cargo.toml:5).

| Attributed package | Paths | Path bytes | Unique contents / bytes |
|---|---:|---:|---:|
| behavior-cli | 23 | 118,170,984 | 22 / 93,198,584 |
| behavior-core | 65 | 291,394,592 | 65 / 291,394,592 |
| behavior-engine | 4 | 20,611,840 | 3 / 14,575,736 |
| behavior-engine-consumer | 38 | 323,301,464 | 32 / 293,504,976 |
| behavior-store | 68 | 796,415,552 | 63 / 697,556,640 |
| behavior-verify | 26 | 165,068,312 | 26 / 165,068,312 |
| unresolved/dependency/build script | 109 | 479,437,616 | 68 / 404,739,216 |

A single unchanged gate naturally combines dev compilation (Clippy, workspace build, store `cargo run` examples and consumer demo build), opt-level-2/debug-0 test compilation (workspace tests, `validation-work` core/store lib tests, consumer tests), feature variants, and separate workspace/consumer dependency graphs. Both the cold origin r9077 and warm r9111 drivers explicitly set test opt=2, debug=0, assertions/overflow checks=true, incremental=0, one job, dev debug=0 and `-C target-cpu=x86-64`; current driver has the same settings. No invoked production compile command requests release. The environment inherits other variables, so the next declaration must bind the effective Cargo/profile environment. Six store examples have two hashed content variants (e.g. `history`: 22,222,424 and 9,935,264 bytes); the index cannot distinguish required dev/test variants from stale artifacts. [Original gates](/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/scripts/gates.sh:17), [example commands](/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/scripts/determinism-check.sh:103), [origin environment](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/evidence/v2/w001/subjects/r9077/sources/00128:207), [warm environment](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/evidence/v2/w001/subjects/r9111/sources/00128:474), [current environment](/data/repos/behavior-ir-core-033/experiments/transition-study036/quality_v2.py:474).

**Two consumer caches matter.** `check-consumer.sh` uses `$CARGO_TARGET_DIR/consumer`, but `check-command-determinism.sh` overrides it with `$PWD/target/consumer` for the dev demo unless `BEHAVIOR_COMMAND_DEMO_BIN` is supplied. Therefore an empty new `disposable/gate-<attempt>/target` alone cannot establish wholly cold compilation. The second exact compilation-cache candidate is `/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/target/consumer`; its present existence, contents and ownership were not inspected. Before a cold run, guard every component, establish ownership and process closure, then either preserve required emitted artifacts and clear only this owned compilation subtree under a declared operation, or explicitly justify and report its reuse. Do not delete the enclosing source export. [Consumer target](/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/scripts/check-consumer.sh:28), [hardcoded demo target](/var/tmp/behavior-ir-core036-v2/w001/sources/a0003/core-reuse/scripts/check-command-determinism.sh:7).

The a0169 receipt is warm: cache starts at 19,996,356,734 and ends at 19,996,521,749 bytes. Its sampled temporary maximum is 67,575,037 bytes and sampled descendant RSS maximum 1,816,776,704 bytes; these observations do not measure a fresh compile peak. [Warm result](/var/tmp/behavior-ir-core036-v2/w001/quality/a0169/result.json), [receipt metadata and samples](/data/repos/behavior-ir-core-033/specs/036-core-transition-feasibility/evidence/v2/w001/attempts/a0169/child/receipt.json).

After a0529, recorded remaining capacity is cache **851,383,569 B**, temporary **22,586,534 B**, artifacts **67,900,171 B**: subtract final observations 24,784,202,479 / 4,272,380,762 / 8,656,252,149 from registered caps 25,635,586,048 / 4,294,967,296 / 8,724,152,320. These are closing observations, not a current admission measurement. [a0529 final receipt](/var/tmp/behavior-ir-core036-evidence-v2/w001/attempts/a0529/child/receipt.json).

Proposed next step: declare a fresh attempt and run the existing authoritative capacity preflight immediately before execution. For each registered role require `baseline + declared maximum additional growth + closure reserve <= cap`, plus combined-cap, actual-volume free-space/stop thresholds, available-memory and process-closure checks. Charge both target locations, temporary linking/runtime outputs and receipt/evidence growth, without double-counting nested roots. Bind inherited profile/target flags and allow no warm-cache predecessor; confirm the new primary target is absent. No numerical full-gate growth bound is established here: the 851 MB cache margin may or may not suffice, and the temporary/evidence margins also require admission. If these inequalities cannot be justified, prospectively change finite capacity or preserve/clear only proven owned compilation caches; otherwise a supervised finite cold attempt may resource-stop and supplies only partial measurements. Obtain the cold peak from that attempt's storage/resource observations and closure, never from the old ELF sum. No SDK/source/raw-export/sealed-archive deletion or global GC is proposed.
