"""Compile pinned sources, inspect actual transitive axioms, fresh-replay the kernel.

This is scoped mathematical checking, not a certificate for an arbitrary Core
module or a proof of the source-to-Core/Rust/circuit correspondence.
"""
import hashlib
import json
import os
from pathlib import Path
import re
import resource
import shutil
import signal
import subprocess
import time


ALLOWED_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}
_NAME = re.compile(r"[A-Za-z_][A-Za-z_0-9]*(?:\.[A-Za-z_][A-Za-z_0-9]*)*\Z")


class ProofError(ValueError):
    """Missing, failed, stale or assumption-incompatible proof checking."""


def _limits():
    resource.setrlimit(resource.RLIMIT_AS, (8 * 1024**3, 8 * 1024**3))


def _call(argv, *, cwd, env, log, timeout=300):
    started = time.monotonic_ns()
    if "CORE033_ENGINEERING_DEADLINE_NS" in env:
        remaining = (int(env["CORE033_ENGINEERING_DEADLINE_NS"])-started)/1e9
        if remaining <= 0:
            raise ProofError("overall engineering command budget exhausted before tool")
        timeout = min(timeout, remaining)
    try:
        process = subprocess.Popen(argv, cwd=cwd, env=env, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                   start_new_session=True, preexec_fn=_limits)
    except OSError as exc:
        Path(log).write_text(str(exc) + "\n")
        raise ProofError(f"proof tool unavailable: {argv[0]}") from exc
    timed_out = False
    try:
        stdout, stderr = process.communicate(timeout=timeout)
    except subprocess.TimeoutExpired:
        os.killpg(process.pid, signal.SIGKILL)
        stdout, stderr = process.communicate()
        timed_out = True
    Path(log).write_bytes(stdout + b"\nSTDERR\n" + stderr)
    with Path(log).with_suffix(".command.json").open("x") as receipt:
        json.dump({"format_version": "core033.proof-command.v1", "argv": list(map(str, argv)),
                   "cwd": str(cwd), "lean_path": env.get("LEAN_PATH"),
                   "exit_code": process.returncode, "timed_out": timed_out,
                   "wall_ns": time.monotonic_ns() - started}, receipt, indent=2)
        receipt.write("\n")
    if timed_out:
        raise ProofError(f"proof tool exhausted wall budget: {argv[0]}")
    if process.returncode:
        raise ProofError(f"proof tool failed ({process.returncode}): {argv[0]}: {stderr.decode(errors='replace')}{stdout.decode(errors='replace')}")
    try:
        return stdout.decode("utf-8")
    except UnicodeDecodeError as exc:
        raise ProofError("proof tool returned invalid UTF-8") from exc


def check_modules(source_dir, targets, output_dir, *, audit_source, dependency_paths=(), fresh_replay=True):
    source_dir, output_dir, audit_source = Path(source_dir).resolve(), Path(output_dir).resolve(), Path(audit_source).resolve()
    if not isinstance(targets, dict) or not targets or not any(targets.values()) or any(type(names) is not list for names in targets.values()):
        raise ProofError("nonempty module/theorem inventory required")
    flat = [name for names in targets.values() for name in names]
    if any(not isinstance(n, str) or not _NAME.fullmatch(n) for n in [*targets, *flat]) or len(flat) != len(set(flat)):
        raise ProofError("invalid or duplicate module/theorem names")
    lean, checker = shutil.which("lean"), shutil.which("leanchecker")
    if not lean or not checker:
        raise ProofError("pinned Lean and fresh kernel checker required")
    try:
        output_dir.mkdir(parents=True, exist_ok=False)
    except OSError as exc:
        raise ProofError("proof output directory must be new and writable") from exc
    build = output_dir / "compiled"
    build.mkdir()
    dependencies = [str(Path(path).resolve()) for path in dependency_paths]
    if any(not Path(path).is_dir() for path in dependencies):
        raise ProofError("missing pinned proof dependency directory")
    env = dict(os.environ, LEAN_PATH=os.pathsep.join([str(build), *dependencies]))
    version = _call([lean, "--version"], cwd=source_dir, env=env, log=output_dir / "toolchain.txt")
    if "version 4.30.0," not in version:
        raise ProofError("incompatible Lean toolchain")
    inventory = {}
    try:
        for module, names in targets.items():
            source = source_dir.joinpath(*module.split(".")).with_suffix(".lean")
            raw = source.read_bytes()
            snapshot = output_dir / "source-snapshot" / Path(*module.split(".")).with_suffix(".lean")
            snapshot.parent.mkdir(parents=True, exist_ok=True)
            snapshot.write_bytes(raw)
            inventory[module] = {"source_sha256": hashlib.sha256(raw).hexdigest(),
                                 "source_snapshot": str(snapshot.relative_to(output_dir))}
            compiled = build.joinpath(*module.split(".")).with_suffix(".olean")
            compiled.parent.mkdir(parents=True, exist_ok=True)
            _call([lean, "-j1", "-o", str(compiled), str(source)], cwd=source_dir, env=env, log=output_dir / (module + ".compile.txt"))
            if source.read_bytes() != raw:
                raise ProofError("source changed during proof compilation")
            inventory[module]["olean_sha256"] = hashlib.sha256(compiled.read_bytes()).hexdigest()
        audit_bytes = audit_source.read_bytes()
        (output_dir / "Audit.source.lean").write_bytes(audit_bytes)
        _call([lean, "-j1", "-o", str(build / "Audit.olean"), str(audit_source)], cwd=audit_source.parent, env=env, log=output_dir / "audit-compiler.txt")
        if audit_source.read_bytes() != audit_bytes:
            raise ProofError("axiom inspector changed during compilation")
        audit = output_dir / "AuditRequest.lean"
        audit.write_text("\n".join([*("import " + mod for mod in targets), "import Audit", *("#audit " + name for name in flat)]) + "\n")
        stdout = _call([lean, "-j1", str(audit)], cwd=output_dir, env=env, log=output_dir / "axiom-audit.txt")
        reports = []
        for line in stdout.splitlines():
            if line.startswith("CORE033_AXIOMS "):
                row = json.loads(line[len("CORE033_AXIOMS "):])
                if set(row) != {"target", "kind", "type_repr", "axioms"} or row["kind"] != "theorem" or type(row["axioms"]) is not list:
                    raise ProofError("malformed structured axiom report")
                bad = set(row["axioms"]) - ALLOWED_AXIOMS
                if bad:
                    raise ProofError(f"unpermitted transitive axiom: {sorted(bad)}")
                reports.append(row)
        if [row["target"] for row in reports] != flat:
            raise ProofError("incomplete or changed theorem audit inventory")
        aggregate = build / "Core033Checked.lean"
        aggregate.write_text("\n".join("import " + mod for mod in targets) + "\n")
        _call([lean, "-j1", "-o", str(aggregate.with_suffix(".olean")), str(aggregate)], cwd=build, env=env, log=output_dir / "aggregate.txt")
        if fresh_replay:
            _call([checker, "--fresh", "Core033Checked"], cwd=build, env=env, log=output_dir / "fresh-kernel.txt", timeout=900)
        for module, identity in inventory.items():
            source = source_dir.joinpath(*module.split(".")).with_suffix(".lean")
            if hashlib.sha256(source.read_bytes()).hexdigest() != identity["source_sha256"]:
                raise ProofError("source changed during proof checking")
    except (OSError, ValueError, TypeError, KeyError) as exc:
        if isinstance(exc, ProofError):
            raise
        raise ProofError(str(exc)) from exc
    result = {"format_version": "core033.proofs.v1", "outcome": "Checked" if fresh_replay else "AxiomAuditedPendingFresh", "toolchain": version.strip(),
              "tools": {"lean": {"path": lean, "sha256": hashlib.sha256(Path(lean).read_bytes()).hexdigest()},
                        "leanchecker": {"path": checker, "sha256": hashlib.sha256(Path(checker).read_bytes()).hexdigest()}},
              "theorems": reports, "modules": inventory, "audit_source_sha256": hashlib.sha256(audit_bytes).hexdigest(),
              "fresh_kernel_replay": fresh_replay, "checker_scope": "fresh replay using the same pinned Lean kernel; not an independent kernel implementation",
              "g1_pass": False, "exclusions": ["Core extraction", "Rust implementation", "circuit translation", "cryptographic assumptions"]}
    (output_dir / "report.json").write_text(json.dumps(result, sort_keys=True, indent=2) + "\n")
    return result
