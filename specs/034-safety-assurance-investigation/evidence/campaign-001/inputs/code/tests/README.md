# Test execution

Use `python3 -m unittest discover -s experiments/assurance-study034/tests -p 'test_*.py'`
for metadata/supervisor checks. Rust checks use the standalone manifest with its
private Cargo home/target, offline locked dependencies and pinned Rust 1.98.1.
Kernel checks require the actual pinned Safety-compatible Lean derivation.

Each test group retains an intended-red receipt before implementation and a green
receipt afterwards. Keep development receipts outside scientific campaign samples.
Do not run heavy builds, proofs or measurements concurrently. Source, tool, exact
argv, affinity, limits and output hashes must accompany a claimed executed check.
