#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Independent ordinary products: schema shape is weaker than semantic truth.
use behavior_core::facts::Facts;
use behavior_verify::governance::trusted::{
    GovernanceSubject, VerificationEnvelopeV2, verify_authenticated,
};
use behavior_verify::solver::{Solver, Z3Process};
use behavior_verify::{CheckKind, Profile};
use serde_json::{Value, json};
use std::io::Write;
use std::path::{Path, PathBuf};
use std::process::{Command, Stdio};
#[path = "support/trusted.rs"]
mod oracle;

fn root() -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("../..")
}
fn ordinary() -> Value {
    serde_json::from_str(include_str!(
        "../../../tests/fixtures/facts-witness-schema/ordinary.json"
    ))
    .unwrap()
}
fn case(name: &str, document: Value, accept: bool) -> Value {
    json!({"case":name,"document":document,"accept":accept})
}
fn shapes(cases: Vec<Value>) {
    let program = r#"
import copy,json,pathlib,sys
from jsonschema import Draft202012Validator
from referencing import Registry,Resource
root=pathlib.Path('.')
registry=Registry()
for name in ('decision-record-0.7','decision-record-0.8'):
    s=json.loads((root/f'schema/{name}.schema.json').read_text())
    registry=registry.with_resource(s['$id'],Resource.from_contents(s))
cases=json.load(sys.stdin)
failures=[]
executed=0
for name in ('governance-v2','store-v2'):
    original=json.loads((root/f'schema/{name}.schema.json').read_text())
    validators={}
    for c in cases:
        if c.get('wrapper',name) != name:
            continue
        definition=c.get('definition','facts')
        if definition not in validators:
            s=copy.deepcopy(original)
            if definition:
                s.pop('oneOf',None);s['$ref']='#/$defs/'+definition
            Draft202012Validator.check_schema(s)
            validators[definition]=Draft202012Validator(s,registry=registry)
        actual=validators[definition].is_valid(c['document'])
        executed+=1
        if actual != c['accept']:
            failures.append(f"{name}: {c['case']}: expected accept={c['accept']}, got {actual}")
print(f'Executed {executed} independent schema assertions',flush=True)
assert not failures,'\n'.join(failures)
"#;
    let mut child = Command::new("python3")
        .args(["-c", program])
        .current_dir(root())
        .stdin(Stdio::piped())
        .stdout(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .unwrap();
    child
        .stdin
        .take()
        .unwrap()
        .write_all(json!(cases).to_string().as_bytes())
        .unwrap();
    let output = child.wait_with_output().unwrap();
    println!("{}", String::from_utf8_lossy(&output.stdout));
    assert!(
        output.status.success(),
        "{}",
        String::from_utf8_lossy(&output.stderr)
    );
}

#[test]
fn six_families_serialize_and_are_accepted_separately_and_together() {
    let independent = ordinary();
    let encoded = Facts::from_json(&independent).unwrap().to_json();
    assert_eq!(encoded, independent);
    assert_eq!(Facts::from_json(&encoded).unwrap().to_json(), encoded);
    let mut cases = vec![case("combined serialized product", encoded, true)];
    for (family, value) in independent.as_object().unwrap() {
        let single = json!({family:value});
        assert_eq!(Facts::from_json(&single).unwrap().to_json(), single);
        cases.push(case(family, single, true));
    }
    shapes(cases);
}

#[test]
fn erroneous_root_aliases_and_malformed_known_roots_are_rejected() {
    let mut cases = vec![];
    for alias in ["exists", "used", "incoming"] {
        let document = json!({alias:[]});
        assert!(Facts::from_json(&document).is_err());
        cases.push(case(alias, document, false));
    }
    for (name, document) in [
        ("queries scalar", json!({"queries":42})),
        ("fields missing item properties", json!({"fields":[{}]})),
        ("universe scalar", json!({"universe":true})),
    ] {
        assert!(Facts::from_json(&document).is_err());
        cases.push(case(name, document, false));
    }
    shapes(cases);
}

#[test]
fn each_required_basic_type_and_closed_product_is_enforced() {
    let expected = ordinary();
    // Paths and required keys are defined independently of schema declarations.
    let products: &[(&str, &[&str], bool)] = &[
        ("/existence/0", &["entity", "id", "exists"], true),
        ("/identities/0", &["entity", "id", "used"], true),
        ("/references/0", &["entity", "id", "incoming"], true),
        ("/references/0/incoming/0", &["entity", "id", "field"], true),
        (
            "/queries/0",
            &["instance", "definition", "entity", "captures", "members"],
            true,
        ),
        ("/queries/0/captures/0", &["read", "value"], true),
        ("/queries/0/members/0", &["id"], true),
        ("/fields/0", &["entity", "id", "field", "value"], true),
        ("/universe/0", &["entity", "members"], true),
        ("/universe/0/members/0", &["id"], false),
    ];
    let mut cases = vec![];
    for (path, keys, closed) in products {
        for key in *keys {
            let mut missing = expected.clone();
            missing
                .pointer_mut(path)
                .unwrap()
                .as_object_mut()
                .unwrap()
                .remove(*key);
            assert!(Facts::from_json(&missing).is_err());
            cases.push(case(&format!("{path} missing {key}"), missing, false));
            if *key != "value" {
                for invalid in [Value::Null, json!(42)] {
                    let mut wrong = expected.clone();
                    wrong.pointer_mut(path).unwrap()[*key] = invalid;
                    assert!(Facts::from_json(&wrong).is_err());
                    cases.push(case(&format!("{path} wrong type {key}"), wrong, false));
                }
            }
        }
        if *closed {
            let mut extra = expected.clone();
            extra.pointer_mut(path).unwrap()["extra"] = json!(true);
            assert!(Facts::from_json(&extra).is_err());
            cases.push(case(&format!("{path} unknown property"), extra, false));
        }
    }
    for family in [
        "existence",
        "identities",
        "references",
        "queries",
        "fields",
        "universe",
    ] {
        for invalid in [Value::Null, json!(42), json!({}), json!([null])] {
            let document = json!({family:invalid});
            assert!(Facts::from_json(&document).is_err());
            cases.push(case(
                &format!("{family} malformed section/item"),
                document,
                false,
            ));
        }
    }
    let mut leaked = expected;
    leaked["queries"][0]["result_hash"] = json!("integrity belongs to bundle");
    assert!(Facts::from_json(&leaked).is_err());
    cases.push(case("ordinary query result_hash", leaked, false));
    for path in [
        "/references/0/incoming/0",
        "/queries/0/captures/0",
        "/queries/0/members/0",
        "/universe/0/members/0",
    ] {
        for scalar in [Value::Null, json!(42), json!(true), json!([])] {
            let mut document = ordinary();
            *document.pointer_mut(path).unwrap() = scalar;
            assert!(Facts::from_json(&document).is_err());
            cases.push(case(
                &format!("{path} malformed nested item"),
                document,
                false,
            ));
        }
    }
    shapes(cases);
}

#[test]
fn payload_carrier_null_open_universe_and_empty_observations_are_preserved() {
    let mut cases = vec![case("empty product", json!({}), true)];
    let families = [
        "existence",
        "identities",
        "references",
        "queries",
        "fields",
        "universe",
    ];
    for family in families {
        let document = json!({family:[]});
        assert_eq!(Facts::from_json(&document).unwrap().to_json(), json!({}));
        cases.push(case("empty partial map", document, true));
    }
    for payload in [
        json!(null),
        json!(true),
        json!(i64::MIN),
        json!(u64::MAX),
        json!(""),
        json!([null, true, {"a":[]}]),
        json!({"x":{"y":null}}),
    ] {
        let mut document = ordinary();
        document["fields"][0]["value"] = payload.clone();
        document["queries"][0]["captures"][0]["value"] = payload.clone();
        document["universe"][0]["members"][0]["application"] = payload;
        assert_eq!(Facts::from_json(&document).unwrap().to_json(), document);
        cases.push(case("canonical recursive payload", document, true));
    }
    for payload in [
        json!(1.5),
        serde_json::from_str::<Value>("18446744073709551616").unwrap(),
        serde_json::from_str::<Value>("-9223372036854777856").unwrap(),
    ] {
        for path in [
            "/fields/0/value",
            "/queries/0/captures/0/value",
            "/universe/0/members/0/application",
        ] {
            let mut document = ordinary();
            if let Some(slot) = document.pointer_mut(path) {
                *slot = payload.clone();
            } else {
                document["universe"][0]["members"][0]["application"] = payload.clone();
            }
            // Raw Facts payload acceptance is intentionally broader than wrapper transport.
            assert!(Facts::from_json(&document).is_ok());
            cases.push(case("noncanonical wrapper payload", document, false));
        }
    }
    let known = json!({"existence":[{"entity":"","id":"","exists":false}],"identities":[{"entity":"","id":"","used":false}],"references":[{"entity":"","id":"","incoming":[]}],"queries":[{"instance":"","definition":"","entity":"","captures":[],"members":[]}],"universe":[{"entity":"","members":[]}]});
    assert_eq!(Facts::from_json(&known).unwrap().to_json(), known);
    cases.push(case("known false/empty; basic strings", known, true));
    shapes(cases);
}

#[test]
fn normalization_preserves_capture_sequence_and_rejects_semantic_duplicates() {
    let mut document = ordinary();
    document["queries"][0]["members"] = json!([{"id":"z"},{"id":"a"}]);
    document["references"][0]["incoming"] = json!([{"entity":"Order","id":"z","field":"customer"},{"entity":"Order","id":"a","field":"customer"}]);
    let normalized = Facts::from_json(&document).unwrap().to_json();
    assert_eq!(
        normalized["queries"][0]["members"],
        json!([{"id":"a"},{"id":"z"}])
    );
    assert_eq!(normalized["references"][0]["incoming"][0]["id"], "a");
    assert_eq!(
        normalized["queries"][0]["captures"],
        document["queries"][0]["captures"]
    );
    let mut cases = vec![case("normalized set/map", normalized.clone(), true)];
    for family in [
        "existence",
        "identities",
        "references",
        "queries",
        "fields",
        "universe",
    ] {
        let mut duplicate = ordinary();
        let item = duplicate[family][0].clone();
        duplicate[family].as_array_mut().unwrap().push(item);
        assert!(Facts::from_json(&duplicate).is_err());
        cases.push(case("shape-valid duplicate semantic key", duplicate, true));
    }
    let mut reversed = normalized.clone();
    reversed["queries"][0]["captures"]
        .as_array_mut()
        .unwrap()
        .reverse();
    assert_ne!(Facts::from_json(&reversed).unwrap().to_json(), normalized);
    shapes(cases);
}

#[test]
fn genuine_signed_issue_counterexample_is_schema_accepted_without_changing_deny() {
    assert!(
        std::env::var("CORE024_CAPTURE_DIR").is_err()
            || std::env::var("CORE024_COMPARE_DIR").is_err(),
        "capture and immutable baseline comparison must use separate runs"
    );
    let module = behavior_core::admit(include_str!(
        "../../../tests/fixtures/facts-witness-schema/marker-customer.json"
    ))
    .unwrap();
    let profile = Profile::from_json(&oracle::text("profile.json")).unwrap();
    let solver = Z3Process::from_env().unwrap();
    let produced = verify_authenticated(
        &GovernanceSubject::Module(&module),
        &profile,
        oracle::text("verifier.seed").trim(),
        &solver,
    )
    .unwrap();
    assert_eq!(produced.envelope.report()["result"], "not_verified");
    let original = produced.envelope.as_json();
    let checked = VerificationEnvelopeV2::from_json(&original.to_string()).unwrap();
    checked
        .validate_for_subject(
            &GovernanceSubject::Module(&module),
            &profile,
            &solver.version(),
        )
        .unwrap();
    assert_eq!(checked.as_json(), original);
    let witness = produced.envelope.report()["checks"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|c| c["outcome"] == "counterexample")
        .map(|c| &c["witness"])
        .find(|w| {
            w["facts"]["existence"]
                .as_array()
                .is_some_and(|observations| {
                    observations
                        .iter()
                        .any(|o| o["entity"] == "Customer" && o["exists"] == false)
                })
        })
        .expect("actual missing-Customer counterexample");
    let universe = witness["facts"]["universe"].as_array().unwrap();
    assert_eq!(universe.len(), module.entities().len());
    assert!(
        universe
            .iter()
            .any(|u| u["entity"] == "Customer" && u["members"] == json!([]))
    );
    assert!(
        universe.iter().any(|u| u["entity"] == "Marker"
            && u["members"] == json!([witness["state"]["marker"].clone()]))
    );
    let serialized_facts = Facts::from_json(&witness["facts"]).unwrap().to_json();
    assert_eq!(serialized_facts, witness["facts"]);
    let request = json!({"action":"require_customer","data_version":"verification",
        "state":witness["state"],"input":witness["input"],"context":witness["context"],"facts":witness["facts"]});
    let record = behavior_core::evaluate(&module, &request.to_string());
    assert_eq!(record.as_json()["result"], "DENY");
    assert_eq!(record.as_json()["result"], witness["result"]);
    let bytes = original.to_string();
    if let Ok(path) = std::env::var("CORE024_CAPTURE_DIR") {
        let path = Path::new(&path);
        std::fs::create_dir_all(path).unwrap();
        std::fs::write(path.join("envelope.json"), &bytes).unwrap();
        std::fs::write(path.join("witness.json"), witness.to_string()).unwrap();
        std::fs::write(path.join("record.json"), record.to_json_string()).unwrap();
    }
    if let Ok(path) = std::env::var("CORE024_COMPARE_DIR") {
        assert_eq!(
            std::fs::read_to_string(Path::new(&path).join("envelope.json")).unwrap(),
            bytes,
            "schema correction must preserve the original signed bytes"
        );
        assert_eq!(
            std::fs::read_to_string(Path::new(&path).join("record.json")).unwrap(),
            record.to_json_string()
        );
    }
    shapes(vec![
        json!({"case":"actual governance root","wrapper":"governance-v2","definition":null,"document":original,"accept":true}),
        json!({"case":"actual Store embedded envelope","wrapper":"store-v2","definition":"envelope","document":original,"accept":true}),
        json!({"case":"actual invocation witness","definition":"witness","document":witness,"accept":true}),
        case("actual serialized witness Facts", serialized_facts, true),
    ]);
}

#[test]
fn actual_query_counterexample_produces_ordinary_query_and_universe_facts() {
    let module = behavior_core::admit(
        &std::fs::read_to_string(oracle::fixtures().join("wire/valid/orders.json")).unwrap(),
    )
    .unwrap();
    let profile = Profile {
        checks: vec![CheckKind::Preservation],
        ..Profile::default()
    };
    let solver = Z3Process::from_env().unwrap();
    let produced = verify_authenticated(
        &GovernanceSubject::Module(&module),
        &profile,
        oracle::text("verifier.seed").trim(),
        &solver,
    )
    .unwrap();
    produced
        .envelope
        .validate_for_subject(
            &GovernanceSubject::Module(&module),
            &profile,
            &solver.version(),
        )
        .unwrap();
    let check = produced.envelope.report()["checks"]
        .as_array()
        .unwrap()
        .iter()
        .find(|c| {
            c["outcome"] == "counterexample"
                && c["witness"]["facts"]["queries"]
                    .as_array()
                    .is_some_and(|q| !q.is_empty())
        })
        .expect("actual query-bearing counterexample");
    let witness = &check["witness"];
    assert_eq!(
        witness["facts"]["universe"].as_array().unwrap().len(),
        module.entities().len()
    );
    let obligation = produced.envelope.manifest()["obligations"]
        .as_array()
        .unwrap()
        .iter()
        .find(|o| o["key"] == check["key"])
        .unwrap();
    let action = obligation["descriptor"]["semantic_path"][0]["field"]
        .as_str()
        .unwrap();
    let request = json!({"action":action,"data_version":"verification","state":witness["state"],
        "input":witness["input"],"context":witness["context"],"facts":witness["facts"]});
    let record = behavior_core::evaluate(&module, &request.to_string());
    assert_eq!(record.as_json()["result"], witness["result"]);
    let encoded = Facts::from_json(&witness["facts"]).unwrap().to_json();
    assert_eq!(encoded, witness["facts"]);
    println!(
        "actual query producer emitted families: {:?}",
        encoded.as_object().unwrap().keys().collect::<Vec<_>>()
    );
    shapes(vec![
        case("actual query recording/confirmation", encoded, true),
        json!({"case":"actual query witness","definition":"witness","document":witness,"accept":true}),
    ]);
}

#[test]
fn bounded_map_set_permutations_have_the_same_normalized_serialization() {
    let mut cases = vec![];
    for size in 1..=8 {
        let observations: Vec<_> = (0..size)
            .map(|id| json!({"entity":"Customer","id":id.to_string(),"exists":id%2==0}))
            .collect();
        let mut forward = ordinary();
        forward["existence"] = json!(observations);
        forward["queries"][0]["members"] = json!(
            (0..size)
                .map(|id| json!({"id":id.to_string()}))
                .collect::<Vec<_>>()
        );
        forward["references"][0]["incoming"] = json!(
            (0..size)
                .map(|id| json!({"entity":"Order","id":id.to_string(),"field":"customer"}))
                .collect::<Vec<_>>()
        );
        let encoded = Facts::from_json(&forward).unwrap().to_json();
        let mut reverse = forward;
        reverse["existence"].as_array_mut().unwrap().reverse();
        reverse["queries"][0]["members"]
            .as_array_mut()
            .unwrap()
            .reverse();
        reverse["references"][0]["incoming"]
            .as_array_mut()
            .unwrap()
            .reverse();
        assert_eq!(Facts::from_json(&reverse).unwrap().to_json(), encoded);
        assert_eq!(Facts::from_json(&encoded).unwrap().to_json(), encoded);
        cases.push(case("bounded normalized permutation", encoded, true));
    }
    shapes(cases);
}
