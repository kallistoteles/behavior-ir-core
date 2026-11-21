//! C10/C11: treatment is an executed fixed-role path, never a supplied flag.
#![allow(clippy::unwrap_used, clippy::expect_used)]
use serde_json::json;
use std::io::{self, Write};
use transition_study036::output::{DeliveryMode, SyncOutput, deliver};
use transition_study036::run_v2::Role;

#[derive(Default)]
struct Sink {
    bytes: Vec<u8>,
}
impl Write for Sink {
    fn write(&mut self, bytes: &[u8]) -> io::Result<usize> {
        self.bytes.extend_from_slice(bytes);
        Ok(bytes.len())
    }
    fn flush(&mut self) -> io::Result<()> {
        Ok(())
    }
}
impl SyncOutput for Sink {
    fn synchronize(&mut self) -> io::Result<()> {
        Ok(())
    }
}
#[test]
fn fixed_roles_select_actual_output_mechanism() {
    assert_eq!(Role::Reference.delivery_mode(), DeliveryMode::Original);
    assert_eq!(Role::Reuse.delivery_mode(), DeliveryMode::Original);
    assert_eq!(Role::Buffered.delivery_mode(), DeliveryMode::Buffered);
    let value = json!(
        (0..4096)
            .map(|i| json!({"id":i,"value":"abc"}))
            .collect::<Vec<_>>()
    );
    let original = deliver(Sink::default(), &value, Role::Reuse.delivery_mode(), true).unwrap();
    let buffered = deliver(
        Sink::default(),
        &value,
        Role::Buffered.delivery_mode(),
        true,
    )
    .unwrap();
    assert_eq!(original.bytes, buffered.bytes);
    assert!(buffered.underlying_write_calls.unwrap() < original.underlying_write_calls.unwrap());
    assert!(buffered.buffered);
    assert!(!original.buffered);
}
#[test]
fn timing_and_diagnostic_modes_execute_the_same_required_stream() {
    let value = json!({"negative_zero": -0.0, "value":"a".repeat(150_000)});
    for mode in [DeliveryMode::Original, DeliveryMode::Buffered] {
        let timing = deliver(Sink::default(), &value, mode, false).unwrap();
        let diagnostic = deliver(Sink::default(), &value, mode, true).unwrap();
        assert_eq!(timing.bytes, diagnostic.bytes);
        assert_eq!(timing.buffered, diagnostic.buffered);
        assert_eq!(timing.underlying_write_calls, None);
        assert!(diagnostic.underlying_write_calls.unwrap() > 0);
    }
}

#[path = "v2_operation.rs"]
mod actual_pair_controls;
