# US1 T013/T014 test-first evidence

The extensions were authored after T012 foundation readiness and before the
complete-child correction. Production source was captured in
[the source manifest](red/source-manifest.json), checked before and after each
run, and remained unchanged throughout. The HEAD is the setup commit; the
manifest identifies the additional completed foundation code in the worktree.
Run JSON files contain exact pinned-Nix commands, source/test digests, UTC
timestamps, environment and harness counts. No GREEN or finding closure is
claimed by this checkpoint.

| Target | Collected | Passed | Failed | Ignored | Filtered | Evidence |
| --- | ---: | ---: | ---: | ---: | ---: | --- |
| Core `resulting_state_validity` | 14 | 7 | 7 | 0 | 0 | [reviewed run](red/reviewed-core/core-validity-execution.json) |
| Store `resulting_state_validity` | 7 | 2 | 5 | 0 | 0 | [run](red/store-validity-execution.json) |
| Store fresh nonlocal characterization | 1 | 0 | 1 | 0 | 9 | [run](red/fresh-nonlocal-characterization-execution.json) |
| Core `resulting_state_order` | 6 | 2 | 4 | 0 | 0 | [run](red/core-order-execution.json) |

Every collection exits 0. Every execution exits 101 through the compiled Rust
test harness on intended semantic assertions. No compilation, admission,
transport, backend-fixture or history-format error is counted as RED. The
characterization command intentionally selects exactly one existing test;
the nine other tests in that integration target are filtered, not passing.

## Complete-child independent oracles

The original two-profile audit remains RED: a valid parent plus a locally valid
creation invalidates an unchanged survivor's absence predicate. Both Store
profiles still successfully commit that invalid child and fail the direct
authoritative-membership predicate.

Four further Core cases have independently computed invalid children and return
baseline `ALLOW` instead of `DENY`:

- Remove a target used by an unchanged survivor's plain-identity `exists` rule.
- Remove that target through a two-level derived `exists` dependency closure.
- Retarget a reference source, leaving an unchanged target without its required
  incoming edge.
- Remove the reference source, likewise invalidating the unchanged target.

The existence oracle compares the survivor's target with direct before/after
key mappings. The incoming-reference oracle directly checks both live target
membership and the source-to-target edge predicate. Neither uses a production
validator, affected-set calculation, reference index or cached certificate.
The fixtures provide every declared type's complete parent universe and keep
all surviving witness rows unchanged. Queries occur only at admitted module
scope, with candidate-local predicates.

## Actual controls and query evidence regression

Seven Core tests pass: unrelated valid creation, identity-assignment no-op,
empty-parent creation, reference-preserving retarget, same-transition source and
target creation, vacuous empty-type command-only actions with both true/false
guards, and module-level exact sum with valid/invalid child controls and replay.
The existing no-op/creation controls exercise both Wire 0.7 and 0.8.

The module-level filtered-count test independently counts one positive parent
and two positive child rows. Its valid `ALLOW`/same-profile replay control runs
first and succeeds. Its invalid child is correctly `DENY / INVARIANT_VIOLATED`,
but replay fails: a recorded field fact contains `E#b.x = 1` from the child while
the complete parent universe contains `E#b.x = 0`. Current replay consequently
returns `INCONSISTENT_FACTS`. This is concrete RED for parent-fact versus
resulting-state observation separation, not a fabricated global-validation bug.
The initial Core run is retained; `reviewed-core/` only moves the valid control
ahead of the failing assertion, without weakening or changing that assertion.

## Store invocation and fresh characterization

Both valid Store creation controls pass through the supported profile's commit
path. A valid invocation also produces a candidate without mutating authority,
then commits a directly valid whole child. Negative ordinary and invocation
evaluation assert that evaluation itself leaves head, genesis, history, keys,
values, historical freshness and incoming-reference state unchanged.

Both negative invocation profiles remain RED because their inner action returns
`ALLOW` and supplies a candidate for the invalid child. A command-producing
variant first proves that an unrelated valid creation produces one command
intent without mutating authority. Its invalid invocation remains RED because
it likewise allows the invalid child instead of withholding the candidate and
intents. No external command is dispatched by these tests.

Only the fresh expectation in
`nonlocal_creation_preserves_014_refusal_boundary` was corrected: current
evaluation must reject the child, produce no bundle, leave history/entity/
historical-identity state untouched, and preserve a valid parent read. The
archived old ALLOW/invalid-commit fixture is unchanged. Baseline returns `ALLOW`,
which supplies its intended RED.

## Ordering at this checkpoint

The postcondition-priority control and same-entity invariant-error typed witness
now pass because the completed foundation annotates existing reached child
steps. Four order seeds remain RED: unchanged-survivor coverage, canonical
decoded-ID subject, earlier-entity constraint before later-entity invariant
error, and declared constraint before synthesized reference. These assertions
were not weakened when their counts changed from the original foundation RED.

## Limits and next steps

This evidence seeds T016 review; it does not establish the correctness of the
upcoming implementation or resolve verifier/replay/cache obligations. The new
global filtered-count replay assertion also exercises a parent-observation
boundary relevant to T028. Each source correction must be followed by separately
captured GREEN against these same assertions. Root owns task status and the
scoped US1 completion assessment.
