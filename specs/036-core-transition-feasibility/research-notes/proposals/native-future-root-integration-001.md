# Native future-store integration: pending corrective slice

Unselected source-only proposal, 2026-11-21. Actual480 is declared under r9503 and must retain its real result. No source mutation is authorized inside that running subject.

`tests/v2_raw_oracle.rs:89` explicitly constructs only raw/work input roots. The native fixture embeds the controller-supplied source reference; r9503 is owned by the independently registered future_evidence root. The existing fixture therefore cannot resolve that reference. `native_build.py` also constructs its executable-comparison roots with raw/work only. Generic Rust InputRoots already accepts independently supplied named roots; the production artifact reader does not require a new acceptance rule.

A corrective successor should derive work/future_evidence input roots from the existing controller artifact_context_for, check the expected repository/private/work ownership, pass that map explicitly in the controlled native environment, and let test fixtures add only their owned raw root. Executable comparisons must use the same caller-owned map plus the selected raw fixture. Requests/packets must never grant a new root. Keep old source refs and historical roots unchanged. Establish the actual missing-root failure before claiming the correction passes; rerun the affected current native targets and whole original comparisons. No semantic proof follows from storage integration.

Also retain actual compile-unit messages, compiler invocation records, source/embedding byte relations, explicit target/configuration and separately built original oracle. A changed identity needs fresh workers; do not relabel native329.
