# Reproducing the negative assessment

This study has no complete certified Core release. Its failure-path assessment
is `rework`, with correctness and performance both `not_established` and
`g1_pass: false`. Reproducing that result does not establish a successful Core
transition. The full second-reviewer build/campaign remains an explicit SC-005
limitation.

Clone `kallistoteles/behavior-ir-core`, branch `033-core-proof-feasibility`.
Use a complete checkout, not a GitHub page download. The retained Nix lock and
`experiments/transition-study033/shell.nix` select the recorded toolchain. Run
commands from the repository root. The ELF assessor is a retained developer
tool; it needs its pinned Linux/Nix runtime. It is not a Core verification key.

## Check retained material

After the final seal has been published:

```sh
python3 specs/033-core-proof-feasibility/benchmarks/study_seal.py verify \
  --manifest specs/033-core-proof-feasibility/evidence/final/manifest.json
```

This checks every recorded file's full SHA-256 and length. It reports file
integrity only. The manifest excludes its own producer records and explicitly
listed mutable progress documents. Source snapshots, failed attempts and
successful component receipts retain their distinct scopes. Pinned Nix/Lake
dependencies and ignored build/scratch caches are outside this retained-file
seal; their locks/provenance and the proof checker remain separate inputs.

The two preprocessing diagnostic originals exceed GitHub's individual-file
limit. Their exact bytes are available from the committed archive directories:

- `../scoped-chain/numeric-cost-preprocessed-large-artifacts-001/parameters.bin/`
- `../scoped-chain/numeric-cost-preprocessed-large-artifacts-001/compression_prover_key.bin/`

The seal verifier streams all archive parts when an original is absent. It
checks every part and the complete reconstructed length/hash without creating
another large file. To materialize one, use a new output directory:

```sh
python3 specs/033-core-proof-feasibility/benchmarks/artifact_chunks.py restore \
  specs/033-core-proof-feasibility/evidence/scoped-chain/numeric-cost-preprocessed-large-artifacts-001/parameters.bin \
  --out /tmp/core033-parameters-review-new
```

The original archive receipt additionally retains the complete byte comparison
performed before publication. Artifact restoration grants no new proof scope.

## Replay the implemented assessment

Choose a new output path:

```sh
nix-shell experiments/transition-study033/shell.nix --run '
  specs/033-core-proof-feasibility/evidence/final/tools/core-proof-feasibility033 assess \
    --manifest specs/033-core-proof-feasibility/evidence/final/input-frozen/manifest.json \
    --failure-receipt specs/033-core-proof-feasibility/evidence/final/failure-002.json \
    --evidence specs/033-core-proof-feasibility/evidence/final \
    --out /tmp/core033-negative-assessment-review-new.json
'
```

Expected decision/axes are `rework`/`not_established`/`not_established`; no release
is required or created. The evidence-root path in the output reflects the
reviewer's checkout. `assessment-controls.json` and `assess-*.command.json`
retain a genuine run and an actual exit-3 rejection of a failure bound to a
different input manifest. Attempt 001's incorrect enum spelling was rejected
as malformed metadata; it is retained, not overwritten.

Frozen metadata contains the original absolute input paths. The assessor checks
the metadata/failure identity and does not re-open every manifest input. Use
the retained-file seal first. For a newly identified workspace/input freeze,
rerun `freeze` with a local profile and create a correspondingly bound failure
receipt; copying JSON does not relocate its original path claims.

## Inspect or recheck a mathematical component

`../scoped-chain/t042-primitive-coverage.json` links actual receipts. A positive
component must say `Checked`, have `fresh_kernel_replay: true`, retain all
required targets and match its compiled/source identities. `AxiomAuditedPendingFresh`,
successful ordinary compilation, native vectors and absent receipts are not
acceptance. Full file bindings additionally require `BoundCheckedValue` against
the same owned module/report.

Hydrate the exact Lake dependencies from `experiments/transition-study033/proofs/lake-manifest.json`
and retain their pinned revisions. The setup command records live under
`../setup/`. Dependency preparation is not claimed to be cost-free. With the
pinned environment and dependencies available, an example of a new full
component replay is:

```sh
nix-shell experiments/transition-study033/shell.nix --run '
  python3 specs/033-core-proof-feasibility/benchmarks/check_paired_path_loop.py \
    --out /tmp/core033-loop-review-new
'
```

It must produce eight fresh-checked targets under the existing 300-second
compiler/3,600-second fresh-replay/8-GiB limits. Source paths can give a rebuilt
compiled file a new byte identity; retain the new report rather than editing an
old receipt. This theorem concerns the local control trace, not initialization,
every phase's accepted guards, original path membership or public CoreDone.

Some retained specialized generator scripts name their original workspace.
Regenerate their untrusted wrappers using the retained preparation script in a
new directory before a relocated rebuild; then check every resulting equation.
Never fix relocation by renaming a compiled Lean module or dropping imports.

## Costs, gates and missing experiments

`../../../../experiments/transition-study033/COST.md` documents the actual native
cost commands and frozen diagnostic identities. Repeats require new outputs,
the pinned portable arithmetic configuration and their retained 8-GiB/900-second
limits. Normal OS entropy means newly produced diagnostic proofs need not be
byte-identical. No G1 entropy overlay or complete release is claimed.

The 27 parent cells and lifecycle cases in `coverage-001/campaign-not-run.json`
have no certified/durable observations or quantiles. A complete campaign also
requires its declared free-space floor and missing release/repository/consumer
prerequisites. `prepare`, `init`, `execute`, `verify`, `audit` and `recover` remain
`Unsupported` in the current study CLI.

The isolated whole-root quality build exhausted disk, and its recorder lost
the complete child streams/status. The new regenerable quality-build cache was
removed; no retained proof/cost artifacts were removed. Root/experiment format,
driver controls and individual fresh proof checks have separate receipts. They
do not replace the unmet whole-root/locked-experiment quality gate. The protected
Core baseline comparison subsequently passed all 10,582 files/1,851,549,753 bytes.
