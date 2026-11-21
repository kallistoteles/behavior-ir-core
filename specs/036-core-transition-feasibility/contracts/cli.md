# Core036 v2 CLI and evidence interface

These are implementation targets, not commands delivered by this planning pass. Existing scripts implement only the historical v1 subset. All new commands use the independently selected v2 work context and registered roots. No public production Core API changes.

## Supervisor

| Command | Required behavior |
| --- | --- |
| `study.py init --spec PATH --profile PATH --previous-index PATH --bootstrap PATH --out NEW_WORK_ROOT` | Validate spec-v2/profile/root ownership and archived-v1 mapping; import the actual closed initial bootstrap receipts; create the persistent work context once. No worker/tool success is implied. |
| `study.py freeze --work PATH --revision ID --inputs PATH` | Verify existing input bytes and source/configuration/model context; retain immutable source subject. Never hash an imagined output or overwrite a revision. |
| `study.py declare --work PATH --stage NAME --revision ID --profile PATH --slots PATH --out NEW_ATTEMPT_ROOT` | Freeze prospective numerical allocation, slots, correction/predecessor and exact controller/subject context before execution. Initial bootstrap/ENV binds available controller/source declarations, not unbuilt worker hashes. |
| `study.py run --work PATH --attempt PATH` | Validate actual clock/resources/gates; execute only the stage and cases declared in that attempt. No arbitrary shell/verifier executable from result data. Record actual start/outcomes/process closure and charge all work. |
| `study.py resume --work PATH --checkpoint PATH --correction PATH --profile PATH --out NEW_ATTEMPT_ROOT` | Validate the closed predecessor, diagnosed cause and prospective correction/allocation; declare successor with remaining slots. Re-establish process-private authority; never import a checked flag or relabel an old sample. |
| `study.py status --work PATH` | Derive current deliverables, invalidated/met gates, completed/pending slots, cumulative actual work and exact next runnable engineering tasks. Unmet claim gates do not suppress independent development. |
| `study.py collect --work PATH --kind checkpoint\|candidate --out NEW_ROOT` | Derive raw tables and all FR/SC/deliverable statuses. Checkpoint/candidate collection is not final feature completion. Close relevant writers before sealing an attempt; no seal while the recorder still writes. |
| `study.py finalize --work PATH --assessment PATH --reproduction PATH --out NEW_ROOT` | Independently recompute the all-deliverables predicate and verify earlier closed candidate/reproduction contexts; emit final completed decision only if all requirements/slots/checks pass. Otherwise preserve unfinished checkpoint and return3. |

Stages: `ENV`, `NATIVE`, `Q`, `DIAG`, `SESSIONS`, `COMPACT`, `REPRO`, `FINAL`. DIAG includes the required B proof/control/activation and comparison work after diagnosis. Dedicated development tests/builds are charged to their owning stage. `run` does not accept a source-selected stage override from a candidate output.

Controller/workload/source declarations precede first heavy preparation. The bootstrap red has an explicit actual receipt under the predeclared stricter launcher; `init` imports it rather than starting development time over. ENV may materialize declared Git inputs/tools before worker source freezing/builds; every resulting actual subject is frozen before its corresponding gate or comparison. No prepared/oracle manifest is required before the oracle actually creates it.

## Fixed workers and independent oracle

Targets: `transition036-reference` (R), `transition036-reuse` (GV), `transition036-buffered` (B), `transition036-compact` (C). Fixed role comes from source entrypoint, not input flags. Retain actual distinct executables and mechanism evidence; names/hash differences alone do not establish treatment. Reject supplied checked/verified/ground flags.

Worker interface: `execute --input PATH --out NEW_ROOT`. Typed `core036.request.v2` binds work/slot/source/endpoint, mode (`timing` or `diagnostic`), ordered operation/session cases and exact requests/context/metadata. It may request a batch of fresh-ground cases under one actually established immutable program context. Stream length is ≤128; every independent case has fresh state/history authority. Both cold-worker and resident-session accounting are explicit.

Oracle interfaces: `prepare --input WORKLOAD_PATH --out NEW_ROOT`, then `replay --prepared PATH --expected-context PATH --out NEW_ROOT`. Preparation consumes raw frozen workloads and independent authored facts, establishes original program/state authority and emits complete reference observations/subject. It must not depend on a future prepared manifest or candidate outcomes. Oracle has unpatched original source and separate build identity.

Compact reconstruction: `reconstruct --record PATH --inputs PATH --expected-subject PATH --out NEW_ROOT`. It verifies all versions/content/subject/DAG/availability and replays the bound original recipe. It returns exact full original output or typed non-success, never private execution authority.

## Independent validator

`validate.py --work PATH --assessment PATH --expected-context PATH --profile PATH --out NEW_ROOT`.

Expected context is selected by the verifier outside the candidate archive and fixes original semantics, spec/source/model/proof/profile/endpoint/control roots, source/tool build closure and experiment matrix. It cannot be selected by a candidate success report. Execute fresh checks/rebuild/replays in separately owned targets; derive tables/statuses from raw data. Exact scope is mandatory in [reproduction](reproduction.md). Integrity-only success cannot satisfy full reproduction.

## Exit and record semantics

| Exit | Meaning |
| --- | --- |
| 0 | Declared operation succeeded. `collect` may succeed while the feature stays unfinished; `finalize` may return0 only after true completion. |
| 1 | An actual test/proof/conformance/quality/control acceptance failed; preserve raw failure and corrective work. |
| 2 | Invalid invocation/version/subject/schema/path, changed bytes or attempted overwrite. |
| 3 | Unavailable tool, resource stop, unmet prerequisite or unfinished completion. Preserve checkpoint and continuation task. |

Expected-failure controls pass only when an independent checker confirms the real rejection. Raw child exit/signal remains unchanged. Operational outcome, semantic result, proof, cost comparability, candidate usefulness and feature completion are distinct fields.

All records use strict [data model](../data-model.md) bounds and create-once outputs. Input refs never select arbitrary shell commands, verifier implementations or ownership roots. Backend acknowledgement, output synchronization, exact reconstruction and durable publication remain distinct. No v2 write modifies old source snapshots/seals or pretends old command behavior implements the new interfaces.
