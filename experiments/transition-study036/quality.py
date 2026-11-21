"""Run the entire unchanged canonical gate; no partial/native-proof substitution."""

import shlex
import shutil
import time
from pathlib import Path
from artifact_io import read, write_once, digest
import recorder
import sources

from quality_v2 import (
    parse_full_gate_log_v2 as parse_full_gate_log_v2,
    check_gate_binding_canary_v2 as check_gate_binding_canary_v2,
    validate_warm_gate_cache_v2 as validate_warm_gate_cache_v2,
)

from gate_runtime_v2 import (
    validate_gate_runtime_inputs_v2 as validate_gate_runtime_inputs_v2,
)


E = Path(__file__).resolve().parent
ROOT = E.parents[1]
F = ROOT / "specs/036-core-transition-feasibility"
LABELS = [
    "cargo fmt",
    "clippy",
    "cargo test",
    "prepared state work",
    "incremental validation work",
    "cargo build",
    "determinism check",
    "boundary",
    "public surface",
    "external consumer",
    "workflows",
    "terms",
    "script tests",
]


def evaluate(receipt, stderr):
    return (
        receipt.get("exit_code") == 0
        and receipt.get("stop_reason") is None
        and receipt.get("tree_empty") is True
        and receipt.get("group_empty") is True
        and all("gates: " + v in stderr.splitlines() for v in LABELS)
        and "gates: OK" in stderr.splitlines()
    )


def run_stage(ctx, revision):
    root = F / "evidence/campaign-001/roles/quality"
    root.mkdir(parents=True, exist_ok=False)
    started = time.monotonic_ns()
    write_once(
        root / "stage-clock.json",
        {
            "stage": "Q",
            "started_ns": started,
            "cumulative_limit_seconds": 2400,
            "global_origin": ctx["clock"],
        },
    )
    ledger = recorder.Ledger(ctx["clock"]["started_ns"], ctx["clock"]["boot_id"], 21600)
    tools = read(E / "toolchain.json")["tools"]
    core = E / "private/core"
    source = read(core / "source-export.json")
    sources.verify_export(core, source)
    export_hash = digest(core / "source-export.json")
    script_hash = digest(core / "scripts/gates.sh")
    lock_hash = digest(core / "Cargo.lock")
    env = {
        "CARGO_HOME": str(E / "private/cargo"),
        "CARGO_NET_OFFLINE": "true",
        "CARGO_INCREMENTAL": "0",
        "CARGO_PROFILE_DEV_DEBUG": "0",
        "CARGO_PROFILE_TEST_DEBUG": "0",
        "CARGO_PROFILE_RELEASE_DEBUG": "0",
        "RUSTFLAGS": "-C target-cpu=x86-64",
        "RUST_TEST_THREADS": "1",
    }

    def launch(argv, out, target, limit):
        remain = 2400 - (time.monotonic_ns() - started) / 1e9
        if remain <= 0:
            raise ValueError("QualityCumulativeBudget")
        return recorder.run(
            [
                tools["nix-shell"]["path"],
                str(E / "shell.nix"),
                "--run",
                shlex.join(argv),
            ],
            out,
            min(limit, remain),
            ledger=ledger,
            env={**env, "CARGO_TARGET_DIR": str(target)},
        )

    target = E / "private/cli-release-target"
    build = launch(
        [
            tools["cargo"]["path"],
            "build",
            "--release",
            "--offline",
            "--locked",
            "--manifest-path",
            str(core / "Cargo.toml"),
            "-p",
            "behavior-cli",
        ],
        root / "cli-build",
        target,
        900,
    )
    if build["exit_code"] != 0 or build["stop_reason"] is not None:
        write_once(
            root / "result.json",
            {
                "format": "core036.canonical-result.v1",
                "canonical_met": False,
                "operational": "build_failed",
                "source_export_sha256": export_hash,
                "build_receipt": "cli-build/receipt.json",
                "product_adoption": "unactivated",
            },
        )
        return 3
    cli = root / "retained/behavior"
    cli.parent.mkdir()
    shutil.copyfile(target / "release/behavior", cli)
    cli.chmod(0o755)
    binding = {
        "format": "core036.cli-binding.v1",
        "source_export_sha256": export_hash,
        "script_sha256": script_hash,
        "core_lock_sha256": lock_hash,
        "cli_sha256": digest(cli),
        "cli_bytes": cli.stat().st_size,
        "native_tools_sha256": digest(E / "toolchain.json"),
        "build_receipt": "cli-build/receipt.json",
        "revision_id": revision["revision_id"],
    }
    write_once(root / "cli-binding.json", binding)
    if not build["tree_empty"] or not build["group_empty"]:
        raise ValueError("BuildTreeStillLive")
    # Only the completed036 release target is disposable; retained CLI and inputs remain.
    before = recorder._footprint(target)
    shutil.rmtree(target)
    write_once(
        root / "release-cache-cleanup.json",
        {
            "owned_path": str(target),
            "removed_bytes": before,
            "cli_retained": str(cli.relative_to(ROOT)),
            "tree_closed": True,
        },
    )
    gate_target = E / "private/gate-target"
    if gate_target.exists():
        raise ValueError("GateTargetMustStartEmpty")
    env["BEHAVIOR_BIN"] = str(cli)
    result = launch(
        ["bash", str(core / "scripts/gates.sh")], root / "canonical", gate_target, 1800
    )
    stderr = (root / "canonical/stderr.txt").read_text()
    sources.verify_export(core, source)
    if (
        digest(core / "Cargo.lock") != lock_hash
        or digest(core / "scripts/gates.sh") != script_hash
    ):
        raise ValueError("CanonicalInputMutation")
    passed = evaluate(result, stderr)
    write_once(
        root / "result.json",
        {
            "format": "core036.canonical-result.v1",
            "canonical_met": passed,
            "operational": "completed"
            if result["stop_reason"] is None
            else "resource_stopped",
            "exit_code": result["exit_code"],
            "stop_reason": result["stop_reason"],
            "source_export_sha256": export_hash,
            "script_sha256": script_hash,
            "cli_sha256": binding["cli_sha256"],
            "labels_seen": [v for v in LABELS if "gates: " + v in stderr.splitlines()],
            "whole_gate_terminal_ok": "gates: OK" in stderr.splitlines(),
            "receipt": "canonical/receipt.json",
            "native_correspondence": "unestablished",
            "product_adoption": "unactivated",
        },
    )
    return 0 if passed else (3 if result["stop_reason"] else 1)


_initial_run_stage = run_stage


def run_stage(ctx, revision):
    if revision["revision_id"] == "r003":
        from quality_retry import run_stage as corrected

        return corrected(ctx, revision)
    return _initial_run_stage(ctx, revision)
