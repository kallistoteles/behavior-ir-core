# US3 — Store obligations, operational failures and read-only authority

This report distinguishes source construction, empirical coverage and external
premises. Final candidate validation is recorded separately, after freezing.

## Historical reconstruction argument

`Store::state_of_data_version` parses the recorded Store lineage, StateId and
history position. It requires the local Store identity, an existing position,
and the actual StateId at that position. StateId alone does not select a history
position. `bind_schema` follows the schema at that exact position; equal schemas
do not authorize a different BehaviorHash. Strict preparation/Core invocation
preflight checks that hash before historical Store execution.

`read_mode`/`invoke_mode` bind schema and validate the actual historical snapshot,
then load actual entity versions using typed keys and resolve bindings. They do
not replace actual values with archived state echoes. SnapshotFacts answers
required semantic facts from that validated snapshot and the historical Backend.
Full reproduction compares every contractual record/evidence/identity field.
The017 archived-action branch independently reconstructs typed binding facts and
uses `rederive_archived`; it never invokes a fresh action to reinterpret history.

A newly generated/resealed claim about a different legitimate position can match
if the semantic inputs truly agree. This is evidence reproduction, not proof of
who created the record. Foreign lineage, nonexistent position, inconsistent
StateId/position, wrong historical schema, substituted behavior, bindings, facts
or observations fail their respective checks. A hash alone is not authentication.

## Error contract

Replay evidence failure is `ReplayResult::mismatch`; Store backend operations
actually performed retain `StoreError::Backend`. No fixed call trace or
hypothetical failure from an omitted operation is required. Existing evaluator
FactError handling is not globally recategorized: a semantic evaluation failure
can be faithfully replayed, while an actual required Store failure prevents
completing replay. Fault probes assert the selected required operation was reached
and compare canonical contents after disabling the injected fault.

## Authority and reconstruction limits

Replay never calls Backend create/commit, exposes commands, or promotes pending
child-validity evidence. Reconstructible validated committed snapshots may be
cached under their existing exact identity. No step commits a state/history
record, executes a command or creates reusable uncommitted validity.

The additional internal bundle-construction probe is independent of backend call
order. Its fresh-invocation positive control observes a real commit bundle;
replay must observe zero bundles while retaining the same matched action record.
The corrected setup produced genuine RED: replay constructed one fresh bundle.
The prior effectless-action admission failure was test setup, not semantic RED.

Raw transport-refusal strings can originate in public Store reads as well as
standalone evaluation. Store replay reconstructs typed request sections from
recorded echoes. If an originally malformed section is echoed as `{}`, standalone
raw-string reproduction may match while Store reproduction remains a disclosed
non-match.018 preserves that existing reconstruction limit; Store origin and a
valid coordinate do not alone establish equality of canonical semantic inputs.
Captured binding-refusal fixtures are distinct and reproduce under their profiles.

## Evidence and traceability

The execution ledger supplies before/after command receipts for substitution,
performed-error, immutability and017 collateral tests. Matrix reconciliation
requires every applicable Store cell and U08–U10 concrete ID; unavailable/skipped
cases cannot count as completed coverage.

| Requirements / obligations | Evidence |
| --- | --- |
| FR-007, P018-04/05 | Exact coordinate/schema/BehaviorHash checks; actual typed values/facts; rehashed foreign claims and wrong-schema controls. |
| FR-009, P018-08 | Required history/entity/schema failure probes; Backend versus evaluator FactError behavior. |
| FR-008, P018-09 | Before/after genesis/head/history/versions/schema/reference/command contents; bundle-construction RED/GREEN; no mutation methods. |
| FR-016, P018-05/07 | Conditional Core/Store comparisons under the same recorded profile; inner/outer contradictions and identity-bearing metadata. |
| SC-004/006, P018-11 | All applicable matrix cells plus genuine017 archived/current actions and existing migration/command/history controls. |

Backend completeness, coherent immutable as-of reads/history and durable atomic
commit remain existing external premises. Cryptographic collision resistance
remains an identity premise. These tests and inspected invariants do not prove
arbitrary host honesty, whole-kernel soundness or unrelated audit closure.

The selected correction adds private Replay mode and limits bundle construction
to Fresh mode. Archived read profiles and generic replay cannot construct a
commit bundle. Required Store checks and resolved reference evaluation remain.
The first Store before-run passed30/31: its lone failure asserted unconditional
Core/Store diagnostic equality for an unknown declared read with no resolved
typed parameters. The reviewed test retains strict-boundary equality and instead
checks deterministic non-match separately for that unbound case. All31 then pass;
this correction to an overstrict test premise is not semantic RED.

US3-green/all passes25Core and31Store tests with no ignored cases.
The no-bundle unit passes1/1 after its genuine construction RED. Strict
coverage reconciliation accounts for468 required triples,58 concrete refusal
boundary pairs and five declared auxiliary cells, with no missing or unexpected
cells. The public action used_at fault test retains ERROR/UNKNOWN_FACT rather
than globally converting FactError to StoreError. A genuine Store-origin input[]
refusal demonstrates the unchanged reconstruction limit; this is disclosed as
an additional follow-up, not a retroactive narrowing of the010 contract.

### Reopened authority review

A final different-agent source review found that invocation decode-evidence replay
still delegates to the public fresh intent path. A matched standalone refusal
can contain a valid action intent but an invalid captured snapshot; reconstruction
from a valid actual Store snapshot may then create a fresh action bundle before
the wrapper comparison refuses. T032 is reopened pending an independently
executed no-bundle regression and a correction to that replay-only route. The
prior ordinary-action bundle regression remains genuine evidence for its path,
not evidence that all decode-evidence paths were already closed.

The decode-evidence regression executed one test and failed only its final
bundle-counter assertion: an actual fresh positive control built one bundle,
Core replay reproduced the genuine malformed-snapshot refusal, Store replay
correctly refused against its actual snapshot, but constructed one bundle.
Receipt: `runs/us3-before/decode-document-no-bundle/run.json` (exit101).
The correction shares private `invoke_intent_mode`; public intent invocation
hard-selects Fresh, while decode-evidence replay hard-selects Replay and forwards
that mode to `invoke_mode`. No decoding, snapshot or comparison rule changes.
Both independent bundle probes then pass2/2 in
`runs/us3-green/decode-document-no-bundle/run.json`.
