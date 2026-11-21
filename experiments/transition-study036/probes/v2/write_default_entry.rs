//! Isolate the actual standard-library default; no copied algorithm body.
pub fn default_write<W: std::io::Write + ?Sized>(
    writer: &mut W,
    bytes: &[u8],
) -> std::io::Result<()> {
    <W as std::io::Write>::write_all(writer, bytes)
}
