#![allow(clippy::unwrap_used, clippy::expect_used)]
use behavior_engine::invocation::RequestedInvocation;
use behavior_engine::store::commands::CommandStreamRequest;
use behavior_engine::store::documents::{EntityKey, SeedEntity};
use behavior_engine::store::store::genesis_v2_for;
use behavior_engine::store::{Backend, InMemoryBackend, Store};
use behavior_engine::verify::governance::EvidencePolicyV2;
use serde_json::{Value, json};
const NOW: &str = "2026-10-05T12:00:00Z";
fn invocation(capability: &str, input: Value) -> RequestedInvocation {
    RequestedInvocation::decode(&json!({"format":"behavior.invocation.v1","capability":capability,"bindings":{"payment":{"entity":"Payment","id":"payment-1"}},"input":input,"context":{}}).to_string()).unwrap().0.unwrap()
}
fn policy() -> EvidencePolicyV2 {
    EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap()
}
#[test]
fn host_success_and_failure_are_explicit_later_inputs_and_original_event_is_immutable() {
    let m = behavior_engine::admit(include_str!(
        "../../tests/fixtures/commands/modules/payment.json"
    ))
    .unwrap();
    assert!(
        m.action("request_payment").is_some(),
        "payment model is not implemented"
    );
    for outcome in ["SUCCESS", "FAILURE"] {
        let seed = vec![SeedEntity {
            entity: "Payment".into(),
            value: json!({"id":"payment-1","attempt_id":"","status":"READY","provider_result":""}),
        }];
        let mut s = Store::create(
            InMemoryBackend::new(),
            &m,
            genesis_v2_for(&m, policy(), seed).unwrap(),
        )
        .unwrap();
        let start = s.current_history().unwrap();
        let requested = invocation(
            "request_payment",
            json!({"attempt_id":"attempt-42","amount_minor":2500}),
        );
        let b = s
            .invoke(&m, &requested, NOW, None, None)
            .unwrap()
            .bundle
            .unwrap();
        s.commit(&m, &b.evaluated_state, &b).unwrap();
        let original = s.backend().record(1).unwrap().unwrap();
        let hash = original.hash().unwrap();
        let before = s.current_history().unwrap();
        let req = CommandStreamRequest::from_json(
            &json!({"format":"behavior.command_stream_request.v1","after":start}).to_string(),
        )
        .unwrap();
        let page = s.commands_since(&req).unwrap();
        assert_eq!(page.items().len(), 1);
        let c = &page.items()[0];
        assert_eq!(c.intent()["payload"]["attempt_id"], "attempt-42");
        assert_eq!(c.intent()["payload"]["amount_minor"], 2500);
        // Host execution creates an ordinary response value. Nothing calls Core.
        let response = json!({"attempt_id":"attempt-42","status":outcome,"provider_result":"provider-reference-7"});
        assert_eq!(s.current_history().unwrap(), before);
        assert_eq!(s.backend().record(1).unwrap().unwrap(), original);
        let key = EntityKey {
            entity: "Payment".into(),
            id: "payment-1".into(),
        };
        assert_eq!(
            s.backend().version_at(&key, 1).unwrap().unwrap().value["status"],
            "REQUESTED"
        );
        let mut wrong = response.clone();
        wrong["attempt_id"] = json!("different-attempt");
        let refused = s
            .invoke(
                &m,
                &invocation("record_payment_result", wrong),
                NOW,
                None,
                None,
            )
            .unwrap();
        assert!(refused.bundle.is_none());
        assert_eq!(s.current_history().unwrap(), before);
        let result = s
            .invoke(
                &m,
                &invocation("record_payment_result", response),
                NOW,
                None,
                None,
            )
            .unwrap()
            .bundle
            .unwrap();
        assert_eq!(s.current_history().unwrap(), before);
        s.commit(&m, &result.evaluated_state, &result).unwrap();
        assert_eq!(s.current().unwrap().position, 2);
        assert_eq!(
            s.backend().version_at(&key, 2).unwrap().unwrap().value["status"],
            outcome
        );
        assert_eq!(
            s.backend().record(1).unwrap().unwrap().hash().unwrap(),
            hash
        );
        assert_eq!(s.backend().record(1).unwrap().unwrap(), original);
        assert!(behavior_engine::replay(&m, &original.bundle.unwrap().record.to_string()).matches);
    }
}
