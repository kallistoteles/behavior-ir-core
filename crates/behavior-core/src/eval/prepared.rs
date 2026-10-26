//! Ephemeral evidence of an independently checked complete parent. No serialized
//! value, caller assertion, or record parser can construct this authority.
use super::*;
use std::sync::Arc;

#[cfg(test)]
thread_local! {
    pub(super) static MODULE_ENCODINGS: std::cell::Cell<usize> = const { std::cell::Cell::new(0) };
}
fn module_identity(module: &Module) -> String {
    #[cfg(test)]
    MODULE_ENCODINGS.with(|count| count.set(count.get() + 1));
    crate::serialize::to_wire_json(module)
}

/// Complete, normalized and checked state under the exact observable module.
#[derive(Debug)]
pub struct PreparedSnapshot {
    module: String,
    facts: Facts,
    epoch: Arc<()>,
    typed: BTreeMap<Key, Value>,
    templates: BTreeMap<Key, RowTemplate>,
}
// A checked full-content match for this immutable module borrow. The evaluator
// also checks the borrow's address, so an internal caller cannot apply this
// match to another Module. This token is neither serialized nor retained.
pub(super) struct MatchedParent<'a> {
    parent: &'a PreparedSnapshot,
    module: &'a Module,
}
impl<'a> MatchedParent<'a> {
    fn new(parent: &'a PreparedSnapshot, module: &'a Module) -> (Option<Self>, String) {
        let identity = module_identity(module);
        let matched = parent
            .matches_identity(&identity)
            .then_some(Self { parent, module });
        (matched, identity)
    }
    pub(super) fn for_module(self, module: &Module) -> Option<&'a PreparedSnapshot> {
        std::ptr::eq(self.module, module).then_some(self.parent)
    }
}
/// Actual successful evaluation, not a producer's claim that evaluation succeeded.
#[derive(Clone, Debug)]
pub struct CheckedEvaluation {
    result: Arc<CheckedResult>,
}
#[derive(Debug)]
struct CheckedResult {
    record: DecisionRecord,
    observed: Observed,
    request: Option<Json>,
    module: String,
    epoch: Arc<()>,
    child: Option<PreparedChild>,
}
/// A delta proved by ordinary Core execution against one private parent epoch.
#[derive(Clone, Debug)]
pub struct PreparedChild {
    parent: Arc<()>,
    next: Arc<()>,
    rows: BTreeMap<Key, Json>,
    typed: BTreeMap<Key, Value>,
    templates: BTreeMap<Key, RowTemplate>,
}
impl PreparedSnapshot {
    pub fn new(module: &Module, facts: &dyn EvaluationFacts) -> Result<Option<Self>, String> {
        if !supports(module) {
            return Ok(None);
        }
        let snapshot = validate_complete_snapshot(module, provider_snapshot(module, facts)?)?;
        let mut typed = BTreeMap::new();
        let mut templates = BTreeMap::new();
        for (entity, rows) in &snapshot.universe {
            for (id, raw) in rows {
                let key = (entity.clone(), id.clone());
                let value = decode_value(module, entity, raw).map_err(|e| e.join("; "))?;
                if let Some(template) =
                    row_template(module, &key, &value, &snapshot, &BTreeMap::new())
                {
                    templates.insert(key.clone(), template);
                }
                typed.insert(key, value);
            }
        }
        Ok(Some(Self {
            module: module_identity(module),
            facts: snapshot,
            epoch: Arc::new(()),
            typed,
            templates,
        }))
    }
    pub fn facts(&self) -> &Facts {
        &self.facts
    }
    fn matches_identity(&self, identity: &str) -> bool {
        self.module == identity
    }
    pub(super) fn matches(&self, module: &Module) -> bool {
        self.matches_identity(&module_identity(module))
    }
    pub(super) fn validate_bindings(
        &self,
        module: &Module,
        params: &[Param],
        values: &Vals,
    ) -> Result<(), String> {
        // Validity of all unrelated rows is already established. Retain exactly
        // the existing bound-value consistency checks, in their original order.
        let mut bound = Facts::default();
        for entity in self.facts.universe.keys() {
            bound.universe.insert(entity.clone(), BTreeMap::new());
        }
        for p in params.iter().filter(|p| p.role() == ParamRole::State) {
            if let (Type::Entity(t), Some(Value::Entity(fields))) = (p.ty(), values.get(p.name()))
                && let Some(id) = fields.get("id").and_then(id_text)
                && let Some(raw) = self.facts.universe.get(t).and_then(|rows| rows.get(&id))
            {
                bound
                    .universe
                    .entry(t.clone())
                    .or_default()
                    .insert(id, raw.clone());
            }
        }
        check_query_snapshot_inner(module, &bound, params, values, None).map_err(|p| p.message)?;
        check_snapshot(module, &self.facts, &bound_entities(module, params, values))
            .map_err(|p| p.message)
    }
    pub fn evaluate(
        &self,
        module: &Module,
        request: &str,
        provider: &dyn EvaluationFacts,
    ) -> CheckedEvaluation {
        let parsed = if module.semantic_profile()
            == crate::semantic::types::SemanticProfile::CommandIntents
        {
            crate::canonical::decode_strict(request)
                .map_err(|e| <serde_json::Error as serde::de::Error>::custom(e.to_string()))
        } else {
            serde_json::from_str(request)
        };
        let (prepared, identity) = MatchedParent::new(self, module);
        let mut child = None;
        let (record, observed) = evaluate_decoded_request(
            module,
            parsed,
            Some(provider),
            ActionExecution::Current,
            request,
            prepared,
            Some(&mut child),
        );
        CheckedEvaluation {
            result: Arc::new(CheckedResult {
                record,
                observed,
                request: serde_json::from_str(request).ok(),
                module: identity,
                epoch: Arc::clone(&self.epoch),
                child,
            }),
        }
    }
    pub fn apply(&mut self, child: PreparedChild) -> bool {
        if !Arc::ptr_eq(&self.epoch, &child.parent) {
            return false;
        }
        for ((entity, id), value) in child.rows {
            self.facts
                .universe
                .entry(entity)
                .or_default()
                .insert(id, value);
        }
        for key in child.typed.keys() {
            self.templates.remove(key);
        }
        self.typed.extend(child.typed);
        self.templates.extend(child.templates);
        self.epoch = child.next;
        true
    }
    pub(super) fn checked_child(&self, module: &Module, world: &World) -> Option<PreparedChild> {
        // Removal may invalidate untouched reference predicates. Its existing
        // reference path remains authoritative; no partial evidence is issued.
        if !world.removed.is_empty() {
            return None;
        }
        let mut rows = BTreeMap::new();
        let mut typed = BTreeMap::new();
        for (key, param) in &world.bound {
            let value = world.s_prime.get(param)?;
            typed.insert(key.clone(), value.clone());
            rows.insert(
                key.clone(),
                encode_param(module, &Type::Entity(key.0.clone()), value),
            );
        }
        for (key, value) in &world.created {
            typed.insert(key.clone(), value.clone());
            rows.insert(
                key.clone(),
                encode_param(module, &Type::Entity(key.0.clone()), value),
            );
        }
        let templates = typed
            .iter()
            .filter_map(|(key, value)| {
                row_template(module, key, value, &self.facts, &world.created)
                    .map(|t| (key.clone(), t))
            })
            .collect();
        Some(PreparedChild {
            parent: Arc::clone(&self.epoch),
            next: Arc::new(()),
            rows,
            typed,
            templates,
        })
    }
}
impl CheckedEvaluation {
    pub fn record(&self) -> &DecisionRecord {
        &self.result.record
    }
    pub fn observed(&self) -> &Observed {
        &self.result.observed
    }
    pub fn child(&self) -> Option<PreparedChild> {
        self.result.child.clone()
    }
    pub(crate) fn matches(
        &self,
        module: &Module,
        request: &str,
        parent: &PreparedSnapshot,
    ) -> bool {
        // Fresh creation must re-observe history-only used-identity facts at
        // reproduction's existing failure boundary. Prepared state covers S,
        // not provider failures or historical identity queries.
        self.result
            .record
            .as_json()
            .get("lifecycle")
            .and_then(Json::as_array)
            .is_none_or(|ops| !ops.iter().any(|op| op["op"] == "create"))
            && Arc::ptr_eq(&self.result.epoch, &parent.epoch)
            && parent.matches(module)
            && self.result.module == parent.module
            && self
                .result
                .request
                .as_ref()
                .is_some_and(|r| serde_json::from_str::<Json>(request).ok().as_ref() == Some(r))
    }
}

/// Selected obligation language. Every root is inspected; unrecognized semantic
/// dependencies select ordinary execution, never a new admission restriction.
pub fn supports(module: &Module) -> bool {
    module.global_invariants().values().all(|g| match g.body().kind() {
        ExprKind::Lit(Value::Bool(_)) => true,
        ExprKind::Cmp(CmpOp::Le, a, b) => matches!(a.kind(), ExprKind::Count(q) if matches!(q.kind(), crate::semantic::expr::QueryKind::Select)) && matches!(b.kind(), ExprKind::Lit(Value::Int(_))),
        _ => false,
    }) && module.constraints().values().all(|c| c.reference().is_some() || local(module,c.body(),c.param(),&mut BTreeSet::new()))
    && module.invariants().values().all(|i| local(module,i.body(),i.param(),&mut BTreeSet::new()))
}
fn local(module: &Module, expr: &Expr, param: &str, visiting: &mut BTreeSet<Hash>) -> bool {
    match expr.kind() {
        ExprKind::Lit(_) => true,
        ExprKind::Field { param: p, .. } | ExprKind::Param(p) => p == param,
        ExprKind::DerivedRef { name, target, args } => {
            let item = if module.semantic_profile()
                == crate::semantic::types::SemanticProfile::CommandIntents
            {
                module.derived_items().values().find(|d| d.hash() == target)
            } else {
                module.derived(name)
            };
            let Some(d) = item else { return false };
            if d.params().len() != 1 || args != &[param] || !visiting.insert(*d.hash()) {
                return false;
            }
            let yes = local(module, d.body(), d.params()[0].name(), visiting);
            visiting.remove(d.hash());
            yes
        }
        ExprKind::Exists(_)
        | ExprKind::Referenced(_)
        | ExprKind::Count(_)
        | ExprKind::Fold { .. } => false,
        _ if scalar_kind(expr) => expr
            .children()
            .iter()
            .all(|e| local(module, e, param, visiting)),
        _ => false,
    }
}
fn scalar_kind(expr: &Expr) -> bool {
    matches!(
        expr.kind(),
        ExprKind::Lit(_)
            | ExprKind::Field { .. }
            | ExprKind::Param(_)
            | ExprKind::Cmp(..)
            | ExprKind::Arith(..)
            | ExprKind::And(_)
            | ExprKind::Or(_)
            | ExprKind::Not(_)
            | ExprKind::In(..)
            | ExprKind::IsNone(_)
            | ExprKind::IsSome(_)
            | ExprKind::ValueOr(..)
            | ExprKind::Some(_)
            | ExprKind::ToDecimal(_)
            | ExprKind::Wrap(_)
            | ExprKind::Unwrap(_)
            | ExprKind::Rescale { .. }
            | ExprKind::StrictUnwrap(_)
            | ExprKind::EnumMap { .. }
    )
}
fn template_supported(module: &Module, entity: &str) -> bool {
    fn pure(expr: &Expr) -> bool {
        scalar_kind(expr) && expr.children().iter().all(|e| pure(e))
    }
    module
        .constraints_for(entity)
        .all(|(_, c)| c.reference().is_some() || pure(c.body()))
        && module.invariants_for(entity).all(|(_, i)| pure(i.body()))
}

#[derive(Clone, Debug)]
struct RowTemplate {
    trace: Vec<Json>,
    skipped: Vec<Json>,
    fields: BTreeMap<(String, String, String), Json>,
    existence: BTreeMap<Key, bool>,
    operands: BTreeMap<Hash, Json>,
}
struct TemplateFacts<'a> {
    parent: &'a Facts,
    created: &'a BTreeMap<Key, Value>,
}
impl EvaluationFacts for TemplateFacts<'_> {
    fn used(&self, _: &str, _: &str) -> Result<bool, FactError> {
        Err(FactError("history is outside row-template scope".into()))
    }
    fn incoming(&self, _: &str, _: &str) -> Result<Vec<RefEdge>, FactError> {
        Err(FactError(
            "incoming references are outside row-template scope".into(),
        ))
    }
    fn exists(&self, entity: &str, id: &str) -> Result<bool, FactError> {
        Ok(self.created.contains_key(&(entity.into(), id.into()))
            || self
                .parent
                .universe
                .get(entity)
                .is_some_and(|r| r.contains_key(id)))
    }
}
fn empty_outcome() -> Outcome {
    Outcome {
        commands: crate::commands::CommandIntentBag::default(),
        result: "ALLOW",
        reasons: Vec::new(),
        trace: Vec::new(),
        changes: Vec::new(),
        lifecycle: Vec::new(),
    }
}
fn row_template(
    module: &Module,
    key: &Key,
    value: &Value,
    parent: &Facts,
    created: &BTreeMap<Key, Value>,
) -> Option<RowTemplate> {
    if !template_supported(module, &key.0) {
        return None;
    }
    let facts = TemplateFacts { parent, created };
    let mut thin = BTreeMap::new();
    thin.insert(
        key.0.clone(),
        BTreeMap::from([(
            key.1.clone(),
            encode_param(module, &Type::Entity(key.0.clone()), value),
        )]),
    );
    let mut ev = Evaluator::new(module, &facts);
    ev.action_execution = ActionExecution::Current;
    ev.query_universe = Some(&thin);
    let mut out = empty_outcome();
    let mut stopped = false;
    run_child_row(&mut ev, &mut out, &mut stopped, key.clone(), value.clone());
    if stopped || !ev.derived.is_empty() || !ev.memo.is_empty() {
        return None;
    }
    let mut skipped = empty_outcome();
    let mut stopped = true;
    run_child_row(
        &mut ev,
        &mut skipped,
        &mut stopped,
        key.clone(),
        value.clone(),
    );
    Some(RowTemplate {
        trace: out.trace,
        skipped: skipped.trace,
        fields: ev.observed.fields,
        existence: ev.observed.existence,
        operands: ev.operand_values,
    })
}
impl PreparedSnapshot {
    pub(super) fn count(&self, entity: &str, world: &World, phase: Phase) -> Option<usize> {
        let rows = self.facts.universe.get(entity)?;
        if phase == Phase::S {
            return Some(rows.len());
        }
        let mut n = rows.len();
        for (t, id) in world.created.keys() {
            if t == entity {
                if rows.contains_key(id) {
                    return None;
                }
                n = n.checked_add(1)?;
            }
        }
        Some(n)
    }
    pub(super) fn run_child_rules(
        &self,
        ev: &mut Evaluator<'_>,
        out: &mut Outcome,
        stopped: &mut bool,
    ) {
        // Match complete_child's preflight failures before emitting any row trace.
        let preflight = (|| -> Result<(), String> {
            for (key, param) in &ev.world.bound {
                if self.typed.contains_key(key) {
                    let value = ev
                        .world
                        .s_prime
                        .get(param)
                        .ok_or_else(|| "internal: child binding has no value".to_string())?;
                    if !matches!(value,Value::Entity(fields) if fields.get("id").and_then(id_text).as_ref()==Some(&key.1))
                    {
                        return Err("internal: child identity disagrees with its typed key".into());
                    }
                }
            }
            if ev.world.created.keys().any(|k| self.typed.contains_key(k)) {
                return Err("internal: fresh creation replaced a live identity".into());
            }
            Ok(())
        })();
        if let Err(message) = preflight {
            *stopped = true;
            out.result = "ERROR";
            out.reasons.push(reason("EVALUATION_ERROR", message, None));
            return;
        }
        let mut parent = self.typed.iter().peekable();
        let created: Vec<_> = ev.world.created.keys().cloned().collect();
        let mut new = created.iter().peekable();
        while parent.peek().is_some() || new.peek().is_some() {
            let use_parent = match (parent.peek(), new.peek()) {
                (Some((p, _)), Some(n)) => p <= n,
                (Some(_), None) => true,
                _ => false,
            };
            if use_parent {
                let Some((key, value)) = parent.next() else {
                    break;
                };
                #[cfg(feature = "validation-work")]
                work::note(|w| w.child_rows += 1);
                if !ev.world.bound.contains_key(key)
                    && let Some(template) = self.templates.get(key)
                {
                    out.trace.extend(if *stopped {
                        template.skipped.clone()
                    } else {
                        template.trace.clone()
                    });
                    if !*stopped {
                        ev.observed.fields.extend(template.fields.clone());
                        for (k, v) in &template.existence {
                            if !ev.world.bound.contains_key(k) {
                                ev.observed.existence.insert(k.clone(), *v);
                            }
                        }
                        ev.operand_values.extend(template.operands.clone());
                    }
                } else {
                    let value = ev
                        .world
                        .bound
                        .get(key)
                        .and_then(|p| ev.world.s_prime.get(p))
                        .unwrap_or(value)
                        .clone();
                    run_child_row(ev, out, stopped, key.clone(), value);
                }
            } else if let Some(key) = new.next()
                && let Some(value) = ev.world.created.get(key).cloned()
            {
                run_child_row(ev, out, stopped, key.clone(), value);
            }
        }
    }
}
