//! Complete declared Ref inventory. Runtime and wire data are unchanged.
use super::*;

#[derive(Clone, Debug)]
pub(super) struct ReferenceClass {
    pub source: String,
    pub field: String,
    pub target: String,
    pub hash: Hash,
    pub name: String,
    pub loc: Loc,
}

pub(super) fn inventory(module: &Module) -> Vec<ReferenceClass> {
    let mut classes = Vec::new();
    for (source, item) in module.entities() {
        for (field, target) in item.reference_fields() {
            for (name, constraint) in module.constraints_for(source) {
                if constraint.reference() == Some(field) {
                    classes.push(ReferenceClass {
                        source: source.clone(),
                        field: field.into(),
                        target: target.into(),
                        hash: *constraint.hash(),
                        name: name.clone(),
                        loc: constraint.loc().clone(),
                    });
                }
            }
        }
    }
    classes
}

#[derive(Clone, Debug)]
pub(crate) struct ReferenceCheck {
    pub declaration: String,
    pub source: String,
    pub field: String,
    pub hash: Hash,
    pub name: String,
    pub loc: Loc,
    pub condition: String,
}

fn points(fields: &BTreeMap<String, Term>, field: &str, target: &str) -> R<String> {
    match fields.get(field) {
        Some(Term::Plain(value)) => Ok(format!("(= {value} {target})")),
        Some(Term::Opt { some, val }) => Ok(format!("(and {some} (= {val} {target}))")),
        None => Err(EncodeError::Unsupported(
            "reference field absent from binding".into(),
        )),
    }
}
fn sum(items: &[String]) -> String {
    match items {
        [] => "0".into(),
        [one] => one.clone(),
        _ => format!("(+ {})", items.join(" ")),
    }
}

impl Encoder<'_> {
    /// A mathematical, unrestricted count of unchanged unbound sources. Only
    /// the separate witness query defines it using the finite search slots.
    fn reference_residual(&mut self, class: &ReferenceClass, target: &str) -> R<String> {
        let function = format!(
            "refworld!{}!{}!{}!{}",
            class.source,
            class.field,
            class.target,
            hash_display(&class.hash).trim_start_matches("sha256:")
        );
        if self.uf_declared.insert(function.clone()) {
            self.decls
                .push(format!("(declare-fun {function} (String) Int)"));
        }
        let value = format!("({function} {target})");
        if self.reference_residuals.insert((function, target.into())) {
            self.axioms.push(format!("(>= {value} 0)"));
            self.ensure_slots(&class.source)?;
            let mut count = Vec::new();
            for slot in &self.slots[&class.source] {
                if let Binding::Entity { fields, .. } = &slot.binding {
                    let member = points(fields, &class.field, target)?;
                    count.push(format!("(ite (and {} {member}) 1 0)", slot.present));
                }
            }
            self.witness.push(format!("(= {value} {})", sum(&count)));
        }
        Ok(value)
    }

    /// refd means residual, whereas the observed incoming facts include the
    /// bound sources too. This law covers every declared source field/type.
    pub(super) fn reference_target(&mut self, entity: &str, target: &str) -> R<()> {
        let mut alternatives = Vec::new();
        for class in inventory(self.module).iter().filter(|c| c.target == entity) {
            let count = self.reference_residual(class, target)?;
            alternatives.push(format!("(> {count} 0)"));
        }
        self.ensure_facts(entity);
        self.axioms.push(format!(
            "(= (refd!{entity} {target}) {})",
            or_all(&alternatives)
        ));
        Ok(())
    }

    /// Recognize only an actual total parent query: select(U) filtered by
    /// required Ref-field equality to a typed, candidate-independent capture.
    /// It links the existing parent count, never a post-delta total.
    pub(super) fn reference_count_link(
        &mut self,
        query: &behavior_core::semantic::expr::QueryNode,
        env: &Env,
        parent: &str,
    ) -> R<()> {
        use behavior_core::semantic::expr::{CANDIDATE, QueryKind};
        if !self.reference_world {
            return Ok(());
        }
        let QueryKind::Where { base, body, .. } = query.kind() else {
            return Ok(());
        };
        if !matches!(base.kind(), QueryKind::Select) {
            return Ok(());
        }
        let ExprKind::Cmp(CmpOp::Eq, a, b) = body.kind() else {
            return Ok(());
        };
        let (field, capture) = match (a.kind(), b.kind()) {
            (ExprKind::Field { param, field }, _) if param == CANDIDATE => (field, b.as_ref()),
            (_, ExprKind::Field { param, field }) if param == CANDIDATE => (field, a.as_ref()),
            _ => return Ok(()),
        };
        if !matches!(capture.kind(), ExprKind::Field { param,.. } | ExprKind::Param(param) if param != CANDIDATE)
            && !matches!(capture.kind(), ExprKind::Lit(_))
        {
            return Ok(());
        }
        let class = inventory(self.module)
            .into_iter()
            .find(|c| c.source == query.entity() && &c.field == field);
        let Some(class) = class else { return Ok(()) };
        // Optional fields are represented in the edge world, but unsupported
        // optional query syntax gains no ad-hoc totality certificate.
        if self
            .module
            .entity(&class.source)
            .and_then(|e| e.field_type(field))
            != Some(&Type::Id(class.target.clone()))
            || capture.ty() != &Type::Id(class.target.clone())
        {
            return Ok(());
        }
        let encoded = self.encode(capture, env)?;
        if !encoded.obligations.is_empty() {
            return Ok(());
        }
        let target = encoded.term.plain()?;
        let residual = self.reference_residual(&class, target)?;
        let mut count = vec![residual];
        for (parameter, source) in &self.world.bound {
            if source == &class.source
                && let Some(Binding::Entity { fields, .. }) = self.world.env_s.get(parameter)
            {
                count.push(format!("(ite {} 1 0)", points(fields, field, target)?));
            }
        }
        self.axioms.push(format!("(= {parent} {})", sum(&count)));
        Ok(())
    }

    pub(super) fn reference_checks(&mut self) -> R<Vec<ReferenceCheck>> {
        let mut out = Vec::new();
        for class in inventory(self.module) {
            let mut conditions = Vec::new();
            let removes = self.world.removes.clone();
            for (target_type, target, _) in &removes {
                if target_type == &class.target {
                    conditions.push(format!(
                        "(= {} 0)",
                        self.reference_residual(&class, target)?
                    ));
                }
            }
            let removed: BTreeSet<_> = removes.iter().map(|(_, _, p)| p.clone()).collect();
            let bindings = self.world.env_post.clone();
            for (parameter, source) in &self.world.bound.clone() {
                if source == &class.source
                    && !removed.contains(parameter)
                    && let Some(Binding::Entity { fields, .. }) = bindings.get(parameter)
                {
                    conditions.push(self.reference_field_exists(&class, fields)?);
                }
            }
            for (i, (source, _)) in self.world.creates.clone().iter().enumerate() {
                if source == &class.source
                    && let Some(Binding::Entity { fields, .. }) =
                        bindings.get(&format!("create[{i}]"))
                {
                    conditions.push(self.reference_field_exists(&class, fields)?);
                }
            }
            if !conditions.is_empty() {
                let declaration = self
                    .module
                    .name_table()
                    .get(&(
                        behavior_core::semantic::module::Kind::Entity,
                        class.source.clone(),
                    ))
                    .map(hash_display)
                    .ok_or_else(|| {
                        EncodeError::Unsupported("reference source identity missing".into())
                    })?;
                out.push(ReferenceCheck {
                    declaration,
                    source: class.source,
                    field: class.field,
                    hash: class.hash,
                    name: class.name,
                    loc: class.loc,
                    condition: and_all(&conditions),
                });
            }
        }
        Ok(out)
    }
    fn reference_field_exists(
        &mut self,
        class: &ReferenceClass,
        fields: &BTreeMap<String, Term>,
    ) -> R<String> {
        match fields.get(&class.field) {
            Some(Term::Plain(value)) => Ok(self.exists_term(&class.target, value)),
            Some(Term::Opt { some, val }) => {
                let exists = self.exists_term(&class.target, val);
                Ok(format!("(=> {some} {exists})"))
            }
            None => Err(EncodeError::Unsupported(
                "reference field absent from child".into(),
            )),
        }
    }
}

#[cfg(test)]
#[allow(clippy::unwrap_used, clippy::expect_used)]
mod tests {
    use super::*;
    use serde_json::json;
    fn wire() -> serde_json::Value {
        serde_json::from_str(include_str!(concat!(
            env!("CARGO_MANIFEST_DIR"),
            "/../../tests/fixtures/verify/ref-removals/guarded.json"
        )))
        .unwrap()
    }
    #[test]
    fn inventory_includes_unbound_required_and_optional_fields_but_not_plain_ids() {
        let mut w = wire();
        let l = json!({"file":"inventory.beh","line":1});
        w["entities"][1]["fields"].as_array_mut().unwrap().extend([
            json!({"name":"optional","type":{"t":"option","of":{"t":"ref","entity":"Target"}},"loc":l}),
            json!({"name":"ordinary","type":{"t":"id","entity":"Target"},"loc":l})
        ]);
        let m = behavior_core::admit(&w.to_string()).unwrap();
        let actual: BTreeSet<_> = inventory(&m)
            .into_iter()
            .map(|c| (c.source, c.field, c.target))
            .collect();
        assert_eq!(
            actual,
            BTreeSet::from([
                ("Holder".into(), "target".into(), "Target".into()),
                ("Holder".into(), "optional".into(), "Target".into())
            ])
        );
    }
    #[test]
    fn inventory_distinguishes_other_unmentioned_source_types() {
        let mut w = wire();
        let mut other = w["entities"][1].clone();
        other["name"] = json!("Other");
        w["entities"].as_array_mut().unwrap().push(other);
        assert_eq!(
            inventory(&behavior_core::admit(&w.to_string()).unwrap()).len(),
            2
        );
    }
    #[test]
    fn parent_count_partition_preserves_captures_and_never_bounds_unrelated_rows() {
        use crate::solver::{Query, Solver, SolverAnswer, Z3Process};
        for version in ["0.7", "0.8"] {
            let mut w: serde_json::Value = serde_json::from_str(include_str!(concat!(
                env!("CARGO_MANIFEST_DIR"),
                "/../../tests/fixtures/verify/ref-removals/joint.json"
            )))
            .unwrap();
            w["ir_version"] = json!(version);
            if version == "0.8" {
                w["commands"] = json!([]);
                w["actions"][0]["command_effects"] = json!([]);
            }
            let m = behavior_core::admit(&w.to_string()).unwrap();
            let action = m.action("remove_both").unwrap();
            let ExprKind::Cmp(_, count, _) = action.preconditions()[1].expr().kind() else {
                panic!("count guard")
            };
            let ExprKind::Count(query) = count.kind() else {
                panic!("count")
            };
            let mut encoder = Encoder::new(&m);
            encoder.reference_world = true;
            let mut env = Env::new();
            for p in action.params() {
                env.insert(p.name().into(), encoder.declare_param("state", p).unwrap());
            }
            encoder.world.bound = vec![
                ("holder".into(), "Holder".into()),
                ("old".into(), "Target".into()),
            ];
            encoder.world.env_s = env.clone();
            encoder
                .decls
                .push("(declare-const observed_count Int)".into());
            encoder
                .reference_count_link(query, &env, "observed_count")
                .unwrap();
            let class = inventory(&m).remove(0);
            let Binding::Entity { fields: old, .. } = &env["old"] else {
                panic!("old")
            };
            let target = old["id"].plain().unwrap();
            let residual = encoder.reference_residual(&class, target).unwrap();
            let Binding::Entity { fields: holder, .. } = &env["holder"] else {
                panic!("holder")
            };
            let matching = points(holder, "target", target).unwrap();
            let solver = Z3Process::from_env().unwrap();
            let check = |assertions: &[String]| {
                solver.check(&Query {
                    script: encoder.script(assertions, Nice::Raw),
                    get: vec![],
                    rlimit: 20_000_000,
                })
            };
            assert!(matches!(
                check(&[
                    "(= observed_count 1)".into(),
                    matching.clone(),
                    format!("(> {residual} 0)")
                ]),
                SolverAnswer::Unsat
            ));
            assert!(
                matches!(
                    check(&["(= observed_count 1000000)".into(), matching.clone()]),
                    SolverAnswer::Sat(_)
                ),
                "finite slots constrained the proof world"
            );
            let mut other_env = env.clone();
            if let Binding::Entity { fields, .. } = other_env.get_mut("old").unwrap() {
                fields.insert("id".into(), Term::Plain("\"other_target\"".into()));
            }
            encoder.decls.push("(declare-const other_count Int)".into());
            encoder
                .reference_count_link(query, &other_env, "other_count")
                .unwrap();
            let assertions = vec![
                "(= other_count 0)".into(),
                matching,
                format!("(distinct {target} \"other_target\")"),
                format!("(> {residual} 0)"),
            ];
            assert!(
                matches!(
                    solver.check(&Query {
                        script: encoder.script(&assertions, Nice::Raw),
                        get: vec![],
                        rlimit: 20_000_000
                    }),
                    SolverAnswer::Sat(_)
                ),
                "different typed captures were conflated"
            );
        }
    }
}
