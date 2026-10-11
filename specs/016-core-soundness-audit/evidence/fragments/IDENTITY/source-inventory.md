# IDENTITY inspection evidence

E-IDENTITY-001, owner `/root/audit016_verify`, 2026-10-10. Baseline commit
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`; detached checkout
`/tmp/behavior-core-016.3fbz3jon/baseline`, unchanged tracked source. This is
inspection-only evidence; no tests, compilation or overlays were run by this lane.

Scope: C-IDENTITY-001–031 and O-IDENTITY-001–010 in identity-audit.md. Current
Wire 0.8, admitted historical 0.4–0.7, read record v1/v2, decision records through
0.7, invocation v1, Store v1/v2 and governance structural v1/authenticated v2 are
separate applicability axes. Legal input is typed/admitted content under its exact
published profile, plus malformed-input refusal checks where the relevant decoder
contract requires them. Hash security is an assumption, not an executable result.

Sources inspected directly: core admit/hash.rs, canonical.rs, wire.rs,
commands.rs, schema.rs, read.rs, invocation.rs; Store documents.rs, muhash.rs,
commands.rs and snapshot key sites in store.rs; verifier hashing.rs, cache.rs,
governance/trusted.rs and semantic_proof.rs. Contracts reviewed: initial hashing,
007 query semantics and 013 identity-and-records/governance/semantic-ir contracts,
versioning documentation and current 016 evidence/parallel-work contracts.

Method: read actual encoder bodies and constructors; enumerate declared tags and
non-hashed transport tags; trace included/excluded fields and dependencies;
compare the existing normalized equivalence against collection order/multiplicity;
inspect test source and independent oracle helpers. No claim rests on a displayed
format/version list alone. Source provenance is immutable in COORD's manifest;
exact implementing line locations appear in identity-audit.md.

Observed result: 31 identity construct families cover FR011 domains, including
validation-cache identity as a non-public implementation product. Distinct binary,
JSON and MuHash schemes are not conflated; top-level self-hash omission is scoped;
historical/current record and trust profiles remain separate. No constructor-level
cycle identified. Universal pre-hash injectivity, legacy oversized-input bounds,
complete tamper coverage and cryptographic security remain qualified obligations.

Artifacts: identity-audit.md and the source-present test inventory. Limits:
inspection does not prove every public path, SHA collision freedom, backend
honesty, replay correctness, cache publication timing or full-validator G3.
Independent PERSIST review accepts all 31 families with historical Store scope
qualification; T076 named inputs and actual E-COORD-009/012–016 are linked in
the report/handoff. Universal obligations remain qualified.
