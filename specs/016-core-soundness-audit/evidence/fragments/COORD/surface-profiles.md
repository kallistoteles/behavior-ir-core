# Public surface and applicability axes

Evidence E-COORD-010: baseline source inspection, `1e286ebcf1d61117320c57df155fa1ef9397e880`; no execution claim. The accompanying JSON inventories each supported public surface entry, every schema/fixture and CLI command. All entries link to their enforcing facade and owning semantic lane; actual mathematical correspondence is reconciled at B1 and final coverage.

| Axis | Actual baseline distinction | Authority |
| --- | --- | --- |
| Release | 0.12.1; exact1e286 revision, same-tree main merge distinct provenance | Cargo.toml, baseline.json |
| Fresh module admission | wire0.4–0.8; earlier rounded arithmetic0.1–0.3 explicitly refused | wire.rs:1016–1022; E-COORD-011 actual decoder refusals |
| Runtime semantic profile | exact precommand versus command-enabled0.8; constraints/lifecycle/query/read gates differ per decoder; no hidden reinterpretation | semantic/types.rs; wire.rs decoder; docs/versioning.md |
| Read document | standalone read IR0.7; evaluated according to admitted module profile | wire.rs:967–983; read.rs |
| Decision records |0.4 ordinary,0.5 lifecycle,0.6 queries,0.7 commands | eval.rs:25–30; record.rs:7 |
| Read records |v1 historical interpretation remains even for old Wire0.8; fresh Wire0.8 emits v2 with full validated snapshot | read.rs; docs/versioning.md:25–44 |
| Invocation/binding |invocation/capability-intent/snapshot/invocation-record v1 formats; before-evaluation refusal distinct | invocation.rs; docs/invocation.md |
| Historical schema position |schema is resolved at exact historical position; StateId excludes chronology; never infer ever_used from live content | Store/replay/docs persistence/migrations |
| Store formats |v1 structural historical governance, v2 authenticated exact candidate; separate genesis/bundle/record domains | documents.rs:12–39; docs/governance.md |
| Migration |migration IR0.1 distinct source/target schemas; own semantics, not ordinary repair waiver | migration/wire.rs:13; migration contracts |
| Proof/evidence eligibility |current verifier0.8.0; historical0.7 proof decoding not current authorization | verify/lib.rs:30; trusted governance validators |

A format list does not establish admission acceptance. F-COORD-011 is a new lead: `format_versions().accepted_wire_ir` advertises0.1–0.8 although decoder refuses0.1–0.3. VERIFY independently confirms the source discrepancy; execution/category review pending. This does not authorize re-admitting rounded legacy arithmetic.

No Docker/Node/ESLint/Prettier/Terraform/Helm output setup is introduced; existing Rust/Python target/cache/log/env ignores cover actual work. No ignore file was changed.
