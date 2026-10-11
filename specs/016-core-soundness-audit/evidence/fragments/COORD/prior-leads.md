# Prior leads — exact-baseline reconciliation

Baseline `1e286ebcf1d61117320c57df155fa1ef9397e880`. Historical
`docs/soundness-remediation.md` claims (prior revision
`2c176a0ea98e3168186fd0e9ff0af9468173513b`) and 014/015 evidence are leads,
not accepted waivers or this audit's execution. Each was reassessed against actual
baseline source and E-COORD-009/012–016 collection/default execution.

| Stable lead | Investigation and final disposition | Evidence / limit |
| --- | --- | --- |
| F-COORD-001 / prior F1 filter-success premise | Evidenced non-finding on current inspected read filter proof branches: checking filter failure uses base/noerror guards, not its own success assumption | VERIFY reads.rs114/242 and six executed verify read_soundness regressions; [VERIFY reassessment](../VERIFY/prior-leads.md). Universal composed activation remains O-VERIFY-004. |
| F-COORD-002 / prior F2 read/runtime validity | Evidenced non-finding for current complete-state and role-validity admission/runtime/proof domains | Current eval4043–4110; legacy proof reads66 guard; regression execution. Does not dismiss historical Store F-PERSIST-001. |
| F-COORD-003 / prior F3 duplicate JSON keys | Core strict current read/invocation decode is source-supported and negatively tested; newly found raw Store read replay exception remains F-TRUST-001 | E-TRUST-002 actual direct RED, R-MODEL-004. A corrected Core constructor does not prove every wrapper dispatches through it. |
| F-COORD-004 / prior F4 diagnostic provenance identities | Evidenced non-finding for current detached read-v2/decision0.7 diagnostics; old v1 byte semantics deliberately preserved | [IDENTITY reassessment](../IDENTITY/prior-leads.md), relocation/roundtrip regressions in E009/016; Store old-profile dispatch still F-PERSIST-001. |
| F-COORD-005 / prior F5 failed-filter replay evidence | Current failed-filter request/observations and capture registry are inspected and regressions execute; scoped evidenced non-finding | PERSIST/Core read replay inventory, E-MODEL-002 read_replay_integrity10 and canonical collection. Historical v1 intentionally lacks later capture guarantees. |
| F-COORD-006 / prior F6 missing historical identity input | Formal/reference signature now includes explicit historical ever_used facts separate from live state/existence | MODEL semantic-model, facts/provider lifecycle source and VERIFY used encoding; host completeness/coherence still assumed. |
| F-COORD-007 / declared/ad-hoc query registry replay | Current derived projection/fold/candidate registry capture and replay rederivation are inspected; scoped evidenced non-finding | PERSIST path inventory/Core read-replay tests actually executed. No inference that all raw Store decoders/profile selections agree. |
| F-COORD-008 / exact normalization and contradictory facts | Current typed normalization, overlap contradictions and complete-universe state validity enforced at identified current paths | MODEL facts/eval inventory and negatives collected/executed; legacy partial facts and arbitrary dishonest providers excluded. |
| F-COORD-009 / refused requests and historical v1 | Current refused transport retains/rechecks request; scoped evidenced non-finding. Supported historical v1 keeps original evidence limits | TRUST B020/023, invocation/refusal regressions. Historical Store profile mismatch is separately reproduced F-PERSIST-001. |
| F-COORD-010 / nonlocal creation invalid child | Confirmed finding; alias retained as F-INCREMENTAL-001 | E-INCREMENTAL-002 legal parent/commit controls and independent final predicate fail; R-VERIFY-006 accepted S0/High. Scope preservation in014/015 does not waive G3. |

Additional investigated leads are retained by their authors: alias singleton
cardinality, nested exact representation, general rational sums, command bag/hash
cycles, StoreId/StateId context and legacy length premises. Source-supported
non-findings are bounded; legacy size O-IDENTITY-006 and universal correspondence
O-VERIFY-001/004/005 remain open. Neither incomplete verification nor hypothetical
backend contract violations are silently promoted into S2/S1 defects.

F-MODEL-001 (sum MAX+1−1 intermediate overflow) is an evidenced non-finding:
007 repeated bounded addition/FR020a and docs/verification specify canonical
identity-order prefix checks. Changing entity IDs changes semantic input; backend
permutations for fixed IDs do not. E-MODEL-002 and1000-case E-MODEL-004 provide
scoped execution. No new final-total-only semantics was invented.

Poisoned matching legacy development-cache PROVEN is deliberate diagnostic
trust, not authenticated authority. Current fresh proof computes cache=None and
requires a complete manifest. E-TRUST-003 independently reruns its negative
promotion test (1pass); E009 includes it by default. This is not a newly proved
S1/S2 forgery; producer integrity and solver correctness remain explicit assumptions.

All six actual findings, independent reviews, root causes and compatibility
proposals are in [findings](../../../findings.md). No finding was fixed and no
historical claim is used as substitute for baseline evidence.
