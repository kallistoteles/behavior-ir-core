# Draft decisions: Initial Store Creation Contract

**Status**: Clarified, 2026-10-12. D019-01 atomic publication and D019-02
identity-bound idempotent retry are agreed. D019-03 selects one current Backend
contract. All three decisions are settled; design and [tasks.md](tasks.md) are
prepared from [plan.md](plan.md), with no implementation or release produced here.

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

## D019-01 — creation's outcome relation (agreed A; FR-005)

**Question**: What may observers see after a failed/interrupted initialization?

| Option | Proposed law | Consequences |
| --- | --- | --- |
| A (selected) | Authoritative visibility is atomic: absent target or complete initialized Store. A lost acknowledgment may leave the caller uncertain which occurred. | Smallest extension of successful-product reasoning. Requires complete durable publication before success and exact reopen evidence after uncertainty. Physical private staging is allowed but never an authoritative partial Store. An error does not imply rollback. |
| B (not selected) | A separately identifiable initialization-in-progress state may persist and be exposed for recovery, but cannot be opened/evaluated as an ordinary Store. | Recovery/finalization/abandonment authority and failure behavior need additional contract decisions. Likely broader host/public compatibility implications; partial material is not made valid by merely finding genesis. |

A was selected on 2026-10-12. Creation has one atomic publication point:
Absent → Complete. Arbitrary private staging, including orphaned physical writes,
is allowed but never openable, evaluable or replayable as an ordinary Store.
This is the agreed law, not evidence that existing hosts already implement it.

Caller knowledge is distinct: KnownAbsent, KnownComplete or
UnknownWhetherPublished. The last category is uncertainty over Absent/Complete,
not a third Store state. Success establishes complete publication; ambiguous
errors, crashes and lost acknowledgments do not establish rollback. Failed
recovery observations prove neither absence nor completion. A known absence
claim must state its observation point; a nonpublishing attempt cannot prove
that another initializer has not published at the target.

The selected law must distinguish:

| Observation | Required decision/evidence |
| --- | --- |
| Success acknowledgment | Exact complete durable initialization under the selected host contract. |
| Failure before any authoritative publication | What establishes no creation rather than merely no acknowledgment. |
| Interruption/private physical writes | Public observations remain absent/complete; private staging is never a Store. |
| Durable completion followed by lost acknowledgment | How the caller learns the exact completed lineage; no false rollback claim. |
| Recovery read failure | Uncertainty remains; unavailable evidence proves neither absence nor success. |
| Reopen or later ordinary operation | Complete lineage/schema/head/seed/view obligations hold before authoritative use. |

The public knowledge/result encoding must preserve these distinctions without
assuming that current methods already encode them. Public signatures/error
changes are not selected by the mathematical knowledge categories alone.

## D019-02 — identical retry and reopen (agreed B; FR-007)

**Question**: Does repeating creation on an initialized target refuse and require
explicit reopen, or return an idempotent creation/recovery outcome?

| Option | Proposed procedure | Consequences |
| --- | --- | --- |
| A (not selected) | Creation refuses an already-initialized target; a caller resolves uncertainty through explicit reopen and checks the expected original lineage. | Retains existing InMemory already-created behavior. The original request identity must remain available and reopen must establish it; ordinary open alone does not prove it is the requested Store. |
| B (selected) | An identical canonical initialization request returns an idempotent success/recovery outcome; a conflicting request refuses. | Convenient retry, but requires exact comparison of original initialization and defined returned Store/result after later commits. May require public changes; never reset the current head or reinterpret equality of current StateId as equality of genesis. |

B was selected in the same 2026-10-12 answer: repeating the same creation identity
creates if absent, recovers the exact equivalent published Store, or
deterministically refuses an established conflicting identity. Required checks
that fail remain operational errors and cannot be reported as successful recovery
or an established conflict. Retry never creates a second semantic initialization.

Use the existing canonical genesis/StoreId identity and bound initialization
parameters, with no new hash domain or historical rewrite. Target path/name,
finding a genesis or matching current StateId alone is not sufficient evidence.
Recovery establishes the expected complete original product under the stated
Backend and cryptographic premises. Competing initializers cannot mix products.
Later history, including migrations, survives; recovery observes the actual head
and never resets it to position zero or applies a seed certificate to an advanced
state. This is an agreed policy change from current already-created refusal,
not a claim of existing implementation or compatibility.

## D019-03 — adoption and compatibility (agreed A; FR-011)

**Question**: How is the newly specified persistence guarantee applied to hosts?

| Option | Proposed contract adoption | Consequences |
| --- | --- | --- |
| A (selected) | Make the chosen law explicit for all implementations claiming the corrected existing Backend contract; assess host/public API and release compatibility before delivery. | A single current persistence contract. Existing hosts may need new evidence or changes; no claim that all already complied with a previously unstated guarantee. Canonical historical bytes remain unchanged. |
| B (not selected) | Introduce an explicitly versioned persistence/initialization contract or capability and retain older hosts' stated limits. | Compatibility distinction becomes public and must be precise. No automatic promotion of legacy host evidence; broader API/conformance/binding implications must be specified before planning. |

A was selected on 2026-10-12. Every Backend used with the corrected Core version
must satisfy one current contract. Atomic publication, stable creation identity,
idempotent equivalent retry, deterministic established-conflict refusal and exact
recovery without overwriting later history are mandatory correctness obligations,
not negotiated capabilities. Compilation against the trait alone proves no
semantic conformance.

Deliver this as a public Backend-contract change: update normative documentation,
assess release-version consequences, inventory and review all first-party Backend
implementations, extend shared conformance cases and document migration for
external implementations. Existing tests do not prove the new obligations.
Shared evidence covers prepublication failure, complete success, lost acknowledgment,
equivalent/conflicting retry, staging isolation, concurrency and recovery after
history advances. Host-specific fault evidence supplements it under explicit
OS/storage assumptions. Deliberately broken test doubles remain classified as
nonconforming evidence, not supported hosts.

Historical canonical documents and identities retain their contracts. No release
number or new public signature is selected by this clarification; the plan must
map the outcome law to supported result/error behavior and assess compatibility.

Type compatibility is not semantic conformance. Core may depend on one Backend
semantics; backends vary in implementation, not the meaning of Store creation.

## Future evidence and boundaries

- D019-01 through D019-03 are settled. Planning must specify public certainty/error
  mappings and acceptance tests for the agreed law before implementation.
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

**Next workflow phase**: `/speckit-analyze`, when requested. Planning artifacts are
design documents, not implementation, executed conformance evidence or a release.
