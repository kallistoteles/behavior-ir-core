#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Authored source contracts, independently checked before the Builder correction.
use behavior_core::builder::{Builder, SemanticProfile};
use behavior_core::semantic::module::{Module, ReadBody, ReadItem};
use behavior_core::wire::{Loc, WRead, WType};
use serde_json::json;

fn loc(file: &str, line: u64) -> Loc {
    Loc {
        file: file.into(),
        line,
    }
}
fn profiles() -> [SemanticProfile; 2] {
    [SemanticProfile::Legacy, SemanticProfile::CommandIntents]
}
fn body(item: &ReadItem) -> &behavior_core::semantic::expr::Expr {
    match item.body() {
        ReadBody::Value(e) => e,
        _ => panic!("expected scalar"),
    }
}
fn scalar(
    profile: SemanticProfile,
    top: &str,
    file: &str,
    root: Option<&str>,
) -> (Module, ReadItem) {
    let mut b = Builder::with_semantic_profile(profile);
    let n = b.lit(WType::Int, json!(42), loc(file, 17)).unwrap();
    b.add_read(Builder::read_value("probe", vec![], n, loc(top, 11)))
        .unwrap();
    let m = b.finish(root).unwrap();
    let mut a = Builder::for_module(&m);
    let n = a.lit(WType::Int, json!(42), loc(file, 17)).unwrap();
    let raw = Builder::read_value("probe", vec![], n, loc(top, 11));
    let item = a.admit_read(&raw).unwrap();
    (m, item)
}
fn check(item: &ReadItem, top: &str, file: &str) {
    assert_eq!((&item.loc().file, item.loc().line), (&top.to_string(), 11));
    assert_eq!(
        (&body(item).loc().file, body(item).loc().line),
        (&file.to_string(), 17)
    );
}
#[test]
fn mixed_markers_and_two_checkouts_share_useful_provenance() {
    for p in profiles() {
        for marker in ["<unknown>", "<string>", "<stdin>", "<__main__>"] {
            for prefix in ["/tree-a", "/tree-b"] {
                let (m, item) = scalar(p, &format!("{prefix}/pkg/model.py"), marker, None);
                check(m.read("probe").unwrap(), "model.py", marker);
                check(&item, "model.py", marker);
            }
        }
    }
}
#[test]
fn relative_spelling_is_verbatim_in_all_mixtures() {
    for p in profiles() {
        for file in [
            "pkg/model.py",
            "./pkg/model.py",
            "../shared/model.py",
            "pkg//model.py",
        ] {
            for top in [file, "<stdin>", "/tree-a/pkg/model.py"] {
                let (m, item) = scalar(p, top, file, None);
                let expected = if top.starts_with('/') {
                    "model.py"
                } else {
                    top
                };
                check(m.read("probe").unwrap(), expected, file);
                check(&item, expected, file);
            }
        }
    }
}
#[test]
fn explicit_root_never_rewrites_relative_filenames() {
    for p in profiles() {
        for root in ["pkg", "", "/tree-a"] {
            for file in [
                "pkg/model.py",
                "./pkg/model.py",
                "pkg//model.py",
                "../shared/model.py",
                "<string>",
            ] {
                let (m, _) = scalar(p, file, file, Some(root));
                check(m.read("probe").unwrap(), file, file);
            }
        }
    }
}
fn decimal_read(b: &mut Builder, top: &str, child: &str) -> WRead {
    let n = b
        .lit(WType::Decimal, json!("1.25"), loc(child, 23))
        .unwrap();
    let n = b.rescale(n, "Money", "half_even", loc(top, 17)).unwrap();
    Builder::read_value("scaled", vec![], n, loc(top, 11))
}
fn decimal_builder(p: SemanticProfile, file: &str) -> Builder {
    let mut b = Builder::with_semantic_profile(p);
    b.declare_nominal(
        "Money",
        WType::Decimal,
        vec!["scale".into()],
        Some(2),
        loc(file, 5),
    )
    .unwrap();
    b
}
fn check_rescale(item: &ReadItem, top: &str, child: &str) {
    assert_eq!(item.loc().file, top);
    assert_eq!(body(item).loc().file, top);
    match body(item).kind() {
        behavior_core::semantic::expr::ExprKind::Rescale { arg, .. } => {
            assert_eq!((&arg.loc().file, arg.loc().line), (&child.to_string(), 23))
        }
        _ => panic!("expected rescale"),
    }
}
#[test]
fn rescale_child_is_the_only_absolute_location() {
    for p in profiles() {
        let mut b = decimal_builder(p, "<string>");
        let raw = decimal_read(&mut b, "<string>", "/tree-a/lib/model.py");
        b.add_read(raw).unwrap();
        let m = b.finish(None).unwrap();
        check_rescale(m.read("scaled").unwrap(), "<string>", "model.py");
        let mut a = Builder::for_module(&m);
        let raw = decimal_read(&mut a, "<string>", "/tree-b/lib/model.py");
        check_rescale(&a.admit_read(&raw).unwrap(), "<string>", "model.py");
    }
}
#[test]
fn rescale_child_broadens_the_absolute_root() {
    for p in profiles() {
        let mut b = decimal_builder(p, "/tree-a/app/model.py");
        let raw = decimal_read(&mut b, "/tree-a/app/model.py", "/tree-a/lib/model.py");
        b.add_read(raw).unwrap();
        let m = b.finish(None).unwrap();
        check_rescale(m.read("scaled").unwrap(), "app/model.py", "lib/model.py");
        let mut a = Builder::for_module(&m);
        let raw = decimal_read(&mut a, "/tree-b/app/model.py", "/tree-b/lib/model.py");
        check_rescale(&a.admit_read(&raw).unwrap(), "app/model.py", "lib/model.py");
    }
}
#[test]
fn diagnostics_keep_source_lines_and_admission_phase() {
    for p in profiles() {
        for file in ["/tree-a/pkg/model.py", "<string>"] {
            let m = Builder::with_semantic_profile(p).finish(None).unwrap();
            let mut b = Builder::for_module(&m);
            let n = b.lit(WType::Int, json!(42), loc(file, 17)).unwrap();
            let mut raw = Builder::read_value("probe", vec![], n, loc("<stdin>", 11));
            // Well-typed Node, then deliberately malformed public wire read at admission.
            if let behavior_core::wire::WReadBody::Value(e) = &mut raw.body {
                e.kind = behavior_core::wire::WExprKind::Param("missing".into());
            }
            let errors = b.admit_read(&raw).unwrap_err().errors;
            assert_eq!(errors.len(), 1);
            assert_eq!(errors[0].code, "UNKNOWN_PARAM");
            let at = errors[0].loc.as_ref().unwrap();
            assert_eq!(
                (&at.file, at.line),
                (
                    &if file.starts_with('/') {
                        "model.py".to_string()
                    } else {
                        file.to_string()
                    },
                    17
                )
            );
            let wrong = b.lit(WType::Bool, json!(true), loc(file, 17)).unwrap();
            assert!(
                b.op("add", vec![wrong.clone(), wrong], loc(file, 17))
                    .is_err(),
                "must refuse at Node construction"
            );
        }
    }
}
#[test]
fn nested_lambda_query_body_and_unary_metadata_are_all_visited() {
    for p in profiles() {
        let mut b = Builder::with_semantic_profile(p);
        b.declare_entity("Doc", vec![], loc("<unknown>", 3))
            .unwrap();
        let query = b.select("Doc", loc("/tree-a/query/select.py", 23)).unwrap();
        b.push_lambda("d", "Doc").unwrap();
        let yes = b
            .lit(WType::Bool, json!(true), loc("/tree-a/body/value.py", 29))
            .unwrap();
        let no = b.op("not", vec![yes], loc("./pkg//neg.py", 31)).unwrap();
        b.pop_scope();
        let any = b
            .lambda("any", query, "d", no, loc("<string>", 17))
            .unwrap();
        let raw = Builder::read_value("nested", vec![], any, loc("<stdin>", 11));
        b.add_read(raw.clone()).unwrap();
        let m = b.finish(None).unwrap();
        let mut a = Builder::for_module(&m);
        let item = a.admit_read(&raw).unwrap();
        for item in [m.read("nested").unwrap(), &item] {
            let doc = behavior_core::serialize::read_document(item);
            let v = &doc["read"]["body"]["value"];
            assert_eq!(
                v["args"][0]["loc"],
                json!({"file":"query/select.py","line":23})
            );
            assert_eq!(v["body"]["loc"], json!({"file":"./pkg//neg.py","line":31}));
            assert_eq!(
                v["body"]["args"][0]["loc"],
                json!({"file":"body/value.py","line":29})
            );
        }
    }
}
fn empty_request() -> String {
    json!({"data_version":"source:1","state":{},"input":{},"context":{},"facts":{"universe":[]}})
        .to_string()
}
#[test]
fn construction_provenance_preserves_semantics_but_real_mutation_changes_them() {
    for p in profiles() {
        let (a, ar) = scalar(p, "/tree-a/pkg/model.py", "<string>", None);
        let (b, br) = scalar(p, "pkg/model.py", "./pkg//value.py", None);
        assert_ne!(
            behavior_core::serialize::to_wire_json(&a),
            behavior_core::serialize::to_wire_json(&b)
        );
        assert_eq!(a.behavior_version(), b.behavior_version());
        assert_eq!(a.name_table(), b.name_table());
        assert_eq!(ar.hash(), br.hash());
        assert_eq!(body(&ar).hash(), body(&br).hash());
        let mut c = Builder::with_semantic_profile(p);
        let n = c
            .lit(WType::Int, json!(43), loc("pkg/model.py", 99))
            .unwrap();
        c.add_read(Builder::read_value("probe", vec![], n, loc("<string>", 87)))
            .unwrap();
        let c = c.finish(None).unwrap();
        assert_ne!(a.behavior_version(), c.behavior_version());
        assert_ne!(
            a.read("probe").unwrap().hash(),
            c.read("probe").unwrap().hash()
        );
        assert_ne!(
            body(a.read("probe").unwrap()).hash(),
            body(c.read("probe").unwrap()).hash()
        );
        for (m, expected) in [(&a, 42), (&b, 42), (&c, 43)] {
            let record = behavior_core::read::evaluate_read(
                m,
                &behavior_core::read::ReadSource::Declared("probe".into()),
                &empty_request(),
            )
            .record;
            assert_eq!(record.result(), "VALUE");
            assert_eq!(record.as_json()["value"], expected);
        }
    }
}
#[test]
fn fresh_ad_hoc_record_changes_only_in_profile_authoritative_provenance() {
    use behavior_core::read::{ReadSource, evaluate_read};
    for p in profiles() {
        let (m, item) = scalar(p, "/tree-a/pkg/model.py", "<string>", None);
        let mut old = behavior_core::serialize::read_document(&item);
        // Reviewed baseline output: mixed marker previously left tree-a/pkg/model.py.
        old["read"]["loc"]["file"] = json!("tree-a/pkg/model.py");
        let old = behavior_core::read::admit_read(&m, &old.to_string()).unwrap();
        assert_eq!(old.hash(), item.hash());
        assert_ne!(old.loc().file, item.loc().file);
        let fresh = evaluate_read(&m, &ReadSource::AdHoc(Box::new(item)), &empty_request()).record;
        let historical_shape =
            evaluate_read(&m, &ReadSource::AdHoc(Box::new(old)), &empty_request()).record;
        assert_eq!(fresh.as_json()["value"], 42);
        assert_eq!(historical_shape.as_json()["value"], 42);
        if p == SemanticProfile::Legacy {
            assert_ne!(fresh.record_id(), historical_shape.record_id());
            assert_eq!(
                fresh.as_json()["read"]["definition"]["read"]["loc"]["file"],
                "model.py"
            );
            assert_eq!(
                historical_shape.as_json()["read"]["definition"]["read"]["loc"]["file"],
                "tree-a/pkg/model.py"
            );
            let mut x = fresh.as_json().clone();
            let mut y = historical_shape.as_json().clone();
            for v in [&mut x, &mut y] {
                v.as_object_mut().unwrap().remove("record_id");
                v["read"].as_object_mut().unwrap().remove("definition");
            }
            assert_eq!(x, y);
        } else {
            assert_eq!(fresh.to_json_string(), historical_shape.to_json_string());
            assert_eq!(fresh.record_id(), historical_shape.record_id());
        }
    }
}
fn failing_read(b: &mut Builder, file: &str) -> WRead {
    let x = b.lit(WType::Int, json!(1), loc("<stdin>", 11)).unwrap();
    let y = b.lit(WType::Int, json!(0), loc("<stdin>", 11)).unwrap();
    let n = b.op("div", vec![x, y], loc(file, 17)).unwrap();
    Builder::read_value("fail", vec![], n, loc("<stdin>", 11))
}
fn failing_module(p: SemanticProfile, file: &str) -> Module {
    let mut b = Builder::with_semantic_profile(p);
    let raw = failing_read(&mut b, file);
    b.add_read(raw).unwrap();
    b.finish(None).unwrap()
}
#[test]
fn declared_success_and_failure_have_distinct_profile_identity_contracts() {
    use behavior_core::read::{ReadSource, evaluate_read};
    for p in profiles() {
        let (a, _) = scalar(p, "pkg/model.py", "pkg/model.py", None);
        let (b, _) = scalar(p, "model.py", "model.py", None);
        let x = evaluate_read(&a, &ReadSource::Declared("probe".into()), &empty_request()).record;
        let y = evaluate_read(&b, &ReadSource::Declared("probe".into()), &empty_request()).record;
        assert_eq!(x.to_json_string(), y.to_json_string());
        assert!(x.as_json()["read"].get("definition").is_none());
        let a = failing_module(p, "pkg/model.py");
        let b = failing_module(p, "model.py");
        assert_eq!(a.behavior_version(), b.behavior_version());
        for ad_hoc in [false, true] {
            let source = |m: &Module, file: &str| {
                if ad_hoc {
                    let mut b = Builder::for_module(m);
                    let raw = failing_read(&mut b, file);
                    ReadSource::AdHoc(Box::new(b.admit_read(&raw).unwrap()))
                } else {
                    ReadSource::Declared("fail".into())
                }
            };
            let x = evaluate_read(&a, &source(&a, "pkg/model.py"), &empty_request()).record;
            let y = evaluate_read(&b, &source(&b, "model.py"), &empty_request()).record;
            assert_eq!(x.result(), "EVALUATION_ERROR");
            assert_eq!(y.result(), x.result());
            assert_eq!(x.as_json()["read"].get("definition").is_some(), ad_hoc);
            if p == SemanticProfile::Legacy {
                assert_ne!(x.record_id(), y.record_id());
            } else {
                assert_eq!(x.to_json_string(), y.to_json_string());
                assert_ne!(x.diagnostics(), y.diagnostics());
            }
        }
    }
}
#[test]
fn absolute_controls_root_slash_and_explicit_boundary() {
    for p in profiles() {
        for (top, file, expected_top, expected_file) in [
            (
                "/repo/app/model.py",
                "/repo/lib/model.py",
                "app/model.py",
                "lib/model.py",
            ),
            (
                "/repo/lib/model.py",
                "/repo/app/model.py",
                "lib/model.py",
                "app/model.py",
            ),
            (
                "/repo/app/model.py",
                "/repo/app/model.py",
                "model.py",
                "model.py",
            ),
            ("/", "/", "", ""),
            ("<stdin>", "<string>", "<stdin>", "<string>"),
        ] {
            let (m, item) = scalar(p, top, file, None);
            check(m.read("probe").unwrap(), expected_top, expected_file);
            check(&item, expected_top, expected_file);
        }
        let (m, _) = scalar(p, "/repo/app/model.py", "pkg//value.py", Some("/repo"));
        check(m.read("probe").unwrap(), "app/model.py", "pkg//value.py");
        let (m, _) = scalar(p, "/repo/app/model.py", "<string>", Some("pkg"));
        check(m.read("probe").unwrap(), "repo/app/model.py", "<string>");
    }
}
#[test]
fn discarded_nodes_and_module_locations_do_not_broaden_an_ad_hoc_root() {
    for p in profiles() {
        let mut b = Builder::with_semantic_profile(p);
        let _unused = b
            .lit(WType::Int, json!(999), loc("/unrelated/discarded.py", 99))
            .unwrap();
        let n = b
            .lit(WType::Int, json!(42), loc("/repo/pkg/model.py", 17))
            .unwrap();
        b.add_read(Builder::read_value(
            "probe",
            vec![],
            n,
            loc("/repo/pkg/model.py", 11),
        ))
        .unwrap();
        let m = b.finish(None).unwrap();
        check(m.read("probe").unwrap(), "model.py", "model.py");
        let mut a = Builder::for_module(&m);
        let _unused = a
            .lit(WType::Int, json!(999), loc("/another/unrelated.py", 99))
            .unwrap();
        let n = a
            .lit(WType::Int, json!(42), loc("/relocated/pkg/model.py", 17))
            .unwrap();
        let item = a
            .admit_read(&Builder::read_value(
                "probe",
                vec![],
                n,
                loc("/relocated/pkg/model.py", 11),
            ))
            .unwrap();
        check(&item, "model.py", "model.py");
    }
}
#[test]
fn path_like_domain_strings_are_preserved_and_do_not_select_roots() {
    for p in profiles() {
        for value in [
            "/private/secret.py",
            "./pkg//model.py",
            r#"{"loc":{"file":"/private/literal.py","line":999}}"#,
        ] {
            let mut b = Builder::with_semantic_profile(p);
            let n = b
                .lit(WType::String, json!(value), loc("<string>", 17))
                .unwrap();
            let raw = Builder::read_value("text", vec![], n, loc("pkg/model.py", 11));
            b.add_read(raw.clone()).unwrap();
            let m = b.finish(None).unwrap();
            let mut a = Builder::for_module(&m);
            let item = a.admit_read(&raw).unwrap();
            for item in [m.read("text").unwrap(), &item] {
                assert_eq!(item.loc().file, "pkg/model.py");
                assert_eq!(body(item).loc().file, "<string>");
                assert_eq!(
                    behavior_core::serialize::read_document(item)["read"]["body"]["value"]["value"],
                    value
                );
            }
        }
    }
}
#[test]
fn source_policy_environment_child() {
    if std::env::var_os("CORE027_ENV_CHILD").is_none() {
        return;
    }
    for p in profiles() {
        let (m, item) = scalar(
            p,
            "/core027-nonexistent-world/pkg/model.py",
            "./pkg//relative.py",
            None,
        );
        check(m.read("probe").unwrap(), "model.py", "./pkg//relative.py");
        check(&item, "model.py", "./pkg//relative.py");
    }
}
#[test]
fn normalization_is_independent_of_child_process_working_directory() {
    for cwd in ["/", "/dev/shm"] {
        let result = std::process::Command::new(std::env::current_exe().unwrap())
            .current_dir(cwd)
            .env("CORE027_ENV_CHILD", "1")
            .args(["--exact", "source_policy_environment_child", "--nocapture"])
            .output()
            .unwrap();
        assert!(
            result.status.success(),
            "cwd={cwd}: {} {}",
            String::from_utf8_lossy(&result.stdout),
            String::from_utf8_lossy(&result.stderr)
        );
        assert!(String::from_utf8_lossy(&result.stdout).contains("1 passed"));
    }
}
