# Joint boundary: queries → reads → identity → replay

T076 writer: `/root/audit016_verify` (IDENTITY/VERIFY). Named contributors:
`/root/audit016_model` (MODEL) and `/root/audit016_store` (PERSIST).
Baseline v0.12.1, revision `1e286ebcf1d61117320c57df155fa1ef9397e880`,
tree `6a9f9879a9fece5a001ca30ace483a8cde1addd9`. Actual reports/direct
responses are reconciled below; execution and contributor final disposition are
distinct from source agreement.

## Producer and consumer obligations

| Handoff | Producer establishes | Consumer still must establish | Support and limits |
| --- | --- | --- | --- |
| Captured state/facts → query | Same-type finite membership sets, canonical captures/typed entity values, explicit complete semantic universe under current profile | Correct actual membership/field evaluation, contradictory-fact refusal, complete coherent Backend universe/index | MODEL C029–031/C039–040/O006–007; PERSIST O006. Store rechecks candidate values but cannot establish index completeness by examining only returned candidates. |
| Query → scalar fold/projection | Canonical ID traversal; projection is ordered output, membership remains set | Bounded exact partial arithmetic and defined errors/empty results, not a final-total-only sum promise | MODEL O007/O011; 007 FR020a and current verification prefix conditions. min/max empty=None, sum/count=0, any=false, all=true; unique preserves Option equality. |
| Read evaluation → evidence | Current v2 complete normalized semantic universe/query registry plus body observations and explicit results/errors | Exact read parameters, Behavior/profile/data version, record facts and identity; validation reads are not automatically body observations | MODEL O011; Core `read.rs` v1/v2 constructors, current complete eval branches. Failing filters require evidence even when successful membership is empty. |
| Evidence → ReadRecord identity | Canonical semantic record excluding its own ID; current detached diagnostics excluded, historical v1 fields preserved | Applicable length-prefixed canonical read hash domain, closed/strict current decoding, correct historical profile dispatch | IDENTITY C014/O003/O007; Core `read.rs:140,523,575`, `admit/hash.rs:338,342`. Canonical hashing is not authorization or validity proof. |
| Record → standalone replay | Re-evaluate captured inputs/facts with selected historical/current record profile, compare semantic evidence/identity | No mutable current-store substitution or command dispatch; all semantically relevant alterations must be refused or change identity | Core standalone profile dispatch; MODEL O010/O013 and IDENTITY O010. Shared evaluator/hash primitives limit comparator independence. |
| Record → Store-backed replay | Check StoreId/StateId/position/schema against Backend's immutable records and derive snapshot/facts at that recorded position; no mutation or external dispatch | Choose recorded read codec and decode raw evidence before lossy map reduction; compare derived facts/result to that record | PERSIST O008/O009/O010; Store `store.rs:1433–1466,1513`. Backend coherence/completeness remains a premise: this path does not itself replay canonical history/recompute full StateId as command-stream reconstruction does. F-PERSIST-001 and F-TRUST-001 are confirmed defects. |

Sources are under the corresponding Core/Store crate `src` directories.

## Actual contributor inputs and agreement

MODEL supplied C029–031/C039–040 and O006/O007/O011 directly: query memberships
are finite typed sets, instances bind captures, projections/folds use canonical
ID order, and exact partial-fold errors are part of existing semantics. A renamed
identity changes the canonical state/input order; the representable-total
`MAX + 1 - 1` prefix overflow is not an evidenced contract defect. IDENTITY
accepts this mathematical object distinction: syntax identity may retain operand
order even when the result membership is a set.

PERSIST supplied exact same-position observation/query facts, index candidate
content rechecking and its inability to detect arbitrary omissions. Current v2
uses complete facts. Standalone v1 uses recorded semantics, but current Store
`read`/inner invocation reconstruction selects v2. PERSIST O007 reconstructed
data-chain agreement does not prove full Behavior validity; O008 remains open
for both F-PERSIST-001 and F-TRUST-001. IDENTITY/VERIFY accept these qualified
premises and retain Backend completeness as an explicit assumption.

IDENTITY supplies all C-IDENTITY-001–031. Of particular relevance, query
definition/instance identity is distinct from result membership; current
ReadRecord identity excludes detached diagnostics while legacy v1 retains its
historical semantic fields; StateId excludes history/ever_used/empty-schema
distinctions and cannot choose replay semantics. O-IDENTITY-007 is expressly
limited to inspected Core constructors/standalone dispatch, excluding unresolved
Store-backed historical selection. Equal hashes alone do not prove replay truth.

## Independent counterexamples and shared-helper limitations

F-PERSIST-001 confirms legal historical Wire0.8 read_record.v1 for which Core
standalone replay succeeds while Store reconstruction creates current v2 and
rejects the record. E-PERSIST-004 runs the authorized exact-base two-case overlay:
valid current and archived standalone controls, exact schema/genesis and
unchanged-head checks pass; only final Store assertions at50/86 fail. Mismatches
are `facts` / `outcome.record.facts`. This confirms bounded S3/Medium. Correct
historical schema does not select a correct read record codec by itself.

F-TRUST-001 uses a valid current v2 record with a contradictory duplicate
raw `result` key inserted without recomputing its original hash. Core's strict
decoder rejects the original raw text; Store `replay_read` first parses with
serde_json, losing the duplicate, then accepts the reduced map. The test-only
overlay separately checks valid record controls, equal permissively reduced
maps, strict Core refusal and unchanged Store head before requiring Store
refusal/mismatch. E-TRUST-002 executes that one case and fails only the final
line73 assertion: Core matches=false with a duplicate-key error, Store
matches=true. This confirms S3/Medium malformed replay evidence, not authenticated
forgery or state mutation. Core's raw invocation preflight protects the analogous
Store invocation path; no blanket duplicate acceptance is inferred.

Production admission/hash/read/replay helpers are shared comparators. Existing
fixed byte/digest vectors, independently permuted Backend order, positive/negative
profile controls and the raw-text parser contrast provide additional independent
evidence, but cannot prove every field/profile combination. A replay of the same
invalid-child ordinary computation is not an independent G3 proof.

## Evidence and remaining obligations

E-COORD-009 (`../../runs/COORD/baseline-gates/run.json`) records successful
exact-baseline canonical gates, including workspace tests, determinism and an
external consumer. E-COORD-012–016 maps named collection/ignored lists to quiet
full default Cargo group results: workspace 793 collected, 24 ignored, 769
executed; consumer 33 executed/0 ignored. All ordinary query/read/identity/replay
table targets execute. E-IDENTITY-002 separately executes the two schema-binding
property tests with seed20261010 and 48 bounded generated cases per test; both
pass,0 ignored/filtered. Shared schema/admission/Store comparators and stderr's
failure-persistence warning remain disclosed. Ignored 1,000-permutation release
query evidence is separately E-MODEL-004, not a default gate assertion.
E-MODEL-001/E-PERSIST-001/E-IDENTITY-001/E-TRUST-001 are inspection evidence.
E-PERSIST-004 (`../../runs/PERSIST/replay-v1-red/run.json`) and E-TRUST-002
(`../../runs/TRUST/read-duplicate-red/run.json`) retain source/patch/inputs,
actual executed counts and final assertion logs. R-VERIFY-005 independently
reviews historical legality/control/authority; MODEL independently reviews the
TRUST finding separately from source inventory acceptance in R-MODEL-004 at
`../FINAL/trust-finding.md`; actual controls/artifact hashes and final line73
assertion support the bounded S3 disposition.

O-IDENTITY-001 global injectivity and O010 exhaustive semantic alteration/replay
coverage remain not yet established; digest/signature security and Backend
coherence/completeness remain documented assumptions. Unknown dependencies and
unsupported incremental cases do not become new language semantics. No source,
historical identity bytes, public API or record format was changed in this audit.

PERSIST independently read this note and accepted its contributed premises,
requesting the precise coordinate-check versus full history/StateId-reconstruction
distinction applied above. Its immutable Backend premise remains explicit.
MODEL independently read both notes and accepts its contributed finite typed
membership, canonical bounded folds, current v2 versus preserved standalone v1,
and exact live/history distinctions. Actual collection/run accounting and
counterexamples remain separate from reviewed source agreement; none is promoted
to a universal injectivity, Backend-authentication or replay theorem.
