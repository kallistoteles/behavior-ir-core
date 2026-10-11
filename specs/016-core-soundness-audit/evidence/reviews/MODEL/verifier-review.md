# Independent MODEL review of verifier correspondence

R-MODEL-001. Reviewer: MODEL, different author from VERIFY. Baseline
`1e286ebcf1d61117320c57df155fa1ef9397e880`. Reviewed
`runtime-verifier-correspondence.md` against independent reference model and
selected actual encoding/runtime source; this review does not execute tests.

## Initial source-capture disposition (superseded by final evidence addendum)

**accepted** for the report's qualified inventory and source-level distinctions.
Execution-dependent conclusions and mandatory cross-component closure remain
open until their separately recorded evidence is inspected. There is no universal
simulation proof or newly reproduced PROVEN contradiction claimed by this review.

## Independent checks

| Claim / reference meaning | Independently inspected enforcement | Review result and limit |
| --- | --- | --- |
| unrestricted UNSAT covers model domain; SAT witness requires concrete confirmation | `checks.rs:197–239` searches Nice::Raw before bounded/readable witness; `295–315` only Counterexample after confirm | accepted; solver correctness external. Three member slots enter witness generation, not proof premise. |
| state-action aliases distinct; read/input aliases not assumed distinct | runtime `eval.rs:3550` filters State role; encoder `encode.rs:1226–1249` same-role/type pair constraints | accepted; public read representative equality/cardinality requires separate actual regression evidence. |
| current read validity stronger than legacy profile | Core `eval.rs:4043–4110` complete typed snapshot and binding check; Verify `reads.rs:66–110` returns no legacy validity axioms, filters invariants to State role | accepted. Input/context constraints apply without their state invariants. Historical v1 replay selection remains PERSIST scope. |
| filter failure must not assume successful filter | Verify `reads.rs:114–138` guards body obligations by base membership/base safety, not final predicate; Core query/filter evaluator | accepted; exact false/nested/difference regressions now actually executed in E-COORD-009/012/013/016, with qualified empirical scope. |
| false command guard suppresses payload error | Core command phase original S; encoder `encode.rs:1492–1544` guard step then payload guard conjunction | accepted; full step/error precedence checked via path/noerr and runtime postcondition→outgoing-rule sequence. |
| numerical summary overapproximation must not hide finite-prefix errors | 007 repeated addition/FR020a, docs verification partial checks; relational sum_of `671–720`; free errors elsewhere and representation_safety guard | accepted as a qualified source argument. MODEL's proposed prefix-sum defect was dismissed against these authorities; bounded partial sum is documented semantics. Global operator simulation stays open. |
| exact representation proof before SMT value encoding | `encode.rs` representation_safety admission guard plus exact/range obligations; Core bounds/runtime exact errors | accepted; no wholesale proof for arbitrary composed aggregate domains inferred. |
| preservation checks bound/created/affected global obligations, not all unchanged cross-entity rows | `checks.rs` preservation enumeration and ActionEncoding outgoing rules; Core run_transition `3210–3316` | accepted scope distinction. Shared G3 nonlocal child defect is not automatically a proved S2 contradiction. Full-child validity remains F-INCREMENTAL-001. |
| signatures/current manifests are proof provenance, not solver semantics | exact subject/version manifest checks and no-cache authenticated route as reported; existing 013 contracts | accepted distinction; completed TRUST joint review retains trusted producer/signer/Backend assumptions, not independently proved by report hashes. |

## Required joint handoffs

- Admission→verifier: successful typing/grid/count and error-domain evidence scoped
  to actual admitted profile; model operators match table coverage.
- Evaluation→Store→verifier: complete incoming state premise is enforced at current
  paths; resulting unchanged-entity preservation remains a shared known challenge.
- Query/read→replay: candidate-local membership and current capture vs body
  observations must retain historical v1 limits.

No source or contract was changed. If execution does not collect or run the named
regressions, their status stays not yet established rather than promoted by this
source review. Final assessment and significant findings require COORD integration.

## Final executed-evidence disposition

The preceding pending statements document the original source-time review. I now
inspected actual E-COORD-009/012/013/016 evidence and VERIFY's source/case mapping:
all named ordinary cases execute on the unchanged exact release. The correspondence
corpus includes soundness_regressions 9, read_soundness 6, command_safety 12, queries 4,
migration 4, trusted_verification 21 and trusted_governance 23 passing tests; Core
read_soundness 14 and Store behavior_validity 8/read_soundness 3 test incoming
runtime premises. Default quiet logs identify target-group results, while exact
case names come from independently retained collection; this distinction remains
explicit. No ignored or zero-selected case is counted as passing evidence.

O-VERIFY-010 is empirical support limited to that selected corpus. Universal
O-VERIFY-001/004/005 simulation/activation/query embedding remains not yet established.
E-TRUST-003 separately confirms the named diagnostic-cache poisoning refusal
(1 pass/20 filtered); fresh authenticated computation still assumes solver soundness.
E-MODEL-002/003 execute primitive/reference-derivative properties in their disclosed
finite domains, without independently proving the symbolic model.

Actual E-INCREMENTAL-002 and independent R-VERIFY-006 confirm S0/High ordinary
child-invalidity; they do not demonstrate a legal false PROVEN. Named admission
and evaluation/Store/query/read joint notes preserve that scope. Disposition remains
accepted for qualified correspondence and scoped regression evidence, with no
universal verifier or whole-kernel soundness verdict. No source, API or proof
domain was changed by this review.
