# Canonicalization fixtures

The baseline directory contains exact UTF-8 canonical output from Core 20d3fd2439e4c4b50f75d8f1e03f56aeb4502e9f using Rust 1.98.1 and Z3 4.16.0. Provenance, capture sources, hashes and commands are in specs/021-canonicalization-errors/evidence/. Do not regenerate expected bytes with the corrected implementation. Cold and warm reports have separate expected bytes and the same attestation identity. The fixed signing seed is synthetic test data only. Reuse existing fixture loaders and scenarios.

The 16-file primary corpus is rechecked by the adapted baseline harness in
`consumer/tests/canonicalization_preservation.rs` and its governance support
module. These reuse the original capture flows with `save` changed to compare
against the immutable expected bytes. `cli-baseline/` adds five generated direct
output controls, captured later from the separately built pinned baseline binary;
`evidence/baseline-cli.json` records their exact commands, bytes and newline state.
They are positive characterization controls, not new runtime RED premises.
