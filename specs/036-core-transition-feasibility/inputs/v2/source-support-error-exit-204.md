# Correct actual Charon start-from lookup restriction

Actual316 fails at actual Charon lookup: --start-from only supports impl patterns if they are the first element of the path. The OCaml matcher grammar accepts nested impl patterns but the Rust frontend start-from resolver has this additional restriction. No LLBC generation/namespace typecheck success is inferred. Source validation passes, no resource stop, descendants closed. Preserve316.

Successor317 changes only the root string for diagnostic error-exit to {crate::error::StudyError}::exit_code, placing the inherent impl first as the actual warning requires. Actual compiled Rust9246, source/cfg/tools,303 workers and all limits unchanged. No source body modification, alternative Rust implementation, helper proof closure or native equivalence claim.57/153 tasks checked; all B01-B10 and accepted measurements remain unestablished/0.
