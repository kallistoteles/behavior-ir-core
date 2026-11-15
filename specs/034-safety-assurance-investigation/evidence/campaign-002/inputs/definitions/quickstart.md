# Validation guide for investigation 034

This is the planned end-to-end guide after `speckit-tasks` and implementation. The worker, supervisor and profile below are not created by `speckit-plan`. Do not interpret this guide as a passed experiment or a completed architecture.

## Preconditions

- Work from the Core repository containing this feature. Confirm feature selection with `bash .specify/scripts/bash/check-prerequisites.sh --json --paths-only`.
- Have the pinned Core 0.16.0 and Safety source revisions, installed Rust 1.98.1/Python 3.13 and the exact Safety-compatible Lean 4.30.0 environment available. See [research decisions](research.md). Actual paths, derivations, source trees and compiled cache identities are recorded, not inferred from version strings.
- Preserve all prior evidence. Provide at least 16 GiB free on the research filesystem and private build/output roots. Never delete historical material to pass preflight.
- The authored case profile, semantic expectations, implementation code and lockfile must exist. No arbitrary producer-provided code/toolchain is accepted. The two-hour whole campaign includes preparation and time between commands.

## Freeze and establish the runnable subject

From the repository root, after implementation:

```sh
python3 experiments/assurance-study034/study.py freeze \
  --profile experiments/assurance-study034/profiles/diagnostic.json \
  --out specs/034-safety-assurance-investigation/evidence/campaign-001

python3 experiments/assurance-study034/study.py run-case \
  --manifest specs/034-safety-assurance-investigation/evidence/campaign-001/input-manifest.json \
  --case bootstrap
```

Expected: immutable input manifest, recorded bounded build/preparation, exact admitted LD8 module and three-policy inventory, actual first fresh certification/checking pair, bound expected records and a prepared manifest. A wrong source pair, failed tool, incompatible fixture or exhausted budget produces a retained failure/readiness result. No private-Core or unverified-certificate fallback is allowed.

## Check the core discriminator

```sh
python3 experiments/assurance-study034/study.py run-case \
  --manifest specs/034-safety-assurance-investigation/evidence/campaign-001/input-manifest.json \
  --case proofs

python3 experiments/assurance-study034/study.py run-case \
  --manifest specs/034-safety-assurance-investigation/evidence/campaign-001/input-manifest.json \
  --case integration

python3 experiments/assurance-study034/study.py run-case \
  --manifest specs/034-safety-assurance-investigation/evidence/campaign-001/input-manifest.json \
  --case controls
```

Expected: actual checked new composition roots, audited permitted axioms and fresh kernel replay; actual valid start/activation and LD8's eight committed events; exact refusals and reference-integrity boundary; separate fresh B verification of original history; resident extension and restart/lost-basis behavior; explicit bypass/migration/corruption dispositions. The command-only module has its own fresh certificate and preserves two equal ordered commands.

For each E01–E15 group consult [assurance.md](contracts/assurance.md). Require its valid control and targeted failure reason when a control is claimed demonstrated. A bypass example exposes the host premise; it must not be reported as a magically protected deployment. A/B memory results leave durable Q6 unestablished. No new C proof is produced in this campaign.

## Run bounded diagnostics

After the preceding correctness/subject gates, use `run-case` with `certification-cold-2`, `certification-cold-3`, and `growth-D1` through `growth-D6`. Each growth case runs three repetitions of its predeclared roles; do not replace failed observations or edit the profile. The [campaign contract](contracts/campaign.md) defines pair count, history length, exact parents, complete endpoints and stopping rules.

Expected: three fresh-workspace certification/checking pairs in total; six diagnostic cells varying live pairs/history; raw observations and medians/ranges only. Certification, bootstrap, onboarding and recovery work stay visible. No percentile, full-language scaling or certified-durable millisecond claim follows from these diagnostics. If insufficient time/space remains, keep explicit unrun cells and collect a conditional/negative assessment.

## Close, collect and independently validate

```sh
python3 experiments/assurance-study034/study.py collect \
  --manifest specs/034-safety-assurance-investigation/evidence/campaign-001/input-manifest.json \
  --out specs/034-safety-assurance-investigation/evidence/campaign-001/assessment

python3 experiments/assurance-study034/validate_report.py \
  --manifest specs/034-safety-assurance-investigation/evidence/campaign-001/input-manifest.json \
  --assessment specs/034-safety-assurance-investigation/evidence/campaign-001/assessment
```

Expected: all handles/processes closed, no remaining worker group, stable file hashes, deterministic semantic-record comparison and independent validation of 24 comparison cells, fifteen edge-case dispositions and every FR/SC. The [evidence contract](contracts/evidence.md) keeps semantic, assurance, operational and cost results separate. A report with truthful negative results can validate without passing the missing assurance claims.

Read the resulting requirement-origin register, comparison, assurance arguments, cost assessment and final decision together. They must identify necessary/avoidable complexity, explicit authorities, whole lifecycle costs, unresolved product decisions and the next smallest justified test. Investigation completion never activates a new finality contract or means all Core implementation goals are complete.

Implementation also runs scoped tests/fmt/Clippy and the repository's required gate entrypoint with private outputs and declared budgets. Missing/failed gates remain visible; no production merge, release or deployment is part of this guide.
