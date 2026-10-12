# T024 Store boundary RED and controls

The completed US1 evaluator is the baseline for these tests. The production
manifest was frozen before US2 source corrections and checked before and after
every run. Exact commands, UTC timestamps, HEAD, source/test digests and process
statuses are in [collection](red/final/store-boundaries-collection.json) and
[execution](red/final/store-boundaries-execution.json); the source manifest is
[retained separately](red/source-manifest.json).

`nix develop -c cargo test -p behavior-store --test resulting_state_boundaries
-- --list` collected 10 tests with exit status 0. Execution with `--nocapture`
ran all 10: 8 passed, 2 failed, 0 ignored and 0 filtered, exit status 101. Both
failures are the intended semantic-evidence assertions, not compilation,
admission or operational errors.

## Intended RED

Both Wire 0.7 and Wire 0.8 current paths evaluate a valid update of `E#e0` and
validate the unchanged `E#e1`. Ordinary evaluation and invocation agree on the
complete decision, candidate and typed child trace. The unchanged row's
two-level derived constraint has child observations `x=3, y=4`.

The expected typed parent field observations are independently supplied from
the test's finite parent rows. Neither a production affected set nor the emitted
trace determines their values. Both profiles fail because `read_facts` contains
only existence entries: `E#e1.x`, and the other required unchanged field reads,
are lost at the child rule's empty mapping to action parameters. This is RED for
identity-aware parent observations surviving bundle conversion.

The same assertions require the changed row's parent `x=1` in parent facts while
its child trace has `x=4`; the new value must not become a parent fact. A successful
commit must independently rederive the same record and typed observations.
These later assertions are acceptance obligations; they are not claimed to have
executed past the first missing-field assertion on this RED run.

## Eight actual passing controls

- Created child rows appear in typed child observations but never in parent
  field facts.
- Genuine ordinary and invocation candidates agree on changes and commands,
  then rederive and commit without changing their semantic record or facts.
  The command profile preserves two equal intent occurrences.
- The independently invalid audit child is `DENY / CONSTRAINT_VIOLATED` through
  both Store boundaries, with the same typed unchanged-row witness and no bundle
  or authoritative mutation.
- Rehashed forged witnesses and forged parent facts are rejected before writes.
- A rehashed ALLOW claim for an independently invalid child is rejected by
  rederivation; recomputing a content identity does not establish validity.
- Wrong expected parent, schema and Behavior substitutions are rejected with
  their existing error routes.
- A wrong exact history record at position 1 is rejected even after the current
  v2 candidate hash is recomputed.
- A genuinely disjoint intervening write preserves the pending operation's
  target value but still causes the existing whole-state `STATE_CONFLICT`.
  These tests do not introduce or assume disjoint rebasing.

The controls generally exercise both language profiles; the exact-history
substitution explicitly exercises the current command/v2-history path. Each
failed commit compares canonical head, genesis, records, entity versions,
historical identities and references before and after. An unchanged unmodified
candidate remains committable after the relevant forgery/refusal controls.
Backend call counts and omitted hypothetical I/O failures are not compared.

## Excluded initial fixture error and limits

The initial run in `red/` is preserved. One schema-substitution fixture added a
field without adding it to its creation effect and was correctly rejected by
admission (`CREATE_INCOMPLETE`); that is not semantic RED. The final fixture adds
the required initial field and the schema-mismatch control passes. The missing
typed-read assertions were unchanged.

This checkpoint establishes only reviewed test-first evidence for T024/T027.
It does not close replay, verifier, governance, cache or backend atomicity audit
obligations. Governance candidate tests here use the existing none evidence
policy; a recomputed hash is not claimed to be authentication or authorization.
Subsequent US2 implementation must record GREEN against the retained tests.
