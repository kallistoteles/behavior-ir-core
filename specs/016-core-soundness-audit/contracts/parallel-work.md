# Parallel Audit Work Contract

**Scope**: Local agent/reviewer coordination for [016](../spec.md), following
[research decisions D2, D3, D5 and D8](../research.md). This is not a public Core
interface, Wire contract or new semantic capability.

## Roles and exclusive ownership

COORD assigns one writer to each lane/report and records assignments before work.
Workers may inspect any baseline source; source access is not report ownership.
Only the assigned writer changes a report. Shared records are integrated by COORD,
never concurrently appended by workers.

| Lane | Owned audit reports | Required contributions |
| --- | --- | --- |
| MODEL | `semantic-model.md`, `global-invariants.md` | Complete constructs, reference meanings, result/ordering model, G1–G12 and newly discovered obligations. |
| VERIFY | `runtime-verifier-correspondence.md` | Assumption/guarantee pairs, legal execution domains, versioned proof/error activation. |
| IDENTITY | `identity-audit.md` | Hash domains, equivalence, canonicalization, ordering and dependency cycles. |
| PERSIST | `persistence-replay-audit.md` | Commit/mutation/CAS/failure paths, history, schema and replay guarantees. |
| TRUST | `trust-boundary-audit.md` | Adversarial inputs, evidence/context/policy binding, integrity/authentication/authorization. |
| INCREMENTAL | `incremental-validation-audit.md` | 014/015 selected domain, full comparator, dependency closure, cache lifecycle and post-CAS evidence. |
| QUALITY | `code-quality-audit.md` | Consolidated reachability, type/module/duplication/mutation inventories and complexity. |
| COORD | `findings.md`, `proof-obligations.md`, `audit-summary.md`, manifests and run schedule | Coverage reconciliation, canonical finding integration, root causes, required runs and qualified final assessment. |

Every specialist supplies its code-quality observations to QUALITY and coverage,
findings, open obligations and evidence to COORD through its own fragment directory.
Specialists do not issue independent final verdicts. These report paths are future
audit outputs; this planning contract does not assert their completion.

## Capacity, writes and execution

The available four slots permit COORD plus at most three active workers. Seven
logical lanes run in waves; they do not require seven simultaneous agents. COORD
can reassign an idle worker after it returns its report and evidence handoff.
No worker spawns additional agents without a coordinated capacity/ownership change.

Each lane writes `evidence/fragments/<LANE>/` and `evidence/runs/<LANE>/`;
reviewers write only `evidence/reviews/<REVIEWER>/`. COORD alone owns
`evidence/baseline.json`, `evidence/environment.json`, `evidence/coverage.json`,
`evidence/assignments.json`, the source manifest and canonical ledgers, following
the [audit data model](../data-model.md). A writer replacement must acknowledge its predecessor's
handoff; there is never overlapping write ownership.

Source review may run concurrently. COORD grants execution slots for builds,
solver-heavy tests and fault/reproduction runs, recording checkout and target
directory. Run one full canonical gate sequence at a time. Avoid concurrent builds
or test mutations that compromise a run's provenance. Use isolated overlays for
new tests, with no runtime fixes or shared source edits.

If the canonical gate stops at its first failure, COORD schedules all remaining
feasible stages with their exact unchanged baseline commands and records each
outcome separately. Missing prerequisites/unavailable stages stay explicit gaps;
follow-ups do not replace or relabel the original failed canonical run.

## Stable identifiers and handoffs

Use `C/O/E/F/B/R-<LANE>-001` namespaces for constructs, obligations, evidence,
findings, boundaries and reviews respectively; increment within the lane/type.
`COORD` is a valid owner namespace. Existing `G1`–`G12` names remain unchanged.
Do not renumber specialist findings during integration. Duplicate symptoms retain
their IDs and cross-link to a coordinator-owned root-cause group.

A handoff contains scope/revision, owned artifacts, new construct/obligation IDs,
claims and premises, evidence IDs, leads separately from confirmed findings,
unresolved questions, required cross-review and any requested run. New inventory
entries require reconciliation with MODEL and COORD before downstream closure.
Reports cite the [evidence contract](audit-evidence.md) rather than inventing
private proof-status or outcome vocabulary.

## Barriers and waves

| Barrier | Required work and exit condition |
| --- | --- |
| B0 — Baseline | COORD freezes source/environment/contract provenance, assignments, write boundaries and gate/reproduction schedule. |
| B1 — Inventory and invariants | MODEL drafts the construct inventory and candidate invariant/obligation map. Other workers may collect source/test leads. COORD reconciles scope and meanings before specialist fanout; unclear authority remains an explicit gap. |
| B2 — Specialist evidence | VERIFY/IDENTITY/PERSIST/TRUST/INCREMENTAL run in bounded waves against the reconciled model. Each returns evidence-qualified reports; QUALITY consolidates contributions. New meanings or common assumptions return to MODEL. |
| B3 — Reconciliation and independent review | COORD integrates findings/obligations, resolves duplicate symptoms, checks all required handoffs and ensures independent reviews are answered or remain open. Canonical baseline gates and approved supplemental runs have recorded outcomes. |
| B4 — Assessment | COORD checks coverage, mutually consistent reports, remaining blockers and FR-041/042 before issuing exactly one qualified verdict. Remediation remains proposed, with no implementation. |

Barrier passage means the declared audit stage is accounted for, not that every
obligation holds. An unresolved model, failed required check or missing evidence
must remain visible and constrain the verdict. Specialist work must not assume
an uncertain invariant as established merely to proceed.

## Mandatory joint boundaries

For each `B-<LANE>-001` boundary record both producers/consumers, exact assumptions,
applicable versions, enforcing locations, evidence and acceptance/rejection limits.
The named lanes jointly review each boundary; one report's ownership cannot close it.

| Handoff | Required joint review |
| --- | --- |
| Admission → verifier | MODEL + VERIFY + TRUST: type/domain guarantees, aliases, accepted profiles, reachable errors and proof assumptions. |
| Evaluation → Store → verifier | MODEL + PERSIST + VERIFY: complete incoming/resulting validity, facts/history inputs, refusals and independently justified legal executions. |
| Query/read → identity/replay | MODEL + IDENTITY + PERSIST: set/bag/sequence distinction, membership/observations, errors, record identity and historical replay evidence. |
| Commands → governance → commit | MODEL + TRUST + PERSIST + IDENTITY: guard/payload outcomes, intent multiplicity, exact candidate authority, atomic durability and committed occurrence identity. |
| Schema → history | MODEL + IDENTITY + PERSIST: schema binding, migrations, declaration/content identities and historical interpretation. |
| Incremental → full validation → post-CAS | INCREMENTAL + MODEL + PERSIST + TRUST: full reference domain, skipped obligations, freshness/references, exact cache binding, uncertainty and committed-only reuse. |

These reviewers participate through bounded assignments and handoffs, not by
requiring all named lanes to be active simultaneously.

## Independent review and integration

A reviewer other than the author inspects every significant confirmed finding and
each cross-component closure claim against its reference meaning, exact code and
evidence. Where a finding depends on execution, independently inspect/reproduce
the decisive case under its declared environment; document inability to reproduce.
Reviews state support, correction needed or unresolved disagreement with reasons.
Agent majority or specialist agreement is not proof.

COORD retains original evidence and IDs when merging related findings, records
conflicting claims, and links the shared root cause without erasing symptoms.
An author answers review in its own fragment; the reviewer updates only its review
notes. Unsupported claims return to leads/open obligations until resolved.

After enough discovery and review to understand shared causes, COORD groups
proposed minimal corrections, violated authorities, historical compatibility and
versioning effects. No worker fixes findings, changes contracts, cleans up runtime
code, modifies public APIs/hashes/admission or publishes during this audit.
Explicit approval for a later semantic correction is governed by FR-044; earlier
general permissions do not waive that policy.
