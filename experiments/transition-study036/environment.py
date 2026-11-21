"""Actual bounded tool smokes; file names and hashes never imply readiness."""

from pathlib import Path
from artifact_io import digest
from records import identifier

# Source-selected basic probes. These are smoke capabilities only. Full ENV
# readiness also requires native link, dependencies, store metadata and GC roots.
_PROBES = {
    "python": ["--version"],
    "rustc": ["--version"],
    "cargo": ["--version"],
    "git": ["--version"],
    "lean": ["--version"],
    "z3": ["--version"],
    "cc": ["--version"],
    "nix": ["--version"],
    "ruff": ["--version"],
}


def check_readiness(tools, *, required, runner=None, out_root=None):
    if not isinstance(tools, dict) or not isinstance(required, list) or not required:
        raise ValueError("V2ToolInventory")
    results = {}
    for name in required:
        identifier(name)
        if name not in _PROBES:
            results[name] = {"ready": False, "reason": "No source-selected probe"}
            continue
        tool = tools.get(name)
        fields = {"path", "sha256", "probe_args", "expected_stdout_prefix"}
        if (
            not isinstance(tool, dict)
            or set(tool) != fields
            or runner is None
            or out_root is None
        ):
            results[name] = {
                "ready": False,
                "reason": "Missing actual bounded probe configuration",
            }
            continue
        path = tool["path"]
        if (
            not isinstance(path, str)
            or not Path(path).is_absolute()
            or not Path(path).is_file()
            or tool["probe_args"] != _PROBES[name]
            or not isinstance(tool["expected_stdout_prefix"], str)
            or not tool["expected_stdout_prefix"]
            or digest(path) != tool["sha256"]
        ):
            results[name] = {
                "ready": False,
                "reason": "Tool bytes or fixed probe mismatch",
            }
            continue
        out = Path(out_root) / name
        receipt = runner.run([path, *_PROBES[name]], out, wall_seconds=30)
        text = (out / "stdout.txt").read_text()
        ready = (
            receipt["exit_code"] == 0
            and receipt["stop_reason"] is None
            and receipt["tree_empty"] is True
            and receipt["group_empty"] is True
            and text.startswith(tool["expected_stdout_prefix"])
            and digest(path) == tool["sha256"]
        )
        results[name] = {
            "ready": ready,
            "reason": "Actual bounded version smoke only" if ready else "Probe failed",
            "receipt_path": str(out / "receipt.json"),
            "receipt_sha256": digest(out / "receipt.json"),
        }
    return {
        "ready": all(v["ready"] for v in results.values()),
        "scope": "required basic tool smokes only",
        "closure_checked": False,
        "native_link_checked": False,
        "tools": results,
    }


def validate_environment_plan(plan):
    if not isinstance(plan, dict) or set(plan) != {"builders", "repair", "gcroots"}:
        raise ValueError("V2EnvironmentPlanFields")
    if not isinstance(plan["builders"], list) or not isinstance(plan["gcroots"], list):
        raise ValueError("V2EnvironmentPlanLists")
    # No builder capability has been established by this module. A supplied
    # tracked/enforced flag cannot enable external heavy service work.
    if plan["builders"]:
        raise ValueError("V2ExternalBuilderCapabilityUnestablished")
    if plan["repair"] is not None:
        raise ValueError("V2SharedRepairRequiresSeparateSafeExecution")
    for ref in plan["gcroots"]:
        if (
            not isinstance(ref, dict)
            or set(ref) != {"path", "target"}
            or not all(
                isinstance(ref[k], str) and Path(ref[k]).is_absolute() for k in ref
            )
        ):
            raise ValueError("V2GCRootFields")
        path, target = Path(ref["path"]), Path(ref["target"])
        if (
            not path.is_symlink()
            or not target.exists()
            or path.resolve() != target.resolve()
        ):
            raise ValueError("V2GCRootTarget")
    return plan


def native_stage(declaration_path, out):
    """Source-selected serial native readiness/preparation inside V2Runner.

    This child inherits the supervisor's CPU/AS/time ownership. Every subcommand
    is captured. Querying existing metadata never authorizes daemon builds.
    """
    import os
    import shutil
    import subprocess
    from artifact_io import read, write_once
    import sources

    root = Path(__file__).resolve().parents[2]
    here = Path(__file__).resolve().parent
    declaration = read(declaration_path)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(out)
    if out != private / "environment" / declaration["record_id"] or out.exists():
        raise ValueError("V2NativePreparationOutput")
    out.mkdir(parents=True)
    config = read(here / "native-environment-inputs-v2.json")
    if (
        set(config) != {"format", "tools", "warm_cargo", "required_source_count"}
        or config["format"] != "core036.native-environment-inputs.v2"
    ):
        raise ValueError("V2NativeEnvironmentInputs")
    tools = config["tools"]
    commands = []
    issues = []
    for name, tool in tools.items():
        if not Path(tool["path"]).is_file() or digest(tool["path"]) != tool["sha256"]:
            raise ValueError("V2PinnedNativeToolBytes:" + name)
    path_entries = list(
        dict.fromkeys(str(Path(t["path"]).parent) for t in tools.values())
    )
    env = {
        **os.environ,
        "PATH": os.pathsep.join(path_entries),
        "RUSTC": tools["rustc"]["path"],
        "CC": tools["cc"]["path"],
        "CARGO_BUILD_JOBS": "1",
        "CARGO_INCREMENTAL": "0",
        "CARGO_NET_OFFLINE": "true",
        "CARGO_HOME": str(private / "cargo"),
        "RUSTFLAGS": "-C target-cpu=x86-64",
    }

    def execute(name, argv, *, input=None):
        log = out / "probes" / name
        log.mkdir(parents=True, exist_ok=False)
        try:
            result = subprocess.run(
                argv,
                input=input,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                env=env,
                cwd=out,
                timeout=60,
                check=False,
            )
            stdout, stderr, code = result.stdout, result.stderr, result.returncode
        except (OSError, subprocess.TimeoutExpired) as exc:
            stdout, stderr, code = b"", repr(exc).encode(), None
        write_once(log / "stdout.txt", stdout)
        write_once(log / "stderr.txt", stderr)
        row = {
            "name": name,
            "argv": argv,
            "exit_code": code,
            "stdout_sha256": digest(log / "stdout.txt"),
            "stderr_sha256": digest(log / "stderr.txt"),
        }
        write_once(log / "result.json", row)
        commands.append(row)
        if code != 0:
            issues.append("probe:" + name)
        return code, stdout

    for name in ("python", "rustc", "cargo", "cc", "git", "z3", "bash"):
        args = ["--version"] if name != "bash" else ["--version"]
        code, stdout = execute(name, [tools[name]["path"], *args])
        expected = tools[name].get("version_prefix")
        if expected and not stdout.decode(errors="replace").startswith(expected):
            issues.append("version:" + name)
    execute(
        "jsonschema",
        [
            tools["python-schema"]["path"],
            "-c",
            'import jsonschema;jsonschema.Draft202012Validator({"type":"integer"}).validate(1);print("schema-runtime-ok")',
        ],
    )
    code, stdout = execute(
        "solver",
        [tools["z3"]["path"], "-in"],
        input=b"(set-logic QF_LIA)\n(assert (= (+ 1 1) 2))\n(check-sat)\n",
    )
    if stdout.strip() != b"sat":
        issues.append("solver-result")
    smoke = out / "native-smoke.rs"
    write_once(smoke, b'fn main() { println!("core036-native-smoke"); }\n')
    binary = out / "native-smoke"
    code, _ = execute(
        "rust-link",
        [
            tools["rustc"]["path"],
            "--edition=2024",
            "-C",
            "target-cpu=x86-64",
            "-C",
            "debuginfo=0",
            "-C",
            "linker=" + tools["cc"]["path"],
            str(smoke),
            "-o",
            str(binary),
        ],
    )
    if code == 0:
        _, stdout = execute("linked-binary", [str(binary)])
        if stdout.strip() != b"core036-native-smoke":
            issues.append("linked-binary-result")
    # Extract the store output without resolving an invocation-name-sensitive
    # symlink (notably nix-store and Python environment wrappers).
    store_paths = sorted(
        {str(Path(*Path(t["path"]).parts[:4])) for t in tools.values()}
    )
    closure = set()
    for index, path in enumerate(store_paths):
        code, stdout = execute(
            f"closure-{index:02d}",
            [tools["nix-store"]["path"], "--query", "--requisites", path],
        )
        if code == 0:
            for line in stdout.decode().splitlines():
                if not line.startswith("/nix/store/") or not Path(line).exists():
                    issues.append("closure-missing:" + line)
                else:
                    closure.add(line)
    # Register actual indirect GC roots only for already-valid outputs. No
    # installation, substitute, builder or shared repair is permitted here.
    gcroots = []
    if not any(x.startswith("probe:closure-") for x in issues):
        for index, path in enumerate(store_paths):
            gcroot = (
                private / "gcroots" / declaration["record_id"] / f"native-{index:02d}"
            )
            gcroot.parent.mkdir(parents=True, exist_ok=True)
            code, _ = execute(
                f"gcroot-{index:02d}",
                [
                    tools["nix-store"]["path"],
                    "--option",
                    "builders",
                    "",
                    "--option",
                    "substitute",
                    "false",
                    "--max-jobs",
                    "0",
                    "--add-root",
                    str(gcroot),
                    "--indirect",
                    "--realise",
                    path,
                ],
            )
            if code == 0:
                gcroots.append({"path": str(gcroot), "target": path})
        validate_environment_plan({"builders": [], "repair": None, "gcroots": gcroots})
    tool_refs = [{k: tool[k] for k in ("path", "sha256")} for tool in tools.values()]
    source_results = {}
    for role, original in [("core-original", True), ("core-reuse", False)]:
        destination = private / "sources" / declaration["record_id"] / role
        manifest = sources.export_v2(
            root,
            sources.CORE_REV,
            destination,
            original=original,
            tools=tool_refs,
            patches=() if original else sources.reviewed_patches(),
        )
        count = len(manifest["files"])
        if count != config["required_source_count"]:
            issues.append("source-count:" + role + ":" + str(count))
        source_results[role] = {
            "path": str(destination),
            "files": count,
            "manifest_sha256": digest(destination / "subject-inventory-v2.json"),
            "original": original,
        }
    warm = Path(config["warm_cargo"])
    cargo = private / "cargo"
    if not warm.is_dir() or cargo.is_symlink():
        raise ValueError("V2WarmCargoPreparation")
    from recorder import v2_footprints

    warm_bytes = v2_footprints({"source": warm})["source"]
    if warm_bytes > 1024**3:
        raise ValueError("V2WarmCargoBound")
    cargo_reused = cargo.exists()
    if cargo_reused:
        # A failed ENV already copied this warm source cache. Verify the same
        # retained bytes instead of overwriting it or claiming a cold install.
        previous = {
            str(p.relative_to(cargo)): p for p in cargo.rglob("*") if p.is_file()
        }
        expected = {str(p.relative_to(warm)): p for p in warm.rglob("*") if p.is_file()}
        if previous.keys() != expected.keys():
            raise ValueError("V2WarmCargoInventoryChanged")
        for name, p in expected.items():
            if digest(p) != digest(previous[name]):
                raise ValueError("V2WarmCargoBytesChanged:" + name)
    else:
        shutil.copytree(warm, cargo, symlinks=True)
    write_once(
        out / "native-readiness.json",
        {
            "format": "core036.native-readiness.v2",
            "ready": not issues,
            "scope": "native tools, compiler/linker, original and candidate inventory; analysis not established",
            "issues": issues,
            "tools": tools,
            "commands": commands,
            "closure_paths": sorted(closure),
            "gcroots": gcroots,
            "sources": source_results,
            "warm_cargo_source": str(warm),
            "warm_cargo_bytes": warm_bytes,
            "warm_cargo_reused_after_verification": cargo_reused,
            "cold_installation": False,
            "analysis_ready": False,
            "native_proof": "unestablished",
            "product_adoption": "unactivated",
        },
    )
    return 0 if not issues else 1


def check_prepared_native_v2(binding_path):
    """Recheck raw successful ENV, actual probes, tools, indexes and GC roots."""
    from artifact_io import read, RootRegistry
    from records import MANIFEST
    import sources

    root = Path(__file__).resolve().parents[2]
    repo = RootRegistry({"repository": root}, readonly=["repository"])
    binding = read(binding_path)
    if (
        not isinstance(binding, dict)
        or set(binding)
        not in (
            {"format", "readiness_ref", "receipt_ref", "config_ref"},
            {
                "format",
                "readiness_ref",
                "receipt_ref",
                "config_ref",
                "analysis_binding_ref",
            },
        )
        or binding["format"] != "core036.native-binding.v2"
    ):
        raise ValueError("V2NativeBinding")
    # Each ref has a verifier-owned repository root; no report can select a
    # different filesystem root or substitute a success-only evidence object.
    readiness = repo.read(binding["readiness_ref"], limit=MANIFEST)
    receipt = repo.read(binding["receipt_ref"], limit=MANIFEST)
    config = repo.read(binding["config_ref"])
    work = receipt.get("work_id")
    if (
        not isinstance(work, str)
        or __import__("re").fullmatch(r"w[0-9]{3,16}", work) is None
    ):
        raise ValueError("V2NativeReceiptWork")
    context_roots = RootRegistry(
        {
            "repository": root,
            "work": root / "specs/036-core-transition-feasibility/evidence/v2" / work,
            "private": Path("/var/tmp/behavior-ir-core036-v2") / work,
        },
        readonly=["repository", "work", "private"],
    )
    receipt_path = repo.verify(binding["receipt_ref"])
    declaration_path = receipt_path.parent.parent / "declaration.json"
    declaration = repo.read(
        repo.reference("repository", str(declaration_path.relative_to(root)))
    )
    sources.resolve_execution_source_v2(
        receipt["source_subject_ref"], declaration, registry=context_roots
    )
    for reference in receipt["inputs"]:
        context_roots.verify(reference)
    if (
        receipt["exit_code"] != 0
        or receipt["stop_reason"] is not None
        or receipt["tree_empty"] is not True
        or receipt["group_empty"] is not True
        or receipt["format"] != "core036.resource.v2"
        or receipt["stage"] != "ENV"
    ):
        raise ValueError("V2NativeActualReceipt")
    if readiness["issues"] or readiness["tools"] != config["tools"]:
        raise ValueError("V2NativeReadinessContext")
    evidence_root = repo.verify(binding["readiness_ref"]).parent
    for command in readiness["commands"]:
        name = identifier(command["name"])
        if "/" in name or "\\" in name or name in {".", ".."}:
            raise ValueError("V2ProbeName")
        probe = evidence_root / "probes" / name
        if (
            command["exit_code"] != 0
            or digest(probe / "stdout.txt") != command["stdout_sha256"]
            or digest(probe / "stderr.txt") != command["stderr_sha256"]
        ):
            raise ValueError("V2NativeProbeBytes")
    required = {
        "python",
        "rustc",
        "cargo",
        "cc",
        "git",
        "z3",
        "bash",
        "jsonschema",
        "solver",
        "rust-link",
        "linked-binary",
    }
    if not required <= {c["name"] for c in readiness["commands"]}:
        raise ValueError("V2MissingNativeProbe")
    for tool in config["tools"].values():
        if digest(tool["path"]) != tool["sha256"]:
            raise ValueError("V2ChangedNativeTool")
    if not readiness["closure_paths"] or any(
        not Path(p).exists() for p in readiness["closure_paths"]
    ):
        raise ValueError("V2MissingNativeClosure")
    validate_environment_plan(
        {"builders": [], "repair": None, "gcroots": readiness["gcroots"]}
    )
    for name, entry in readiness["sources"].items():
        path = Path(entry["path"])
        manifest = read(path / "subject-inventory-v2.json", MANIFEST)
        if digest(path / "subject-inventory-v2.json") != entry["manifest_sha256"]:
            raise ValueError("V2PreparedSourceManifest")
        sources.verify_subject_v2(path, manifest)
        if len(manifest["files"]) != config["required_source_count"] or manifest[
            "original"
        ] != (name == "core-original"):
            raise ValueError("V2PreparedSourceRole")
    return readiness


def check_original_safety_v2(binding_path):
    """Check the separately sealed original runtime, not an analysis-tool flag."""
    from artifact_io import RootRegistry, read
    from bootstrap import validate_v2_profile
    from lean_cache_prepare import ROOT as lean_root, DERIVER
    from records import MANIFEST
    import sources

    root = Path(__file__).resolve().parents[2]
    repo = RootRegistry({"repository": root}, readonly=["repository"])
    binding = read(binding_path)
    expected = {
        "format",
        "runtime_ref",
        "realization_ref",
        "receipt_ref",
        "realization_receipt_ref",
        "profile_ref",
    }
    if (
        set(binding) != expected
        or binding["format"] != "core036.original-safety-binding.v2"
    ):
        raise ValueError("V2OriginalSafetyBinding")
    documents = {
        key: repo.read(binding[key], limit=MANIFEST) for key in expected - {"format"}
    }
    runtime = documents["runtime_ref"]
    realization = documents["realization_ref"]
    profile = documents["profile_ref"]
    validate_v2_profile(profile)
    evidence = repo.verify(binding["runtime_ref"]).parent.parent
    RootRegistry({"environment": evidence}).verify_closed("environment")
    for key in ("receipt_ref", "realization_receipt_ref"):
        receipt = documents[key]
        receipt_path = repo.verify(binding[key])
        attempt = receipt_path.parent.parent
        RootRegistry({"attempt": attempt}).verify_closed("attempt")
        declaration = read(attempt / "declaration.json")
        context = RootRegistry(
            {
                "repository": root,
                "work": attempt.parent.parent,
                "private": Path("/var/tmp/behavior-ir-core036-v2") / receipt["work_id"],
            },
            readonly=["repository", "work", "private"],
        )
        sources.resolve_execution_source_v2(
            receipt["source_subject_ref"], declaration, registry=context
        )
        if (
            receipt["exit_code"] != 0
            or receipt["stop_reason"] is not None
            or receipt["tree_empty"] is not True
            or receipt["group_empty"] is not True
            or receipt["stage"] != "ENV"
        ):
            raise ValueError("V2OriginalSafetyActualReceipt")
    if (
        runtime["format"] != "core036.original-safety-runtime.v2"
        or runtime["issues"]
        or runtime["source_subject_ref"]
        != documents["receipt_ref"]["source_subject_ref"]
        or realization["exit_code"] != 0
        or realization["root"] != lean_root
        or realization["deriver"] != DERIVER
        or runtime["expected_profile"]["outPath"] != lean_root
        or runtime["expected_profile"]["drvPath"] != "/nix/store/" + DERIVER
    ):
        raise ValueError("V2OriginalSafetyContext")
    tools = read(Path(__file__).resolve().parent / "toolchain.json")["tools"]
    for name in ("lean", "leanchecker"):
        if digest(Path(lean_root) / "bin" / name) != tools[name]["sha256"]:
            raise ValueError("V2OriginalSafetyToolChanged")
    for label in (
        "actual-runtime-deriver",
        "actual-runtime-closure",
        "recorded-native-deriver",
        "recorded-native-closure",
        "lean-version",
        "lean-compile",
        "fresh-kernel",
    ):
        folder = evidence / "runtime" / label
        result = read(folder / "result.json")
        if (
            result["exit_code"] != 0
            or digest(folder / "stdout.txt") != result["stdout_sha256"]
            or digest(folder / "stderr.txt") != result["stderr_sha256"]
        ):
            raise ValueError("V2OriginalSafetyProbeBytes")
        if label.endswith("closure"):
            paths = (folder / "stdout.txt").read_text().splitlines()
            if lean_root not in paths or any(not Path(p).exists() for p in paths):
                raise ValueError("V2OriginalSafetyClosureMissing")
    validate_environment_plan(
        {
            "builders": [],
            "repair": None,
            "gcroots": [{"path": realization["gcroot"], "target": lean_root}],
        }
    )
    return runtime


def check_prepared_analysis_v2(binding_path):
    """Separate analysis preparation check; never establishes Core correspondence."""
    from analysis_environment import check

    return check(binding_path)
