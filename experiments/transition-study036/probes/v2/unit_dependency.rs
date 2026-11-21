#![forbid(unsafe_code)]
pub struct Marker;
#[inline(never)]
pub fn consume_unit(value: u64, _unit: ()) -> u64 { value }
#[inline(never)]
pub fn consume_marker(value: u64, _marker: Marker) -> u64 { value }
#[inline(never)]
pub fn consume_tuple(value: u64, _tuple: (u8,)) -> u64 { value }
pub fn unit(value: u64) -> u64 { consume_unit(value, ()) }
pub fn marker(value: u64) -> u64 { consume_marker(value, Marker) }
pub fn tuple(value: u64) -> u64 { consume_tuple(value, (7,)) }
