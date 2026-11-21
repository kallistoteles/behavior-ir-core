#![forbid(unsafe_code)]
extern crate core036_read_dependency;
pub fn entry(state: core036_read_dependency::State, bytes: &[u8]) -> (std::io::Result<usize>, core036_read_dependency::State) {
    core036_read_dependency::run(state, bytes)
}
