#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/command_history.rs"]
mod h;
use behavior_store::commands::CommandStreamRequest;
use behavior_store::{Backend, Store};
use serde_json::json;
#[test]
fn exclusive_whole_event_pages_pin_history_and_preserve_duplicate_counts() {
    let m = h::module(true, true);
    let mut s = h::store(&m);
    let start = s.current_history().unwrap();
    h::commit(&m, &mut s, "one");
    h::commit(&m, &mut s, "two");
    let pinned = s.current_history().unwrap();
    let p = s.commands_since(&h::request(&start, None, 1)).unwrap();
    assert_eq!(p.items().len(), 3);
    assert_eq!(p.next_after().position, 1);
    assert_eq!(p.observed_head(), &pinned);
    assert!(!p.complete());
    h::commit(&m, &mut s, "three");
    let before = h::counts(&s);
    let q = s
        .commands_since(&h::request(p.next_after(), Some(p.observed_head()), 1))
        .unwrap();
    assert_eq!(q.items().len(), 3);
    assert_eq!(q.items()[0].history_position(), 2);
    assert_eq!(q.next_after(), &pinned);
    assert!(q.complete());
    assert_eq!(h::counts(&s), before);
    let empty = s
        .commands_since(&h::request(&pinned, Some(&pinned), 1))
        .unwrap();
    assert!(empty.items().is_empty());
    assert_eq!(empty.next_after(), &pinned);
    assert!(empty.complete());
    let next = s.commands_since(&h::request(&pinned, None, 1)).unwrap();
    assert_eq!(next.items()[0].history_position(), 3);
}
#[test]
fn empty_realized_commands_advance_without_splitting_events() {
    let m = h::module(false, false);
    let mut s = h::store(&m);
    let start = s.current_history().unwrap();
    h::commit(&m, &mut s, "one");
    h::commit(&m, &mut s, "two");
    let first = s.commands_since(&h::request(&start, None, 1)).unwrap();
    assert!(first.items().is_empty());
    assert_eq!(first.next_after().position, 1);
    assert!(!first.complete());
    let last = s
        .commands_since(&h::request(
            first.next_after(),
            Some(first.observed_head()),
            1,
        ))
        .unwrap();
    assert!(last.items().is_empty());
    assert_eq!(last.next_after().position, 2);
    assert!(last.complete());
}
#[test]
fn request_decoder_requires_closed_actual_endpoints_and_bounded_integer_limits() {
    let m = h::module(true, false);
    let s = h::store(&m);
    let good =
        json!({"format":"behavior.command_stream_request.v1","after":s.current_history().unwrap()});
    let decoded = CommandStreamRequest::from_json(&good.to_string()).unwrap();
    assert_eq!(decoded.max_records(), 256);
    assert!(decoded.through().is_none());
    for fault in [
        "format",
        "extra",
        "after_missing",
        "negative",
        "zero",
        "too_large",
        "fraction",
        "missing_state",
        "bad_hash",
        "genesis_record",
    ] {
        let mut v = good.clone();
        match fault {
            "format" => v["format"] = json!("other"),
            "extra" => v["unknown"] = json!(true),
            "after_missing" => {
                v.as_object_mut().unwrap().remove("after");
            }
            "negative" => v["max_records"] = json!(-1),
            "zero" => v["max_records"] = json!(0),
            "too_large" => v["max_records"] = json!(1025),
            "fraction" => v["max_records"] = json!(1.5),
            "missing_state" => {
                v["after"].as_object_mut().unwrap().remove("state");
            }
            "bad_hash" => v["after"]["state"] = json!("sha256:ff"),
            "genesis_record" => v["after"]["record"] = json!(format!("sha256:{}", "ab".repeat(32))),
            _ => unreachable!(),
        }
        assert!(
            CommandStreamRequest::from_json(&v.to_string()).is_err(),
            "accepted {fault}"
        );
    }
    let duplicate = format!(
        "{{\"format\":\"behavior.command_stream_request.v1\",\"after\":{},\"max_records\":1,\"max_records\":2}}",
        good["after"]
    );
    assert!(CommandStreamRequest::from_json(&duplicate).is_err());
}
#[test]
fn wrong_fork_future_reversed_and_mismatched_state_endpoints_are_refused() {
    let m = h::module(true, false);
    let mut s = h::store(&m);
    let mut fork = h::store(&m);
    let start = s.current_history().unwrap();
    h::commit(&m, &mut s, "a");
    h::commit(&m, &mut fork, "b");
    let head = s.current_history().unwrap();
    for fault in ["store", "fork", "future", "state", "record"] {
        let mut after = head.clone();
        match fault {
            "store" => after.store = format!("sha256:{}", "ab".repeat(32)),
            "fork" => after = fork.current_history().unwrap(),
            "future" => after.position = 2,
            "state" => after.state = format!("sha256:{}", "ab".repeat(32)),
            "record" => after.record = format!("sha256:{}", "ab".repeat(32)),
            _ => unreachable!(),
        }
        assert!(
            s.commands_since(&h::request(&after, None, 1)).is_err(),
            "accepted {fault}"
        );
    }
    assert!(
        s.commands_since(&h::request(&head, Some(&start), 1))
            .is_err()
    );
    let mut through = head;
    through.position = 2;
    assert!(
        s.commands_since(&h::request(&start, Some(&through), 1))
            .is_err()
    );
}
#[test]
fn missing_broken_and_uncommitted_records_are_never_successful_empty_pages() {
    let m = h::module(true, false);
    let mut s = h::store(&m);
    let start = s.current_history().unwrap();
    h::commit(&m, &mut s, "one");
    h::commit(&m, &mut s, "two");
    let original = s.backend().record(1).unwrap().unwrap();
    s.backend_mut().omitted.insert(1);
    assert!(s.commands_since(&h::request(&start, None, 1)).is_err());
    s.backend_mut().omitted.clear();
    let mut broken = original.clone();
    broken.previous_record = format!("sha256:{}", "ab".repeat(32));
    s.backend_mut().records.insert(1, broken);
    assert!(s.commands_since(&h::request(&start, None, 1)).is_err());
    s.backend_mut().records.clear();
    let pinned = s.current_history().unwrap();
    let mut future = s.backend().record(2).unwrap().unwrap();
    future.position = 3;
    s.backend_mut().records.insert(3, future);
    let page = h::all(&s);
    assert_eq!(page.items().len(), 2);
    assert_eq!(page.observed_head(), &pinned);
}
#[test]
fn partial_state_commit_is_refused_before_dispatchable_output() {
    let w = h::model::module();
    let m = behavior_core::admit(&w.to_string()).unwrap();
    let ep=behavior_verify::governance::trusted::EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let seed = vec![behavior_store::documents::SeedEntity {
        entity: "Order".into(),
        value: h::model::value(2, true),
    }];
    let mut s = Store::create(
        h::faults::FaultBackend::default(),
        &m,
        behavior_store::store::genesis_v2_for(&m, ep, seed).unwrap(),
    )
    .unwrap();
    let start = s.current_history().unwrap();
    let b = s
        .evaluate(
            &m,
            "submit",
            &std::collections::BTreeMap::from([("order".into(), "order-1".into())]),
            &json!({}),
            &json!({}),
            h::NOW,
            None,
        )
        .unwrap()
        .bundle
        .unwrap();
    s.commit(&m, &b.evaluated_state, &b).unwrap();
    assert_eq!(
        s.commands_since(&h::request(&start, None, 256))
            .unwrap()
            .items()
            .len(),
        1
    );
    let key = behavior_store::documents::EntityKey {
        entity: "Order".into(),
        id: "order-1".into(),
    };
    let old = s.backend().version(&key, 1).unwrap().unwrap();
    s.backend_mut().versions.insert(key, old);
    assert!(s.commands_since(&h::request(&start, None, 256)).is_err());
}
#[test]
fn migration_is_an_empty_whole_history_event() {
    let source = behavior_core::admit(include_str!(
        "../../../tests/fixtures/migration/modules/cultures_v1.json"
    ))
    .unwrap();
    let target = behavior_core::admit(include_str!(
        "../../../tests/fixtures/migration/modules/cultures_v2.json"
    ))
    .unwrap();
    let migration = behavior_core::migration::admit_migration(
        &source,
        &target,
        include_str!("../../../tests/fixtures/migration/valid/cultures_v1_to_v2.json"),
    )
    .unwrap();
    let ep=behavior_verify::governance::trusted::EvidencePolicyV2::from_json(r#"{"format":"behavior.evidence_policy.v2","require":"none","trusted_authorities":[],"execution_policies":[]}"#).unwrap();
    let mut s = Store::create(
        h::faults::FaultBackend::default(),
        &source,
        behavior_store::store::genesis_v2_for(&source, ep, vec![]).unwrap(),
    )
    .unwrap();
    let start = s.current_history().unwrap();
    s.migrate(&migration, &source, &target, h::NOW, None)
        .unwrap();
    let page = s.commands_since(&h::request(&start, None, 1)).unwrap();
    assert!(page.items().is_empty());
    assert_eq!(page.next_after().position, 1);
    assert!(page.complete());
}

#[test]
fn stream_schema_and_checked_decoder_agree_on_transport_shapes() {
    use std::io::Write;
    use std::process::{Command, Stdio};
    let m = h::module(true, true);
    let mut s = h::store(&m);
    let start = s.current_history().unwrap();
    h::commit(&m, &mut s, "same");
    let request = h::request(&start, None, 256);
    let page = s.commands_since(&request).unwrap();
    let docs = json!({"request":request.as_json(),"page":page.as_json(),"occurrence":page.items()[0].as_json()});
    let program = r#"
import copy,json,pathlib,sys
from jsonschema import Draft202012Validator
schema=json.loads(pathlib.Path('schema/command-stream-v1.schema.json').read_text());Draft202012Validator.check_schema(schema)
v=Draft202012Validator(schema);docs=json.load(sys.stdin)
for name,doc in docs.items():
 assert v.is_valid(doc),(name,list(v.iter_errors(doc)))
 changed=copy.deepcopy(doc);changed['unknown']=True;assert not v.is_valid(changed),name
 for field in doc:
  if name=='request' and field in ('through','max_records'):continue
  changed=copy.deepcopy(doc);changed.pop(field);assert not v.is_valid(changed),(name,field)
req=docs['request']
for field in ('through','max_records'):
 changed=copy.deepcopy(req);changed.pop(field);assert v.is_valid(changed),field
for limit in (0,1025,-1,1.5):
 changed=copy.deepcopy(req);changed['max_records']=limit;assert not v.is_valid(changed),limit
"#;
    let mut child = Command::new("python3")
        .args(["-c", program])
        .current_dir(std::path::Path::new(env!("CARGO_MANIFEST_DIR")).join("../.."))
        .stdin(Stdio::piped())
        .stdout(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .unwrap();
    child
        .stdin
        .take()
        .unwrap()
        .write_all(docs.to_string().as_bytes())
        .unwrap();
    let output = child.wait_with_output().unwrap();
    assert!(
        output.status.success(),
        "{}",
        String::from_utf8_lossy(&output.stderr)
    );
}
