# US2: Strict Verify bundle evidence controls

T021–T024 extend the existing public-candidate test target with individually
collected cases. These are **crafted local boundary controls**, not historical
producer captures, successful Store commits or authority evidence.

## Run custody and result

- Repository: `/home/kalle/repos/behavior-ir-core-023`.
- Base revision: `f4641b933a3f5bd65a308623a99895d7ee1a75fb` plus the working source recorded by SHA-256.
- Test source SHA-256:
  `10203d968966cce98eb3ec6243d52b97113c32369863252d91ff0e8620e0a8f8`.
- Exact source/helper digests, pinned resource flags, command arrays, collection,
  all **145 unique test names**, output and statuses:
  `/home/kalle/validation-receipts/core023/us2-verify/`.
- Commands: `cargo test -p behavior-verify --test strict_bundle_evidence -- --list`
  and `cargo test -p behavior-verify --test strict_bundle_evidence -- --nocapture`,
  both in `nix develop`, jobs 2 and development/test debug info disabled.
- Collection exited **0**. Suite exited **0**, with **145 passed, 0 failed,
  0 ignored**. This includes the original 16 T011 controls.

The first expanded trial is preserved under `migration-expectation-trial/`:
144 collected, 143 passed and one assertion failure. That assertion incorrectly
expected a later migration-empty check; the existing action-only integration
correctly preserves migration's earlier `invalid observed facts` refusal for a
bundle-only result hash. Only the test expectation was corrected. This is not
reported as a production defect or a new implementation RED. **No production
correction was needed for T021–T024.** T011 retains the actual pre-correction RED.

## Independently executable coverage

| Obligation | Named controls and evidence |
| --- | --- |
| Result membership and domain integrity | `changed_members_do_not_reuse_previous_result_hash`, `wrong_digest_with_correct_members_is_refused`, `different_hash_domain_cannot_attest_query_membership`, `bare_id_array_hash_cannot_attest_member_objects` |
| Exact digest syntax/type/presence | Uppercase digest/prefix, short/overlong/nonhex, numeric/null and required missing hash tests select `INVALID_CANDIDATE` with `read_facts.queries[0].result_hash` |
| Membership-only hash semantics | `distinct_query_instances_with_identical_membership_share_result_hash` accepts different definitions/captures and preserves the original candidate |
| Closed root and all products | Separate unknown, required-field, wrong-type and nonobject tests for existence, identities, reference targets, edges, queries, captures, members and fields |
| Observed versus supplied domain | `universe_is_not_a_candidate_observed_section` rejects root universe; ordinary Facts source is unchanged |
| Presence versus null | Missing capture/field value refuses; explicit null accepts; optional root sections may be omitted or explicit arrays, never null |
| Canonical values without new restrictions | Nested JSON and signed/unsigned integer bounds accept; `empty_semantic_strings_do_not_gain_new_length_restrictions` remains accepted locally |
| Raw ambiguity before map reduction | Raw whole-document/root/nested/escaped/equal-value duplicate keys go directly to `GovernanceCandidate::from_json` and select existing `INVALID_GOVERNANCE_DOCUMENT` |
| Numeric lexical restrictions | Raw floats, integral decimals, exponent notation, negative zero and integers outside signed/unsigned JSON bounds select the same raw-document category |
| No semantic-key repair | Every section, edge, instance, capture and member has a duplicate/refusal control; same-key different-value objects refuse even with fresh enclosing identities and matching member hashes |
| No order repair | All collection orders refuse noncanonical input; tuple controls check entity before id and id before field; independent positive tuples accept those semantic orders |
| Empty/migration compatibility | Empty action root/sections accept; crafted empty migration accepts, but explicit section and query-bearing migration remain unsupported at existing boundaries |

`canonical_all_sections_fixture_is_independent_positive_control` separately
executes the common otherwise-valid document used for shape/key mutations.
Every local refusal reseals its enclosing candidate identity, requires the exact
existing category and the expected cause/path, and repeats decoding to compare
diagnostics. Raw tests splice text without first reducing it to a JSON map;
their lexical failure necessarily precedes candidate identity validation.

## Limits and handoff

Local accepted integrity is not evidence of historical observation truth,
authentication, authorization, complete child validity, concurrency or publication.
Those independent Store controls belong to T025–T029. Backend enumeration reversal
is not confused with malformed supplied collection order. The local suite adds no
new public API, dependencies, v1 validator call, ordinary Facts field or record
format. The working source is held stable for joint T029 and mutation evidence;
final exact-revision gates remain separate.
