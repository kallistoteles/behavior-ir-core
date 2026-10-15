# Contract: Conformance Evidence and Delivery

**Status**: Planned checks and task targets, not executed results.

**Baseline**: `a24b65d26efaf62342daf5ab0f455540dfd61ed1`. Existing production semantics, historical bytes and gates remain authoritative.

## Conformance inventory

| ID | Required evidence | Planned owner |
| --- | --- | --- |
| C026-01 | Protected module/source/generator/archive bytes unchanged; no new exception or manifest rewrite | Generator/custody script tests; existing historical replay suites |
| C026-02 | Exactly five modules × two unique cases; actual request/expectation discovery; exact world/type domains, deliberate empties, no guessed membership | Shared facade harness + generator/runner inventory checks |
| C026-03 | Every original binding and supplied observation agrees with full world; all-row Snapshot proof, including unbound Account#a1.owner edge | Shared facade harness |
| C026-04 | Each complete parent and independently expected child passes existing Store initialization/validated seed export; expected deltas yield exact child and preserve unaffected rows | Shared facade harness |
| C026-05 | Ten independent full Record08 oracles; exact profile, module/action/witness/facts/trace/derived/effects/reasons, no extra normalization; five ALLOW/five DENY | Workspace and external facade tests; packaged CLI runner |
| C026-06 | Omit only invoice User universe: actual INVALID_INPUT/INVALID_STATE_SNAPSHOT at completeness boundary, no body/effects | Shared facade negative test + CLI control |
| C026-07 | Valid bound Invoice amount contradicts universe: actual INVALID_INPUT/INCONSISTENT_FACTS at consistency boundary | Same negative owners |
| C026-08 | Invoice amount -1 in both copies: complete consistent but invalid parent, actual INVALID_INPUT/INVALID_STATE_SNAPSHOT before body | Same negative owners |
| C026-09 | Same-decision authoritative changes fail exact equality; missing/extra/duplicate case/files and wrong expected exit status fail; command absence and existing real multiplicity controls remain | Shared comparator tests + runner script negatives + reused command suites |
| C026-10 | Current generator owns all ten outputs, reads explicit worlds, never writes expectations or protected files; two temporary regenerations equal delivered requests | scripts/tests/test_binding_conformance.sh |
| C026-11 | Supported facade only, no internal crate imports/new public exports; same shared helper in workspace and copied exact-Git consumer | crates/behavior-engine/tests/binding_conformance.rs; consumer/tests/binding_conformance.rs |
| C026-12 | CLI admits unchanged packaged modules, checks static hashes, evaluates each unchanged request twice with exact 0/1 statuses/full expected bytes, then replays actual records | Packaged current/check.py; determinism integration |
| C026-13 | Actual deterministic archive-production block includes tracked new data; exact release-check step 5 consumes extracted runner/data and same candidate CLI outside checkout; existing steps/asset schemas preserved | Focused package script test; release-check.sh step 5 |
| C026-14 | Full unchanged gates, exact candidate consumer, actual temporary lock/manifest capture, matching CLI and checked input/tool hashes; documented current navigation and truthful debug-vs-release evidence | Frozen-source external receipt and review |

All C checks are required. Required negative cases are separate from the ten behavioral entries. No skipped solver-backed check, missing package entry or setup-only RED is accepted as successful execution.

## Test-first and oracle custody

1. Capture baseline identity/tool/lock/archive/source hashes before changes. Read all relevant source uses from research.md and preserve intentional negatives.
2. Write/review declared parent/child worlds and full current expectations before evaluating corrected requests. Obtain static admission identities without action execution. Keep this authored evidence distinct from runtime logs.
3. Write a baseline-compatible probe against the ten **original** binding payloads and the intended outcomes. Require real runtime RED with ten INVALID_INPUT/INVALID_STATE_SNAPSHOT results; record source, exact command, statuses and inputs. A missing current file or compile error is not that defect reproduction.
4. Write/review and execute focused collector/shared-proof/comparator, generator and runner/determinism contract assertions before implementing each owner. Retain a relevant observed failure, exact command/test/input/source hashes, real status and log before the corresponding code change; rerun the same assertion GREEN afterward. Minimal fail-closed interface scaffolding may make new targets executable without implementing the missing contract behavior. Missing files, compilation errors or unrelated setup failures do not satisfy behavioral RED. Shared-helper assertions can use the reviewed worlds/oracles directly before generated requests exist; runner/determinism RED waits for generated current requests. Execute separate invalid-world/comparison/inventory controls before any later checker correction: already-correct controls are GREEN characterization, while each required correction needs relevant observed RED first. Label structural refusals, semantic mismatches, setup failures and the independent original-defect reproduction accurately.
5. Implement only new current generation/data and test/tooling integration after the relevant owner RED barrier. Show the same focused assertions and all required positive/negative checks GREEN with unmodified execution inputs. If all applicable characterization controls already pass, reuse that evidence without a needless code change or manufactured RED. If an expected record is wrong, review it against rules/worlds before changing it; never copy actual output to silence a failure.
6. Keep actual captures as evidence. Do not regenerate old goldens, archive digests or current expected records from execution.

T015/T016/T018 retain their focused RED-to-GREEN evidence in `evidence/us1-helper-cycle.json`, `evidence/us1-generator-cycle.json` and `evidence/us1-runner-cycle.json` under the feature directory. T022–T024 execute and retain separate before-change receipts; T025 records only demonstrated corrections and their same-assertion GREEN, or explicitly records reuse when no correction is required. T020/T026 remain complete regression GREEN runs, not the first execution of the affected tests. T003's original-request RED and T028's real step-5 integration RED remain separate obligations.

## Exact comparison and commands

The complete rules are in [semantic-results.md](semantic-results.md). New generic field-stripping/subset comparison is prohibited. Source locations/messages are already detached by Core's existing profile; domain values and semantic descriptors remain exact.

Current legacy modules require absent command fields and empty facade intent bags. Existing command identity/records/evaluation tests establish nonempty multiplicity separately. No new command syntax/workload is introduced to turn this fixture fix into another semantic feature.

## Packaged runner contract

Planned invocation:

```sh
python3 PACKAGE_ROOT/tests/fixtures/bindings/current/check.py \
  --root PACKAGE_ROOT --cli ABSOLUTE_CANDIDATE_CLI --output OUTPUT_DIRECTORY
```

`--root`, `--cli` and `--output` are explicit. Resolve the candidate CLI before leaving the checkout. The runner must not find another `behavior` through PATH or load conformance data outside the supplied root. Requests are read exactly as delivered, never amended. Runtime captures go only to output, not the package.

For each discovered case: check inventory/module byte digest, `admit` identity map and `schema-hash`; run `eval` twice, assert exact status 0/1, strict parsed full JSON and canonical bytes against the independent oracle; run `replay` on the actual record with its packaged module and require exit 0 / matches true. Record engine-info but do not treat a matching version as source-revision proof. Reject missing dependencies and extra/unclassified request/expectation files.

Return a failure identifying case, stage and first differing path for a semantic mismatch. Stable semantic records/digests exclude output directory names; execution metadata may contain actual absolute paths separately. Stdout summaries must not contain wall-clock values that interfere with twice-run comparison.

## Ordinary package check and real release integration

- `scripts/tests/test_binding_conformance.sh` uses the already built candidate CLI. Execute the exact conformance archive-production block from release-build.sh (from the conformance assignment to before engine-info), preserving git ls-files selection and deterministic tar/gzip flags. Fail if extraction markers drift instead of silently executing an obsolete copied recipe.
- Run the exact step-5 block from release-check.sh against that archive after its existing inventory/byte checks. Reuse the existing real step-4 extraction test unchanged; do not claim full release validation from these focused tests.
- Add the packaged runner call to production step 5, using the extracted root and the same candidate CLI as release-check's earlier steps. Resolve its path absolutely, execute from a temporary directory outside the source tree, and require data paths confined to extraction.
- No release-build change, new asset, new manifest schema, version bump, tag or publication is needed. New fixture files must be tracked before a positive production archive test because the real archive uses git ls-files.
- Add one current-corpus check to the existing determinism target, retaining all old cases/digest labels. The runner's per-case twice-run records supply the new digest outputs; absolute receipt paths are not semantic digest inputs.
- A later release must still run unchanged full release preconditions, including actual static double-build reproducibility. Focused debug evidence is labelled as such.

## Revision and custody receipts

Before final acceptance, freeze/push a clean candidate source revision. Run `scripts/gates.sh` exactly, with the pinned Nix/Rust/Z3 environment. Resource settings may disable debug symbols/incremental builds without changing assertions, optimization/test selection or gate contents; record actual environment.

Then run `scripts/check-consumer.sh --rev <full candidate SHA>` using the matching candidate CLI and this synchronous capture procedure:

1. Resolve the real Cargo's absolute path in the pinned Nix environment before adding a wrapper to PATH. Prepare `cargo-bin/cargo` under the external candidate receipt, not in tracked source. Record the wrapper source/digest and real executable identity.
2. The wrapper delegates the original arguments/environment to that real Cargo and waits for completion; it does not change dependency resolution or test options.
3. For the consumer test invocation, obtain the actual absolute path from its --manifest-path argument. After real Cargo returns, copy that actual Cargo.toml and sibling Cargo.lock into the receipt **before the wrapper returns**. check-consumer's EXIT cleanup therefore cannot race this copy. Do not poll temporary directories or reconstruct the files later.
4. Record actual arguments, manifest source path, real Cargo status, capture status and copied byte hashes. Preserve Cargo's true exit status; final acceptance separately fails if capture is absent, inconsistent or unsuccessful, even if the consumer script returned zero.
5. Require every resolved Core library package in the captured lock to use the full tested SHA. Check CLI provenance separately from the actual executable hash/build source. A reconstructed hypothetical lockfile is not evidence.

Keep final receipts under `/home/kalle/validation-receipts/core026/<candidate-sha>/`, outside frozen source. Bind candidate SHA/tree, source/fixture/world/expectation/generator/lock/tool hashes, actual commands/statuses/logs, module admission identities, parent/child proofs, generation/custody checks and all C026 mappings. Completion checklist metadata, if later committed, must be identified separately.

Corpus semantic_reference records the immutable reviewed baseline, while this receipt records the exact executing candidate. For a release, the existing release-manifest additionally binds the actual release commit, engine-info and CLI/conformance archive hashes. Caller-provided request git_revision is never used as binary provenance.

## Proof-obligation mapping

| Obligation | Concrete design evidence |
| --- | --- |
| PO-001 completeness | W01–W10 full explicit type/row maps; C026-02/10 |
| PO-002 consistency/unambiguity | Unique typed rows + unchanged bindings + every world row in existing Snapshot::decode; explicit Account edge check; C026-03 |
| PO-003 validity | Existing validated Store initialization/export, simple rule review and independent child worlds; C026-04/08 |
| PO-004 behavioral fidelity | Hand-authored complete oracles + N identity; five allowed/five intended DENY; C026-05/11/12 |
| PO-005 reproducibility | Twice-generation, twice-execution/full replay, real deterministic archive and digests; C026-10/12/13/14 |
| PO-006 historical preservation | Existing inventory and pinned current bytes, no added archive exception, protected old generator; C026-01/10/14 |
| PO-007 no semantic relaxation | No production crate/API/format/gate weakening; phase-specific negatives and reused historical suites; C026-06/07/08/14 |
| PO-008 comparison fidelity | Full semantic object equality including optional presence/ordered evidence; same-decision mutations; C026-09 |

These are concrete planning discharges and required implementation evidence, not claims that future tests have already passed.

## Requirements and acceptance mapping

| Source | Required conformance |
| --- | --- |
| FR-001 | C026-02/03/04/05/10 |
| FR-002 | C026-02/03/04/10 |
| FR-003 | C026-04/05/09/11/12 |
| FR-004 | C026-05/11/12/13 |
| FR-005 | C026-02/05/09/11/14 |
| FR-006 | C026-06/07/08 |
| FR-007 | C026-01/02/10 |
| FR-008 | Research source-role table; C026-01/14 |
| FR-009 | C026-01/10/14 |
| FR-010 | Current README + root link; C026-13/14 |
| FR-011 | C026-12/13/14 |
| FR-012 | C026-01/06/07/08/14 |
| FR-013 | Core-owned corpus + unchanged release schemas/no publication; C026-13/14 |
| FR-014 | C026-02/03/04/08 |
| FR-015 | C026-05/09/11/12 |
| SC-001 | C026-02/03/04/05 |
| SC-002 | C026-12/13 |
| SC-003 | C026-02/06/07/08/09 |
| SC-004 | C026-01/14 |
| SC-005 | C026-10 |
| SC-006 | Source-role inventory + C026-11/13/14 |
| SC-007 | C026-05/09 |
| AC-001 | C026-05/11/12 |
| AC-002 | C026-02/10 |
| AC-003 | C026-03 |
| AC-004 | C026-04 |
| AC-005 | C026-04/05/11/12 |
| AC-006 | C026-05/11/12 |
| AC-007 | C026-06/07/08 |
| AC-008 | C026-02/09/11/14 |
| AC-009 | C026-12/13 |
| AC-010 | C026-01/14 |
| AC-011 | C026-01/06/07/08/14 |
| AC-012 | C026-11/12/13 |
| AC-013 | C026-10 |
| AC-014 | C026-05/09 |
| US1/AC1–4 | C026-02/03/04/05/11/12/13 |
| US2/AC1–6 | C026-02/05/06/07/08/09/11/14 |
| US3/AC1–3 | C026-01/10/12/13/14 |
