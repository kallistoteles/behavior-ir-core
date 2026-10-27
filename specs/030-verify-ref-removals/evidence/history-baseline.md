# Genuine verifier 0.10 history

Captured before production changes with `consumer/examples/capture_proof10_history.rs`.
The harness asserts 0.10.0 and requires nonempty signed manifests, action and migration
commits, successful data/behavior replay and exact original-event recovery. Production
libraries are unchanged Core 0.15.0. See the fixture manifest for source/harness/binary
and immutable artifact hashes; `history-capture.txt` retains actual execution output.
Metadata inspection initially addressed the wrong envelope key; artifact bytes were
not altered or regenerated. The actual manifest is `expected_check_manifest`.
