#![forbid(unsafe_code)]
extern crate core036_unit_dependency;
pub fn marker_entry(value: u64) -> u64 { core036_unit_dependency::marker(value) }
