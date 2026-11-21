# 036 research CLI and evidence interface

These are interfaces to implement under `experiments/transition-study036/`; no command or executable is provided by planning. No public Core/Safety production interface changes. Paths and tool/executable selections come from a caller-owned profile, not candidate evidence. All outputs are create-once under explicitly registered036 roots.

## Supervisor commands

| Command | Input and required behavior | Output |
| --- | --- | --- |
| `study.py preflight --profile PATH --bootstrap-receipt PATH --out NEW_ROOT` | Validate exact036 profile, prior preservation refs, source/tool declarations, free disk and owned-root separation. Adopt the actual first bootstrap start/boot after validating its profile/owned-root binding; never reset the existing single clock. Pure profile syntax checking may occur earlier. | Session/profile manifest with actual boot/origin/deadlines and declared output slots; no future output digests. |
| `study.py prepare --session PATH` | Bounded selective exact-source export, dependency/tool availability and source/gate index verification. Use registered caches only; retain acquisition/build failures. | Source/tool receipts and actual prepared inputs. |
| `study.py freeze --session PATH --revision ID --inputs PATH` | Bind already existing reviewed source/patch/lock/profile/proof/control/workload bytes for one revision. New revision has predecessor reference and identical inherited clock/limits. | Immutable revision/input manifest; no build success implied. |
| `study.py run --session PATH --revision PATH --stage ID` | Verify remaining stage/global budget, actual prerequisites and exact source. Execute fixed stage cases/slots. Q is independently attemptable after S0 even ifS1 is unmet. | Raw logs, process/gate/case records and accepted or failed/blocked slot results. |
| `study.py collect --session PATH --out NEW_ROOT` | Close owned processes/writers; derive tables/FR/SC assessment from actual records, preserving failures and unrun blockers. | `assessment.json`, `report.md`, raw-derived tables and sealed campaign index. |
| `validate.py --session PATH --assessment PATH --expected-context PATH --out NEW_ROOT` | Independently chosen verifier/source/subject context; byte/accounting/check/replay into separate owned validation root under the same remaining budget. | Detailed validation/reproduction dispositions and sealed validation index. |

`preflight` validates the existing reviewed-recorder bootstrap receipt described in [campaign](campaign.md#recorder-bootstrap-before-the-controller-exists); the new controller did not have to exist to run its first bounded red tests. Bootstrap outputs live in a distinct036 development root. `preflight` never discards existing files or resets an earlier session clock. Reinvoking it against an existing root fails; a correction attaches a new revision to the existing session. Freeze cannot change the budget, expected semantic contract or failed sample identity. A changed scientific protocol needs a separately identified future investigation, not a replacement run hidden inside036.

Allowed stage IDs: `S0`, `S1`, `Q`, `S2`, `S3`, `S4`, `S5`; the controller's fixed inventory controls which cases each can execute. Default collection retains all declared not-run slots. Optional B/C slots have an explicit eligibility/disposition record rather than silently vanishing. The program never accepts an arbitrary shell command or executable path from a supplied result record.

## Native workers and oracle

Source-selected bin targets: `transition036-reference`, `transition036-reuse`; optional gated targets `transition036-buffered`, `transition036-compact`. Names label roles but do not prove mechanism activation. Exact executed binaries are retained and hashed with build/source/tool/profile receipts. A separate original oracle package uses the pinned unpatched Core/Safety interpretation.

Planned worker interface:

`WORKER run --prepared PATH --stream ID --replicate ID --mode timing|diagnostic --out NEW_ROOT`

The prepared manifest chooses allowed streams and expected inputs/endpoints. A stream can contain the fixed diagnosis primary/continuation pairs or the full frozen lifecycle session order. A worker actually checks its program context before any authority use, owns it privately, and creates/checks a fresh state/history ground for each independent sample/session. Resident context receipts identify all later sessions relying on that actual check. The controller executes one heavy worker at a time.

No request can override the fixed treatment or import a supplied verified flag. No arbitrary verifier/model/recipe is loaded from evidence. Unsupported requests use the source-bound original fallback where specified; invalid protocol input produces a typed failure, not a new Core decision.

Oracle interface:

`ORACLE prepare --input PATH --out NEW_ROOT`

It accepts the frozen canonical fixture/stream configuration and separately authored semantic facts without requiring a prepared manifest that it is supposed to create. It produces full original expected observations and actual verification context. Later oracle replay consumes the bound prepared manifest and checks all selected operations without using candidate-selected projections.

Compact reconstruction interface, ifS4 is reached:

`transition036-compact reconstruct --record PATH --inputs PATH --expected-subject PATH --out NEW_ROOT`

It verifies exact version/profile, parent, bound input DAG and recipe before producing a complete original observation. Missing/unavailable inputs produce explicit non-success; a producer-supplied expected subject cannot override the independently configured subject. Reconstructing does not create a Core ground.

## Record and process semantics

All bounded records follow [data model](../data-model.md). Operational completion, proof status, semantic equality, cost comparability and candidate acceptance are independent fields. A stopped process preserves actual exit/signal, resource reason, captured stdout/stderr and descendant-closure evidence. Receipt hashes are written after outputs/processes close, never invented at freeze time.

| Exit | Meaning |
| --- | --- |
|0|Declared operation completed successfully. `collect` may successfully document a rejected/stopped investigation; this never mints a positive assurance result.|
|1|Actual expected proof/conformance/control/gate or validation acceptance failed.|
|2|Invalid invocation, unknown version/slot, bad input/subject/path or attempted overwrite.|
|3|Tool/build unavailability, budget/resource stop or unmet prerequisite; reason and blocking reference required.|

A deliberate negative control may complete its parent control command with 0 only if an independent checker confirms the actual expected rejection/failure. The raw child's real exit/signal remains visible. Ordinary `run S1/Q` cannot report0 for an unmet positive gate merely because it wrote a truthful failure record.

## Evidence DAG

1. Session/profile manifest binds pre-existing baseline/profile inputs and declares future slots.
2. Revision manifest binds existing source/tool/lock/control inputs; build receipts bind actual emitted binaries/generated proof subjects to it.
3. Oracle/prepared manifest binds actual independently established reference outputs and worker receipts.
4. Gate/case/operation/session records bind exact inputs and actual output artifacts with separate authority/cost dimensions.
5. Collection closes writers/processes, binds actual outputs and seals the campaign. Validation writes only to a separate output root and seals its own artifacts.

No manifest binds its own future digest. Reject missing logs, changed bytes, stale tool/source contexts, unclosed descendant groups, path escapes, duplicate/trailing JSON, unknown schema fields and out-of-bound structures. Evidence is read as untrusted data; hashes prove only byte identity. Every implementation/proof/cost claim identifies its source-specific prerequisites.

## Independent validation minimum

Recompute source/executable bindings, every table from raw observations, stage/budget/closure accounting and all 21 FR/7 SC dispositions. Freshly check accepted proof roots/types/transitive axiom inventory; rerun independent original full-observation conformance and negative controls, and rebuild/replay eligible R/GV D1/D3 and the changing-session boundary cases in an owned fresh root where budget permits. Preserve selected prior manifests and unrelated files without a whole-archive traversal.

Report exactly which semantic/proof/build cases were independently reproduced. Budget exhaustion or absent full reproduction remains an explicit limitation and prevents a full reproduction claim; a limited successful integrity check cannot certify the native bridge or erase a failed canonical gate.
