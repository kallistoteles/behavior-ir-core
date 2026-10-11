# Targeted re-audit after remediation

This is the proposed evidence protocol for later corrections to findings from 016.
It is not a completed audit, an implementation plan or a claim that any obligation
has been discharged. Reuse 016's inventories and evidence, then inspect the changed
paths and their affected semantic dependencies. Do not restart the whole audit
merely because a new correction branch exists.

The immutable starting ledger is
[016 proof obligations](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/proof-obligations.md).
Create a new remediation evidence ledger; never rewrite the baseline's statuses.

## Scope by correction

| Feature | Direct obligations | Required adjacent review | Concrete baseline evidence |
| --- | --- | --- | --- |
| 017 | O-MODEL-005, O-INCREMENTAL-008, O-VERIFY-008; G3 | Ordinary evaluation and Store commit; complete candidate validity; global/query/cross-entity dependencies; identity history and resulting references; 014/015 reuse/fallback; CAS, failure and historical compatibility | [E-INCREMENTAL-002](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/runs/INCREMENTAL/child-validity-red/run.json) |
| 018 | O-PERSIST-008, O-MODEL-013, O-TRUST-012; relevant portion of O-IDENTITY-010; G4/G5/G7 | Strict raw decoding before lossy representation; current and supported historical profiles; read and inner invocation replay; exact Store/history/schema binding; tampering; unchanged canonical bytes; no mutation or dispatch | [E-PERSIST-004](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/runs/PERSIST/replay-v1-red/run.json), [E-TRUST-002](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/runs/TRUST/read-duplicate-red/run.json) |
| 019 | O-PERSIST-012; separately O-PERSIST-004 and the assumptions in O-PERSIST-011 | Newly agreed initialization failure/recovery relation; success product; crash/lost acknowledgment; retry/reopen; initial durability and caller/backend responsibilities; public compatibility | F-PERSIST-002 and E-PERSIST-003 are source/contract inspection, not an executed partial-create counterexample |
| 020 | F-COORD-011's public fresh-admission capability claim | Current admission policy, published metadata and refusal diagnostics; supported Rust/CLI consumers; historical decode/replay capability remains distinct | [E-COORD-011](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/evidence/runs/COORD/admission-metadata/run.json) |
| 021 | F-QUALITY-001's canonicalization domain/error claim | Every affected raw/public and constrained/internal boundary; explicit failure behavior; valid canonical bytes/hashes; legacy versus current evidence; public API/versioning consequences | E-QUALITY-001/002 are source inspection, not a demonstrated signed-proof forgery |

The ordinary fallback in 017 is itself incomplete on the baseline. Agreement
between the selected optimized path and that fallback is insufficient: include an
independent complete resulting-state oracle. The 015 locality guard correctly
rejects the demonstrated nonlocal case; do not misattribute the finding to unsafe
certificate selection.

018's two findings need separate closure records even if one shared boundary fixes
both. Historical compatibility success cannot establish duplicate rejection, and
duplicate rejection cannot establish historical profile preservation. Likewise,
fixing these examples does not automatically discharge every field/profile case in
the broad O-MODEL-013, O-PERSIST-008 or O-IDENTITY-010 propositions.

## Evidence required for each conclusion

1. Name the audited correction commit, source tree, parent baseline, agreed contract
   version and applicable historical profiles. Record subsequent integration changes
   that would invalidate the review's scope.
2. Link each requirement to its exact finding and proof obligation. State the
   mathematical claim, hypotheses and semantic domain independently of Rust types
   or the implementation chosen to satisfy it.
3. Preserve the failing baseline run, source/patch and legal positive controls before
   implementing a bug fix. Then record the corrected run and negative controls on
   the exact correction revision. For newly specified 019 behavior, explicitly name
   the new contract rather than inventing an earlier violated law.
4. Review the actual enforcement path, including refusal/error priority, optimization
   fallback, exact state/history/schema/evidence binding and failure boundaries.
   Semantic equivalence excludes backend call traces and hypothetical errors from
   omitted operations; mandatory integrity, trust and concurrency obligations remain.
5. Run required checks from the owning repository root in its pinned environment:
   `nix develop -c scripts/gates.sh`. Add only targeted checks justified by the changed
   contract. Record pass/fail/ignored/inconclusive separately. No private dependency
   override or weakened gate may count as required evidence.
6. Compare relevant current and historical canonical records, identities, replay and
   public consumer behavior. Any intentional observable change must have its agreed
   compatibility/versioning assessment. Do not move tags or rewrite old evidence.
7. Obtain a review from someone other than the correction/evidence author. The review
   must inspect the claim, controls, oracle independence and open assumptions; mere
   agreement or a green test total is insufficient.

A later ledger should record for each proposition: original ID, correction
requirement, exact scope, mathematical argument, enforcement location, executable
evidence, reviewer, resulting status and remaining assumptions. Use the same
distinctions as 016: proven by construction, established by code invariant, covered
empirically, assumed but documented, or not yet established.

## Review and integration decisions

Each feature receives a scoped conclusion: resolved in the stated domain, partially
resolved, or unresolved. Record what would falsify that conclusion. Broader
propositions remain open unless their entire stated domain is established. Backend
durability and solver/cryptographic trust assumptions do not become proofs merely
because a first-party implementation passes tests.

Before merging corrections together, inspect overlapping changes, rerun required
gates on the actual integration revision and review affected dependency closures.
New counterexamples expand the targeted review when justified; they do not justify
silently narrowing the invariant or hiding a failing run.

Resolving the known S0–S3 findings removes those specific counterexamples. It does
not itself establish a global **SOUND** verdict or v1 readiness. Any later global
assessment must account explicitly for the remaining 016 obligations and newly
discovered findings. Preserve 016 as the historical audit evidence throughout.
