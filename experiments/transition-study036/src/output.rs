//! Original JSON/newline delivery; B buffers the same byte stream at 64 KiB.
use crate::error::Result;
use serde_json::Value;
use std::fs::{File, OpenOptions};
use std::io::{self, BufWriter, Write};
use std::path::Path;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum DeliveryMode {
    Original,
    Buffered,
}
pub trait SyncOutput: Write {
    fn synchronize(&mut self) -> io::Result<()>;
}
impl SyncOutput for File {
    fn synchronize(&mut self) -> io::Result<()> {
        self.sync_all()
    }
}
#[derive(Debug, serde::Serialize)]
pub struct Delivery {
    pub bytes: u64,
    pub underlying_write_calls: Option<u64>,
    pub buffered: bool,
}
struct Counted<W> {
    inner: W,
    bytes: u64,
    calls: Option<u64>,
}
impl<W: Write> Write for Counted<W> {
    fn write(&mut self, bytes: &[u8]) -> io::Result<usize> {
        if let Some(calls) = &mut self.calls {
            *calls = calls
                .checked_add(1)
                .ok_or_else(|| crate::native_io::other("WriteCounterOverflow"))?;
        }
        let accepted = self.inner.write(bytes)?;
        self.bytes = self
            .bytes
            .checked_add(accepted as u64)
            .ok_or_else(|| crate::native_io::other("OutputByteCounterOverflow"))?;
        Ok(accepted)
    }
    fn flush(&mut self) -> io::Result<()> {
        self.inner.flush()
    }
}
fn buffered_content<W: Write>(buffered: &mut BufWriter<Counted<W>>, value: &Value) -> Result<()> {
    crate::serialization::write_value(buffered, value)?;
    buffered.write_all(b"\n")?;
    buffered.flush()?;
    Ok(())
}

pub fn deliver<W: SyncOutput>(
    writer: W,
    value: &Value,
    mode: DeliveryMode,
    diagnostic: bool,
) -> Result<Delivery> {
    let counted = Counted {
        inner: writer,
        bytes: 0,
        calls: diagnostic.then_some(0),
    };
    let mut delivered = match mode {
        DeliveryMode::Original => {
            let mut output = counted;
            crate::serialization::write_value(&mut output, value)?;
            output.write_all(b"\n")?;
            output
        }
        DeliveryMode::Buffered => {
            let mut buffered = BufWriter::with_capacity(65_536, counted);
            let result = buffered_content(&mut buffered, value);
            // Extract on BOTH success and error: Drop must not retry failed
            // buffered output or conceal a delivery error behind cleanup.
            let (output, remaining) = buffered.into_parts();
            result?;
            let remaining =
                remaining.map_err(|_| crate::native_io::other("BufferedWriterPanicked"))?;
            if !remaining.is_empty() {
                return Err(crate::native_io::other("UnflushedOutput").into());
            }
            output
        }
    };
    delivered.inner.synchronize()?;
    Ok(Delivery {
        bytes: delivered.bytes,
        underlying_write_calls: delivered.calls,
        buffered: mode == DeliveryMode::Buffered,
    })
}
pub fn deliver_buffered<W: SyncOutput>(writer: W, value: &Value) -> Result<Delivery> {
    deliver(writer, value, DeliveryMode::Buffered, true)
}
pub fn write_new(path: &Path, value: &Value) -> Result<Delivery> {
    write_new_mode(path, value, DeliveryMode::Buffered, true)
}
pub fn write_new_mode(
    path: &Path,
    value: &Value,
    mode: DeliveryMode,
    diagnostic: bool,
) -> Result<Delivery> {
    let file = OpenOptions::new().write(true).create_new(true).open(path)?;
    deliver(file, value, mode, diagnostic)
}
