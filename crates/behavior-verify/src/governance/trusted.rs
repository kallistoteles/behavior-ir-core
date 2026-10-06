//! Closed content-addressed documents and explicit trusted-governance judgment.
//! Decoding authenticates claims; only live store rederivation establishes commitment.

use crate::hashing::*;
use behavior_core::migration::Migration;
use behavior_core::semantic::module::Module;
use ed25519_dalek::{Signature, Signer, SigningKey, VerifyingKey};
use serde::Deserialize;
use serde_json::Value as Json;

#[derive(Debug, Clone, PartialEq, Eq, thiserror::Error)]
#[error("{code}: {message}")]
pub struct TrustedError {
    pub code: &'static str,
    pub message: String,
}

pub type R<T> = Result<T, TrustedError>;

fn legacy_reduction(text: &str) -> R<Json> {
    behavior_core::canonical::decode_strict(text).map_err(|e| TrustedError {
        code: "INVALID_GOVERNANCE_DOCUMENT",
        message: e.to_string(),
    })
}

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CandidateBody {
    format: String,
    transition_hash: String,
    content: Json,
}
#[derive(Debug, Clone)]
pub struct GovernanceCandidate {
    claim: Json,
    identity: String,
}
impl GovernanceCandidate {
    pub fn from_json(text: &str) -> R<Self> {
        let claim = legacy_reduction(text)?;
        let body: CandidateBody = typed(&claim)?;
        if body.format != "behavior.governance_candidate.v2" {
            return fail("INVALID_CANDIDATE", "unsupported candidate format");
        }
        let o = body.content.as_object().ok_or_else(|| TrustedError {
            code: "INVALID_CANDIDATE",
            message: "candidate content must be a closed product".into(),
        })?;
        let mut fields = vec![
            "kind",
            "store",
            "evaluated_history",
            "entity_declarations",
            "read_set",
            "read_facts",
            "write_set",
            "write_lifecycle",
        ];
        match body.content["kind"].as_str() {
            Some("action") => fields.extend(["behavior_version", "record"]),
            Some("migration") => fields.extend([
                "migration_hash",
                "source_behavior",
                "target_behavior",
                "source_schema",
                "target_schema",
                "requirements",
                "transformation",
                "validations",
            ]),
            _ => return fail("INVALID_CANDIDATE", "unsupported candidate kind"),
        }
        if o.len() != fields.len() || fields.iter().any(|f| !o.contains_key(*f)) {
            return fail(
                "INVALID_CANDIDATE",
                "missing or unknown candidate content field",
            );
        }
        let store = body.content["store"].as_str().ok_or_else(|| TrustedError {
            code: "INVALID_CANDIDATE",
            message: "candidate store is not an identity".into(),
        })?;
        hash_bytes(store)?;
        validate_history(&body.content["evaluated_history"])?;
        if body.content["evaluated_history"]["store"] != store {
            return fail(
                "INVALID_CANDIDATE",
                "candidate store differs from history lineage",
            );
        }
        let declarations = body.content["entity_declarations"]
            .as_object()
            .ok_or_else(|| TrustedError {
                code: "INVALID_CANDIDATE",
                message: "entity declarations must be a canonical named product".into(),
            })?;
        for (name, value) in declarations {
            if name.is_empty() {
                return fail("INVALID_CANDIDATE", "empty entity declaration name");
            }
            hash_bytes(value.as_str().ok_or_else(|| TrustedError {
                code: "INVALID_CANDIDATE",
                message: "declaration is not an identity".into(),
            })?)?;
        }
        let reads: Vec<CandidateRead> = typed(&body.content["read_set"])?;
        let writes: Vec<CandidateWrite> = typed(&body.content["write_set"])?;
        let lifecycle: Vec<CandidateLifecycle> = typed(&body.content["write_lifecycle"])?;
        if reads
            .windows(2)
            .any(|v| (&v[0].entity, &v[0].id) >= (&v[1].entity, &v[1].id))
            || writes.windows(2).any(|v| {
                (&v[0].entity, &v[0].id, &v[0].field) >= (&v[1].entity, &v[1].id, &v[1].field)
            })
            || lifecycle
                .windows(2)
                .any(|v| (&v[0].op, &v[0].entity, &v[0].id) >= (&v[1].op, &v[1].entity, &v[1].id))
        {
            return fail(
                "INVALID_CANDIDATE",
                "candidate collections must be canonical and unique",
            );
        }
        for r in reads {
            if r.entity.is_empty() || r.id.is_empty() || r.revision == 0 {
                return fail(
                    "INVALID_CANDIDATE",
                    "invalid observed entity identity/revision",
                );
            }
            word_set(&r.fields)?;
        }
        for w in writes {
            let scalar =
                |v: &Json| v.is_null() || v.is_boolean() || v.is_string() || v.as_i64().is_some();
            if w.entity.is_empty()
                || w.id.is_empty()
                || w.field.is_empty()
                || !scalar(&w.old)
                || !scalar(&w.new)
            {
                return fail("INVALID_CANDIDATE", "invalid written cell identity");
            }
        }
        for e in lifecycle {
            if !["create", "remove"].contains(&e.op.as_str())
                || e.entity.is_empty()
                || e.id.is_empty()
            {
                return fail("INVALID_CANDIDATE", "invalid lifecycle effect");
            }
        }
        behavior_core::facts::Facts::from_json(&body.content["read_facts"]).map_err(|_| {
            TrustedError {
                code: "INVALID_CANDIDATE",
                message: "invalid observed facts".into(),
            }
        })?;
        if body.content["kind"] == "action" {
            let bh = body.content["behavior_version"]
                .as_str()
                .ok_or_else(|| TrustedError {
                    code: "INVALID_CANDIDATE",
                    message: "missing behavior identity".into(),
                })?;
            hash_bytes(bh)?;
            if body.content["record"]["result"] != "ALLOW"
                || body.content["record"]["behavior_version"] != bh
            {
                return fail(
                    "INVALID_CANDIDATE",
                    "record is refused or belongs to another behavior",
                );
            }
        } else {
            for f in [
                "migration_hash",
                "source_behavior",
                "target_behavior",
                "source_schema",
                "target_schema",
            ] {
                hash_bytes(body.content[f].as_str().ok_or_else(|| TrustedError {
                    code: "INVALID_CANDIDATE",
                    message: "invalid migration subject identity".into(),
                })?)?;
            }
            let requirements: Vec<CandidateRequirement> = typed(&body.content["requirements"])?;
            let mut names = std::collections::BTreeSet::new();
            if requirements
                .iter()
                .any(|r| r.name.is_empty() || !r.held || !names.insert(&r.name))
            {
                return fail(
                    "INVALID_CANDIDATE",
                    "migration requirements must be unique successful named predicates",
                );
            }
            let validations: CandidateValidations = typed(&body.content["validations"])?;
            if !validations.source_validated || !validations.target_validated {
                return fail(
                    "INVALID_CANDIDATE",
                    "migration candidate requires both complete validations",
                );
            }
            let transformation: CandidateTransformation = typed(&body.content["transformation"])?;
            if transformation.migration_hash != body.content["migration_hash"]
                || transformation.report.migration != transformation.migration_hash
            {
                return fail(
                    "INVALID_CANDIDATE",
                    "transformation report names another migration",
                );
            }
            if !body.content["write_lifecycle"]
                .as_array()
                .is_some_and(Vec::is_empty)
                || body.content["read_facts"] != serde_json::json!({})
            {
                return fail(
                    "INVALID_CANDIDATE",
                    "migration has no invocation facts or lifecycle effects",
                );
            }
            if transformation
                .entities
                .windows(2)
                .any(|e| (&e[0].entity, &e[0].id) >= (&e[1].entity, &e[1].id))
            {
                return fail(
                    "INVALID_CANDIDATE",
                    "migration entity product is not canonical and unique",
                );
            }
            for e in &transformation.entities {
                if e.entity.is_empty()
                    || e.id.is_empty()
                    || e.value.as_object().is_none()
                    || e.value["id"] != e.id
                {
                    return fail(
                        "INVALID_CANDIDATE",
                        "migration entity identity/value differs",
                    );
                }
            }
            word_set(&transformation.report.retired)?;
            for (name, r) in &transformation.report.types {
                if name.is_empty() {
                    return fail("INVALID_CANDIDATE", "empty migrated type");
                }
                for set in [&r.copied, &r.transformed, &r.new, &r.dropped] {
                    word_set(set)?;
                }
                let mut all = std::collections::BTreeSet::new();
                if [&r.copied, &r.transformed, &r.new, &r.dropped]
                    .into_iter()
                    .flatten()
                    .any(|f| !all.insert(f))
                {
                    return fail(
                        "INVALID_CANDIDATE",
                        "contradictory migration field classifications",
                    );
                }
                if transformation
                    .entities
                    .iter()
                    .filter(|e| e.entity == *name && e.migrated)
                    .count() as u64
                    != r.entities
                {
                    return fail(
                        "INVALID_CANDIDATE",
                        "migration report count differs from complete output",
                    );
                }
            }
            if transformation.entities.iter().any(|e| {
                e.migrated != transformation.report.types.contains_key(&e.entity)
                    || transformation.report.retired.contains(&e.entity)
            }) {
                return fail(
                    "INVALID_CANDIDATE",
                    "migration output classification differs from report",
                );
            }
        }
        let identity = content_hash(TAG_CANDIDATE_TRANSITION_V2, &body.content)?;
        if identity != body.transition_hash {
            return fail("HASH_MISMATCH", "candidate content identity differs");
        }
        Ok(Self { claim, identity })
    }
    pub fn as_json(&self) -> Json {
        self.claim.clone()
    }
    pub fn hash(&self) -> &str {
        &self.identity
    }
    pub fn kind(&self) -> &str {
        self.claim["content"]["kind"].as_str().unwrap_or_default()
    }
    pub fn content(&self) -> &Json {
        &self.claim["content"]
    }
    pub fn subject(&self) -> Json {
        let c = self.content();
        if self.kind() == "action" {
            serde_json::json!({"behavior_hash":c["behavior_version"]})
        } else {
            serde_json::json!({"migration_hash":c["migration_hash"],"source_behavior":c["source_behavior"],"target_behavior":c["target_behavior"],"source_schema":c["source_schema"],"target_schema":c["target_schema"]})
        }
    }
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CandidateRead {
    entity: String,
    id: String,
    revision: u64,
    fields: Vec<String>,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CandidateWrite {
    entity: String,
    id: String,
    field: String,
    old: Json,
    new: Json,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CandidateLifecycle {
    op: String,
    entity: String,
    id: String,
}

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CandidateRequirement {
    name: String,
    held: bool,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CandidateValidations {
    source_validated: bool,
    target_validated: bool,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CandidateTransformation {
    migration_hash: String,
    entities: Vec<CandidateMigrated>,
    report: CandidateMigrationReport,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CandidateMigrated {
    entity: String,
    id: String,
    value: Json,
    migrated: bool,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CandidateMigrationReport {
    migration: String,
    types: std::collections::BTreeMap<String, CandidateMigrationType>,
    retired: Vec<String>,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct CandidateMigrationType {
    copied: Vec<String>,
    transformed: Vec<String>,
    new: Vec<String>,
    dropped: Vec<String>,
    entities: u64,
}

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct EvidenceBody {
    format: String,
    execution_policy: Json,
    authorization: Json,
    verifications: Vec<Json>,
    waivers: Vec<Json>,
    waiver_signatures: Vec<Json>,
}
#[derive(Debug, Clone)]
pub struct EvidenceV2 {
    claim: Json,
    policy: ExecutionPolicyV2,
    authorization: SignedAuthorizationV2,
    proofs: Vec<VerificationEnvelopeV2>,
    waivers: Vec<CheckedWaiver>,
    waiver_signatures: Vec<CheckedWaiverSignature>,
}
impl EvidenceV2 {
    pub fn from_json(text: &str) -> R<Self> {
        let claim = legacy_reduction(text)?;
        let e: EvidenceBody = typed(&claim)?;
        if e.format != "behavior.evidence.v2" {
            return fail("INVALID_EVIDENCE", "unsupported evidence format");
        }
        let policy = ExecutionPolicyV2::from_json(&e.execution_policy.to_string())?;
        let authorization = SignedAuthorizationV2::from_json(&e.authorization.to_string())?;
        let proofs = e
            .verifications
            .iter()
            .map(|v| VerificationEnvelopeV2::from_json(&v.to_string()))
            .collect::<R<Vec<_>>>()?;
        let waivers = e
            .waivers
            .iter()
            .map(checked_waiver)
            .collect::<R<Vec<_>>>()?;
        let waiver_signatures = e
            .waiver_signatures
            .iter()
            .map(checked_waiver_signature)
            .collect::<R<Vec<_>>>()?;
        check_set(&proofs, |p| p.hash())?;
        check_set(&waivers, |w| w.waiver.hash.as_str())?;
        check_set(&waiver_signatures, |s| s.identity.as_str())?;
        let a = validate_authorization_content(&e.authorization["content"])?;
        if a.execution_policy_hash != policy.hash()
            || a.verification_hashes
                != proofs
                    .iter()
                    .map(|p| p.hash().to_string())
                    .collect::<Vec<_>>()
            || a.waiver_hashes
                != waivers
                    .iter()
                    .map(|w| w.waiver.hash.clone())
                    .collect::<Vec<_>>()
            || a.waiver_signature_hashes
                != waiver_signatures
                    .iter()
                    .map(|s| s.identity.clone())
                    .collect::<Vec<_>>()
        {
            return fail(
                "EVIDENCE_MISMATCH",
                "evidence package does not archive exactly the cited policies/proofs/waivers/signatures",
            );
        }
        for s in &waiver_signatures {
            if !waivers.iter().any(|w| w.waiver.hash == s.waiver_hash) {
                return fail("EVIDENCE_MISMATCH", "signature cites an absent waiver");
            }
        }
        validate_context(&a.context, &policy)?;
        Ok(Self {
            claim,
            policy,
            authorization,
            proofs,
            waivers,
            waiver_signatures,
        })
    }
    pub fn as_json(&self) -> Json {
        self.claim.clone()
    }
    pub fn hash(&self) -> &str {
        self.authorization.hash()
    }
    pub fn execution_policy(&self) -> &ExecutionPolicyV2 {
        &self.policy
    }
    pub fn authorization(&self) -> &SignedAuthorizationV2 {
        &self.authorization
    }
}
#[derive(Debug, Clone)]
struct CheckedWaiver {
    waiver: super::Waiver,
}
fn checked_waiver(raw: &Json) -> R<CheckedWaiver> {
    let waiver = super::decode_waiver(&raw.to_string()).map_err(|e| TrustedError {
        code: "INVALID_WAIVER",
        message: e.to_string(),
    })?;
    if raw.get("hash").is_some_and(|h| h != &waiver.hash) {
        return fail("HASH_MISMATCH", "waiver identity assertion differs");
    }
    if let Some(t) = &waiver.expires_at {
        valid_time(t)?;
    }
    Ok(CheckedWaiver { waiver })
}
#[derive(Debug, Clone, Deserialize)]
#[serde(deny_unknown_fields)]
struct WaiverSignatureBody {
    waiver_hash: String,
    key_id: String,
    signature: String,
}
#[derive(Debug, Clone)]
struct CheckedWaiverSignature {
    waiver_hash: String,
    key_id: String,
    identity: String,
}
fn checked_waiver_signature(raw: &Json) -> R<CheckedWaiverSignature> {
    let s: WaiverSignatureBody = typed(raw)?;
    let key = public_key(&s.key_id)?;
    key.verify_strict(
        &signature_message(TAG_WAIVER, &s.waiver_hash)?,
        &Signature::from_bytes(&hex_bytes(&s.signature)?),
    )
    .map_err(|_| TrustedError {
        code: "INVALID_SIGNATURE",
        message: "invalid detached waiver.v1 signature".into(),
    })?;
    Ok(CheckedWaiverSignature {
        waiver_hash: s.waiver_hash,
        key_id: s.key_id,
        identity: content_hash(TAG_WAIVER_SIGNATURE, raw)?,
    })
}

#[derive(Debug, Clone, Copy)]
pub enum EvidenceRole {
    Verifier,
    Waiver,
}

#[derive(Debug, Clone)]
pub struct AuthenticatedVerification {
    pub envelope: VerificationEnvelopeV2,
    pub diagnostics: Json,
}
pub fn expected_manifest(
    subject: &GovernanceSubject<'_>,
    profile: &crate::Profile,
    solver_version: &str,
) -> R<VerificationManifest> {
    use super::semantic_proof::{SitePlanner, checks, subject_json};
    supported_versions(solver_version)?;
    let mut obligations = Vec::new();
    let subject_json = subject_json(subject)?;
    for c in checks(subject, profile, &SitePlanner(solver_version))? {
        let site = c.site.ok_or_else(|| TrustedError {
            code: "INCOMPLETE_VERIFICATION",
            message: "encoder did not provide a semantic site".into(),
        })?;
        let descriptor = serde_json::json!({"subject":subject_json,"profile_hash":profile.hash(),"verifier_version":"0.7.0","solver_version":solver_version,
            "category":c.kind.as_str(),"owner_hash":site.owner_hash,"phase":site.phase,"semantic_path":site.semantic_path,"predicate_kind":site.predicate_kind});
        obligations.push(serde_json::json!({"key":content_hash(TAG_VERIFICATION_OBLIGATION,&descriptor)?,"descriptor":descriptor}));
    }
    obligations.sort_by(|a, b| a["key"].as_str().cmp(&b["key"].as_str()));
    let claim = serde_json::json!({"format":TAG_VERIFICATION_MANIFEST,"subject":subject_json,"profile_hash":profile.hash(),"verifier_version":"0.7.0","solver_version":solver_version,"obligations":obligations});
    VerificationManifest::from_json(&claim.to_string())
}
/// Derive the public issuer from an explicit canonical 32-byte seed. Errors
/// never include key bytes; key-file discovery is exclusively host/CLI work.
pub fn signing_key_id(seed: &str) -> R<String> {
    let key = SigningKey::from_bytes(&hex_bytes(seed)?);
    Ok(format!(
        "ed25519:{}",
        key.verifying_key()
            .to_bytes()
            .iter()
            .map(|b| format!("{b:02x}"))
            .collect::<String>()
    ))
}

pub fn verify_authenticated(
    subject: &GovernanceSubject<'_>,
    profile: &crate::Profile,
    seed: &str,
    solver: &dyn crate::solver::Solver,
) -> R<AuthenticatedVerification> {
    supported_versions(&solver.version())?;
    let issuer = signing_key_id(seed)?;
    let manifest = expected_manifest(subject, profile, &solver.version())?;
    let guarded = OperationalSolver {
        solver,
        aborted: std::cell::Cell::new(false),
    };
    let raw = super::semantic_proof::checks(subject, profile, &guarded)?;
    if guarded.aborted.get() {
        return fail(
            "VERIFICATION_INFRASTRUCTURE",
            "solver did not complete reproducibly; no report or envelope exists",
        );
    }
    let (report, diagnostics) =
        semantic_report(subject, profile, &solver.version(), &manifest, &raw)?;
    let content = serde_json::json!({"format":TAG_VERIFICATION_CONTENT_V2,"issuer_key_id":issuer,
        "subject":super::semantic_proof::subject_json(subject)?,"profile_hash":profile.hash(),"verifier_version":crate::VERIFIER_VERSION,
        "solver_version":solver.version(),"expected_check_manifest_hash":manifest.hash(),"report_hash":content_hash(TAG_VERIFICATION_REPORT_V2,&report)?});
    let identity = content_hash(TAG_VERIFICATION_CONTENT_V2, &content)?;
    let claim = serde_json::json!({"format":"behavior.verification_envelope.v2","content":content,"verification_hash":identity,
        "profile":profile.to_json(),"expected_check_manifest":manifest.as_json(),"report":report,
        "signature":signed_signature(TAG_VERIFICATION_SIGNATURE_V2,&identity,&issuer,seed)?});
    let envelope = VerificationEnvelopeV2::from_json(&claim.to_string())?;
    envelope.validate_for_subject(subject, profile, &solver.version())?;
    Ok(AuthenticatedVerification {
        envelope,
        diagnostics,
    })
}

/// Fresh exact-pair migration verification through the same authenticated producer.
pub fn verify_migration_authenticated(
    migration: &behavior_core::migration::Migration,
    source: &behavior_core::semantic::module::Module,
    target: &behavior_core::semantic::module::Module,
    profile: &crate::Profile,
    seed: &str,
    solver: &dyn crate::solver::Solver,
) -> R<AuthenticatedVerification> {
    verify_authenticated(
        &GovernanceSubject::Migration(migration, source, target),
        profile,
        seed,
        solver,
    )
}

#[derive(Debug, Clone)]
pub struct AuthorizationContextV2 {
    claim: Json,
    identity: String,
    bound: bool,
}
impl AuthorizationContextV2 {
    pub fn from_json(text: &str, policy: &ExecutionPolicyV2) -> R<Self> {
        let claim = legacy_reduction(text)?;
        validate_context(&claim, policy)?;
        Ok(Self {
            identity: content_hash(TAG_CONTEXT_V2, &claim)?,
            claim,
            bound: policy.body.bind_commit_time,
        })
    }
    pub fn as_json(&self) -> Json {
        self.claim.clone()
    }
    pub fn hash(&self) -> &str {
        &self.identity
    }
    pub fn policy_time(&self) -> &str {
        self.claim["policy_time"].as_str().unwrap_or_default()
    }
    pub fn validate_commit_time(&self, time: &str) -> R<()> {
        valid_time(time)?;
        if self.bound && self.claim["requested_commit_time"].as_str() != Some(time) {
            return fail(
                "CONTEXT_MISMATCH",
                "requested commit time differs from the actual bundle time",
            );
        }
        Ok(())
    }
}

pub enum GovernanceSubject<'a> {
    Module(&'a Module),
    Migration(&'a Migration, &'a Module, &'a Module),
}

#[derive(Debug, Clone)]
pub struct AuthorizationContentV2 {
    content: Json,
    identity: String,
}
impl AuthorizationContentV2 {
    pub fn as_json(&self) -> Json {
        self.content.clone()
    }
    pub fn hash(&self) -> &str {
        &self.identity
    }
    pub fn decision(&self) -> &str {
        self.content["decision"].as_str().unwrap_or("refuse")
    }
}

#[derive(Debug, Clone)]
pub struct TrustedJudgment {
    decision: String,
}
impl TrustedJudgment {
    pub fn decision(&self) -> &str {
        &self.decision
    }
    pub fn trust(&self) -> &str {
        "authenticated"
    }
}

#[allow(clippy::too_many_arguments)]
pub fn authorize_trusted(
    subject: &GovernanceSubject<'_>,
    candidate: &GovernanceCandidate,
    evidence_policy: &EvidencePolicyV2,
    policy: &ExecutionPolicyV2,
    proofs: &[VerificationEnvelopeV2],
    issuer_key_id: &str,
    context: &AuthorizationContextV2,
) -> R<AuthorizationContentV2> {
    authorize_trusted_with_waivers(
        subject,
        candidate,
        evidence_policy,
        policy,
        proofs,
        &[],
        &[],
        issuer_key_id,
        context,
    )
}

/// Offline judgment over complete documents. A candidate remains a host claim;
/// the store must independently rederive it before any atomic mutation.
#[allow(clippy::too_many_arguments)]
pub fn authorize_trusted_with_waivers(
    subject: &GovernanceSubject<'_>,
    candidate: &GovernanceCandidate,
    evidence_policy: &EvidencePolicyV2,
    policy: &ExecutionPolicyV2,
    proofs: &[VerificationEnvelopeV2],
    waivers: &[Json],
    waiver_signatures: &[Json],
    issuer_key_id: &str,
    context: &AuthorizationContextV2,
) -> R<AuthorizationContentV2> {
    let waivers = waivers.iter().map(checked_waiver).collect::<R<Vec<_>>>()?;
    let signatures = waiver_signatures
        .iter()
        .map(checked_waiver_signature)
        .collect::<R<Vec<_>>>()?;
    compute_authorization(
        Some(subject),
        candidate,
        evidence_policy,
        policy,
        proofs,
        &waivers,
        &signatures,
        issuer_key_id,
        context,
    )
}

pub fn sign_authorization(
    content: &AuthorizationContentV2,
    seed: &str,
) -> R<SignedAuthorizationV2> {
    let a = validate_authorization_content(&content.content)?;
    let claim = serde_json::json!({"format":"behavior.signed_authorization.v2","content":content.content,"authorization_hash":content.hash(),
        "signature":signed_signature(TAG_AUTHORIZATION_SIGNATURE_V2,content.hash(),&a.issuer_key_id,seed)?});
    SignedAuthorizationV2::from_json(&claim.to_string())
}

pub fn validate_trusted_authorization(
    subject: &GovernanceSubject<'_>,
    candidate: &GovernanceCandidate,
    policy: &EvidencePolicyV2,
    evidence: &EvidenceV2,
    context: &AuthorizationContextV2,
) -> R<TrustedJudgment> {
    validate_authorization_for(Some(subject), candidate, policy, evidence, context)
}

/// Data replay authenticates the archived verifier's coverage claim. It cannot
/// derive obligations without the original Behavior; live commit never uses this.
pub fn validate_archived_authorization(
    candidate: &GovernanceCandidate,
    policy: &EvidencePolicyV2,
    evidence: &EvidenceV2,
    context: &AuthorizationContextV2,
) -> R<TrustedJudgment> {
    validate_authorization_for(None, candidate, policy, evidence, context)
}
fn validate_authorization_for(
    subject: Option<&GovernanceSubject<'_>>,
    candidate: &GovernanceCandidate,
    policy: &EvidencePolicyV2,
    evidence: &EvidenceV2,
    context: &AuthorizationContextV2,
) -> R<TrustedJudgment> {
    let supplied = &evidence.authorization.claim["content"];
    if supplied["context"] != context.claim || supplied["context_hash"] != context.hash() {
        return fail(
            "CONTEXT_MISMATCH",
            "signed authorization differs from independently supplied full context",
        );
    }
    let issuer = supplied["issuer_key_id"]
        .as_str()
        .ok_or_else(|| TrustedError {
            code: "INVALID_EVIDENCE",
            message: "missing authorization issuer".into(),
        })?;
    let expected = compute_authorization(
        subject,
        candidate,
        policy,
        &evidence.policy,
        &evidence.proofs,
        &evidence.waivers,
        &evidence.waiver_signatures,
        issuer,
        context,
    )?;
    if expected.content != *supplied {
        return fail(
            "EVIDENCE_MISMATCH",
            "authorization content differs from independent candidate/policy/evidence judgment",
        );
    }
    if expected.decision() != "allow" {
        return fail(
            "AUTHORIZATION_REFUSED",
            "execution policy refuses the exact transition",
        );
    }
    Ok(TrustedJudgment {
        decision: "allow".into(),
    })
}
fn rule_for<'a>(policy: &'a EvidencePolicyV2, kind: &str) -> &'a PolicyRule {
    if kind == "migration" {
        policy.migration.as_ref().unwrap_or(&policy.action)
    } else {
        &policy.action
    }
}
fn policy_reason(code: &str, finding: Option<&str>, verification: Option<&str>) -> Json {
    let mut value = serde_json::json!({"code":code});
    if let Some(h) = finding {
        value["finding_hash"] = serde_json::json!(h);
    }
    if let Some(h) = verification {
        value["verification_hash"] = serde_json::json!(h);
    }
    value
}
#[allow(clippy::too_many_arguments)]
fn compute_authorization(
    subject: Option<&GovernanceSubject<'_>>,
    candidate: &GovernanceCandidate,
    evidence_policy: &EvidencePolicyV2,
    policy: &ExecutionPolicyV2,
    proofs: &[VerificationEnvelopeV2],
    waivers: &[CheckedWaiver],
    signatures: &[CheckedWaiverSignature],
    issuer: &str,
    context: &AuthorizationContextV2,
) -> R<AuthorizationContentV2> {
    public_key(issuer)?;
    validate_context(&context.claim, policy)?;
    let rule = rule_for(evidence_policy, candidate.kind());
    if !rule
        .trusted_authorities
        .iter()
        .any(|k| k.eligible(issuer, context.policy_time()))
    {
        return fail(
            "UNTRUSTED_AUTHORITY",
            "issuer has no authorization authority under this exact policy at policy_time",
        );
    }
    if !rule.execution_policies.iter().any(|h| h == policy.hash()) {
        return fail(
            "EXECUTION_POLICY_NOT_ALLOWED",
            "execution policy identity is absent from immutable evidence policy",
        );
    }
    let expected_subject = candidate.subject();
    if let Some(subject) = subject {
        if super::semantic_proof::subject_json(subject)? != expected_subject {
            return fail("SUBJECT_MISMATCH", "candidate and admitted subject differ");
        }
        if let GovernanceSubject::Module(m) = subject {
            let replay =
                behavior_core::record::replay(m, &candidate.content()["record"].to_string());
            if !replay.matches {
                return fail(
                    "INVALID_CANDIDATE",
                    "candidate decision record does not reproduce under exact admitted Behavior",
                );
            }
        }
    }
    check_set(proofs, |p| p.hash())?;
    check_set(waivers, |w| w.waiver.hash.as_str())?;
    check_set(signatures, |s| s.identity.as_str())?;
    let mut covered = std::collections::BTreeSet::new();
    let mut reasons = Vec::new();
    for proof in proofs {
        let content: &Json = &proof.claim["content"];
        let profile = decode_trusted_profile(&proof.claim["profile"].to_string())?;
        if content["subject"] != expected_subject {
            return fail(
                "SUBJECT_MISMATCH",
                "verification attests another exact subject",
            );
        }
        if let Some(subject) = subject {
            proof.validate_for_subject(
                subject,
                &profile,
                content["solver_version"].as_str().unwrap_or_default(),
            )?;
        }
        let key = content["issuer_key_id"].as_str().unwrap_or_default();
        if !policy.key_is_eligible(EvidenceRole::Verifier, key, context.policy_time())? {
            return fail(
                "UNTRUSTED_VERIFIER",
                "verification issuer is not eligible under exact execution policy at policy_time",
            );
        }
        let accepted = policy
            .body
            .accepted_profiles
            .iter()
            .any(|h| h == &profile.hash())
            && policy
                .body
                .accepted_verifiers
                .iter()
                .any(|v| content["verifier_version"] == *v)
            && policy
                .body
                .accepted_solvers
                .iter()
                .any(|v| content["solver_version"] == *v);
        if !accepted {
            reasons.push(policy_reason(
                "proof_not_accepted",
                None,
                Some(proof.hash()),
            ));
            continue;
        }
        covered.extend(profile.checks.iter().map(|c| c.as_str().to_string()));
        if let Some(findings) = proof.report().get("findings").and_then(Json::as_array) {
            for f in findings.iter().filter(|f| f["severity"] == "blocking") {
                let hash = f["hash"].as_str().unwrap_or_default();
                let kind = f["kind"].as_str().unwrap_or_default();
                let subject_hash = expected_subject
                    .get("behavior_hash")
                    .or_else(|| expected_subject.get("migration_hash"))
                    .and_then(Json::as_str)
                    .unwrap_or_default();
                let waived = policy.body.allow_waivers
                    && policy.body.waiver_kinds.iter().any(|k| k == kind)
                    && waivers.iter().any(|w| {
                        w.waiver.finding_hash == hash
                            && w.waiver.behavior_version == subject_hash
                            && w.waiver.profile_hash == profile.hash()
                            && content["verifier_version"] == w.waiver.verifier_version
                            && w.waiver
                                .expires_at
                                .as_deref()
                                .is_none_or(|t| context.policy_time() < t)
                            && signatures.iter().any(|s| {
                                s.waiver_hash == w.waiver.hash
                                    && policy
                                        .body
                                        .trusted_waivers
                                        .iter()
                                        .any(|k| k.eligible(&s.key_id, context.policy_time()))
                            })
                    });
                if !waived {
                    reasons.push(policy_reason(
                        "blocking_finding",
                        Some(hash),
                        Some(proof.hash()),
                    ));
                }
            }
        }
    }
    if policy.body.require_verified && proofs.is_empty() {
        reasons.push(policy_reason("verification_required", None, None));
    }
    for required in &policy.body.required_checks {
        if !covered.contains(required) {
            reasons.push(serde_json::json!({"code":"required_check_missing","category":required}));
        }
    }
    for s in signatures {
        if !waivers.iter().any(|w| w.waiver.hash == s.waiver_hash) {
            return fail("EVIDENCE_MISMATCH", "signature cites a missing waiver");
        }
    }
    reasons.sort_by_key(Json::to_string);
    if reasons.windows(2).any(|p| p[0] == p[1]) {
        return fail(
            "HASH_CONTENT_CONFLICT",
            "duplicate policy reason would hide distinct evidence",
        );
    }
    let c = candidate.content();
    let content = serde_json::json!({"format":TAG_AUTHORIZATION_V2,"issuer_key_id":issuer,"decision":if reasons.is_empty(){"allow"}else{"refuse"},
        "candidate_transition_hash":candidate.hash(),"kind":candidate.kind(),"store":c["store"],"evaluated_history":c["evaluated_history"],
        "evidence_policy_hash":evidence_policy.hash(),"execution_policy_hash":policy.hash(),"subject":expected_subject,"context":context.claim,"context_hash":context.hash(),
        "verification_hashes":proofs.iter().map(|p|p.hash()).collect::<Vec<_>>(),"waiver_hashes":waivers.iter().map(|w|&w.waiver.hash).collect::<Vec<_>>(),
        "waiver_signature_hashes":signatures.iter().map(|s|&s.identity).collect::<Vec<_>>(),"authorized_at":context.policy_time(),"reasons":reasons});
    validate_authorization_content(&content)?;
    Ok(AuthorizationContentV2 {
        identity: content_hash(TAG_AUTHORIZATION_V2, &content)?,
        content,
    })
}

fn fail<T>(code: &'static str, message: impl Into<String>) -> R<T> {
    Err(TrustedError {
        code,
        message: message.into(),
    })
}
fn content_hash(tag: &str, body: &Json) -> R<String> {
    document_hash(tag, body).map_err(|e| TrustedError {
        code: "INVALID_GOVERNANCE_DOCUMENT",
        message: e.to_string(),
    })
}
fn typed<T: serde::de::DeserializeOwned>(value: &Json) -> R<T> {
    serde_json::from_value(value.clone()).map_err(|e| TrustedError {
        code: "INVALID_GOVERNANCE_DOCUMENT",
        message: e.to_string(),
    })
}
fn hex_bytes<const N: usize>(text: &str) -> R<[u8; N]> {
    if text.len() != N * 2
        || !text
            .bytes()
            .all(|c| c.is_ascii_digit() || (b'a'..=b'f').contains(&c))
    {
        return fail(
            "INVALID_CRYPTO_ENCODING",
            "expected canonical lowercase hexadecimal bytes",
        );
    }
    let mut out = [0; N];
    for (i, pair) in text.as_bytes().as_chunks::<2>().0.iter().enumerate() {
        let digit = |b: u8| {
            if b.is_ascii_digit() {
                b - b'0'
            } else {
                b - b'a' + 10
            }
        };
        out[i] = (digit(pair[0]) << 4) | digit(pair[1]);
    }
    Ok(out)
}
fn hash_bytes(hash: &str) -> R<[u8; 32]> {
    let hex = hash.strip_prefix("sha256:").ok_or_else(|| TrustedError {
        code: "INVALID_HASH",
        message: "expected sha256 identity".into(),
    })?;
    hex_bytes(hex)
}
fn public_key(id: &str) -> R<VerifyingKey> {
    let hex = id.strip_prefix("ed25519:").ok_or_else(|| TrustedError {
        code: "INVALID_KEY",
        message: "expected ed25519 public identity".into(),
    })?;
    let bytes = hex_bytes(hex)?;
    let key = VerifyingKey::from_bytes(&bytes).map_err(|_| TrustedError {
        code: "INVALID_KEY",
        message: "invalid Ed25519 public key".into(),
    })?;
    if key.is_weak() || key.to_edwards().compress().to_bytes() != bytes {
        return fail("INVALID_KEY", "weak or noncanonical Ed25519 public key");
    }
    Ok(key)
}
fn check_set<T, K: Ord + ?Sized>(values: &[T], key: impl Fn(&T) -> &K) -> R<()> {
    if values.windows(2).any(|p| key(&p[0]) >= key(&p[1])) {
        return fail(
            "INVALID_GOVERNANCE_DOCUMENT",
            "set entries must be unique and canonically sorted",
        );
    }
    Ok(())
}
fn hash_set(values: &[String]) -> R<()> {
    check_set(values, String::as_str)?;
    for value in values {
        hash_bytes(value)?;
    }
    Ok(())
}
fn word_set(values: &[String]) -> R<()> {
    check_set(values, String::as_str)?;
    if values.iter().any(|v| v.is_empty()) {
        return fail("INVALID_GOVERNANCE_DOCUMENT", "empty policy identity");
    }
    Ok(())
}

/// Explicit Gregorian UTC seconds, years 0001–9999. Lexical ordering is then
/// chronological ordering; neither this parser nor judgment reads a clock.
pub fn valid_time(time: &str) -> R<()> {
    let b = time.as_bytes();
    let separators = [
        (4, b'-'),
        (7, b'-'),
        (10, b'T'),
        (13, b':'),
        (16, b':'),
        (19, b'Z'),
    ];
    if b.len() != 20
        || separators.iter().any(|(i, c)| b[*i] != *c)
        || b.iter()
            .enumerate()
            .any(|(i, c)| !separators.iter().any(|(j, _)| i == *j) && !c.is_ascii_digit())
    {
        return fail(
            "INVALID_TIME",
            "expected real-calendar UTC seconds YYYY-MM-DDTHH:MM:SSZ",
        );
    }
    let number = |a: usize, z: usize| {
        b[a..z]
            .iter()
            .fold(0u32, |v, c| v * 10 + u32::from(c - b'0'))
    };
    let (y, m, d, h, minute, s) = (
        number(0, 4),
        number(5, 7),
        number(8, 10),
        number(11, 13),
        number(14, 16),
        number(17, 19),
    );
    if y == 0 || !(1..=12).contains(&m) || h > 23 || minute > 59 || s > 59 {
        return fail("INVALID_TIME", "UTC date/time component out of range");
    }
    let leap = y.is_multiple_of(400) || (y.is_multiple_of(4) && !y.is_multiple_of(100));
    let days = match m {
        2 if leap => 29,
        2 => 28,
        4 | 6 | 9 | 11 => 30,
        _ => 31,
    };
    if d == 0 || d > days {
        return fail("INVALID_TIME", "day does not exist in this Gregorian month");
    }
    Ok(())
}

#[derive(Debug, Clone, Deserialize)]
#[serde(deny_unknown_fields)]
struct KeyInterval {
    key_id: String,
    not_before: Option<String>,
    not_after: Option<String>,
}
impl KeyInterval {
    fn validate(&self) -> R<()> {
        public_key(&self.key_id)?;
        if let Some(t) = &self.not_before {
            valid_time(t)?;
        }
        if let Some(t) = &self.not_after {
            valid_time(t)?;
        }
        if let (Some(a), Some(b)) = (&self.not_before, &self.not_after)
            && a >= b
        {
            return fail("INVALID_TIME", "key interval must be nonempty [start,end)");
        }
        Ok(())
    }
    fn eligible(&self, id: &str, time: &str) -> bool {
        self.key_id == id
            && self.not_before.as_ref().is_none_or(|t| time >= t.as_str())
            && self.not_after.as_ref().is_none_or(|t| time < t.as_str())
    }
}
fn intervals(values: &[KeyInterval], raw: &Json) -> R<()> {
    check_set(values, |v| v.key_id.as_str())?;
    for v in values {
        v.validate()?;
    }
    if raw.as_array().is_some_and(|a| {
        a.iter().any(|v| {
            ["not_before", "not_after"]
                .iter()
                .any(|k| v.get(k).is_some_and(Json::is_null))
        })
    }) {
        return fail(
            "INVALID_GOVERNANCE_DOCUMENT",
            "optional key bounds must be omitted or canonical UTC",
        );
    }
    Ok(())
}

#[derive(Debug, Clone, Deserialize)]
#[serde(deny_unknown_fields)]
struct PolicyRule {
    require: String,
    trusted_authorities: Vec<KeyInterval>,
    execution_policies: Vec<String>,
}
impl PolicyRule {
    fn validate(&self, raw: &Json) -> R<()> {
        if !["none", "commit_authorization"].contains(&self.require.as_str()) {
            return fail(
                "INVALID_GOVERNANCE_DOCUMENT",
                "unknown evidence requirement",
            );
        }
        intervals(&self.trusted_authorities, &raw["trusted_authorities"])?;
        hash_set(&self.execution_policies)
    }
}
#[derive(Debug, Clone, Deserialize)]
#[serde(deny_unknown_fields)]
struct EvidencePolicyBody {
    format: String,
    require: String,
    trusted_authorities: Vec<KeyInterval>,
    execution_policies: Vec<String>,
    migration: Option<PolicyRule>,
}
#[derive(Debug, Clone)]
pub struct EvidencePolicyV2 {
    claim: Json,
    identity: String,
    action: PolicyRule,
    migration: Option<PolicyRule>,
}
impl EvidencePolicyV2 {
    pub fn from_json(text: &str) -> R<Self> {
        let claim = legacy_reduction(text)?;
        let body: EvidencePolicyBody = typed(&claim)?;
        if body.format != TAG_EVIDENCE_POLICY_V2 {
            return fail(
                "INVALID_GOVERNANCE_DOCUMENT",
                "wrong evidence policy format",
            );
        }
        let action = PolicyRule {
            require: body.require,
            trusted_authorities: body.trusted_authorities,
            execution_policies: body.execution_policies,
        };
        action.validate(&claim)?;
        if let Some(rule) = &body.migration {
            rule.validate(&claim["migration"])?;
        }
        if claim.get("migration").is_some_and(Json::is_null) {
            return fail(
                "INVALID_GOVERNANCE_DOCUMENT",
                "absent migration rule must be omitted",
            );
        }
        Ok(Self {
            identity: content_hash(TAG_EVIDENCE_POLICY_V2, &claim)?,
            claim,
            action,
            migration: body.migration,
        })
    }
    pub fn as_json(&self) -> Json {
        self.claim.clone()
    }
    pub fn hash(&self) -> &str {
        &self.identity
    }
    pub fn requires_authorization(&self) -> bool {
        self.action.require == "commit_authorization"
    }
    pub fn migration_requires_authorization(&self) -> bool {
        self.migration.as_ref().unwrap_or(&self.action).require == "commit_authorization"
    }
}

#[derive(Debug, Clone, Deserialize)]
#[serde(deny_unknown_fields)]
struct ContextField {
    name: String,
    #[serde(rename = "type")]
    type_name: String,
    expected: Option<Json>,
}
fn matches_context_type(kind: &str, value: &Json) -> bool {
    match kind {
        "bool" => value.is_boolean(),
        "int" => value.as_i64().is_some(),
        "string" => value.is_string(),
        _ => false,
    }
}
#[derive(Debug, Clone, Deserialize)]
#[serde(deny_unknown_fields)]
struct ExecutionPolicyBody {
    format: String,
    require_verified: bool,
    required_checks: Vec<String>,
    accepted_profiles: Vec<String>,
    trusted_verifiers: Vec<KeyInterval>,
    accepted_verifiers: Vec<String>,
    accepted_solvers: Vec<String>,
    allow_waivers: bool,
    waiver_kinds: Vec<String>,
    trusted_waivers: Vec<KeyInterval>,
    bind_commit_time: bool,
    required_context: Vec<ContextField>,
}
#[derive(Debug, Clone)]
pub struct ExecutionPolicyV2 {
    claim: Json,
    identity: String,
    body: ExecutionPolicyBody,
}
impl ExecutionPolicyV2 {
    pub fn from_json(text: &str) -> R<Self> {
        let claim = legacy_reduction(text)?;
        let body: ExecutionPolicyBody = typed(&claim)?;
        if body.format != TAG_EXECUTION_POLICY_V2 {
            return fail(
                "INVALID_GOVERNANCE_DOCUMENT",
                "wrong execution policy format",
            );
        }
        hash_set(&body.accepted_profiles)?;
        word_set(&body.required_checks)?;
        if body
            .required_checks
            .iter()
            .any(|c| crate::CheckKind::parse(c).is_none())
        {
            return fail("INVALID_GOVERNANCE_DOCUMENT", "unsupported required check");
        }
        word_set(&body.accepted_verifiers)?;
        word_set(&body.accepted_solvers)?;
        word_set(&body.waiver_kinds)?;
        if body.waiver_kinds.iter().any(|k| {
            ![
                "inconclusive",
                "dead_action",
                "evaluation_error",
                "postcondition",
                "preservation",
                "redundancy",
                "vacuity",
                "referential_integrity",
                "migration_constraint",
                "migration_invariant",
                "migration_narrowing",
                "migration_module_invariant",
                "migration_referential_integrity",
                "module_invariant",
            ]
            .contains(&k.as_str())
        }) {
            return fail("INVALID_GOVERNANCE_DOCUMENT", "unsupported waiver kind");
        }
        intervals(&body.trusted_verifiers, &claim["trusted_verifiers"])?;
        intervals(&body.trusted_waivers, &claim["trusted_waivers"])?;
        check_set(&body.required_context, |f| f.name.as_str())?;
        for (i, f) in body.required_context.iter().enumerate() {
            if f.name.is_empty()
                || !["bool", "int", "string"].contains(&f.type_name.as_str())
                || f.expected
                    .as_ref()
                    .is_some_and(|v| !matches_context_type(&f.type_name, v))
                || claim["required_context"][i]
                    .get("expected")
                    .is_some_and(Json::is_null)
            {
                return fail(
                    "INVALID_GOVERNANCE_DOCUMENT",
                    "invalid typed context declaration",
                );
            }
        }
        Ok(Self {
            identity: content_hash(TAG_EXECUTION_POLICY_V2, &claim)?,
            claim,
            body,
        })
    }
    pub fn as_json(&self) -> Json {
        self.claim.clone()
    }
    pub fn hash(&self) -> &str {
        &self.identity
    }
    pub fn key_is_eligible(&self, role: EvidenceRole, key: &str, time: &str) -> R<bool> {
        valid_time(time)?;
        public_key(key)?;
        let keys = match role {
            EvidenceRole::Verifier => &self.body.trusted_verifiers,
            EvidenceRole::Waiver => &self.body.trusted_waivers,
        };
        Ok(keys.iter().any(|k| k.eligible(key, time)))
    }
}

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct ContextBody {
    format: String,
    policy_time: String,
    requested_commit_time: Json,
    required_context: Json,
}
fn validate_context(raw: &Json, policy: &ExecutionPolicyV2) -> R<()> {
    let q: ContextBody = typed(raw)?;
    if q.format != TAG_CONTEXT_V2 {
        return fail(
            "INVALID_GOVERNANCE_DOCUMENT",
            "wrong authorization context format",
        );
    }
    valid_time(&q.policy_time)?;
    if policy.body.bind_commit_time {
        let t = q
            .requested_commit_time
            .as_str()
            .ok_or_else(|| TrustedError {
                code: "CONTEXT_MISMATCH",
                message: "policy requires an explicit requested commit time".into(),
            })?;
        valid_time(t)?;
    } else if !q.requested_commit_time.is_null() {
        return fail(
            "CONTEXT_MISMATCH",
            "unbound requested commit time must be explicit null",
        );
    }
    let values = q.required_context.as_object().ok_or_else(|| TrustedError {
        code: "CONTEXT_MISMATCH",
        message: "context must be a closed typed product".into(),
    })?;
    if values.len() != policy.body.required_context.len() {
        return fail("CONTEXT_MISMATCH", "context field set differs from policy");
    }
    for f in &policy.body.required_context {
        let value = values.get(&f.name).ok_or_else(|| TrustedError {
            code: "CONTEXT_MISMATCH",
            message: "missing policy context field".into(),
        })?;
        if !matches_context_type(&f.type_name, value)
            || f.expected.as_ref().is_some_and(|v| v != value)
        {
            return fail(
                "CONTEXT_MISMATCH",
                "context type or expected value differs from policy",
            );
        }
    }
    Ok(())
}
pub fn waiver_expiry_valid(expires_at: Option<&str>, policy_time: &str) -> R<bool> {
    valid_time(policy_time)?;
    if let Some(t) = expires_at {
        valid_time(t)?;
        Ok(policy_time < t)
    } else {
        Ok(true)
    }
}

#[derive(Debug, Clone, Deserialize)]
#[serde(deny_unknown_fields)]
struct DetachedSignature {
    format: String,
    subject_hash: String,
    key_id: String,
    signature: String,
}
fn signature_message(purpose: &str, hash: &str) -> R<Vec<u8>> {
    let mut message = purpose.as_bytes().to_vec();
    message.push(0);
    message.extend_from_slice(&hash_bytes(hash)?);
    Ok(message)
}
fn validate_signature(raw: &Json, purpose: &str, hash: &str, issuer: &str) -> R<()> {
    let sig: DetachedSignature = typed(raw)?;
    if sig.format != purpose || sig.subject_hash != hash || sig.key_id != issuer {
        return fail(
            "INVALID_SIGNATURE",
            "signature purpose, issuer or subject binding differs",
        );
    }
    let key = public_key(issuer)?;
    let signature = Signature::from_bytes(&hex_bytes(&sig.signature)?);
    key.verify_strict(&signature_message(purpose, hash)?, &signature)
        .map_err(|_| TrustedError {
            code: "INVALID_SIGNATURE",
            message: "Ed25519 strict verification failed".into(),
        })
}
fn signed_signature(purpose: &str, hash: &str, issuer: &str, seed: &str) -> R<Json> {
    let key = SigningKey::from_bytes(&hex_bytes(seed)?);
    if public_key(issuer)?.to_bytes() != key.verifying_key().to_bytes() {
        return fail(
            "SIGNING_KEY_MISMATCH",
            "explicit signing key differs from content issuer",
        );
    }
    let signature = key
        .sign(&signature_message(purpose, hash)?)
        .to_bytes()
        .iter()
        .map(|b| format!("{b:02x}"))
        .collect::<String>();
    Ok(
        serde_json::json!({"format":purpose,"subject_hash":hash,"key_id":issuer,"signature":signature}),
    )
}

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct SignedAuthorizationBody {
    format: String,
    content: Json,
    authorization_hash: String,
    signature: Json,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct AuthorizationBody {
    format: String,
    issuer_key_id: String,
    decision: String,
    candidate_transition_hash: String,
    kind: String,
    store: String,
    evaluated_history: Json,
    evidence_policy_hash: String,
    execution_policy_hash: String,
    subject: Json,
    context: Json,
    context_hash: String,
    verification_hashes: Vec<String>,
    waiver_hashes: Vec<String>,
    waiver_signature_hashes: Vec<String>,
    authorized_at: String,
    reasons: Vec<Json>,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct PolicyReason {
    code: String,
    category: Option<String>,
    finding_hash: Option<String>,
    verification_hash: Option<String>,
}
fn validate_reasons(reasons: &[Json], decision: &str) -> R<()> {
    if (decision == "allow") != reasons.is_empty() {
        return fail(
            "INVALID_GOVERNANCE_DOCUMENT",
            "authorization decision contradicts policy reasons",
        );
    }
    let keys: Vec<String> = reasons.iter().map(Json::to_string).collect();
    word_set(&keys)?;
    for raw in reasons {
        let r: PolicyReason = typed(raw)?;
        let valid = match r.code.as_str() {
            "verification_required" => {
                r.category.is_none() && r.finding_hash.is_none() && r.verification_hash.is_none()
            }
            "required_check_missing" => {
                r.category
                    .as_deref()
                    .is_some_and(|c| crate::CheckKind::parse(c).is_some())
                    && r.finding_hash.is_none()
                    && r.verification_hash.is_none()
            }
            "proof_not_accepted" => {
                r.category.is_none() && r.finding_hash.is_none() && r.verification_hash.is_some()
            }
            "blocking_finding" => {
                r.category.is_none() && r.finding_hash.is_some() && r.verification_hash.is_some()
            }
            _ => false,
        };
        if !valid
            || raw
                .as_object()
                .is_some_and(|o| o.values().any(Json::is_null))
        {
            return fail(
                "INVALID_GOVERNANCE_DOCUMENT",
                "unsupported or contradictory structured policy reason",
            );
        }
        for h in [&r.finding_hash, &r.verification_hash]
            .into_iter()
            .flatten()
        {
            hash_bytes(h)?;
        }
    }
    Ok(())
}
fn validate_subject(raw: &Json) -> R<()> {
    let obj = raw.as_object().ok_or_else(|| TrustedError {
        code: "INVALID_SUBJECT",
        message: "subject must be a closed product".into(),
    })?;
    let fields: &[&str] = if obj.contains_key("behavior_hash") {
        &["behavior_hash"]
    } else {
        &[
            "migration_hash",
            "source_behavior",
            "target_behavior",
            "source_schema",
            "target_schema",
        ]
    };
    if obj.len() != fields.len() {
        return fail("INVALID_SUBJECT", "invalid subject field set");
    }
    for f in fields {
        hash_bytes(
            obj.get(*f)
                .and_then(Json::as_str)
                .ok_or_else(|| TrustedError {
                    code: "INVALID_SUBJECT",
                    message: "invalid subject identity".into(),
                })?,
        )?;
    }
    Ok(())
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct HistoryBody {
    format: String,
    store: String,
    state: String,
    position: u64,
    record: String,
}
fn validate_history(raw: &Json) -> R<()> {
    let h: HistoryBody = typed(raw)?;
    if h.format != "behavior.history_ref.v1" || (h.position == 0 && h.record != h.store) {
        return fail(
            "INVALID_HISTORY_REF",
            "invalid history format or genesis anchor",
        );
    }
    for hash in [&h.store, &h.state, &h.record] {
        hash_bytes(hash)?;
    }
    Ok(())
}
fn validate_authorization_content(raw: &Json) -> R<AuthorizationBody> {
    let a: AuthorizationBody = typed(raw)?;
    if a.format != TAG_AUTHORIZATION_V2
        || !["allow", "refuse"].contains(&a.decision.as_str())
        || !["action", "migration"].contains(&a.kind.as_str())
    {
        return fail(
            "INVALID_GOVERNANCE_DOCUMENT",
            "invalid authorization format, decision or kind",
        );
    }
    public_key(&a.issuer_key_id)?;
    for hash in [
        &a.candidate_transition_hash,
        &a.store,
        &a.evidence_policy_hash,
        &a.execution_policy_hash,
        &a.context_hash,
    ] {
        hash_bytes(hash)?;
    }
    validate_history(&a.evaluated_history)?;
    validate_subject(&a.subject)?;
    if a.evaluated_history["store"].as_str() != Some(&a.store) {
        return fail(
            "INVALID_HISTORY_REF",
            "authorization store differs from history lineage",
        );
    }
    let q: ContextBody = typed(&a.context)?;
    valid_time(&q.policy_time)?;
    valid_time(&a.authorized_at)?;
    if q.format != TAG_CONTEXT_V2
        || a.authorized_at != q.policy_time
        || a.context_hash != content_hash(TAG_CONTEXT_V2, &a.context)?
    {
        return fail(
            "CONTEXT_MISMATCH",
            "authorization time or hash contradicts archived context",
        );
    }
    if !q.requested_commit_time.is_null() {
        valid_time(
            q.requested_commit_time
                .as_str()
                .ok_or_else(|| TrustedError {
                    code: "INVALID_TIME",
                    message: "invalid requested commit time".into(),
                })?,
        )?;
    }
    if !q.required_context.as_object().is_some_and(|fields| {
        fields.iter().all(|(name, value)| {
            !name.is_empty()
                && (value.is_boolean() || value.is_string() || value.as_i64().is_some())
        })
    }) {
        return fail("CONTEXT_MISMATCH", "invalid archived context product");
    }
    hash_set(&a.verification_hashes)?;
    hash_set(&a.waiver_hashes)?;
    hash_set(&a.waiver_signature_hashes)?;
    if (a.kind == "action") != a.subject.get("behavior_hash").is_some() {
        return fail(
            "INVALID_SUBJECT",
            "authorization kind contradicts the subject product",
        );
    }
    validate_reasons(&a.reasons, &a.decision)?;
    Ok(a)
}
/// A detached signature already checked against its authorization content.
#[derive(Debug, Clone)]
pub struct AuthorizationSignatureV2 {
    claim: Json,
}
impl AuthorizationSignatureV2 {
    pub fn as_json(&self) -> Json {
        self.claim.clone()
    }
}

#[derive(Debug, Clone)]
pub struct SignedAuthorizationV2 {
    claim: Json,
    identity: String,
}
impl SignedAuthorizationV2 {
    pub fn signature(&self) -> AuthorizationSignatureV2 {
        AuthorizationSignatureV2 {
            claim: self.claim["signature"].clone(),
        }
    }

    pub fn from_json(text: &str) -> R<Self> {
        let claim = legacy_reduction(text)?;
        let body: SignedAuthorizationBody = typed(&claim)?;
        if body.format != "behavior.signed_authorization.v2" {
            return fail(
                "INVALID_GOVERNANCE_DOCUMENT",
                "wrong signed authorization format",
            );
        }
        let a = validate_authorization_content(&body.content)?;
        let identity = content_hash(TAG_AUTHORIZATION_V2, &body.content)?;
        if identity != body.authorization_hash {
            return fail("HASH_MISMATCH", "authorization content hash differs");
        }
        validate_signature(
            &body.signature,
            TAG_AUTHORIZATION_SIGNATURE_V2,
            &identity,
            &a.issuer_key_id,
        )?;
        Ok(Self { claim, identity })
    }
    pub fn as_json(&self) -> Json {
        self.claim.clone()
    }
    pub fn hash(&self) -> &str {
        &self.identity
    }
    pub fn authorization_hash(&self) -> &str {
        &self.identity
    }
}

fn supported_versions(solver: &str) -> R<()> {
    if solver != "z3 4.16.0" {
        return fail(
            "UNSUPPORTED_VERIFIER",
            "unsupported solver identity for trusted verification",
        );
    }
    Ok(())
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct ManifestBody {
    format: String,
    subject: Json,
    profile_hash: String,
    verifier_version: String,
    solver_version: String,
    obligations: Vec<ManifestEntry>,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct ManifestEntry {
    key: String,
    descriptor: Json,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct ObligationDescriptor {
    subject: Json,
    profile_hash: String,
    verifier_version: String,
    solver_version: String,
    category: String,
    owner_hash: String,
    phase: String,
    semantic_path: Vec<Json>,
    predicate_kind: String,
}
fn validate_path(path: &[Json]) -> R<()> {
    for p in path {
        let o = p.as_object().ok_or_else(|| TrustedError {
            code: "INCOMPLETE_VERIFICATION",
            message: "invalid semantic address segment".into(),
        })?;
        let valid = if o.contains_key("emission") {
            o.len() == 2
                && p["emission"]
                    .as_str()
                    .is_some_and(|h| hash_bytes(h).is_ok())
                && p["multiplicity_index"]
                    .as_u64()
                    .is_some_and(|n| u32::try_from(n).is_ok())
        } else {
            o.len() == 1
                && (p["slot"].as_u64().is_some_and(|n| u32::try_from(n).is_ok())
                    || p["binding"]
                        .as_u64()
                        .is_some_and(|n| u32::try_from(n).is_ok())
                    || p["field"]
                        .as_str()
                        .is_some_and(|s| !s.is_empty() && u32::try_from(s.len()).is_ok()))
        };
        if !valid {
            return fail(
                "INCOMPLETE_VERIFICATION",
                "unsupported or noncanonical semantic address segment",
            );
        }
    }
    Ok(())
}
fn validate_descriptor(raw: &Json, body: &ManifestBody) -> R<()> {
    let d: ObligationDescriptor = typed(raw)?;
    if d.subject != body.subject
        || d.profile_hash != body.profile_hash
        || d.verifier_version != body.verifier_version
        || d.solver_version != body.solver_version
        || crate::CheckKind::parse(&d.category).is_none()
        || ![
            "declaration",
            "incoming",
            "precondition",
            "state_effect",
            "command_guard",
            "command_payload",
            "final_invariant",
            "postcondition",
            "read_body",
            "migration_requirement",
            "migration_transform",
            "migration_validation",
        ]
        .contains(&d.phase.as_str())
        || ![
            "division_by_zero",
            "numeric_overflow",
            "narrowing",
            "predicate_false",
            "unreachable",
            "redundant_precondition",
            "representation_safety",
            "always_true",
            "always_false",
            "migration_narrowing",
            "evaluation_error",
            "migration_constraint",
            "migration_invariant",
            "referential_integrity",
            "migration_referential_integrity",
            "migration_module_invariant",
            "migration_requirement",
            "migration_behavior_context",
            "preservation",
            "postcondition",
        ]
        .contains(&d.predicate_kind.as_str())
    {
        return fail(
            "INCOMPLETE_VERIFICATION",
            "unsupported or contradictory obligation descriptor",
        );
    }
    hash_bytes(&d.owner_hash)?;
    validate_path(&d.semantic_path)
}
#[derive(Debug, Clone)]
pub struct VerificationManifest {
    claim: Json,
    identity: String,
}
impl VerificationManifest {
    pub fn from_json(text: &str) -> R<Self> {
        let claim = legacy_reduction(text)?;
        let body: ManifestBody = typed(&claim)?;
        if body.format != TAG_VERIFICATION_MANIFEST || body.verifier_version != "0.7.0" {
            return fail(
                "UNSUPPORTED_VERIFIER",
                "unsupported manifest format/version",
            );
        }
        supported_versions(&body.solver_version)?;
        validate_subject(&body.subject)?;
        hash_bytes(&body.profile_hash)?;
        check_set(&body.obligations, |e| e.key.as_str())?;
        for e in &body.obligations {
            validate_descriptor(&e.descriptor, &body)?;
            if e.key != content_hash(TAG_VERIFICATION_OBLIGATION, &e.descriptor)? {
                return fail("HASH_MISMATCH", "obligation key differs from descriptor");
            }
        }
        Ok(Self {
            identity: content_hash(TAG_VERIFICATION_MANIFEST, &claim)?,
            claim,
        })
    }
    pub fn as_json(&self) -> Json {
        self.claim.clone()
    }
    pub fn hash(&self) -> &str {
        &self.identity
    }
}

struct OperationalSolver<'a> {
    solver: &'a dyn crate::solver::Solver,
    aborted: std::cell::Cell<bool>,
}
impl crate::solver::Solver for OperationalSolver<'_> {
    fn version(&self) -> String {
        self.solver.version()
    }
    fn check(&self, q: &crate::solver::Query) -> crate::solver::SolverAnswer {
        use crate::solver::{SolverAnswer, UnknownReason};
        if self.aborted.get() {
            return SolverAnswer::Unknown(UnknownReason::Error("operational_abort".into()));
        }
        let answer = self.solver.check(q);
        if matches!(&answer,SolverAnswer::Unknown(r) if !matches!(r,UnknownReason::ResourceLimit)) {
            self.aborted.set(true);
        }
        answer
    }
}
fn descriptor_for(
    subject: &Json,
    profile: &crate::Profile,
    solver: &str,
    c: &crate::checks::CheckResult,
) -> R<Json> {
    let s = c.site.as_ref().ok_or_else(|| TrustedError {
        code: "INCOMPLETE_VERIFICATION",
        message: "computed check has no canonical site".into(),
    })?;
    Ok(
        serde_json::json!({"subject":subject,"profile_hash":profile.hash(),"verifier_version":crate::VERIFIER_VERSION,"solver_version":solver,
        "category":c.kind.as_str(),"owner_hash":s.owner_hash,"phase":s.phase,"semantic_path":s.semantic_path,"predicate_kind":s.predicate_kind}),
    )
}
fn semantic_report(
    subject: &GovernanceSubject<'_>,
    profile: &crate::Profile,
    solver: &str,
    manifest: &VerificationManifest,
    raw: &[crate::checks::CheckResult],
) -> R<(Json, Json)> {
    use std::collections::BTreeMap;
    let subject = super::semantic_proof::subject_json(subject)?;
    let mut checks = Vec::new();
    let mut findings: BTreeMap<String, Json> = BTreeMap::new();
    let mut diagnostics = Vec::new();
    for c in raw {
        let descriptor = descriptor_for(&subject, profile, solver, c)?;
        let key = content_hash(TAG_VERIFICATION_OBLIGATION, &descriptor)?;
        let mut finding_hashes = Vec::new();
        let witness = c
            .finding
            .as_ref()
            .and_then(|f| f.get("counterexample"))
            .map(|cx| {
                let mut value = serde_json::Map::new();
                for field in ["state", "input", "context", "facts", "entity", "value"] {
                    if let Some(v) = cx.get(field) {
                        value.insert(field.into(), v.clone());
                    }
                }
                if let Some(result) = cx.get("record").and_then(|r| r.get("result")) {
                    value.insert("result".into(), result.clone());
                }
                if let Some(code) = cx.get("refusal").and_then(|r| r.get("code")) {
                    value.insert("refusal_code".into(), code.clone());
                }
                Json::Object(value)
            })
            .unwrap_or(Json::Null);
        if let Some(f) = &c.finding {
            let kind = f["kind"].as_str().ok_or_else(|| TrustedError {
                code: "INVALID_REPORT",
                message: "finding has no semantic kind".into(),
            })?;
            let mut citations: Vec<(String, String)> = Vec::new();
            if let Some(o) = f.get("cites").and_then(Json::as_object) {
                for (role, value) in o {
                    let value = value.as_str().ok_or_else(|| TrustedError {
                        code: "INVALID_REPORT",
                        message: "finding citation is not a semantic identity".into(),
                    })?;
                    citations.push((role.clone(), value.into()));
                }
            }
            if kind == "inconclusive" {
                citations.push(("check".into(), c.kind.as_str().into()));
            }
            citations.sort();
            check_set(&citations, |v| v)?;
            let refs: Vec<(&str, String)> = citations
                .iter()
                .map(|(r, v)| (r.as_str(), v.clone()))
                .collect();
            let hash = checked_finding_hash(kind, &refs)?;
            finding_hashes.push(hash.clone());
            let semantic = serde_json::json!({"hash":hash,"kind":kind,"severity":f["severity"],
                "citations":citations.iter().map(|(role,identity)|serde_json::json!({"role":role,"identity":identity})).collect::<Vec<_>>(),"obligation_keys":[]});
            let existing = findings.entry(hash).or_insert_with(|| semantic.clone());
            for field in ["kind", "severity", "citations"] {
                if existing[field] != semantic[field] {
                    return fail(
                        "HASH_CONTENT_CONFLICT",
                        "equal finding identity has unequal semantic content",
                    );
                }
            }
            if let Some(keys) = existing["obligation_keys"].as_array_mut() {
                keys.push(serde_json::json!(key));
            }
        }
        let reason = match &c.outcome {
            crate::checks::Outcome::Inconclusive(r) => {
                let normalized = if r == "resource_limit" {
                    "resource_limit"
                } else if r == "counterexample_not_reproduced" {
                    "counterexample_not_reproduced"
                } else if r == "encoding_error"
                    || r.starts_with("unsupported")
                    || r.starts_with("precision_debt")
                    || r == "the reference is not carried over from a source reference"
                    || r.contains("cannot encode")
                {
                    "unsupported_semantics"
                } else {
                    return fail(
                        "VERIFICATION_INFRASTRUCTURE",
                        "unclassified non-reproducible verification result",
                    );
                };
                serde_json::json!(normalized)
            }
            _ => Json::Null,
        };
        checks.push(serde_json::json!({"key":key,"outcome":c.outcome.as_str(),"reason":reason,"finding_hashes":finding_hashes,"witness":witness}));
        diagnostics.push(serde_json::json!({"key":key,"legacy_check":c.to_json(false),"legacy_finding":c.finding}));
    }
    checks.sort_by(|a, b| a["key"].as_str().cmp(&b["key"].as_str()));
    let mut findings: Vec<Json> = findings.into_values().collect();
    for f in &mut findings {
        if let Some(keys) = f["obligation_keys"].as_array_mut() {
            keys.sort_by(|a, b| a.as_str().cmp(&b.as_str()));
        }
    }
    let result = if findings.iter().any(|f| f["severity"] == "blocking") {
        "not_verified"
    } else {
        "verified"
    };
    let report = serde_json::json!({"format":TAG_VERIFICATION_REPORT_V2,"subject":subject,"profile_hash":profile.hash(),"verifier_version":crate::VERIFIER_VERSION,"solver_version":solver,
        "expected_check_manifest_hash":manifest.hash(),"checks":checks,"findings":findings,"result":result});
    validate_report(&report, &manifest.claim)?;
    Ok((
        report,
        serde_json::json!({"format":"behavior.verification_diagnostics.v1","checks":diagnostics}),
    ))
}

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct ProfileBody {
    checks: Vec<String>,
    rlimit: u64,
    wall_clock_guard_ms: u64,
    hash: String,
}
pub fn decode_trusted_profile(text: &str) -> R<crate::Profile> {
    let raw = legacy_reduction(text)?;
    let body: ProfileBody = typed(&raw)?;
    word_set(&body.checks)?;
    hash_bytes(&body.hash)?;
    let checks = body
        .checks
        .iter()
        .map(|c| {
            crate::CheckKind::parse(c).ok_or_else(|| TrustedError {
                code: "INVALID_PROFILE",
                message: "unknown check category".into(),
            })
        })
        .collect::<R<Vec<_>>>()?;
    let profile = crate::Profile {
        checks,
        rlimit: body.rlimit,
        wall_clock_guard_ms: body.wall_clock_guard_ms,
    };
    if raw != profile.to_json() || profile.wall_clock_guard_ms == 0 || profile.rlimit == 0 {
        return fail(
            "INVALID_PROFILE",
            "noncanonical profile or profile identity differs",
        );
    }
    Ok(profile)
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct ReportBody {
    format: String,
    subject: Json,
    profile_hash: String,
    verifier_version: String,
    solver_version: String,
    expected_check_manifest_hash: String,
    checks: Vec<ReportCheck>,
    findings: Vec<SemanticFinding>,
    result: String,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct ReportCheck {
    key: String,
    outcome: String,
    reason: Json,
    finding_hashes: Vec<String>,
    witness: Json,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct SemanticFinding {
    hash: String,
    kind: String,
    severity: String,
    citations: Vec<Citation>,
    obligation_keys: Vec<String>,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct Citation {
    role: String,
    identity: String,
}
fn checked_finding_hash(kind: &str, citations: &[(&str, String)]) -> R<String> {
    if u32::try_from(kind.len()).is_err()
        || u32::try_from(citations.len()).is_err()
        || citations
            .iter()
            .any(|(r, v)| u32::try_from(r.len()).is_err() || u32::try_from(v.len()).is_err())
    {
        return fail(
            "INVALID_REPORT",
            "finding encoding exceeds its canonical u32 domain",
        );
    }
    Ok(finding_hash(kind, citations))
}
fn witness_shape(w: &Json) -> R<()> {
    let o = w.as_object().ok_or_else(|| TrustedError {
        code: "INVALID_REPORT",
        message: "witness is not a typed product".into(),
    })?;
    let scalar = |v: &Json| v.is_null() || v.is_boolean() || v.is_string() || v.as_i64().is_some();
    let entity = |v: &Json| {
        v.as_object().is_some_and(|p| {
            p.get("id")
                .and_then(Json::as_str)
                .is_some_and(|id| !id.is_empty())
                && p.values().all(&scalar)
        })
    };
    if o.contains_key("entity") {
        if o.len() != 3
            || o["entity"].as_str().is_none_or(str::is_empty)
            || !entity(&o["value"])
            || o["refusal_code"]
                .as_str()
                .is_none_or(|c| !c.starts_with("MIGRATION_"))
        {
            return fail(
                "INVALID_REPORT",
                "migration witness is not a closed source-entity/refusal product",
            );
        }
    } else {
        if !(o.len() == 4 || (o.len() == 5 && o.contains_key("facts")))
            || ["state", "input", "context", "result"]
                .iter()
                .any(|k| !o.contains_key(*k))
        {
            return fail(
                "INVALID_REPORT",
                "invocation witness is not a closed request/result product",
            );
        }
        if !o["state"]
            .as_object()
            .is_some_and(|p| p.values().all(&entity))
            || ["input", "context"].iter().any(|k| {
                !o[*k]
                    .as_object()
                    .is_some_and(|p| p.values().all(|v| scalar(v) || entity(v)))
            })
            || !o["result"]
                .as_str()
                .is_some_and(|r| ["DENY", "ERROR", "EVALUATION_ERROR"].contains(&r))
        {
            return fail(
                "INVALID_REPORT",
                "witness contains invalid typed values or result",
            );
        }
        if let Some(f) = o.get("facts") {
            behavior_core::Facts::from_json(f).map_err(|_| TrustedError {
                code: "INVALID_REPORT",
                message: "witness facts are malformed or contradictory".into(),
            })?;
        }
    }
    Ok(())
}
fn validate_report(raw: &Json, manifest: &Json) -> R<()> {
    use std::collections::BTreeMap;
    let report: ReportBody = typed(raw)?;
    let m: ManifestBody = typed(manifest)?;
    if report.format != TAG_VERIFICATION_REPORT_V2
        || report.subject != m.subject
        || report.profile_hash != m.profile_hash
        || report.verifier_version != m.verifier_version
        || report.solver_version != m.solver_version
        || report.expected_check_manifest_hash != content_hash(TAG_VERIFICATION_MANIFEST, manifest)?
    {
        return fail(
            "INCOMPLETE_VERIFICATION",
            "report metadata differs from exact manifest",
        );
    }
    check_set(&report.checks, |c| c.key.as_str())?;
    check_set(&report.findings, |f| f.hash.as_str())?;
    if report.checks.len() != m.obligations.len()
        || report
            .checks
            .iter()
            .zip(&m.obligations)
            .any(|(c, e)| c.key != e.key)
    {
        return fail(
            "INCOMPLETE_VERIFICATION",
            "expected obligations are omitted, duplicated or added",
        );
    }
    let mut cited: BTreeMap<String, Vec<String>> = BTreeMap::new();
    for (c, e) in report.checks.iter().zip(&m.obligations) {
        hash_set(&c.finding_hashes)?;
        if !["proven", "counterexample", "inconclusive"].contains(&c.outcome.as_str()) {
            return fail("INVALID_REPORT", "unknown check outcome");
        }
        if (c.outcome == "inconclusive"
            && !c.reason.as_str().is_some_and(|s| {
                [
                    "resource_limit",
                    "unsupported_semantics",
                    "counterexample_not_reproduced",
                ]
                .contains(&s)
            }))
            || (c.outcome != "inconclusive" && !c.reason.is_null())
        {
            return fail("INVALID_REPORT", "outcome and reason contradict");
        }
        if c.outcome == "inconclusive" && c.finding_hashes.is_empty() {
            return fail(
                "INVALID_REPORT",
                "inconclusive result has no blocking finding",
            );
        }
        let warning = ["dead_action", "redundancy", "vacuity"]
            .contains(&e.descriptor["category"].as_str().unwrap_or_default());
        for h in &c.finding_hashes {
            let f = report
                .findings
                .iter()
                .find(|f| &f.hash == h)
                .ok_or_else(|| TrustedError {
                    code: "INVALID_REPORT",
                    message: "check cites an absent finding".into(),
                })?;
            if (c.outcome == "inconclusive"
                && (f.kind != "inconclusive" || f.severity != "blocking"))
                || (!warning && c.outcome == "counterexample" && f.severity != "blocking")
                || (!warning && c.outcome == "proven")
            {
                return fail(
                    "INVALID_REPORT",
                    "finding severity/kind contradicts the check's semantic outcome",
                );
            }
        }
        if c.outcome == "counterexample"
            && !warning
            && (c.witness.is_null() || c.finding_hashes.is_empty())
        {
            return fail(
                "INVALID_REPORT",
                "safety counterexample has no typed witness/finding",
            );
        }
        if c.outcome != "counterexample" && !c.witness.is_null() {
            return fail("INVALID_REPORT", "non-counterexample contains a witness");
        }
        if !c.witness.is_null() {
            witness_shape(&c.witness)?;
        }
        for h in &c.finding_hashes {
            cited.entry(h.clone()).or_default().push(c.key.clone());
        }
    }
    for f in &report.findings {
        hash_set(&f.obligation_keys)?;
        if f.obligation_keys.is_empty()
            || cited.remove(&f.hash).as_ref() != Some(&f.obligation_keys)
            || !["warning", "blocking"].contains(&f.severity.as_str())
        {
            return fail(
                "INVALID_REPORT",
                "finding coverage/severity differs from check citations",
            );
        }
        let pairs: Vec<(String, String)> = f
            .citations
            .iter()
            .map(|c| (c.role.clone(), c.identity.clone()))
            .collect();
        check_set(&pairs, |v| v)?;
        if pairs.iter().any(|(r, v)| r.is_empty() || v.is_empty())
            || (f.kind != "inconclusive"
                && crate::CheckKind::of_check(&f.kind).is_none()
                && ![
                    "migration_constraint",
                    "migration_invariant",
                    "migration_narrowing",
                    "migration_module_invariant",
                    "module_invariant",
                    "migration_referential_integrity",
                ]
                .contains(&f.kind.as_str()))
        {
            return fail("INVALID_REPORT", "unsupported semantic finding or citation");
        }
        let refs: Vec<(&str, String)> =
            pairs.iter().map(|(r, v)| (r.as_str(), v.clone())).collect();
        if f.hash != checked_finding_hash(&f.kind, &refs)? {
            return fail(
                "HASH_MISMATCH",
                "semantic finding hash differs from canonical citations",
            );
        }
        if f.kind == "inconclusive" && f.severity != "blocking" {
            return fail("INVALID_REPORT", "inconclusive finding cannot be a warning");
        }
    }
    if !cited.is_empty() {
        return fail("INVALID_REPORT", "check cites missing finding");
    }
    let result = if report.findings.iter().any(|f| f.severity == "blocking") {
        "not_verified"
    } else {
        "verified"
    };
    if report.result != result {
        return fail(
            "INVALID_REPORT",
            "aggregate does not follow complete check/finding results",
        );
    }
    Ok(())
}

#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct VerificationContent {
    format: String,
    issuer_key_id: String,
    subject: Json,
    profile_hash: String,
    verifier_version: String,
    solver_version: String,
    expected_check_manifest_hash: String,
    report_hash: String,
}
#[derive(Deserialize)]
#[serde(deny_unknown_fields)]
struct VerificationBody {
    format: String,
    content: Json,
    verification_hash: String,
    profile: Json,
    expected_check_manifest: Json,
    report: Json,
    signature: Json,
}
#[derive(Debug, Clone)]
pub struct VerificationEnvelopeV2 {
    claim: Json,
    identity: String,
}
impl VerificationEnvelopeV2 {
    pub fn from_json(text: &str) -> R<Self> {
        let claim = legacy_reduction(text)?;
        let body: VerificationBody = typed(&claim)?;
        let content: VerificationContent = typed(&body.content)?;
        if body.format != "behavior.verification_envelope.v2"
            || content.format != TAG_VERIFICATION_CONTENT_V2
            || content.verifier_version != crate::VERIFIER_VERSION
        {
            return fail(
                "UNSUPPORTED_VERIFIER",
                "unsupported verification envelope format/version",
            );
        }
        supported_versions(&content.solver_version)?;
        validate_subject(&content.subject)?;
        let profile = decode_trusted_profile(&body.profile.to_string())?;
        let manifest = VerificationManifest::from_json(&body.expected_check_manifest.to_string())?;
        if content.profile_hash != profile.hash()
            || content.expected_check_manifest_hash != manifest.hash()
            || content.subject != manifest.claim["subject"]
            || content.verifier_version != manifest.claim["verifier_version"]
            || content.solver_version != manifest.claim["solver_version"]
            || content.report_hash != content_hash(TAG_VERIFICATION_REPORT_V2, &body.report)?
        {
            return fail(
                "HASH_MISMATCH",
                "verification content differs from archived subject/profile/manifest/report",
            );
        }
        validate_report(&body.report, &manifest.claim)?;
        let identity = content_hash(TAG_VERIFICATION_CONTENT_V2, &body.content)?;
        if body.verification_hash != identity {
            return fail(
                "HASH_MISMATCH",
                "verification identity differs from content",
            );
        }
        validate_signature(
            &body.signature,
            TAG_VERIFICATION_SIGNATURE_V2,
            &identity,
            &content.issuer_key_id,
        )?;
        Ok(Self { claim, identity })
    }
    pub fn as_json(&self) -> Json {
        self.claim.clone()
    }
    pub fn hash(&self) -> &str {
        &self.identity
    }
    pub fn verification_hash(&self) -> &str {
        &self.identity
    }
    pub fn report(&self) -> &Json {
        &self.claim["report"]
    }
    pub fn manifest(&self) -> &Json {
        &self.claim["expected_check_manifest"]
    }
    pub fn validate_for_subject(
        &self,
        subject: &GovernanceSubject<'_>,
        profile: &crate::Profile,
        solver: &str,
    ) -> R<()> {
        let expected = expected_manifest(subject, profile, solver)?;
        if self.claim["profile"] != profile.to_json() || self.manifest() != &expected.claim {
            return fail(
                "INCOMPLETE_VERIFICATION",
                "authenticated manifest does not equal all expected sites of exact admitted subject/profile",
            );
        }
        for check in self.report()["checks"].as_array().into_iter().flatten() {
            if check["witness"].is_null() {
                continue;
            }
            let w = &check["witness"];
            let descriptor = self.manifest()["obligations"]
                .as_array()
                .and_then(|all| all.iter().find(|e| e["key"] == check["key"]))
                .map(|e| &e["descriptor"])
                .ok_or_else(|| TrustedError {
                    code: "INVALID_REPORT",
                    message: "witness has no exact proof site".into(),
                })?;
            match subject {
                GovernanceSubject::Module(module) => {
                    let name = descriptor["semantic_path"][0]["field"]
                        .as_str()
                        .ok_or_else(|| TrustedError {
                            code: "INVALID_REPORT",
                            message: "witness site has no canonical capability".into(),
                        })?;
                    let mut request = serde_json::json!({"data_version":"verification","state":w["state"],"input":w["input"],"context":w["context"]});
                    if let Some(f) = w.get("facts") {
                        request["facts"] = f.clone();
                    }
                    let result = if descriptor["phase"] == "read_body" {
                        let read = module.read(name).ok_or_else(|| TrustedError {
                            code: "INVALID_REPORT",
                            message: "unknown witness read".into(),
                        })?;
                        if behavior_core::semantic::types::hash_display(read.hash())
                            != descriptor["owner_hash"]
                        {
                            return fail("INVALID_REPORT", "read witness owner differs");
                        }
                        behavior_core::read::evaluate_read(
                            module,
                            &behavior_core::read::ReadSource::Declared(name.into()),
                            &request.to_string(),
                        )
                        .record
                        .as_json()["result"]
                            .clone()
                    } else {
                        let action = module.action(name).ok_or_else(|| TrustedError {
                            code: "INVALID_REPORT",
                            message: "unknown witness action".into(),
                        })?;
                        if behavior_core::semantic::types::hash_display(action.hash())
                            != descriptor["owner_hash"]
                        {
                            return fail("INVALID_REPORT", "action witness owner differs");
                        }
                        request["action"] = serde_json::json!(name);
                        behavior_core::evaluate(module, &request.to_string()).as_json()["result"]
                            .clone()
                    };
                    if result != w["result"] {
                        return fail(
                            "INVALID_REPORT",
                            "witness does not reproduce the claimed runtime result",
                        );
                    }
                }
                GovernanceSubject::Migration(m, source, target) => {
                    let entity = w["entity"].as_str().ok_or_else(|| TrustedError {
                        code: "INVALID_REPORT",
                        message: "migration witness entity missing".into(),
                    })?;
                    let canonical = behavior_core::decode_entity(source, entity, &w["value"])
                        .map_err(|_| TrustedError {
                            code: "INVALID_REPORT",
                            message: "invalid typed migration witness".into(),
                        })?;
                    if canonical != w["value"] {
                        return fail("INVALID_REPORT", "migration witness value is not canonical");
                    }
                    match behavior_core::migration::transform_one(
                        m, source, target, entity, &canonical,
                    ) {
                        Err(r) if serde_json::json!(r.code) == w["refusal_code"] => {}
                        _ => {
                            return fail(
                                "INVALID_REPORT",
                                "migration witness does not reproduce refusal",
                            );
                        }
                    }
                }
            }
        }
        Ok(())
    }
}

// Serialization retains checked claims verbatim; deserialization re-enters the
// same closed codec. A JSON value alone is never a validated policy/evidence.
macro_rules! checked_transport {
    ($name:ty) => {
        impl serde::Serialize for $name {
            fn serialize<S: serde::Serializer>(&self, s: S) -> Result<S::Ok, S::Error> {
                self.as_json().serialize(s)
            }
        }
        impl<'de> serde::Deserialize<'de> for $name {
            fn deserialize<D: serde::Deserializer<'de>>(d: D) -> Result<Self, D::Error> {
                let value = Json::deserialize(d)?;
                Self::from_json(&value.to_string()).map_err(serde::de::Error::custom)
            }
        }
        impl PartialEq for $name {
            fn eq(&self, other: &Self) -> bool {
                self.as_json() == other.as_json()
            }
        }
        impl Eq for $name {}
    };
}
checked_transport!(EvidencePolicyV2);
checked_transport!(EvidenceV2);
