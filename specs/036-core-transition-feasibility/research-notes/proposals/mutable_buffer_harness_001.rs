// UNSELECTED/UNCOMPILED proposal. Component checks; no Core/native proof claim.
#![forbid(unsafe_code)]
extern crate core036_read_dependency;
use core036_read_dependency::{State, Step};
use std::io::{Error, ErrorKind, Read};

struct FailOnce {
    error: Option<Error>,
    seen: bool,
}

impl Step for FailOnce {
    fn step(&mut self, _bytes: &[u8]) -> std::io::Result<usize> {
        assert!(!self.seen, "unexpected second call after an error");
        self.seen = true;
        Err(self.error.take().expect("first error must still be owned"))
    }
}

fn check_error(error: Error) {
    let expected_kind = error.kind();
    let expected_text = error.to_string();
    let mut state = FailOnce { error: Some(error), seen: false };
    let error = state.twice(&[1]).expect_err("first error must propagate");
    assert_eq!(error.kind(), expected_kind);
    assert_eq!(error.to_string(), expected_text);
    assert!(state.seen);
    assert!(state.error.is_none());
}

fn main() {
    for seen in [false, true] {
        for bytes in [&[][..], &[7][..], &[9; 17][..]] {
            let (result, state) = core036_read_dependency::run(State { seen }, bytes);
            assert_eq!(result.expect("successful state step"), bytes.len());
            assert!(state.seen);
        }
    }
    check_error(Error::from(ErrorKind::Other));
    check_error(Error::from(ErrorKind::Interrupted));
    check_error(Error::from_raw_os_error(4));
    check_error(Error::new(ErrorKind::Other, "arbitrary payload\0å🙂"));
    let mut empty: &[u8] = &[];
    let static_message = empty.read_exact(&mut [0]).expect_err("empty input");
    check_error(static_message);
    println!("core036-buffer-harness: ok");
}
