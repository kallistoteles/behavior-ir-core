//! Safe minimal canary for a never-returning call followed by a common join.
pub trait Stop {
    fn stop(index: usize, length: usize, repeated_length: usize) -> !;
}

#[inline(never)]
pub fn remaining<S: Stop>(index: usize, length: usize) -> usize {
    if index > length {
        S::stop(index, length, length);
    }
    length - index
}
