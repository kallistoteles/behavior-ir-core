# Exact-context, publication and recovery evidence

The broad public regression command is:

    cargo test -p behavior-store --test incremental_validation --test snapshot_reuse --test migration_context --test migration_evidence

`us3-public.txt` records 39 passed tests and two existing explicitly ignored measurement
workloads (12 + 10 + 6 + 11 passed). The existing suites cover exact schema/behavior
substitution, invalid or contradictory migration candidates, explicit Backend mutation,
immutable history, same StateId at different positions, cold open, same-head reuse,
concurrent readers, stale requests, failed/conflicting CAS and actual Backend errors.

Added selected-global cases compare whole records, bundles and commit products under
reversed Backend enumeration and optional-index configurations; reject mutated facts,
universes, changes, trace outcomes, behavior/profile/history; recover after conflict,
failed publication and committed-but-lost acknowledgement; and rederive after a
same-hash but different admitted module, schema migration or cold reopen. Invalid
initial state and invalid migration target never acquire reusable authority. An
additional private control holds prepared state shared across commit: promotion is
then discarded rather than copying the complete universe solely to preserve reuse.

The public facade's `consumer/tests/incremental_validation.rs` adds a separate-process
lost-acknowledgement control using the existing durable host. The worker exits 86 after
persistence, before acknowledgement; a new process/Store recovers the actual child,
repeating the original candidate returns `already`, and history does not advance on
that retry. The next valid creation commits and the over-limit creation is denied.
Data replay and behavior replay over the segment both pass without prepared state.
The separate targeted command passed two tests (worker plus parent); the final normal
consumer gate reruns all cases. This covers cooperating Linux filesystem behavior,
not power-loss/device honesty.

No production recovery protocol, governance mechanism, Backend requirement or durable
format was added. Core owns checked semantic state; Store binds exact module/schema,
Store identity, record, position, StateId and validation profile. Only successful exact
CAS carries the child. Unknown continuity, shared ownership, refusal or uncertainty
provides no child reuse authority. Required commit freshness/history checks retain
their existing failure phase; fresh-create reproduction deliberately re-observes
history-only used identities instead of substituting cached provider success.
