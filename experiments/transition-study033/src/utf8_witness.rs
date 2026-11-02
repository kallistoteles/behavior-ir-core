//! Verify an untrusted proposed UTF-8 decoding against the original bytes.
//!
//! The generated scalar encoder has separately checked source/matrix semantics.
//! This host loop is an integration implementation; its physical-machine/source
//! refinement remains required before it can confer certified K authority.
use crate::profile::Error;

// Keep the independently checked instruction stream byte-identical, including
// explicit zero-bit shifts produced by the lowering function.
#[allow(clippy::identity_op)]
mod scalar {
    include!("../generated/utf8-001/checker_step.rs");
}

/// Check canonical bytes, scalar validity, bounds and complete field consumption.
/// `maximum` is supplied by the enclosing frozen record-field schema.
pub fn verify(bytes: &[u8], proposed_scalars: &[u32], maximum: usize) -> Result<(), Error> {
    if bytes.len() > maximum || proposed_scalars.len() > bytes.len() {
        return Err(Error::Invalid("UTF-8 witness exceeds field bound".into()));
    }
    let mut position = 0_usize;
    for &word in proposed_scalars {
        let encoded = scalar::checker_step(word);
        if encoded[5] != 1 {
            return Err(Error::Rejected("invalid Unicode scalar witness".into()));
        }
        let width = usize::try_from(encoded[4])
            .map_err(|_| Error::Rejected("UTF-8 width does not fit target".into()))?;
        if !(1..=4).contains(&width) {
            return Err(Error::Rejected("invalid UTF-8 encoding width".into()));
        }
        let end = position
            .checked_add(width)
            .ok_or_else(|| Error::Rejected("UTF-8 witness offset overflow".into()))?;
        let actual = bytes
            .get(position..end)
            .ok_or_else(|| Error::Rejected("truncated UTF-8 witness field".into()))?;
        for (byte, expected) in actual.iter().zip(&encoded[..width]) {
            if u32::from(*byte) != *expected {
                return Err(Error::Rejected("noncanonical UTF-8 witness bytes".into()));
            }
        }
        position = end;
    }
    if position != bytes.len() {
        return Err(Error::Rejected(
            "unconsumed UTF-8 witness field bytes".into(),
        ));
    }
    Ok(())
}
