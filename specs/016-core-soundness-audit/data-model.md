# Data Model: Core Soundness Audit Work Products

**Feature**: [016 specification](spec.md)
**Design basis**: [planning research](research.md)
**Scope**: Audit metadata and evidence relationships, not new Core semantics,
wire formats, persistence documents or public interfaces.

The records below describe what the audit must collect. Their existence in this
design does not populate the inventory, establish an obligation or issue a verdict.

## Ownership and stable references

Logical lanes are MODEL, VERIFY, IDENTITY, PERSIST, TRUST, INCREMENTAL and QUALITY;
COORD coordinates shared ledgers, run scheduling and final synthesis. At most three
workers and the coordinator execute concurrently. Each report and evidence directory
has one writer; reviewers write their own review notes rather than editing another
lane's evidence. COORD integrates proposed amendments into canonical ledgers.

| Prefix | Record | Example shape |
| --- | --- | --- |
| C | Semantic construct | `C-MODEL-001` |
| O | Proof obligation | `O-VERIFY-001` |
| E | Evidence item, including a recorded run | `E-PERSIST-001` |
| F | Lead or finding | `F-INCREMENTAL-001` |
| B | Trust boundary or cross-component path | `B-TRUST-001` |
| R | Independent review or handoff | `R-IDENTITY-001` |

Identifiers use `<prefix>-<originating lane>-<three-digit sequence>`. G1–G12 retain
their specified global invariant IDs. References remain stable when work moves,
findings share a root cause or conclusions change; grouped findings are not
renumbered or silently discarded. Local table row keys are scoped under their
construct, boundary or obligation and do not invent competing global ID systems.

COORD-owned `evidence/coverage.json` maps scoped constructs/subforms, applicable
versions, first-party files, facade entries, paths and failure boundaries to owners,
inventory/report rows, obligations and evidence or explicit open gaps. Denominators
and evidenced absence are recorded so unclassified work cannot disappear from a
coverage percentage. `evidence/assignments.json` records each writer/reviewer,
reserved paths, dependencies and inventory/review/synthesis barriers. Work moves
from assigned through in-review to integrated only when its dependencies are
accounted for; assignment is not evidence of completion. These metadata instances
do not prescribe a new serializer or audit utility.

## Audit baseline and applicability

An **AuditBaseline** records release/tag, audited commit, source tree, audit-branch
starting commit/tree, source manifest, contract inventory and environment evidence.
Its source revision is `1e286ebcf1d61117320c57df155fa1ef9397e880`; the same-tree
branch starting revision is provenance, not a replacement release identity.

An **Applicability** record identifies fresh admission rules, runtime semantic
profile, document/record format, historical schema position and verifier/evidence
eligibility separately. It links the source establishing each axis and states which
operation/path it covers. A displayed version list cannot establish decoder
acceptance. An archived record's interpretation cannot establish eligibility for
fresh trusted authorization.

Baseline metadata belongs in `evidence/baseline.json`; actual tool versions,
dependency/lock identities and execution configuration belong in
`evidence/environment.json`. A new audited revision requires a new explicit
baseline. Comparative or historical evidence keeps its original baseline.

## Semantic construct

A **Construct** has ID, lane, name, scoped subforms, mathematical object, explicit
semantic inputs, output/error domain, identity domain, semantic ordering,
applicability, normative sources and reference implementation locations. It links
relevant invariants, obligations, evidence, boundaries and findings.

Inventory presence is `present`, `absent with evidence` or `unresolved`. Neither
unresolved meaning nor an uninspected construct counts as covered. Rust containers
and the convenient current algorithm do not define the mathematical object.
Operator families expand where distinct arithmetic, type, profile or error paths
carry different obligations. Coordinator inventory amendments preserve earlier IDs
and record their effect on completed lane reviews.

## Global invariant and proof obligation

An **Invariant** records proposition, existing authority, applicability, premises,
affected constructs/paths, enforcement locations and linked obligations. G1–G12
begin as candidates for investigation, not newly enacted or already proven rules.
Additional invariants require the same trace to existing authority.

An **Obligation** has ID, precise proposition, assumptions/premises, scope,
authority, enforcing code, evidence references, owner, reviewers, open dependencies,
finding references and the impact of uncertainty on the final verdict. Its qualified
evidence status is exactly one of:

| Status | Required supporting information |
| --- | --- |
| Proven by construction | Construction argument or actual formal artifact, its premises and scope. |
| Established by a code invariant | Exact enforcing locations, invariant argument and applicability. |
| Covered empirically by tests | Collected tests/results, tested domain and limits of the evidence. |
| Assumed but documented | Contract assumption, responsible external boundary and enforcement limits. |
| Not yet established | Missing argument/evidence, contradiction or unresolved dependency. |

Review workflow state is separate from evidence status. An empirical result never
automatically promotes an obligation to a proof. Split differently supported scopes
into linked obligations rather than applying one strong label to a broader claim.

## Identity domain

An **IdentityDomain**, scoped to a construct, records its claimed equivalence,
included/excluded distinctions, canonical preimage, serialization, domain tag and
version, metadata policy, ordering/multiplicity, dependency graph, applicability,
cryptographic assumptions and evidence/findings. Check distinguishability before
hashing separately from cryptographic security. A finite digest is not a proof of
collision-free mathematical identity. Cyclic dependencies remain explicit.

## Correspondence, trust boundary and operation path

A **CorrespondenceEntry** is a row under a verifier obligation: runtime/admission
guarantee, verifier reliance, exact enforcement, exact encoded assumption,
applicability, comparison status, evidence and open finding/obligation. Unsupported
models and conservative refusals are recorded; an `INCONCLUSIVE` result is not
automatically a soundness defect.

A **BoundaryEntry** has B-ID, producer/consumer, subject/evidence crossing the
boundary, what is trusted, mandatory checks, external assumptions, failure behavior,
applicability and related obligations. Integrity, authentication and authorization
are separate claims, even when represented by the same document.

An **OperationPath**, also assigned B-ID, identifies entry point, pre-state,
candidate, observations, validation, governance, CAS, record/index/head mutations,
post-state, failure boundaries and related obligations. Only applicable stages are
present. It distinguishes ordinary transition, command-only commit, migration,
read and replay paths; lost acknowledgment differs from refusal or failed commit.

These entries link MODEL↔VERIFY, evaluation↔Store, read/query↔identity/replay,
commands↔governance/commit, schema↔history and incremental↔reference/CAS handoffs.
Skipping an operation still requires evidence for its discharged obligation.

## Evidence item and recorded run

An **EvidenceItem** has E-ID, proposition supported, evidence kind, baseline and
applicability, producer, exact source/contract locations, artifact paths/hashes,
result, limitations, independence/shared assumptions and review references. Kinds
include mathematical argument, construction/code invariant, test or reproduction,
external contract assumption and prior historical lead evidence.

A **RecordedRun** adds working directory, exact command/environment, tool/source
identities, collection counts/names, start/end, exit status, verbatim log and hash,
ignored/skipped cases, outcome and interpretation. Outcomes distinguish pass, fail,
inconclusive, skipped and unavailable. A failed property test may reproduce a defect;
a passing characterization may confirm undesirable behavior. Neither repairs it.

An **Overlay** records base commit, exact patch/source hashes, isolation path and
instrumentation/new test changes. Its runs are labeled overlay evidence, never
unmodified baseline gate results. Independent comparators identify shared helpers
and circular assumptions instead of treating differential agreement as a proof.

Lane evidence lives in `evidence/fragments/<LANE>/`; logs/run metadata in
`evidence/runs/<LANE>/`; independently owned review notes in
`evidence/reviews/<REVIEWER>/`. Paths are prospective storage conventions; this
planning phase does not create audit evidence files or run results.

## Lead, finding and proposed remediation

A **Lead/Finding** retains F-ID, origin/prior claim, applicability, assertion,
violated invariant/contract, semantic reason, exact baseline locations, evidence,
reproducer/command where applicable, classification S0–S7, severity, review state,
root-cause relationships and recommended remediation. Significant findings require
all applicable spec FR-037 fields; observations explain why no defect is claimed.

Lifecycle is `lead → investigated → finding or evidenced non-finding`, followed by
independent review and coordinator integration. Incomplete investigations or
disagreements remain open, with their evidence and verdict impact. Root-cause
grouping references original IDs; prior correction claims do not close current leads.

A remediation proposal records authority question, smallest correction, observable
impact, historical preservation and versioning consequences. Proposals are metadata
only: this audit neither implements fixes/cleanup nor authorizes publication.

## Review, handoff and assessment

A **Review/Handoff** has R-ID, author/receiving owner, reviewed IDs/artifact hashes,
both sides' premises, independence limits, discrepancies, evidence, disposition and
open obligations. Disposition is `accepted`, `changes required` or `disputed`;
unresolved disagreement is not settled by majority vote. A changed premise requires
re-review of affected downstream claims.

An **AreaAssessment** covers each of the eleven FR-041 areas and records mathematical
model clarity, implementation correspondence and test sufficiency as Yes/No with
evidence, plus every open soundness issue. Missing assessment is not Yes. A
**Verdict** cites baseline/scope/assumptions, assessment, unresolved obligations and
findings; it is exactly `SOUND`, `SOUND WITH NON-BLOCKING GAPS` or `NOT YET SOUND`
under FR-042. COORD alone integrates the final verdict after independent review.
Audit completion can coexist with `NOT YET SOUND`; green gates do not decide it.

MODEL owns `semantic-model.md` and `global-invariants.md`; specialist lanes own their
matching reports. COORD owns canonical `findings.md`, `proof-obligations.md` and
`audit-summary.md`. All conclusions must trace through these records from existing
meaning to implementation invariant to executable location to qualified evidence.
