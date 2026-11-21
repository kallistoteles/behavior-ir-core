//! Concrete standard I/O-error boundary; it preserves the original constructor.
//! Its runtime model/source refinement remains an explicit proof obligation.

pub fn other(message: &'static str) -> std::io::Error {
    std::io::Error::other(message)
}
