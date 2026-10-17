# Trusted governance

A hash establishes document identity, never issuer authority. Store-v2 evidence policies distinguish require:none from required cryptographically authenticated authorization. An exact policy's trusted keys have explicit verifier/authorizer/waiver roles; a self-authored ALLOW document does not satisfy required trust.

The authorization content binds the exact candidate transition, store/evaluated parent, retained behavior/schema, evidence policy, execution policy, independent authorization context and required proof/waiver content. The candidate binds ΔS and the complete canonical command bag. Signature attestation is outside content identity. There is one shared mechanism for state-only, command-only, mixed transitions and schema migrations; no command authority exists.

## Independent context and exact eligibility

The host decodes AuthorizationContextV2 (Q) against the exact execution policy and passes Q independently to commit_with_context. It must not copy signed context from evidence as if it were a host observation. Declared context products, expected fields/values, real UTC dates, actor eligibility, policy time, requested commit time and waiver expiry are checked. Policy-bound commit time is exact, otherwise null. Authorization time equals Q.policy_time; eligibility intervals are [start,end). Replay checks the original committed Q/time rather than today's context.

Fresh VerificationEnvelopeV2 signs a canonical semantic report and closed obligation manifest for the exact subject/profile/verifier/solver. Live authorization/commit independently derive current expected coverage. Historical Behavior replay reproduces the transition and authenticates archived attested coverage without deriving an old verifier's site set from the new encoding. Module-free data replay checks closed authenticated archives as attestations rather than claiming independent module-derived completeness. Missing/extra/repeated/misbound proof sites, forged outcomes, wrong role/version/signature and altered command data refuse. Resource-limited checks can be INCONCLUSIVE while the aggregate is not_verified. Infrastructure abort emits no partial signed envelope. Trusted certification uses cache=None.

## Immutable historical trust

Legacy structurally governed records retain their original trust level and policy. Existing required legacy stores refuse new governed writes with TRUSTED_GOVERNANCE_UPGRADE_REQUIRED. A validated export and new store-v2 genesis preserve state content in a new lineage; they do not authenticate old history retrospectively. None policy remains available when no authorization is required.

Commit re-evaluates candidate semantics, checks exact history head and atomically persists state/history/evidence/intents/idempotency. Refusal leaves those components unchanged. Lost response recovery identifies the original event rather than appending an equal state. Authorization cannot be reused for another payload, multiplicity, policy, store, parent, context or behavior version. Key protection, solver correctness and honest durable backend behavior remain host assumptions. Finite conformance checks cannot prove every adversarial backend honest.

See [verification correspondence](verification.md), [commands](commands.md) and the [governance contract](../specs/013-durable-command-intents/contracts/governance.md). The wider Core soundness audit remains open.

## Verifier 0.10 and historical proof authority

Fresh proof generation identifies verifier **0.10.0**. New governed workflows
deliberately select `policy-verifier-0.10.json` and its matching
`evidence-policy-verifier-0.10.json` fixture. A new policy identity is an explicit
choice; an existing Store's policy, accepted verifier list and authorization
history are never rewritten. Original 0.8/0.9 policy fixtures retain their bytes.
Fresh authorization retains the exact current subject/site manifest, issuer,
profile, solver, signature, eligibility-time, expiry and revocation checks.

Closed archive decoders and both published wrapper schemas retain provenance
0.7.0/0.8.0/0.9.0 alongside current 0.10.0. Unsupported versions still refuse.
Authenticating an archived envelope does not make it eligible as a new current
proof: current subject validation rejects an old-model manifest with
`INCOMPLETE_VERIFICATION`. Fresh authenticated verification bypasses diagnostic
caches. Signed negative or inconclusive reports remain non-proof.

Exact committed action and v2 migration replay/recovery use historical-purpose
authentication after matching the canonical event/candidate and reproducing the
applicable recorded semantics. Subject, original policy/context/time, chain,
bundle, signatures and authorization identity remain checked. Historical proof
coverage is the old verifier's authenticated **attested coverage**; the current
encoder does not retroactively derive the old proof-site set or prove its theorem.
Behavior replay supplies independent transition reproduction, while module-free
data replay retains its documented trust limits.

The historical purpose is internal and cannot be selected for an uncommitted
candidate. Fresh action/migration writes still use current eligibility. Exact
recovery returns the original event without appending history. Complete parent
validation during historical reproduction does not create a reusable current
snapshot-validation certificate. Genuine pre-bump signed 0.9 action and migration
histories, fresh-use refusals and tamper controls exercise this boundary in
[proof_version_history.rs](../crates/behavior-store/tests/proof_version_history.rs).
No archive gains new authority from being readable or replayable.

## Ordinary facts and witness documents

The ordinary Facts product uses six optional array sections: `existence`, `identities`, `references`, `queries`, `fields` and `universe`. Root aliases `exists`, `used` and `incoming` are invalid; those names remain properties of their corresponding observation items. Items require their defined properties and reject extra properties. Universe members are open entity products requiring `id`; their declared fields and value-bearing positions use the existing canonical JSON carrier, with exact types checked against the admitted module.

Omitted observations remain unknown. An omitted family and an empty family array contain no observations; an explicit false existence/usage observation or empty incoming/query membership remains an observation. A supplied universe with `members: []` establishes an empty universe for that type; omitting the type does not. Ordinary queries exclude bundle-only integrity fields such as `result_hash`. Candidate bundle evidence has its separate profile-defined integrity checks.

The [governance-v2 schema](../schema/governance-v2.schema.json) describes the envelope as a root document. The [Store-v2 schema](../schema/store-v2.schema.json) describes it as embedded evidence, not a standalone Store root. Invocation counterexample witnesses and migration refusal witnesses retain their different shapes; migration witnesses do not acquire invocation Facts. A signed `not_verified` report is legitimate evidence of a verification result, not verified safety or permission to commit.

Schema acceptance establishes shape. Core still checks applicable semantic keys, contradictions, exact subject/profile/history, manifest, signature, issuer role and authorization. Corrected schema assets admit genuine canonical evidence and reject malformed shapes that older assets erroneously accepted. Schema-generated consumers should adopt the corrected six-family products from their declared Core Release; existing signed evidence, recorded profiles and semantic identities remain unchanged. Historical release assets and ecosystem Core pins must not be replaced silently.

## Checked editable artifacts

Raw attestation and legacy authorization values remain editable drafts. Their
`to_json_string()` methods now return `Result<String, CanonicalError>`; ordinary
`verify(...)` also returns a Result. Obtain complete canonical text before
publishing it. See [verification migration](verification.md#checked-canonical-artifact-output)
and the executable facade cases in
[consumer/tests/canonicalization.rs](../consumer/tests/canonicalization.rs).

Before this API change a caller used `let text = authorization.to_json_string();`.
Now propagate the error with `let text = authorization.to_json_string()?;` in a
Result-returning function. `authorize(...)` and `authorize_migration(...)` retain
their existing Result signatures and argument order. To distinguish input errors:

```rust,ignore
use behavior_engine::canonical::CanonicalError;
use behavior_engine::verify::governance::GovernanceError;
match behavior_engine::verify::governance::authorize(
    &policy_json, &module, &record_json, attestation_json.as_deref(),
    &waivers_json, &signed_json, &now,
) {
    Err(GovernanceError::Canonicalization { artifact, source: CanonicalError::Float(path) }) => {
        eprintln!("unsupported {artifact} value at {path}");
    }
    result => { let _authorization = result?; }
}
```

This matching flow is exercised by the facade consumer's
`legacy_governance_retains_a_nameable_canonical_source` test. Syntax, object and
canonicalizable schema errors remain `GovernanceError::Invalid`. The canonical
source is retained in the error chain. `waiver_hash` and `sign_waiver` use the
same checked input boundary; no signature is issued for unsupported input.

Full current values are checked before removing top-level self-hash or
attestation `checks[].cached` metadata from the existing identity material.
Canonical excluded metadata keeps the same hash treatment; a float hidden only
in an excluded field now refuses. Old hash/signature fields supply no authority
over edited values. Successful canonicalization establishes representation,
while existing hash, schema, semantic and applicable issuer/signature checks
still decide validity and authority. These checks neither reinterpret supported
historical profiles nor upgrade structural legacy evidence to authenticated proof.

Both eligible legacy action and migration evidence validators check every
supplied authorization, execution policy, attestation and waiver before backend
mutation. `StoreError::EvidenceMismatch` identifies the component and canonical
cause/path. Attaching a draft with `with_evidence` remains possible. Validation
stays in the commit/migrate evidence phase; earlier required-legacy upgrade and
profile/history refusals, concurrency checks and idempotent recovery retain their
boundaries. For multiply-invalid evidence the full-value error may precede a
later binding/hash refusal within that phase.

CLI verified/allowed output retains exit 0; valid negative, inconclusive and
refused reports retain exit 1. Canonicalization failure is exit 2 with
`behavior: canonicalization failed:` and the cause/path on stderr, no stdout
artifact and no replacement of an existing `verify --out` file. Schema errors
retain exit 2, solver/infrastructure failure 3 and usage/profile/I/O handling 64.
The authenticated path still computes envelope and diagnostics text before
publishing either; diagnostic edits never change proof authority. OS I/O failure
behavior is unchanged.
