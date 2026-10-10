//! Private test-only complete-result reference derivative; no runtime/API contract.
//!
//! Every full operator has a reference derivative over its COMPLETE output domain;
//! `Result` errors are values of that domain, not errors of derivative construction.

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
}
impl<X: PartialEq, Y, F: Fn(&X) -> Y> DeltaOperator<X, Y> for F {
    fn full(&self, input: &X) -> Y {
        self(input)
    }
}
