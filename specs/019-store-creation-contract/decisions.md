# Draft decisions: Initial Store Creation Contract

**Status**: Open for joint discussion, 2026-10-11. Three critical choices remain;
recommendations are provisional and do not authorize planning or implementation.

See the [discussion overview](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/README.md)
and [targeted re-audit](https://github.com/kallistoteles/behavior-ir-core/blob/core-soundness-remediation-discussions/docs/core-remediation/targeted-re-audit.md).

## Provenance and scope

The immutable [016 findings](https://github.com/kallistoteles/behavior-ir-core/blob/b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9/specs/016-core-soundness-audit/findings.md)
classify F-PERSIST-002 as S4/Medium. Source/authority inspection E-PERSIST-003 and
independent review show that successful whole-Store creation is described, while
explicit atomic/crash-safe failure/retry requirements apply to commit. No partial
creation defect was reproduced. O-PERSIST-012 lacks an outcome law; O-PERSIST-004
separately lacks creation fault/crash evidence. Neither can stand for the other.

The function in scope initializes an entire Store lineage. It is unrelated to an
ordinary entity-create effect and does not justify changing that effect's semantics.
Existing genesis/seed validation, historical bytes, hashes and indexes' non-authority
remain fixed starting obligations.

## D019-01 — creation's outcome relation (open; FR-005)

**Question**: What may observers see after a failed/interrupted initialization?

| Option | Proposed law | Consequences |
| --- | --- | --- |
| A (provisional recommendation) | Authoritative visibility is atomic: absent target or complete initialized Store. A lost acknowledgment may leave the caller uncertain which occurred. | Smallest extension of successful-product reasoning. Requires complete durable publication before success and exact reopen evidence after uncertainty. Physical private staging is allowed but never an authoritative partial Store. An error does not imply rollback. |
| B | A separately identifiable initialization-in-progress state may persist and be exposed for recovery, but cannot be opened/evaluated as an ordinary Store. | Recovery/finalization/abandonment authority and failure behavior need additional contract decisions. Likely broader host/public compatibility implications; partial material is not made valid by merely finding genesis. |

A is provisionally recommended because it gives the kernel a small clear
observable domain without prescribing physical storage. It is **not already
established** by the existing commit law or InMemory success. B is a real policy
alternative, not an audit finding or permission for mixed authoritative state.

The selected law must distinguish:

| Observation | Required decision/evidence |
| --- | --- |
| Success acknowledgment | Exact complete durable initialization under the selected host contract. |
| Failure before any authoritative publication | What establishes no creation rather than merely no acknowledgment. |
| Interruption/private physical writes | Whether recovery sees only absent/complete or a non-authoritative staged state. |
| Durable completion followed by lost acknowledgment | How the caller learns the exact completed lineage; no false rollback claim. |
| Recovery read failure | Uncertainty remains; unavailable evidence proves neither absence nor success. |
| Reopen or later ordinary operation | Complete lineage/schema/head/seed/view obligations hold before authoritative use. |

This table states what must be decided; it does not claim current methods encode
all these certainty categories. Public signatures/error changes await discussion.

## D019-02 — identical retry and reopen (open; FR-007)

**Question**: Does repeating creation on an initialized target refuse and require
explicit reopen, or return an idempotent creation/recovery outcome?

| Option | Proposed procedure | Consequences |
| --- | --- | --- |
| A (provisional recommendation) | Creation refuses an already-initialized target; a caller resolves uncertainty through explicit reopen and checks the expected original lineage. | Retains existing InMemory already-created behavior. The original request identity must remain available and reopen must establish it; ordinary open alone does not prove it is the requested Store. |
| B | An identical canonical initialization request returns an idempotent success/recovery outcome; a conflicting request refuses. | Convenient retry, but requires exact comparison of original initialization and defined returned Store/result after later commits. May require public changes; never reset the current head or reinterpret equality of current StateId as equality of genesis. |

A is provisionally recommended as the smaller policy change. This recommendation
is not a claim that the full error/reopen law is already implemented. Under either
choice, one target has at most one lineage, competing requests cannot mix products,
and later history must survive. If history advanced, recovery compares immutable
initialization identity and observes the actual head; it cannot recreate position zero.

## D019-03 — adoption and compatibility (open; FR-011)

**Question**: How is the newly specified persistence guarantee applied to hosts?

| Option | Proposed contract adoption | Consequences |
| --- | --- | --- |
| A (provisional recommendation) | Make the chosen law explicit for all implementations claiming the corrected existing Backend contract; assess host/public API and release compatibility before delivery. | A single current persistence contract. Existing hosts may need new evidence or changes; no claim that all already complied with a previously unstated guarantee. Canonical historical bytes remain unchanged. |
| B | Introduce an explicitly versioned persistence/initialization contract or capability and retain older hosts' stated limits. | Compatibility distinction becomes public and must be precise. No automatic promotion of legacy host evidence; broader API/conformance/binding implications must be specified before planning. |

A is provisionally recommended for a small kernel, conditional on the chosen law
being feasible and the consumer review. No release number or source/API correction
is selected by this draft. A Backend contract change is not a new Behavior-language
construct, but remains a real supported-host compatibility change.

## Future evidence and boundaries

- Decide D019-01 through D019-03 before constructing conformance tests for a law.
  Subsequent implementation follows the constitution's observed test-first cycle.
- Failure evidence must address the actual selected Backend's named creation
  mutation/interruption windows, not rename commit-only BeforeWrite/AfterWrite
  coverage as creation coverage. Finite tests cannot prove every host's durability.
- A successful initial validity certificate is state/history/schema/behavior bound.
  An uncertain candidate or advanced head cannot inherit it merely from matching
  entity values. Verified recovery may establish appropriate evidence independently.
- No production cleanup, new language, rewritten historical records, dispatch,
  generic storage engine, release tagging or publication follows from this draft.
  Publication of specifications/draft PRs is distinct from code/release authority.

**Next authorized phase**: joint clarification of the contract, not a plan or fix.
