// Fixture construction only: authoritative full Core oracle and untrusted tree builder.
// This is not K, a circuit, a certificate, or a latency benchmark.
use core_proof_feasibility033::{
    codec::{EntityKey, EntityValue},
    reference::{module_wire, recognize, TemplateConfig},
    tree::{MemoryNodes, Root, TreeKind},
};

fn hex(bytes: &[u8]) -> String {
    bytes.iter().map(|b| format!("{b:02x}")).collect()
}

fn main() {
    let config = TemplateConfig { limit: 2, ..TemplateConfig::default() };
    let wire = module_wire(&config).unwrap();
    let reference = recognize(&wire.to_string(), &config).unwrap();
    println!("{{\"kind\":\"module\",\"descriptor_sha256\":\"{}\",\"wire\":{}}}", hex(&reference.source_descriptor_sha256), wire);
    let mut store = MemoryNodes::default();
    let mut live = Root::empty(TreeKind::Live, &mut store).unwrap();
    let mut used = Root::empty(TreeKind::Used, &mut store).unwrap();
    let a = EntityKey::new("E", "a");
    let b = EntityKey::new("E", "b");
    live = live.put(&mut store, &a, Some(EntityValue::new(1, ""))).unwrap().after;
    used = used.put(&mut store, &a, None).unwrap().after;
    let a1 = r#"{"id":"a","x":1,"padding":""}"#;
    let a3 = r#"{"id":"a","x":3,"padding":""}"#;
    let b1 = r#"{"id":"b","x":1,"padding":""}"#;
    let cases = [
        ("create-b", "create", "{}".to_string(), r#"{"id":"b"}"#.to_string(), a1.to_string(), r#"[{"entity":"E","id":"b","used":false}]"#, "ALLOW"),
        ("set-a-3", "set", format!("{{\"e\":{a1}}}"), r#"{"value":3}"#.into(), format!("{a1},{b1}"), "[]", "ALLOW"),
        ("emit", "emit", "{}".into(), "{}".into(), format!("{a3},{b1}"), "[]", "ALLOW"),
        ("create-c-at-cap", "create", "{}".into(), r#"{"id":"c"}"#.into(), format!("{a3},{b1}"), r#"[{"entity":"E","id":"c","used":false}]"#, "DENY"),
        ("set-a-0", "set", format!("{{\"e\":{a3}}}"), r#"{"value":0}"#.into(), format!("{a3},{b1}"), "[]", "DENY"),
        ("reuse-b-at-cap", "create", "{}".into(), r#"{"id":"b"}"#.into(), format!("{a3},{b1}"), r#"[{"entity":"E","id":"b","used":true}]"#, "ENTITY_ID_ALREADY_USED"),
    ];
    for (index, (name, action, state, input, rows, identities, expected)) in cases.into_iter().enumerate() {
        let request = format!(r#"{{"action":"{action}","data_version":"screen-parent-{index}","state":{state},"input":{input},"context":{{}},"facts":{{"identities":{identities},"universe":[{{"entity":"E","members":[{rows}]}}]}}}}"#);
        let record = reference.evaluate_oracle(&request).unwrap();
        let before_live = hex(&live.summary.digest);
        let before_used = hex(&used.summary.digest);
        match name {
            "create-b" => {
                live = live.put(&mut store, &b, Some(EntityValue::new(1, ""))).unwrap().after;
                used = used.put(&mut store, &b, None).unwrap().after;
            }
            "set-a-3" => live = live.put(&mut store, &a, Some(EntityValue::new(3, ""))).unwrap().after,
            _ => {}
        }
        println!("{{\"kind\":\"case\",\"name\":\"{name}\",\"expected_verdict\":\"{expected}\",\"request\":{request},\"reference_decision\":{},\"before_live\":\"{before_live}\",\"before_used\":\"{before_used}\",\"after_live\":\"{}\",\"after_used\":\"{}\",\"count\":{}}}", record.to_json_string(), hex(&live.summary.digest), hex(&used.summary.digest), live.summary.count);
    }
}
