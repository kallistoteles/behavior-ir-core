# 036 implementation and validation status

036 reached an early-stop **Rework** disposition. The native correspondence pipeline, fixed-role session workers, new diagnosis/lifecycle machinery and compact implementation remain incomplete. Read [report.md](report.md), [assessment.json](assessment.json) and [tasks.md](tasks.md) for actual results and gaps. Existing 035 evidence is unchanged.

## Current commands

```bash
REPO=/data/repos/behavior-ir-core-033
PYTHON036=/nix/store/9r02ykx9y35lf4gk6gc30gnag1y8ncp7-python3-3.13.15/bin/python3.13
STUDY="$REPO/experiments/transition-study036"
FEATURE="$REPO/specs/036-core-transition-feasibility"
SESSION="$FEATURE/evidence/campaign-001/session.json"
"$PYTHON036" "$STUDY/study.py" --help
"$PYTHON036" "$STUDY/validate.py" --help
```

Implemented supervisor flags are `preflight --profile --bootstrap-receipt --out`, `prepare --session`, `freeze --session --revision --inputs`, `run --session --revision --stage`, and `collect --session --out`. These are partial research interfaces, not the complete planned CLI. `prepare` verifies the already materialized private source/tools rather than installing the missing analysis tuple. Native binaries retain the 035 helper CLI; the planned 036 stream/session CLI and independent long-stream oracle are not implemented.

The existing campaign has one adopted bootstrap origin. Do **not** rerun preflight, overwrite a frozen revision, collect into an existing output, or reset its clock. r001 was declared then invalidated before execution; r002 binds conformance/Q1, r003 adds exactly three original runtime fixtures for Q2, and r004 binds final closure and formatting-only changes to the new research crate. Historical snapshots and failed receipts remain intact.

`run --stage S1` has no extraction module and returns unavailable (3). S2/S3/S4 refuse entry because native correspondence is unestablished. S0/S5 use dedicated preparation/closure procedures, not generic stage dispatch. Q has exhausted its cumulative 2400-second allowance; do **not** launch another Q attempt in this campaign. A future attempt needs an explicitly reviewed follow-up protocol, not a new label or a reset origin.

`collect` supports negative-result assessment only. It verifies raw canonical outcomes and writes the all-FR/SC report plus 136 blocked R/GV timing/diagnostic slots and explicit B/C/recovery dispositions. It does not itself prove native equivalence, implement missing experiments, terminate arbitrary external processes or automatically seal a running supervisor's output; closing and sealing are performed after all recorded writers have exited.

## Recorded checks

- 35 finite Rust tests passed at r002: 26 native, six original-observation, three protocol. These are restricted conformance, not formal Rust–Lean correspondence or new session measurements.
- Python controller tests and scoped format/lint checks have separate raw receipts in `evidence/campaign-001/roles/final-quality/`.
- Q1 ran the unchanged whole gate, passed formatting and Clippy, then failed a CLI test because three canonical runtime fixtures were omitted from the selective export. r003 restored their exact original Git bytes.
- Q2 reused the actual retained candidate CLI and original Q clock with an explicitly warm gate target. Nix failed on an invalid dependency reference before the gate started. No whole-gate pass was established.
- The old 12-law Lean checker was attempted unchanged but failed while querying the pinned Lean package's Nix derivation. No fresh model roots were checked in 036.
- No accepted 036 cost, session, payback, compact, native-proof or durable-publication result exists.

## Independent limited validation

The actual retained invocation uses the original clock and a separate bounded process, then writes and seals `evidence/validation-001/`. It checks byte/source snapshots, recorded process closure, raw quality outcomes, finite test counts, negative FR/SC assessment, blocked slots and selected-input preservation. It does not rebuild/replay workers or replace missing proofs. Full independent reproduction remains unavailable.

The implemented validator accepts the planned context flag (and `--expected` alias):

```bash
"$PYTHON036" "$STUDY/validate.py" \
  --session "$SESSION" \
  --assessment "$FEATURE/evidence/campaign-001/assessment/assessment.json" \
  --expected-context "$FEATURE/inputs/expected-validation-context.json" \
  --out "$FEATURE/evidence/validation-002"
```

This command describes a subsequent limited integrity check only. Do not run it unrecorded or outside a remaining reviewed allowance. `validation-001` is create-once and must not be overwritten; a new output must be an immediate `validation-*` child of the 036 evidence root. The caller selects the expected clock, profile, baseline and closed-index hashes outside the archived campaign. Existing validation files are evidence to inspect, not permission to claim full reproduction or native correctness.

## Reproduction boundary

A full future reproduction requires the pinned stable tool closure, the separate Aeneas/Charon/nightly/Lean analysis tuple, actual source extraction and wrong-source controls, checked B01–B10 proofs, complete fixed-role/oracle builds and a successful unchanged whole gate before S2–S4. Baseline Lean 4.30.0 and analysis Lean 4.36.0-rc2 are distinct. Never silently download a default toolchain or substitute finite tests for these gates.

The original 21600-second profile and all stage/space caps remain unchanged. General stage accounting and some temporary/global-Nix-store accounting are incomplete and explicitly prevent FR-019 from passing. No performance quantiles, compact readiness, new trust/finality contract or Q6 guarantee can be inferred from this closure.

Recorded post-seal [CLI guard checks](evidence/cli-scenarios-001/result.json) confirmed unavailable S1 extraction (exit 3), blocked S2 (exit 3), and refusal to overwrite r004 (exit 2). Their raw receipts have closed descendant groups and a separate sealed output root. These are command-contract controls, not another scientific or quality run.
