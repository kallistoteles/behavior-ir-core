# Compatibility Assessment: Core 022

## Violated contract and correction

Replay reproduces the original attempted computation under its recorded profile.
The full Core interpretation remains reference; Store independently establishes
historical anchoring and truth of the claims actually established on that path.

F-REPLAY-022-001: real Store read refusals archive raw array input/context but
Store reconstructs empty-object echoes. Preserve the original request string.
F-REPLAY-022-002: host invocation decode archives are interpreted by Store as
intents. Preserve Core's origin-specific reproduction, then add Store evidence.

The explicit malformed/contradictory supplied-Snapshot correction follows the
accepted clarification: an atomically rejected Snapshot never becomes semantic
state. Replay may match that refusal after independent Store/history/schema/
Behavior checks. Accepted archived components and performed resolution claims
still reconcile with canonical history; sparse omission is not absence.

## Existing observable expectations

Two live baseline assertions intentionally change from Store non-match to match:

- `store_origin_transport_refusal_preserves_existing_reconstruction_limit`.
- `decoded_document_refusal_replay_does_not_construct_commit_bundle`.

The latter assumed that Store must replace the rejected Snapshot with actual
state and thereby fail to reproduce the refusal. That retroactive equality
obligation contradicts the clarified phase-sensitive model. Preserve its fresh
ALLOW positive probe and zero replay bundle construction while correcting outcome.
Retain separate new failing regressions before either live expectation changes.

Matching rejected attempted data does not certify its truth, grant authorization,
construct commit authority or waive independent anchoring. Genuine false claims
from accepted state/facts, wrong coordinates/schema/behavior and malformed
enclosing evidence remain nonmatches. Ordinary Store resolution preserves existing
snapshot prevalidation regardless of a refusal's reported stage.

## Versioning conclusion before production changes

022 alone is patch-class under `docs/versioning.md` and the existing 018 corrective-
replay precedent: restore specified interpretation without changing Wire/admission,
record bytes/formats, hash/schema identity rules, supported facade signatures,
Backend contract or verifier outcomes. The same-minor-line “identical results”
promise describes preserved reference semantics; observed erroneous Store outcomes
intentionally change and must be disclosed, not represented as identical behavior.
Combined delivery including 017 retains its minor classification.

If a protected contract change proves necessary, reassess before implementation;
do not hide it as this patch correction. This assessment selects no release number,
tag, merge, publication or ecosystem pin. Existing archives, 016 findings and frozen
018 reports/fixtures/receipts are preserved. New final evidence binds the new frozen
candidate, never inherits the 018 receipt or attests a different later merge SHA.
