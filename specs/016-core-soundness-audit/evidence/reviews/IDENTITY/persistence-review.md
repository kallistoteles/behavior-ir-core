# Independent PERSIST review

R-VERIFY-003, reviewer `/root/audit016_verify`, distinct from PERSIST author
`/root/audit016_store`; T049. Date 2026-10-10. Baseline
`1e286ebcf1d61117320c57df155fa1ef9397e880`, tree
`6a9f9879a9fece5a001ca30ace483a8cde1addd9`. This role path follows tasks;
the reviewer is not the PERSIST writer. Root execution was pending; source tests
were not independently run by reviewer.

Reviewed persistence-replay-audit.md and path-test-inventory, and actual Backend
trait/create/commit, InMemory accepted mutation block, conformance fault injection,
Store ordinary/prepared migration/recovery/CAS, read/invocation and history replay,
command stream authentication, identity constructors and historical standalone
read profile dispatch. The baseline overlay historical read reproduction is
queued for root; its positive control and final assertion still need execution.

## Atomicity and historical evidence challenge

- Mutation denominator is correct: Backend has create/commit, ordinary action and
  migration have separate commit call sites, candidate/read/replay do not call a
  mutation themselves. Mutable Rust receiver does not establish cross-process
  durability. InMemory validates the canonical argument product before its
  non-fallible mutation block; allocation/process/host durability assumptions
  remain outside that source theorem.
- BeforeWrite, HeadMoved, and AfterWrite/lost acknowledgment are distinct. A
  BackendError after a durable event cannot be called rollback; canonical history
  and exact idempotent recovery may expose the original occurrence later. The
  report preserves this distinction. New child validation is Applied-only.
- Successful create supplies complete initial product; no authority was located
  for all-or-none create failure/retry/lost-ack. F-PERSIST-002 is therefore a
  bounded S4 contract underspecification, not a demonstrated partial durable bug.
  O-PERSIST-001 commit promises and O011/012 creation scopes remain separate.
- Indexes can be reconstructed from canonical records/content. Rechecking every
  returned indexed candidate cannot prove enumeration completeness; Backend's
  as-of complete index contract remains an assumption. Replay checks required
  ranges/chains/indexes and command stream authenticates history/materialized
  content before occurrence construction. No arbitrary dishonest-host theorem is
  inferred from conformance wrappers.
- Data/Behavior/reference replay and snapshot verification have different positive
  propositions. Positive re-evaluation shares ordinary evaluator and does not
  establish full-child G3. Data replay lacks exact admitted theorem-generation
  model, so archived signed coverage is producer attestation, not independently
  derived current proof. Current/archived/structural trust remains separate.
- Historical v1 standalone replay explicitly chooses run_version from recorded
  format; Store read at store.rs:1466 and inner invocation :1513 chooses fresh
  current evaluation. F-PERSIST-001 is supported source lead for rejection of
  valid historical evidence. A runtime log must show valid Store/schema/history,
  positive current and standalone historical controls, unchanged head, then only
  historical Store mismatch before confirming S3. Minimal correction must preserve
  old bytes/profile; no blanket new format is justified.
- Field matrix includes canonical serialized body versus intentional self-hash/
  diagnostics exclusions. It is a source inclusion argument, not exhaustive
  executable tamper proof, and historical conditional field omission matters.

## New reviewer-discovered current decoding lead

At Store store.rs:1438, replay_read uses serde_json::from_str before map comparison,
where Core read replay/from_json strict parser rejects duplicate keys. A current
v2 valid read plus conflicting duplicate result may therefore become a positive
Store replay after last-key reduction. This is separate from historic v1 format
selection, and replay_invocation's Core preflight protects that particular path.

Author independently found no frozen exception: docs/persistence.md:223–225,
010 spec US4:189–211 and 013 identity contract:143–146 define checked reproducible
read evidence and strict new decoding. Root authorized exact-base test-only
TRUST overlay with valid v2 controls, unchanged hash, Core refusal and unchanged
head. F-TRUST-001 remains unconfirmed pending actual runtime assertion/log;
tentative bounded S3 classification concerns malformed evidence acceptance, not
authenticated forgery or an illegal state transition. PERSIST must cross-link it
and not overstate current replay strictness/full O008 closure.

## Decision

Accepted qualified source audit, with historical profile and current duplicate
decoding leads plus exhaustive fault/tamper coverage explicitly open. Independent
root execution/collection and the finding reproductions remain required; author
must acknowledge/cross-link the new lead and separate create underspecification
from an implementation failure. No semantic fix or soundness verdict follows.

## Final evidence update

Source-time pending statements above are historical. E-COORD-009/012–016
establishes actual baseline collection/default execution with ignored cases
excluded. E-PERSIST-004 and E-TRUST-002 compile, execute and reach only final
semantic assertions with positive controls/unchanged heads; all six artifacts
in each run match their retained SHA256 values. R-VERIFY-005 separately accepts
F-PERSIST-001 S3/Medium and bounded F-PERSIST-002 S4/Medium at
[persist-findings](persist-findings.md). MODEL R-MODEL-004 independently reviews
the TRUST-authored new parser finding. PERSIST accepted requested source/report
qualifications; no blanket Store strictness, creation-failure atomicity or full
child replay validity claim remains unanswered.
