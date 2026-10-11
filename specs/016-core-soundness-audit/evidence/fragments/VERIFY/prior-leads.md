# VERIFY prior claims reassessed

Baseline and inspection provenance: E-VERIFY-001. Actual E-COORD-009/012–016 execution is a
separate evidence item; source claims remain bounded by the stated comparators.

| Prior lead | New baseline inspection | Disposition and remaining evidence |
| --- | --- | --- |
| soundness-remediation F1: filter-success assumed while checking own failure | reads.rs:114 uses base/noerror guards; filter step has no membership assumption; successful final membership assigned only to projection items at242 | Investigated, source-supported non-finding; six verify read_soundness regressions executed in E-COORD-009/016. |
| F2: read runtime validity weaker than assumptions | reads.rs:66 legacy early return, current constraints/invariants role distinction; eval.rs:3768 full snapshot before body, input/context constraints not state invariants | Investigated, source-supported non-finding for current scoped paths; runtime/solver negative regressions executed in E-COORD-009/016; separate Store historical F-PERSIST-001 confirmed. |
| F6: used-identity history omitted from signature | Encoder fact Used distinct from Exists; confirm::request_parts emits historical facts; runtime used_s at948 | Historical facts explicit; no assumption that live StateId binds all ever_used. Named MODEL/PERSIST joint input confirms the history distinction under conforming Backend premises. |
| Alias singleton universe false lower bound | relational.rs:279 distinct representative guards, equality of whole entity fields for equal IDs | Both named repeated-read/projected-member regressions execute in E-COORD-009/016. |
| Hidden oversized exact children | bounds::complete_facts at387 visits everychild before fixed scale/Bool reset; representation_safety at508 called by encode | Current source conservative; nested rescale/wrap/Bool/heterogeneous-fold regressions execute in E-COORD-009/016. |
| General rational sums retain one denominator bound | bounds.rs:443 arbitrary reduced denominators return unbounded; verification_leaf uses64bit magnitude at372 | Runtime overbound fixture/static assertions execute in E-COORD-009/016; lack of efficient proof is not S2. |
| Whole-state invalidity after nonlocal create | ActionEncoding outgoing rules at1576 boundsurvivors/creates only; selected preservation does not enumerate unchanged entities | E-INCREMENTAL-002 confirms shared F-INCREMENTAL-001 S0/High under G3; no false PROVEN fabricated merely from omitted generalized property. |
| Advertised accepted versions | COORD F-COORD-011: format_versionsacceptedarray0.1–0.8 vs decoder0.4–0.8 | Independent sourceconfirmation supplied; actual E-COORD-011 supports S5/Medium metadata defect, separate historical wire_ir compatibility array. |

## QUALITY contribution

The encoder, runtime evaluator and bound analyzer repeat operator-case semantic
rules by necessity across representations. Maintenance risk concentrates in
`encode.rs` scalar/derived/cmd paths, `relational.rs` summaries/activation,
`reads.rs` separate projection predicate lowering, and `migration.rs` local
premises/target module switching. Existing targeted regressions are valuable
precisely because syntax/type agreement alone does not imply evaluation/error
agreement. Recommend future changes keep an operator/subform obligation table
and test every error path, rather than generic aesthetic refactoring.

Development-cache `Cache::get` accepts a matching key and parsed result, not
authenticated evidence. This is deliberate historical diagnostic trust according
to docs/verification.md. The current authoritative proof path explicitly computes
fresh and verifies complete manifest. Avoid names or host docs that imply a
development-cache diagnostic is trusted proof. Root can record as a scoped
assumption/quality observation; no new authentication defect is asserted without
an authoritative promotion path.

No production code, fixture, hash contract, admission gate or public API was
changed. Any correction would be a separate proposal after root-cause review.
