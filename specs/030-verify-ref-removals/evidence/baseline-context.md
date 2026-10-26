# Baseline context

Default Profile: rlimit 20,000,000; wall guard 60,000ms per solver call.
Existing controls: verifier lifecycle/resulting_state_order/cache/solver/trusted_verification/migration;
CLI cli_verify/cli_engine_info; Store proof_version_history; public consumer canonicalization.
Fresh policies/canonicalization bind verifier 0.10; archive decoder accepts 0.7/0.8/0.9 plus current.
The 0.10 archive arm must become explicit before current changes. New current fixtures need new names.

Initial protected content digests:

```json
{
  "Cargo.lock": "e00df246625b24317e3c3c99f4feed4336db1545d99034575caa37809062653f",
  "rust-toolchain.toml": "706f35f67156a1a378d28055a67ba3bf84dac8091968a409fb0c27e7003bd83c",
  "crates/behavior-core/src/eval.rs": "d0ac97f5cb290b70be8eb812e5bb712d8d83519d20a14c638b368edd83d9776f",
  "crates/behavior-engine/src/lib.rs": "fae8e350de07a91b7564426d8897878304b43981e45ff191e08cf1c9ed4a2cc7",
  "crates/behavior-store/src/lib.rs": "f6f3aac4f7546d49b36f1c3c68f8975b42771b1e71df23b4c52c7bba9e728287"
}
```
