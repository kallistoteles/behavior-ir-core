//! Fixed finite-world exact transition checker. No runtime Core state is added.
pub mod state;
pub mod step;
pub mod commitment;
pub use state::{MachineState,Shape,StepWitness,Fr};
pub use step::{TransitionCircuit,check_step};
