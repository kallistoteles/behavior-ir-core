#![forbid(unsafe_code)]
pub fn bytes(slice: &[u8]) -> usize { slice.len() }
pub fn words(slice: &[u32]) -> usize { slice.len() }
pub fn zero_sized(slice: &[()]) -> usize { slice.len() }
pub fn generic<T>(slice: &[T]) -> usize { slice.len() }
