# Core036 revision-2 validation quickstart

**Status:** This is the plan's validation/run guide. V2 controller, worker, proof and reproduction interfaces below are implementation targets. The existing scripts only implement part of v1. Do not interpret these commands as delivered functionality or run a new campaign with the old hardcoded controller. First regenerate `tasks.md` with `speckit-tasks`, then implement/test the revised interfaces.

## Inspect the current requirements and plan

```bash
REPO=/data/repos/behavior-ir-core-033
bash "$REPO/.specify/scripts/bash/check-prerequisites.sh" --json --paths-only
```

Expected active directory: `specs/036-core-transition-feasibility`; actual Git branch remains `research/034-ab-measurement-002`. Read [specification](spec.md), [plan](plan.md), [research](research.md) and [amendment](AMENDMENT.md). The old root report/assessment, tasks and `evidence/campaign-001` describe unfinished v1. Preserve them and their [archived context](specification-revisions/001/context-manifest.json); they are not v2 completion evidence.

## Implementation prerequisites

Use complete exact source/fixture exports, including the three corrected original runtime inputs, a real private Git index and independent unpatched oracle. Native tools and the separate analysis tuple must have working loader/compiler/linker/extractor/kernel checks and fixed registered closures/roots. Source/model/cfg binding, general bridge obligations and actual negative controls precede accepted comparisons. No implicit default toolchain download.

Admit the frozen root/data resource profile and registered `/var/tmp/behavior-ir-core036-v2/<work-id>` private root. The initial observed /data free space does not support the old 16 GiB launch floor. Use the exact [campaign profiles](contracts/campaign.md), all-volume/shared-store accounting, one heavy tree/CPU and bounded attempts. This guide grants no unbounded compute or silent old-clock reset.

Before the new controller exists, task implementation must retain the actual initial red using the stricter reviewed launcher and private-root bootstrap outputs. After controller tests go green, import those closed bytes without discarding its actual start. Profiles/controller inputs and every later frozen input file must already exist before commands reference them; no future digest or fabricated receipt is permitted.

## Initialize and prepare once — after implementation

```bash
PYTHON036=/nix/store/9r02ykx9y35lf4gk6gc30gnag1y8ncp7-python3-3.13.15/bin/python3.13
STUDY="$REPO/experiments/transition-study036"
FEATURE="$REPO/specs/036-core-transition-feasibility"
WORK="$FEATURE/evidence/v2/w001"
"$PYTHON036" "$STUDY/study.py" init \
  --spec "$FEATURE/spec.md" --profile "$STUDY/profiles/v2/work.json" \
  --previous-index "$FEATURE/evidence/campaign-001/closed-artifacts.json" \
  --bootstrap "$FEATURE/inputs/v2/bootstrap-input.json" --out "$WORK"
"$PYTHON036" "$STUDY/study.py" freeze --work "$WORK/context.json" \
  --revision r0000 --inputs "$FEATURE/inputs/v2/controller-inputs.json"
"$PYTHON036" "$STUDY/study.py" declare --work "$WORK/context.json" \
  --stage ENV --revision r0000 --profile "$STUDY/profiles/v2/env.json" \
  --slots "$FEATURE/inputs/v2/environment-slots.json" --out "$WORK/attempts/a0001"
"$PYTHON036" "$STUDY/study.py" run --work "$WORK/context.json" --attempt "$WORK/attempts/a0001/declaration.json"
```

Expected: one create-once work context bound to spec-v2/archived-v1, actual bootstrap and prospective attempt profiles. ENV materializes and verifies actual tools/sources, never a claimed proof. After ENV, freeze the real produced worker/source/tool inputs as a new revision before build/proof/gates. Duplicate init/freeze, changed bytes or out-of-root paths fail without modifying prior records.

## Build, prove and run independent quality

Use the same `declare`/`run` interface for NATIVE and Q attempts over the actual current subject. NATIVE must extract the real closure, repair unsupported dependencies and freshly check all B01–B10; twelve old model roots or one helper cannot pass it. Q runs the full unchanged indexed script with actual retained candidate CLI, plus scoped worker/Python/proof checks. Require terminal success and closed descendants.

If either fails, preserve its checkpoint and use the corrective continuation below. Run the independently eligible other branch; do not interpret shell fail-fast as cancelling independent engineering. `status` must distinguish unavailable work, actual failures, invalidated gates and runnable repair/harness tasks.

```bash
"$PYTHON036" "$STUDY/study.py" status --work "$WORK/context.json"
"$PYTHON036" "$STUDY/study.py" resume --work "$WORK/context.json" \
  --checkpoint "$WORK/attempts/a0002/checkpoint.json" \
  --correction "$FEATURE/inputs/v2/correction-001.json" \
  --profile "$STUDY/profiles/v2/native-successor.json" --out "$WORK/attempts/a0003"
"$PYTHON036" "$STUDY/study.py" run --work "$WORK/context.json" --attempt "$WORK/attempts/a0003/declaration.json"
```

The checkpoint/correction/profile paths above are illustrative names for actual retained inputs, not files created by planning. A successor must diagnose and change the limiting work/tool/source/allocation before execution. It does not rewrite old budgets or restore a ground from flags. A resource stop keeps the feature unfinished; there is no automatic stop-to-final-Rework route.

## Complete operation, lifecycle and compact experiments

After current source-specific proof/quality/conformance gates, declare/run DIAG, SESSIONS and COMPACT attempts. See [campaign](contracts/campaign.md) for exact slots/order/endpoints/thresholds and [compact](contracts/compact-evidence.md) for the actual non-eager writer and replay audit.

Expected primary evidence: 45 timing+15 diagnostic operation samples across R/GV/B and five N/H cells; 72+24 R/GV sessions across three families and lengths1/8/32/128; 24+8 C/L* comparison samples across four cells. Total141+47, plus separately charged real controls/pilots. Every role's complete original comparisons have zero mismatches. Failed partial sessions remain recorded and are rerun as new related samples, never stitched.

Check full exclusive interval reconciliation, actual Write-call reduction for B, zero new full legacy observation/record construction before each C completion, fresh authority in sessions, measured recovery/retention and exact reconstruction before continuation in the primary full-delivery protocol. A correct but slower B/C or no observed payback is a useful completed result once all required checks are done.

## Reproduce and finalize

First close/seal all relevant attempt writers and create a frozen candidate assessment using `collect --kind candidate`. Independently select expected subject/tool/model/profile/control/endpoint context outside candidate reports, then run the validator under a declared REPRO allocation:

```bash
"$PYTHON036" "$STUDY/validate.py" --work "$WORK/context.json" \
  --assessment "$WORK/candidate/assessment.json" \
  --expected-context "$FEATURE/inputs/v2/expected-reproduction-context.json" \
  --profile "$STUDY/profiles/v2/reproduction.json" --out "$WORK/reproduction/v001"
"$PYTHON036" "$STUDY/study.py" finalize --work "$WORK/context.json" \
  --assessment "$WORK/candidate/assessment.json" \
  --reproduction "$WORK/reproduction/v001/result.json" --out "$FEATURE/results/v2/w001"
```

These children must be launched through the implemented bounded attempt runner; direct unrecorded invocation is not an accepted experiment. Full reproduction requires fresh proof/kernel/source checks, builds of all roles/oracle, all real controls, full unchanged Q, 26 fresh representative semantic samples and all-table/FR/SC recomputation. See [reproduction](contracts/reproduction.md) for sequencing and acyclic seals.

Expected final success: all eight deliverables, 22 FR/eight SC, every required primary/reproduction/control slot and current source gates are satisfied, with an evidence-backed supported/not-recommended decision. `finalize` returns3 and retains unfinished work if anything mandatory is missing. A report-only success, integrity-only check, absent native theorem or unrun compact path cannot close the feature. No production adoption, new trust/finality or Q6 guarantee is authorized.
