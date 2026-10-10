//! Validation as an ordered violation/error view, with one result delta contract.
//! Full evaluation remains reference semantics; row-map derivatives are selected
//! only after proving the complete input closure. This module is workspace-internal.
use crate::delta::Replacement;
use crate::facts::EvaluationFacts;
use crate::semantic::expr::{Expr, ExprKind};
use crate::semantic::module::Module;
use crate::semantic::types::{Hash, SemanticProfile};
use serde_json::Value as Json;
use std::collections::{BTreeMap, BTreeSet};

pub type Key = (String, String);
pub type ValidationOutcome = Result<(), Vec<String>>;

/// Canonical resulting rows. Indexed access lets row derivatives avoid enumeration.
pub trait RowSource {
    fn row(&self, key: &Key) -> Option<&Json>;
    fn rows(&self) -> Box<dyn Iterator<Item = (Key, &Json)> + '_>;
}
impl RowSource for BTreeMap<Key, Json> {
    fn row(&self, key: &Key) -> Option<&Json> {
        self.get(key)
    }
    fn rows(&self) -> Box<dyn Iterator<Item = (Key, &Json)> + '_> {
        Box::new(self.iter().map(|(k, v)| (k.clone(), v)))
    }
}

pub struct ValidationPlan<'a> {
    module: &'a Module,
    row_maps: BTreeMap<String, bool>,
}
impl<'a> ValidationPlan<'a> {
    pub fn new(module: &'a Module) -> Self {
        let row_maps = module
            .entities()
            .keys()
            .map(|entity| {
                let constraints = module.constraints_for(entity).all(|(_, c)| {
                    c.reference().is_some()
                        || row_local(
                            module,
                            c.body(),
                            &BTreeSet::from([c.param().to_string()]),
                            &mut BTreeSet::new(),
                        )
                });
                let invariants = module.invariants_for(entity).all(|(_, i)| {
                    row_local(
                        module,
                        i.body(),
                        &BTreeSet::from([i.param().to_string()]),
                        &mut BTreeSet::new(),
                    )
                });
                (entity.clone(), constraints && invariants)
            })
            .collect();
        Self { module, row_maps }
    }
    /// Exact derivative when the caller supplies a bound, fully valid parent.
    /// `affected` includes changed keys AND unchanged Ref sources whose target
    /// membership changes. Missing rows retract their previous (empty) witnesses.
    /// Non-row nodes use their reference derivative; none is skipped as unsupported.
    pub fn derivative_from_valid(
        &self,
        child: &dyn RowSource,
        affected: &BTreeSet<Key>,
        facts: &dyn EvaluationFacts,
    ) -> Replacement<ValidationOutcome> {
        let mut scopes = affected.clone();
        // Full result of each reference entity node, with its old empty witnesses
        // supplied by the exact valid-parent materialization.
        if self.row_maps.values().any(|local| !local) {
            scopes.extend(
                child
                    .rows()
                    .filter(|(k, _)| !self.row_maps.get(&k.0).copied().unwrap_or(false))
                    .map(|(k, _)| k),
            );
        }
        let mut witnesses = Vec::new();
        for key in scopes {
            if let Some(row) = child.row(&key) {
                witnesses.extend(crate::eval::snapshot_row_failures(
                    self.module,
                    &key.0,
                    &key.1,
                    row,
                    facts,
                ));
            }
        }
        // Module obligations are reference nodes. Preserve the complete evaluator's
        // canonical rule order and lazy/error behavior, even for no row changes.
        if let Err(errors) = crate::eval::check_global_invariants(self.module, facts) {
            witnesses.extend(errors);
        }
        let after = if witnesses.is_empty() {
            Ok(())
        } else {
            Err(witnesses)
        };
        Replacement::between(Ok(()), after)
    }
}

fn row_local(
    module: &Module,
    e: &Expr,
    bindings: &BTreeSet<String>,
    visiting: &mut BTreeSet<Hash>,
) -> bool {
    match e.kind() {
        ExprKind::Lit(_) => true,
        ExprKind::Param(p) | ExprKind::Field { param: p, .. } => bindings.contains(p),
        ExprKind::DerivedRef { name, target, args } => {
            let name = if module.semantic_profile() == SemanticProfile::CommandIntents {
                module
                    .derived_items()
                    .iter()
                    .find(|(_, d)| d.hash() == target)
                    .map(|(n, _)| n)
                    .unwrap_or(name)
            } else {
                name
            };
            let Some(d) = module.derived(name) else {
                return false;
            };
            if d.params().len() != args.len()
                || args.iter().any(|p| !bindings.contains(p))
                || !visiting.insert(*d.hash())
            {
                return false;
            }
            let inner = d.params().iter().map(|p| p.name().to_string()).collect();
            let local = row_local(module, d.body(), &inner, visiting);
            visiting.remove(d.hash());
            local
        }
        // Each of these depends only on its supplied operands, including errors
        // and suppressed children. Reuse ordinary evaluation on changed rows.
        ExprKind::Cmp(..)
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
        | ExprKind::EnumMap { .. } => e
            .children()
            .iter()
            .all(|c| row_local(module, c, bindings, visiting)),
        ExprKind::Exists(_)
        | ExprKind::Referenced(_)
        | ExprKind::Count(_)
        | ExprKind::Fold { .. } => false,
    }
}
#[cfg(test)]
mod tests;
