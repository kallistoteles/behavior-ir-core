# US1 runtime checkpoint

The correction uses a private closed BundleEvidence product and an owned
ValidatedBundleEvidence in Verify. Product presence/type checks precede typed
decoding (missing value differs from explicit null). Strict semantic-key checks
precede Facts map/set construction. Each required result digest is verified
against the unchanged canonical member-object algorithm. Only validated evidence
can project into the unchanged ordinary Facts parser. The original candidate
claim and identity remain intact.

The existing query-result domain is shared in Verify hashing; Store retains its
constant name/value as an alias. Its producer function body is unchanged. The
new codec is selected only by the v2 action candidate boundary. Migration and
legacy decode/commit/replay paths retain their existing schedule.

## Executed custody

- [first-red.md](first-red.md): clean test-only revision `f4641b9`, actual status101
  at invalid observed facts, head0.
- [verify-boundary-red.md](verify-boundary-red.md): 16 collected local tests;
  pre-correction 2 pass/14 asserting failures, before source correction.
- `/home/kalle/validation-receipts/core023/hash-vectors/receipt.json`: two
  independent fixed historical vectors passed before sharing the domain constant.
- `/home/kalle/validation-receipts/core023/us1-green-03/receipt.json`: exact
  working source/test digests, collection and all six command statuses zero.
  Verify boundary16, private workload7, hashing6 and baseline compatibility16
  pass; none ignored. These are working-source results, not final-SHA assurance.

The exact v2 regression now completes **nine evaluations, eight commits, head8**.
V1 also completes. Actual empty and nonempty query observations are exercised.
The ledger nonquery control commits. Original v1 baseline outcomes, selected
causes, complete snapshot identities and successful bundle/record identities
match all sixteen retained JSON outcomes exactly (`v1-outcomes.json`).

Index/scan/reversed comparisons are within each profile. Complete deterministic
reference-backend snapshots include genesis, all records/bundles/candidate hashes,
entity versions/lifetimes, reference and field indexes and command evidence.
Fresh Store action evaluation uses a complete snapshot and does not call the
optional field-index provider. The control therefore also executes the existing
StoreFacts provider with an admitted query read, asserts actual index hits and
fallback probes, and compares its complete read record. Backend reversal is
nontrivial and asserted. No v1/v2 byte equivalence is required.

The entry protected manifest comparison found only the five authorized tracked
source/test differences; ordinary Facts/evaluation, legacy documents/replay,
schemas/fixtures/facade/dependencies remain exact. New private source/tests are
identified separately.

## Retained intermediate attempts

`us1-green/` retains an incorrect nonquery characterization: renumber also checks
the orders module's query-dependent invariant. It was replaced with the genuine
ledger nonquery control. `us1-green-02/` retains the initial activation assertion
which incorrectly expected snapshot-backed actions to call an optional index.
The corrected test explicitly exercises StoreFacts, as the owning existing
query_order_props control does. These are test setup/characterization corrections,
not additional semantic corrections or genuine pre-implementation bug REDs.

US2 adversarial, authority and history checks, US3 historical compatibility, US4
complete actual producer/projection/schema/consumer coverage, mutation review
and final immutable gates remain pending. This checkpoint claims no release,
full v2 Store conformance or closure of the complete 016 audit.
