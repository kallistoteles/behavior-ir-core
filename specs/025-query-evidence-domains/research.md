# Research: Query Evidence Domain Consistency

## Baseline and executed research

**Decision:** Reuse 023's implementation of dedicated strict Bundle Evidence decoding (alternative A). Deliver contract consolidation and only the missing regression coverage. No production change is currently justified.

**Rationale:** Fetched `origin/main` and the owning checkout both identify `634023a6d504bac927192c964d945c7025b467c4`. The issue-specific public-engine reproduction passes all five specified rows through both `Store::invoke` and frozen `Store::evaluate` followed by commitment: **10/10 executions**. The existing strict bundle, ordinary schema, historical compatibility and private projection targets additionally pass **214 tests**. One existing ignored test is the explicitly opt-in fixture-capture writer, not an unexecuted acceptance case.

The temporary external consumer depends only on `behavior-engine` from this checkout and `serde_json`. It uses Legacy/Wire 0.7/v1 for R1/R2 and CommandIntents/Wire 0.8/v2 with `require: none` for R3–R5. Each row starts a fresh Store with one User and one Doc. Assertions establish ALLOW, no publication during evaluation, typed bundle equality after checked round trip, v2 candidate preservation, recorded empty query membership and its existing hash, resulting Mark values, one committed history advance and equality of the archived authoritative bundle. Plain `Id<T>` fields retain identity-only semantics and do not create reverse `Ref<T>` edges.

[Planning validation](evidence/planning-validation.json) records commands, statuses, toolchain, source identity, row/check scope and the local receipt seal. Full probe source, locked manifest, modules, output documents and logs remain under `/tmp/core025-planning-probe/`. Receipt SHA-256 is `82910d47bbf635ce16cab683d880468851bb2d755dfe002d53d4869073a9d20c`. Before/after SHA-256 checks establish that all **4,635 existing tracked files** remained unchanged. This is research evidence on the stated source, not a permanent regression, universal proof or validation of an eventual delivery SHA.

Two temporary-probe mistakes are excluded from defect evidence: initial Wire 0.8 inputs lacked the mandatory `reads` array; an added reference oracle incorrectly expected plain `Id<T>` fields to form `Ref<T>` edges. Both were corrected against the existing format/006 contracts before the sealed successful run. Neither is a RED for #24.

**Alternatives considered:** Assume the issue still fails on main; modify Core first; substitute the existing Orders workload for the exact Mark reproduction; or stop 025 when the reproduction passes. All conflict with the accepted clarification or evidence discipline. The report's claim about `634023a` was not reproduced in these ten exact-current-source cases. No claim about rerunning the published 0.12.0 binary is made.

## R1 — Domains and canonical equality

**Decision:** Define admissible ordinary values as the six-family finite partial observation product under existing invariants, and candidate evidence as its own format/profile-specific domain. Preserve the existing codecs and private representation; add no public type or export.

**Rationale:** [Facts](../../crates/behavior-core/src/facts.rs) defines six maps and a closed parser. Ordinary queries permit `instance`, `definition`, `entity`, `captures`, `members`, excluding `result_hash`. [The private bundle product](../../crates/behavior-verify/src/governance/trusted/bundle_evidence.rs) permits five optional arrays, excluding `universe`, and requires `result_hash` for every present query. Action candidates use this boundary. Migration candidates instead retain their own ordinary check followed by the exact `read_facts == {}` rule.

Admissibility is narrower than arbitrary mutation of a public Rust `Facts` value: member/reference vectors must obey their existing uniqueness/canonical conditions and supplied universe identities must be coherent. Ordinary capture arrays retain their existing supplied sequence; the ordinary parser does not acquire Bundle Evidence's stricter sorted/unique capture-read rule. Round-trip equality compares the typed observation value, not section spelling or whitespace. Omitted family arrays and explicit empty family arrays represent the same empty map. An omitted query instance differs from a present instance with empty members; an omitted universe type differs from a supplied complete empty universe for that type. Bundle section-presence information can be retained in its typed optional arrays/original claim without becoming a new semantic fact.

**Alternatives considered:** Equate all JSON objects containing facts; make ordinary parsing accept optional integrity fields; require raw JSON equality where canonical normalization is intentional. These erase or misstate the existing contracts. See [data-model.md](data-model.md).

## R2 — Architecture selection and compatibility

**Decision:** Select alternative A by reusing `ValidatedBundleEvidence`; preserve the existing wire format, schemas, candidate claim and projection.

**Rationale:** Candidate raw decoding rejects ambiguous object keys before reduction. The private codec checks closed products, required fields/types, canonical increasing keys and local query integrity before its consuming projection constructs ordinary Facts. The original candidate JSON is retained independently, so projection cannot rewrite the signed/hashed claim. Existing tests already compare independent inner-record observations and all 39 actual producer captures.

| Criterion | A: reuse existing dedicated boundary | B: separate integrity metadata |
| --- | --- | --- |
| Semantic meaning | Existing observations and checks unchanged | Private rearrangement could preserve meaning but needs a new equivalence argument |
| Historical compatibility | Existing profile dispatch retained | A distinct serialized component requires explicit versioning/dual interpretation |
| Integrity obligations | Existing complete hash check before v2 projection | Must reconstruct and prove every relationship again |
| Canonical identity | Existing bytes, hashes and signature subjects retained | Wire relocation changes candidate bytes/hash/signature subjects |
| Validation phases | Existing v1/v2 schedule retained | Sharing/rearrangement risks moving deferred v1 checks |

A private-only version of B would avoid wire changes but still replace compliant machinery without a demonstrated benefit. A wire-level version of B is outside this consolidation's selected design. No schema, codec, hash-domain, API/export, dependency or ecosystem-pin change is planned. The [existing 023 support matrix](../023-strict-bundle-evidence-validation/contracts/support-matrix.md) remains the source for supported S01–S09/PC01–PC20, including historical custody labels.

## R3 — Hash consistency versus observation truth

**Decision:** Retain the exact query-result hash payload and independently enforce semantic/history validity at the existing Store boundary.

**Rationale:** Producer `store.rs::facts_json` and private bundle validation use the existing domain-separated SHA-256 construction:

`sha256:lowerhex(SHA256(UTF8("behavior.query_result.v1") || 0x00 || UTF8(CanonicalJSON(M))))`

`M` is the canonical sorted unique array of member objects `{"id": ...}`. Query definition, instance, captures and full entity values are not added to this payload. Query instance identity separately binds definition/captures under `behavior.query_instance.v1`. Exact Store rederivation compares the complete observed evidence at the evaluated parent; a matching result hash does not validate a substituted definition, capture or history.

**Alternatives considered:** Hash the whole query; trust syntactically valid hashes; strip metadata before checking it; require the local decoder to prove state-dependent truth without the module/history. Each changes or weakens the established contract. Existing locally consistent and freshly authorized forged-member tests already preserve refusal and zero publication.

## R4 — Refusal phases and historical support

**Decision:** Preserve v1 structural decoding followed by commit-time integrity/history checks, and v2 strict candidate integrity before projection. Keep action, migration, ordinary witness and read contracts distinct.

**Rationale:** `CommitBundle::from_json/hash` dispatches by recorded format. V1 bad/missing/malformed result hashes retain their historically decodable outcome and fail later through exact Store comparison. V2 action hashing/candidate construction uses the private integrity boundary. Migration evidence must be exactly empty. Replay uses recorded profiles and rederives observations where its contract requires it. Existing sixteen v1 baseline/precedence cases and genuine H01–H03 archives provide reusable controls; constructed K01/K02 wrappers remain labeled codec controls, not fabricated historic Store events.

**Alternatives considered:** One strict decoder for every version, new query-bearing migrations, treating read-record v2 as Store-v2, or promoting archival signatures to fresh authority. These silently expand support or move an observable refusal. See [contracts/validation-phases.md](contracts/validation-phases.md).

## R5 — Concrete coverage delta

**Decision:** Reuse 023/024 closure, shape, hash, historical, projection, signed-forgery, replay and support-route suites. Add only the exact public Mark regression and isolated live candidate controls for N05–N07.

**Rationale:** Existing public facade tests use Orders, and existing 246-case producer coverage already includes evaluate/invoke/invoke_intent across supported versions/policies. Neither is the exact User/Doc/Mark R1–R5 public reproduction. The temporary research probe establishes those ten cases work now but is not a checked-in regression.

Existing Verify tests reject malformed/missing/duplicate instance/definition/capture shapes; 022 tests exercise unknown definitions/missing captures during snapshot replay. Neither establishes the isolated live-v2-candidate phase for a well-typed false instance, definition/entity binding or capture with locally valid member integrity. Extend the existing Store test target using its `query_setup`, `locally_accepted` and `authority` helpers. Keep ordering and hashes valid, reseal the enclosing identity, prove local acceptance, then assert the existing exact read-facts mismatch at commit, zero commit calls and unchanged authoritative state. Retain a genuine positive counterpart. Three named controls can contain separately labeled definition/entity subcases.

These additions are preservation/conformance controls expected to be green. Do not invent a failing preimplementation state or change production to manufacture one. Any newly demonstrated production violation requires a real test-first failure before a narrowly scoped correction; unresolved profile/identity/phase changes stop implementation under the spec's proof-obligation gate.

**Alternatives considered:** Duplicate large closure suites, regenerate fixtures, generalize a new test framework, add another full Mark matrix for `invoke_intent`, or edit production without a violation. Existing shared routes and coverage make those unnecessary. See [contracts/coverage.md](contracts/coverage.md).

## R6 — Proof obligations and evidence classification

| Obligation | Established planning basis | Classification and limit |
| --- | --- | --- |
| PO-001 | Six ordinary maps; five bundle arrays; exact-empty migrations; explicit supported cells/routes | Inspected closed products and documented contract; no arbitrary Cartesian support |
| PO-002 | Existing canonical serializers/checked consumers and owned projection; current actual-producer tests pass | Construction argument plus bounded executed cases, not universal test proof |
| PO-003 | Closed products, raw-duplicate, order/uniqueness and ordinary-hash-leakage controls pass | Code invariant plus executed controls |
| PO-004 | Existing result tag/payload and syntax/equality checks; forged-member local-versus-commit distinction | Code invariant plus executed controls; cryptographic collision resistance remains assumed |
| PO-005 | Selected design changes no evaluator/query/transition code | Preservation by reuse; current positive and semantic-tampering controls support covered cases |
| PO-006 | No wire/hash/profile/schema change selected; historical compatibility targets pass | Preservation by reuse plus actual current checks; retained archive custody is not regenerated |
| PO-007 | Distinct v1/v2 dispatch; 30 Store historical controls and strict v2 tests pass | Code invariant plus executed phase/category/precedence assertions |
| PO-008 | Temporary consumer uses only the public engine and both candidate routes; 10/10 pass | Executed public-source reproduction without Approval or a workaround |

All eight obligations have a design-level disposition sufficient for the selected consolidation. The known remaining work is permanent coverage and evidence mapping, not an unresolved semantic contract. SHA-256 assumptions, signature trust, admitted-query correctness and conforming backend/history behavior remain the unchanged assumptions of their owning components. No arbitrary-backend durability or whole-Core soundness proof is inferred.

## R7 — Delivery evidence and workflow

**Decision:** Keep planning research distinct from implementation/final delivery assurance. Freeze one pushed delivery candidate only after tracked documentation/tests/reports are complete; run the existing canonical gates and exact-Git consumer check against that unchanged candidate and record final completion externally.

**Rationale:** Updating tracked checkboxes/reports after exact-revision checks changes the revision they attest. Existing 023/024 receipts remain immutable provenance and cannot silently attest a new merge/release SHA. Reuse test targets and prior evidence with honest attribution; execute final owning-revision checks as required by the constitution. No release/tag, merge, ecosystem pin or Approval edit is part of this planning command.

**Alternatives considered:** Reuse old passing logs as current-SHA evidence; edit a frozen report after validation; run final consumer tests against an unrelated CLI/fixture checkout. These break source/consumer identity. The established interfaces remain `nix develop -c scripts/gates.sh` and `nix develop -c scripts/check-consumer.sh --rev <exact-pushed-sha>`.
