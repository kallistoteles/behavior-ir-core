#![allow(clippy::unwrap_used, clippy::expect_used)]
#[path = "support/ref_removals.rs"]
mod model;

macro_rules! positive {
    ($name:ident, $pattern:literal, $version:literal) => {
        #[test]
        fn $name() {
            let m = model::module($pattern, $version);
            model::assert_reference_proven(&model::report(&m));
        }
    };
}
positive!(guarded_07_has_real_reference_proof, "guarded", "0.7");
positive!(guarded_08_has_real_reference_proof, "guarded", "0.8");
positive!(joint_07_has_real_reference_proof, "joint", "0.7");
positive!(joint_08_has_real_reference_proof, "joint", "0.8");
positive!(retarget_07_has_real_reference_proof, "retarget", "0.7");
positive!(retarget_08_has_real_reference_proof, "retarget", "0.8");

#[test]
fn id_and_no_holder_are_empty_controls_but_real_constraint_control_proves() {
    for pattern in ["id-control", "no-holder-control"] {
        let a = model::report(&model::module(pattern, "0.7"));
        assert!(a.value["checks"].as_array().unwrap().is_empty());
    }
    let a = model::report(&model::module("proved-control", "0.7"));
    assert!(!a.value["checks"].as_array().unwrap().is_empty());
    assert_eq!(a.value["checks"][0]["outcome"], "proven");
}

#[test]
fn missing_wrong_target_and_weakened_guards_do_not_gain_reference_proofs() {
    for version in ["0.7", "0.8"] {
        for pattern in ["guarded-unguarded", "joint-unguarded", "retarget-unguarded"] {
            let a = model::report(&model::module(pattern, version));
            assert_ne!(a.value["result"], "verified", "{}", a.value);
        }
        let mut w = model::wire("guarded", version);
        let guard = w["actions"][0]["preconditions"][0]["expr"].clone();
        w["actions"][0]["preconditions"][0]["expr"] = serde_json::json!({
            "op":"or","args":[guard,{"op":"lit","type":{"t":"bool"},"value":true,"loc":{"file":"weak","line":1}}],"loc":{"file":"weak","line":1}});
        let m = behavior_core::admit(&w.to_string()).unwrap();
        assert_ne!(model::report(&m).value["result"], "verified");
        let mut wrong = model::wire("guarded", version);
        wrong["actions"][0]["params"]
            .as_array_mut()
            .unwrap()
            .push(serde_json::json!({
            "name":"other","role":"state","type":{"t":"entity","name":"Target"}}));
        wrong["actions"][0]["preconditions"][0]["expr"]["args"][0]["args"][0]["param"] =
            serde_json::json!("other");
        let m = behavior_core::admit(&wrong.to_string()).unwrap();
        assert_ne!(model::report(&m).value["result"], "verified");
    }
}

#[test]
fn trusted_manifests_independently_cover_reference_world_obligations() {
    use behavior_verify::governance::trusted::{
        GovernanceSubject, expected_manifest, verify_authenticated,
    };
    use behavior_verify::solver::{Solver, Z3Process};
    let solver = Z3Process::from_env().unwrap();
    let seed = std::fs::read_to_string(
        std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../../tests/fixtures/governance-v2/verifier.seed"),
    )
    .unwrap();
    for version in ["0.7", "0.8"] {
        for pattern in ["guarded", "joint", "retarget"] {
            let m = model::module(pattern, version);
            model::assert_reference_proven(&model::report(&m));
            let subject = GovernanceSubject::Module(&m);
            let manifest =
                expected_manifest(&subject, &model::profile(), &solver.version()).unwrap();
            let sites = manifest.as_json()["obligations"]
                .as_array()
                .unwrap()
                .clone();
            assert_eq!(
                sites
                    .iter()
                    .filter(|s| s["descriptor"]["predicate_kind"] == "reference_preservation")
                    .count(),
                1
            );
            let proof =
                verify_authenticated(&subject, &model::profile(), seed.trim(), &solver).unwrap();
            assert_eq!(
                proof.envelope.report()["result"],
                "verified",
                "{}",
                proof.diagnostics
            );
            assert_eq!(proof.envelope.manifest(), &manifest.as_json());
        }
    }
}

#[test]
fn unguarded_removal_has_a_real_confirmed_early_reference_failure() {
    for version in ["0.7", "0.8"] {
        let m = model::module("guarded-unguarded", version);
        let a = model::report(&m);
        let findings = a.findings();
        let failure = findings
            .iter()
            .find_map(|f| f.get("counterexample"))
            .unwrap_or_else(|| panic!("missing confirmed reference failure: {}", a.value));
        assert_eq!(failure["record"]["result"], "DENY");
        assert_eq!(
            failure["record"]["reasons"][0]["code"],
            "CONSTRAINT_VIOLATED"
        );
        assert!(
            failure["record"]["trace"]
                .as_array()
                .unwrap()
                .iter()
                .any(|step| step["phase"] == "constraint_post"
                    && step["outcome"] == false
                    && step["obligation"]["source"] == "synthesized_reference"
                    && step["obligation"]["field"] == "target")
        );
    }
}

#[test]
fn default_profile_keeps_real_reference_preservation_proven() {
    use behavior_verify::{Profile, solver::Z3Process, verify};
    for version in ["0.7", "0.8"] {
        for pattern in ["guarded", "joint", "retarget"] {
            let m = model::module(pattern, version);
            let a = verify(
                &m,
                &Profile::default(),
                None,
                &Z3Process::from_env().unwrap(),
            )
            .unwrap();
            let checks: Vec<_> = a.value["checks"]
                .as_array()
                .unwrap()
                .iter()
                .filter(|c| c["kind"] == "preservation")
                .collect();
            assert!(!checks.is_empty());
            assert!(
                checks
                    .iter()
                    .any(|c| c["subject"]["kind"] == "reference_world")
            );
            assert!(
                checks.iter().all(|c| c["outcome"] == "proven"),
                "{}",
                a.value
            );
        }
    }
}

#[test]
fn every_incoming_source_and_field_needs_its_own_total_guard() {
    use serde_json::json;
    for version in ["0.7", "0.8"] {
        let mut w = model::wire("joint", version);
        w["entities"][1]["fields"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"second","type":{"t":"ref","entity":"Target"},"loc":model::loc()}));
        let mut other = w["entities"][1].clone();
        other["name"] = json!("Other");
        other["fields"].as_array_mut().unwrap().truncate(1);
        w["entities"].as_array_mut().unwrap().push(other);
        let missing = behavior_core::admit(&w.to_string()).unwrap();
        assert_ne!(model::report(&missing).value["result"], "verified");
        let conditions = w["actions"][0]["preconditions"].as_array_mut().unwrap();
        conditions.push(model::count_guard("Holder", "second", "old", 0));
        let one = behavior_core::admit(&w.to_string()).unwrap();
        assert_ne!(model::report(&one).value["result"], "verified");
        w["actions"][0]["preconditions"]
            .as_array_mut()
            .unwrap()
            .push(model::count_guard("Other", "target", "old", 0));
        let a = model::report(&behavior_core::admit(&w.to_string()).unwrap());
        model::assert_reference_proven(&a);
        assert_eq!(
            model::reference_fields(&a),
            std::collections::BTreeSet::from([
                "ref(Holder.target)".into(),
                "ref(Holder.second)".into(),
                "ref(Other.target)".into()
            ])
        );
        // Both fields may reference the same target: each actual edge is covered.
        w["actions"][0]["preconditions"][2] = model::count_guard("Holder", "second", "old", 1);
        w["actions"][0]["preconditions"].as_array_mut().unwrap().push(serde_json::json!({"expr":model::op("eq",vec![model::field("holder","second"),model::field("old","id")]),"loc":model::loc()}));
        model::assert_reference_proven(&model::report(
            &behavior_core::admit(&w.to_string()).unwrap(),
        ));
    }
}

#[test]
fn newly_created_and_retargeted_survivors_cannot_reference_removed_targets() {
    use serde_json::json;
    for version in ["0.7", "0.8"] {
        let mut w = model::wire("retarget", version);
        w["actions"][0]["effects"][0]["value"] = model::field("old", "id");
        let a = model::report(&behavior_core::admit(&w.to_string()).unwrap());
        assert!(
            a.value["checks"]
                .as_array()
                .unwrap()
                .iter()
                .filter(|c| c["subject"]["kind"] == "reference_world")
                .all(|c| c["outcome"] != "proven")
        );
        let mut w = model::wire("guarded", version);
        w["actions"][0]["params"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"fresh","role":"input","type":{"t":"id","entity":"Holder"}}));
        w["actions"][0]["effects"].as_array_mut().unwrap().push(json!({"create":"Holder","id":{"op":"param","param":"fresh","loc":model::loc()},"fields":{"target":model::field("old","id")},"loc":model::loc()}));
        let a = model::report(&behavior_core::admit(&w.to_string()).unwrap());
        assert_ne!(a.value["result"], "verified");
        assert!(
            a.value["checks"]
                .as_array()
                .unwrap()
                .iter()
                .filter(|c| c["subject"]["kind"] == "reference_world")
                .all(|c| c["outcome"] != "proven")
        );
        assert!(
            a.findings()
                .iter()
                .any(|f| f["counterexample"]["record"]["reasons"][0]["code"]
                    == "CONSTRAINT_VIOLATED"),
            "{}",
            a.value
        );
    }
}

#[test]
fn optional_edges_are_covered_by_referenced_without_invented_query_totality() {
    use serde_json::json;
    for version in ["0.7", "0.8"] {
        let mut w = model::wire("guarded", version);
        w["entities"][1]["fields"][0]["type"] =
            json!({"t":"option","of":{"t":"ref","entity":"Target"}});
        model::assert_reference_proven(&model::report(
            &behavior_core::admit(&w.to_string()).unwrap(),
        ));
        w["actions"][0]["preconditions"] = json!([]);
        assert_ne!(
            model::report(&behavior_core::admit(&w.to_string()).unwrap()).value["result"],
            "verified"
        );
    }
}

#[test]
fn self_reference_and_two_node_cycles_use_actual_removed_source_delta() {
    use serde_json::json;
    for version in ["0.7", "0.8"] {
        let mut w = model::wire("guarded", version);
        w["entities"] = json!([{"name":"Node","fields":[{"name":"next","type":{"t":"ref","entity":"Node"},"loc":model::loc()}],"loc":model::loc()}]);
        w["actions"][0]["params"] =
            json!([{"name":"old","role":"state","type":{"t":"entity","name":"Node"}}]);
        // The only incoming edge may be the removed row's self-reference.
        w["actions"][0]["preconditions"] = json!([model::count_guard("Node","next","old",1),{"expr":model::op("eq",vec![model::field("old","next"),model::field("old","id")]),"loc":model::loc()}]);
        model::assert_reference_proven(&model::report(
            &behavior_core::admit(&w.to_string()).unwrap(),
        ));
        w["actions"][0]["params"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"peer","role":"state","type":{"t":"entity","name":"Node"}}));
        w["actions"][0]["effects"]
            .as_array_mut()
            .unwrap()
            .push(json!({"remove":"peer","loc":model::loc()}));
        w["actions"][0]["preconditions"] = json!([model::count_guard("Node","next","old",1),model::count_guard("Node","next","peer",1),
            {"expr":model::op("eq",vec![model::field("old","next"),model::field("peer","id")]),"loc":model::loc()},
            {"expr":model::op("eq",vec![model::field("peer","next"),model::field("old","id")]),"loc":model::loc()}]);
        model::assert_reference_proven(&model::report(
            &behavior_core::admit(&w.to_string()).unwrap(),
        ));
    }
}

#[test]
fn renamed_reordered_bindings_keep_typed_scope_and_read_roles_are_not_state_replacements() {
    fn rename(v: &mut serde_json::Value) {
        match v {
            serde_json::Value::String(s) => {
                if s == "holder" {
                    *s = "row_binding".into();
                } else if s == "old" {
                    *s = "prior".into();
                }
            }
            serde_json::Value::Array(a) => a.iter_mut().for_each(rename),
            serde_json::Value::Object(m) => m.values_mut().for_each(rename),
            _ => {}
        }
    }
    for version in ["0.7", "0.8"] {
        for pattern in ["guarded", "joint", "retarget"] {
            let mut w = model::wire(pattern, version);
            rename(&mut w);
            w["entities"].as_array_mut().unwrap().reverse();
            w["actions"][0]["params"].as_array_mut().unwrap().reverse();
            model::assert_reference_proven(&model::report(
                &behavior_core::admit(&w.to_string()).unwrap(),
            ));
        }
        // Read role belongs to declared-read semantics, not mutable action bindings.
        let mut w = model::wire("joint", version);
        w["actions"][0]["params"][0]["role"] = serde_json::json!("read");
        assert!(behavior_core::admit(&w.to_string()).is_err());
        // Multiple surviving same-type Ref rows retain the pre-existing canonical-order refusal.
        let mut w = model::wire("retarget", version);
        w["actions"][0]["params"].as_array_mut().unwrap().push(serde_json::json!({"name":"other_holder","role":"state","type":{"t":"entity","name":"Holder"}}));
        let a = model::report(&behavior_core::admit(&w.to_string()).unwrap());
        assert!(
            a.value["checks"]
                .as_array()
                .unwrap()
                .iter()
                .all(|c| c["outcome"] == "inconclusive" && c["reason"] == "encoding_error")
        );
    }
}

#[test]
fn duplicate_state_id_and_reused_creation_id_keep_core_lifecycle_refusals() {
    use serde_json::json;
    for version in ["0.7", "0.8"] {
        let m = model::module("retarget", version);
        let old = json!({"id":"old","value":1});
        let holder = json!({"id":"h","target":"old"});
        let request = json!({"action":"retarget","data_version":"alias","state":{"holder":holder,"old":old,"new":old},"input":{},"context":{},"facts":{"universe":[{"entity":"Target","members":[old]},{"entity":"Holder","members":[holder]}]}});
        let r = behavior_core::evaluate(&m, &request.to_string());
        assert_eq!(r.as_json()["result"], "INVALID_BINDING", "{}", r.as_json());
        assert_eq!(r.as_json()["reasons"][0]["code"], "STATE_ALIAS_NOT_ALLOWED");
        let mut w = model::wire("guarded", version);
        w["actions"][0]["params"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"fresh","role":"input","type":{"t":"id","entity":"Target"}}));
        w["actions"][0]["effects"].as_array_mut().unwrap().push(json!({"create":"Target","id":{"op":"param","param":"fresh","loc":model::loc()},"fields":{"value":model::integer(1)},"loc":model::loc()}));
        let m = behavior_core::admit(&w.to_string()).unwrap();
        let request = json!({"action":"remove_free","data_version":"fresh","state":{"old":old},"input":{"fresh":"old"},"context":{},"facts":{"universe":[{"entity":"Target","members":[old]},{"entity":"Holder","members":[]}],"identities":[{"entity":"Target","id":"old","used":true}]}});
        let r = behavior_core::evaluate(&m, &request.to_string());
        assert_eq!(
            r.as_json()["result"],
            "LIFECYCLE_CONFLICT",
            "{}",
            r.as_json()
        );
        assert_eq!(r.as_json()["reasons"][0]["code"], "LIFECYCLE_CONFLICT");
    }
}

#[test]
fn computational_exhaustion_and_failed_witnesses_never_supply_proof_authority() {
    use behavior_verify::{
        solver::{Query, Solver, SolverAnswer, UnknownReason},
        verify,
    };
    struct Exhausted;
    impl Solver for Exhausted {
        fn version(&self) -> String {
            "test exhausted".into()
        }
        fn check(&self, _: &Query) -> SolverAnswer {
            SolverAnswer::Unknown(UnknownReason::ResourceLimit)
        }
    }
    let m = model::module("guarded", "0.7");
    let a = verify(&m, &model::profile(), None, &Exhausted).unwrap();
    assert_eq!(a.result, "not_verified");
    assert!(
        a.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .all(|c| c["outcome"] == "inconclusive")
    );
    assert!(
        a.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .any(|c| c["subject"]["kind"] == "reference_world" && c["reason"] == "resource_limit")
    );
    let mut p = model::profile();
    p.rlimit = 1;
    let a = verify(
        &m,
        &p,
        None,
        &behavior_verify::solver::Z3Process::from_env().unwrap(),
    )
    .unwrap();
    assert_eq!(a.result, "not_verified");
    assert!(
        a.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .all(|c| c["outcome"] == "inconclusive")
    );
    // Raw SAT is not an actual witness. An empty fabricated model cannot confirm.
    struct EmptySat;
    impl Solver for EmptySat {
        fn version(&self) -> String {
            "test empty".into()
        }
        fn check(&self, _: &Query) -> SolverAnswer {
            SolverAnswer::Sat(std::collections::BTreeMap::new())
        }
    }
    let a = verify(
        &model::module("guarded-unguarded", "0.7"),
        &model::profile(),
        None,
        &EmptySat,
    )
    .unwrap();
    assert_eq!(a.result, "not_verified");
    assert!(
        a.value["checks"]
            .as_array()
            .unwrap()
            .iter()
            .all(|c| c["outcome"] == "inconclusive")
    );
    assert!(
        a.findings()
            .iter()
            .all(|f| f.get("counterexample").is_none())
    );
}

#[test]
fn count_guard_for_another_target_cannot_discharge_removed_target_residual() {
    for version in ["0.7", "0.8"] {
        let mut w = model::wire("retarget", version);
        w["actions"][0]["preconditions"][1] = model::count_guard("Holder", "target", "new", 1);
        let a = model::report(&behavior_core::admit(&w.to_string()).unwrap());
        assert!(
            a.value["checks"]
                .as_array()
                .unwrap()
                .iter()
                .filter(|c| c["subject"]["kind"] == "reference_world")
                .all(|c| c["outcome"] != "proven"),
            "{}",
            a.value
        );
    }
}

#[test]
fn equal_action_bodies_have_independent_complete_reference_manifests() {
    use behavior_verify::governance::trusted::{GovernanceSubject, expected_manifest};
    let mut w = model::wire("guarded", "0.7");
    let mut alias = w["actions"][0].clone();
    alias["name"] = serde_json::json!("remove_other");
    w["actions"].as_array_mut().unwrap().push(alias);
    let m = behavior_core::admit(&w.to_string()).unwrap();
    model::assert_reference_proven(&model::report(&m));
    let manifest = expected_manifest(
        &GovernanceSubject::Module(&m),
        &model::profile(),
        "z3 4.16.0",
    )
    .unwrap();
    let sites: Vec<_> = manifest.as_json()["obligations"]
        .as_array()
        .unwrap()
        .iter()
        .filter(|s| s["descriptor"]["predicate_kind"] == "reference_preservation")
        .cloned()
        .collect();
    assert_eq!(sites.len(), 2);
    assert_ne!(sites[0]["key"], sites[1]["key"]);
}
