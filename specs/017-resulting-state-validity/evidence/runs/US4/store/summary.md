# T048 historical Store boundary test-first evidence

The reviewed target is
`crates/behavior-store/tests/resulting_state_history.rs`. It contains 20 finite,
focused tests and uses actual immutable baseline artifacts. The supplementary
signed-event capture has its own provenance in
[the capture summary](../signed-archive08-baseline/summary.md); it neither replaces
nor reblesses the original42 captures.

The root agent reviewed the import, authority snapshot, independent invalid-child
oracle and all assertions before execution. The additional rehashed data-version
substitution control was also explicitly reviewed. Current production stayed
frozen throughout collection and execution.

Exact commands, from the Core017 worktree, with `CARGO_BUILD_JOBS=2`,
`CARGO_INCREMENTAL=0`, `CARGO_PROFILE_DEV_DEBUG=0` and
`CARGO_PROFILE_TEST_DEBUG=0`:

```text
nix develop -c cargo test -p behavior-store --test resulting_state_history -- --list
nix develop -c cargo test -p behavior-store --test resulting_state_history -- --nocapture
```

Final collection: 20 tests, exit0. Final execution: 20 tests, 10 passed, 10
intended failures, zero ignored/measured/filtered, exit101. Complete logs and UTC,
HEAD, source/test hashes and statuses are preserved under `red/collection-final.*`
and `red/execution-final.*`.

Test SHA256:
`0e708fdfe48b130d4427902d565e31333756abafd5204c3c8c4e3114d45e08b5`.
Frozen production source manifest SHA256:
`dfa48bf1eae2865359215de59a75ae9edb8d3a54322bff8f17343a56b9b23e2a`.
HEAD was `932eb8188dc28393213491e27f66e3bc7e273a6b`; production digests,
original archive manifest and supplementary signed-event manifest stayed unchanged.

| Test group | Final observed result | Boundary exercised |
| --- | --- | --- |
| Valid and invalid old05 behavior history | 2 FAIL | Current rederivation cannot reproduce old decisions |
| None-policy old07 command behavior history and recovery | 2 FAIL | Old nested profile must remain reproducible; no extra occurrence |
| Genuine signed07/verifier08 behavior history and recovery | 2 FAIL | First failure is profile rederivation; original proof eligibility remains a staged obligation |
| Mixed old05 action plus actual current migration history | 1 FAIL | Original profile at the exact historical schema/position |
| Valid and invalid old05 invocation wrappers; old wrapper after migration | 3 FAIL | First failure is nested archived facts reproduction in Core |
| Exact valid and invalid old05 recovery | 2 PASS | Already:true, no write, no reusable child validity certificate |
| Genuine signed old history data replay | 1 PASS | Original manifest/signatures authenticated, exact command occurrence retained |
| Archived08 proof for current subject | 1 PASS | Archived evidence remains ineligible for current proof |
| Uncommitted old05 valid/invalid, old07 command and signed old candidate | 1 PASS | Four actual obsolete candidates refuse without any backend mutation |
| Signed recovery with substituted archived context | 1 PASS | Exact immutable event/context boundary |
| Rehashed foreign-store/changed-position invocation derivative | 1 PASS | Both substituted bases refuse with no authority change |
| Fresh invocation at old parent | 1 PASS | Current08 ALLOW/DENY, no live candidate, unchanged history |
| Independently bad old child after replay/recovery | 1 PASS | Repeated fresh read/evaluate/invoke refuse STATE_INVALID |
| Current historical reads across actual schema migration | 1 PASS | Original read bytes replay, old/new schema mismatch controls |

The signed behavior/recovery tests are intentionally unchanged between stages.
At this checkpoint their actual failure is `BUNDLE_INVALID: the record does not
reproduce under its behavior version`. Once profile rederivation is corrected,
they can reveal whether the historical trust path incorrectly applies current
verifier eligibility. Such a second defect is not claimed observed here and needs
a separately captured actual RED before a historical trust-route correction.
Likewise, the three old-wrapper tests currently fail first in Core's nested
archive path; unchanged assertions cover the subsequent Store invocation boundary.

The host importer commits the exact captured `TransitionRecord` using
`Backend::commit`, validates original previous-record/content/state identities
and, for the signed event, matches the actual captured Head. It does not use the
live Store authorization boundary to manufacture old history. Authority snapshots
cover genesis/head/events, values, lifetime facts, removals and references; backend
mutation counters must remain zero. Captured v2 command pages must retain their
exact occurrence identities. The finite-set bad-child oracle directly observes
that unchanged E#e0.target names the created identity; it does not call either
validator. Hash/accumulator checks and backend import use existing production
identity helpers and are not independent proofs of their mathematics.

Excluded setup mistakes are retained honestly: `collection-attempt1` failed to
compile because `CommandStreamPage::as_json` returns Value; the reviewed run
corrected that borrow. `execution-reviewed` has 8 passes, 10 intended failures and
2 seed expectation failures: existing exact division serializes rational2 as the
string `"2"`, rather than numeric2. Only those seed assertions changed before the
final collection/execution. Neither compilation errors nor seed mistakes count as
semantic RED. No production correction, finding closure, historical authority
upgrade or command dispatch is claimed by these tests.

## Actual staged correction and GREEN

`profile-bridge-stage/run.json`: unchanged20 tests executed18PASS/2FAIL.
Both remaining genuine signed cases now fail at `INCOMPLETE_VERIFICATION` because
the authenticated historical verifier0.8 manifest is compared with current0.9
sites. This actual second-stage RED preceded the trust-route change.

`history-green-reviewed/run.json`: all20 tests PASS. Additional current boundary10,
command history12, commit faults6 and validation reuse12 PASS (40 controls).
No tests were ignored or filtered. The earlier `history-green` directory contains
only a helper-name compilation collision and is excluded from semantic evidence.

Live rederivation requires closed current08 evidence. Historical reproduction
uses the validated original profile and still checks the complete parent with
the original Store reference validator. For old records this check does not
publish a current cache certificate. Exact v2 recovery and behavior replay
authenticate original proof coverage/signatures/context after actual semantic
reproduction; current08 proof eligibility and new commit authority stay current.
Archived invalid children remain reproducible evidence and refuse fresh work.
The genuine old signed model has no entity obligations, so this remains scoped
empirical evidence, not verifier completeness for nonempty models.
