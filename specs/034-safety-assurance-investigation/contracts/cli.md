# Research CLI contract

Version `core034.cli.v1`. These commands are planned implementation interfaces, not commands already available from this planning step. They expose research operations, not production Core APIs. All paths and subjects are validated before execution; no arbitrary evidence-supplied executable or proof source is run.

## Supervisor

```text
python3 experiments/assurance-study034/study.py freeze
  --profile PATH --out NEW_CAMPAIGN_DIRECTORY

python3 experiments/assurance-study034/study.py run-case
  --manifest INPUT_MANIFEST --case FROZEN_CASE_ID

python3 experiments/assurance-study034/study.py collect
  --manifest INPUT_MANIFEST --out NEW_ASSESSMENT_DIRECTORY

python3 experiments/assurance-study034/validate_report.py
  --manifest INPUT_MANIFEST --assessment ASSESSMENT_DIRECTORY
```

`freeze` validates installed tool/source readiness, case definitions, authored expected facts, authority profiles, limits and create-once output slots. It starts/persists the whole campaign clock and emits the input manifest or an explicit failed-readiness assessment. It does not imply that a future build, certificate or case has succeeded. Missing dependencies cannot select an ambient version.

`run-case` supports the case IDs frozen in the profile: `bootstrap`, `proofs`, `integration`, `certification-cold-2`, `certification-cold-3`, `controls`, and `growth-D1` through `growth-D6`. Bootstrap builds retained workers, admits exact subjects, generates/validates bound oracle material and runs the first cold certification/checking pair before publishing a prepared manifest. Other measured cases require that manifest and their preceding gates. No output is overwritten and no budget is restarted.

The supervisor chooses a pinned execution environment, toolchain and worker path from checked configuration. It logs the resolved binaries/derivations and includes environment setup/build work in the appropriate endpoint. It invokes actual Safety tools under their pinned toolchain; matching only a version banner is insufficient. Compiled caches may be reused only with recorded provenance and without writing frozen historical outputs.

`collect` requires the authored origin/assurance/decision input records and all attempted-case receipts, marks missing planned work explicitly and builds a closed artifact index plus machine-readable assessment and human report. It cannot infer user intent, assert a missing proof or turn a missing role into a passing one. It runs after processes and handles are closed.

`validate_report` independently rechecks byte bindings, expected subject/claim/premise consistency, all 24 cells and fifteen controls, source and formal evidence, timing scope and requirement coverage. A structurally complete rejected investigation can validate; the result must separately report candidate status, unestablished claims and unactivated product decisions.

## Rust worker

```text
assurance034 prepare --input MANIFEST --out NEW_DIRECTORY
assurance034 produce --prepared MANIFEST --case CASE_ID --out NEW_DIRECTORY
assurance034 check --prepared MANIFEST --case CASE_ID --packet PATH --out NEW_DIRECTORY
assurance034 control --prepared MANIFEST --control E_ID --out NEW_DIRECTORY
```

Only the supervisor launches bounded workers. `prepare` uses public Builder/Models/Safety operations to produce exact admitted subjects and check program/boundary evidence. `produce` runs A's coordinated lifecycle or a declared generation role. `check` runs a fresh B consumer or a manifest-selected resident continuation session, comparing the entire expected subject and original observations. `control` executes only the named predeclared positive/negative case pair, not arbitrary code from a packet.

Use public `behavior-models::safety` analysis/certification/snapshot interfaces and public `behavior-engine` Store/Backend/replay exports. No private Core dependency or new evaluator is permitted. Unsupported public functionality yields a recorded feasibility result rather than an invented implementation assumption.

Resident sessions are bounded case operations, not hidden always-running services. Their startup, basis establishment, measured extension and shutdown have separate declared intervals. Fresh cases start new processes and cannot reuse resident authority. Serialized descriptors never create private checked values.

## Output and exit behavior

Each command emits one final machine-readable summary containing `format`, operation/campaign/case IDs, manifest/assessment references, operational status, assurance disposition, candidate status where applicable, stop reason, and product adoption `unactivated`. Detailed diagnostics and original Core/Safety records are referenced retained files.

| Exit | Meaning |
| ---: | --- |
| 0 | The requested operation/check completed and its declared expectations were met. This includes a demonstrated expected negative control or a consistent negative final report. It does not mean all assurance claims are established. |
| 1 | Unexpected acceptance/rejection, failed required check or invalid evidence/report. Preserve the exact failed obligation. |
| 2 | Invalid command, malformed input, unsupported version or unmet prerequisite before execution. |
| 3 | Recorded timeout, resource exhaustion or interrupted tool/worker, with remaining cases explicit. |

Original child signals/exit codes and semantic outcomes are retained separately. The collector may assess a campaign containing nonzero attempted cases; it does not change their statuses. Output paths are create-once, file reads are bounded and all packet/tool/expected-subject identities are checked before authority. Relative artifact paths cannot escape the campaign root. Claims involving a trusted host remain conditional, and memory acknowledgements are always labeled non-durable.
