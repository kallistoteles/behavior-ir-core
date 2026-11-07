//! Identity-only smoke guest. No Core semantics, origin or prefix claim.
#![no_main]
#![no_std]
extern crate alloc;
use risc0_zkvm::guest::env;
risc0_zkvm::guest::entry!(main);
fn main() {
    let words: alloc::vec::Vec<u64> = env::read();
    assert_eq!(words.len(), 43);
    env::commit(&words);
}
