//! Untrusted full replay support; producer success is never an input premise.
use crate::{fixtures::Config,subject::Subject,types::*};
use serde::{Deserialize,Serialize};
#[derive(Debug,Clone,PartialEq,Eq,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct ReplaySupport {
    pub config:Config,
    pub initial_population:usize,
    pub prefix:Vec<Operation>,
}
#[derive(Debug,Clone,PartialEq,Eq,Serialize,Deserialize)]
#[serde(deny_unknown_fields)]
pub struct TransitionWitness {
    pub subject:Subject,
    pub before:OperationalState,
    pub proposed:ReferenceObservation,
    pub support:ReplaySupport,
}
