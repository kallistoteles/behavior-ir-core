# Joint boundary: commands → governance → commit

T076 writer: `/root/audit016_store` (PERSIST). Named contributors:
`/root/audit016_model` (MODEL) and `/root/audit016_verify` (IDENTITY/TRUST).
Date: 2026-10-10. Baseline v0.12.1, revision
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. This note records producer/consumer
assumptions from actual report drafts and direct baseline inspection. Named case
mapping and contributor dispositions are recorded at their qualified scope; it does not
declare audit closure.

## Producer/consumer contract

| Handoff | Producer establishes | Consumer still must establish | Evidence and limit |
| --- | --- | --- | --- |
| Admitted command declaration → evaluator | Immutable typed scalar product, explicit guard and payload expression dependencies | Guard/payload evaluation under the same complete semantic inputs, required errors/refusals, typed resulting payload | MODEL C045–049/O014–015; Core `commands.rs:56–115`, admitted type/guard graph. Current profile0.8, no arbitrary host effects. |
| Evaluator → candidate bundle | Successful K is a finite multiset; duplicates retained and canonical bag representation; non-ALLOW exposes no successful commands | Exact behavior/store/history/schema, original ALLOW record, rederived dependencies/lifecycle/delta/commands; merely receiving K is not commitment | Core `commands.rs:122–135,182–214`; Store `store.rs:1883–1934` and rederive checks before sole CAS. Existing guard/payload/error suites are root-run evidence, not independent universal proofs. |
| Store-derived candidate → authorization | Candidate identity includes exact history/state and record/engine-derived data; excludes evidence/Q/time/future event/occurrences | Immutable policy, eligible issuer roles, exact behavior/manifest/profile/verifier/solver, complete proof/waiver sets, independent full Q and actual bound commit time | `documents.rs:697–722`; TRUST B013–020/O004–009; `trusted.rs:799–844,864+`; Store `store.rs:3102–3145`. Hash equality alone is not authentication or authority. |
| Authorization → atomic commit | Complete signed authorization is recomputed and compared, rather than accepting selected claim fields | Candidate consistency, identity freshness/resulting refs and validation; exact CAS and atomic durable Backend product | Ordinary `.backend.commit` at Store `store.rs:2348`; applied publication at2360. Reference Backend validates all arguments before typed-infallible mutation (`memory.rs:284–371`). Arbitrary host durability remains documented premise O-PERSIST-001. |
| Committed history → occurrence stream | Immutable final event with canonical K and content/history identities | Authenticate captured endpoints, history replay and reconstructed as-of snapshot, then derive multiplicity-indexed occurrences | Store `commands.rs:127–249`; occurrence identity at221–224. Core emits data only and never dispatches external effects. |

Source paths are within `crates/behavior-core/src`, `crates/behavior-store/src`
and `crates/behavior-verify/src` respectively. Contributors supplied their actual
source conclusions directly: MODEL classified product/intent/bag/occurrence and
host dispatch; IDENTITY confirmed the staged hash graph; TRUST supplied exact
live versus archived eligibility and context/time enforcement; PERSIST traced
CAS/recovery and command stream reconstruction.

## Applicable profiles and historical trust

Wire0.8 action/module identity and record0.7 command bags are distinct from Store
v1/v2 and governance v1/v2 profiles. Old unsigned structural evidence remains
structural; opening/replaying does not upgrade its authority. Fresh writes that
require authenticated governance cannot use legacy structural evidence as proof.

Current authenticated producer derives its expected manifest/check sites using
the exact admitted behavior and verifier/solver profile; diagnostic computation
cache is bypassed. An older signed verifier0.7 envelope can be decoded as archive
content without automatically being eligible for the current verifier0.8 expected
manifest (`trusted.rs:2536+`). Signature-valid does not imply theorem-true.

Data replay validates archived signatures, policy, coverage and aggregate claims
under archived Q (`trusted.rs:789–797`), but lacks the Behavior needed to derive
the expected semantic sites. Behavior replay/live authorization additionally
derive those sites. Their claims must remain separate. Required roles/expiry are
judged at explicit Q.policy_time rather than a hidden current wall clock. Store
compares supplied full Q and actual requested commit time, not just a copied
context hash (`store.rs:3119–3144`, `trusted.rs:806–834`).

## Identity graph, failure and uncertainty

The inspected graph is:

`declarations → expressions → K/record → candidate → authorization → bundle/event → occurrences`.

Candidate excludes authorization, Q/time, future event and occurrence identities;
authorization content excludes its detached signature; committed event includes
archived evidence but no occurrence IDs. Therefore constructor inspection finds
no cycle under admitted dependency-DAG premises. Occurrence preimage is exact
`{store, commit_record_hash, intent_hash, multiplicity_index}`; intentional repeats
or forks differ from recovery of the same committed immutable event.

`Applied` permits committed child cache carry-forward; `HeadMoved` or an error
does not. An error can be a lost acknowledgment after durable commit. Original
recovery checks the exact event at the original position+1 and original bundle,
context/evidence, instead of recomputing occurrence identity at the current head
(`store.rs:1948–2040`). Candidate public readability is not a dispatch permit;
adapter external scheduling/acknowledgment/idempotency remains outside Core.

Commit atomicity is explicit Backend obligation. Creation success is a complete
genesis product, while creation error/lost-ack/retry semantics are F-PERSIST-002
(S4), not a fabricated universal atomic-create implementation defect. Existing
BeforeWrite/AfterWrite tests exercise commit and acknowledgment windows, not every
physical mutation/create/crash boundary.

## Reconciled limits and final evidence

The lanes agree on staged identity, immutable committed occurrence authority,
independent live context/time/policy checks and archived-versus-current proof
eligibility. These are qualified source conclusions with conforming immutable
Backend, cryptographic/key-custody, trusted solver/toolchain and admitted input
premises, not proof against arbitrary host corruption or false signed theorems.

The normative full-validator invalid-child defect F-INCREMENTAL-001 remains a
separate G3 blocker: correct authorization and replay of a flawed computation
cannot independently prove complete resulting-state validity. Historical Store
read replay F-PERSIST-001 and current duplicate-parser F-TRUST-001 from T049
are now independently reproduced as E-PERSIST-004 and E-TRUST-002. No jointly accepted
whole-state safety claim is inferred from bag/hash/signature agreement.

E-COORD-009 passed unchanged-baseline canonical gates; E-COORD-012–016 records
workspace/external-consumer collection, ignored scope and actual default target
accounting. E-TRUST-003 independently executes the poisoned diagnostic-cache
regression successfully (1 passed). Seven bounded supplements pass, including
selected full/fast oracles, schema properties and the release-mode 1,000-order
case. They do not establish arbitrary host/crypto/solver or all-property theorems.
E-INCREMENTAL-002 directly confirms invalid committed child at final line68,
and E-PERSIST-004/E-TRUST-002 confirm separate replay defects. Their expected
assertion failures have legal positive controls and are not gate passes or
infrastructure failure. Raw
evidence is in `evidence/runs/PERSIST/replay-v1-red/` and
`evidence/runs/TRUST/read-duplicate-red/`. R-VERIFY-005 independently accepts
the historical replay finding after actual-log inspection.

MODEL independently read both notes and accepts its contributed premises at
source-accounting scope; actual execution remains a distinct evidence kind. No
source-level agreement is promoted to a validity proof.

IDENTITY/TRUST independently reread the note and accept their contributed
premises at qualified source-accounting scope, with no source correction. They
retain current duplicate-parser F-TRUST-001 and the disclosed empirical scope.
PERSIST agrees with those limits; no universal crypto/backend/G3 conclusion
follows from the named lane agreement.

Final boundary disposition: accountable qualified inputs, executions and
different-person contributor reviews are complete for the audited snapshot.
Known findings remain unresolved; that is the audit result, not an unfinished
fix. No semantic/public API/hash/history change is made.
