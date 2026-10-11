# T002 — Frozen Historical Fixtures and Baseline Capture

This setup captures actual historical outputs before production changes. It does
not fix the finding, run a remediation RED assertion, or establish universal
soundness. The archive manifest is
[`archive-manifest.json`](../../../../tests/fixtures/resulting-state-validity/archive-manifest.json).

## Provenance

- T001 baseline HEAD: `932eb8188dc28393213491e27f66e3bc7e273a6b`.
- Specification base: `5949cb111cd6c5af34b0fc9083e78810df450fce`.
- Immutable audit: `b28f9af1ba2e3afc641f6be6dda9eb5c5d9688d9`.
- T001 source/test manifest SHA256:
  `2e902e6e52befef96b44c1ed7426ccaa657d59279e2ccc664bdbef77741161b8`.
- All 315 T001 source/test digests matched before and after capture.
- All 546 original tracked fixture files matched the baseline Git blob and were
  inventoried with byte size, SHA256 and contained document versions. Their bytes
  remain at their original paths; no historical golden was regenerated.
- The manifest separately digests 42 captured files, including generator source,
  invocation/decision bodies, command history and actual command run metadata.

The immutable audit overlay, original run metadata and stdout/stderr are copied
under `tests/fixtures/resulting-state-validity/audit-016/`. Their hashes match the
audit's recorded artifacts. The old counterexample module is derived by the exact
mutation in that pinned overlay, not by inferring a substitute model.

## Actual commands and outputs

Baseline compilation from the owning repository in its pinned environment:

```bash
nix develop -c cargo build --locked -p behavior-cli
```

It exited 0 in 36.75 seconds. This is baseline archive capture, not a remediation
gate. The manifest records the resulting binary digest. No tracked dependency
override, production-source edit or alternative evaluator was introduced.

The capture program is
[`capture_baseline.rs`](../../../../tests/fixtures/resulting-state-validity/capture_baseline.rs).
It was compiled with `nix develop -c rustc --edition=2024`, the exact freshly built
Core/Store/verifier/serde_json dependency artifacts, and `-L dependency=...`.
[`capture-compile.json`](../../../../tests/fixtures/resulting-state-validity/capture-compile.json)
records the complete argument vector, generator digest and successful exit.

```bash
nix develop -c target/debug/capture_017_baseline /home/kalle/repos/behavior-ir-core-017
```

The generator exited 0. Its assertions confirm original behavior and independent
controls; they are not expected to fail. Full command/output provenance is in
[`capture-run.json`](../../../../tests/fixtures/resulting-state-validity/capture-run.json).
Never use this historical capture program to refresh records against remediated
code. Future tests replay these fixed bytes and separately expect current results.

The baseline CLI also evaluated and replayed complete decision 0.4/0.5/0.6 bodies
and a read-v2 body. Exact eval/read and replay argument vectors, exit statuses and
replay outputs are in
[`cli-capture-runs.json`](../../../../tests/fixtures/resulting-state-validity/cli-capture-runs.json).
Every listed evaluation and replay exited 0. No new expected record was written by
hand. New requests and module copies are identified separately from engine outputs.

## Captured controls

| Case | Actual baseline evidence | Independent interpretation |
| --- | --- | --- |
| Audited invalid creation | `audit-counterexample/invalid-create.*.json`: request, ALLOW record, bundle, invocation and wrapper, committed transition | Unchanged e0 targets `new`; `new` exists after commit, so its `not exists(target)` constraint is false. Later Store read refuses `STATE_INVALID`. |
| Valid creation | `audit-counterexample/valid-create.*.json`, with new identity `unrelated` | e0 still targets absent `new`; both rows satisfy the explicit predicate. Commit and subsequent read succeed. |
| Decision 0.4 | `decisions/decision-0.4/`: copied invoice module/request and actual evaluated record | Existing admitted ALLOW control; standalone replay matches. |
| Decision 0.5 | `decisions/decision-0.5/`: copied account module/request and actual evaluated record | Existing lifecycle ALLOW control; standalone replay matches. |
| Decision 0.6 | `decisions/decision-0.6/`: copied order module/request and actual evaluated record | Existing query/lifecycle ALLOW control; standalone replay matches. |
| Decision 0.7 | Existing receipt record, wrapper and command/hash fixtures indexed without change | Original command-profile evidence is retained. |
| Read-v1 and invocation v1 | Existing records, inputs and modules indexed without change | Digest inventory does not imply every existing fixture was executed in T002. |
| Read-v2 | `reads/read-v2/`: baseline command-profile module, explicit empty snapshot and constant read | Actual VALUE(7) record and replay match. |
| Command occurrence | `commands/`: exact module/genesis/bundle/transition/stream request/page | One durable occurrence; its ID independently equals SHA256(tag, NUL, canonical identity inputs). No external command was dispatched. |
| Migration and hash evidence | All existing migration fixtures and identity vectors indexed | Frozen bytes are preserved; no additional migration execution is claimed. |

Complete decision 0.5, read-v2 and durable command-occurrence bodies needed actual
baseline generation: existing 0.5 fixtures were subset expectations, and the
inventory found no read-v2 or durable occurrence JSON golden. The manifest records
this distinction. The direct bad-child membership predicate is independent of
the production full validator; record reproduction and the read corroboration
are separate evidence.

## Verification

The manifest's original-file SHA256 and baseline Git-blob checks all passed.
Every captured artifact's SHA256 matches its bytes. Audit overlay/stdout/stderr
digests match immutable run metadata. Captured JSON parses; full generated
decision versions are 0.4, 0.5 and 0.6, and the generated read format is v2.
Both counterexample/control decision records and invocation wrappers reproduced
under the unchanged baseline. The occurrence formula was checked independently
using Python's SHA256 and canonical sorted JSON.

These files are locally created setup evidence. They are not committed, merged,
published, or a replacement for later collected RED/GREEN runs and required gates.
