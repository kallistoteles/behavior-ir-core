# Recent proof-cache retention source review

New unselected source-only review of prospective455. Only the five permitted
repository files were read. No build/test, private read, discovery, process/live
inspection, archive operation, kernel replay, cache move or cleanup was executed.
No selected file or status was changed. Kernel replay, runtime behavior and cache
retention/reclamation outcomes are not established by this review.

Owners, relative to `experiments/transition-study036`:

- `S`: `proof_cache_retention_v2.py`.
- `R`: `proof_cache_retention_recent_v2.py`.
- `N`: `native_cache_retention_v2.py`.
- `T-old`: `tests/v2/test_proof_cache_retention.py`.
- `T-recent`: `tests/v2/test_proof_cache_retention_recent.py`.

## Finding

**P2 — A failed recovery-receipt write prevents pre-disposal rollback.** In the
shared exception handler, `write_once(out / "recovery.json", ...)` executes before
the reverse-move loop. If that write raises, control leaves the handler before
any restoration attempt, even when `started_disposal` is false. This matters for
I/O failures as well as the ordinary failed kernel/source/archive checks that the
handler is intended to recover from. Source: `S:448–464`.

Make restoration independent of successfully writing the recovery receipt, for
example by arranging the receipt attempt and pre-disposal restoration under a
`try`/`finally`, retaining the original error and separately recording any
restoration failures where possible. Keep the rule against overwriting a
regenerated original. This is a gap in the shared recovery protocol visible in
the current source; it is not evidence that the recent batch alone introduced a
historical regression or that any runtime restoration failed. No fault was run.

## Batch scope and old hardcodes

The shared helper fixes exactly two tuple keys: original
`a0435,a0436,a0439,a0441,a0442,a0445,a0447,a0448` → runtime a0448/98 roots, and
recent `a0452,a0453,a0454` → runtime a0454/113 roots (`S:13–16`). The original
public wrappers still pass only the original tuple (`S:20–27`, `:57–67`, `:86–93`).
The new wrapper imports only RECENT_PARENTS as its public PARENTS and passes that
fixed tuple to targets, inventory and run (`R:3–21`). There is no configurable
arbitrary attempt list in the new public wrapper.

The CLI dispatch accepts exactly format plus recent_proof_cache_ref for the new
route, and format plus proof_cache_ref for the historical route. Mixing selectors
fails the exact-field check; the older failed-translator and backend dispatch
branches remain distinct (`N:262–298`).

Target creation, all-target construction, parent completeness/uniqueness, source
inventories, cache inventories and the before-move recheck consistently use the
selected whitelisted `parents` tuple (`S:24–27`, `:61–83`, `:152–172`, `:196–201`,
`:280`, `:325`). Runtime paths, the primary expected-root count and the reported
kernel scope use the tuple's runtime_attempt/root_count (`S:93`, `:173–180`,
`:203–217`, `:494`). No leftover a0448/98 hardcode was found in those generalized
paths.

The remaining a0449 prior-checkpoint/inventory/recovery/archive paths belong to
the original batch's specific failed-retention recovery protocol. The recent
batch rejects the entire prior-archive selection form before reference access
(`S:97–126`, `:284–314`). Those historical hardcodes must remain constrained in
this way; they are not missing recent455 substitutions.

## Archive, export and disposal guards

The current source constrains cache roots to compiled/default-compiled beneath
the fixed attempts. Registry path checks, regular-node/symlink checks, file/byte
bounds and cache suffix restrictions precede archival. It refuses live users and
selected-input cache paths, and snapshots both project/default-project source
trees (`S:24–27`, `:43–83`, `:145–201`). This review did not execute or independently
inspect the imported registry/inventory/live-user implementations.

The runtime result is tied to its exact whitelisted successful checkpoint and
subject, and the proof receipts to exact declared-proof/default-declared-proof
paths, required root counts, scoped proof status and unchanged export digests.
Export transport/policy validation is called before moving caches. Tools and the
original kernel command shapes remain pinned; the default command must have the
Lake prefix while the other command must be direct (`S:173–182`, `:203–271`).

The source archives and verifies the complete inventory, rechecks it, creates a
fresh owned disposable root, and records a full move-intent map before renaming.
It then plans direct kernel replay from the retained exports with empty LEAN_PATH,
checks unchanged source trees, absent originals, exact moved bytes, tool/export
identity and archive integrity before cleanup registration/disposal
(`S:272–283`, `:315–447`). After disposal begins, its declared recovery path uses
the retained archive rather than attempting an unsafe directory rollback. After
successful disposal it rechecks sources, exports, tool identity and retained
references (`S:448–482`). These are source guards, not observed successful outcomes.

The source copies the outer selection reference before iterating through parent
references, and reports that preserved selection reference (`S:95`, `:158`,
`:480–488`). No new reference-shadowing report error was found. The disposable
root validates the current retention attempt ID and remains independent of the
parent batch (`S:30–33`, `:327–335`); reusing that utility in the recent wrapper
does not broaden the cache targets.

## Test-source assessment and limits

The historical tests continue to require eight parents, sixteen synthetic cache
roots/files, rejection of foreign attempts/source files/symlinks/special nodes,
protected references before reader access, unknown selector fields and restricted
disposable scope (`T-old:9–120`). The recent tests mirror the same guards for three
parents/six roots and explicitly reject a0448 and a0455 as parent targets
(`T-recent:9–129`). The shared disposable utility's synthetic a0450 test is not a
claim that a0450 is a recent cache parent.

The permitted test files do not exercise the complete archive→move→replay→dispose
transaction, the exceptional recovery-receipt write, or both wrapper routes'
runtime/root-count receipts. Those remain unexecuted validation work. A narrow
failure-injection check that forces recovery.json writing to fail after at least
one move would directly verify the finding's repair without touching real caches.

Subject to the shared recovery finding, no definite new batch-scope escape,
misapplied old runtime hardcode, archive/export guard removal or historical
public-wrapper contract regression was identified statically. Successful
prospective455 execution and fresh kernel/cache outcomes remain unestablished.
