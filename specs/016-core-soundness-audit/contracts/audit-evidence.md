# Audit Evidence Contract

**Scope**: Local reviewer work products for [016](../spec.md), following
[research decisions D1, D4, D6 and D7](../research.md). This contract adds no
Core API, document format, language semantics or backend requirement.

## Baseline and custody

COORD owns `evidence/baseline.json`, `evidence/environment.json`,
`evidence/coverage.json`, `evidence/assignments.json` and the canonical source
manifest. Their metadata follows the [audit data model](../data-model.md);
manual structured records are sufficient. Before execution, record the release commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, release tag `v0.12.1`, source tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`, applicable contracts/profiles,
tracked-source hashes and lockfile identities. Record the audit checkout's starting
commit `5949cb111cd6c5af34b0fc9083e78810df450fce` separately; its identical tree
does not replace the release identity. Capture actual tool versions, platform and
relevant injected inputs without secrets.

Before each run, identify its exact checkout, source tree, dirty state and overlays.
Required baseline gates run in an unchanged release checkout. New reproductions
use separate worktrees with their base, complete patch, source/fixture hashes and
build identities disclosed. An instrumentation or test overlay is never labeled
an unmodified baseline run. Documentation changes do not silently rebase findings.

Historical logs keep their original revision, environment and limitations. Reusing
them requires explicit relevance assessment; they cannot count as new 016 runs.
A changed baseline requires a new manifest and explicit reassessment of affected
claims, not editing the identity attached to old evidence.

## Evidence item

Each `E-<LANE>-001` item records the following, directly or through immutable links.

| Field | Required content |
| --- | --- |
| Identity and purpose | Stable ID, owner, date, evidence kind and precise proposition investigated. |
| Scope | Construct/obligation/boundary/finding IDs, applicable profiles/versions and legal input domain. |
| Source provenance | Baseline/checkout commit and tree, source/contract locations and line references, overlays and hashes. |
| Inputs and environment | Fixtures, seeds, exact invocation/context/facts, tool versions, dependency locks and relevant configuration. |
| Method | Argument or exact command, working directory, comparator and shared assumptions. |
| Execution | Collection, selected/executed counts, ignored/skipped cases, exit status, observed outcome and expected outcome. |
| Artifacts | Verbatim output, reproducer/patch, canonical output or proof artifact and their hashes. |
| Limits | What the evidence establishes, what it does not establish, failures, unavailable tools and remaining premises. |

An inspection-only argument may state that execution fields are not applicable.
An absent execution must never be recorded as a successful test. Commands must be
reproducible with the declared environment; human-readable explanations accompany
machine-readable records. No executable audit utility or schema dependency is
required by this contract.

## Collection and outcome are separate

| Evidence event | Permitted conclusion |
| --- | --- |
| Source contains a test or fixture | Candidate coverage exists; collection and execution remain unestablished. |
| Test listing collects an intended test | Collection established; behavior has not been exercised. |
| Executed assertion passes | Its scoped assertion holds for those inputs, not the whole-kernel theorem. |
| Property assertion fails with a legal, minimized execution | Potential counterexample evidence; verify the premise, reference contract and reproducibility before confirming a finding. |
| Characterization assertion passes while recording a violation | The observed behavior exists; the violated invariant is not repaired or discharged. |
| Compilation fails | Record exact diagnostics; this does not establish runtime behavior or a semantic counterexample. |
| Test/tool skipped, ignored, unavailable or inconclusive | Visible coverage/obligation gap; never a pass or proof. |
| Canonical baseline gates succeed | Required checks completed for that exact source; semantic soundness still needs independent reasoning. |

Expected counterexamples belong to disclosed supplemental evidence. Do not weaken
canonical gates, add expected failures to manufacture their success, or interpret
a baseline gate failure as a passing audit check. Preserve failures and record the
smallest additional investigation needed. After a fail-fast stop, COORD records
each remaining feasible stage separately using the exact unchanged command from
the baseline gate script. Prerequisite-blocked/unavailable stages remain gaps;
these follow-ups never change the original canonical run's failure status.
Audit completion can coexist with known
defects or unavailable evidence and a qualified `NOT YET SOUND` verdict.

## Claims, obligations and findings

Construct IDs use `C-<LANE>-001`; obligations use `O-<LANE>-001`. Preserve existing
`G1`–`G12` identifiers. A global invariant claim must cite existing authority and
applicability; an audit description cannot create normative semantics.

Every obligation states its proposition, premises, enforcing locations, evidence
IDs and exactly one primary qualified status from FR-039:

- proven by construction;
- established by a code invariant;
- covered empirically by tests;
- assumed but documented;
- not yet established.

These are distinct evidence bases, not interchangeable grades. Split compound
obligations when their premises have different status. Record supplementary
evidence without promoting a test to a proof. A documented backend, solver or key
custody assumption must identify its producer and limits; it cannot excuse a
mandatory Core check.

Prior reports, suspicious source and unexplored scenarios are leads. A confirmed
`F-<LANE>-001` finding needs the fields in FR-037: category S0–S7, justified severity,
claim, semantic reason/violated authority, exact revision/locations, evidence,
reproduction where applicable, affected versions/paths and proposed remediation.
An ambiguous required meaning becomes a supported underspecification finding or
open obligation; implementation convenience does not resolve it. Unconfirmed
leads remain explicitly open or receive an evidenced dismissal.

## Comparators and rejected claims

Differential evidence declares shared helpers, premises and possible common
defects. Full/optimized agreement does not establish G3 independently. Compare
required outcomes, semantic errors/evidence, records and identities; backend call
traces and hypothetical errors from soundly omitted calls are excluded. Every
omitted operation still needs equivalent evidence for its proof obligation.

Reject claims relying only on a green suite, a displayed version, a self-hash,
agent agreement, uncollected tests, undocumented overlays, historical logs without
provenance, comparator circularity or an unsupported machine-checked-proof claim.
Retain the rejected claim's reason and affected obligation; do not silently delete
contradictory evidence. Independent review follows
[the parallel-work contract](parallel-work.md). Final assessment follows FR-041/042;
unresolved S0–S3 findings or blocking obligations prevent a sound verdict.

## Storage and ownership

Lane owners write only `evidence/fragments/<LANE>/` and
`evidence/runs/<LANE>/`, plus their assigned report. COORD schedules required runs
under `evidence/runs/COORD/` and integrates canonical ledgers. Reviewers write only
their assigned `evidence/reviews/<REVIEWER>/` notes. Each path has one current
writer; a replacement receives an explicit handoff before writing. Raw runs and
patches remain immutable; follow-up analysis uses a new evidence item.
