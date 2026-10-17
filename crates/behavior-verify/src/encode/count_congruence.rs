//! A sufficient typed membership relation, not a new query identity or runtime rewrite.
//! Recognition certifies total parent membership over the unrestricted typed domain.
//! Partial or unrecognized syntax emits no relation. Original errors remain antecedents.
use super::{EncodeError, R, Term, and_all};
use behavior_core::semantic::expr::{CANDIDATE, Expr, ExprKind, QueryKind, QueryNode};
use behavior_core::semantic::module::{Kind, Module};
use behavior_core::semantic::types::{CmpOp, Hash, Prim, SemanticProfile, Type, hash_display};
use behavior_core::semantic::value::Value;
use serde_json::{Value as Json, json};
use std::collections::BTreeMap;

pub(super) struct Source<'e> {
    pub key: String,
    pub reads: Vec<&'e Expr>,
}
#[derive(Clone)]
pub(super) struct Captured {
    pub key: String,
    pub ports: Vec<(Type, Term)>,
}
#[derive(Clone)]
pub(super) struct Occurrence {
    pub source: Captured,
    pub parent: String,
    pub no_error: String,
}
#[derive(Default)]
pub(super) struct Registry {
    context: Option<Context>,
    buckets: BTreeMap<String, Vec<Occurrence>>,
}
#[derive(PartialEq, Eq)]
struct Context {
    behavior: Hash,
    schema: String,
    profile: SemanticProfile,
}
impl Context {
    fn of(module: &Module) -> Self {
        Self {
            behavior: *module.hash(),
            schema: behavior_core::schema(module).hash,
            profile: module.semantic_profile(),
        }
    }
}
/// Successful construction is the structural parent-definedness certificate.
/// Every recognized leaf is a total typed read/literal; every recognized node
/// composes total children using a total primitive comparison/Boolean/set law.
pub(super) fn source<'e>(
    module: &Module,
    query: &'e QueryNode,
    predicate: Option<&'e Expr>,
) -> Option<Source<'e>> {
    let mut builder = Descriptor {
        module,
        entity: query.entity(),
        reads: Vec::new(),
    };
    let mut description = builder.query(query)?;
    if let Some(predicate) = predicate {
        builder.append_filter(&mut description, predicate)?;
    }
    Some(Source {
        key: description.to_string(),
        reads: builder.reads,
    })
}

fn entity_identity(module: &Module, entity: &str) -> Option<Json> {
    let hash = module
        .name_table()
        .get(&(Kind::Entity, entity.to_owned()))?;
    Some(json!({"name":entity,"declaration":hash_display(hash)}))
}

fn type_identity(module: &Module, ty: &Type) -> Option<Json> {
    Some(match ty {
        Type::Bool | Type::Int | Type::Decimal | Type::String => ty.to_wire_json(),
        Type::Enum(info) => {
            json!({"type":ty.to_wire_json(),"declaration":hash_display(&info.hash)})
        }
        Type::Nominal(info) => {
            json!({"type":ty.to_wire_json(),"declaration":hash_display(&info.hash)})
        }
        Type::Id(entity) => json!({"id":entity_identity(module,entity)?}),
        Type::Option(inner) => json!({"option":type_identity(module,inner)?}),
        Type::Entity(_) | Type::Exact(_) => return None,
    })
}

struct Descriptor<'m, 'e> {
    module: &'m Module,
    entity: &'e str,
    reads: Vec<&'e Expr>,
}
impl<'e> Descriptor<'_, 'e> {
    fn query(&mut self, query: &'e QueryNode) -> Option<Json> {
        if query.entity() != self.entity {
            return None;
        }
        Some(match query.kind() {
            QueryKind::Select => {
                json!({"base":{"select":entity_identity(self.module,query.entity())?},"filters":[]})
            }
            QueryKind::Where { base, body, .. } => {
                let mut result = self.query(base)?;
                self.append_filter(&mut result, body)?;
                result
            }
            QueryKind::Set { op, a, b } => {
                let left = self.query(a)?;
                let right = self.query(b)?;
                json!({"base":{"set":op.as_str(),"left":left,"right":right},"filters":[]})
            }
        })
    }
    fn append_filter(&mut self, description: &mut Json, body: &'e Expr) -> Option<()> {
        if body.ty() != &Type::Bool {
            return None;
        }
        // This removes a total literal only, never an erroring Boolean expression.
        if matches!(body.kind(), ExprKind::Lit(Value::Bool(true))) {
            return Some(());
        }
        let predicate = self.expression(body)?;
        description["filters"].as_array_mut()?.push(predicate);
        Some(())
    }
    fn expression(&mut self, expression: &'e Expr) -> Option<Json> {
        let ty = type_identity(self.module, expression.ty())?;
        let node = match expression.kind() {
            ExprKind::Lit(value) => {
                json!({"literal":behavior_core::semantic::value::encode(expression.ty(),value)})
            }
            ExprKind::Field { param, field } if param == CANDIDATE => {
                let entity = self.module.entity(self.entity)?;
                if entity.field_type(field)? != expression.ty() {
                    return None;
                }
                json!({"field":field,"entity":entity_identity(self.module,self.entity)?})
            }
            ExprKind::Field { .. } | ExprKind::Param(_) => {
                // Whole entities are excluded by type_identity. Preserve each
                // occurrence, even when old inst_args deduplicates the reads.
                let position = self.reads.len();
                self.reads.push(expression);
                json!({"port":position})
            }
            ExprKind::Cmp(op, a, b) => {
                if a.ty() != b.ty() {
                    return None;
                }
                if !matches!(op, CmpOp::Eq | CmpOp::Ne) {
                    let ordered = match a.ty() {
                        Type::Int | Type::Decimal | Type::Enum(_) => true,
                        Type::Nominal(info) => matches!(info.underlying, Prim::Int | Prim::Decimal),
                        _ => false,
                    };
                    if !ordered {
                        return None;
                    }
                }
                let left = self.expression(a)?;
                let right = self.expression(b)?;
                json!({"comparison":format!("{op:?}"),"left":left,"right":right})
            }
            ExprKind::And(children) | ExprKind::Or(children) => {
                let mut values = Vec::new();
                for child in children {
                    if child.ty() != &Type::Bool {
                        return None;
                    }
                    values.push(self.expression(child)?);
                }
                json!({"boolean":if matches!(expression.kind(),ExprKind::And(_)){"and"}else{"or"},"children":values})
            }
            ExprKind::Not(child) if child.ty() == &Type::Bool => {
                json!({"not":self.expression(child)?})
            }
            ExprKind::IsNone(child) | ExprKind::IsSome(child)
                if matches!(child.ty(), Type::Option(_)) =>
            {
                json!({"option_test":if matches!(expression.kind(),ExprKind::IsSome(_)){"some"}else{"none"},"value":self.expression(child)?})
            }
            ExprKind::In(child, values) => {
                let literals = values
                    .iter()
                    .map(|value| behavior_core::semantic::value::encode(child.ty(), value))
                    .collect::<Vec<_>>();
                json!({"in":self.expression(child)?,"values":literals})
            }
            // Checked arithmetic, derives, unwraps, nested aggregates and all
            // unknown forms have no structural total-parent certificate here.
            _ => return None,
        };
        Some(json!({"type":ty,"node":node}))
    }
}

fn typed_equality(a: &(Type, Term), b: &(Type, Term)) -> Option<String> {
    if a.0 != b.0 {
        return None;
    }
    match (&a.0, &a.1, &b.1) {
        (Type::Option(_), Term::Opt { some: sa, val: va }, Term::Opt { some: sb, val: vb }) => {
            Some(format!("(and (= {sa} {sb}) (=> {sa} (= {va} {vb})))"))
        }
        (Type::Option(_) | Type::Entity(_) | Type::Exact(_), _, _) => None,
        (_, Term::Plain(a), Term::Plain(b)) => Some(format!("(= {a} {b})")),
        _ => None,
    }
}
fn implication(a: &Occurrence, b: &Occurrence) -> Option<String> {
    if a.source.key != b.source.key
        || a.source.ports.len() != b.source.ports.len()
        || a.parent == b.parent
    {
        return None;
    }
    let mut guards = a
        .source
        .ports
        .iter()
        .zip(&b.source.ports)
        .map(|(a, b)| typed_equality(a, b))
        .collect::<Option<Vec<_>>>()?;
    guards.extend([a.no_error.clone(), b.no_error.clone()]);
    Some(format!(
        "(=> {} (= {} {}))",
        and_all(&guards),
        a.parent,
        b.parent
    ))
}
impl Registry {
    pub fn enable(&mut self, module: &Module) -> R<()> {
        self.check_context(module)?;
        self.context = Some(Context::of(module));
        Ok(())
    }
    pub fn enabled(&self) -> bool {
        self.context.is_some()
    }
    pub fn check_context(&self, module: &Module) -> R<()> {
        if self
            .context
            .as_ref()
            .is_some_and(|context| *context != Context::of(module))
        {
            return Err(EncodeError::Unsupported(
                "count congruence interpretation changed within one encoding session".into(),
            ));
        }
        Ok(())
    }
    pub fn register(&mut self, module: &Module, occurrence: Occurrence) -> R<Vec<String>> {
        self.check_context(module)?;
        if !self.enabled() {
            return Ok(Vec::new());
        }
        let bucket = self
            .buckets
            .entry(occurrence.source.key.clone())
            .or_default();
        if bucket.iter().any(|prior| {
            prior.parent == occurrence.parent
                && prior.no_error == occurrence.no_error
                && prior.source.ports == occurrence.source.ports
        }) {
            return Ok(Vec::new());
        }
        // Deterministic registration order within one full typed descriptor;
        // no global cross-query Cartesian product or persistent semantic cache.
        let lemmas = bucket
            .iter()
            .filter_map(|prior| implication(prior, &occurrence))
            .collect();
        bucket.push(occurrence);
        Ok(lemmas)
    }
}

#[cfg(test)]
mod tests {
    #![allow(clippy::unwrap_used, clippy::expect_used)]
    use super::*;
    use crate::solver::{Query, Solver, SolverAnswer, Z3Process};
    use behavior_core::semantic::expr::ExprKind;
    use serde_json::{Value, json};

    fn wire() -> Value {
        serde_json::from_str(include_str!(
            "../../../../specs/028-query-summary-congruence/evidence/minimal.json"
        ))
        .unwrap()
    }
    fn admit(wire: &Value) -> Module {
        behavior_core::admit(&wire.to_string()).unwrap()
    }
    fn roots(module: &Module) -> (&QueryNode, &Expr, &QueryNode) {
        let action = module.action("probe").unwrap();
        let ExprKind::Not(any) = action.preconditions()[0].expr().kind() else {
            panic!("not Any")
        };
        let ExprKind::Fold { query, body, .. } = any.kind() else {
            panic!("Any")
        };
        let ExprKind::Cmp(_, count, _) = action.postconditions()[0].expr().kind() else {
            panic!("comparison")
        };
        let ExprKind::Count(filtered) = count.kind() else {
            panic!("Count")
        };
        (query, body, filtered)
    }
    #[test]
    fn any_and_where_have_the_same_typed_membership_template() {
        let module = admit(&wire());
        let (query, body, filtered) = roots(&module);
        let a = source(&module, query, Some(body)).expect("total Any membership");
        let b = source(&module, filtered, None).expect("total Where membership");
        assert_eq!(a.key, b.key);
        assert_eq!(a.reads.len(), 2);
        assert_eq!(b.reads.len(), 2);
    }
    #[test]
    fn source_identity_contains_the_full_entity_declaration() {
        let module = admit(&wire());
        let (query, body, _) = roots(&module);
        let key = source(&module, query, Some(body)).unwrap().key;
        assert!(key.contains(&behavior_core::schema(&module).declarations["Decision"]));
    }
    #[test]
    fn capture_spelling_is_abstracted_but_every_read_occurrence_is_retained() {
        let mut wire = wire();
        wire["actions"][0]["params"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"other","role":"context","type":{"t":"string"}}));
        wire["actions"][0]["postconditions"][0]["expr"]["args"][0]["args"][0]["body"]["args"][1]
            ["args"][1]["param"] = json!("other");
        let module = admit(&wire);
        let (query, body, filtered) = roots(&module);
        let a = source(&module, query, Some(body)).unwrap();
        let b = source(&module, filtered, None).unwrap();
        assert_eq!(a.key, b.key);
        assert_ne!(a.reads[1].hash(), b.reads[1].hash());
    }
    #[test]
    fn different_candidate_fields_are_not_the_same_membership() {
        let mut wire = wire();
        wire["actions"][0]["postconditions"][0]["expr"]["args"][0]["args"][0]["body"]["args"][0]
            ["args"][0]["field"] = json!("actor");
        let module = admit(&wire);
        let (query, body, filtered) = roots(&module);
        assert_ne!(
            source(&module, query, Some(body)).unwrap().key,
            source(&module, filtered, None).unwrap().key
        );
    }
    #[test]
    fn partial_membership_has_no_parent_definedness_certificate() {
        let mut wire = wire();
        let loc = json!({"file":"partial.beh","line":1});
        wire["entities"][1]["fields"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"score","type":{"t":"int"},"loc":loc}));
        wire["actions"][0]["effects"][0]["fields"]["score"] =
            json!({"op":"lit","type":{"t":"int"},"value":1,"loc":loc});
        wire["actions"][0]["preconditions"][0]["expr"]["args"][0]["body"] = json!({"op":"gt","args":[
            {"op":"div","args":[{"op":"lit","type":{"t":"int"},"value":1,"loc":loc},{"op":"field","param":"d","field":"score","loc":loc}],"loc":loc},
            {"op":"lit","type":{"t":"int"},"value":0,"loc":loc}],"loc":loc});
        wire["actions"][0]["postconditions"][0]["expr"]["args"][0]["args"][0]["body"] =
            wire["actions"][0]["preconditions"][0]["expr"]["args"][0]["body"].clone();
        let module = admit(&wire);
        let (query, body, filtered) = roots(&module);
        assert!(source(&module, query, Some(body)).is_none());
        assert!(
            source(&module, filtered, None).is_none(),
            "a successful child Count would not certify total parent membership"
        );
    }
    #[test]
    fn equal_smt_sorts_do_not_equate_different_core_types() {
        let a = (Type::String, Term::Plain("a".into()));
        let b = (Type::Id("Decision".into()), Term::Plain("b".into()));
        assert!(typed_equality(&a, &b).is_none());
    }
    #[test]
    fn optional_equality_compares_presence_before_payload() {
        let ty = Type::Option(Box::new(Type::Int));
        let a = (
            ty.clone(),
            Term::Opt {
                some: "false".into(),
                val: "1".into(),
            },
        );
        let b = (
            ty,
            Term::Opt {
                some: "false".into(),
                val: "2".into(),
            },
        );
        let equality = typed_equality(&a, &b).unwrap();
        let result = Z3Process::from_env().unwrap().check(&Query {
            script: format!("(assert (not {equality}))"),
            get: vec![],
            rlimit: 1_000_000,
        });
        assert_eq!(
            result,
            SolverAnswer::Unsat,
            "absent payloads do not distinguish option values"
        );
    }
    fn occurrence(parent: &str, capture: &str, no_error: &str) -> Occurrence {
        Occurrence {
            source: Captured {
                key: "same".into(),
                ports: vec![(Type::String, Term::Plain(capture.into()))],
            },
            parent: parent.into(),
            no_error: no_error.into(),
        }
    }
    #[test]
    fn equality_and_no_error_are_antecedents_not_assumed_facts() {
        let lemma =
            implication(&occurrence("na", "a", "ea"), &occurrence("nb", "b", "eb")).unwrap();
        let declarations = "(declare-const a String)(declare-const b String)(declare-const na Int)(declare-const nb Int)(declare-const ea Bool)(declare-const eb Bool)";
        for (facts, must_be_sat) in [
            ("(and (= a b) ea eb)", false),
            ("(and (distinct a b) ea eb)", true),
            ("(and (= a b) (not ea) eb)", true),
        ] {
            let result = Z3Process::from_env().unwrap().check(&Query {
                script: format!(
                    "{declarations}(assert {lemma})(assert {facts})(assert (distinct na nb))"
                ),
                get: vec![],
                rlimit: 1_000_000,
            });
            assert_eq!(
                matches!(result, SolverAnswer::Sat(_)),
                must_be_sat,
                "{facts}: {result:?}"
            );
        }
    }
    #[test]
    fn registry_is_disabled_until_explicit_single_context_enablement() {
        let module = admit(&wire());
        let mut registry = Registry::default();
        assert!(!registry.enabled());
        assert!(
            registry
                .register(&module, occurrence("na", "a", "true"))
                .unwrap()
                .is_empty()
        );
        registry.enable(&module).unwrap();
        assert!(registry.enabled());
    }
    #[test]
    fn registry_links_only_matching_buckets_and_deduplicates_occurrences() {
        let module = admit(&wire());
        let mut registry = Registry::default();
        registry.enable(&module).unwrap();
        assert!(
            registry
                .register(&module, occurrence("na", "a", "true"))
                .unwrap()
                .is_empty()
        );
        assert_eq!(
            registry
                .register(&module, occurrence("nb", "b", "true"))
                .unwrap()
                .len(),
            1
        );
        assert!(
            registry
                .register(&module, occurrence("na", "a", "true"))
                .unwrap()
                .is_empty()
        );
        let mut unrelated = occurrence("nc", "c", "true");
        unrelated.source.key = "different".into();
        assert!(registry.register(&module, unrelated).unwrap().is_empty());
    }
    #[test]
    fn enabled_registry_refuses_changed_behavior_interpretation() {
        let original = admit(&wire());
        let mut changed = wire();
        changed["actions"][0]["postconditions"][0]["expr"]["args"][1]["value"] = json!(2);
        let other = admit(&changed);
        assert_eq!(
            behavior_core::schema(&original),
            behavior_core::schema(&other)
        );
        let mut registry = Registry::default();
        registry.enable(&original).unwrap();
        assert!(registry.check_context(&other).is_err());
        assert!(
            registry
                .register(&other, occurrence("na", "a", "true"))
                .is_err()
        );
        assert!(registry.enable(&other).is_err());
    }
    #[test]
    fn independent_sessions_never_share_registered_summaries() {
        let module = admit(&wire());
        let mut first = Registry::default();
        let mut second = Registry::default();
        first.enable(&module).unwrap();
        second.enable(&module).unwrap();
        assert!(
            first
                .register(&module, occurrence("na", "a", "true"))
                .unwrap()
                .is_empty()
        );
        assert!(
            second
                .register(&module, occurrence("nb", "a", "true"))
                .unwrap()
                .is_empty()
        );
        assert_eq!(
            first
                .register(&module, occurrence("nc", "a", "true"))
                .unwrap()
                .len(),
            1
        );
        assert_eq!(second.buckets["same"].len(), 1);
    }
    #[test]
    fn schema_and_semantic_profile_changes_are_not_shared_contexts() {
        let original = admit(&wire());
        let mut registry = Registry::default();
        registry.enable(&original).unwrap();
        let mut changed = wire();
        changed["entities"]
            .as_array_mut()
            .unwrap()
            .push(json!({"name":"Extra","fields":[],"loc":{"file":"extra.beh","line":1}}));
        let other_schema = admit(&changed);
        assert_ne!(
            behavior_core::schema(&original),
            behavior_core::schema(&other_schema)
        );
        assert!(registry.check_context(&other_schema).is_err());
        let mut legacy = wire();
        legacy["ir_version"] = json!("0.7");
        legacy.as_object_mut().unwrap().remove("commands");
        legacy["actions"][0]
            .as_object_mut()
            .unwrap()
            .remove("command_effects");
        let legacy = admit(&legacy);
        assert_ne!(original.semantic_profile(), legacy.semantic_profile());
        assert!(registry.check_context(&legacy).is_err());
    }
    #[test]
    fn migration_constructor_is_disabled_before_source_target_source_switches() {
        let source = admit(&wire());
        let mut changed = wire();
        changed["actions"][0]["postconditions"][0]["expr"]["args"][1]["value"] = json!(2);
        let target = admit(&changed);
        let mut encoder = crate::encode::Encoder::new_migration(&source);
        assert!(!encoder.count_congruence.enabled());
        for module in [&source, &target, &source] {
            encoder.module = module;
            let ExprKind::Cmp(_, _, literal) = module.action("probe").unwrap().postconditions()[0]
                .expr()
                .kind()
            else {
                panic!("comparison")
            };
            encoder.encode(literal, &crate::encode::Env::new()).unwrap();
            assert!(!encoder.count_congruence.enabled());
            assert!(encoder.count_congruence.buckets.is_empty());
        }
    }
}
