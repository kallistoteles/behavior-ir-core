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

from artifacts import ArtifactError, read_json

ALLOWED_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}
_NAME = re.compile(r"[A-Za-z_][A-Za-z_0-9]*(?:\.[A-Za-z_][A-Za-z_0-9]*)*\Z")


class ProofError(ValueError):
    """Missing, failed, stale or assumption-incompatible proof checking."""


def _limits():
    resource.setrlimit(resource.RLIMIT_AS, (8 * 1024**3, 8 * 1024**3))


def _call(argv, *, cwd, env, log, timeout=300):
    process = subprocess.Popen(argv, cwd=cwd, env=env, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                               start_new_session=True, preexec_fn=_limits)
    try:
        stdout, stderr = process.communicate(timeout=timeout)
    except subprocess.TimeoutExpired as exc:
        os.killpg(process.pid, signal.SIGKILL)
        stdout, stderr = process.communicate()
        Path(log).write_bytes(stdout + b"\nSTDERR\n" + stderr)
        raise ProofError(f"proof tool exhausted wall budget: {argv[0]}") from exc
    Path(log).write_bytes(stdout + b"\nSTDERR\n" + stderr)
    if process.returncode:
        raise ProofError(f"proof tool failed ({process.returncode}): {argv[0]}: {stderr.decode(errors='replace')}{stdout.decode(errors='replace')}")
    return stdout.decode("utf-8")


def check_modules(source_dir, targets, output_dir, *, audit_source):
    source_dir, output_dir, audit_source = Path(source_dir).resolve(), Path(output_dir).resolve(), Path(audit_source).resolve()
    if not targets or not any(targets.values()) or any(type(names) is not list for names in targets.values()):
        raise ProofError("nonempty module/theorem inventory required")
    flat = [name for names in targets.values() for name in names]
    if len(flat) != len(set(flat)) or any(not _NAME.fullmatch(n) for n in [*targets, *flat]):
        raise ProofError("invalid or duplicate module/theorem names")
    lean, checker = shutil.which("lean"), shutil.which("leanchecker")
    if not lean or not checker:
        raise ProofError("pinned Lean and fresh kernel checker required")
    output_dir.mkdir(parents=True, exist_ok=False)
    build = output_dir / "compiled"
    build.mkdir()
    env = dict(os.environ, LEAN_PATH=str(build))
    version = _call([lean, "--version"], cwd=source_dir, env=env, log=output_dir / "toolchain.log")
    if "version 4.30.0," not in version:
        raise ProofError("incompatible Lean toolchain")
    inventory = {}
    try:
        for module, names in targets.items():
            source = source_dir.joinpath(*module.split(".")).with_suffix(".lean")
            raw = source.read_bytes()
            inventory[module] = {"source_sha256": hashlib.sha256(raw).hexdigest()}
            compiled = build.joinpath(*module.split(".")).with_suffix(".olean")
            compiled.parent.mkdir(parents=True, exist_ok=True)
            _call([lean, "-j1", "-o", str(compiled), str(source)], cwd=source_dir, env=env, log=output_dir / (module + ".compile.log"))
            if source.read_bytes() != raw:
                raise ProofError("source changed during proof compilation")
            inventory[module]["olean_sha256"] = hashlib.sha256(compiled.read_bytes()).hexdigest()
        _call([lean, "-j1", "-o", str(build / "Audit.olean"), str(audit_source)], cwd=audit_source.parent, env=env, log=output_dir / "audit-compiler.log")
        audit = output_dir / "AuditRequest.lean"
        audit.write_text("\n".join([*("import " + mod for mod in targets), "import Audit", *("#audit " + name for name in flat)]) + "\n")
        stdout = _call([lean, "-j1", str(audit)], cwd=output_dir, env=env, log=output_dir / "axiom-audit.log")
        reports = []
        for line in stdout.splitlines():
            if line.startswith("CORE032_AXIOMS "):
                row = json.loads(line[len("CORE032_AXIOMS "):])
                if set(row) != {"target", "kind", "type_repr", "axioms"} or row["kind"] != "theorem" or type(row["axioms"]) is not list:
                    raise ProofError("malformed structured axiom report")
                bad = set(row["axioms"]) - ALLOWED_AXIOMS
                if bad:
                    raise ProofError(f"unpermitted transitive axiom: {sorted(bad)}")
                reports.append(row)
        if [row["target"] for row in reports] != flat:
            raise ProofError("incomplete or changed theorem audit inventory")
        aggregate = build / "Core032Checked.lean"
        aggregate.write_text("\n".join("import " + mod for mod in targets) + "\n")
        _call([lean, "-j1", "-o", str(aggregate.with_suffix(".olean")), str(aggregate)], cwd=build, env=env, log=output_dir / "aggregate.log")
        _call([checker, "--fresh", "Core032Checked"], cwd=build, env=env, log=output_dir / "fresh-kernel.log")
    except (OSError, ValueError, TypeError, KeyError) as exc:
        if isinstance(exc, ProofError):
            raise
        raise ProofError(str(exc)) from exc
    result = {"format": "core032.proofs.v1", "outcome": "Checked", "toolchain": version.strip(),
              "theorems": reports, "modules": inventory, "audit_source_sha256": hashlib.sha256(audit_source.read_bytes()).hexdigest(),
              "fresh_kernel_replay": True, "checker_scope": "fresh replay using the same pinned Lean kernel; not an independent kernel implementation",
              "exclusions": ["Core extraction", "Rust implementation", "circuit translation", "cryptographic assumptions"]}
    (output_dir / "report.json").write_text(json.dumps(result, sort_keys=True, indent=2) + "\n")
    return result
