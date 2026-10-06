# Trusted governance

A hash establishes document identity, never issuer authority. Store-v2 evidence policies distinguish require:none from required cryptographically authenticated authorization. An exact policy's trusted keys have explicit verifier/authorizer/waiver roles; a self-authored ALLOW document does not satisfy required trust.

The authorization content binds the exact candidate transition, store/evaluated parent, retained behavior/schema, evidence policy, execution policy, independent authorization context and required proof/waiver content. The candidate binds ΔS and the complete canonical command bag. Signature attestation is outside content identity. There is one shared mechanism for state-only, command-only, mixed transitions and schema migrations; no command authority exists.

## Independent context and exact eligibility

The host decodes AuthorizationContextV2 (Q) against the exact execution policy and passes Q independently to commit_with_context. It must not copy signed context from evidence as if it were a host observation. Declared context products, expected fields/values, real UTC dates, actor eligibility, policy time, requested commit time and waiver expiry are checked. Policy-bound commit time is exact, otherwise null. Authorization time equals Q.policy_time; eligibility intervals are [start,end). Replay checks the original committed Q/time rather than today's context.

Fresh VerificationEnvelopeV2 signs a canonical semantic report and closed obligation manifest for the exact subject/profile/verifier/solver. Live authorization/commit and Behavior replay independently derive expected coverage. Module-free data replay checks closed authenticated archives as attestations rather than claiming independent module-derived completeness. Missing/extra/repeated/misbound proof sites, forged outcomes, wrong role/version/signature and altered command data refuse. Resource-limited checks can be INCONCLUSIVE while the aggregate is not_verified. Infrastructure abort emits no partial signed envelope. Trusted certification uses cache=None.

## Immutable historical trust

Legacy structurally governed records retain their original trust level and policy. Existing required legacy stores refuse new governed writes with TRUSTED_GOVERNANCE_UPGRADE_REQUIRED. A validated export and new store-v2 genesis preserve state content in a new lineage; they do not authenticate old history retrospectively. None policy remains available when no authorization is required.

Commit re-evaluates candidate semantics, checks exact history head and atomically persists state/history/evidence/intents/idempotency. Refusal leaves those components unchanged. Lost response recovery identifies the original event rather than appending an equal state. Authorization cannot be reused for another payload, multiplicity, policy, store, parent, context or behavior version. Key protection, solver correctness and honest durable backend behavior remain host assumptions. Finite conformance checks cannot prove every adversarial backend honest.

See [verification correspondence](verification.md), [commands](commands.md) and the [governance contract](../specs/013-durable-command-intents/contracts/governance.md). The wider Core soundness audit remains open.
