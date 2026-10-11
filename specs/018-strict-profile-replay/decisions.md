# Draft decisions: Strict and Profile-Preserving Store Replay

**Status**: Open for joint discussion, 2026-10-11. Recommendations are provisional;
no option is user-approved, and no plan, code or release is authorized.

See the [common discussion overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md)
and [targeted re-audit](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/targeted-re-audit.md).

## Confirmed starting requirements

The immutable [016 findings](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md)
reproduce F-PERSIST-001 and F-TRUST-001 on v0.12.1. Profile substitution and
lossy duplicate reduction contradict existing contracts. Correction preserves
historical bytes, exact Store/history/schema/behavior obligations, fresh emission
and read-only replay; no authenticated forgery or whole-engine defect is inferred.
E-PERSIST-004's two historical failures and E-TRUST-002's duplicate failure have
passing legal controls. They are historical evidence, not future test-first proof.

## D018-01 — public document refusal (open; FR-014)

**Question**: Preserve existing replay match/mismatch and backend-error surfaces,
or specify a versioned distinction for document refusal?

The existing Store read replay contract treats record differences and invalid JSON
as replay mismatches; backend failures are errors. Changing this presentation is
not required to remove either demonstrated defect.

| Option | Proposed decision | Consequences |
| --- | --- | --- |
| A (provisional recommendation) | Preserve existing result/error surfaces; required document refusal is a nonmatching replay result. | Smallest correction; consumer handling and backend-error distinction remain. Stable diagnostic obligations still require review. |
| B | Specify a separately versioned document-refusal result before delivery. | Public contract/versioning and consumer migration scope grows; refusal remains distinct from operational failure. The supported boundary cannot retain the acceptance hole. |

A is provisionally recommended because the published surface can express both
corrections. Joint clarification decides before planning; exact release/version
classification remains conditional on the accepted public contract.

## D018-02 — supported profiles (scope default for confirmation)

| Option | Scope | Consequences |
| --- | --- | --- |
| A (provisional recommendation) | Documented supported read-v1/read-v2 combinations and supported invocation records whose outcome is a read. | Covers both findings and the wrapper boundary; explicit profile inventory retains published historical limits. |
| B | Exact Wire 0.8 historical-v1 and current-v2 reproductions only. | Smaller evidence set, but other supported combinations remain unassessed; cannot claim all-profile correction. |

The draft uses A as a bounded scope default. Neither choice re-admits unsupported
IR, invents record profiles or silently tightens unrelated legacy document formats.

## D018-03 — internal sharing (candidate, defer to plan)

| Option | Candidate direction | Consequences |
| --- | --- | --- |
| A (provisional recommendation) | Reuse an existing validated strict/profile-aware representation or boundary where Store obligations remain enforced. | Can remove duplicated rules; equivalence and public-boundary evidence remain mandatory. No new semantic capability. |
| B | Correct the two Store wrappers separately with the same contract established by profile/differential evidence. | May be smaller locally, but retains duplication and divergence risk; no weaker correctness permitted. |

No module structure, new engine or dependency is prescribed. A future plan must
justify the smallest design satisfying the clarified spec.

## Compatibility and sequencing

- Newly refused malformed inputs and restored historical matches must be visible
  to consumers. This draft assigns no release number or publication action.
- Preserve original hashes and bytes. Sharing cannot mean retroactively applying
  today's strictness to every legacy format or filling in missing old evidence.
- Standalone replay agreement cannot replace Store binding/trust obligations.
  Operations may be omitted only if their mandatory obligations remain discharged.
- RC-001 complete-child validity and RC-003 initial Store creation outcomes remain
  separate. A replay match is not independent proof that a transition was valid.

**Next authorized phase**: joint clarification of drafts. No plan/tasks or code.
