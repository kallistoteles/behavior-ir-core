"""Fixed offline035 campaign. Controller-selected code, create-once evidence."""

import hashlib
import json
import os
from pathlib import Path
import shlex
import shutil
import subprocess
import time
from contextlib import contextmanager


@contextmanager
def campaign_lock(root):
    path = (
        Path(__file__).resolve().parent
        / "private"
        / ("active-" + Path(root).name + ".lock")
    )
    path.parent.mkdir(parents=True, exist_ok=True)
    fd = os.open(path, os.O_WRONLY | os.O_CREAT | os.O_EXCL, 0o600)
    try:
        os.write(fd, str(os.getpid()).encode())
        os.fsync(fd)
        os.close(fd)
        yield
    finally:
        path.unlink()


from artifact_io import (
    artifact_ref,
    bounded_read,
    safe_path,
    seal,
    strict_loads,
    verify_ref,
    write_once,
)
from recorder import Ledger, permitted_wall, run, disk_free, project_growth
import sources

E = Path(__file__).resolve().parent
ROOT = E.parents[1]
F = ROOT / "specs/035-verified-work-reuse"
CASES = (
    "bootstrap",
    "proofs",
    "conformance",
    "treatments",
    "quality",
    *[f"growth-D{i}" for i in range(1, 6)],
)
TARGETS = {
    "R": "reuse035-reference",
    "G": "reuse035-ground",
    "V": "reuse035-views",
    "GV": "reuse035-combined",
}


def load(path):
    return strict_loads(bounded_read(path))


def sha(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def boot():
    return Path("/proc/sys/kernel/random/boot_id").read_text().strip()


def tools():
    t = load(E / "toolchain.json")["tools"]
    for v in t.values():
        if sha(v["path"]) != v["sha256"]:
            raise ValueError("PinnedToolBytes")
    return t


def input_paths():
    paths = [
        p
        for p in E.rglob("*")
        if p.is_file()
        and not {"private", "__pycache__", "target"} & set(p.relative_to(E).parts)
    ]
    for folder in ["contracts", "inputs"]:
        paths += [p for p in (F / folder).rglob("*") if p.is_file()]
    paths += [
        F / x
        for x in [
            "spec.md",
            "plan.md",
            "data-model.md",
            "research.md",
            "quickstart.md",
            "construct-mapping.md",
        ]
    ]
    paths += [
        E / "private/core/source-export.json",
        ROOT / "flake.lock",
        ROOT / "rust-toolchain.toml",
        ROOT / ".specify/memory/constitution.md",
    ]
    # Existing development oracle fixtures are compile-time conformance inputs,
    # not final observations. Bind their exact bytes explicitly.
    fixture_index = load(F / "inputs/oracle-development-case-bindings.json")
    for ref in fixture_index.get("cases", {}).values():
        if isinstance(ref, dict) and "path" in ref:
            paths.append(F / "evidence/development" / ref["path"])
    return sorted(set(paths))


def freeze(profile, out, inherit=None):
    start = time.monotonic_ns()
    out = Path(out).resolve()
    if out.parent != (F / "evidence").resolve() or not out.name.startswith("campaign-"):
        raise ValueError("CampaignOutputOwnership")
    p = load(profile)
    if p != load(E / "profiles/diagnostic.json"):
        raise ValueError("OnlyFrozenDiagnosticProfile")
    clock = {"started_ns": start, "boot_id": boot(), "limits": p["limits"]}
    predecessor = None
    if inherit:
        oldpath = Path(inherit).resolve()
        old = load(oldpath)
        if (
            oldpath.parent.parent != (F / "evidence").resolve()
            or old.get("format") != "core035.input.v1"
            or oldpath == out / "input-manifest.json"
            or old["clock"]["boot_id"] != boot()
        ):
            raise ValueError("ClockProvenanceChanged")
        clock = old["clock"]
        if clock["limits"] != p["limits"] or start < clock["started_ns"]:
            raise ValueError("ClockResetOrLimitsChanged")
        predecessor = {"path": str(oldpath), "sha256": sha(oldpath)}
    if disk_free() < p["limits"]["disk_start_bytes"]:
        raise ValueError("DiskStartFloor")
    tools()
    sources.verify_export(
        E / "private/core", load(E / "private/core/source-export.json")
    )
    out.mkdir(parents=True, exist_ok=False)
    refs = []
    for path in input_paths():
        relative = path.relative_to(ROOT).as_posix()
        snapshot = "inputs/" + relative
        write_once(out / snapshot, path.read_bytes())
        refs.append(
            dict(artifact_ref(out, snapshot, "frozen-source"), live_path=relative)
        )
    digest = hashlib.sha256(json.dumps(refs, sort_keys=True).encode()).hexdigest()
    manifest = {
        "format": "core035.input.v1",
        "source_context": digest,
        "clock": clock,
        "predecessor": predecessor,
        "sources": refs,
        "profile": p,
        "slots": list(CASES),
        "cache_conditions": p["cache_conditions"],
        "host": host_context(),
        "initial_growth": project_growth(),
        "disk_free_bytes": disk_free(),
        "product_adoption": "unactivated",
    }
    write_once(out / "input-manifest.json", manifest)
    return manifest


def context(manifest):
    path = Path(manifest).resolve()
    root = path.parent
    if root.parent != (F / "evidence").resolve() or not root.name.startswith(
        "campaign-"
    ):
        raise ValueError("ManifestOwnership")
    m = load(path)
    if (
        m.get("format") != "core035.input.v1"
        or m["slots"] != list(CASES)
        or m["profile"] != load(E / "profiles/diagnostic.json")
    ):
        raise ValueError("FrozenManifestContext")
    refs = m["sources"]
    if {r["live_path"] for r in refs} != {
        p.relative_to(ROOT).as_posix() for p in input_paths()
    }:
        raise ValueError("IndependentSourceInventoryMismatch")
    if (
        hashlib.sha256(json.dumps(refs, sort_keys=True).encode()).hexdigest()
        != m["source_context"]
    ):
        raise ValueError("FrozenContextDigest")
    for ref in refs:
        verify_ref(root, {k: v for k, v in ref.items() if k != "live_path"})
        if sha(safe_path(ROOT, ref["live_path"])) != ref["sha256"]:
            raise ValueError("LiveFrozenSourceMutation:" + ref["live_path"])
    tools()
    sources.verify_export(
        E / "private/core", load(E / "private/core/source-export.json")
    )
    l = m["clock"]
    ledger = Ledger(l["started_ns"], l["boot_id"], l["limits"]["campaign_seconds"])
    ledger.remaining_ns(time.monotonic_ns(), boot())
    return root, m, ledger


def environment(target=None):
    return {
        "CARGO_HOME": str(E / "private/cargo"),
        "CARGO_TARGET_DIR": str(target or E / "private/target"),
        "CARGO_NET_OFFLINE": "true",
        "CARGO_INCREMENTAL": "0",
        "CARGO_PROFILE_DEV_DEBUG": "0",
        "CARGO_PROFILE_TEST_DEBUG": "0",
        "CARGO_PROFILE_RELEASE_DEBUG": "0",
        "RUSTFLAGS": "-C target-cpu=x86-64",
        "RUST_TEST_THREADS": "1",
    }


def launch(
    root,
    m,
    ledger,
    case_ledger,
    argv,
    out,
    *,
    cwd=ROOT,
    prepare=False,
    reserve=600,
    env=None,
):
    # Recheck actual frozen inputs before and after every child, including
    # multi-command bootstrap/quality roles. These checks consume the same clock.
    context(root / "input-manifest.json")
    limits = [ledger, case_ledger]
    if prepare:
        limits.append(Ledger(m["clock"]["started_ns"], m["clock"]["boot_id"], 1800))
    wall = permitted_wall(limits, time.monotonic_ns(), boot(), reserve)
    if wall <= 0:
        raise ValueError("OuterBudgetOrReserveExhausted")
    t = tools()
    command = shlex.join(argv)
    script = "cd " + shlex.quote(str(cwd)) + " && " + command
    child_env = dict(env or environment())
    if (root / "prepared-manifest.json").exists():
        prepared = load(root / "prepared-manifest.json")
        child_env["CORE035_GROUP_PREPARED"] = str(root / "prepared-manifest.json")
        child_env["CORE035_REFERENCE_BIN"] = str(
            safe_path(
                root, prepared["workers"]["reuse035-reference"]["executable"]["path"]
            )
        )
        child_env["CORE035_ORACLE_CASE"] = str(
            safe_path(root, prepared["cases"]["growth-D1"]["path"])
        )
    receipt = run(
        [t["nix-shell"]["path"], str(E / "shell.nix"), "--run", script],
        out,
        wall_seconds=wall,
        ledger=ledger,
        env=child_env,
    )
    context(root / "input-manifest.json")
    return receipt


def success(r):
    return (
        r["exit_code"] == 0
        and r["stop_reason"] is None
        and r["tree_empty"]
        and r["group_empty"]
    )


def gate_path(root, case):
    return (
        root
        / ("growth" if case.startswith("growth-") else "roles")
        / case
        / "result.json"
    )


def run_case(manifest, case):
    if case not in CASES:
        raise ValueError("UnknownFrozenCase")
    root, m, ledger = context(manifest)
    slot = gate_path(root, case).parent
    slot.mkdir(parents=True, exist_ok=False)
    local = Ledger(time.monotonic_ns(), boot(), 1800)
    result = {
        "format": "core035.case.v1",
        "case_id": case,
        "source_context": m["source_context"],
        "operational": "not_run",
        "gate_passed": False,
        "product_adoption": "unactivated",
        "commands": [],
    }
    blockers = []
    for previous in CASES[: CASES.index(case)]:
        p = gate_path(root, previous)
        if not p.exists() or not load(p).get("gate_passed"):
            blockers.append(str(p.relative_to(root)))
    if blockers:
        result.update(reason="Prerequisite gate did not pass", blocking_refs=blockers)
        write_once(slot / "result.json", result)
        return result

    def call(argv, name, **kwargs):
        r = launch(
            root,
            m,
            ledger,
            local,
            argv,
            slot / name,
            prepare=case == "bootstrap",
            **kwargs,
        )
        result["commands"].append(
            {
                "receipt": str((slot / name / "receipt.json").relative_to(root)),
                "exit_code": r["exit_code"],
                "stop_reason": r["stop_reason"],
            }
        )
        if not success(r):
            result.update(
                operational="interrupted"
                if r["stop_reason"] == "Interrupted"
                else "resource_stopped"
                if r["stop_reason"]
                else "tool_failed",
                reason="Actual child did not complete",
                blocking_refs=[result["commands"][-1]["receipt"]],
            )
            raise RuntimeError("RoleChildFailure")
        return r

    try:
        t = tools()
        cargo = t["cargo"]["path"]
        python = t["python"]["path"]
        if case == "bootstrap":
            call(
                [
                    cargo,
                    "build",
                    "--release",
                    "--bins",
                    "--offline",
                    "--locked",
                    "--manifest-path",
                    str(E / "Cargo.toml"),
                ],
                "workers-build",
            )
            call(
                [
                    cargo,
                    "build",
                    "--release",
                    "--offline",
                    "--locked",
                    "--manifest-path",
                    str(E / "oracle/Cargo.toml"),
                ],
                "oracle-build",
            )
            bindings = {}
            for target in [*TARGETS.values(), "reuse035-upstream-oracle"]:
                executable = slot / "workers" / target
                executable.parent.mkdir(exist_ok=True)
                shutil.copyfile(E / "private/target/release" / target, executable)
                executable.chmod(0o755)
                receipt_name = (
                    "oracle-build"
                    if target == "reuse035-upstream-oracle"
                    else "workers-build"
                )
                closed = load(slot / receipt_name / "receipt.json")
                descriptor = dict(
                    closed,
                    source_context=m["source_context"],
                    raw_receipt=artifact_ref(
                        root,
                        str((slot / receipt_name / "receipt.json").relative_to(root)),
                        "actual-recorder-receipt",
                    ),
                )
                rp = slot / "workers" / (target + ".build.json")
                write_once(rp, descriptor)
                bindings[target] = {
                    "format": "core035.built-worker.v1",
                    "target": target,
                    "source_context": m["source_context"],
                    "executable": artifact_ref(
                        root, str(executable.relative_to(root)), "retained-worker"
                    ),
                    "receipt": artifact_ref(
                        root, str(rp.relative_to(root)), "closed-build-receipt"
                    ),
                }
                from study import validate_built_worker

                validate_built_worker(root, bindings[target], m["source_context"])
            write_once(slot / "built-workers.json", bindings)
            # Actual dependency identities, not a banner or imported receipt.
            for name, path in [
                ("worker", E / "Cargo.toml"),
                ("oracle", E / "oracle/Cargo.toml"),
            ]:
                call(
                    [
                        cargo,
                        "metadata",
                        "--offline",
                        "--locked",
                        "--format-version",
                        "1",
                        "--manifest-path",
                        str(path),
                    ],
                    name + "-metadata",
                )
                metadata = load(slot / (name + "-metadata") / "stdout.txt")
                engines = [
                    p for p in metadata["packages"] if p["name"] == "behavior-engine"
                ]
                if len(engines) != 1 or (name == "worker") != (
                    Path(engines[0]["manifest_path"]).resolve()
                    == E / "private/core/crates/behavior-engine/Cargo.toml"
                ):
                    raise ValueError("DependencyIdentityMismatch")
            for label in ["worker", "oracle"]:
                metadata = load(slot / (label + "-metadata") / "stdout.txt")
                for package_name in [
                    "behavior-core",
                    "behavior-store",
                    "behavior-engine",
                    "behavior-verify",
                ]:
                    packages = [
                        p for p in metadata["packages"] if p["name"] == package_name
                    ]
                    if len(packages) != 1:
                        raise ValueError("DuplicateCoreDependencyIdentity")
                    package = packages[0]
                    if label == "worker":
                        if (
                            Path(package["manifest_path"]).resolve()
                            != E / "private/core/crates" / package_name / "Cargo.toml"
                        ):
                            raise ValueError("WorkerCoreIdentityMismatch")
                    elif sources.CORE_REV not in (package["source"] or ""):
                        raise ValueError("OracleCoreIdentityMismatch")
                safety = [
                    p for p in metadata["packages"] if p["name"] == "behavior-models"
                ]
                if (
                    len(safety) != 1
                    or "8c0849fb82343ddf5a4dd99b5070ee985f8ebff0"
                    not in safety[0]["source"]
                ):
                    raise ValueError("SafetyDependencyIdentityMismatch")
            config = {
                "format": "core035.oracle-input.v1",
                "cases": [c["case_id"] for c in m["profile"]["cells"]],
            }
            # The oracle's input parser fixes its own format and cases.
            config = load(F / "inputs/oracle-development-all-cases.json")
            write_once(slot / "oracle-input.json", config)
            oracle = safe_path(
                root, bindings["reuse035-upstream-oracle"]["executable"]["path"]
            )
            call(
                [
                    str(oracle),
                    "prepare",
                    "--input",
                    str(slot / "oracle-input.json"),
                    "--out",
                    str(slot / "oracle"),
                ],
                "oracle-prepare",
            )
            # The separate newly executed original oracle must also agree with
            # frozen historical compile-time conformance fixtures in full.
            fixture_bindings = load(F / "inputs/oracle-development-case-bindings.json")
            for cell in m["profile"]["cells"]:
                case_id = cell["case_id"]
                old_ref = fixture_bindings["cases"][case_id]
                verify_ref(F / "evidence/development", old_ref)
                if load(slot / "oracle" / (case_id + ".json")) != load(
                    F / "evidence/development" / old_ref["path"]
                ):
                    raise ValueError("IndependentOriginalOracleFixtureMismatch")
            prepared = {
                "format": "core035.prepared.v1",
                "source_context": m["source_context"],
                "input_manifest": artifact_ref(
                    root, "input-manifest.json", "frozen-input"
                ),
                "workers": bindings,
                "cases": {
                    c["case_id"]: artifact_ref(
                        root,
                        str(
                            (slot / "oracle" / (c["case_id"] + ".json")).relative_to(
                                root
                            )
                        ),
                        "original-case",
                    )
                    for c in m["profile"]["cells"]
                },
                "bundle": artifact_ref(
                    root,
                    str((slot / "oracle/safety-bundle.json").relative_to(root)),
                    "original-program-bundle",
                ),
            }
            write_once(root / "prepared-manifest.json", prepared)
        elif case == "proofs":
            # check() clips all module/fresh children to the shared absolute
            # campaign reserve boundary, not a newly reset campaign clock.
            import check_proofs

            effective = Ledger(m["clock"]["started_ns"], m["clock"]["boot_id"], 6600)
            proof = check_proofs.check(slot / "proof-check", ledger=effective)
            if proof["operational"] != "completed":
                result.update(
                    operational=proof["operational"],
                    reason="Fixed root/type/fresh proof role did not complete",
                    blocking_refs=["roles/proofs/proof-check/result.json"],
                )
                raise RuntimeError("ProofGate")
        elif case == "conformance":
            work_before = set((E / "private").glob("work-growth-*.json"))
            call(
                [
                    cargo,
                    "test",
                    "--release",
                    "--offline",
                    "--locked",
                    "--manifest-path",
                    str(E / "Cargo.toml"),
                ],
                "native-tests",
            )
            work_after = set((E / "private").glob("work-growth-*.json"))
            generated = work_after - work_before
            if len(generated) != 1:
                raise ValueError("MissingOrAmbiguousActualConformanceWork")
            actual_work = generated.pop()
            write_once(slot / "native-work-growth.json", actual_work.read_bytes())
            write_once(
                slot / "native-work-binding.json",
                {
                    "source_context": m["source_context"],
                    "actual_generated_path": str(actual_work),
                    "artifact": artifact_ref(
                        root,
                        "roles/conformance/native-work-growth.json",
                        "actual-conformance-work",
                    ),
                    "scope": "Actual frozen conformance work and original audits across all five cells; not matrix timing observations",
                },
            )
            call(
                [
                    python,
                    "-m",
                    "unittest",
                    "discover",
                    "-s",
                    str(E / "tests"),
                    "-p",
                    "test_*.py",
                ],
                "python-tests",
            )
            import proof_controls

            if not proof_controls.controls(
                slot / "proof-negatives",
                root / "roles/proofs/proof-check/compiled",
                ledger=Ledger(m["clock"]["started_ns"], m["clock"]["boot_id"], 6600),
            ):
                raise ValueError("ProofNegativeControlFailure")
        elif case == "treatments":
            prepared = load(root / "prepared-manifest.json")
            summaries = {}
            bindings = []
            for role, target in TARGETS.items():
                b = prepared["workers"][target]
                verify_ref(root, b["executable"])
                worker = safe_path(root, b["executable"]["path"])
                call(
                    [
                        str(worker),
                        "run-group",
                        "--prepared",
                        str(root / "prepared-manifest.json"),
                        "--case",
                        "growth-D1",
                        "--out",
                        str(slot / role),
                    ],
                    role + "-execution",
                )
                group = load(slot / role / "complete.json")
                if (
                    group["treatment"] != role
                    or group["source_context"] != m["source_context"]
                ):
                    raise ValueError("ActualTreatmentContext")
                # Exact timing/work equality is already independently checked
                # against all eight oracle fields by each executed worker.
                samples = []
                w = group["observations"][3]
                for i, k in enumerate(["work_primary", "work_cycle"]):
                    d = w[k]
                    passes = (
                        d["native"]["counts"]["full_snapshot_passes"]
                        if "full_snapshot_passes"
                        in d.get("native", {}).get("counts", {})
                        else None
                    )
                    samples.append(
                        {
                            "slot": "observation.json" if i == 0 else "drain.json",
                            "diagnostics": d,
                        }
                    )
                summaries[role] = group
                bindings.append(
                    {"treatment": role, "sha256": b["executable"]["sha256"]}
                )
            validate_groups(bindings, summaries)
            write_once(
                slot / "activation.json",
                {
                    "bindings": bindings,
                    "status": "checked_conformance",
                    "source_context": m["source_context"],
                    "negative_scope": "C01 equal actual worker binding bytes; C02 actual G group reclassified GV. Record-level detection, not a compiled malicious worker.",
                },
            )
            bad = [dict(b) for b in bindings]
            bad[1]["sha256"] = bad[0]["sha256"]
            import copy

            wrong_view = copy.deepcopy(summaries)
            wrong_view["GV"] = copy.deepcopy(summaries["G"])
            wrong_view["GV"]["treatment"] = "GV"
            write_once(
                slot / "C02-derived-input.json",
                {
                    "actual_source_group": "G",
                    "claimed_treatment": "GV",
                    "derived_group": wrong_view["GV"],
                    "scope": "Derived negative over actual closed G observations; deliberately correct label with inactive V mechanism",
                },
            )
            negative = []
            for label, bs, gs in [
                ("C01", bad, summaries),
                ("C02", bindings, wrong_view),
            ]:
                try:
                    validate_groups(bs, gs)
                except ValueError as e:
                    negative.append(
                        {
                            "control": label,
                            "status": "targeted_rejection",
                            "reason": str(e),
                        }
                    )
                else:
                    raise ValueError("MechanismNegativeAccepted")
            write_once(slot / "negatives.json", negative)
        elif case == "quality":
            call(
                [
                    cargo,
                    "fmt",
                    "--manifest-path",
                    str(E / "Cargo.toml"),
                    "--",
                    "--check",
                ],
                "scoped-fmt",
            )
            call(
                [
                    cargo,
                    "clippy",
                    "--release",
                    "--all-targets",
                    "--offline",
                    "--locked",
                    "--manifest-path",
                    str(E / "Cargo.toml"),
                    "--",
                    "-D",
                    "warnings",
                ],
                "scoped-clippy",
            )
            call(
                [
                    python,
                    "-m",
                    "unittest",
                    "discover",
                    "-s",
                    str(E / "tests"),
                    "-p",
                    "test_*.py",
                ],
                "scoped-python",
            )
            call(
                [
                    t["ruff"]["path"],
                    "format",
                    "--check",
                    *[str(p) for p in sorted(E.glob("*.py"))],
                    str(E / "tests"),
                ],
                "scoped-python-format",
            )
            for role, target in TARGETS.items():
                b = load(root / "prepared-manifest.json")["workers"][target]
                call(
                    [str(safe_path(root, b["executable"]["path"])), "--help"],
                    role + "-help",
                )
            # Build the actual candidate CLI before executing the unchanged
            # canonical gate. Failure cannot be replaced with a scoped pass.
            # All measurement workers and the oracle are already independently
            # retained. End the scoped build-cache lifetime before compiling
            # the default CLI, then clear that cache again after canonical.
            write_once(slot / "scoped-target-cleanup.json", cleanup_quality_cache())
            core = E / "private/core"
            ce = environment()
            call(
                [
                    cargo,
                    "build",
                    "--release",
                    "--offline",
                    "--locked",
                    "-p",
                    "behavior-cli",
                ],
                "candidate-cli",
                cwd=core,
                env=ce,
            )
            cli = slot / "candidate-cli/behavior"
            shutil.copyfile(E / "private/target/release/behavior", cli)
            cli.chmod(0o755)
            write_once(
                slot / "candidate-cli/binding.json",
                {
                    "source_context": m["source_context"],
                    "executable": artifact_ref(
                        root, str(cli.relative_to(root)), "actual-candidate-cli"
                    ),
                    "build_receipt": artifact_ref(
                        root,
                        "roles/quality/candidate-cli/receipt.json",
                        "actual-closed-build",
                    ),
                    "scope": "Default candidate CLI from the owned export; optimized research035 paths separately exercised by scoped workers",
                },
            )
            ce["BEHAVIOR_BIN"] = str(cli)
            r = launch(
                root,
                m,
                ledger,
                local,
                ["bash", "scripts/gates.sh"],
                slot / "canonical",
                cwd=core,
                env=ce,
            )
            result["commands"].append(
                {
                    "receipt": "roles/quality/canonical/receipt.json",
                    "exit_code": r["exit_code"],
                    "stop_reason": r["stop_reason"],
                }
            )
            if r["tree_empty"] and r["group_empty"]:
                write_once(
                    slot / "disposable-target-cleanup.json", cleanup_quality_cache()
                )
            if not success(r):
                resource = r["stop_reason"] in {
                    "WallLimit",
                    "DiskStartFloor",
                    "EmergencyDiskFloor",
                    "ArtifactGrowthLimit",
                    "CacheGrowthLimit",
                    "CombinedGrowthLimit",
                    "OuterBudgetExhausted",
                }
                # Positive compiler/test failure text defeats the narrow
                # resource-only exception even if the recorder also stopped.
                text = (slot / "canonical/stderr.txt").read_text(errors="replace")
                semantic = any(
                    x in text
                    for x in ["error[E", "test result: FAILED", "gates: FAILED"]
                )
                result["integration"] = "BLOCKED"
                if not resource or semantic:
                    result.update(
                        operational="resource_stopped" if resource else "tool_failed",
                        reason="Canonical gate failed; no established resource-only exception",
                        blocking_refs=["roles/quality/canonical/receipt.json"],
                    )
                    raise RuntimeError("CanonicalGate")
                result["resource_only_canonical_exception"] = True
        else:
            cell = next(c for c in m["profile"]["cells"] if c["case_id"] == case)
            prepared = load(root / "prepared-manifest.json")
            for role in cell["treatment_order"]:
                b = prepared["workers"][TARGETS[role]]
                verify_ref(root, b["executable"])
                call(
                    [
                        str(safe_path(root, b["executable"]["path"])),
                        "run-group",
                        "--prepared",
                        str(root / "prepared-manifest.json"),
                        "--case",
                        case,
                        "--out",
                        str(slot / role),
                    ],
                    role + "-execution",
                )
        result.update(operational="completed", gate_passed=True)
    except Exception as e:
        if result["operational"] == "not_run":
            result.update(operational="tool_failed", reason=str(e), blocking_refs=[])
        result["exception"] = type(e).__name__ + ": " + str(e)
    write_once(slot / "result.json", result)
    return result


def validate_groups(bindings, groups):
    if (
        len(bindings) != 4
        or len({b["sha256"] for b in bindings}) != 4
        or set(groups) != set(TARGETS)
    ):
        raise ValueError("EqualOrMissingExecutedWorkers")
    for role, g in groups.items():
        if (
            g.get("treatment") != role
            or g.get("backend") != "Store<Capture>"
            or g.get("operational") != "completed"
            or g.get("semantic") != "equal"
        ):
            raise ValueError("WrongActualTreatmentOrSemanticOutcome")
        rows = g["observations"]
        if [r["mode"] for r in rows] != ["timing"] * 3 + ["work"] or [
            r["sample_id"] for r in rows
        ] != ["t1", "t2", "t3", "w1"]:
            raise ValueError("FixedModesOrSlots")
        work = rows[3]
        for i, key in enumerate(["work_primary", "work_cycle"]):
            d = work[key]
            if d["selected_full_snapshot_passes"] != (
                i + 1 if role in ["R", "V"] else 0
            ):
                raise ValueError("GroundMechanismInactive")
            if d["fresh_prepared_invocations"] != (i + 1 if role in ["V", "GV"] else 0):
                raise ValueError("ViewMechanismInactive")
            if role == "GV" and (
                d["semantic_unrelated_rows"] != 0
                or d["old_prefix_decision_visits"] != 0
            ):
                raise ValueError("NonlocalCombinedSemanticWork")
    return True


def collect(manifest, out):
    root, m, ledger = context(manifest)
    if Path(out).resolve() != root / "assessment":
        raise ValueError("AssessmentOutputOwnership")
    from assessment import derive

    assessment = derive(root, m)
    Path(out).mkdir(exist_ok=False)
    write_once(Path(out) / "assessment.json", assessment)
    write_once(Path(out) / "report.md", render_report(assessment).encode())
    paths = [
        p.relative_to(root).as_posix()
        for p in root.rglob("*")
        if p.is_file() and p.name != "closed-artifacts.json"
    ]
    write_once(root / "closed-artifacts.json", seal(root, paths))
    return assessment


def render_report(a):
    text = (
        "#035 verified-work reuse\n\nCandidate: "
        + a["candidate"]
        + ". Native correspondence remains conditional. Product adoption is unactivated; Q6 is unestablished.\n\n"
    )
    text += (
        a["summary"]
        + "\n\n| Cell | R complete ms | GV complete ms | GV semantic ms | Status |\n| --- | ---: | ---: | ---: | --- |\n"
    )
    for name, c in a["cells"].items():
        g = c.get("groups", {})

        def ms(role, key):
            return (
                str(round(g[role][key] / 1_000_000, 3)) if role in g else "unavailable"
            )

        text += f"| {name} | {ms('R', 'median_ns')} | {ms('GV', 'median_ns')} | {ms('GV', 'semantic_median_ns')} | {c['status']} |\n"
    return (
        text
        + "\nThree timing observations support diagnostic medians/ranges only. Program acquisition, independent parent acquisition and post-cycle audits are separately charged. Complete operation includes full original output and fsync. No cryptographic proof-chain, production finality or durable publication claim is made.\n"
    )


def cleanup_quality_cache():
    """Discard only this investigation's closed, disposable target build cache."""
    start = time.monotonic_ns()
    cache = E / "private/target"
    if any(p.is_symlink() for p in [E, E / "private", cache]):
        raise ValueError("DisposableCacheSymlink")
    paths = []
    if cache.exists():
        for p in cache.rglob("*"):
            if p.is_file() or p.is_symlink():
                paths.append(
                    {"path": str(p.relative_to(E)), "bytes": p.lstat().st_size}
                )
        shutil.rmtree(cache)
    return {
        "removed_bytes": sum(p["bytes"] for p in paths),
        "paths": paths,
        "started_ns": start,
        "finished_ns": time.monotonic_ns(),
        "scope": "Apparent bytes of owned disposable target cache only; retained workers, candidate CLI, sources and evidence preserved",
    }


def host_context():
    cpu = min(os.sched_getaffinity(0))
    blocks = Path("/proc/cpuinfo").read_text().split("\n\n")
    chosen = {}
    for block in blocks:
        row = dict(line.split(":", 1) for line in block.splitlines() if ":" in line)
        row = {k.strip(): v.strip() for k, v in row.items()}
        if row.get("processor") == str(cpu):
            chosen = row
            break
    return {
        "architecture": os.uname().machine,
        "kernel": os.uname().release,
        "affinity_cpu": cpu,
        "cpu_model": chosen.get("model name"),
        "cpu_model_reason": None
        if chosen.get("model name")
        else "Not exposed in procfs",
        "os_cache": "uncontrolled",
        "dedicated_host": "unestablished",
    }
