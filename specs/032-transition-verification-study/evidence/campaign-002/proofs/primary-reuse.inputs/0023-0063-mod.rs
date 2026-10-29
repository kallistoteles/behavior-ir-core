//! Fixed finite-world exact transition checker. No runtime Core state is added.
pub mod commitment;
pub mod state;
pub mod step;
pub use state::{Fr, MachineState, Shape, StepWitness};
pub use step::{TransitionCircuit, check_step};
