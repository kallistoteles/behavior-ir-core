# Durable test-host creation windows and recovery

This evidence concerns `consumer/tests/support/durable_backend.rs`, a test-only
cooperating Linux/local-filesystem host accessed through `behavior-engine`.
It is not a universal Backend durability theorem or a machine power-loss test.
The public target has one authoritative canonical `store.json`; temporary
snapshot files and startup/fault controls are private host/test material.

## Test-first custody

Integrated 022 was the initial implementation base. US2 working-source snapshots,
commands, resource environment and start/end HEAD are retained in
`/home/kalle/validation-receipts/core019-work/consumer-us2/`.
The source manifest distinguishes checkpoint commits from final delivery evidence.

The typed fault selector first compiled with dormant behavior. The aggregate
activation assertion actually sampled all 11 named selections and failed because
none emitted its real host boundary marker. Representative legal update/migration,
direct Backend retry and actual initializer races also failed before host changes.
Initial malformed migration fixtures were corrected and their setup failures
were explicitly excluded from semantic RED evidence.

After those REDs and the root's US2 prerequisite release, host normal reads gained
the stable lock and recovery barrier; lock-held helpers prevent nested acquisition.
Equivalent original-product retry compares immutable genesis/seed/lifetimes/refs,
checks the initial head at zero or current endpoint when advanced, and never
rewrites the existing snapshot. The existing commit fault modes remain distinct.

## Executed windows

`store_creation_crash_recovery-green.log/json` records 11 passing tests, zero
ignored. One is the child entry-point control; substantive work is accounted by
the actual printed rows, not by counting that worker as a durability scenario.
`host-observed-rows.json` extracts 55 rows: 34 window observations, 11 explicit fault
activations, 6 same-target process schedules and 4 advanced-history workloads.

| Boundary | Profile / seed coverage | Actual scoped observation |
| --- | --- | --- |
| after-temp-create | v1/v2 × empty/referenced | Child exits 86 at marker; one orphan private file; no authoritative Store; normal open refuses; explicit create succeeds |
| after-partial-write | v1/v2 × empty/referenced | Same; incomplete bytes stay private |
| after-complete-write | v1/v2 × empty/referenced | Complete but unsynced staged bytes stay private |
| after-file-sync | v1/v2 × empty/referenced | Synced private bytes are still not published |
| after-rename | v1/v2 × empty/referenced | Complete live file; child exits before directory-sync acknowledgment; fresh locked observer establishes recovery barrier; retry preserves exact bytes |
| after-directory-sync | v1/v2 × empty/referenced | Child exits after completing the durability barrier but before reply; exact original recovery adds no initialization or rewrite |
| before-staging-error | v1/v2 referenced | Actual Backend error; isolated target remains absent; explicit retry succeeds |
| rename-error | v1/v2 referenced | Injected operational error before rename; authoritative target remains absent; retry succeeds |
| directory-sync-error | v1/v2 referenced | Actual error after rename; authoritative complete bytes may exist; no rollback claim; recovery succeeds without rewriting |
| recovery-read-error | v1/v2 referenced | Performed normal Backend read errors; no successful creation recovery, fabricated absence or overwrite |
| recovery-sync-error | v1/v2 referenced | Required recovery barrier errors; no successful recovery; later unarmed observer succeeds |

The 11 activation rows require a marker from the actual host branch plus its
expected failure/exit. A requested-mode echo or unrecognized worker is insufficient.
The explicit unknown-worker control rejects before publication. Fault selection
does not claim to emulate every possible physical syscall/device failure.

## Executed history and concurrency

Both profiles exercised original-request Store recovery and direct Backend retry
after an ordinary update plus schema migration. The exact primary file bytes,
actual advanced history and migrated schema are preserved. An established foreign
seed produces `STORE_CREATION_CONFLICT` and cannot replace that lineage.

Both profiles exercised create/remove of a temporary entity, returning to the
original StateId at a later history position. Recovery preserves that history and
ever-used lifetime. Removing an original seeded Account then directly retrying
creation preserves its historical revision-one version and current removal.

Separate processes use a bounded startup gate to race equivalent initializers,
conflicting initializers, and original creation with the first ordinary commit.
Both profiles yield one complete lineage; conflicting requests yield exactly one
winner and one established conflict. Equivalent recovery never resets the first
commit. These are executed schedules, not exhaustive scheduler/model checking.

US3 repeated all 11 process tests and the same 55 actual rows after complete
45-case registration. It also passed all 14 facade tests, including every named
shared conformance case against a fresh durable target and removal of an original
seed under both profiles. `consumer-us3/summary.json` extracts the results, source
qualifications and rebuilt CLI identity. The facade's only overlapping broad
manifest change was an unrelated Core test-support file; its host/runtime sources
remained stable. These results do not replace final frozen-revision evidence.

## Host invariants and limits

- All create/retry/commit/read observers cooperate on one stable `writer.lock`
  inode. Lock-held read helpers do not reacquire it. Noncooperating writes,
  replacing/removing the lock or externally swapping the root violate the premise.
- Only missing authoritative `store.json` means absence. Duplicate JSON keys,
  missing/unknown fields, nullable genesis/head and typed decoding failures are
  operational/integrity errors and are never an overwriteable absent target.
- Complete private bytes are file-synced, renamed atomically, then directory-synced.
  Rename is live namespace publication; success/recovery requires the disclosed
  file/directory durability barrier. A failed response establishes no rollback.
- Scratch roots are established separately and their parent/root entries are
  explicitly synced. Generic `DurableBackend::open` does not silently prove
  newly created parent-directory durability for arbitrary deployments.
- Complete immutable canonical history/as-of answers, correct OS/filesystem lock,
  atomic rename and synchronization behavior, exclusive host ownership and
  cryptographic identities remain assumptions. Process exits do not prove device
  honesty, power-failure recovery or every filesystem implementation.

This closes the named empirical windows under these premises; it does not replace
the separate O-PERSIST-012 normative outcome law or final frozen-revision gates.
