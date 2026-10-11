# F-COORD-011 — advertised admission versions disagree with decoding

- Category: **S5 — implementation correctness defect**.
- Severity: **Medium**. The supported consumer capability advertisement is false
  for three versions and can select an invocation that is then refused. No false
  current authenticated proof or altered historical numeric meaning is demonstrated.
- Claim: `format_versions().accepted_wire_ir` / CLI `engine-info` advertises
  Wire IR 0.1–0.8 as accepted, while actual admission accepts 0.4–0.8 and refuses
  0.1–0.3. The refusal diagnostic also lists only 0.4–0.7 despite 0.8 support.
- Reason/invariant: a public statement about admitted document versions must
  correspond to the actual decoder. Historical format recognition and fresh
  admission are separate axes; a historical list cannot define current acceptance.
- Authority: `docs/versioning.md:152` says accepted versions are taken from
  implementing constants; decoder `wire.rs:1016–1022` deliberately refuses old
  rounded arithmetic. Preserve that refusal rather than inferring re-admission.
- Exact audited revision: `1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
  `6a9f9879a9fece5a001ca30ace483a8cde1addd9`.
- Code: `crates/behavior-core/src/lib.rs:58` advertisement;
  `crates/behavior-core/src/wire.rs:1016–1022` decoder selection;
  `crates/behavior-core/src/admit/mod.rs:105–118` refusal diagnostic;
  `crates/behavior-core/tests/versions.rs:59` and
  `crates/behavior-cli/tests/cli_engine_info.rs:85` preserve the false array.
- Reproduction: **E-COORD-011**, [run metadata](../../runs/COORD/admission-metadata/run.json).
  Baseline-built `behavior engine-info` exits 0 and advertises each version;
  `behavior admit` for the retained input documents exits 2 with
  `UNSUPPORTED_IR_VERSION`. Inputs derive from the unchanged invoice fixture with
  only the version changed; refusal happens before inspecting body compatibility.
  No production overlay or gate alteration is involved.
- Affected paths: v0.12.1 public facade metadata, CLI metadata, unsupported-version
  diagnostic and consumer version negotiation. Historical `wire_ir` compatibility
  array is a separately intentional surface and is not evidence of fresh acceptance.
- Recommended correction: derive current advertisement and refusal message from
  the same decoder acceptance source and add a contract-level negotiation/refusal
  test; retain historical metadata where its separate contract requires it.
- Authority decision/versioning: implementation metadata is wrong relative to
  decoder authority. This changes public reported metadata/diagnostics and requires
  consumer evidence and ordinary release policy; it must not change BehaviorHash,
  schemas, recorded history or old IR admission. Proposed only, no fix applied.
- Root cause group: independent version lists have drifted; the stale refusal
  diagnostic is a second symptom retained in this finding, not a second inflated
  semantic defect.
- Review: VERIFY independently confirmed source interpretation; MODEL's independent
  significant-finding review is requested. Integration waits for that disposition.
