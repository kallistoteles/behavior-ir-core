# Contract: Evidence validation and historical phases

This contract consolidates existing public behavior. It does not change the interpretation or enforcement phase of any recorded profile.

## Boundary responsibilities

| Boundary | What acceptance establishes | What remains separate |
| --- | --- | --- |
| Ordinary Facts checked decoder | Closed six-family typed observation representation and its existing internal consistency checks | Truth against admitted query/state/history, enclosing subject/signature/governance |
| Reduced `documents::decode<T>` convenience | Structural deserialization of the supplied value | Raw key uniqueness, full checked versioned integrity and trust; not a trust boundary |
| V1 checked bundle decoding/hash | Existing raw structure and recorded version's identity checks | Historically deferred query-integrity and exact-parent checks at commit |
| V2 action candidate checked decoding | Raw key uniqueness, closed evidence shape, canonical unique collections and required result hashes before ordinary projection | Observation truth, exact Behavior/Store/history, child validity, authorization, concurrency/publication |
| Migration candidate | Its existing strict fields plus exactly empty observed facts | Full source/target/transformation/report/history/authorization obligations |
| Store live commit | Existing exact rederivation, evidence comparison and policy/history checks through the applicable schedule | Backend/CAS/durability assumptions remain with their owning contract |
| Historical replay/recovery | Existing data or Behavior interpretation under the recorded profile and route | No fresh authority is inferred from successful historical decoding |

## Phase-preservation rules

1. V1 malformed/wrong/missing query hashes retain the established structural decode outcome where historically decodable, and fail commitment through exact observed-evidence comparison. Preserve the original phase, category and precedence rather than adding a v2 check to the v1 decoder.
2. V2 action candidates validate required local integrity before the private consuming projection. Reject a bad/missing required hash as `INVALID_CANDIDATE`, exposed as the existing Store `BUNDLE_INVALID` where applicable.
3. A well-typed false instance, definition/entity or capture can be locally well formed with valid member integrity. The local decoder has no independent live snapshot or admitted query oracle. These claims must still fail exact parent rederivation/comparison at commitment; do not add new local string/hash constraints to force an earlier refusal.
4. Existing Store/transition/parent/head/time/schema/declaration/backend precedence remains normative. A hash test must establish the intended reached boundary, not mask an earlier unrelated defect.
5. Required authorization is independent of result-hash validity. Fresh signatures over fabricated but locally consistent members cannot authorize false history. Failed attempts preserve complete authoritative state and zero backend publication as established by the existing Store tests.
6. Action and migration dispatch remain separate. Migration evidence is exactly `{}`, not an action bundle whose queries are ignored. Required-governance v1 writes and fresh Wire 0.8/v1 commitments retain their upgrade refusals.
7. No ordinary witness/read parser accepts `result_hash` merely because bundles require it. A read-record v2 is not automatically Store-v2.

## Executed isolated semantic controls

The existing Store `strict_bundle_evidence` target now uses its genuine producer and local/authority helpers for:

- **N05:** A well-typed false query instance preserving canonical collection order, correct member hash and consistent enclosing candidate hash.
- **N06:** Wrong definition and entity binding as separately labeled subcases, preserving all unrelated local obligations.
- **N07:** A changed capture read/value from a genuinely captured query, preserving canonical order and valid result integrity.

Each control first establishes local candidate/bundle acceptance. Commitment then retains the existing exact failure:

`BUNDLE_INVALID: the read facts are not the ones the evaluation observed at the parent`

Assert unchanged `authority`, zero `commit_calls`, and successful publication of the independent genuine counterpart. These are additional preservation controls for the existing behavior, not evidence that the current production implementation is defective. Do not normalize a malicious document in production; constructing a locally valid test claim is a test setup operation.

## Historical support and provenance

Reuse the original H01–H03 and labeled K01/K02 controls from [023's matrix](../../023-strict-bundle-evidence-validation/contracts/support-matrix.md) and the independent [018 read matrix](../../018-strict-profile-replay/contracts/support-matrix.md). Retain recorded bytes, profile, signature and capture custody. Do not create hypothetical historical producer output by relabeling current documents or regenerate existing fixtures.

The 30 Store historical tests and 7 Verify compatibility tests passed during this planning investigation at `634023a`. This does not attest a later implementation, merge or release SHA. [Planning evidence](../evidence/planning-validation.json) distinguishes current execution from retained older validation provenance.

## Compatibility decision

The selected design reuses alternative A and makes no production or representation change. Candidate serialization, candidate hashes/signatures, historical v2 interpretation, ordinary Facts serialization, governance envelope interpretation, replay, public schemas and error phase/category/precedence are therefore all preserved by the selected change scope and verified with their applicable controls. New tests/documentation express existing obligations.

Alternative B's wire relocation would change canonical candidate identities and require an explicit versioned compatibility decision; it is not selected. Any future demonstrated gap requiring changed canonical bytes/profile interpretation or moved refusal phase must return to the unresolved-contract gate before implementation. A failing tool invocation or inaccurate test oracle is not such a gap.

The three named `locally_consistent_false_query_*_cannot_publish` tests passed all five labeled N05/N06/N07 cases. [US2 evidence](../evidence/us2.json) binds the execution and exact refusal assertions. Each supplied membership hash remains correct, the locally checked candidate is resealed, full authority stays unchanged and the independent genuine candidate commits. No refusal was moved to local decoding.

## Compatibility axes checked for delivery

| Axis | Conclusion and owning control |
| --- | --- |
| Candidate serialization | Unchanged producer/codec; S typed bundle and original archived equality. |
| Candidate hashes and signatures | Unchanged canonical construction/signing subject; P original claim identity and C exact authorization. |
| Historical v2 interpretation | Unchanged H02/H03 recorded command/signed profiles; no fresh authority inferred. |
| Ordinary Facts serialization | Unchanged six-family parser/serializer and F capture/null/normalization controls. |
| Governance envelopes | Unchanged versioned validation; independent policy, signature, candidate/history binding remain required. |
| Replay/recovery | Unchanged recorded-profile dispatch; SC H01–H03 and C data/Behavior replay controls. |
| Public schemas/API | No public/schema/dependency changes; F schema limits and existing facade/CLI contracts retained. |
| Error category/phase/precedence | SC competing-defect and v1 deferred-integrity cases unchanged; new N05–N07 reach exact live comparison. |

K01's original 0.4–0.6 inner records in constructed wrappers remain labeled codec controls, not claimed historical Store output. K02 distinguishes actual archived 0.7 from actual current 0.8. Independent 018 read versions retain their own support relation. Migration `read_facts` is exactly `{}`; no action/query migration support is added. Same-source executed historical/consumer evidence is recorded in [US4](../evidence/us4.json), with final candidate gates separately pending until the external receipt is sealed.
