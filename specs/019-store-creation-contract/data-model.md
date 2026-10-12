# Data Model: Initial Store Creation Contract

This describes mathematical objects and private proof machinery. It adds no
serialized field, Wire/document version, public result enum or hash domain.
The existing [persistence model](../005-persistence-contract/data-model.md) and
genesis profiles retain their historical meaning.

## Initialization product

For a legal request, let `C = (G, V0, R0, H0)`:

| Component | Meaning | Required properties |
| --- | --- | --- |
| G | Existing immutable Genesis document | Supported format/policy pairing; exact declaration/schema identities; existing canonical seed representation |
| V0 | Finite mapping from typed EntityKey to original EntityVersion | Unique keys, revision 1, created_at 0, normalized typed values, correct declaration-bound content hashes |
| R0 | Finite reference relation derived from V0 and Module | Every required Ref target exists in V0; coherent original incoming edges |
| H0 | Existing initial Head | Position 0, seed accumulator/StateId, last_record = existing genesis hash, no migration at position zero |

Store derives this product through the existing complete seed validator. Validation
includes type/grid/range, unique identities, schema applicability, references and
all applicable Behavior validity. Error order follows the current reference
validator, including the completed 017 validation profile after integration.

`CreationIdentity(C) = existing StoreId(G)` under the existing canonical genesis
domain and cryptographic premises. An expected target is supplied by the Backend
handle, not a new hashed filesystem name. Equal IDs alone do not replace complete
product checks. Canonical object-member reordering is representation; v1 seed
sequence remains identity-significant. v2 follows its existing typed-key order.

## Public state and private construction

The public target domain is:

```text
Absent ── atomic publication of C ──> Complete(C, history, current head)
```

There is at most one semantic initialization per target. Complete is compatible
with later ordinary commits and migrations; it does not mean current head remains
H0. Ordinary commit laws are unchanged.

Private construction may contain partial files, complete unpublished files,
temporary indexes and orphaned staging after a crash. None is a Store, history
position or reusable validity fact. Backends choose maintenance/cleanup privately.
Loss/corruption of authoritative data is a contract/integrity failure, not a valid
third Store state and not evidence of absence.

## Caller knowledge

Knowledge concerns a target at an identified observation point:

| Knowledge | Evidence |
| --- | --- |
| KnownAbsent | An affirmative conforming observation establishes no published Store at that point |
| KnownComplete(C) | Acknowledged complete creation or equivalent verified recovery binds the exact initialization |
| UnknownWhetherPublished | Error/interruption or unavailable recovery evidence leaves Absent/Complete unresolved |

For a positively established complete foreign creation C', the result is conflict
with requested C. Knowledge of C' is not success for C. A generic backend error
contains no rollback assertion. Input rejection before Backend invocation proves
only that this attempt did not publish; previous/competing publication may exist.

A definite prepublication failure establishes absence only for an initially
absent isolated target or with affirmative target evidence. Competing publishers
must not be excluded merely because this attempt failed.

## Private implementation objects

| Proposed private object | Inputs | Authority and lifetime |
| --- | --- | --- |
| ValidatedInitialization | Original Module + G; derived V0/R0/H0/seed facts | Candidate valid if published; per-call; no committed-state authority |
| PublishedInitialization | Successfully observed immutable G, captured Hn, checked original material and applicable history/schema | Per-call evidence under Backend premises; no persisted token |
| ExactInitialValidation | Matching V0/R0/H0 and current validation profile/Module after acknowledged or verified publication | May establish the existing exact position-zero certificate |

These names guide internal type modeling; they are not facade exports. Existing
semantic helpers remain authoritative. No public optimization flag or caller-
constructible validity certificate is introduced.

## Creation/retry outcome relation

For legal requested C:

| Observed target | Permitted action/result |
| --- | --- |
| Absent at preflight | Request Backend creation once; another publisher may win before that call |
| Complete with exact original C | Verify expected original product/current head; recover without second initialization |
| Complete with established different C' | Deterministic creation conflict; preserve C' and all history |
| Reads fail or product cannot be established | Operational/integrity failure; no success or invented absence |

Backend create performs its own single-target atomic publication/idempotence law.
Core preflight is not the serialization primitive. Backends must protect the actual
check/publication against competing initializers.

## Original-product verification

With original Module and G, use expected normalized V0/R0 and existing identities:

1. Canonical G and its supported domain/policy/schema equal the expected creation.
2. Every original seed key has the exact version at revision one/as-of zero,
   with matching key, value, hash, revision and created_at. Later revisions/removals
   are allowed and must not hide original historical data.
3. Position-zero universes match the expected typed key sets; reject extra/missing
   members under the complete-enumeration Backend premise. Identity-use facts at
   zero match original lifetimes; removals at later positions are preserved.
4. Recomputed references and incoming answers at zero match R0 after canonical
   set normalization. Optional indexes cannot define membership or validity.
5. Recomputed seed accumulator/StateId equals H0's historical anchor. Capture one
   current head; its record/state/accumulator/schema obligations remain coherent.
6. If advanced, inspect original and current endpoint/history/schema evidence
   with existing result-oriented helpers. Do not reset the head or bind original
   Module against a migrated current schema.

Checking bounded history endpoints relies on immutable coherent Backend history;
it is not an independent full-prefix data/Behavior replay theorem. Full historical
replay retains its separate contract and error behavior.

## Generic opening scope

`Store::open(backend)` has no expected G or Module. It checks supported genesis,
unique seed keys, required original version identities/content hashes, position-zero
membership/lifetime bounds, seed accumulator and captured head/history/schema.
It returns a cold Store; no typed/current Behavior-validity certificate is inferred.

For v1, compare identity and structural content, not raw seed JSON to type-normalized
versions. For v2, existing canonical typed values permit exact encoded seed equality.
Without Module, complete Ref dependency extraction and legacy normalization remain
conforming-Backend premises. Structural endpoint checks must not be reported as
independent full reference/Behavior validity.

## Certificate lifecycle

```text
validated candidate
  -> publication attempt
  -> acknowledged success + checked exact publication
     or explicit verified recovery
  -> current captured position is zero and exact product/profile matches
  -> reusable existing position-zero certificate
```

Failed/unresolved creation never promotes the candidate. Advanced/migrated
recovery is cold even if live StateId happens to equal the original seed StateId.
Fresh operations validate actual current state under its exact schema and
Behavior/profile, following 014/015/017. Cache loss remains semantically harmless.

## Host durability scope

InMemory establishes logical publication under exclusive access, not persistence
after process loss. Durable hosts acknowledge success only after their disclosed
durability barrier. Live atomic publication and acknowledgment of durability can
occur at different physical steps; incomplete private bytes are never observable.
Verified durable recovery must establish the equivalent barrier before success.
Process restart evidence is scoped separately from machine power-loss assumptions.
