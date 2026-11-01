mod common;
use common::template::literal_module;
use core_proof_feasibility033::reference::{TemplateConfig, module_wire, recognize};
use std::{
    fs,
    path::{Path, PathBuf},
    process::Command,
};

type TestResult = Result<(), Box<dyn std::error::Error>>;

#[test]
fn genuine_closed_template_is_actually_admitted_and_recognized() -> TestResult {
    let literal = literal_module();
    assert!(behavior_core::admit(&literal.to_string()).is_ok());
    let recognized = recognize(&literal.to_string(), &TemplateConfig::default())?;
    assert_eq!(recognized.module.actions().len(), 3);
    assert_eq!(module_wire(&TemplateConfig::default())?, literal);
    let request=serde_json::json!({"action":"emit","data_version":"g0-snapshot","state":{},"input":{},"context":{},"facts":{"universe":[{"entity":"E","members":[]}]}}).to_string();
    let oracle = recognized.evaluate_oracle(&request)?;
    assert_eq!(
        oracle.as_json(),
        behavior_core::evaluate(&recognized.module, &request).as_json()
    );
    assert_eq!(oracle.as_json()["result"], "ALLOW");
    assert_eq!(oracle.command_intents().len(), 2);
    Ok(())
}

#[test]
fn weakened_predicate_changed_cap_extra_action_and_binding_are_rejected() {
    let original = literal_module();
    let mut weaker = original.clone();
    weaker["constraints"][0]["body"]["op"] = "ge".into();
    let mut cap = original.clone();
    cap["invariants"][0]["body"]["args"][1]["value"] = 1001.into();
    let mut extra = original.clone();
    let mut action = original["actions"][2].clone();
    action["name"] = "unexpected".into();
    extra["actions"].as_array_mut().map(|a| a.push(action));
    let mut binding = original.clone();
    binding["actions"][1]["params"][0]["name"] = "renamed".into();
    binding["actions"][1]["effects"][0]["value"]["param"] = "renamed".into();
    for changed in [weaker, cap, extra, binding] {
        assert!(
            behavior_core::admit(&changed.to_string()).is_ok(),
            "invalid control fixture: {changed}"
        );
        assert!(recognize(&changed.to_string(), &TemplateConfig::default()).is_err());
    }
}

#[test]
fn all_source_metadata_and_all_declarations_belong_to_the_subject() {
    let mut changed = literal_module();
    changed["entities"][0]["loc"]["line"] = 2.into();
    assert!(behavior_core::admit(&changed.to_string()).is_ok());
    assert!(recognize(&changed.to_string(), &TemplateConfig::default()).is_err());
    let mut missing = literal_module();
    missing["actions"].as_array_mut().map(|a| a.remove(2));
    assert!(recognize(&missing.to_string(), &TemplateConfig::default()).is_err());
    let mut wrong = TemplateConfig::default();
    wrong.format_version = "core033.template.future".into();
    assert!(recognize(&literal_module().to_string(), &wrong).is_err());
}

fn inventory(root: &Path, option: &str, out: &Path) -> std::io::Result<std::process::Output> {
    let script = PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("../../specs/033-core-proof-feasibility/benchmarks/inventory.py");
    Command::new("python3")
        .arg(script)
        .arg("--root")
        .arg(root)
        .arg(option)
        .arg(out)
        .output()
}

#[test]
fn source_scope_covers_nested_variants_and_every_frozen_surface_entry() -> TestResult {
    let fixture = common::Fixture::new()?;
    let root = PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("../..")
        .canonicalize()?;
    let out = fixture.0.join("scope.json");
    let run = inventory(&root, "--out", &out)?;
    assert!(run.status.success(), "{:?}", run);
    let scope = common::read_json(&out)?;
    let entries = scope["entries"].as_array().ok_or("missing inventory")?;
    for name in [
        "ExprKind::StrictUnwrap",
        "FoldOp::Unique",
        "QueryKind::Where",
        "SetOp::Difference",
        "CmpOp::Ge",
        "ArithOp::Div",
        "surface::store::Store",
    ] {
        assert!(entries.iter().any(|e| e["id"] == name), "missing {name}");
    }
    assert!(entries.iter().all(|e| e["status"] == "included"
        || e["deferred_reason"].as_str().is_some_and(|s| !s.is_empty())));
    Ok(())
}

#[test]
fn removing_constructor_or_public_operation_invalidates_frozen_coverage() -> TestResult {
    let fixture = common::Fixture::new()?;
    let root = PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .join("../..")
        .canonicalize()?;
    let expected = fixture.0.join("expected.json");
    assert!(inventory(&root, "--out", &expected)?.status.success());
    let scope = common::read_json(&expected)?;
    let copied = fixture.0.join("copied");
    for path in scope["source_files"]
        .as_object()
        .ok_or("missing source files")?
        .keys()
    {
        let target = copied.join(path);
        if let Some(p) = target.parent() {
            fs::create_dir_all(p)?;
        }
        fs::copy(root.join(path), target)?;
    }
    assert!(inventory(&copied, "--verify", &expected)?.status.success());
    for (path, from, to) in [
        (
            "crates/behavior-core/src/semantic/expr.rs",
            "    StrictUnwrap(Box<Expr>),",
            "",
        ),
        ("api/engine-surface.txt", "store::Store\n", ""),
    ] {
        let path = copied.join(path);
        let original = fs::read_to_string(&path)?;
        assert!(original.contains(from));
        fs::write(&path, original.replace(from, to))?;
        assert_eq!(
            inventory(&copied, "--verify", &expected)?.status.code(),
            Some(3)
        );
        fs::write(path, original)?;
    }
    Ok(())
}
