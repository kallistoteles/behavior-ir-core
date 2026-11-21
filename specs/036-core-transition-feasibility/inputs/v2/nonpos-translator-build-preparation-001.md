# Source-bound translator build

Prerequisites: closed successful source preparation273 and real dependency installation288. Build a fresh copy of exact pinned Aeneas/Charon sources, preserving src/charon link semantics. Dune release main.exe, one job, explicit private dependencies and disabled Dune cache. Retain emitted binary in separately accounted owned temporary storage and verify exact version, help, executable identity and unchanged original/compiled input leaves. No backend replacement or semantic proof status is implied.
