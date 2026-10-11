# Joint boundary: evaluation → Store → verifier

T076 writer: `/root/audit016_verify` (VERIFY). Named contributors:
`/root/audit016_model` (MODEL) and `/root/audit016_store` (PERSIST).
Baseline v0.12.1, revision `1e286ebcf1d61117320c57df155fa1ef9397e880`,
tree `6a9f9879a9fece5a001ca30ace483a8cde1addd9`. This note uses the actual
contributors' reports and direct responses. It records acceptance of scoped
premises, not a universal verifier soundness proof.

## Producer and consumer obligations

| Handoff | Producer establishes | Consumer still must establish | Exact support and limits |
| --- | --- | --- | --- |
| Admission → runtime | Resolved typed module, explicit parameter roles, dependency DAG, pure expressions, representation prerequisites | Exact applicable semantic profile and complete coherent state/facts; every evaluated value/error must obey its typed operator semantics | MODEL C023–038/O004–008; VERIFY correspondence covers every operator family. Typed IR is not evidence that arbitrary Backend contents are valid. |
| Captured Store parent → evaluation | Exact immutable parent/history/schema and canonical module; full typed universe and parent validity or exact previously established validation evidence | Input/context binding and constraints, lifecycle/history facts, observations from that same captured position | PERSIST B001–006/O001/O006; Store `store.rs:1127–1157,1197`; current Core complete validation at `eval.rs:2567,4043`. Backend completeness/coherent immutability is an explicit premise. |
| Evaluator → candidate | Simultaneous real-cell/lifecycle delta from original S; commands from original S; explicit errors/refusals and observations | Rederive candidate with exact current inputs; compare record/delta/lifecycle/old values and all obligations before committing | MODEL O008 and C023–038; PERSIST Store rederive `store.rs:2050+`. Postconditions precede outgoing bound/new rules, affected globals and surviving-removal reference checks. A successful candidate is not yet a committed child. |
| Candidate → CAS | Rederived dependencies, identity freshness, resulting references, validation and governance | Atomic durable whole product and exact concurrent-head check; failed/unapplied CAS cannot publish speculative validation or commands | `store.rs:2344–2360`; PERSIST O001, INCREMENTAL carry-forward contract. After a lost acknowledgment, canonical committed history, rather than an error response, determines recovery. |
| Runtime premises → verifier | Current complete valid incoming state, typed valid arguments, exact roles/facts and activation/error order for the inspected branches | All legal runtime states must embed in the symbolic domain, and encoded selected properties must simulate evaluation | VERIFY O001–007, `encode.rs:1257,1276`, `reads.rs:66,225`; historical sparse/plain profiles retain weaker premises. Incoming validity is not a blanket theorem of outgoing validity. |
| Solver → proof report → live governance | UNSAT over the actual unconstrained search domain yields the nominated PROVEN check; SAT safety witnesses require concrete runtime confirmation | Solver correctness, operator/domain simulation, complete current manifest and exact authenticated subject/profile/version | VERIFY O001/O004/O005/O009; fresh `semantic_proof.rs:215` uses no writable development cache. Signature-valid is not independently theorem-valid. |

Source paths are under `crates/behavior-core/src`,
`crates/behavior-store/src` and `crates/behavior-verify/src` respectively.

## Actual contributor inputs and acceptance

MODEL explicitly distinguishes complete live typed S from historical U_H/F_H.
Equal live StateId may have different ever_used facts after removals. O-MODEL-005
does not claim complete ordinary child validity; O008 establishes original-state
simultaneous updates/lifecycle. Command guard/payload activation and fail-fast
error order are evaluator premises, not assumed host behavior. VERIFY accepts
these at their stated source/code-invariant scope.

PERSIST supplied B-PERSIST-001–006 and O001/O006: snapshot identity includes exact
parent/history/schema/canonical module; full parent validation precedes Store
evaluation; commit rederivation and integrity/freshness checks precede the sole
CAS; carry-forward is Applied-only. Query/index candidates have their actual
contents rechecked, but that cannot prove a dishonest index omitted a candidate.
VERIFY accepts these under the documented conforming Backend premises.

VERIFY supplies C-VERIFY-001–015 and O-VERIFY-001–009. The three-member query
witness representation belongs to SAT reconstruction, not a cardinality cap on
UNSAT search. Unconfirmed SAT, unsupported arithmetic/query/migration reasoning
and verifier incompleteness remain INCONCLUSIVE. No new legal execution
contradicting a returned PROVEN result has been demonstrated by this lane.

## Shared-reference limits and the open child obligation

Runtime witness confirmation shares the production evaluator. Store evaluation,
rederivation and behavior replay also share ordinary evaluation; successful
comparison establishes consistency, not an independent proof of complete child
validity. The full validator scans all entities, whereas the ordinary outgoing
path checks bound/new entities and affected global obligations.

F-INCREMENTAL-001 concerns a valid unchanged e0 whose nonlocal constraint
`not exists(e0.target)` becomes false when another entity is created. The
locality classifier correctly rejects this case and publishes no false child
certificate. The shared ordinary path nevertheless commits an invalid child.
It is a G3 challenge; it is not, without a legal false PROVEN witness, an S2
verifier claim. Differential equality between two paths sharing that omission
cannot discharge the obligation. The independently asserted e0 predicate in the
authorized test-only overlay is the decisive comparator. E-INCREMENTAL-002
compiled/executed the exact-base one-case overlay and failed only that line68
predicate: target_exists=true after commit position0→1, corroborated by full-child
STATE_INVALID. R-VERIFY-006 independently accepts legality, controls and bounded
S0/High classification without false cache/PROVEN inference.

Historical Store read-profile selection F-PERSIST-001 and raw Store read replay
duplicate decoding F-TRUST-001 are separate evidence/replay boundaries. Correct
current authenticated manifest or signature handling cannot close them.

## Execution evidence and retained obligations

E-COORD-009 (`../../runs/COORD/baseline-gates/run.json`) reports the unchanged
exact-baseline `nix develop -c scripts/gates.sh` succeeded; its stderr explicitly
records fmt, clippy, workspace tests/build, determinism, boundary/public surface,
external consumer, workflows, terms and script tests. The quiet workspace stdout
includes ignored cases and does not identify each target. E-COORD-012–016
establishes the exact case/target-to-result mapping against full default Cargo
selection: 793 workspace collected, 24 ignored, 769 executed, plus 33 consumer
executed/0 ignored. All ordinary named verifier/domain/activation targets run;
ignored cases are explicitly excluded. E-TRUST-003 additionally runs the exact
cache-poisoning case, 1 passed/20 filtered, without claiming those filtered cases
executed by the focused command.

Source evidence E-MODEL-001/E-PERSIST-001/E-VERIFY-001 and the independent
reviews establish accountable, qualified inspection. O-VERIFY-001/O005 universal
simulation/embedding, O009 trusted solver correctness, PERSIST Backend premises
and complete ordinary G3 preservation remain explicitly bounded/open. Root's
immutable direct child-validity red run is
`../../runs/INCREMENTAL/child-validity-red/run.json`; actual counts are
1 executed,0 ignored/filtered,0 passed/1 failed,exit101. Named contributor final
disposition and baseline collection/run accounting remain separate from that
runtime defect confirmation. No source fix or semantic change was made.

PERSIST independently read this note and accepted its contributed source premises
under immutable/coherent complete Backend assumptions. MODEL independently read
both owned joint notes and accepts its contributed exact live/history facts,
current/legacy validity, original-state effects/K/error-order premises and actual
E-INCREMENTAL-002 interpretation. Neither named agreement nor shared-reference
equality is a G3 proof; O-VERIFY universal simulation remains open.
