# Findings: Core Mathematical Soundness and Code Quality Audit

Audited release v0.12.1: `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. All locations below refer to this
revision. Six confirmed findings remain unresolved. No correction was applied.
A review acceptance confirms evidence and classification; it does not resolve a defect.

| Finding | Category | Severity | Effect | Independent review |
| --- | --- | --- | --- | --- |
| F-INCREMENTAL-001 | S0 | High | Ordinary creation commits an invalid complete child | R-VERIFY-006 |
| F-PERSIST-001 | S3 | Medium | Store rejects supported historical read-v1 replay | R-VERIFY-005 |
| F-TRUST-001 | S3 | Medium | Raw Store read replay accepts contradictory duplicate keys | R-MODEL-004 |
| F-PERSIST-002 | S4 | Medium | Initial creation's failure/recovery contract is underspecified | R-VERIFY-005 |
| F-COORD-011 | S5 | Medium | Public admission-version metadata contradicts decoder | R-MODEL-002 |
| F-QUALITY-001 | S6 | Low | Fallible canonicalization silently defaults to empty text | R-VERIFY-004 |

## F-INCREMENTAL-001 — ordinary creation can commit an invalid complete child

**Claim and reason.** Let the valid parent be `S={E#e0}` with `e0.target="new"`
and the rule `C(e,S)=not exists_S(e.target)`. Create `E#new` with
`target="absent"`. The created row is valid and fresh; the unchanged row becomes
invalid because `exists_S'(new)` is true. Checking only changed/created rows
cannot establish `∀e∈S': C(e,S')`. The plain `Id<E>` is not a Ref; no removal or
identity reuse is involved. A successful ordinary commit followed by refusal of
the next read violates **G3**, rather than preserving validity through cache eviction.

**Authority and code.** PRINCIPLES' valid-transition formula and complete child
validity in 013/014/015 are normative. Core `eval.rs:2232` supplies the complete
snapshot checker, but ordinary `run_transition` at `:3229–3340` checks bound and
created outgoing rows plus affected global invariants. Store `store.rs:2782`
validates the parent; `:2340–2377` commits. The dependency guard at
`store/incremental/dependency.rs:43` correctly refuses this nonlocal case;
`incremental/mod.rs:21–27` selects the existing full/fallback ordinary route.
This is not a false selected child certificate or unsafe locality exception.

**Executed evidence.** [E-INCREMENTAL-002 run and exact test-only overlay](evidence/runs/INCREMENTAL/child-validity-red/run.json)
compiled and ran one legal InMemoryBackend test. Parent and commit controls passed,
head reached position1, unchanged e0 still targets new and that identity exists.
The independent final predicate at source68 failed; the subsequent complete read
also returned STATE_INVALID. Exit101: 0 passed, 1 failed. The final oracle directly
checks membership and the concrete constraint, rather than sharing the full validator.
[E-INCREMENTAL-004](evidence/runs/INCREMENTAL/nonlocal-characterization/run.json)
passes the existing characterization of this invalid-child behavior; that positive
characterization is not a validity proof. [E-INCREMENTAL-003](evidence/runs/INCREMENTAL/baseline-oracles/run.json)
executes the independent full-child oracle and guarded local property corpus.

**Scope, severity and review.** S0/High: a legal ordinary operation makes invalid
state authoritative. Demonstrated on v0.12.1 creation/nonlocal row rules; exact
introduction and analogous update/removal defects are not established. No false
PROVEN verifier result is fabricated. Prior F-COORD-010 aliases this finding.
Full source/authority/provenance and fields are in the
[originating submission](evidence/fragments/INCREMENTAL/findings.md);
[different-person R-VERIFY-006](evidence/reviews/MODEL/incremental-finding.md)
accepts actual controls, digests, oracle independence and S0/High classification.

**Proposed correction, not implementation.** Group RC-001: discharge complete
unchanged-row child obligations at the ordinary commit boundary. The smallest
conservative candidate is complete child reference validation for obligations
not covered by an established affected-row proof, retaining justified local
optimization. The implementation contradicts the existing complete-validity
contract; redefining validity as touched-row validity is not a correction.
Changed refusal/commit behavior requires explicit error-phase and versioning
assessment and preservation of historical evaluation/replay/record bytes.
016 FR-044 requires later approval for the specific correction.

## F-PERSIST-001 — Store replay substitutes current read profile for historical v1

**Claim and reason.** Supported historical Wire0.8 read_record.v1 replay succeeds
standalone but Store-backed read and inner-invocation replay choose current v2.
The same state/schema/request consequently gains current `facts` evidence and
fails equivalence. This violates **G4/G7**, not the current v2 evaluation rule.

**Authority and code.** Historical preservation is explicit in
`docs/soundness-remediation.md:21–31` and Core `read.rs:140–177` recorded-profile
selection. Store `store.rs:1437–1477` calls current `self.read` at1466–1474;
`:1480–1536` calls current `self.invoke` at1513–1516. Core's historical read
compatibility controls are `tests/read_soundness.rs:142–191`.

**Executed evidence.** [E-PERSIST-004 run](evidence/runs/PERSIST/replay-v1-red/run.json)
compiled and ran two test-only overlay cases. Valid seed/schema/genesis coordinate,
current-v2 Store replay, standalone-v1 replay and unchanged-head checks all passed.
Only final Store historical equivalence assertions at source50/86 failed,
with differences at `facts` and `outcome.record.facts`. Exit101: 0 passed, 2 failed.
Actual source/patch and six artifact digests are retained in that run directory.
E-PERSIST-001/002 are source arguments, not earlier executed reproductions.

**Scope, severity and review.** S3/Medium: legal historical evidence is rejected.
Demonstrated on v0.12.1 Store replay of supported Wire0.8 historical v1 read and
read-invocation records. Current v2 and standalone historical controls remain
separate; no forged accepted authenticated proof is shown.
[Origin and full fields](evidence/fragments/PERSIST/handoff.md),
[independent R-VERIFY-005](evidence/reviews/IDENTITY/persist-findings.md).

**Proposed correction.** RC-002: share existing strict, recorded-profile replay
selection internally with Store while retaining exact store/history/schema and
integrity obligations. No new record format or rewriting old bytes is proposed.
Assess compatibility and public consumer evidence before later approved
implementation; this audit changes neither dispatch nor historical semantics.

## F-TRUST-001 — raw Store read replay accepts contradictory duplicate keys

**Claim and reason.** Store replay accepts a current read_record.v2 with an extra
first `"result":"EVALUATION_ERROR"` key while the existing last result remains
VALUE. Core's strict decoder rejects this ambiguous document. Last-wins JSON map
reduction does not satisfy the required unambiguous evidence boundary, **G5/G7**.
This is an S3 canonicalization/replay defect, not demonstrated signature forgery.

**Authority and code.** Current record decoding requires duplicate rejection in
013 `contracts/identity-and-records.md:143–146`, 010 read replay contract:189–211
and `docs/persistence.md:223–225`. Raw Store replay at `store.rs:1438` uses
`serde_json::from_str` before strict Core decoding. Core `ReadRecord::from_json`
and standalone replay retain the strict boundary. Store invocation replay first
uses Core replay, so this defect is not generalized to that entry point.

**Executed evidence.** [E-TRUST-002 run](evidence/runs/TRUST/read-duplicate-red/run.json)
compiled and ran one test-only case. Valid current v2 Core decode/replay and Store
replay all passed. Duplicate insertion retained the same last-wins map and recorded
hash. Core decode errored and Core replay reported duplicate object key result;
Store reported `matches=true`. Head stayed unchanged. Only the final rejection
assertion at source73 failed. Exit101: 0 passed, 1 failed.

**Scope, severity and review.** S3/Medium: contradictory current raw replay evidence
is accepted through a path required to reject it. Demonstrated on v0.12.1 Store
read-record replay; no changed stored state or trusted authorization forgery shown.
[Origin and full fields](evidence/fragments/TRUST/findings.md),
[independent R-MODEL-004](evidence/reviews/FINAL/trust-finding.md).

**Proposed correction.** RC-002: enter the existing strict read-record decoder
before any lossy map reduction and share that validated semantic representation
with replay. Audit currently specifies the required behavior; this is an
implementation omission, not permission to make duplicate-last-wins normative.
A later change affects malformed-input acceptance and needs version/profile and
public error-contract assessment; preserve valid historical canonical bytes.

## F-PERSIST-002 — initial creation's failure and recovery law is unspecified

**Claim and reason.** Successful Backend::create initializes genesis/seed/head/refs,
but permitted post-error, lost-acknowledgment, retry and reopen outcomes are not
specified. A partial operation needs a defined relation over these outcomes.
The existing atomic/crashsafe **commit** law does not supply a creation-failure law.
This is S4/Medium contract underspecification, not a reproduced partial-write bug.

**Authority and locations.** Backend `lib.rs:38–56,99–109`;
005 `spec.md:322–325` FR006 commit atomicity; its `data-model.md:182` and
`contracts/store-api.md:99–103` creation success. Store creation is
`store.rs:895–999` (Backend call974); InMemory success implementation
`memory.rs:176–194`. **G9/O-PERSIST-011** remain qualified host/success promises;
**O-PERSIST-012** lacks the error/recovery relation.

**Evidence, scope and review.** E-PERSIST-003 source/contract-authority inspection
and independent MODEL confirmation found no stronger creation failure law.
No runtime counterexample is asserted. Commit fault wrappers are not create fault
coverage; that separate gap is O-PERSIST-004. Current inspected persistence contract
and durable host initialization are affected.
[Origin/full fields](evidence/fragments/PERSIST/handoff.md),
[independent R-VERIFY-005](evidence/reviews/IDENTITY/persist-findings.md).

**Proposed correction.** RC-003: decide and document the smallest creation-error
and uncertain-success/retry/reopen law before implementing or testing one. An
all-or-none law or a typed recoverable uncertain outcome is a policy choice for
later review, not inferred existing semantics. Assess host/error/API/versioning
consequences and preserve immutable existing genesis/history.

## F-COORD-011 — advertised fresh admission versions disagree with decoder

**Claim and reason.** Public accepted_wire_ir metadata advertises0.1–0.8 while
fresh decode accepts0.4–0.8. Its refusal diagnostic lists0.4–0.7, omitting accepted0.8.
Consumers cannot reliably select an admitted version from this contract. Historical
`wire_ir` serialization/hash support is a distinct capability and does not justify
the fresh-acceptance list. Classification S5/Medium, without an S0–S3 inference.

**Authority and locations.** Public admission metadata and versioning contract;
Core `lib.rs:58`, `wire.rs:1016–1022`, `admit/mod.rs:105–118`;
`tests/versions.rs:59`, CLI engine_info test:85 and `docs/versioning.md:152`.

**Executed evidence and scope.** [E-COORD-011](evidence/runs/COORD/admission-metadata/run.json)
on baseline v0.12.1 returns advertised legacy versions from engine-info (exit0).
Each retained otherwise-identical invoice fixture with ir_version0.1/0.2/0.3 is
refused as UNSUPPORTED_IR_VERSION (exit2) before body interpretation. Source
selection and refusal diagnostic confirm the acceptance0.8 omission.
[Full originating record](evidence/fragments/COORD/admission-metadata-finding.md),
[independent R-MODEL-002](evidence/reviews/MODEL/admission-metadata-review.md).

**Proposed correction.** RC-004: derive advertised acceptance and refusal diagnostics
from the actual shared fresh-admission version definition, with a public contract
regression. Do not re-admit historically rounded semantics merely to match false
metadata. This affects public metadata/diagnostics, requiring later approved
API/version/consumer assessment while frozen historical codecs remain unchanged.

## F-QUALITY-001 — fallible canonical errors silently become empty strings

**Claim and reason.** Legacy public verification/evidence containers expose mutable
raw JSON while fallible canonical serialization/hash callers default errors to
empty text. The required supported-domain/error contract is difficult to inspect;
invalid raw content can be concealed. S6/Low maintainability/error-contract risk:
no legal runtime invariant break or authenticated proof forgery is established.

**Locations and evidence.** Verify `lib.rs:169–179` public Attestation.value and
serialization, `:293` document hashing, `migration.rs:881`, legacy
`governance.rs:416`. E-QUALITY-001/002 are exact source inspection. Internally
constructed Profile has a narrower no-float premise; do not generalize raw-JSON
reachability to fresh trusted evidence. [Origin/full fields](evidence/fragments/QUALITY/handoff.md),
[independent R-VERIFY-004](evidence/reviews/VERIFY/quality-review.md).
Scope is inspected v0.12.1 legacy public JSON/container APIs.

**Proposed correction.** RC-005: state/enforce valid construction premises or
propagate canonical errors explicitly at raw public boundaries. Any public return
or error change requires its own API/version assessment; an internal extraction
requires profile-preserving observational equivalence. No cleanup is implemented.

## Grouped remediation proposals and non-findings

RC-001 is omitted unchanged-row validity; RC-002 groups Store replay's duplicated
profile/codec entry boundaries while retaining both S3 IDs; RC-003 is a missing
initialization failure domain; RC-004 is public version metadata drift; RC-005
is a fallible canonicalization contract risk. These causes are distinct.
No evidence justifies a general IVM engine, syntax change or performance rewrite.

[Prior-lead reconciliation](evidence/fragments/COORD/prior-leads.md) accounts for
all ten original leads, the bounded canonical-prefix sum non-finding and deliberate
lower-trust diagnostic caching. Verifier incompleteness is not false PROVEN;
backend-contract assumptions are not universal safety proofs. Performance and style
observations stay in the code-quality report without inflated defect severity.
[Independent acceptance index](evidence/reviews/FINAL/critical-findings-review.md)
links reviews by people different from each author; author responses and JOINT
premises are retained. Correction authorization remains separate under FR044/045.
