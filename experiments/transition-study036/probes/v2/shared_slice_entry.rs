#![forbid(unsafe_code)]
extern crate core036_slice_metadata;
pub fn bytes(s: &[u8]) -> usize { core036_slice_metadata::bytes(s) }
pub fn words(s: &[u32]) -> usize { core036_slice_metadata::words(s) }
pub fn zero_sized(s: &[()]) -> usize { core036_slice_metadata::zero_sized(s) }
pub fn generic<T>(s: &[T]) -> usize { core036_slice_metadata::generic(s) }
