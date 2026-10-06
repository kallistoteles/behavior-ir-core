# Contract: trusted governance prerequisite

General hardening required by FR-039/040 before 013. The same relation governs state-only,
command-bearing and policy-governed migrations. No CommandAuthorization or dispatch policy.

## Trust boundary

Hosts choose immutable v2 genesis/evidence policy. Authorized producer keys and exact
execution-policy hashes originate there, never from caller configuration. Callers/documents/
caches are untrusted. Backend completeness/atomicity and trusted signer key custody remain
explicit contracts.

TrustedAuthorization(P,A,T,Q) is true iff:

- detached signature verifies A.content under its declared issuer;
- issuer is an authorization authority under exact P at Q.policy_time;
- decision=allow binds exact T/store/evaluated history/policy and ContextHash(Q);
- all required evidence/profile/policy conditions are independently valid.

Commit rederives the candidate and recomputes policy judgment from complete evidence.
A signature authenticates a claim; it neither replaces policy checks nor repairs false proofs.

## Cryptography and identity

Reuse ed25519-dalek 2.2.0 from Cargo.lock. Keys are ed25519: plus lowercase64hex public-key
bytes; signatures are lowercase128hex. Check lengths/key decoding and strict verification,
including weak-key/signature rejection. No new crypto dependency/batch shortcut.
See [the library's strict verification contract](https://docs.rs/ed25519-dalek/2.2.0/ed25519_dalek/struct.VerifyingKey.html#method.verify_strict).

AuthorizationHash = H("behavior.authorization.v2",canonical_json(content)).
VerificationHash = H("behavior.verification_content.v2",canonical_json(content)).
Issuer is inside content; detached signature/hash wrapper fields are outside it.

~~~text
authorization signature message =
 ASCII("behavior.authorization_signature.v2") || 0x00 || raw32(AuthorizationHash)
verification signature message =
 ASCII("behavior.verification_signature.v2") || 0x00 || raw32(VerificationHash)
~~~

Signature subject/key equals content hash/issuer; cross-purpose reuse fails.
Existing waiver.v1 content/signature domains retain separate role checks.
For canonical citations in v2 authorization, the detached legacy waiver signature
body has an evidence identity H("behavior.waiver_signature.v1", canonical_json(body)),
where body={waiver_hash,key_id,signature}. This identity binds the exact supplied
attestation without changing the legacy waiver content hash or signature message.
It is not a new authority or command-specific mechanism.

## EvidencePolicyV2 and ExecutionPolicyV2

~~~text
format = behavior.evidence_policy.v2
require = none | commit_authorization
trusted_authorities = canonical set of {key_id,not_before?,not_after?}
execution_policies = canonical set of exact policy hashes
migration = optional same-shaped rule; absent inherits action requirement
~~~

None needs no authorization. Required with no eligible authority is valid deny-all, never
permission to trust callers. Key/hash entries are unique and canonically sorted. Policy
identity binds intervals/migration rule/all requirements.

Execution policy format behavior.policy.v2 extends existing declarative requirements:
require_verified/required check categories, accepted profile hashes, trusted verifier roles,
accepted verifier/solver identities, waiver eligibility/trusted waiver roles and required
time/context conditions. Unsupported requirements fail; no unspecified trust wildcard.
These are new formats, never extra silently accepted fields in v1.

ExecutionPolicyV2 explicitly declares bind_commit_time:Bool and required_context, a finite
typed product of uniquely named Bool/i64 Int/String fields with optional typed expected values.
Fields sort by UTF-8 name; missing/extra fields, invalid types or unequal expected values fail.
An empty product is valid. No implicit defaults, arbitrary JSON objects or host predicates
enter the policy judgment. These are governance context fields, not Behavior state/schema.

## Explicit authorization context

~~~text
Q = {
 format: behavior.authorization_context.v2,
 policy_time: canonical UTC,
 requested_commit_time: canonical UTC | null,
 required_context: exact typed product declared by ExecutionPolicyV2
}
ContextHash(Q) = H("behavior.authorization_context.v2",canonical_json(Q))
~~~

All Q fields are required. Authorization archives full Q and its context_hash assertion.
Invocation input/context/facts are already bound by CandidateTransitionHash; Q contains
additional policy/commit context. Q contains neither authorization nor future commit identity.
Candidate identity is unchanged by attaching Q/evidence; authorization binds both identities.

Authorizer/verifier/waiver key intervals and waiver expiry are evaluated at Q.policy_time.
authorized_at must equal Q.policy_time. A timeless verifier signature authenticates its claim;
key eligibility here means trust at policy judgment time, not proof of when it was signed.
If bind_commit_time=true, Q.requested_commit_time equals the actual bundle commit_time;
otherwise it is null. No equality of policy_time and commit_time or real-world freshness is
implied. Neither value is inferred from the current clock or a signature's presence.

Live commit receives Q independently from the host and compares it with signed Q; copying
Q only from the authorization cannot establish that comparison. The store independently
rederives the candidate's state/facts. External context claims remain explicit host data
endorsed by the trusted authorizer, not facts Core can independently authenticate.
The committed bundle archives the compared Q; replay/recovery use original archived Q.

## Authorization content

All fields required unless optional:

~~~text
format = behavior.authorization.v2
issuer_key_id
decision = allow | refuse
candidate_transition_hash
kind = action | migration
store
evaluated_history = HistoryRef
evidence_policy_hash
execution_policy_hash
subject = {behavior_hash}
       | {migration_hash,source_behavior,target_behavior,source_schema,target_schema}
context = Q
context_hash = ContextHash(Q)
verification_hashes = canonical set
waiver_hashes = canonical set
waiver_signature_hashes = canonical set
authorized_at = Q.policy_time
reasons = canonical structured policy reasons
~~~

Candidate identity already binds ΔS, complete K and invocation input/context/facts. ContextHash
binds the complete explicit Q; authorization binds both hashes and exact policies. A duplicated
authorized_at must match Q.policy_time. Unknown or contradictory fields fail before signing.

Transport:

~~~text
format = behavior.signed_authorization.v2
content = AuthorizationContent
authorization_hash
signature = {format:behavior.authorization_signature.v2,subject_hash,key_id,signature}
~~~

Signature changes do not change AuthorizationHash. Issuer/policy/subject/command count/head/
bound-context changes alter content identity or fail binding. No future commit/occurrence
identity or authorization feeds back into candidate hashing.

## Fresh authenticated verification and complete obligations

~~~text
format = behavior.verification_envelope.v2
content = {
 format:behavior.verification_content.v2,
 issuer_key_id,subject,profile_hash,verifier_version,solver_version,
 expected_check_manifest_hash,report_hash
}
verification_hash
profile = canonical selected verification profile
expected_check_manifest = behavior.verification_manifest.v1 body below
report = behavior.verification_report.v2 body below
signature = {format:behavior.verification_signature.v2,subject_hash,key_id,signature}
~~~

Subject binds exact module or migration plus source/target BehaviorHashes. Reserve verifier
0.7.0 with supported Z3 4.16.0/canonical profile; advance explicitly if predecessor consumes it.
The trusted producer derives a closed expected manifest from admitted subject/profile/encoding,
runs fresh verification with cache=None, validates coverage/aggregate then signs typed output.
It never signs arbitrary caller report JSON. Reproducible failed/inconclusive reports may be
authenticated as those outcomes, but cannot satisfy require_verified without an eligible
exact waiver. The infrastructure-abort rule below is checked before producing any envelope.

### Semantic report and detached diagnostics

~~~text
report = {
 format: behavior.verification_report.v2,
 subject, profile_hash, verifier_version, solver_version,
 expected_check_manifest_hash,
 checks: canonical results sorted by obligation key,
 findings: canonical semantic findings sorted by finding identity,
 result: independently derived aggregate
}
ReportHash = H("behavior.verification_report.v2",canonical_json(report))
~~~

Each result contains key,outcome,reason (typed code or null),finding_hashes and witness (or
null). Outcomes are proven,counterexample,inconclusive. A counterexample retains canonical
typed state/input/context/facts and semantic observations/result needed to confirm it.
Semantic findings retain kind,severity,semantic citations and associated obligation keys.
Compute their existing-domain finding identities from canonical semantic citations, not from
raw display-bearing report entries. Equivalent aliases resolve to the same citations;
citation normalization cannot remove distinct check-site results. Legacy raw finding/waiver
formats and identity algorithms remain unchanged; sharing a finding never erases checks.

Source locations, pretty expressions, display aliases, explanations, host paths, cached flags
and diagnostic order are detached diagnostics, absent from report/envelope/evidence/commit
content. Raw legacy counterexample records/identities are not embedded in the v2 semantic
witness: project their typed meaning while preserving the original legacy formats separately.
Reason codes/semantic subjects and SMT symbol/obligation generation follow canonical admitted
semantics. Unsupported reason encodings fail rather than hashing arbitrary solver messages.
Equal semantic inputs/profile/versions produce equal report bytes; source relocation or a
normalized binder/alias change cannot change ReportHash or VerificationHash. Signatures still
bind the semantic content; caller-supplied reports remain ineligible for trusted production.

### Closed obligation manifest

~~~text
M = ExpectedObligations(exact_subject,profile,verifier_encoding,solver_version)
descriptor = {
 subject, profile_hash, verifier_version, solver_version,
 category, owner_hash, phase, semantic_path, predicate_kind
}
ObligationKey = H("behavior.verification_obligation.v1",canonical_json(descriptor))
manifest = {
 format: behavior.verification_manifest.v1,
 subject, profile_hash, verifier_version, solver_version,
 obligations: sorted [{key,descriptor} for every expected obligation]
}
ManifestHash = H("behavior.verification_manifest.v1",canonical_json(manifest))
~~~

M is a finite set of proof sites selected by the exact profile and fixed verifier encoding.
category/predicate_kind use the encoding's closed supported check/error-kind registry;
unsupported values fail. owner_hash identifies the owning admitted action/read/rule/migration.
phase identifies declaration,incoming,precondition,state_effect,command_guard,command_payload,
final_invariant,postcondition,read_body,migration_requirement,migration_transform or
migration_validation. Module-level checks use the module's identity as owner.

semantic_path is an ordered sequence of tagged address segments in canonical admitted syntax:
{slot:u32}, {field:String}, {binding:u32}, or {emission:hash,multiplicity_index:u32}.
Slots identify ordered components/expression children; fields identify canonical named
products; bindings identify semantic parameter positions. Emission segments identify the
definition and its per-equal-definition canonical index. Thus identical repeated emissions
and repeated expression sites have distinct keys without using source lines or display names.
Root sites have an empty path; each phase/site/predicate-kind combination is generated once.

Sort manifest entries/checks by raw key bytes. Do not deduplicate distinct proof sites,
even if their formulas happen to coincide. Duplicate sites/keys, omissions, extras or unequal
descriptors under equal keys fail; no first/last-wins map reduction. The versioned generator
binds each descriptor to its exact runtime path/predicate, including successful prior
computations. Every expected key has exactly one truthful result. Command membership/count
and check coverage are different mathematical objects; neither may collapse the other.

### Infrastructure abort versus semantic inconclusiveness

WallClockGuard, cancellation, process/transport failure and any result marked non-reproducible
abort authenticated verification with a typed infrastructure error. Produce no semantic
report or signed envelope and leave existing output files unchanged. If any obligation
aborts, do not sign the otherwise completed prefix. No waiver converts that abort into proof.
Deterministic resource-limit exhaustion may yield authenticated inconclusive under the exact
profile/solver contract. Solver unknown is eligible only under a documented reproducible
reason/encoding; an unclassified solver failure follows the abort rule. Raw legacy reporting
is not reinterpreted. Verification reproducibility is conditional on operational completion,
not a promise that a process cannot be interrupted.

Commit, offline authorization and Behavior replay independently:

1. Check content/profile/manifest/report/check/finding hashes.
2. Derive expected manifest from exact admitted subject and compare archived descriptors.
3. Require each expected obligation exactly once, no omissions/duplicates/extras.
4. Reconstruct aggregate outcome/blocking findings.
5. Check trusted verifier role/accepted profile/encoding/solver.
6. Check waiver scope/eligibility/signature/time.
7. Recompute execution-policy decision.

Signed content binds the semantic report, profile and complete manifest identities. Data
replay checks those archived identities, signatures,
report coverage/aggregate and original policy without a Behavior module. It cannot independently
derive the obligation set or prove theorem-generation correctness; it relies on the trusted
verifier's attestation. This never permits live commit to trust a caller-selected manifest.

An empty report is valid only when the derived expected manifest is actually empty. Verifier
and authorizer roles are distinct. Historical v1 reports/cache remain structural/development
evidence, not trusted current proof. G2 numeric/read-alias/validity/migration soundness gates
precede certification; provenance alone is insufficient.

## Evidence and commit checks

EvidenceV2 (behavior.evidence.v2) contains full execution policy, signed authorization,
all referenced envelopes, waivers and waiver signatures. All documents needed to establish
required conditions are present; hash-only citations cannot satisfy them. None policy may
omit evidence, but invalid supplied packages are rejected.

Before backend write:

1. Strictly validate versions/kind/structure/full HistoryRef.
2. Rederive exact candidate from actual store/module; compare dependencies.
3. Establish immutable EvidencePolicy/hash.
4. Authenticate issuer/exact signed bindings.
5. Validate complete proofs/waivers and recompute policy compliance.
6. Compare independently supplied Q with signed Q and any bound commit time; archive Q.
7. Execute single atomic CAS against evaluated_history.record.

Refusal changes no state/commands/index/head/idempotency data. Valid required evidence has
trust=authenticated; historical replay/recovery stays structural, never silently upgraded.

## Migration preparation

prepare_migration is read-only and produces an opaque candidate with exact source/target
behavior/schema/head/requirements/delta/report/validations. No commands. Commit rederives
all data before the shared checker/CAS. Resolved transform, cache/check identity and proof
bind both behaviors; same-schema derived substitution cannot reuse evidence. Existing migrate
entry points dispatch by policy/version and cannot bypass required trust.

## Time, key lifecycle and legacy adoption

Canonical YYYY-MM-DDTHH:MM:SSZ, years0001–9999, real Gregorian dates, hours0–23, minutes/
seconds0–59. No fractions/offsets/leap-second spelling. Key intervals are [start,end), absent
endpoints unbounded. Evaluate every trust role/waiver expiry at Q.policy_time; signed Q is
compared with the independently supplied commit context and bound commit time when required.
No current clock/environment/key directory/live revocation enters judgment or replay.
Authenticated explicit time does not prove real-world freshness. Rotation uses predeclared
intervals; trust-set changes require a new lineage.

Old v1 documents keep bytes/hashes/replay meaning. None retains legacy state-only behavior.
Required-authorization v1 stores refuse new governed writes before mutation with
TRUSTED_GOVERNANCE_UPGRADE_REQUIRED. Recognition of existing commits is read-only recovery
with structural trust. Opening/replaying never authenticates unsigned legacy evidence.

Adopt by validating/exporting complete live state at exact old head/module/schema and creating
ordinary new v2 genesis/policy. Assert equal StateId/schema/values but different StoreId; retain
old history/external adoption reference. New position0/revisions/removed-ID lifetime are
lineage-local. All profile0.8 commits require v2 genesis, even empty K/none policies.
V1 new-profile writes fail HISTORY_FORMAT_UPGRADE_REQUIRED; legacy none-policy state-only
paths retain their formats. No genesis mutation, historical rewrite or policy-migration primitive.

## Typed errors

INVALID_GOVERNANCE_DOCUMENT, INVALID_SIGNATURE, UNTRUSTED_AUTHORITY, POLICY_MISMATCH,
TRANSITION_MISMATCH, HISTORY_MISMATCH, CONTEXT_MISMATCH, EVIDENCE_REQUIRED,
INCOMPLETE_VERIFICATION, UNSUPPORTED_VERIFIER, POLICY_REFUSED, INVALID_TIME, CONTEXT_REQUIRED and
TRUSTED_GOVERNANCE_UPGRADE_REQUIRED and HISTORY_FORMAT_UPGRADE_REQUIRED. Diagnostics name
structured identities/reasons in
canonical order; never output signing seed or deployment credentials.
