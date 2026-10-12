# US2 Store truth, publication and mutable claim evidence

This is working-source evidence for T026/T027, not final revision validation or a
claim of complete Store conformance. The production codec had already passed the
US1 checkpoint before these characterization/adversarial tests were authored.
They found no further correction requiring a RED→GREEN source change.

The collected target is
`crates/behavior-store/tests/strict_bundle_evidence.rs` (seven tests). Collection
and execution both exited 0 with 7 passed, 0 failed and 0 ignored. The retained
run is `/home/kalle/validation-receipts/core023/us2-store/receipt.json`, with
`collection.log`, `collection.status`, `tests.log` and `tests.status`. The receipt
binds the producing HEAD, explicit dirty working-source digests before/after,
test/helper/fixture/production identities, commands and pinned-toolchain receipt.
All recorded source digests were unchanged throughout the run.

Commands used the pinned Nix environment with `CARGO_BUILD_JOBS=2`,
`CARGO_PROFILE_DEV_DEBUG=0` and `CARGO_PROFILE_TEST_DEBUG=0`:

```bash
nix develop -c env CARGO_BUILD_JOBS=2 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-store --test strict_bundle_evidence -- --list
nix develop -c env CARGO_BUILD_JOBS=2 CARGO_PROFILE_DEV_DEBUG=0 CARGO_PROFILE_TEST_DEBUG=0 cargo test -p behavior-store --test strict_bundle_evidence -- --nocapture
```

## Actual producer and independent trust obligations

Both forgery controls start with actual `Store::evaluate` output for
`place_order` on the admitted Wire 0.6 orders fixture and fresh v2 Store. The test
changes an actual query's members, recomputes the historical
`behavior.query_result.v1` member-object hash and rebinds the complete candidate
transition identity. The newly consistent claim passes GovernanceCandidate
construction, checked raw CommitBundle decoding and bundle hashing.

| Collected test | Observation |
| --- | --- |
| `locally_consistent_forged_members_cannot_publish` | Require:none accepts the locally consistent envelope but rejects its fabricated historical observations. The unmodified actual producer independently commits. |
| `freshly_authorized_forged_members_cannot_publish` | A fresh signature binds the exact admitted orders module and fabricated candidate, and checked evidence attaches successfully. `commit_with_context` still rejects historical falsehood. The unmodified producer separately obtains exact authorization and commits with `evidence_trust: authenticated`. |

Both refusals select the existing, exact outcome:

```text
BUNDLE_INVALID: the read facts are not the ones the evaluation observed at the parent
```

The backend's performed publication count remains zero at refusal. Complete
before/after snapshots include immutable genesis, head, bounded records and
memberships, revisions and lifetime use/removal, all known incoming-reference
views, committed command fields, and the complete in-memory backend debug state
(including derived indexes). No state/history/reference/command authority changes.
Each independent positive increments publication count to one and reaches head 1.
The earlier checks therefore have not been replaced by a generic unreachable
failure or disabled backend mutation.

## Ownership and public mutable bundles

| Collected test | Observation |
| --- | --- |
| `checked_candidate_preserves_original_claim_and_cannot_certify_a_mutation` | A previously checked opaque candidate retains exact JSON and identity. Mutating the public bundle's members without updating integrity refuses at the deterministic query-hash path, and checked hashing refuses too. |
| `checked_raw_bundle_hash_rejects_a_stale_candidate_identity` | A newly locally valid mutation has a distinct adapted candidate identity. Restoring its old public transition hash causes `BUNDLE_INVALID: v2 candidate identity differs`; checked raw decoding also refuses. |
| `trusted_attachment_rechecks_local_integrity_after_public_bundle_mutation` | Existing authenticated attachment does not cache validity: subsequent digest mutation is rechecked by the adapter/attachment and hash path, selecting the query-hash cause. |
| `old_authorization_cannot_attach_to_a_new_locally_valid_claim` | Recomputed local integrity cannot reuse a signature for the previous candidate. Attachment selects `EVIDENCE_MISMATCH`; the original authorization/signature subject remains unchanged. |
| `raw_candidate_projection_keeps_every_original_integrity_field` | Raw checked candidate consumption preserves every original claim field and candidate identity, including query result hashes. |

The deterministic local mismatch message includes
`read_facts.queries[0].result_hash: result hash differs from canonical members`.
No test asks unchecked structural convenience APIs to become strict consumers.
In particular, existing legacy `with_evidence` construction is not redefined.

These tests distinguish local integrity, issuer authentication, historical truth
and publication. Their finite empirical controls support those separations; they
do not prove every external Backend's physical durability or universal kernel
correctness. Isolated mutation killing and final revision-bound gates remain
coordinator-owned subsequent tasks.
