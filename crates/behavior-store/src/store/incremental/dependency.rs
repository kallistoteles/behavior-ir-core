//! Conservative whole-module proof guard. Unknown dependencies are affected.
use behavior_core::semantic::expr::{Expr, ExprKind};
use behavior_core::semantic::module::Module;
use behavior_core::semantic::types::{Hash, SemanticProfile};
use std::collections::BTreeSet;
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
            derived_local(module, name, target, args, bindings, visiting)
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

pub(super) fn local_module(module: &Module) -> bool {
    module.global_invariants().is_empty()
        && module.constraints().values().all(|c| {
            c.reference().is_some()
                || row_local(
                    module,
                    c.body(),
                    &BTreeSet::from([c.param().to_string()]),
                    &mut BTreeSet::new(),
                )
        })
        && module.invariants().values().all(|i| {
            row_local(
                module,
                i.body(),
                &BTreeSet::from([i.param().to_string()]),
                &mut BTreeSet::new(),
            )
        })
}

#[cfg(test)]
mod tests;

fn derived_local(
    module: &Module,
    name: &str,
    target: &Hash,
    args: &[String],
    bindings: &BTreeSet<String>,
    visiting: &mut BTreeSet<Hash>,
) -> bool {
    let name = if module.semantic_profile() == SemanticProfile::CommandIntents {
        module
            .derived_items()
            .iter()
            .find(|(_, d)| d.hash() == target)
            .map(|(n, _)| n.as_str())
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
