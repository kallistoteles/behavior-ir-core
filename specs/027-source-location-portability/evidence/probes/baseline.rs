use behavior_engine::builder::{Builder, SemanticProfile};
use behavior_engine::read::{ReadSource, evaluate_read, replay_read};
use behavior_engine::wire::{Loc, WType};
use serde_json::{Value, json};

fn loc(file: &str, line: u64) -> Loc { Loc { file: file.into(), line } }
fn main() {
    let mut rows = Vec::new();
    for (profile, p) in [(SemanticProfile::Legacy, "legacy"), (SemanticProfile::CommandIntents, "current")] {
        let mut cases = vec![
            ("absolute_only".to_string(), "/tree-a/pkg/model.py".to_string(), "/tree-a/pkg/model.py".to_string(), "model.py".to_string(), "model.py".to_string()),
            ("relative_only".into(), "pkg/model.py".into(), "pkg/model.py".into(), "pkg/model.py".into(), "pkg/model.py".into()),
            ("mixed_relative".into(), "/tree-a/pkg/model.py".into(), "pkg/helper.py".into(), "model.py".into(), "pkg/helper.py".into()),
            ("marker_only".into(), "<stdin>".into(), "<string>".into(), "<stdin>".into(), "<string>".into()),
        ];
        for path in ["./pkg/model.py", "../shared/model.py", "pkg//model.py"] {
            cases.push((format!("relative_spelling:{path}"), path.into(), path.into(), path.into(), path.into()));
        }
        for marker in ["<unknown>", "<string>", "<stdin>", "<__main__>"] {
            for tree in ["tree-a", "tree-b"] {
                cases.push((format!("mixed_marker:{marker}:{tree}"), format!("/{tree}/pkg/model.py"), marker.into(), "model.py".into(), marker.into()));
            }
        }
        for (case, top, body, expected_top, expected_body) in cases {
            let mut b = Builder::with_semantic_profile(profile);
            let n = b.lit(WType::Int, json!(42), loc(&body, 17)).unwrap();
            b.add_read(Builder::read_value("probe", vec![], n, loc(&top, 11))).unwrap();
            let m = b.finish(None).unwrap();
            let wire: Value = serde_json::from_str(&behavior_engine::serialize::to_wire_json(&m)).unwrap();
            let actual_top = wire["reads"][0]["loc"]["file"].as_str().unwrap();
            let actual_body = wire["reads"][0]["body"]["value"]["loc"]["file"].as_str().unwrap();
            let base = Builder::with_semantic_profile(profile).finish(None).unwrap();
            let mut a = Builder::for_module(&base);
            let n = a.lit(WType::Int, json!(42), loc(&body, 17)).unwrap();
            let raw = Builder::read_value("probe", vec![], n, loc(&top, 11));
            let item = a.admit_read(&raw).unwrap();
            let admitted_top = item.loc().file.clone();
            let read_hash = behavior_engine::semantic::types::hash_display(item.hash());
            let request = json!({"data_version":"probe:1", "state":{}, "input":{}, "context":{}, "facts":{"universe":[]}}).to_string();
            let record = evaluate_read(&base, &ReadSource::AdHoc(Box::new(item)), &request).record;
            let replay = replay_read(&base, &record.to_json_string());
            assert_eq!(record.result(), "VALUE");
            assert!(replay.matches);
            rows.push(json!({"profile":p,"case":case,"input":{"top":top,"body":body},"expected":{"top":expected_top,"body":expected_body},"module_wire":wire,"module_provenance_matches":actual_top==expected_top && actual_body==expected_body,"ad_hoc_top":admitted_top,"ad_hoc_top_matches":admitted_top==expected_top,"read_hash":read_hash,"record":record.as_json(),"replay_matches":replay.matches}));
        }
    }
    let failures: Vec<_> = rows.iter().filter(|r| r["module_provenance_matches"]!=true || r["ad_hoc_top_matches"]!=true).map(|r|json!({"profile":r["profile"],"case":r["case"]})).collect();
    println!("{}",json!({"rows":rows,"contract_failures":failures}));
    if !failures.is_empty() { std::process::exit(1); }
}
