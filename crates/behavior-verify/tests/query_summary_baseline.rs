#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/query_summary.rs"]
mod support;

#[test]
fn concrete_negative_expectations_match_authoritative_evaluation() {
    let actual=support::runtime_ledger();
    if let Ok(path)=std::env::var("CORE028_CAPTURE_NEGATIVE_BASELINE") {
        assert_eq!(behavior_verify::VERIFIER_VERSION,"0.9.0");
        let mut document=actual;
        document["baseline_source"]=serde_json::json!("855f4db4d6da3327c80117191d5719e6bc6b6397");
        document["baseline_verifier"]=serde_json::json!("0.9.0");
        std::fs::write(path,serde_json::to_string_pretty(&document).unwrap()+"\n").unwrap();
    } else {
        let expected=support::frozen("negative-baseline.json");
        assert_eq!(actual["cases"],expected["cases"],"runtime semantics or a pre-correction fixture changed");
    }
}

#[test]
fn missing_guard_controls_retain_confirmed_runtime_postcondition_failures() {
    let mut documents=Vec::new();
    for (name,wire,expected) in [
        ("minimal",support::frozen("minimal-missing-guard-control.json"),1),
        ("original",support::without_original_freshness(),2),
    ] {
        let report=support::verify(&wire,&support::post_profile());
        assert_eq!(support::confirm_witnesses(&support::admit(&wire),&report),expected);
        documents.push(serde_json::json!({"case":name,"module":wire,"report":report.value}));
    }
    if let Ok(path)=std::env::var("CORE028_CAPTURE_NEGATIVE_BASELINE") {
        assert_eq!(behavior_verify::VERIFIER_VERSION,"0.9.0");
        let out=std::path::Path::new(&path).with_file_name("missing-guard-baseline.json");
        std::fs::write(out,serde_json::to_string_pretty(&serde_json::json!({"source":"855f4db4d6da3327c80117191d5719e6bc6b6397","controls":documents})).unwrap()+"\n").unwrap();
    }
}
