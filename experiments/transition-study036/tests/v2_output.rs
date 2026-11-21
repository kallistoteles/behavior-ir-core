//! C12: successful bytes and performed I/O failures of the real output adapter.
#![allow(clippy::unwrap_used, clippy::expect_used)]
use serde_json::{Value, json};
use std::io::{self, Write};
use std::sync::{Arc, Mutex};
use transition_study036::output::{SyncOutput, deliver_buffered, write_new};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
enum Fault {
    None,
    Write,
    Flush,
    Sync,
}
#[derive(Default, Debug)]
struct Trace {
    bytes: Vec<u8>,
    writes: usize,
    flushes: usize,
    syncs: usize,
}
struct Observed {
    trace: Arc<Mutex<Trace>>,
    fault: Fault,
    max_write: usize,
}
impl Write for Observed {
    fn write(&mut self, bytes: &[u8]) -> io::Result<usize> {
        let mut t = self.trace.lock().unwrap();
        t.writes += 1;
        if self.fault == Fault::Write {
            return Err(io::Error::other("authored write failure"));
        }
        let n = bytes.len().min(self.max_write);
        t.bytes.extend_from_slice(&bytes[..n]);
        Ok(n)
    }
    fn flush(&mut self) -> io::Result<()> {
        self.trace.lock().unwrap().flushes += 1;
        if self.fault == Fault::Flush {
            Err(io::Error::other("authored flush failure"))
        } else {
            Ok(())
        }
    }
}
impl SyncOutput for Observed {
    fn synchronize(&mut self) -> io::Result<()> {
        self.trace.lock().unwrap().syncs += 1;
        if self.fault == Fault::Sync {
            Err(io::Error::other("authored sync failure"))
        } else {
            Ok(())
        }
    }
}
fn observer(fault: Fault, max_write: usize) -> (Observed, Arc<Mutex<Trace>>) {
    let trace = Arc::new(Mutex::new(Trace::default()));
    (
        Observed {
            trace: trace.clone(),
            fault,
            max_write,
        },
        trace,
    )
}
fn expected(value: &Value) -> Vec<u8> {
    let mut raw = serde_json::to_vec(value).unwrap();
    raw.push(b'\n');
    raw
}
#[test]
fn original_serializer_unicode_negative_zero_and_newline_survive_short_writes() {
    let value: Value = serde_json::from_str(
        r#"{"number":-0.0,"unicode":"å𝄞","control":"\u0000\n","duplicates":["x","x"]}"#,
    )
    .unwrap();
    for maximum in [1, 3, 65_536, usize::MAX] {
        let (writer, trace) = observer(Fault::None, maximum);
        deliver_buffered(writer, &value).unwrap();
        let trace = trace.lock().unwrap();
        assert_eq!(trace.bytes, expected(&value));
        assert_eq!(trace.flushes, 1);
        assert_eq!(trace.syncs, 1);
    }
}
#[test]
fn write_flush_and_sync_failures_never_return_completed_delivery_or_retry_on_drop() {
    let value = json!({"payload": "x".repeat(100_000)});
    for fault in [Fault::Write, Fault::Flush, Fault::Sync] {
        let (writer, trace) = observer(fault, usize::MAX);
        assert!(deliver_buffered(writer, &value).is_err());
        let trace = trace.lock().unwrap();
        match fault {
            Fault::Write => {
                assert_eq!(trace.writes, 1);
                assert_eq!(trace.flushes, 0);
                assert_eq!(trace.syncs, 0);
            }
            Fault::Flush => {
                assert_eq!(trace.flushes, 1);
                assert_eq!(trace.syncs, 0);
            }
            Fault::Sync => {
                assert_eq!(trace.bytes, expected(&value));
                assert_eq!(trace.flushes, 1);
                assert_eq!(trace.syncs, 1);
            }
            Fault::None => unreachable!(),
        }
    }
}
#[test]
fn real_buffer_reduces_underlying_write_calls_without_changing_the_stream() {
    let value = json!(
        (0..4096)
            .map(|i| json!({"id":i,"text":"abc"}))
            .collect::<Vec<_>>()
    );
    let (mut original, original_trace) = observer(Fault::None, usize::MAX);
    serde_json::to_writer(&mut original, &value).unwrap();
    original.write_all(b"\n").unwrap();
    original.synchronize().unwrap();
    let (buffered, buffered_trace) = observer(Fault::None, usize::MAX);
    deliver_buffered(buffered, &value).unwrap();
    let a = original_trace.lock().unwrap();
    let b = buffered_trace.lock().unwrap();
    assert_eq!(a.bytes, b.bytes);
    assert!(
        b.writes < a.writes,
        "buffering must act on actual Write calls"
    );
}
#[test]
fn create_collision_preserves_existing_file() {
    let root = std::env::temp_dir().join(format!("036-output-{}", std::process::id()));
    std::fs::create_dir(&root).unwrap();
    let path = root.join("output.json");
    std::fs::write(&path, b"previous complete artifact\n").unwrap();
    assert!(write_new(&path, &json!({"new":true})).is_err());
    assert_eq!(
        std::fs::read(&path).unwrap(),
        b"previous complete artifact\n"
    );
    std::fs::remove_dir_all(root).unwrap();
}

#[allow(dead_code)]
#[path = "v2_support.rs"]
mod support;

#[test]
fn delivery_failure_preserves_a_confirmed_backend_head_and_exact_continuation()
-> transition_study036::error::Result<()> {
    use transition_study036::{
        ground::{Ground, Status},
        observation, reference,
    };
    let mut ground = Ground::supplied(reference::parent("growth-D1")?);
    ground.check(support::checked()?, &support::expected()?)?;
    ground.enable_views(true)?;
    ground.select_retention(true)?;
    let actual = ground.invoke(&reference::request("finish"))?;
    let confirmed = ground.history()?;
    assert_eq!(confirmed, actual["after_history"]);
    let (writer, trace) = observer(Fault::Write, usize::MAX);
    assert!(deliver_buffered(writer, &actual).is_err());
    assert_eq!(trace.lock().unwrap().syncs, 0);
    assert_eq!(ground.status(), Status::Established);
    assert_eq!(ground.history()?, confirmed);
    let continued = ground.invoke(&reference::request("finish"))?;
    observation::compare(&continued, &support::expected()?["drain_expected"])?;
    Ok(())
}
