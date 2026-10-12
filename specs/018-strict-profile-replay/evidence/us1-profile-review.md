# US1 — recorded-profile preservation

This checkpoint reviews the working implementation on integration base
`6ccd4327c7b1e647bc0a6d1bbc8f2557659af2fb`. Command receipts bind source/test
digests; final immutable-candidate assurance is still pending. The base includes
delivered017, whose PR remains a draft; it is not described as human-reviewed.

## Construction argument

`read::prepare_read_replay` in `crates/behavior-core/src/read.rs` keeps the
reference sequence: strict raw decode, supported format/module selection,
BehaviorHash comparison, source reconstruction/admission, then request selection.
It does not introduce closed-record validation ahead of reference comparison.
`ReadReplayProfile` has private fields, exactly two supported kinds, and binds
both semantic Module hash and `SemanticProfile`. Execution rechecks that binding.
There is no unsupported/default selector. Unit controls reject a selector used
with a different hash or semantic profile, including equal-hash test substitution.

Archived execution delegates to unchanged `run_version`, the reference evaluator
for the selected profile. Fresh APIs retain `run` and their existing module-based
emission default. Historical v1 is accepted for Legacy and CommandIntents;
current v2 requires CommandIntents. This asserts same-profile equivalence, never
equality of the two profiles' evidence contracts.

`invocation::replay_document` retains envelope reconciliation, facts decoding and
typed resolution before choosing the checked inner selector. It retains the
resolved declared source and original first-difference order. The hidden
`invoke_resolved_read_replay` integration hook refuses a resolved action; refusal
and decode-evidence outcomes receive no invented inner profile. Existing017
decision selection remains intact. No new export appears in `behavior-engine` or
`api/engine-surface.txt`.

Store's private Fresh/ArchivedRead mode is a sum type. Public `read` and `invoke`
hard-select Fresh. `Store::replay_read` prepares strict evidence, resolves its
recorded Store/history/StateId coordinate, binds the historical schema, loads
actual typed entity values and constructs Store-backed facts before archived
evaluation and complete comparison. `Store::replay_invocation` retains strict
Core preflight and the017 decision branch; evaluated reads reconstruct the
invocation from historical Store inputs under their checked inner profile.
Transport metadata is resealed exactly as before. A standalone match is not
authority for Store data.

## Executed evidence

- Foundation receipts establish three genuine semantic RED assertions before
  production changes: historical Store read, historical read inside invocation,
  and acceptance of a contradictory duplicate current result. Each exact-name
  command executed one test, with passing legal controls.
- `runs/us1-before/core-complete/run.json`: 13 passing Core preservation tests.
  `runs/us1-before/store/run.json`: six intended historical-dispatch failures,
  nine passing controls and one invalid history-test setup; the latter is not
  semantic RED. New-interface compilation failures and temporary capture setup
  failures are retained as unavailable/setup evidence, not soundness failures.
- `runs/us1-green/checked-profile-corrected/run.json`: nine internal contracts
  pass. The earlier action-model missing-location failure was test setup only.
- `runs/us1-green/core-coverage/run.json`: 13 tests pass over the independently
  enumerated nine rows and twelve supported Core cells; auxiliary historical
  query-registry and omitted-capture limits have explicit provenance.
- `runs/us1-green/store/run.json`: sixteen tests pass over twelve supported Store
  cells, all three named regressions, original archive IDs/bytes, error and
  binding-refusal fixtures, and before/after canonical Store contents.
- `runs/us1-green/core-and-preservation/run.json`: all 48 tests pass, including
  the 35 existing read/invocation preservation controls.
- `runs/us1-green/store-preservation/run.json`: all eighteen existing Store
  conformance, invocation, history, schema, soundness and read replay controls pass.

The historical-coordinate test replays the original Wire0.8 v1 archive after
two writes that return to the same StateId at a different history position, then
a schema migration. Writes use a legal Wire0.7 writer with the same schema,
because Wire0.8 writes require v2 history and the retained archive has v1 genesis.
Neither the archived read nor its coordinate was regenerated for that test.

Historical v1 provenance remains identity-bearing; omitted captures are not
invented. The independent historical evaluator reproduces the original audit
bytes. Current v2 compares its complete snapshot while detached diagnostics
remain outside identity. Fresh Wire0.8 emits v2. Unsupported concrete U01–U07
controls retain their historical refusal rules; ad-hoc early-version definitions
are admitted as compatible read definitions, not fictional declared reads.

## Traceability and limits

| Requirements / obligations | Evidence |
| --- | --- |
| FR-001/012, P018-02/10 | Independent nine-row/24-cell inventory and case guards; U01–U07 tests; checked-profile unit tests. |
| FR-002, P018-06/07 | Checked Core/Store execution; original inner/outer invocation identities; fresh-v2 controls; resolved-action rejection. |
| FR-003/006, P018-03 | Independent v1 captures, retained bytes/IDs, provenance and historical limits; v2 complete-snapshot/diagnostic controls. |
| FR-016, P018-05 | Same-profile paired Core/Store assertions with Store coordinates independently established; full comparisons. |
| FR-010, P018-11 | Unsupported-profile controls and unchanged017 branches; existing replay preservation suites. |

This is an empirical and source-invariant checkpoint, not universal proof of
Backend honesty or cryptographic collision resistance. Matrix coverage is
partial until US2/US3 execute their required cases. US2 adversarial documents,
US3 Store substitutions/performed failures, full collateral action checks and
final frozen-revision validation remain pending.
