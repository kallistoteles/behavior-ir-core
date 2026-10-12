# Validation and proof-obligation contract

These are prospective cases and evidence requirements, not executed correction
tests. Map every case to its actual collected name, source revision, command/status
and evidence location during implementation. Tests are evidence, not universal proof.

## Case matrix

| Case | Required control/outcome | Requirements / outcomes |
| --- | --- | --- |
| C023-01 | Exact private conformance seed/nine-step orders history: asserting baseline v2 RED, then nine evaluation records/eight commits/head 8 after correction; v1 positive | FR-001/012; SC-001 |
| C023-02 | Actual evaluate/invoke/invoke_intent producer output, not handcrafted codec fixtures: empty/no-query/single/multi/mixed observations round-trip under matching profiles | FR-002/007/011; SC-002 |
| C023-03 | Required hashes for empty/nonempty memberships; independent domain vectors; wrong canonical digest, wrong domain, malformed/non-string/missing hash rejected at v2 boundary | FR-003/004; SC-003 |
| C023-04 | Unknown/missing/wrong-typed root/query/capture/member/edge/field content rejected; bundle universe refused; ordinary Facts still refuses result_hash | FR-003/005/006; SC-003/004 |
| C023-05 | Raw duplicate keys at root/nested/escaped/equal-value locations rejected before map reduction; independently collected raw-string cases | FR-006/014; SC-003 |
| C023-06 | Duplicate semantic keys/captures/members and noncanonical supplied order rejected without repair; normal backend enumeration reordering still produces canonical equal evidence | FR-003/006/010; SC-003/005 |
| C023-07 | Exact projected Facts equals original observed Facts; original candidate JSON/hash/signature subject unchanged; mutable public bundle cannot reuse an old checked candidate | FR-007/009/011; SC-002/004 |
| C023-08 | Invalid v1 hash raw decoding equals baseline, then commitment rejects; competing store/transition/parent/time/schema defects and activated performed backend failures retain phase/category/precedence | FR-003/004/009/013/014; SC-004 |
| C023-09 | Fabricated members with correct rehashed local result and resealed candidate pass local integrity but fail historical rederivation; freshly signed governed variant also refuses; no publication | FR-008/013/014; SC-003 |
| C023-10 | Required v2 authenticated query history with exact candidate/policy/context signatures; missing/wrong/reused authorization refuses; require:none reproduction remains separate | FR-001/008/013; SC-001/004 |
| C023-11 | Every actual supported bundle/candidate cell and bound historical H01–H03 control retains its recorded profile/custody; K01/K02 codec controls are not promoted to historical events; upgrade/unsupported/mismatched products remain refused | FR-009/011/013; SC-002/004 |
| C023-12 | Both scoped wrapper schemas accept actual mixed producer/candidate/bundle output and valid current-v2 archives; malformed shape/digest syntax rejects; local wrong digest equality remains runtime obligation | FR-002/003/004/009/011; SC-002/003/004 |
| C023-13 | Existing nine read support rows, ordinary non-query facts/action controls, historical refusal/read replay and 017/018/022 regression suites retain meaning | FR-005/009/013; SC-004 |
| C023-14 | Actual prepared v2 migration candidate with {} observations and legacy migration controls round-trip; nonempty migration facts/query domain remains refused | FR-003/009/011; SC-002/004 |
| C023-15 | Same-profile indexed/unindexed/reversed execution compares complete records/observations/bundle or candidate identities/history/content/refs; adapter activation proves paths differ | FR-010/013; SC-005 |
| C023-16 | Supported facade and CLI candidate authorization, archived recovery/replay and committed command-stream consumers retain checks; exact Git consumer and CLI/fixture identities bound to final frozen source | FR-008/009/011/016; SC-002/004/006 |

Negative local tests must be independently collected or individually executable;
one currently failing positive must not hide their assertions. Recompute unrelated
enclosing identities where required so each failure reaches its intended obligation.
Conversely, an outer hash mismatch alone is not evidence that query integrity works.

## First RED and authorization fixtures

Prefer a private `conformance/query_bundle_evidence_tests.rs` module using parent
helpers directly: `orders`, `orders_seed`, `orders_history`. This preserves the
exact reproducer without a public testing hook or copied semantic implementation.
Do not substitute the integration common orders seed, which differs.

The faithful RED uses v2 require:none with no evidence, matching the retained
diagnostic. Eight commits are expected from nine evaluations. Fail specifically
at the existing candidate `invalid observed facts` refusal; a compile error,
fixture error, signature failure or timeout is not the bug's RED.

The required-governance control uses existing policy-none execution policy with a
required enclosing evidence policy, context-unbound fixture and authorizer key.
It authorizes/signs the exact orders candidate and uses commit_with_context;
policy-none does not waive required authorization. A test helper must accept the
actual module rather than hardcode ledger. Record authenticated trust evidence.
Use a test-owned authorized runner over the same steps; the original parent
orders_history/apply helper uses ordinary commit without evidence/context and
cannot itself establish this required-authentication control.

Register the private regression module with cfg(test) in conformance.rs; preserve
all existing shared conformance case registration. Later codec/schema increments
also require compiled asserting failures before their behavior is implemented.
Compiler/missing-module errors do not establish any behavior's RED.

## V1 baseline characterization

Before production edits, generate a real v1 query bundle and mutate its read_facts
only. Characterize correct/wrong/malformed/wrong-domain/non-string/missing digest
documents with CommitBundle::from_json, then the original commit path. Preserve
the observed baseline decoding outcome, not an assumed universal early rejection.

Pair invalid query hashes with earlier genuine defects and actual read failures:
Store/transition identity, expected parent, stale head, invalid time, declaration
claims and activated record/head reads. Record phase/code/selected cause and no
publication. An uncalled hypothetical failing Backend::commit is not a required
operational outcome to reproduce.

Existing query_replay malformed-hash history must still reach its original replay
boundary. No new hash check is inserted into v1 structural hashing for cleanup.

## Proof obligations

| ID | Claim | Required construction/code evidence | Executable evidence |
| --- | --- | --- | --- |
| P023-01 | Ordinary Facts and bundle evidence are distinct domains | Closed private products; ordinary parser unchanged | C04/C07, ordinary hash-field refusal |
| P023-02 | Ambiguity cannot disappear before checking | Existing strict raw decoder; no lossy entry path promoted to checked status | C05 raw duplicate controls |
| P023-03 | Each required result hash matches canonical members | One existing tag/algorithm; checked digest syntax/equality; no defaulting | C03 independent vectors, positive/negative mutations |
| P023-04 | Canonical/unique facts cannot be silently repaired | Compare keys before map/set insertion; owned validated type | C04/C06 order/duplicate controls |
| P023-05 | Projection is exact and claim identity unchanged | Projection available only after validation; original JSON retained | C02/C07 equality, mutation and identity controls |
| P023-06 | Complete v1 pipeline is observationally preserved | No new codec in legacy phases; original schedule/precedence preserved | C08 baseline decode/commit/error/operational comparisons |
| P023-07 | Local integrity does not replace historical truth | Existing exact rederivation/equality remains mandatory | C09 correctly rehashed forged members refuse |
| P023-08 | Local integrity grants no authorization/publication | Existing policy/context/signature/CAS/lifecycle/child checks and dispatch boundary unchanged | C09/C10/C16; head/history/entities/refs/commands unchanged on refusal |
| P023-09 | Every supported scoped producer has a corresponding consumer | Complete path/cell inventory and per-profile valid-domain argument | C02/C11/C14/C16 generated actual output |
| P023-10 | Current wrapper schemas describe bundle domain without rewriting other profiles | Two scoped refs/definitions; legacy/ordinary/witness products protected | C12 valid producers/archives and shape negatives |
| P023-11 | Index choice/enumeration is not semantic | Same producer and canonical identities independent of optional index paths | C15 complete outputs plus adapter activation |
| P023-12 | Delivery evidence identifies actual immutable source | Genuine test-only RED custody; frozen source/CLI/consumer/fixture identity and unchanged checkout | C01 collection/failure; C16 required gates and exact revision receipt |

The targeted re-audit must classify each premise as construction/code invariant,
empirical evidence or remaining assumption. Do not mark a universal law proven
solely because bounded generated cases pass. V1 pipeline equality follows by
composition only when actual decoder and commit preservation are established.

## Mutation and failure controls

Use separate disposable source copies and isolated Cargo targets for mutations;
never contaminate official outputs. After the normal positives pass, designated
controls must detect dropping/ignoring result_hash, projecting before validation,
hashing the wrong member representation/domain, permissive unknown fields,
normalizing duplicate/order defects, removing historical comparison, or applying
the v2 codec to v1 decoding. Record activation and intended assertion failure.

Refusal checks compare authoritative pre/post head, bounded history/events,
entity versions/lifetimes, incoming references and committed command occurrences,
and observe that no Backend commit happened. They do not claim every physical
backend is honest or re-audit all 019 durability assumptions.

## Completion and revision custody

Keep discovery, test-only RED, working GREEN, independent targeted review and final
exact-revision validation separate. Each retained run identifies repository, source
revision/tree or working manifest, test-file digests, commands, collection/output,
exit statuses, environment/toolchain and artifact locations.

Finalize implementation, fixtures, reports and task bookkeeping, commit/push, then
freeze the delivery candidate. Required gates and exact Git consumer checks run
against that unchanged source. Store the final receipt externally or in revision-bound
CI; do not embed a containing commit's final SHA in its own tracked report. A later
tracked change, merge/squash/rebase/release revision needs fresh applicable validation.

SC-006 closes only this targeted boundary when all required evidence passes. Full
016 audit closure, unrelated findings and all v2 Store conformance are not inferred.
