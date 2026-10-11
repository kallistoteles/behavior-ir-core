# Independent integration and verdict review — T080

Review ID **R-FINAL-001**. Reviewer `/root/audit016_store`; coordinator and
assessment author `/root`. Baseline release v0.12.1, commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, source tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Review date 2026-10-10.

**Disposition: accept the integrated assessment and its qualified verdict
NOT YET SOUND.** One description of skipped coverage required correction and
has been corrected; no finding, primary obligation status or verdict premise
changed. Final delivery custody is a separate coordinator task.

## Independence and reviewed material

This is a different-person review of the coordinator's synthesis, not a second
author approval of a lane finding. The reviewer authored PERSIST and QUALITY;
their significant findings and reports have the separate different-person
reviews [R-VERIFY-005](../IDENTITY/persist-findings.md),
[persistence review](../IDENTITY/persistence-review.md) and
[R-VERIFY-004](../VERIFY/quality-review.md). Those dispositions are retained;
this review does not replace them with self-review.

I inspected all eleven final reports, the six finding submissions and their
independent dispositions, the six JOINT notes and accepted producer/consumer
premises, the prior-lead reconciliation, the tooling assessment, and the
coordinator's obligation/coverage/collection ledgers. I independently reread the
three counterexample runs' captured sources, stdout/stderr and metadata. All
eighteen artifact digests named by those three run files match retained bytes.
The poisoned-cache supplement's three digests also match. I did not run another
test suite, change source, or infer test execution from collection alone.

## Cross-report consistency

Every required report names the same audited commit. The published release and
same-source audit-start checkout remain distinct from local artifacts and
test-only overlays. No report presents experimental source as the unchanged
release, and no correction is claimed as implemented.

| Required report | Independent integration check and disposition |
| --- | --- |
| `audit-summary.md` | All eleven matrix areas and one final qualified verdict are present. Known S0/S3 counterexamples decide the negative assessment; green gates do not override them. |
| `semantic-model.md` | The 60 construct families distinguish typed identity, live state, history/ever-used, semantic observations, result/error categories, command bags and committed occurrences. Operator inventory and full meanings do not make private delta machinery language semantics. |
| `global-invariants.md` | G1–G12 and G13–G16 trace existing authority and qualified premises. G3 is refuted; G9 applies to commit and does not supply a creation-failure law. Historical standalone/profile guarantees expressly exclude the Store counterexample. |
| `runtime-verifier-correspondence.md` | Simulation, activation and query overapproximation remain globally unestablished. Current snapshot assumptions and narrower historical read assumptions are separated. Witness limits and INCONCLUSIVE are not described as legal false PROVEN. |
| `identity-audit.md` | The 31 domain families distinguish canonical structural equivalence from arbitrary denotational equality, state from history, intent bags from occurrence coordinates, and integrity from authority. Legacy length and all-field tamper premises remain open. Historical compatibility is narrowed at the affected Store boundary. |
| `persistence-replay-audit.md` | All canonical create/ordinary-commit/migration-commit call sites and replay paths are accounted. Applied-only publication, exact recovery, host durability/index-completeness assumptions and creation-error ambiguity retain their separate scopes. Store read replay checks Backend coordinates; it is not full independent history reconstruction. |
| `trust-boundary-audit.md` | Current strict Core decoders are not generalized to raw Store read replay. Exact candidate/context/policy/manifest checks remain qualified by key, crypto, solver and Backend assumptions. Current authenticated production bypasses the lower-trust diagnostic cache. |
| `incremental-validation-audit.md` | Guarded local equivalence, transitive closure, monotone synthesized references and post-Applied cache carry are distinguished from the unsupported ordinary route. Correct fallback selection and common-reference agreement cannot establish complete child validity. |
| `code-quality-audit.md` | Lexical panic/unsafe inventory is limited to first-party source and cfg tracing; resource/dependency panic freedom is not claimed. Partial canonical defaults remain S6/Low, with no authenticated forgery inferred. Complexity and style observations are not promoted to correctness defects. |
| `findings.md` | Six stable findings preserve category/severity reasons, exact baseline/path/authority, concrete evidence, affected scope, independent review and minimal compatibility-aware proposals. RC-002 groups replay entry-boundary causes while retaining both S3 identities. |
| `proof-obligations.md` | Qualified rows preserve exactly one primary status and explicit premises. Code invariants and bounded empirical evidence are not relabeled machine-checked proofs; known failed propositions remain unestablished. |

The canonical [JSON obligation ledger](../../obligations.json) has **81 unique
IDs**: MODEL 19, VERIFY 10, IDENTITY 10, PERSIST 12, TRUST 12, INCREMENTAL 10 and
QUALITY 8. Independently counted primary statuses are **1 construction,
46 code invariant, 3 empirical, 8 documented assumptions, 23 unestablished**.
Each JSON row's claim, status and evidence equals its Markdown ledger row;
originating tables/handoffs retain the same statuses. Inventory/accountability
completion is not asserted as establishment of all these propositions.

## Execution, legal controls and findings

[E-COORD-009](../../runs/COORD/baseline-gates/run.json) records exit0 for all
eleven canonical gates on pristine source. The named collection reconciliation
independently sums to **793 workspace cases, 24 default-ignored, 769 eligible
default passes**, and **33 external-consumer cases/passes, none ignored**, across
168 and 14 target/doc groups respectively. For each group the recorded executed
set equals collected minus default-ignored. Quiet gate logs supply group counts;
collection provides names. Neither is described as individual verbose execution
where it was not emitted. The seven supplemental passes and their filtered,
ignored, generator and shared-helper limits remain separate from these totals.

The counterexample overlays compile and fail only their final semantic contract
assertions after positive controls:

- **F-INCREMENTAL-001, S0/High**: actual E-INCREMENTAL-002 reaches committed
  position 1 with unchanged `e0.target="new"` and that identity present. The direct
  `not exists(target)` predicate at source68 is false; complete-child STATE_INVALID
  corroborates it. This is legal invalid-state commitment, not an unsafe selected
  certificate, a fabricated S2 proof failure or mere performance debt.
- **F-PERSIST-001, S3/Medium**: E-PERSIST-004's valid seed/schema/genesis position,
  current Store replay, standalone historical replay and unchanged-head controls
  succeed. Store historical read and inner invocation fail only final assertions 50/86,
  with current `facts` substituted for the recorded profile. Its independent
  acceptance remains R-VERIFY-005, rather than this author's own finding review.
- **F-TRUST-001, S3/Medium**: E-TRUST-002 passes valid current-v2 Core/Store controls
  and retains the original identity/head. Core refuses contradictory duplicate
  result keys; Store accepts their last-wins reduction. Final source73 fails.
  The claimed defect is current canonical replay-evidence acceptance, not trusted
  signature forgery or mutation. MODEL's separate R-MODEL-004 accepts it.

These runs retain exit101/**fail**, with four failed assertions across three
overlays. They are counterexample evidence, never added to passing gate totals.
F-PERSIST-002's S4 creation outcome gap has exact contract-authority evidence,
not a fabricated partial-write test. F-COORD-011's S5 metadata contradiction is
separate from frozen historical codecs. F-QUALITY-001's S6 public raw-container
risk does not establish a legal runtime invariant violation. All six have
different-person review and retained FR037 fields.

## Coverage correction and remaining limits

Review correction **C-FINAL-001**, retained as coverage amendment
**AMEND-COORD-003**, concerns the ignored test
`behavior-store/tests/query_perf.rs:136–159`,
`the_index_never_changes_a_result`. It contains no timing assertion: it compares
indexed/unindexed records on 20,000 entities and checks 10 members. Calling it only
a latency benchmark understated unexecuted semantic coverage. COORD independently
checked the source and corrected the tooling table, coverage entry and Queries
matrix explanation to describe additional large-domain semantic equivalence
coverage. It remains **skipped**. The sampled 1000-case E-MODEL-004 is distinct;
no execution was invented and no verdict/status changed.

All 45 FR and nine SC IDs have coverage/accountability entries; the audit records
open propositions rather than claiming all semantic obligations succeed. All ten
prior leads retain reassessment, alias or counterexample dispositions. Four
differential comparisons disclose their shared evaluators/providers and limits;
algebraic/metamorphic laws and mutation/fault scopes are accounted. Only one of
24 default-ignored cases was additionally executed. The other 23, missing create
fault windows, universal arithmetic/operator/verifier correspondence, blanket
legacy encoder bounds and exhaustive field/profile tampering remain explicit.

The matrix's scoped **Yes** entries for Queries, Governance and Commands cover
inspected runtime membership/fold meaning, current authority-binding checks and
typed bag/committed-occurrence construction respectively. They explicitly exclude
universal verifier encoding truth, whole-child preservation and external delivery.
No missing full-scope assessment is disguised as Yes. All test-sufficiency cells
remain No under the stated complete-area standard.

No positive verdict with supposedly non-blocking gaps is proposed. Omitted
latency measurements alone do not establish S0–S3, and Miri/sanitizer nonselection
is a recorded risk-based tooling decision, never a pass. Diagnostic cache producer
integrity, Backend coherence/completeness/durability, solver correctness and
cryptographic/key-custody premises stay assumptions. Absence of first-party unsafe
or literal production panic calls implies neither dependency safety nor universal
resource failure freedom. These limits cannot excuse the reproduced legal S0/S3
defects or the required missing creation outcome law.

## Verdict and custody boundary

The integrated **NOT YET SOUND** verdict follows directly from unresolved
F-INCREMENTAL-001, F-PERSIST-001 and F-TRUST-001; F-PERSIST-002 additionally leaves
required semantics ambiguous. Universal unestablished correspondence/identity
obligations are retained rather than silently waived. No mathematical all-program
proof, newly confirmed legal false PROVEN, stable/v1 declaration or remediation
authorization follows from this review.

The coordinator may finalize the assessment after recording its response to this
review. T082–T084 source/artifact/link/checklist and temporary-worktree custody
remain separately verified delivery work; the preparatory delivery note is not
treated as its completion. FR044/045 still requires a later explicit correction
decision, minimal change and historical/public-contract/version consequences.
This review changes only its owned audit artifact and authorizes no Core fix,
commit, merge, release, pin change or cleanup implementation.
