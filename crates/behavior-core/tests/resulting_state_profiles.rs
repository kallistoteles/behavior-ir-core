#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Core017 current evidence versus immutable archived decision controls.
#[path = "support/commands.rs"]
mod commands;
mod common;

use behavior_core::{DecisionRecord, admit, evaluate, replay};
use serde_json::{Value, json};
use sha2::{Digest, Sha256};

const PROFILE: &str = "behavior.complete_resulting_state.v1";

fn wire(command: bool, constraint: bool) -> Value {
    let mut wire = commands::module();
    if !command {
        wire["ir_version"] = json!("0.6");
        wire.as_object_mut().unwrap().remove("commands");
        wire.as_object_mut().unwrap().remove("reads");
        wire["actions"][0]
            .as_object_mut()
            .unwrap()
            .remove("command_effects");
    }
    if constraint {
        wire["constraints"] = json!([{
            "name":"positive_cost", "entity":"Order", "param":"order", "loc":commands::loc(),
            "body":commands::op("ge", vec![commands::field("cost"), commands::integer(0)])
        }]);
    }
    wire
}

fn with_empty_type(mut wire: Value) -> Value {
    wire["entities"].as_array_mut().unwrap().push(json!({
        "name":"Empty", "fields":[{"name":"x","type":{"t":"int"},"loc":commands::loc()}],
        "loc":commands::loc()
    }));
    wire
}

fn complete_request() -> Value {
    let mut request = commands::request(2, true);
    request["facts"]["universe"]
        .as_array_mut()
        .unwrap()
        .push(json!({"entity":"Empty","members":[]}));
    request
}

fn run(wire: &Value, request: &Value) -> Value {
    evaluate(&admit(&wire.to_string()).unwrap(), &request.to_string())
        .as_json()
        .clone()
}

fn assert_current(record: &Value) {
    assert_eq!(record["record_version"], "0.8", "{record}");
    assert_eq!(record["validation_profile"], PROFILE, "{record}");
}

#[test]
fn fresh_legacy_actions_use_current_complete_evidence_including_empty_types() {
    let wire = with_empty_type(wire(false, false));
    let request = complete_request();
    let record = run(&wire, &request);
    assert_eq!(record["result"], "ALLOW", "valid complete-state control");
    assert_current(&record);
    assert!(record.get("semantic_profile").is_none());
    assert!(record.get("commands").is_none());
    assert_eq!(
        record["facts"]["universe"],
        json!([
            {"entity":"Empty","members":[]},
            {"entity":"Order","members":[commands::value(2, true)]}
        ])
    );
    assert_eq!(
        DecisionRecord::from_json(&record.to_string())
            .unwrap()
            .as_json(),
        &record
    );
    assert!(replay(&admit(&wire.to_string()).unwrap(), &record.to_string()).matches);
}

#[test]
fn fresh_command_actions_keep_language_profile_separate_from_validation_profile() {
    let wire = with_empty_type(wire(true, false));
    let record = run(&wire, &complete_request());
    assert_eq!(record["result"], "ALLOW", "valid command control");
    assert_current(&record);
    assert_eq!(record["semantic_profile"], "0.8");
    assert_eq!(
        record["facts"]["universe"][0],
        json!({"entity":"Empty","members":[]})
    );
    let decoded = DecisionRecord::from_json(&record.to_string()).unwrap();
    assert_eq!(decoded.as_json(), &record);
    assert_eq!(decoded.command_intents().len(), 1);
    assert!(replay(&admit(&wire.to_string()).unwrap(), &record.to_string()).matches);
}

#[test]
fn missing_empty_type_is_not_a_complete_legacy_parent() {
    let record = run(
        &with_empty_type(wire(false, false)),
        &commands::request(2, true),
    );
    assert_eq!(
        record["result"], "INVALID_INPUT",
        "partial parent was accepted: {record}"
    );
    assert_eq!(record["reasons"][0]["code"], "INVALID_STATE_SNAPSHOT");
    assert_eq!(record["trace"], json!([]));
    assert_eq!(record["changes"], json!([]));
    assert!(record.get("lifecycle").is_none());
}

#[test]
fn no_universe_is_not_permission_to_treat_bound_rows_as_complete() {
    let mut request = commands::request(2, true);
    request.as_object_mut().unwrap().remove("facts");
    let record = run(&wire(false, false), &request);
    assert_eq!(record["result"], "INVALID_INPUT", "{record}");
    assert_eq!(record["reasons"][0]["code"], "INVALID_STATE_SNAPSHOT");
    assert_eq!(record["changes"], json!([]));
}

#[test]
fn invalid_unbound_parent_invariant_is_refused_before_action_execution() {
    let mut wire = wire(false, false);
    wire["invariants"] = json!([{
        "name":"nonnegative_cost", "entity":"Order", "param":"order", "loc":commands::loc(),
        "body":commands::op("ge", vec![commands::field("cost"), commands::integer(0)])
    }]);
    let mut request = commands::request(2, true);
    let mut unbound = commands::value(-1, false);
    unbound["id"] = json!("unbound");
    request["facts"]["universe"][0]["members"]
        .as_array_mut()
        .unwrap()
        .push(unbound);
    let record = run(&wire, &request);
    assert_eq!(
        record["result"], "INVALID_INPUT",
        "invalid parent accepted: {record}"
    );
    assert_eq!(record["reasons"][0]["code"], "INVALID_STATE_SNAPSHOT");
    assert_eq!(record["trace"], json!([]));
    assert_eq!(record["changes"], json!([]));
    assert!(replay(&admit(&wire.to_string()).unwrap(), &record.to_string()).matches);
}

#[test]
fn existing_command_snapshot_and_malformed_fact_refusals_are_positive_controls() {
    let record = run(
        &with_empty_type(wire(true, false)),
        &commands::request(2, true),
    );
    assert_eq!(record["result"], "INVALID_INPUT");
    assert_eq!(record["reasons"][0]["code"], "INVALID_STATE_SNAPSHOT");
    for command in [false, true] {
        for malformed in [json!({"universe":"wrong"}), json!({"hidden":true})] {
            let mut request = commands::request(2, true);
            request["facts"] = malformed;
            let record = run(&wire(command, false), &request);
            assert_eq!(record["result"], "INVALID_INPUT", "{record}");
            assert_eq!(record["changes"], json!([]));
            assert_eq!(record["trace"], json!([]));
        }
    }
}

#[test]
fn transport_and_unknown_selector_refusals_retain_reconstructible_inputs() {
    for command in [false, true] {
        let module = admit(&wire(command, false).to_string()).unwrap();
        let mut injected = commands::request(2, true);
        injected["validation_profile"] = json!("historical");
        for raw in ["{".to_string(), injected.to_string()] {
            let record = evaluate(&module, &raw);
            assert_eq!(record.result(), "INVALID_INPUT");
            assert_eq!(record.as_json()["refused_request"], raw);
            assert_current(record.as_json());
            assert_eq!(record.as_json()["trace"], json!([]));
            assert_eq!(record.as_json()["derived"], json!([]));
            assert_eq!(record.as_json()["changes"], json!([]));
            DecisionRecord::from_json(&record.to_json_string()).unwrap();
            let reproduced = replay(&module, &record.to_json_string());
            assert!(reproduced.matches, "{:?}", reproduced.diff);
        }
    }
}

#[test]
fn current_codec_is_closed_and_checks_validation_and_command_pairing() {
    for command in [false, true] {
        let record = run(&wire(command, false), &commands::request(2, true));
        assert_current(&record);
        DecisionRecord::from_json(&record.to_string()).unwrap();
        for mutation in 0..7 {
            let mut bad = record.clone();
            match mutation {
                0 => bad["hidden"] = json!(true),
                1 => bad["validation_profile"] = json!("unknown"),
                2 => bad["record_version"] = json!("0.9"),
                3 => {
                    bad.as_object_mut().unwrap().remove("validation_profile");
                }
                4 => bad["semantic_profile"] = json!("wrong"),
                5 => bad["trace"][0]["hidden"] = json!(true),
                _ if command => {
                    bad.as_object_mut().unwrap().remove("commands");
                }
                _ => bad["commands"] = json!({"declarations":[],"types":[],"intents":[]}),
            }
            assert!(
                DecisionRecord::from_json(&bad.to_string()).is_err(),
                "command={command}, mutation={mutation}: {bad}"
            );
        }
        let duplicated = record.to_string().replacen(
            "\"record_version\":\"0.8\"",
            "\"record_version\":\"0.8\",\"record_version\":\"0.8\"",
            1,
        );
        assert!(DecisionRecord::from_json(&duplicated).is_err());
    }
}

#[test]
fn current_codec_requires_typed_child_subject_and_semantic_descriptor() {
    let record = run(&wire(true, true), &commands::request(2, true));
    assert_current(&record);
    DecisionRecord::from_json(&record.to_string()).unwrap();
    let index = record["trace"]
        .as_array()
        .unwrap()
        .iter()
        .position(|step| step["phase"] == "constraint_post")
        .unwrap();
    assert_eq!(
        record["trace"][index]["subject"],
        json!({"entity":"Order","id":"order-1"})
    );
    assert_eq!(
        record["trace"][index]["obligation"],
        json!({
            "kind":"constraint", "source":"declared", "name":"positive_cost",
            "hash":record["trace"][index]["hash"]
        })
    );
    assert_eq!(
        record["trace"][index]["observations"],
        json!([{"field":"cost","phase_state":"S'","value":2}])
    );
    for mutation in 0..12 {
        let mut bad = record.clone();
        let step = &mut bad["trace"][index];
        match mutation {
            0 => {
                step.as_object_mut().unwrap().remove("subject");
            }
            1 => step["subject"] = json!("Order#order-1"),
            2 => {
                step["subject"].as_object_mut().unwrap().remove("id");
            }
            3 => step["subject"]["display"] = json!("Order#order-1"),
            4 => {
                step.as_object_mut().unwrap().remove("obligation");
            }
            5 => step["obligation"]["source"] = json!("display"),
            6 => {
                step["obligation"].as_object_mut().unwrap().remove("name");
            }
            7 => step["obligation"]["hash"] = json!(format!("sha256:{}", "0".repeat(64))),
            8 => step["obligation"]["kind"] = json!("invariant"),
            9 => step["observations"][0]["phase_state"] = json!("S"),
            10 => step["observations"][0]["hidden"] = json!(true),
            _ => {
                step.as_object_mut().unwrap().remove("observations");
            }
        }
        assert!(
            DecisionRecord::from_json(&bad.to_string()).is_err(),
            "mutation={mutation}: {bad}"
        );
    }
}

#[test]
fn refused_request_cannot_be_attached_to_successful_body_evidence() {
    let mut record = run(&wire(true, false), &commands::request(2, true));
    assert_current(&record);
    DecisionRecord::from_json(&record.to_string()).unwrap();
    record["refused_request"] = json!("{");
    assert!(DecisionRecord::from_json(&record.to_string()).is_err());
}

#[test]
fn archived_record_07_decoder_keeps_its_original_requirements() {
    let archived = common::json(
        &common::fixtures().join("resulting-state-validity/commands/bundle.json"),
    )["record"]
        .clone();
    assert_eq!(archived["record_version"], "0.7");
    assert!(archived.get("validation_profile").is_none());
    let decoded = DecisionRecord::from_json(&archived.to_string()).unwrap();
    assert_eq!(decoded.as_json(), &archived);
    assert_eq!(decoded.command_intents().len(), 1);
    for mutation in 0..3 {
        let mut bad = archived.clone();
        match mutation {
            0 => bad["validation_profile"] = json!(PROFILE),
            1 => bad["semantic_profile"] = json!("wrong"),
            _ => {
                bad.as_object_mut().unwrap().remove("commands");
            }
        }
        assert!(
            DecisionRecord::from_json(&bad.to_string()).is_err(),
            "{bad}"
        );
    }
}

/// Read genuine baseline bytes and check the capture digest before using them
/// as original-profile evidence. This never constructs a supposed old record
/// by relabelling current output.
fn frozen(relative: &str) -> String {
    let path = format!("tests/fixtures/{relative}");
    let text = common::read(&common::repo_root().join(&path));
    let manifest =
        common::json(&common::fixtures().join("resulting-state-validity/archive-manifest.json"));
    let entry = ["historical_fixtures", "captured_artifacts"]
        .into_iter()
        .flat_map(|key| manifest[key].as_array().unwrap())
        .find(|entry| entry["path"] == path)
        .unwrap_or_else(|| panic!("no immutable capture for {path}"));
    assert_eq!(entry["bytes"], json!(text.len()), "{path}");
    assert_eq!(
        entry["sha256"],
        format!("{:x}", Sha256::digest(text.as_bytes())),
        "{path}: archive bytes changed"
    );
    text
}

fn frozen_module(relative: &str) -> behavior_core::semantic::Module {
    admit(&frozen(relative)).unwrap()
}

fn rehash_invocation(mut envelope: Value) -> Value {
    envelope.as_object_mut().unwrap().remove("record_id");
    if let Some(inner) = envelope["outcome"].get("record") {
        envelope["outcome"]["record_id"] =
            json!(behavior_core::canonical::tagged_hash("behavior.transition.v1", inner).unwrap());
    }
    envelope["record_id"] = json!(format!(
        "invocation:{}",
        behavior_core::canonical::tagged_hash("behavior.invocation_record.v1", &envelope).unwrap()
    ));
    envelope
}

fn assert_nested_reproduction(module_path: &str, envelope_path: &str, version: &str) {
    let module = frozen_module(module_path);
    let text = frozen(envelope_path);
    let envelope: Value = serde_json::from_str(&text).unwrap();
    assert_eq!(envelope["outcome"]["record"]["record_version"], version);
    assert!(
        envelope["outcome"]["record"]
            .get("validation_profile")
            .is_none()
    );
    let inner = replay(&module, &envelope["outcome"]["record"].to_string());
    assert!(
        inner.matches,
        "standalone frozen {version}: {:?}",
        inner.diff
    );
    let result = behavior_core::invocation::replay_invocation(&module, &text);
    assert!(result.matches, "nested frozen {version}: {:?}", result.diff);
    // The wrapper and inner identity formulas stay unchanged; reproduction is
    // not current validity evidence or authorization to commit this record.
    let rehashed = rehash_invocation(envelope.clone());
    assert_eq!(rehashed["record_id"], envelope["record_id"]);
    assert_eq!(
        rehashed["outcome"]["record_id"],
        envelope["outcome"]["record_id"]
    );
}

#[test]
fn genuine_standalone_04_07_archives_reproduce_without_new_parent_requirements() {
    for version in ["0.4", "0.5", "0.6"] {
        let dir = format!("resulting-state-validity/decisions/decision-{version}");
        let module = frozen_module(&format!("{dir}/module.json"));
        let text = frozen(&format!("{dir}/record.json"));
        let record: Value = serde_json::from_str(&text).unwrap();
        assert_eq!(record["record_version"], version);
        assert!(record.get("validation_profile").is_none());
        // These genuine old records did not capture a complete universe.
        assert!(record["facts"].get("universe").is_none());
        let result = replay(&module, &text);
        assert!(result.matches, "frozen {version}: {:?}", result.diff);
        let request = frozen(&format!("{dir}/request.json"));
        let fresh = evaluate(&module, &request);
        assert_current(fresh.as_json());
    }
    let module = frozen_module("commands/modules/receipt.json");
    let text = frozen("commands/records/receipt.json");
    let record = DecisionRecord::from_json(&text).unwrap();
    assert_eq!(record.as_json()["record_version"], "0.7");
    assert_eq!(record.command_intents().len(), 1);
    assert!(replay(&module, &text).matches);
}

#[test]
fn frozen_nested_04_action_reproduces_original_wrapper() {
    assert_nested_reproduction(
        "invocation/modules/ledger.json",
        "invocation/records/suspend.expected.json",
        "0.4",
    );
}

#[test]
fn frozen_nested_05_unsound_allow_reproduces_only_as_history() {
    assert_nested_reproduction(
        "resulting-state-validity/audit-counterexample/module.json",
        "resulting-state-validity/audit-counterexample/invalid-create.invocation-record.json",
        "0.5",
    );
}

#[test]
fn frozen_nested_06_action_reproduces_original_wrapper() {
    assert_nested_reproduction(
        "invocation/modules/ledger.json",
        "invocation/records/register.expected.json",
        "0.6",
    );
}

#[test]
fn frozen_nested_07_command_reproduces_original_wrapper_and_bag() {
    assert_nested_reproduction(
        "commands/modules/receipt.json",
        "commands/records/receipt.invocation.json",
        "0.7",
    );
}

#[test]
fn frozen_allow_is_not_the_result_of_a_fresh_ordinary_invocation() {
    let module = frozen_module("resulting-state-validity/audit-counterexample/module.json");
    let archive: Value = serde_json::from_str(&frozen(
        "resulting-state-validity/audit-counterexample/invalid-create.invocation-record.json",
    ))
    .unwrap();
    assert_eq!(archive["outcome"]["record"]["result"], "ALLOW");
    let request: Value = serde_json::from_str(&frozen(
        "resulting-state-validity/audit-counterexample/invalid-create.request.json",
    ))
    .unwrap();
    let parent: Value = serde_json::from_str(&frozen(
        "resulting-state-validity/audit-counterexample/parent-values.json",
    ))
    .unwrap();
    let snapshot = json!({"format":"behavior.snapshot.v1", "data_version":request["data_version"],
        "entities":parent, "facts":request["facts"]});
    let fresh = behavior_core::invocation::invoke_document(
        &module,
        &frozen("resulting-state-validity/audit-counterexample/invalid-create.invocation.json"),
        &snapshot.to_string(),
        None,
    )
    .unwrap();
    let inner = fresh.inner_record().unwrap();
    assert_current(inner);
    assert_eq!(inner["result"], "DENY");
    assert_eq!(inner["reasons"][0]["code"], "CONSTRAINT_VIOLATED");
    let witness = inner["trace"]
        .as_array()
        .unwrap()
        .iter()
        .find(|step| step["phase"] == "constraint_post" && step["outcome"] == false)
        .unwrap();
    assert_eq!(witness["subject"], json!({"entity":"E","id":"e0"}));
    assert_eq!(inner["changes"], json!([]));
    assert!(inner.get("lifecycle").is_none());
    assert_ne!(archive["record_id"], fresh.as_json()["record_id"]);
    assert!(behavior_core::invocation::replay_invocation(&module, &fresh.to_json_string()).matches);
}

fn current_envelope(command: bool) -> (behavior_core::semantic::Module, Value) {
    let module = admit(&wire(command, true).to_string()).unwrap();
    let record = behavior_core::invocation::invoke_document(
        &module,
        &commands::invocation().to_string(),
        &commands::snapshot(2, true).to_string(),
        None,
    )
    .unwrap();
    let envelope = record.as_json().clone();
    assert_current(&envelope["outcome"]["record"]);
    assert_eq!(envelope["outcome"]["record"]["result"], "ALLOW");
    assert!(
        behavior_core::invocation::replay_invocation(&module, &record.to_json_string()).matches
    );
    (module, envelope)
}

#[test]
fn rehashed_outer_and_inner_inputs_must_agree_before_action_reproduction() {
    for command in [false, true] {
        let (module, original) = current_envelope(command);
        for mutation in 0..5 {
            let mut changed = original.clone();
            match mutation {
                0 => changed["input"] = json!({"substituted":1}),
                1 => changed["context"] = json!({"substituted":"context"}),
                2 => changed["capability"] = json!("other"),
                3 => changed["requested_bindings"]["order"]["id"] = json!("other"),
                _ => changed["outcome"]["record"]["state"]["order"]["cost"] = json!(3),
            }
            let changed = rehash_invocation(changed);
            let result =
                behavior_core::invocation::replay_invocation(&module, &changed.to_string());
            assert!(
                !result.matches,
                "command={command}, mutation={mutation}: substituted envelope accepted"
            );
        }
    }
}

#[test]
fn invocation_reproduction_compares_typed_inputs_after_canonical_normalization() {
    let module = frozen_module("resulting-state-validity/decisions/decision-0.5/module.json");
    let request: Value = serde_json::from_str(&frozen(
        "resulting-state-validity/decisions/decision-0.5/request.json",
    ))
    .unwrap();
    let customer = request["state"]["owner"].clone();
    // Complete positive parent: there are no Account/AuditNote rows, and the
    // actual Customer fixture is the target of the proposed Account reference.
    let snapshot = json!({"format":"behavior.snapshot.v1", "data_version":request["data_version"],
        "entities":[{"entity":"Customer","value":customer}],
        "facts":{"universe":[{"entity":"Account","members":[]},
            {"entity":"AuditNote","members":[]},{"entity":"Customer","members":[customer]}],
            "identities":request["facts"]["identities"]}});
    let invocation = json!({"format":"behavior.invocation.v1", "capability":"open_account",
        "bindings":{"owner":{"entity":"Customer","id":"c1"}},
        "input":{"account_id":"a9","initial":"100"}, "context":{}});
    let record = behavior_core::invocation::invoke_document(
        &module,
        &invocation.to_string(),
        &snapshot.to_string(),
        None,
    )
    .unwrap();
    let inner = record.inner_record().unwrap();
    assert_current(inner);
    assert_eq!(inner["result"], "ALLOW");
    assert_eq!(record.as_json()["input"]["initial"], "100");
    assert_eq!(inner["input"]["initial"], "100.00");
    let result = behavior_core::invocation::replay_invocation(&module, &record.to_json_string());
    assert!(
        result.matches,
        "normalized positive control: {:?}",
        result.diff
    );
    let mut changed = record.as_json().clone();
    changed["input"]["initial"] = json!("101");
    assert!(
        !behavior_core::invocation::replay_invocation(
            &module,
            &rehash_invocation(changed).to_string()
        )
        .matches,
        "a mathematically different input must not match"
    );
}

#[test]
fn current_invocation_input_refusals_reproduce_from_the_resolved_request() {
    let module = admit(&commands::command_only_module(true).to_string()).unwrap();
    for input in [json!({}), json!({"recipient":17})] {
        let mut invocation = commands::command_only_invocation("unused");
        invocation["input"] = input;
        let record = behavior_core::invocation::invoke_document(
            &module,
            &invocation.to_string(),
            &commands::command_only_snapshot().to_string(),
            None,
        )
        .unwrap();
        let inner = record.inner_record().unwrap();
        assert_current(inner);
        assert_eq!(inner["result"], "INVALID_INPUT");
        assert_eq!(inner["trace"], json!([]));
        assert_eq!(inner["changes"], json!([]));
        assert!(inner["commands"]["intents"].as_array().unwrap().is_empty());
        let result =
            behavior_core::invocation::replay_invocation(&module, &record.to_json_string());
        assert!(
            result.matches,
            "input {:?}: {:?}",
            invocation["input"], result.diff
        );
    }
}

#[test]
fn rehashed_archived_outer_and_inner_inputs_must_agree() {
    let module = frozen_module("invocation/modules/ledger.json");
    let original: Value =
        serde_json::from_str(&frozen("invocation/records/suspend.expected.json")).unwrap();
    let control = behavior_core::invocation::replay_invocation(&module, &original.to_string());
    assert!(control.matches, "archive control: {:?}", control.diff);
    for mutation in 0..5 {
        let mut changed = original.clone();
        match mutation {
            0 => changed["input"] = json!({"substituted":1}),
            1 => changed["context"] = json!({"substituted":"context"}),
            2 => changed["capability"] = json!("check_standing"),
            3 => changed["requested_bindings"]["customer"]["id"] = json!("other"),
            _ => {
                // Unlike the unused name, this value is the recorded effect's
                // old value and must agree with the archived computation.
                changed["outcome"]["record"]["state"]["customer"]["status"] = json!("SUSPENDED")
            }
        }
        let result = behavior_core::invocation::replay_invocation(
            &module,
            &rehash_invocation(changed).to_string(),
        );
        assert!(!result.matches, "archived mutation {mutation} accepted");
    }
}

#[test]
fn nested_version_profile_subject_and_universe_tampering_never_selects_a_fallback() {
    for command in [false, true] {
        let (module, original) = current_envelope(command);
        for mutation in 0..7 {
            let mut changed = original.clone();
            let inner = &mut changed["outcome"]["record"];
            match mutation {
                0 => inner["record_version"] = json!("unknown"),
                1 => inner["validation_profile"] = json!("historical"),
                2 => {
                    inner.as_object_mut().unwrap().remove("validation_profile");
                }
                3 => inner["semantic_profile"] = json!(if command { "wrong" } else { "0.8" }),
                4 => {
                    let child = inner["trace"]
                        .as_array_mut()
                        .unwrap()
                        .iter_mut()
                        .find(|s| s["phase"] == "constraint_post")
                        .unwrap();
                    child["subject"]["id"] = json!("other");
                }
                5 => inner["facts"]["universe"][0]["members"][0]["cost"] = json!(3),
                _ => inner["facts"]["universe"] = json!([]),
            }
            let result = behavior_core::invocation::replay_invocation(
                &module,
                &rehash_invocation(changed).to_string(),
            );
            assert!(
                !result.matches,
                "command={command}, mutation={mutation}: tampering accepted"
            );
        }
    }
}

#[test]
fn own_read_and_no_body_refusal_profiles_remain_frozen_controls() {
    let ledger = frozen_module("invocation/modules/ledger.json");
    for path in [
        "invocation/records/summary.expected.json",
        "invocation/intent-records/summary_read.expected.json",
    ] {
        let text = frozen(path);
        let record: Value = serde_json::from_str(&text).unwrap();
        assert_eq!(
            record["outcome"]["record"]["format"],
            "behavior.read_record.v1"
        );
        assert!(behavior_core::invocation::replay_invocation(&ledger, &text).matches);
    }
    let module = frozen_module("resulting-state-validity/reads/read-v2/module.json");
    let text = frozen("resulting-state-validity/reads/read-v2/record.json");
    assert!(behavior_core::read::replay_read(&module, &text).matches);
    for path in [
        "invocation/records/transfer_alias.expected.json",
        "invocation/records/suspend_unknown.expected.json",
        "invocation/intent-records/with_state.expected.json",
    ] {
        let text = frozen(path);
        let record: Value = serde_json::from_str(&text).unwrap();
        assert_eq!(record["outcome"]["kind"], "pre_evaluation_refusal");
        assert!(record["outcome"].get("record").is_none());
        assert!(behavior_core::invocation::replay_invocation(&ledger, &text).matches);
    }
}
