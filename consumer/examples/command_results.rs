//! Host-only mock integration: request, commit, execute, explicitly invoke a later result.
use behavior_engine::invocation::RequestedInvocation;
use behavior_engine::store::commands::{CommandStreamRequest, CommittedCommand};
use behavior_engine::store::documents::{EntityKey, SeedEntity};
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{Backend, InMemoryBackend, Store};
use behavior_engine::verify::governance::EvidencePolicyV2;
use serde_json::{Value, json};
use std::collections::BTreeMap;
type R<T> = Result<T, Box<dyn std::error::Error>>;
const NOW: &str = "2026-10-05T12:00:00Z";
#[derive(Default)]
struct MockProvider {
    responses: BTreeMap<String, Value>,
    attempts: usize,
}
impl MockProvider {
    fn execute(&mut self, command: &CommittedCommand, status: &str) -> R<Value> {
        self.attempts += 1;
        let attempt = command.intent()["payload"]["attempt_id"]
            .as_str()
            .ok_or_else(|| std::io::Error::other("business correlation missing"))?;
        // This mock target implements its own idempotency. Behavior guarantees
        // occurrence identity, not delivery or target success.
        Ok(self.responses.entry(command.command_occurrence_id().into()).or_insert_with(||json!({"attempt_id":attempt,"status":status,"provider_result":"provider-reference-7"})).clone())
    }
}
fn decode(value: &Value) -> R<RequestedInvocation> {
    RequestedInvocation::decode(&value.to_string())?
        .0
        .ok_or_else(|| std::io::Error::other("invalid invocation fixture").into())
}
pub fn run(outcome: &str) -> R<Value> {
    let status = match outcome {
        "success" => "SUCCESS",
        "failure" => "FAILURE",
        _ => return Err(std::io::Error::other("expected success or failure").into()),
    };
    let m = behavior_engine::admit(include_str!(
        "../../tests/fixtures/commands/modules/payment.json"
    ))
    .map_err(|e| std::io::Error::other(format!("{:?}", e.errors)))?;
    let fixtures: Value = serde_json::from_str(include_str!(
        "../../tests/fixtures/commands/invocations/payment-results.json"
    ))?;
    let policy = EvidencePolicyV2::from_json(
        r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#,
    )?;
    let seed = vec![SeedEntity {
        entity: "Payment".into(),
        value: json!({"id":"payment-1","attempt_id":"","status":"READY","provider_result":""}),
    }];
    let mut store = Store::create(
        InMemoryBackend::new(),
        &m,
        genesis_v2_for(&m, policy, seed)?,
    )?;
    let start = store.current_history()?;
    let candidate = store
        .invoke(&m, &decode(&fixtures["request"])?, NOW, None, None)?
        .bundle
        .ok_or_else(|| std::io::Error::other("request refused"))?;
    store.commit(&m, &candidate.evaluated_state, &candidate)?;
    let original = store
        .backend()
        .record(1)?
        .ok_or_else(|| std::io::Error::other("origin missing"))?;
    let original_hash = original.hash()?;
    let before = store.current_history()?;
    let request = CommandStreamRequest::from_json(
        &json!({"format":"behavior.command_stream_request.v1","after":start}).to_string(),
    )?;
    let page = store.commands_since(&request)?;
    let command = page
        .items()
        .first()
        .ok_or_else(|| std::io::Error::other("committed command missing"))?;
    let mut provider = MockProvider::default();
    let response = provider.execute(command, status)?;
    let repeated = provider.execute(command, status)?;
    if response != repeated || store.current_history()? != before {
        return Err(std::io::Error::other("host result changed producing history").into());
    }
    // A response value cannot invoke Behavior. The host explicitly chooses a
    // later capability and supplies the business correlation as normal input.
    let mut result = fixtures[outcome].clone();
    result["input"] = response;
    let candidate = store
        .invoke(&m, &decode(&result)?, NOW, None, None)?
        .bundle
        .ok_or_else(|| std::io::Error::other("result refused"))?;
    let history_before_result = store.current_history()?.position;
    store.commit(&m, &candidate.evaluated_state, &candidate)?;
    let end = store.current_history()?;
    let current = store
        .backend()
        .version_at(
            &EntityKey {
                entity: "Payment".into(),
                id: "payment-1".into(),
            },
            end.position,
        )?
        .ok_or_else(|| std::io::Error::other("payment missing"))?;
    let origin = store
        .backend()
        .record(1)?
        .ok_or_else(|| std::io::Error::other("origin lost"))?;
    let replay = behavior_engine::replay(
        &m,
        &original
            .bundle
            .as_ref()
            .ok_or_else(|| std::io::Error::other("origin has no action bundle"))?
            .record
            .to_string(),
    );
    Ok(
        json!({"attempt_id":current.value["attempt_id"],"status":current.value["status"],"history_before_result":history_before_result,"history_after_result":end.position,"origin_unchanged":origin==original && origin.hash()?==original_hash,"origin_replay_matches":replay.matches,"command_occurrence_id":command.command_occurrence_id(),"host_attempts":provider.attempts,"mock_target_acceptances":provider.responses.len()}),
    )
}
#[allow(dead_code)]
fn main() {
    match run(&std::env::args().nth(1).unwrap_or_else(|| "success".into())) {
        Ok(value) => println!("{value}"),
        Err(error) => {
            eprintln!("{error}");
            std::process::exit(2);
        }
    }
}
