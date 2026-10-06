#![allow(clippy::unwrap_used, clippy::expect_used)]
//! Shared, store-free governance CLI: genuine artifacts, explicit keys and atomic outputs.
use serde_json::{Value, json};
use std::path::{Path, PathBuf};
use std::process::{Command, Output};
use std::sync::atomic::{AtomicUsize, Ordering};
static NEXT: AtomicUsize = AtomicUsize::new(0);
fn fixtures() -> PathBuf {
    Path::new(env!("CARGO_MANIFEST_DIR")).join("../../tests/fixtures")
}
fn raw(path: &Path) -> Value {
    serde_json::from_str(&std::fs::read_to_string(path).unwrap()).unwrap()
}
fn path(s: &str) -> String {
    fixtures().join(s).to_str().unwrap().into()
}
struct Scratch(PathBuf);
impl Scratch {
    fn new() -> Self {
        let p = std::env::temp_dir().join(format!(
            "013-governance-cli-{}-{}",
            std::process::id(),
            NEXT.fetch_add(1, Ordering::Relaxed)
        ));
        assert!(!p.exists());
        std::fs::create_dir(&p).unwrap();
        Self(p)
    }
    fn file(&self, name: &str) -> String {
        self.0.join(name).to_str().unwrap().into()
    }
    fn write(&self, name: &str, text: &str) -> String {
        let p = self.file(name);
        std::fs::write(&p, text).unwrap();
        p
    }
}
impl Drop for Scratch {
    fn drop(&mut self) {
        std::fs::remove_dir_all(&self.0).unwrap();
    }
}
fn run(args: &[String], solver: Option<&str>) -> Output {
    let mut c = Command::new(env!("CARGO_BIN_EXE_behavior"));
    c.args(args);
    if let Some(s) = solver {
        c.env("BEHAVIOR_Z3", s);
    }
    c.output().unwrap()
}
fn code(o: &Output) -> i32 {
    o.status.code().unwrap_or(-1)
}
fn verify_args(s: &Scratch, profile: &str) -> Vec<String> {
    vec![
        "governance".into(),
        "verify".into(),
        path("soundness/module.json"),
        "--profile".into(),
        profile.into(),
        "--seed".into(),
        path("governance-v2/verifier.seed"),
        "--out".into(),
        s.file("envelope.json"),
    ]
}
fn candidate(s: &Scratch) -> String {
    let wire = std::fs::read_to_string(fixtures().join("verify/purchase_fixed.json")).unwrap();
    let m = behavior_engine::admit(&wire).unwrap();
    let req = std::fs::read_to_string(fixtures().join("governance/approve_request.json")).unwrap();
    let record = behavior_engine::evaluate(&m, &req).as_json().clone();
    assert_eq!(record["result"], "ALLOW");
    let h = format!("sha256:{}", "ab".repeat(32));
    let state = format!("sha256:{}", "cd".repeat(32));
    let content = json!({"kind":"action","store":h,"evaluated_history":{"format":"behavior.history_ref.v1","store":h,"state":state,"position":0,"record":h},
        "behavior_version":m.behavior_version(),"record":record,"entity_declarations":{},"read_set":[],"read_facts":{},"write_set":[],"write_lifecycle":[]});
    let v = json!({"format":"behavior.governance_candidate.v2","transition_hash":behavior_engine::canonical::tagged_hash("behavior.candidate_transition.v2",&content).unwrap(),"content":content});
    s.write("candidate.json", &v.to_string())
}
fn authorize_args(s: &Scratch, require_proof: bool) -> Vec<String> {
    let p = raw(&fixtures().join(if require_proof {
        "governance-v2/policy-verifier-0.8.json"
    } else {
        "governance-v2/policy-none.json"
    }));
    let mut ep = raw(&fixtures().join("governance-v2/evidence-policy.json"));
    ep["execution_policies"] =
        json!([behavior_engine::canonical::tagged_hash("behavior.policy.v2", &p).unwrap()]);
    let p = s.write("policy.json", &p.to_string());
    let ep = s.write("ep.json", &ep.to_string());
    vec![
        "governance".into(),
        "authorize".into(),
        candidate(s),
        "--wire".into(),
        path("verify/purchase_fixed.json"),
        "--policy".into(),
        p,
        "--evidence-policy".into(),
        ep,
        "--seed".into(),
        path("governance-v2/authorizer.seed"),
        "--context".into(),
        path(if require_proof {
            "governance-v2/context.json"
        } else {
            "governance-v2/context-unbound.json"
        }),
        "--now".into(),
        "2026-10-05T12:00:00Z".into(),
        "--out".into(),
        s.file("evidence.json"),
    ]
}
fn replace(args: &mut [String], option: &str, value: &str) {
    let i = args.iter().position(|s| s == option).unwrap();
    args[i + 1] = value.into();
}
fn no_seed_disclosure(o: &Output) {
    let seed = std::fs::read_to_string(fixtures().join("governance-v2/authorizer.seed")).unwrap();
    for text in [&o.stdout, &o.stderr] {
        assert!(!String::from_utf8_lossy(text).contains(seed.trim()));
    }
}

#[test]
fn fresh_verified_envelope_has_exit_zero_exact_output_and_detached_diagnostics() {
    let s = Scratch::new();
    let mut args = verify_args(&s, &path("governance-v2/profile.json"));
    let mut wire = raw(&fixtures().join("soundness/module.json"));
    wire["ir_version"] = json!("0.8");
    wire["commands"] = json!([]);
    for action in wire["actions"].as_array_mut().unwrap() {
        action["command_effects"] = json!([]);
    }
    args[2] = s.write("valid-current-module.json", &wire.to_string());
    args.extend(["--diagnostics".into(), s.file("diagnostics.json")]);
    let o = run(&args, None);
    assert_eq!(code(&o), 0, "{}", String::from_utf8_lossy(&o.stderr));
    let e = raw(Path::new(&s.file("envelope.json")));
    assert_eq!(e["format"], "behavior.verification_envelope.v2");
    assert_eq!(e["report"]["result"], "verified");
    assert_eq!(std::fs::read(s.file("envelope.json")).unwrap(), o.stdout);
    assert!(raw(Path::new(&s.file("diagnostics.json"))).is_object());
    for k in ["loc", "cached", "expr_text"] {
        assert!(!e.to_string().contains(&format!("\"{k}\"")));
    }
    no_seed_disclosure(&o);
}

#[test]
fn authorize_signs_allow_but_missing_required_proof_signs_refusal_and_exits_one() {
    for (proof, exit, decision) in [(false, 0, "allow"), (true, 1, "refuse")] {
        let s = Scratch::new();
        let o = run(&authorize_args(&s, proof), None);
        assert_eq!(code(&o), exit, "{}", String::from_utf8_lossy(&o.stderr));
        let e = raw(Path::new(&s.file("evidence.json")));
        assert_eq!(e["format"], "behavior.evidence.v2");
        assert_eq!(e["authorization"]["content"]["decision"], decision);
        assert_eq!(
            e["authorization"]["content"]["context"]["policy_time"],
            "2026-10-05T12:00:00Z"
        );
        no_seed_disclosure(&o);
    }
}

#[test]
fn full_context_now_equality_real_dates_and_typed_fields_are_checked_before_output() {
    for mutation in [
        "now_mismatch",
        "invalid_calendar",
        "missing_context_field",
        "extra_context_field",
        "wrong_typed_product",
    ] {
        let s = Scratch::new();
        let mut args = authorize_args(&s, true);
        let mut q = raw(&fixtures().join("governance-v2/context.json"));
        match mutation {
            "now_mismatch" => replace(&mut args, "--now", "2026-10-05T12:00:01Z"),
            "invalid_calendar" => {
                q["policy_time"] = json!("2026-02-29T12:00:00Z");
                replace(&mut args, "--now", "2026-02-29T12:00:00Z");
            }
            "missing_context_field" => {
                q.as_object_mut().unwrap().remove("required_context");
            }
            "extra_context_field" => q["external_approval"] = json!(true),
            "wrong_typed_product" => q["required_context"]["approved"] = json!("true"),
            _ => unreachable!(),
        }
        replace(&mut args, "--context", &s.write("q.json", &q.to_string()));
        s.write("evidence.json", "existing artifact\n");
        let o = run(&args, None);
        assert_eq!(
            code(&o),
            2,
            "{mutation}: {}",
            String::from_utf8_lossy(&o.stderr)
        );
        assert_eq!(
            std::fs::read_to_string(s.file("evidence.json")).unwrap(),
            "existing artifact\n"
        );
        no_seed_disclosure(&o);
    }
}

#[test]
fn subjects_keys_and_cache_options_are_explicit_and_mutually_exclusive() {
    let s = Scratch::new();
    let mut args = authorize_args(&s, false);
    args.extend([
        "--source".into(),
        path("verify/purchase_fixed.json"),
        "--target".into(),
        path("verify/purchase_fixed.json"),
        "--migration".into(),
        path("verify/purchase_fixed.json"),
    ]);
    assert_eq!(code(&run(&args, None)), 64);
    assert!(!Path::new(&s.file("evidence.json")).exists());
    let mut verify = verify_args(&s, &path("governance-v2/profile.json"));
    verify.extend(["--cache".into(), s.file("poisoned-cache")]);
    assert_eq!(code(&run(&verify, None)), 64);
    let mut missing = verify_args(&s, &path("governance-v2/profile.json"));
    replace(&mut missing, "--seed", &s.file("missing.seed"));
    assert_eq!(code(&run(&missing, None)), 64);
    let mut wrong = authorize_args(&s, false);
    replace(&mut wrong, "--seed", &path("governance-v2/verifier.seed"));
    let o = run(&wrong, None);
    assert_eq!(code(&o), 2);
    no_seed_disclosure(&o);
}

#[test]
fn malformed_duplicate_profile_and_wrong_candidate_subject_are_not_evaluation_evidence() {
    let s = Scratch::new();
    let raw_profile =
        std::fs::read_to_string(fixtures().join("governance-v2/profile.json")).unwrap();
    let duplicate = format!("{{\"rlimit\":1,{}", &raw_profile[1..]);
    let p = s.write("duplicate-profile.json", &duplicate);
    let o = run(&verify_args(&s, &p), None);
    assert_eq!(code(&o), 2);
    assert!(!Path::new(&s.file("envelope.json")).exists());
    let mut args = authorize_args(&s, false);
    replace(&mut args, "--wire", &path("verify/purchase.json"));
    let o = run(&args, None);
    assert_eq!(code(&o), 2);
    assert!(!Path::new(&s.file("evidence.json")).exists());
}

#[test]
fn deterministic_resource_exhaustion_has_exit_one_and_authenticated_inconclusive() {
    let s = Scratch::new();
    let mut p = raw(&fixtures().join("governance-v2/profile.json"));
    p["rlimit"] = json!(1);
    p.as_object_mut().unwrap().remove("hash");
    p["hash"] = json!(behavior_engine::canonical::tagged_hash("behavior.profile.v1", &p).unwrap());
    let p = s.write("small-profile.json", &p.to_string());
    let o = run(&verify_args(&s, &p), None);
    assert_eq!(code(&o), 1);
    let e = raw(Path::new(&s.file("envelope.json")));
    assert_eq!(e["report"]["result"], "not_verified");
    assert!(
        e["report"]["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["outcome"] == "inconclusive" && c["reason"] == "resource_limit")
    );
    assert!(e["signature"]["signature"].as_str().is_some());
}

#[test]
fn timeout_and_nonreproducible_completed_prefix_preserve_existing_out_and_emit_no_envelope() {
    use std::os::unix::fs::PermissionsExt;
    for mode in ["timeout", "transport", "prefix_timeout", "prefix_transport"] {
        let s = Scratch::new();
        let counter = s.file("counter");
        let mode_text = mode.to_string();
        let source = format!(
            "#!/usr/bin/env python3\nimport sys,time,pathlib\nif '--version' in sys.argv:\n print('Z3 version 4.16.0 - 64 bit');sys.exit(0)\nsys.stdin.read()\np=pathlib.Path({counter:?})\nn=int(p.read_text()) if p.exists() else 0\np.write_text(str(n+1))\nmode={mode_text:?}\nif mode.startswith('prefix_') and n==0:\n print('unsat');print('(:reason-unknown '+chr(34)+chr(34)+')');sys.exit(0)\nif 'timeout' in mode:time.sleep(0.5)\nelse:print('not a solver answer')\n"
        );
        let solver = s.write("solver.py", &source);
        std::fs::set_permissions(&solver, std::fs::Permissions::from_mode(0o755)).unwrap();
        let mut p = raw(&fixtures().join("governance-v2/profile.json"));
        p["wall_clock_guard_ms"] = json!(100);
        p.as_object_mut().unwrap().remove("hash");
        p["hash"] =
            json!(behavior_engine::canonical::tagged_hash("behavior.profile.v1", &p).unwrap());
        let p = s.write("guard-profile.json", &p.to_string());
        s.write("envelope.json", "previous complete artifact\n");
        let o = run(&verify_args(&s, &p), Some(&solver));
        assert_eq!(
            code(&o),
            3,
            "{mode}: {}",
            String::from_utf8_lossy(&o.stderr)
        );
        let count: usize = std::fs::read_to_string(counter).unwrap().parse().unwrap();
        assert!(count >= if mode.starts_with("prefix_") { 2 } else { 1 });
        assert_eq!(
            std::fs::read_to_string(s.file("envelope.json")).unwrap(),
            "previous complete artifact\n"
        );
        assert!(!String::from_utf8_lossy(&o.stdout).contains("behavior.verification_envelope.v2"));
        no_seed_disclosure(&o);
    }
}

#[test]
fn verify_migration_archives_the_exact_source_target_behavior_pair() {
    let s = Scratch::new();
    let source = path("soundness/migration-source-a.json");
    let target = path("soundness/migration-target.json");
    let a = behavior_engine::admit(&std::fs::read_to_string(&source).unwrap()).unwrap();
    let b = behavior_engine::admit(&std::fs::read_to_string(&target).unwrap()).unwrap();
    let l = json!({"file":"cli-migration.dsl","line":1});
    let doc = json!({"migration_ir":"0.1","name":"add_z","source":behavior_engine::schema(&a).hash,"target":behavior_engine::schema(&b).hash,
        "constants":[],"requirements":[],"transforms":[{"entity":"E","fields":{"z":{"op":"derived","name":"calc","args":["old"],"loc":l}},"drops":[]}],"retire":[]});
    let migration = s.write("migration.json", &doc.to_string());
    let out = s.file("migration-envelope.json");
    let args = vec![
        "governance".into(),
        "verify-migration".into(),
        source,
        target,
        migration,
        "--profile".into(),
        path("governance-v2/profile.json"),
        "--seed".into(),
        path("governance-v2/verifier.seed"),
        "--out".into(),
        out.clone(),
    ];
    let o = run(&args, None);
    assert_eq!(code(&o), 0, "{}", String::from_utf8_lossy(&o.stderr));
    let e = raw(Path::new(&out));
    assert_eq!(
        e["content"]["subject"]["source_behavior"],
        a.behavior_version()
    );
    assert_eq!(
        e["content"]["subject"]["target_behavior"],
        b.behavior_version()
    );
    assert_eq!(e["report"]["result"], "verified");
}
