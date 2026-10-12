# Public facade and durable-host creation evidence

The consumer uses only the supported `behavior-engine` facade. The initial
baseline is integrated 022 at `9d3fcfeb8764773332bbf5a69881ab0b49644fd9`.
Resource settings match the execution ledger. Working receipts are retained
externally in `/home/kalle/validation-receipts/core019-work/`.

## US1 prospective RED and legal controls

`cargo test --manifest-path consumer/Cargo.toml --test store_creation -- --list`
collected seven tests. The baseline run returned 101: four legal controls passed,
and three actual assertions failed. Receipts, command/environment, source digest
and original test source are in `consumer-us1/{list.log,red.log,red.json,test-red.rs}`.

The passing controls establish both supported genesis profiles with empty and
referenced seeds, revision-one position-zero material, seed universes/required
incoming references, strict malformed document refusal, legacy raw-to-encoded
decimal normalization, and invalid type/duplicate/reference/constraint/grid/schema
refusal before any Backend create call. They are controls, not newly failed laws.

The actual REDs were successful acknowledgment without publication, opening a
genesis-only publication, and overwriting an existing nullable authoritative
filesystem snapshot as though it were an absent target. No original 016 partial
creation reproduction is claimed by these deliberately broken probe cases.

The nullable snapshot requirement in T010 exposed a dependency cycle with the
full host implementation in T030. Following the root's recorded execution
refinement, only the integrity rejection slice of T030 was advanced after its
genuine RED. Existing authoritative `store.json` must have nonnull genesis/head;
only NotFound represents absence. The exact nullable test then passed (one test,
six filtered), with receipt `consumer-us1/nullable-green.json`. Retry, locking,
durability barriers and fault windows remain US2 work, not evidence from this slice.

Scratch roots establish their own directory and parent-entry synchronization
separately. These are process/filesystem host tests, not device power-loss tests.
Their stable-lock/atomic-rename/durability premises remain explicit in the contracts.

After root's checked fresh creation/open implementation, all seven US1 facade
tests passed, with zero ignored (`consumer-us1/green.log` and `green.json`).
Subsequent US2 test preparation expands this target; its separate baseline is
not represented as the earlier seven-test success.

## US2 baseline and deterministic fault tools

After the US1 checkpoint, the facade target collected 12 tests and the process
target 11. Both were run before full host recovery/fault behavior. The first
migration fixtures were rejected during admission because target Customer
creation lacked the new required tag field. Those setup failures are retained
but excluded from behavioral RED claims. Correcting the target action product
made the fixtures legal; the rerun reached the intended recovery assertions.

`consumer-us2/*-legal-red.json` binds command, start/end HEAD, resource environment
and copies/digests of the actual working source bodies. An overlapping metadata
checkpoint commit did not change those bodies; these are working-tree receipts,
not a claim of final exact-commit validation.

The corrected facade baseline returned 101: seven controls passed and five
actual assertions failed for equivalent retry, update/migration recovery,
later equal-StateId recovery, direct durable Backend retry after migration and
dormant facade postpublication-error selection. The last probe was activated
only after that actual assertion failure; its exact failure-priority test then
passed (`facade-fault-tool-green.log`). Failed secondary observations do not
replace the primary creation error; later classification coverage belongs to
the integrated Core boundary.

The corrected process baseline returned 101: two controls passed and nine actual
assertions failed. The aggregate fault-activation test actually launched all 11
registered selections and printed whether their boundary marker/outcome occurred.
Every selection was dormant and the aggregate assertion failed. No unknown mode,
child setup error or requested-mode echo was accepted as executed fault evidence.
Equivalent/conflicting initializer, advanced/migrated and later equal-state
recovery assertions also failed before host implementation. These tests establish
the prospective requirements, not retrospective physical crash guarantees.

After root's exact Core recovery algorithm and the independently implemented
durable host changes, all 12 facade tests and all 11 process tests passed with zero
ignored (`consumer-us2/*-green.log/json`). Actual observations are enumerated in
[host-window-coverage.md](host-window-coverage.md); performed secondary-read faults
were observed without replacing the original creation error. These working-source
results are not the final frozen-revision delivery receipt.

Existing consumer regressions then passed 42 tests across command crash recovery,
the durable command demo, command replay, incremental validation, resulting-state
validity, strict historical profiles and replay-evidence authority. The command
demo used an explicitly rebuilt 019 CLI at the shared build path, not an old 022
binary: `consumer-us2/fresh-cli.json` records its digest and build command;
`legacy-regressions.json/log` records the explicit `BEHAVIOR_BIN` and outcomes.
These are working-source checks; canonical final gates and exact Git consumer
validation still belong to the frozen delivery candidate.

## US3 complete shared suite and preserved history

The facade target collected 14 tests. Before the remaining shared cases were
registered, its baseline passed 13 controls and failed only the required case
count: 37 existed instead of 45. A separate exact run checked and printed every
one of those 37 successful cases before the count assertion failed. Both receipts
are retained in `consumer-us3/{baseline,protocol-red}.json/log`; this is missing
protocol coverage evidence, not a newly discovered durable-host semantic defect.

After all 45 shared cases were registered, the facade passed all 14 tests and
checked all 45 named shared cases against fresh durable targets. The added removal
control preserved each original seeded Account's historical revision, current
absence and ever-used identity under both genesis profiles. Existing update,
migration and later-equal-StateId controls remained successful.

The process target passed all 11 tests and reproduced all 55 observed window,
activation, race and history rows. Existing consumer regressions again passed
42 tests. Receipts are `consumer-us3/{facade-green,process-green,legacy-green}.json/log`;
`final-list.json/log` documents collection. No run emitted a Core source-mutation
marker. These official-source builds used only
`/dev/shm/behavior-core019-consumer-target`, separate from the isolated mutation
target. `fresh-cli.json/log` binds the rebuilt CLI and its digest; the legacy
receipt records that exact path as `BEHAVIOR_BIN`.

The broad source manifest changed only unrelated
`crates/behavior-store/tests/support/creation_backend.rs` during the facade run.
Runtime, conformance, facade and durable-host sources were stable; process,
CLI and legacy runs had entirely stable source manifests. The source-change
qualification and extracted observations are retained in `consumer-us3/summary.json`.
These are scoped working-source controls, not final frozen-revision gates or an
exact Git consumer receipt. Physical durability remains bounded by the host
premises in [host-window-coverage.md](host-window-coverage.md).
