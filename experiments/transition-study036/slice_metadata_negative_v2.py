"""Complete only the malformed negative against the exact already checked module."""

import os
from pathlib import Path
from artifact_io import RootRegistry, digest, write_once
from lean_command_v2 import run_logged_command


def wrong_source(module):
    return f"""module
public import {module}
@[expose] public section
open Aeneas.Std
theorem wrong_length_plus_one (s : Slice U8)
    (h : s.val.length + 1 < 2 ^ UScalarTy.Usize.numBits) :
  core036_slice_entry.core036_slice_metadata.bytes s =
    Result.ok (Usize.ofNatCore (s.val.length + 1) h) := by rfl
"""


def run_probe(refs, reference, declaration, out):
    selection = refs.read(reference)
    if (
        set(selection)
        != {
            "format",
            "checkpoint_ref",
            "positive_ref",
            "module_ref",
            "analysis_tools_ref",
        }
        or selection["format"] != "core036.slice-metadata-negative.v2"
        or out != refs.roots["private"] / "ground-lean-probe" / declaration["record_id"]
        or out.exists()
    ):
        raise ValueError("SliceNegativeSelection")
    cp_path = refs.verify(selection["checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(selection["checkpoint_ref"])
    positive_path = refs.verify(selection["positive_ref"])
    positive = refs.read(selection["positive_ref"])
    prior = refs.roots["private"] / "ground-lean-probe/a0378"
    if (
        cp.get("attempt_id") != "a0378"
        or cp.get("stage_outcome") != "failed"
        or cp.get("source_validation_error") is not None
        or positive_path != prior / "declared-proof/result.json"
        or positive.get("format") != "core036.declared-proof-check.v2"
        or positive.get("status") != "proved_for_declared_subject"
        or positive.get("feature_complete") is not False
        or positive.get("feature_native_status") != "unestablished"
        or {r.get("id") for r in positive.get("expected_roots", [])}
        != {
            "slice.bytes",
            "slice.words",
            "slice.zero_sized",
            "slice.generic",
            "slice.element_count",
        }
        or [r.get("label") for r in positive.get("commands", [])]
        != ["lean-SliceMetadata", "lean-ProofRoot", "lean-Audit", "fresh-kernel"]
        or any(
            type(r.get("exit_code")) is not int or r["exit_code"] != 0
            for r in positive["commands"]
        )
    ):
        raise ValueError("SliceNegativeUncheckedPositiveDependency")
    module_path = refs.verify(selection["module_ref"])
    if module_path != prior / "project/SliceMetadata.lean" or digest(
        module_path
    ) != positive["source_sha256"].get("SliceMetadata"):
        raise ValueError("SliceNegativeWrongModule")
    # Match the exact tool selection frozen for the already checked subject.
    subject = refs.read(cp["source_subject_ref"])
    old = [
        r
        for r in subject["files"]
        if r["logical_ref"]["root_id"] == "repository"
        and r["logical_ref"]["path"]
        == "experiments/transition-study036/analysis-canary-inputs-v2.json"
    ]
    if len(old) != 1 or old[0]["logical_ref"] != selection["analysis_tools_ref"]:
        raise ValueError("SliceNegativeDifferentToolSelection")
    refs.verify(old[0]["snapshot_ref"])
    config = refs.read(selection["analysis_tools_ref"])
    analysis = refs.read(config["lean_ref"])
    tools = refs.read(config["rust_ref"])
    cache = refs.read(config["cache_ref"])
    if (
        any(analysis["statuses"].values())
        or any(tools["statuses"].values())
        or cache["missing_requested_roots"]
    ):
        raise ValueError("SliceNegativeToolsNotReady")
    for row in [*analysis["patched_binaries"], *tools["patched_binaries"]]:
        if digest(row["path"]) != row["sha256"]:
            raise ValueError("SliceNegativeToolChanged")
    sdk, backend = Path(analysis["sdk"]), Path(cache["backend"])
    if backend != refs.roots["private"] / "analysis-backend-build/a0058/lean":
        raise ValueError("SliceNegativeBackend")
    out.mkdir(parents=True)
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    raw = module_path.read_bytes()
    write_once(project / "SliceMetadata.lean", raw)
    write_once(project / "Wrong.lean", wrong_source("SliceMetadata").encode())
    env = {
        **os.environ,
        **analysis["environment"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
    }
    env.pop("LD_PRELOAD", None)
    prefix = [
        str(sdk / "bin/lake"),
        "--no-build",
        "env",
        str(sdk / "bin/lean"),
        "-j1",
        "-s131072",
        "-M4096",
        "-R",
        str(project),
    ]
    commands = []
    for name, expected in [("SliceMetadata", 0), ("Wrong", 1)]:
        argv = [*prefix]
        if name == "SliceMetadata":
            argv += ["-o", str(compiled / "SliceMetadata.olean")]
        argv += [str(project / (name + ".lean"))]
        row = run_logged_command(
            out / "commands" / name,
            argv,
            cwd=backend,
            env=env,
            seconds=300,
            metadata=dict(label=name, expected_exit_code=expected),
        )
        commands.append(row)
        if row["exit_code"] != expected or row["timed_out"]:
            raise ValueError("SliceNegativeUnexpectedOutcome:" + name)
    log = (out / "commands/Wrong/stdout.txt").read_text() + (
        out / "commands/Wrong/stderr.txt"
    ).read_text()
    if "rfl" not in log or any(
        marker in log
        for marker in (
            "unexpected token",
            "Unknown identifier",
            "unknown identifier",
            "Application type mismatch",
        )
    ):
        raise ValueError("SliceNegativeMalformed")
    if (
        module_path.read_bytes() != raw
        or (project / "SliceMetadata.lean").read_bytes() != raw
    ):
        raise ValueError("SliceNegativeSourceChanged")
    write_once(
        out / "result.json",
        dict(
            format="core036.slice-metadata-negative-result.v2",
            source_subject_ref=declaration["source_subject_ref"],
            positive_subject_ref=cp["source_subject_ref"],
            positive_checkpoint_ref=selection["checkpoint_ref"],
            positive_proof_ref=selection["positive_ref"],
            exact_generated_module_ref=selection["module_ref"],
            generated_sha256=digest(module_path),
            commands=commands,
            negative_control_matched=True,
            positive_proof_reexecuted=False,
            fresh_kernel="passed_in_referenced_exact_subject",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
            scope="Only corrected semantic negative on exact previously checked slice-helper source; no new positive/native proof",
        ),
    )
    return 0
