//! Trusted proof generation over canonical admitted semantics. No development cache.
use super::trusted::{GovernanceSubject, R, TrustedError};
use crate::checks::{CheckResult, SemanticSite};
use crate::solver::{Query, Solver, SolverAnswer, UnknownReason};
use behavior_core::semantic::module::Module;
use serde_json::{Value as Json, json};
use std::collections::BTreeMap;

pub(super) fn subject_json(subject: &GovernanceSubject<'_>) -> R<Json> {
    Ok(match subject {
        GovernanceSubject::Module(m) => json!({"behavior_hash":m.behavior_version()}),
        GovernanceSubject::Migration(m, s, t) => {
            if !m.matches_behaviors(s, t) {
                return Err(TrustedError {
                    code: "SUBJECT_MISMATCH",
                    message: "migration behavior pair differs from resolution".into(),
                });
            }
            json!({"migration_hash":m.hash(),"source_behavior":s.behavior_version(),"target_behavior":t.behavior_version(),"source_schema":m.source_schema(),"target_schema":m.target_schema()})
        }
    })
}

fn relocate(value: &mut Json) {
    match value {
        Json::Object(o) => {
            if o.contains_key("loc") {
                o.insert("loc".into(), json!({"file":"<semantic>","line":1}));
            }
            for (k, v) in o {
                if k != "loc" {
                    relocate(v);
                }
            }
        }
        Json::Array(a) => {
            for v in a {
                relocate(v);
            }
        }
        _ => {}
    }
}
fn expression(value: &mut Json, env: &BTreeMap<String, String>, depth: u32) {
    let Some(o) = value.as_object_mut() else {
        return;
    };
    let op = o
        .get("op")
        .and_then(Json::as_str)
        .unwrap_or_default()
        .to_string();
    if ["field", "param"].contains(&op.as_str()) {
        for key in ["param", "name"] {
            if let Some(v) = o.get_mut(key)
                && let Some(n) = v.as_str().and_then(|n| env.get(n))
            {
                *v = json!(n);
            }
        }
    }
    if op == "derived"
        && let Some(a) = o.get_mut("args").and_then(Json::as_array_mut)
    {
        for v in a {
            if let Some(n) = v.as_str().and_then(|n| env.get(n)) {
                *v = json!(n);
            }
        }
    }
    // Query/fold binders introduce lexical scope only in their body. Base query
    // and captures continue to use the enclosing scope.
    let mut inner = env.clone();
    if !["field", "param"].contains(&op.as_str())
        && let Some(old) = o.get("param").and_then(Json::as_str).map(str::to_string)
    {
        let name = format!("q{depth}");
        inner.insert(old, name.clone());
        o.insert("param".into(), json!(name));
    }
    for (key, v) in o.iter_mut() {
        if key == "body" {
            expression(v, &inner, depth.saturating_add(1));
        } else if key == "args" && op != "derived" {
            if let Some(a) = v.as_array_mut() {
                for x in a {
                    expression(x, env, depth.saturating_add(1));
                }
            }
        } else if key == "arg" {
            expression(v, env, depth.saturating_add(1));
        }
    }
}

pub(super) fn canonical_module(module: &Module) -> R<Module> {
    let mut wire = behavior_core::serialize::to_wire_value(module);
    relocate(&mut wire);
    for section in ["derived", "actions", "reads"] {
        if let Some(items) = wire.get_mut(section).and_then(Json::as_array_mut) {
            for item in items {
                let mut env = BTreeMap::new();
                if let Some(params) = item["params"].as_array_mut() {
                    for p in params.iter_mut() {
                        if let Some(old) = p["name"].as_str().map(str::to_string) {
                            // Legacy capability parameter names are public binding keys
                            // and participate in identity. They are not alpha aliases.
                            env.insert(old.clone(), old);
                        }
                    }
                }
                if section == "actions" {
                    for key in ["preconditions", "postconditions"] {
                        if let Some(a) = item[key].as_array_mut() {
                            for c in a {
                                expression(&mut c["expr"], &env, 0);
                            }
                        }
                    }
                    if let Some(a) = item["effects"].as_array_mut() {
                        for effect in a {
                            for key in ["param", "remove"] {
                                if let Some(v) = effect.get_mut(key)
                                    && let Some(n) = v.as_str().and_then(|n| env.get(n))
                                {
                                    *v = json!(n);
                                }
                            }
                            if let Some(v) =
                                effect.get_mut("target").and_then(|v| v.get_mut("param"))
                                && let Some(n) = v.as_str().and_then(|n| env.get(n))
                            {
                                *v = json!(n);
                            }
                            for key in ["value", "id"] {
                                if let Some(v) = effect.get_mut(key) {
                                    expression(v, &env, 0);
                                }
                            }
                            if let Some(fields) =
                                effect.get_mut("fields").and_then(Json::as_object_mut)
                            {
                                for v in fields.values_mut() {
                                    expression(v, &env, 0);
                                }
                            }
                        }
                    }
                } else if section == "reads" {
                    if let Some(v) = item["body"].get_mut("value") {
                        expression(v, &env, 0);
                    }
                    if let Some(p) = item["body"].get_mut("project") {
                        if let Some(over) = p.get_mut("over") {
                            if let Some(name) = over.as_str().and_then(|n| env.get(n)) {
                                *over = json!(name);
                            } else {
                                expression(over, &env, 0);
                            }
                        }
                        if let Some(v) = p.get_mut("param") {
                            *v = json!(
                                v.as_str()
                                    .and_then(|n| env.get(n))
                                    .cloned()
                                    .unwrap_or_else(|| "q0".into())
                            );
                        }
                    }
                } else {
                    expression(&mut item["body"], &env, 0);
                }
            }
        }
    }
    for section in ["constraints", "invariants"] {
        if let Some(items) = wire.get_mut(section).and_then(Json::as_array_mut) {
            for item in items {
                let mut env = BTreeMap::new();
                if let Some(old) = item["param"].as_str().map(str::to_string) {
                    env.insert(old.clone(), old);
                }
                expression(&mut item["body"], &env, 0);
            }
        }
    }
    let normalized = behavior_core::admit(&wire.to_string()).map_err(|e| TrustedError {
        code: "SEMANTIC_NORMALIZATION",
        message: format!(
            "canonical admitted serialization failed re-admission: {:?}",
            e.errors
        ),
    })?;
    if normalized.behavior_version() != module.behavior_version() {
        return Err(TrustedError {
            code: "SEMANTIC_NORMALIZATION",
            message: "normalization changed semantic identity".into(),
        });
    }
    Ok(normalized)
}

pub(super) fn checks(
    subject: &GovernanceSubject<'_>,
    profile: &crate::Profile,
    solver: &dyn Solver,
) -> R<Vec<CheckResult>> {
    match subject {
        GovernanceSubject::Module(m) => {
            let m = canonical_module(m)?;
            let mut report = crate::verify_complete(&m, profile, solver);
            for c in &mut report.checks {
                if c.site.is_none() {
                    // Declaration-level rule checks have a canonical public-map
                    // address; caller display names never supply binder identity.
                    let owner = c.subject.hash.clone();
                    c.site = Some(SemanticSite {
                        owner_hash: owner,
                        phase: "declaration",
                        semantic_path: vec![json!({"field":c.subject.name})],
                        predicate_kind: c.check.into(),
                    });
                }
            }
            Ok(report.checks)
        }
        GovernanceSubject::Migration(m, s, t) => {
            subject_json(subject)?;
            let s = canonical_module(s)?;
            let t = canonical_module(t)?;
            let migration =
                behavior_core::migration::admit_migration(&s, &t, &m.resolved().to_string())
                    .map_err(|_| TrustedError {
                        code: "SUBJECT_MISMATCH",
                        message: "canonical migration failed re-admission".into(),
                    })?;
            if migration.hash() != m.hash() {
                return Err(TrustedError {
                    code: "SUBJECT_MISMATCH",
                    message: "canonical migration changed identity".into(),
                });
            }
            let mut report = crate::verify_migration(&migration, &s, &t, profile, None, solver);
            report.checks.extend(crate::migration::requirement_checks(
                &migration, &s, profile, solver,
            ));
            if report.checks.iter().any(|c| c.site.is_none()) {
                return Err(TrustedError {
                    code: "INCOMPLETE_VERIFICATION",
                    message: "migration check lacks a semantic syntax address".into(),
                });
            }
            Ok(report.checks)
        }
    }
}

/// Drives only the fixed encoding/site generator. No theorem result from this
/// planning pass is usable as evidence, and it performs no solver process I/O.
pub(super) struct SitePlanner<'a>(pub &'a str);
impl Solver for SitePlanner<'_> {
    fn version(&self) -> String {
        self.0.into()
    }
    fn check(&self, _: &Query) -> SolverAnswer {
        SolverAnswer::Unknown(UnknownReason::ResourceLimit)
    }
}
