//! A safe static call with an observable effect before it never returns.
//! For extraction, include `remaining`; keep `stop` an external call boundary.
use std::sync::atomic::{AtomicUsize, Ordering};

static STOP_COUNT: AtomicUsize = AtomicUsize::new(0);

pub fn take_stop_count() -> usize {
    STOP_COUNT.swap(0, Ordering::SeqCst)
}

#[inline(never)]
pub fn stop(index: usize, length: usize, repeated_length: usize) -> ! {
    STOP_COUNT.fetch_add(1, Ordering::SeqCst);
    assert_eq!(length, repeated_length);
    panic!("stop: {index} {length}");
}

#[inline(never)]
pub fn remaining(index: usize, length: usize) -> usize {
    if index > length {
        stop(index, length, length);
    }
    length - index
}
