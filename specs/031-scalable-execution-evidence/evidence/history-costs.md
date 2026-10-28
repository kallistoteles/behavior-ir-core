# Historical verification cost attribution

All measurements refer to the frozen baseline source/profile and separate diagnostic counter group. The fixed population is 128; preparation H varies before a fixed eight-transition window. `max_records=1` pins whole events. Native command pages preserve exact observed endpoints and occurrences.

| Prepared H | Pinned interval events | Returned events / intents | Page bytes | Median page ms | Named record reads |
|---:|---:|---|---:|---:|---:|
| 8 | 8 | 1 / 1 | 1619 | 1970.807 | 78 |
| 32 | 8 | 1 / 1 | 1622 | 3348.382 | 174 |
| 128 | 8 | 1 / 1 | 1626 | 9653.134 | 558 |

The requested eight-event interval and one-event response are bounded, but the verified/reconstructed prefix is not. The named read counts match `4*(H+8)+14` in these cases. This is an observed relationship for this source/workload, not a universal complexity theorem or a CPU-time decomposition.

| Source phase in `commands.rs::commands_since` | Work/obligation | Measurement scope |
|---|---|---|
| captured head and `history_with_head` endpoints | exact lineage/position/event identity, not state content alone | Included in page; separate phase CPU unmeasured |
| `replay_data(start,end)` | committed chain/evidence/governance and resulting states | Included in page; prefix reconstruction can precede start |
| `content_at(end)` | materialize exact historical state | Included in page |
| `verify_snapshot(end,materialized)` | compare complete materialized snapshot with history | Included in page; can reconstruct again |
| `for position in 1..=end` latest versions | exact historical revisions/content, including genesis lineage rules | Included in page |
| bounded final event loop | whole-event intents, multiplicity, occurrence ids and next cursor | Included in page; output bytes measured separately |

Source and named counters identify separate obligations and repeated traversal. No added timer claims their individual CPU shares. A small page is not evidence that only its returned event was validated. Three replay modes also have separate native timings; the whole multi-path process additionally contains preparation, audit retention and teardown.

The new public history controls pass three tests: nine distinct occurrences across three identical command-only events, whole-event pages of three intents with a one-record limit, exact endpoints and equal state at different positions; competing candidates with a refused stale commit and original-event retry; and missing/corrupt historical records with no successful page. They use existing APIs and backend fixtures; no reuse helper was introduced. `history-controls.txt` retains actual results. Three release-mode process-exit recovery trials separately cross persisted-before-acknowledgement, preserving the original event/time and command stream. A changed malformed nonempty authorization-context negative control is refused; the fixture does not establish a universal theorem about every valid governance context.
