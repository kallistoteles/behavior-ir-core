# Research CLI and evidence contract

All commands below are planned interfaces to implement under `experiments/reuse-study035/`. They do not imply that workers or results exist. Paths are fixed by a caller-controlled profile and owned roots, never selected from untrusted evidence. Outputs are create-once.

## Supervisor

| Command | Inputs | Output/behavior |
| --- | --- | --- |
| `study.py prepare-sources --out PATH` | Fixed pinned Git objects, reviewed local patches, source/gate file inventory and exact dependency metadata | Owned offline Core/Safety source preparation plus manifest/receipts; never clone the full historical repository. Used during development. |
| `study.py freeze --profile PATH --out PATH` | Complete reviewed source/patches, manifests/locks, toolchain, profile, proof/type/control inventory and authored facts | `input-manifest.json`, source snapshots and one monotonic campaign start/boot/limits; no invented future output hash. |
| `study.py run-case --manifest PATH --case ID` | Exact frozen inputs and declared case | Role logs/receipts/results and case summary; validates prerequisite/remaining budget before launch. |
| `study.py collect --manifest PATH --out PATH` | Actual completed/stopped case outputs | Assessment, raw-derived tables/report, requirement/control coverage and immutable closed campaign index. Missing slots get exact gate-linked dispositions. |
| `validate.py --manifest PATH --assessment PATH --out PATH` | Closed archive plus independently chosen expected verifier context | Fresh read-only byte/source/worker/result/accounting validation and bounded semantic/proof rechecks into a separately declared validation output root. |

`prepare-sources` development work is recorded separately. Freeze binds actual reviewed source bytes and preparation/cache conditions. Final bootstrap either verifies the existing immutable frozen export or materializes the entire frozen source closure unchanged in a new owned root preserving relative dependency layout and lock/manifest bytes. It performs real builds/checks; no frozen source is overwritten and no Cargo manifest or patch path is rewritten after freeze. Actual final verification/build/preparation time is charged; preinstalled/copied dependency sources are not called a cold installation.

Fixed cases, in order: `bootstrap`, `proofs`, `conformance`, `treatments`, `quality`, `growth-D1`, `growth-D2`, `growth-D3`, `growth-D4`, `growth-D5`.

- Bootstrap first builds, retains and byte-binds the four workers plus unpatched oracle using built-worker receipts. It does not require the prepared manifest that it is supposed to create. Then the oracle establishes exact original subjects/expected full outputs against authored facts. Only actual successful preparation publishes `prepared-manifest.json`.
- Proofs checks the new fixed root/type/source inventory and fresh compiled closure under pinned tools, not proof/executable code supplied by a packet.
- Conformance executes the complete declared controls and drains with upstream/native full comparisons.
- Treatments establishes actual G/V activation, source/executed identity and semantic equality across timing/work modes. Four distinct hashes alone cannot pass.
- Quality runs scoped package/Rust/Python checks and the actual canonical root gate on the declared candidate export. Preserve any blocked integration result; never replace the gate with its version banner or a scoped pass. Apply the explicit quality-to-growth failure policy in campaign.md; unclassified failures block growth.
- Each growth case runs all four groups and exactly its declared sample slots, subject to gates and remaining limits. No output reuse or replacing a failed sample.

A correction may use `freeze --inherit-clock-from PATH` only into a different declared revision root. It binds predecessor bytes and exact unchanged clock/boot/limits; it cannot continue altered original inputs or replace observations. It is not an automatic retry policy.

## Workers

Four bin targets: `reuse035-reference`, `reuse035-ground`, `reuse035-views`, `reuse035-combined`. All have fixed treatment entry points. No input flag can turn an R report into GV or select a producer-supplied executable. Planned interface:

`WORKER run-group --prepared PATH --case ID --out PATH`

A group acquires its exact program context, then runs three independently acquired timing parents and one separate work parent. Input subject and all slots must be known to the prepared manifest. Each sample persists complete original observations, actual before/after history and diagnostic timings/work; an additional same-process drain verifies genuine child carry-forward. Only worker-private constructors can establish grounds.

The unpatched oracle has a distinct pre-prepared command: `ORACLE prepare --input PATH --out PATH`. The input is the frozen controller-selected oracle configuration, and the controller selects its executable from the successful built-worker receipt. This command does not require a prepared manifest; its actual outputs help create that manifest. Later oracle comparisons may consume the prepared manifest. The oracle is a separate uniquely identified standalone package and accepts only fixed original fixture/control requests from the manifest. Reference strategy outputs must be independently compared to it. Native/Core dependency metadata must bind the worker and Safety to one patched source identity; the oracle remains unpatched.

## Records and states

Every operation/result identifies `format`, command/case/role/sample, input/prepared parents, actual outcome, exact artifact refs, reason/blocking ref, original semantic result refs, proof/correspondence status, cost scope and `product_adoption: unactivated`.

Keep separate:

- Operational: `completed`, `build_failed`, `tool_failed`, `resource_stopped`, `interrupted`, `invalid_archive`, `not_run`.
- Semantic comparison: `equal`, `mismatch`, `not_evaluated`.
- Mathematical evidence: `checked_for_fragment`, `refuted`, `unsupported`, `unestablished`, `not_run`.
- Native correspondence: per-component statuses from the data model, never collapsed into checked mathematical evidence.
- Cost/experiment: `measured`, `not_measured`, `not_comparable`, `confounded` with the exact reason.
- Candidate verdict: `supported_for_fragment`, `conditional`, `rejected`, `undetermined`.

Exit 0 means the command completed its declared operation, including truthful negative assessment; it never mints assurance. Exit 1 is an actual semantic/conformance/proof expectation failure, 2 invalid invocation/input/state, 3 unavailable/failed tool or resource stop. Deliberate fault controls retain original child exits/signals even when the overall expected-fault case completes.

## Output DAG and independent validation

Input manifest binds only existing input bytes and declares future slots. Built/prepared manifests bind actual outputs and their input parents. Case/role outputs bind actual commands, retained executable, logs and confirmed closed resources. Collection writes narrative and structured assessment from actual data, then seals the campaign. Validation writes to a separate root so it cannot change sealed bytes. A final publication index may bind both closed campaign and validation indexes.

Reject path escapes, changed bytes, missing logs, unclosed descendants, out-of-scope outputs, unknown versions, duplicate/trailing JSON and unbounded/supplied tool inputs. All exact parser/record bounds are in [data-model.md](../data-model.md); resource limits in [campaign.md](campaign.md).

Independent validation must recompute raw medians/ranges, confirm original semantic observations/replays, fixed control/proof inventory, treatment mechanism evidence and all FR/SC dispositions. A fully documented negative assessment can validate; incomplete or falsified positive evidence cannot. Time/resource failure remains distinct from refutation of the mathematics.
