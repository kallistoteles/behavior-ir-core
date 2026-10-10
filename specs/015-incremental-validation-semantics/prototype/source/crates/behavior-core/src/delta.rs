//! Internal workspace delta contract. The supported facade need not expose this module.
//!
//! Every full operator has a reference derivative over its COMPLETE output domain;
//! `Result` errors are values of that domain, not errors of derivative construction.
use crate::semantic::expr::{Expr, ExprKind, FoldOp, QueryKind, QueryNode, SetOp};

#[derive(Debug, Clone, PartialEq, Eq, thiserror::Error)]
pub enum DeltaError {
    #[error("delta does not belong to this parent input")]
    WrongParent,
}

/// Exact replacement, including error-to-error changes. No lossy equality/hash key.
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct Replacement<T> {
    before: T,
    after: T,
}
impl<T> Replacement<T> {
    pub fn between(before: T, after: T) -> Self {
        Self { before, after }
    }
    pub fn before(&self) -> &T {
        &self.before
    }
    pub fn after(&self) -> &T {
        &self.after
    }
}
impl<T: PartialEq + Clone> Replacement<T> {
    pub fn apply(&self, old: &T) -> Result<T, DeltaError> {
        if old != &self.before {
            return Err(DeltaError::WrongParent);
        }
        Ok(self.after.clone())
    }
}

/// The reference derivative is the specification of any optimized derivative.
/// Both return the identical carrier. A new operator needs only its full semantics
/// to acquire an exact derivative; overrides require an equivalence argument.
pub trait DeltaOperator<X: PartialEq, Y> {
    fn full(&self, input: &X) -> Y;
    fn reference_delta(
        &self,
        input: &X,
        delta: &Replacement<X>,
    ) -> Result<Replacement<Y>, DeltaError> {
        if input != delta.before() {
            return Err(DeltaError::WrongParent);
        }
        Ok(Replacement::between(
            self.full(input),
            self.full(delta.after()),
        ))
    }
    fn delta(&self, input: &X, delta: &Replacement<X>) -> Result<Replacement<Y>, DeltaError> {
        self.reference_delta(input, delta)
    }
}
impl<X: PartialEq, Y, F: Fn(&X) -> Y> DeltaOperator<X, Y> for F {
    fn full(&self, input: &X) -> Y {
        self(input)
    }
}

/// Exhaustive matches force new semantic variants to receive an inventory mapping.
pub fn operator_name(e: &Expr) -> &'static str {
    match e.kind() {
        ExprKind::Lit(_) => "Lit",
        ExprKind::Field { .. } => "Field",
        ExprKind::Param(_) => "Param",
        ExprKind::DerivedRef { .. } => "DerivedRef",
        ExprKind::Cmp(..) => "Cmp",
        ExprKind::Arith(..) => "Arith",
        ExprKind::And(_) => "And",
        ExprKind::Or(_) => "Or",
        ExprKind::Not(_) => "Not",
        ExprKind::In(..) => "In",
        ExprKind::IsNone(_) => "IsNone",
        ExprKind::IsSome(_) => "IsSome",
        ExprKind::ValueOr(..) => "ValueOr",
        ExprKind::Some(_) => "Some",
        ExprKind::ToDecimal(_) => "ToDecimal",
        ExprKind::Wrap(_) => "Wrap",
        ExprKind::Unwrap(_) => "Unwrap",
        ExprKind::Rescale { .. } => "Rescale",
        ExprKind::Exists(_) => "Exists",
        ExprKind::Referenced(_) => "Referenced",
        ExprKind::Count(_) => "Count",
        ExprKind::StrictUnwrap(_) => "StrictUnwrap",
        ExprKind::EnumMap { .. } => "EnumMap",
        ExprKind::Fold { op, .. } => match op {
            FoldOp::Any => "Any",
            FoldOp::All => "All",
            FoldOp::Sum => "Sum",
            FoldOp::Min => "Min",
            FoldOp::Max => "Max",
            FoldOp::Unique => "Unique",
        },
    }
}
pub fn query_name(q: &QueryNode) -> &'static str {
    match q.kind() {
        QueryKind::Select => "Select",
        QueryKind::Where { .. } => "Where",
        QueryKind::Set { op, .. } => match op {
            SetOp::Union => "Union",
            SetOp::Intersection => "Intersection",
            SetOp::Difference => "Difference",
        },
    }
}
pub const OPERATOR_NAMES: &[&str] = &[
    "Lit",
    "Field",
    "Param",
    "DerivedRef",
    "Cmp",
    "Arith",
    "And",
    "Or",
    "Not",
    "In",
    "IsNone",
    "IsSome",
    "ValueOr",
    "Some",
    "ToDecimal",
    "Wrap",
    "Unwrap",
    "Rescale",
    "Exists",
    "Referenced",
    "Count",
    "Any",
    "All",
    "Sum",
    "Min",
    "Max",
    "Unique",
    "StrictUnwrap",
    "EnumMap",
    "Select",
    "Where",
    "Union",
    "Intersection",
    "Difference",
];
#[cfg(test)]
mod tests;
