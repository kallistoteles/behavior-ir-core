#![allow(dead_code, clippy::unwrap_used, clippy::expect_used)]
//! Independent transport/hash/signature oracles; these helpers confer no trust.
use behavior_core::semantic::module::Module;
use ed25519_dalek::{Signer, SigningKey};
use serde_json::{Value, json};
use sha2::{Digest, Sha256};
use std::path::{Path, PathBuf};

pub fn fixtures() -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures")
}
pub fn text(name: &str) -> String {
    std::fs::read_to_string(fixtures().join("governance-v2").join(name)).unwrap()
}
pub fn fixture(name: &str) -> Value {
    serde_json::from_str(&text(name)).unwrap()
}
pub fn hash(tag: &str, value: &Value) -> String {
    let mut h = Sha256::new();
    h.update(tag.as_bytes());
    h.update([0]);
    h.update(value.to_string().as_bytes());
    format!("sha256:{:x}", h.finalize())
}
pub fn bytes<const N: usize>(s: &str) -> [u8; N] {
    assert_eq!(s.len(), N * 2);
    std::array::from_fn(|i| u8::from_str_radix(&s[i * 2..i * 2 + 2], 16).unwrap())
}
pub fn key(role: &str) -> SigningKey {
    SigningKey::from_bytes(&bytes(text(&format!("{role}.seed")).trim()))
}
pub fn key_id(role: &str) -> String {
    let bytes = key(role).verifying_key().to_bytes();
    format!(
        "ed25519:{}",
        bytes.iter().map(|b| format!("{b:02x}")).collect::<String>()
    )
}
pub fn signature(tag: &str, subject: &str, role: &str) -> String {
    let mut message = tag.as_bytes().to_vec();
    message.push(0);
    message.extend_from_slice(&bytes::<32>(subject.strip_prefix("sha256:").unwrap()));
    key(role)
        .sign(&message)
        .to_bytes()
        .iter()
        .map(|b| format!("{b:02x}"))
        .collect()
}
pub fn module() -> Module {
    behavior_core::admit(
        &std::fs::read_to_string(fixtures().join("verify/purchase_fixed.json")).unwrap(),
    )
    .unwrap()
}
pub fn candidate(module: &Module) -> Value {
    let request =
        std::fs::read_to_string(fixtures().join("governance/approve_request.json")).unwrap();
    let record = behavior_core::evaluate(module, &request).as_json().clone();
    assert_eq!(record["result"], "ALLOW");
    let store = format!("sha256:{}", "ab".repeat(32));
    let state = format!("sha256:{}", "cd".repeat(32));
    let content = json!({
        "kind":"action", "store":store,
        "evaluated_history":{"format":"behavior.history_ref.v1","store":store,"state":state,"position":0,"record":store},
        "behavior_version":module.behavior_version(), "record":record,
        "entity_declarations":{}, "read_set":[], "read_facts":{}, "write_set":[], "write_lifecycle":[]
    });
    json!({"format":"behavior.governance_candidate.v2",
        "transition_hash":hash("behavior.candidate_transition.v2",&content),"content":content})
}
pub fn evidence_policy_for(policy: &Value) -> Value {
    let mut ep = fixture("evidence-policy.json");
    ep["execution_policies"] = json!([hash("behavior.policy.v2", policy)]);
    ep
}
pub fn authorization(candidate: &Value, ep: &Value, policy: &Value, q: &Value) -> Value {
    json!({"format":"behavior.authorization.v2", "issuer_key_id":key_id("authorizer"),
        "decision":"allow", "candidate_transition_hash":candidate["transition_hash"],
        "kind":"action", "store":candidate["content"]["store"],
        "evaluated_history":candidate["content"]["evaluated_history"],
        "evidence_policy_hash":hash("behavior.evidence_policy.v2",ep),
        "execution_policy_hash":hash("behavior.policy.v2",policy),
        "subject":{"behavior_hash":candidate["content"]["behavior_version"]},
        "context":q, "context_hash":hash("behavior.authorization_context.v2",q),
        "verification_hashes":[],"waiver_hashes":[],"waiver_signature_hashes":[],
        "authorized_at":q["policy_time"], "reasons":[]})
}
pub fn signed(content: &Value, role: &str, purpose: &str) -> Value {
    let h = hash("behavior.authorization.v2", content);
    json!({"format":"behavior.signed_authorization.v2","content":content,"authorization_hash":h,
        "signature":{"format":"behavior.authorization_signature.v2","subject_hash":h,
            "key_id":key_id(role),"signature":signature(purpose,&h,role)}})
}
pub fn evidence(policy: &Value, signed: &Value) -> Value {
    json!({"format":"behavior.evidence.v2","execution_policy":policy,"authorization":signed,
        "verifications":[],"waivers":[],"waiver_signatures":[]})
}
