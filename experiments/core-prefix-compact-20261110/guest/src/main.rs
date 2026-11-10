#![forbid(unsafe_code)]
#[path = "../../../local-k-study-20261109/auth.rs"]
mod auth;
#[path = "../../compact.rs"]
mod compact;
#[path = "../../../local-k-study-20261109/kernel.rs"]
#[allow(dead_code)]
mod kernel;
#[path = "../../prefix_logic.rs"]
mod prefix_logic;
fn main() {
    let mut inputs = [vec![], vec![]];
    for raw in &mut inputs {
        let size: u32 = risc0_zkvm::guest::env::read();
        assert!(size <= 262144);
        raw.resize(size as usize, 0);
        risc0_zkvm::guest::env::read_slice(raw.as_mut_slice());
    }
    let output = prefix_logic::run(&inputs);
    risc0_zkvm::guest::env::commit_slice(output.as_slice());
}
