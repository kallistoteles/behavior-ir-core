"""Isolated owning-source canary support; no Core or native admission."""

import copy
import hashlib
import json
import os
import re
import stat
import tomllib
from pathlib import Path

from artifact_io import RootRegistry, digest, read, write_once
from artifact_registration_v2 import guard_reference
from lean_command_v2 import run_logged_command
from records import validate_ref_v2

OWNER_METHOD = b"""    pub fn as_str(&self) -> Option<&str> {
        match self {
            Value::String(s) => Some(s),
            _ => None,
        }
    }"""


def validate_positive_config(config):
    fields = {"preparation_checkpoint_ref", "preparation_result_ref"}
    if (
        not isinstance(config, dict)
        or set(config)
        != fields | {"format", "scope", "native_proof", "feature_complete"}
        or config["format"] != "core036.native-accessor-positive.v2"
        or config["scope"] != "relocated_accessor_positive_only"
        or config["native_proof"] != "unestablished"
        or config["feature_complete"] is not False
    ):
        raise ValueError("NativeAccessorCanaryPositiveScope")
    for key in fields:
        guard_reference(config[key])
        validate_ref_v2(config[key])


def validate_negative_config(config):
    fields = {"positive_checkpoint_ref", "positive_result_ref"}
    if (
        not isinstance(config, dict)
        or set(config)
        != fields | {"format", "scope", "native_proof", "feature_complete"}
        or config["format"] != "core036.native-accessor-negative.v2"
        or config["scope"] != "owning_source_negative_only"
        or config["native_proof"] != "unestablished"
        or config["feature_complete"] is not False
    ):
        raise ValueError("NativeAccessorCanaryNegativeScope")
    for key in fields:
        guard_reference(config[key])
        validate_ref_v2(config[key])


def mutated_owner_inventory(inventory, original):
    """Predict precisely one owner-file change from the unchanged snapshot."""
    changed = mutate_null_accessor(original)
    if (
        not isinstance(inventory, list)
        or not inventory
        or any(
            not isinstance(row, dict)
            or set(row) != {"path", "bytes", "sha256"}
            or not isinstance(row["path"], str)
            or type(row["bytes"]) is not int
            or not 0 <= row["bytes"] <= 16 * 1024**2
            or not isinstance(row["sha256"], str)
            or re.fullmatch(r"[0-9a-f]{64}", row["sha256"]) is None
            for row in inventory
        )
        or len({row["path"] for row in inventory}) != len(inventory)
    ):
        raise ValueError("NativeAccessorCanaryOwnerInventory")
    selected = [row for row in inventory if row["path"] == "src/value/mod.rs"]
    if len(selected) != 1 or selected[0] != {
        "path": "src/value/mod.rs",
        "bytes": len(original),
        "sha256": hashlib.sha256(original).hexdigest(),
    }:
        raise ValueError("NativeAccessorCanaryOwnerMethodBinding")
    return [
        {
            **row,
            "bytes": len(changed),
            "sha256": hashlib.sha256(changed).hexdigest(),
        }
        if row["path"] == "src/value/mod.rs"
        else dict(row)
        for row in inventory
    ]


def isolated_null_source(wrapper):
    declaration = (
        b"theorem value_as_str_null :\n"
        b"    transition_study036.serde_json.value.Value.impl.as_str .Null = ok none := rfl\n"
    )
    if type(wrapper) is not bytes or wrapper.count(declaration) != 1:
        raise ValueError("NativeAccessorCanaryFixedNullSource")
    return (
        b"module\npublic import CanonicalRowNames.Funs\n"
        b"@[expose] public section\nopen Aeneas.Std Result\n"
        b"namespace Correspondence036.NativeJsonBorrowWrapper\n\n"
        + declaration
        + b"\nend Correspondence036.NativeJsonBorrowWrapper\n"
    )


def mutant_witness_roots():
    value = "transition_study036.serde_json.value.Value"
    namespace = "Correspondence036.NativeAccessorSourceCanary"
    return [
        dict(
            id="accessor_source.mutant_null_is_some",
            declaration=namespace + ".mutant_null_is_some",
            expected_type=f'{value}.impl.as_str {value}.Null = Aeneas.Std.Result.ok (some (Aeneas.Std.toStr ""))',
        ),
        dict(
            id="accessor_source.mutant_null_not_none",
            declaration=namespace + ".mutant_null_not_none",
            expected_type=f"{value}.impl.as_str {value}.Null ≠ Aeneas.Std.Result.ok none",
        ),
    ]


def negative_project_files(generated, borrow, wrapper, runtime, bindings, witness):
    from native_json_borrow_probe_v2 import project_files

    if (
        type(witness) is not bytes
        or len(witness) > 4 * 1024**2
        or re.search(rb"^\s*(axiom|sorry)\b", witness, re.M)
    ):
        raise ValueError("NativeAccessorCanaryWitnessSource")
    files = project_files(
        generated, borrow, wrapper, runtime, bindings, include_wrapper=False
    )
    del files["ProofRoot"]
    files["NativeAccessorMutantWitness"] = witness
    files["ProofRoot"] = (
        b"module\npublic import NativeAccessorMutantWitness\n@[expose] public section\n"
    )
    return files


def validate_null_rejection(row, stdout, stderr):
    """A particular elaboration failure; independent witness is still required."""
    if (
        not isinstance(row, dict)
        or type(row.get("exit_code")) is not int
        or row["exit_code"] != 1
        or row.get("timed_out") is not False
        or not isinstance(stdout, str)
        or len(stdout) > 1024**2
        or not isinstance(stderr, str)
        or stderr.strip()
        or "transition_study036.serde_json.value.Value.Null" not in stdout
        or "is not definitionally equal to the right-hand side" not in stdout
        or "ok none" not in stdout
    ):
        raise ValueError("NativeAccessorCanaryNotSemanticRejection")
    headers = list(re.finditer(
        r"^([^\n]*FixedNull\.lean):(\d+):(\d+): error: ([^\n]+)", stdout, re.M
    ))
    count = stdout.count(": error:")
    tactic_failure = (
        count == len(headers) == 1
        and headers[0].group(4) == "Tactic `rfl` failed: The left-hand side"
    )
    direct_term_failure = (
        count == len(headers) == 2
        and headers[0].group(1) == headers[1].group(1)
        and headers[0].group(2) == "7"
        and headers[1].group(2) == "8"
        and headers[0].group(4) == "Not a definitional equality: the left-hand side"
        and headers[1].group(4) == "Type mismatch"
        and "\n  rfl\nhas type\n" in stdout
        and "but is expected to have type\n" in stdout
    )
    if not (tactic_failure or direct_term_failure):
        raise ValueError("NativeAccessorCanaryNotSemanticRejection")


def generated_phase_bytes(rows, phase):
    phase = guard_owned_path(phase)
    expected_names = {"Types.lean", "Funs.lean", "TypesExternal_Template.lean", "FunsExternal_Template.lean"}
    if (
        not isinstance(rows, list)
        or len(rows) != 4
        or any(not isinstance(row, dict) or set(row) != {"path", "bytes", "sha256"} for row in rows)
        or {Path(row["path"]).name for row in rows} != expected_names
    ):
        raise ValueError("NativeAccessorCanaryPhaseArtifactInventory")
    generated = {}
    for row in rows:
        path = guard_owned_path(row["path"])
        if path != phase / "generated" / path.name:
            raise ValueError("NativeAccessorCanaryPhaseArtifactPath")
        _unlinked_parents(path)
        info = os.lstat(path)
        if (
            not stat.S_ISREG(info.st_mode)
            or type(row["bytes"]) is not int
            or not 0 <= row["bytes"] <= 64 * 1024**2
            or info.st_size != row["bytes"]
        ):
            raise ValueError("NativeAccessorCanaryPhaseArtifactBytes")
        with path.open("rb") as stream:
            raw = stream.read(row["bytes"] + 1)
        if len(raw) != row["bytes"] or hashlib.sha256(raw).hexdigest() != row["sha256"]:
            raise ValueError("NativeAccessorCanaryPhaseArtifactBytes")
        generated[path.name] = raw
    return generated


def wrong_owner_control(original, actual, **locations):
    # Establish the real graph first. An invalid positive graph must never
    # count as a successful negative control.
    validate_owner_metadata(original, actual, **locations)
    wrong = str(Path(locations["new_owner"]).parent / "incorrect-owner" / "serde_json-1.0.151")
    if wrong in {locations["old_owner"], locations["new_owner"]}:
        raise ValueError("NativeAccessorCanaryWrongOwnerControlIdentity")
    try:
        validate_owner_metadata(original, actual, **{**locations, "new_owner": wrong})
    except ValueError as error:
        if str(error) != "NativeAccessorCanaryJsonOwner":
            raise ValueError("NativeAccessorCanaryWrongOwnerControlCause") from error
        return {
            "control": "wrong-owner", "actual_rejection": str(error),
            "actual_owner": locations["new_owner"], "incorrect_claimed_owner": wrong,
        }
    raise ValueError("NativeAccessorCanaryWrongOwnerAccepted")


def retained_negative_context(refs, config):
    if (
        not isinstance(config, dict)
        or set(config) != {"format", "closed_execution_checkpoint_ref", "scope", "native_proof", "feature_complete"}
        or config["format"] != "core036.native-accessor-recheck.v2"
        or config["scope"] != "fresh_proof_over_closed_source_extraction"
        or config["native_proof"] != "unestablished"
        or config["feature_complete"] is not False
    ):
        raise ValueError("NativeAccessorRecheckScope")
    reference = config["closed_execution_checkpoint_ref"]
    guard_reference(reference)
    cp_path = refs.verify(reference)
    if cp_path != refs.roots["future_evidence"] / "attempts/a0497/checkpoint.json":
        raise ValueError("NativeAccessorRecheckExecution")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(reference)
    receipt = read(cp_path.parent / "child/receipt.json", limit=4 * 1024**2)
    error_path = cp_path.parent / "child/stderr.txt"
    error = error_path.read_text()
    if (
        cp.get("stage_outcome") != "failed"
        or cp.get("source_validation_error") is not None
        or receipt.get("source_subject_ref") != cp["source_subject_ref"]
        or receipt.get("exit_code") != 1
        or receipt.get("stop_reason") is not None
        or receipt.get("tree_empty") is not True
        or receipt.get("group_empty") is not True
        or receipt.get("final_storage_inventory_error") is not None
        or digest(error_path) != receipt["stderr_sha256"]
        or not error.rstrip().endswith("ValueError: NativeAccessorCanaryNotSemanticRejection")
    ):
        raise ValueError("NativeAccessorRecheckClosedFailure")
    subject = refs.read(cp["source_subject_ref"])
    selected = [row["snapshot_ref"] for row in subject["files"]
                if row["logical_ref"]["root_id"] == "repository"
                and row["logical_ref"]["path"] == "experiments/transition-study036/ground-lean-probe-inputs-v2.json"]
    if len(selected) != 1:
        raise ValueError("NativeAccessorRecheckFrozenSelection")
    selection = refs.read(selected[0])
    if set(selection) != {"format", "native_accessor_canary_ref"}:
        raise ValueError("NativeAccessorRecheckFrozenSelection")
    negative_reference = selection["native_accessor_canary_ref"]
    negative_selection = refs.read(negative_reference)
    positive = verified_positive_context(refs, negative_selection)
    private = refs.roots["private"]
    previous = private / "ground-lean-probe/a0497"
    phase = private / "disposable/native-accessor-canary-a0492/mutant-a0497"
    proof = read(previous / "declared-proof/result.json")
    from check_proofs import validate_theorem_audit_v2

    if (
        proof.get("status") != "proved_for_declared_subject"
        or proof.get("expected_roots") != mutant_witness_roots()
        or proof.get("kernel_scope") != "selected_expected_root_transitive_dependencies"
        or not proof.get("commands")
        or any(row["exit_code"] != 0 for row in proof["commands"])
        or len([row for row in proof["commands"] if row["label"] == "fresh-kernel"]) != 1
    ):
        raise ValueError("NativeAccessorRecheckPreviousWitness")
    validate_theorem_audit_v2(proof["audit"], mutant_witness_roots())
    for row in proof["commands"]:
        if re.fullmatch(r"[A-Za-z0-9_-]+", row["label"]) is None:
            raise ValueError("NativeAccessorRecheckPreviousProofCommand")
        folder = previous / "declared-proof" / row["label"]
        if (
            digest(folder / "stdout.txt") != row["stdout_sha256"]
            or digest(folder / "stderr.txt") != row["stderr_sha256"]
        ):
            raise ValueError("NativeAccessorRecheckPreviousProofLog")
    export = previous / "declared-proof/export-roots/stdout.txt"
    from kernel_export_v2 import validate_export

    if digest(export) != proof["export_sha256"]:
        raise ValueError("NativeAccessorRecheckPreviousExport")
    validate_export(export.read_bytes(), mutant_witness_roots())
    expected_modules = {"NativeStringBorrow", "RuntimeNames", "CanonicalRowNames.TypesExternal", "CanonicalRowNames.Types", "CanonicalRowNames.FunsExternal", "CanonicalRowNames.Funs", "NativeAccessorMutantWitness", "ProofRoot"}
    if set(proof["source_sha256"]) != expected_modules:
        raise ValueError("NativeAccessorRecheckPreviousModules")
    for name, checksum in proof["source_sha256"].items():
        path = guard_owned_path(previous / "project" / (name.replace(".", "/") + ".lean"))
        _unlinked_parents(path)
        if digest(path) != checksum:
            raise ValueError("NativeAccessorRecheckPreviousSource")
    controls = read(previous / "provenance-rejections.json")["controls"]
    if len(controls) != 2 or [(x["control"], x["actual_rejection"]) for x in controls] != [
        ("wrong-owner", "NativeAccessorCanaryJsonOwner"),
        ("positive-output-replay-as-mutant", "NativeAccessorCanaryPhaseArtifactPath"),
    ]:
        raise ValueError("NativeAccessorRecheckPreviousControls")
    generated_phase_bytes(controls[1]["mutant_generated"], phase)
    commands = {}
    for label in ["extract", "translate"]:
        folder = previous / "commands" / label
        row = read(folder / "result.json")
        if (
            row["exit_code"] != 0 or row["timed_out"] is not False
            or digest(folder / "stdout.txt") != row["stdout_sha256"]
            or digest(folder / "stderr.txt") != row["stderr_sha256"]
        ):
            raise ValueError("NativeAccessorRecheckPreviousCommand")
        commands[label] = row
    from controller_v2 import ref_for

    return {
        "checkpoint_ref": reference, "phase": str(phase),
        "commands": commands, "positive": positive,
        "negative_reference": negative_reference,
        "positive_result_ref": negative_selection["positive_result_ref"],
        "raw_llbc_ref": ref_for(phase / "canonical_row.llbc", refs),
        "proof_result_ref": ref_for(previous / "declared-proof/result.json", refs),
    }


def verified_positive_context(refs, config):
    validate_negative_config(config)
    cp_path = refs.verify(config["positive_checkpoint_ref"])
    cp = refs.read(config["positive_checkpoint_ref"])
    attempt = cp.get("attempt_id", "")
    if (
        re.fullmatch(r"a[0-9]{4,16}", attempt) is None
        or cp_path != refs.roots["future_evidence"] / "attempts" / attempt / "checkpoint.json"
        or cp.get("stage_outcome") != "succeeded"
        or cp.get("source_validation_error") is not None
        or cp.get("feature_complete") is not False
    ):
        raise ValueError("NativeAccessorNegativePositiveCheckpoint")
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    positive_path = refs.verify(config["positive_result_ref"])
    positive = refs.read(config["positive_result_ref"])
    case = refs.roots["private"] / "disposable/native-accessor-canary-a0492"
    if (
        positive_path != refs.roots["private"] / "ground-lean-probe" / attempt / "result.json"
        or positive.get("format") != "core036.native-accessor-relocated-positive.v2"
        or positive.get("source_subject_ref") != cp["source_subject_ref"]
        or positive.get("case") != str(case)
        or positive.get("phase") != str(case / ("positive-" + attempt))
        or positive.get("positive_accessor_proof") != "checked_for_declared_source"
        or positive.get("proof_status") != "proved_for_declared_subject"
        or positive.get("checked_roots") != 21
        or positive.get("native_proof") != "unestablished"
        or positive.get("feature_complete") is not False
    ):
        raise ValueError("NativeAccessorNegativePositiveSubject")
    guard_reference(positive["proof_result_ref"])
    if refs.verify(positive["proof_result_ref"]) != positive_path.parent / "declared-proof/result.json":
        raise ValueError("NativeAccessorNegativePositiveProofPath")
    proof = refs.read(positive["proof_result_ref"])
    from native_json_borrow_probe_v2 import roots
    from check_proofs import validate_theorem_audit_v2

    if (
        proof.get("status") != "proved_for_declared_subject"
        or proof.get("expected_roots") != roots()
        or proof.get("kernel_scope") != "selected_expected_root_transitive_dependencies"
        or proof.get("all_imported_constants_rechecked") is not False
        or not proof.get("commands")
        or any(row.get("exit_code") != 0 for row in proof["commands"])
        or len([row for row in proof["commands"] if row.get("label") == "fresh-kernel"]) != 1
    ):
        raise ValueError("NativeAccessorNegativePositiveProof")
    validate_theorem_audit_v2(proof["audit"], roots())
    generated_phase_bytes(positive.get("generated", []), positive["phase"])
    return positive


def run_canary(refs, reference, declaration, out):
    guard_reference(reference)
    config = refs.read(reference)
    if config.get("format") == "core036.native-accessor-positive.v2":
        return run_positive(refs, reference, declaration, out)
    if config.get("format") == "core036.native-accessor-negative.v2":
        return run_negative(refs, reference, declaration, out)
    if config.get("format") == "core036.native-accessor-recheck.v2":
        retained = retained_negative_context(refs, config)
        result = _run_phase(refs, retained["positive"]["selection_ref"], declaration, out,
            negative={"reference": reference, "positive": retained["positive"],
                      "positive_result_ref": retained["positive_result_ref"]},
            retained=retained)
        retained_negative_context(refs, config)
        refs.verify(reference)
        return result
    return run_prepare(refs, reference, declaration, out)


def run_positive(refs, reference, declaration, out):
    """Fresh owning-path extraction and full positive leaf; no source mutation."""
    return _run_phase(refs, reference, declaration, out)


def run_negative(refs, reference, declaration, out):
    guard_reference(reference)
    config = refs.read(reference)
    positive = verified_positive_context(refs, config)
    result = _run_phase(
        refs, positive["selection_ref"], declaration, out,
        negative={"reference": reference, "positive": positive,
                  "positive_result_ref": config["positive_result_ref"]},
    )
    verified_positive_context(refs, config)
    refs.verify(reference)
    return result


def _run_phase(refs, reference, declaration, out, *, negative=None, retained=None):
    guard_reference(reference)
    config = refs.read(reference)
    validate_positive_config(config)
    from check_proofs import _validate_roots
    from native_json_borrow_probe_v2 import roots

    # Reject malformed independently selected roots before any source mutation
    # or cold compilation, rather than only when entering the Lean checker.
    _validate_roots(roots() if negative is None else mutant_witness_roots())
    private, repository = refs.roots["private"], refs.roots["repository"]
    if out != private / "ground-lean-probe" / declaration["record_id"] or out.exists():
        raise ValueError("NativeAccessorPositiveOutput")
    cp_path = refs.verify(config["preparation_checkpoint_ref"])
    RootRegistry({"attempt": cp_path.parent}).verify_closed("attempt")
    cp = refs.read(config["preparation_checkpoint_ref"])
    setup_path = refs.verify(config["preparation_result_ref"])
    setup = refs.read(config["preparation_result_ref"])
    if (
        cp["attempt_id"] != "a0492"
        or cp["stage_outcome"] != "succeeded"
        or cp.get("source_validation_error") is not None
        or setup_path != private / "ground-lean-probe/a0492/result.json"
        or setup["format"] != "core036.native-accessor-canary-preparation.v2"
        or setup["source_subject_ref"] != cp["source_subject_ref"]
        or setup["setup_complete"] is not True
        or setup["feature_complete"] is not False
    ):
        raise ValueError("NativeAccessorPositivePreparation")
    preparation = refs.read(setup["selection_ref"])
    validate_canary_config(preparation)
    case = private / "disposable/native-accessor-canary-a0492"
    if setup["case"] != str(case):
        raise ValueError("NativeAccessorPositiveCase")
    owner, worker, target = (
        case / "owner/serde_json-1.0.151",
        case / "worker",
        case / ("target-" + declaration["record_id"]),
    )
    inventories = refs.read(setup["source_inventory_ref"])
    owner_expected = inventories["owner"]
    if negative is not None:
        original_path = guard_owned_path(setup_path.parent / "source/owner/src/value/mod.rs")
        _unlinked_parents(original_path)
        original_file = original_path.read_bytes()
        owner_expected = mutated_owner_inventory(inventories["owner"], original_file)
    for name, live in [("owner", owner), ("worker", worker)]:
        snapshot = setup_path.parent / "source" / name
        expected = inventories[name]
        actual = source_tree_inventory(live)
        allowed = [expected, owner_expected] if name == "owner" and negative is not None else [expected]
        if source_tree_inventory(snapshot) != expected or actual not in allowed:
            raise ValueError("NativeAccessorPositiveChangedPreparedSource")
    if (
        digest(worker / "Cargo.toml") != setup["manifest_sha256"]
        or digest(worker / "Cargo.lock") != setup["lock_sha256"]
    ):
        raise ValueError("NativeAccessorPositiveChangedBuildInputs")
    baseline = refs.read(preparation["baseline_result_ref"])
    baseline_dir = private / "native-extraction/a0486"
    borrow = refs.read(preparation["borrow_selection_ref"])
    analysis = refs.read(preparation["analysis_ref"])
    paths = {}
    for row in analysis["patched_binaries"]:
        if digest(guard_owned_path(row["path"])) != row["sha256"]:
            raise ValueError("NativeAccessorPositiveToolChanged")
        paths[row["name"]] = row["path"]
    guard_owned_path(target)
    _unlinked_parents(target)
    target.mkdir(parents=True, exist_ok=False)
    phase_name = ("positive-" if negative is None else "mutant-") + declaration["record_id"]
    phase = case / phase_name
    phase.mkdir(parents=True, exist_ok=False)
    out.mkdir(parents=True, exist_ok=False)
    if negative is not None:
        before = source_tree_inventory(owner)
        method = guard_owned_path(owner / "src/value/mod.rs")
        mutated = mutate_null_accessor(original_file)
        resumed_mutant = before == owner_expected
        if not resumed_mutant:
            temporary_method = guard_owned_path(method.with_name(".core036-null-" + declaration["record_id"] + ".tmp"))
            with temporary_method.open("xb") as output:
                output.write(mutated)
                output.flush()
                os.fsync(output.fileno())
            os.chmod(temporary_method, stat.S_IMODE(os.lstat(method).st_mode))
            os.replace(temporary_method, method)
        if source_tree_inventory(owner) != owner_expected:
            raise ValueError("NativeAccessorCanaryUnexpectedOwnerMutation")
        write_once(out / "original-value-mod.rs", original_file)
        write_once(out / "mutant-value-mod.rs", mutated)
        import difflib

        write_once(out / "owner-mutation.diff", "".join(difflib.unified_diff(
            original_file.decode().splitlines(keepends=True),
            mutated.decode().splitlines(keepends=True),
            fromfile="original/src/value/mod.rs", tofile="mutant/src/value/mod.rs",
        )).encode())
        write_once(out / "owner-mutation.json", {
            "before": before, "after": owner_expected,
            "resumed_exact_mutant": resumed_mutant,
            "original_inventory": inventories["owner"],
            "positive_result_ref": negative["positive_result_ref"],
        })
    write_once(
        out / "initial-owned-target.json",
        {"removed_metadata_files": [], "new_empty_target": str(target)},
    )
    temporary = (
        private
        / "tmp"
        / ("native-accessor-canary-" + declaration["record_id"])
        / ("positive" if negative is None else "mutant")
    )
    guard_owned_path(temporary)
    temporary.mkdir(parents=True, exist_ok=False)
    env = {
        **analysis["environment"],
        **{
            key: value
            for key, value in os.environ.items()
            if key == "CORE036_PROOF_CONTROL_DECLARATION"
        },
        "CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER": analysis["environment"]["CC"],
        "CARGO_TARGET_DIR": str(target),
        "CHARON_CACHE_DIR": str(phase / "charon-cache"),
        "LANG": "C",
        "LC_ALL": "C",
        "TZ": "UTC",
        "CI": "1",
        "TMPDIR": str(temporary),
    }
    env["RUSTFLAGS"] += " -C linker-features=-lld"
    env.pop("RUSTC_WRAPPER", None)
    env.pop("RUSTC_WORKSPACE_WRAPPER", None)
    write_once(out / "environment.json", env)
    commands = []

    def command(label, argv, seconds=180):
        row = run_logged_command(
            out / "commands" / label, argv, cwd=worker, env=env, seconds=seconds
        )
        commands.append({"label": label, **row})
        if row["exit_code"] != 0 or row["timed_out"]:
            raise ValueError("NativeAccessorPositiveCommand:" + label)
        return out / "commands" / label / "stdout.txt"

    metadata_path = command(
        "metadata",
        [
            paths["cargo"],
            "metadata",
            "--locked",
            "--offline",
            "--format-version",
            "1",
            "--features",
            "worker",
        ],
    )
    metadata = read(metadata_path, limit=32 * 1024**2)
    original_metadata = read(
        baseline_dir / "commands/metadata/stdout.txt", limit=32 * 1024**2
    )
    validate_owner_metadata(
        original_metadata,
        metadata,
        old_worker=str(baseline_dir / "worker"),
        new_worker=str(worker),
        old_owner=inventories["original_owner"],
        new_owner=str(owner),
        old_target=original_metadata["target_directory"],
        new_target=str(target),
    )
    provenance_controls = []
    if negative is not None:
        control = wrong_owner_control(
                original_metadata, metadata,
                old_worker=str(baseline_dir / "worker"), new_worker=str(worker),
                old_owner=inventories["original_owner"],
                new_owner=str(owner),
                old_target=original_metadata["target_directory"], new_target=str(target),
        )
        provenance_controls.append({**control, "actual_metadata_sha256": digest(metadata_path)})
    extraction_rows = [row for row in baseline["commands"] if row["label"] == "extract"]
    translation_rows = [
        row for row in baseline["commands"] if row["label"] == "translate"
    ]
    if len(extraction_rows) != 1 or len(translation_rows) != 1:
        raise ValueError("NativeAccessorPositiveReplayCommands")
    llbc = phase / "canonical_row.llbc"
    if retained is None:
        command(
            "extract",
            replay_extract_argv(extraction_rows[0]["argv"], baseline_dir, case, phase_name),
            1800,
        )
    else:
        previous_phase = Path(retained["phase"])
        expected = replay_extract_argv(extraction_rows[0]["argv"], baseline_dir, case, previous_phase.name)
        if retained["commands"]["extract"]["argv"] != expected:
            raise ValueError("NativeAccessorRecheckExtractionArguments")
        previous_argv = list(translation_rows[0]["argv"])
        previous_argv[-1] = str(previous_phase / "canonical_row_names.llbc")
        previous_argv[previous_argv.index("-dest") + 1] = str(previous_phase / "generated")
        if retained["commands"]["translate"]["argv"] != previous_argv:
            raise ValueError("NativeAccessorRecheckTranslationArguments")
        source = refs.verify(retained["raw_llbc_ref"])
        if retained["raw_llbc_ref"]["bytes"] > 128 * 1024**2:
            raise ValueError("NativeAccessorRecheckExtractionSize")
        write_once(llbc, source.read_bytes())
        reuse = {"label": "retained-extract", "executed_in_this_attempt": False,
                 "execution_checkpoint_ref": retained["checkpoint_ref"],
                 "raw_llbc_ref": retained["raw_llbc_ref"],
                 "actual_previous_command": retained["commands"]["extract"]}
        write_once(out / "retained-extraction.json", reuse)
        commands.append(reuse)
    data = read(llbc, limit=128 * 1024**2)
    if data.get("has_errors") is not False:
        raise ValueError("NativeAccessorPositiveExtractionErrors")
    from llbc_inventory_v2 import body_inventory
    from extract import required_source_body_inventory, required_source_type_inventory
    from llbc_names_v2 import (
        normalize_namespace_debug_names,
        write_debug_normalized_llbc,
    )

    translated = data["translated"]
    declarations = [row for row in translated["fun_decls"] if row is not None]
    ids = {row["def_id"] for row in declarations}
    graph = [
        {
            "def_id": row["def_id"],
            "item_meta": row["item_meta"],
            **body_inventory(row.get("body"), function_ids=ids),
        }
        for row in declarations
    ]
    bodies = required_source_body_inventory(graph, ["serde_json::value::_::as_str"])
    if negative is not None:
        positive_dir = private / "ground-lean-probe" / Path(negative["positive"]["phase"]).name.removeprefix("positive-")
        positive_inventory = read(positive_dir / "source-call-inventory.json")
        if (
            len(positive_inventory["required_bodies"]) != 1
            or bodies[0]["body_sha256"] == positive_inventory["required_bodies"][0]["body_sha256"]
        ):
            raise ValueError("NativeAccessorCanaryUnchangedExtractedBody")
    types = required_source_type_inventory(
        translated["type_decls"],
        ["serde_json::number::Number", "serde_json::number::N"],
    )
    root_rows = [
        row
        for row in graph
        if [part.get("Ident", [None])[0] for part in row["item_meta"]["name"]]
        == ["transition_study036", "reference", "state_fact_row"]
    ]
    if (
        len(root_rows) != 1
        or bodies[0]["function_id"] not in root_rows[0]["direct_function_ids"]
    ):
        raise ValueError("NativeAccessorPositiveMissingActualCall")
    write_once(
        out / "source-call-inventory.json",
        {"functions": graph, "required_bodies": bodies, "required_types": types},
    )
    normalized, normalization = normalize_namespace_debug_names(data)
    normalized_path = phase / "canonical_row_names.llbc"
    write_debug_normalized_llbc(
        normalized_path, data, normalized, normalization, max_bytes=128 * 1024**2
    )
    write_once(out / "name-normalization.json", normalization)
    argv = list(translation_rows[0]["argv"])
    if argv[-1] != str(baseline_dir / "canonical_row_names.llbc") or argv[
        argv.index("-dest") + 1
    ] != str(baseline_dir / "generated"):
        raise ValueError("NativeAccessorPositiveTranslationReplay")
    argv[-1] = str(normalized_path)
    argv[argv.index("-dest") + 1] = str(phase / "generated")
    del data, translated, declarations, graph, normalized
    command("translate", argv, 1800)
    names = {
        "Types.lean",
        "Funs.lean",
        "TypesExternal_Template.lean",
        "FunsExternal_Template.lean",
    }
    generated = {}
    generated_rows = []
    for name in sorted(names):
        path = guard_owned_path(phase / "generated" / name)
        raw = path.read_bytes()
        if len(raw) > 64 * 1024**2:
            raise ValueError("NativeAccessorPositiveGeneratedBound")
        generated[name] = raw
        generated_rows.append(
            {
                "path": str(path),
                "bytes": len(raw),
                "sha256": hashlib.sha256(raw).hexdigest(),
            }
        )
    if generated_phase_bytes(generated_rows, phase) != generated:
        raise ValueError("NativeAccessorCanaryGeneratedChangedBeforeProof")
    if negative is not None:
        try:
            generated_phase_bytes(negative["positive"]["generated"], phase)
        except ValueError as error:
            if str(error) != "NativeAccessorCanaryPhaseArtifactPath":
                raise ValueError("NativeAccessorCanaryReplayControlCause") from error
            provenance_controls.append({
                "control": "positive-output-replay-as-mutant", "actual_rejection": str(error),
                "actual_mutant_phase": str(phase), "positive_phase": negative["positive"]["phase"],
                "positive_generated": negative["positive"]["generated"],
                "mutant_generated": generated_rows,
            })
        else:
            raise ValueError("NativeAccessorCanaryPositiveReplayAccepted")
        write_once(out / "provenance-rejections.json", {"controls": provenance_controls})
    from native_json_borrow_probe_v2 import project_files, roots
    from check_proofs import check_declared_proof_v2

    source_dir = (
        repository
        / "experiments/transition-study036/proofs/Correspondence036/Dependencies"
    )
    sources = []
    for key, name in [
        ("borrow_source_ref", "NativeStringBorrow.lean"),
        ("wrapper_source_ref", "NativeJsonBorrowWrapper.lean"),
        ("runtime_source_ref", "RuntimeNames.lean"),
    ]:
        guard_reference(borrow[key])
        path = refs.verify(borrow[key])
        if path != source_dir / name:
            raise ValueError("NativeAccessorPositiveProofSource")
        sources.append(path.read_bytes())
    if negative is None:
        files = project_files(generated, *sources, borrow["bindings"])
        selected_roots = roots()
    else:
        witness_path = guard_owned_path(source_dir / "NativeAccessorMutantWitness.lean")
        _unlinked_parents(witness_path)
        files = negative_project_files(
            generated, *sources, borrow["bindings"], witness_path.read_bytes()
        )
        selected_roots = mutant_witness_roots()
    tools = refs.read(borrow["tools_ref"])
    lean, cache = (refs.read(tools[key]) for key in ("lean_ref", "cache_ref"))
    if any(lean["statuses"].values()) or cache["missing_requested_roots"]:
        raise ValueError("NativeAccessorPositiveLeanTools")
    sdk, backend = Path(lean["sdk"]), Path(cache["backend"])
    if backend != private / "analysis-backend-build/a0058/lean":
        raise ValueError("NativeAccessorPositiveBackend")
    for row in lean["patched_binaries"]:
        if digest(guard_owned_path(row["path"])) != row["sha256"]:
            raise ValueError("NativeAccessorPositiveLeanToolChanged")
    sdk_inventory = read(refs.verify(tools["sdk_inventory_ref"]), limit=32 * 1024**2)
    for row in sdk_inventory["entries"]:
        relative = guard_owned_path(row["path"])
        if relative.is_absolute() or ".." in relative.parts:
            raise ValueError("NativeAccessorPositiveSDKPath")
        path = guard_owned_path(sdk / relative)
        if not path.resolve().is_relative_to(sdk):
            raise ValueError("NativeAccessorPositiveSDKPath")
        if row["kind"] in {"file", "hardlink"} and digest(path) != row["sha256"]:
            raise ValueError("NativeAccessorPositiveSDKChanged")
        if row["kind"] == "symlink" and os.readlink(path) != row["target"]:
            raise ValueError("NativeAccessorPositiveSDKLink")
    project, compiled = out / "project", out / "compiled"
    project.mkdir()
    compiled.mkdir()
    for name, raw in files.items():
        destination = project / (name.replace(".", "/") + ".lean")
        destination.parent.mkdir(parents=True, exist_ok=True)
        write_once(destination, raw)
    proof_env = {
        **lean["environment"],
        "PATH": analysis["environment"]["PATH"],
        "LEAN_PATH": str(compiled),
        "LEAN_NUM_THREADS": "1",
        "LEAN_STACK_SIZE_KB": "131072",
        "MALLOC_ARENA_MAX": "2",
        "CI": "1",
        "TMPDIR": str(temporary),
    }
    checked = check_declared_proof_v2(
        project=project,
        compiled=compiled,
        sdk=sdk,
        backend=backend,
        env=proof_env,
        modules=list(files),
        roots=selected_roots,
        expected_files={
            name: digest(project / (name.replace(".", "/") + ".lean")) for name in files
        },
        out=out / "declared-proof",
        kernel_mode="selected-root-export-v1",
    )
    if negative is not None:
        # The witness project imports no positive wrapper theorem. Once its
        # exact result and inequality have independently passed the kernel,
        # attempt both the unchanged wrapper and its isolated Null assertion.
        rejections = []
        for label, name, raw in [
            ("reject-original-wrapper", "NativeJsonBorrowWrapper", sources[1]),
            ("reject-fixed-null", "FixedNull", isolated_null_source(sources[1])),
        ]:
            path = project / (name + ".lean")
            write_once(path, raw)
            row = run_logged_command(
                out / "commands" / label,
                [str(sdk / "bin/lake"), "--no-build", "env",
                 str(sdk / "bin/lean"), "-j1", "-s131072", "-M4096",
                 "-R", str(project), "-o", str(compiled / (name + ".olean")), str(path)],
                cwd=backend, env=proof_env, seconds=300,
            )
            stdout = (out / "commands" / label / "stdout.txt").read_text()
            stderr = (out / "commands" / label / "stderr.txt").read_text()
            if label == "reject-fixed-null":
                validate_null_rejection(row, stdout, stderr)
            elif row["exit_code"] != 1 or row["timed_out"] or "Value.Null" not in stdout:
                raise ValueError("NativeAccessorCanaryOriginalWrapperNotRejected")
            if digest(path) != hashlib.sha256(raw).hexdigest():
                raise ValueError("NativeAccessorCanaryRejectionSourceChanged")
            rejections.append({"label": label, **row})
        write_once(out / "semantic-rejections.json", {
            "independent_witness_status": checked["status"],
            "fixed_null_source_sha256": hashlib.sha256(isolated_null_source(sources[1])).hexdigest(),
            "commands": rejections,
            "native_proof": "unestablished", "feature_complete": False,
        })
    for name, live in [("owner", owner), ("worker", worker)]:
        expected = owner_expected if name == "owner" else inventories[name]
        if source_tree_inventory(live) != expected:
            raise ValueError("NativeAccessorPositiveSourceChangedAfter")
    if source_tree_inventory(inventories["original_owner"]) != inventories["owner"]:
        raise ValueError("NativeAccessorPositiveRegistryChanged")
    for row in generated_rows:
        if digest(guard_owned_path(row["path"])) != row["sha256"]:
            raise ValueError("NativeAccessorPositiveGeneratedChangedAfter")
    for key in ("preparation_checkpoint_ref", "preparation_result_ref"):
        refs.verify(config[key])
    from controller_v2 import ref_for

    write_once(
        out / "result.json",
        {
            "format": "core036.native-accessor-relocated-positive.v2" if negative is None else "core036.native-accessor-owning-source-negative.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "selection_ref": reference if negative is None else negative["reference"],
            "preparation_result_ref": config["preparation_result_ref"],
            "case": str(case),
            "phase": str(phase),
            "commands": commands,
            "generated": generated_rows,
            "checked_roots": len(selected_roots),
            "proof_status": checked["status"],
            "proof_result_ref": ref_for(out / "declared-proof/result.json", refs),
            "positive_accessor_proof": "checked_for_declared_source" if negative is None else "previously_checked_for_original_source",
            "owning_source_negative": "pending" if negative is None else "checked_actual_semantic_rejection",
            "independent_mutant_witness": "pending" if negative is None else "proved_for_declared_subject",
            "native_proof": "unestablished",
            "feature_complete": False,
            "product_adoption": "unactivated",
            **({"retained_execution_checkpoint_ref": retained["checkpoint_ref"],
                "native_extraction_executed_in_this_attempt": False} if retained is not None else {}),
        },
    )
    return 0


def validate_canary_config(config):
    refs = {
        "baseline_checkpoint_ref",
        "baseline_result_ref",
        "positive_checkpoint_ref",
        "positive_result_ref",
        "borrow_selection_ref",
        "analysis_ref",
    }
    if (
        not isinstance(config, dict)
        or set(config)
        != refs
        | {
            "format",
            "phase",
            "scope",
            "native_proof",
            "feature_complete",
        }
        or config["format"] != "core036.native-accessor-source-canary.v2"
        or config["phase"] != "prepare"
        or config["scope"] != "owning_source_negative_control"
        or config["native_proof"] != "unestablished"
        or config["feature_complete"] is not False
    ):
        raise ValueError("NativeAccessorCanaryPreparationScope")
    for key in refs:
        guard_reference(config[key])
        validate_ref_v2(config[key])


def run_prepare(refs, reference, declaration, out):
    guard_reference(reference)
    config = refs.read(reference)
    validate_canary_config(config)
    private = refs.roots["private"]
    name = declaration["record_id"]
    if (
        re.fullmatch(r"a[0-9]{4,16}", name) is None
        or out != private / "ground-lean-probe" / name
        or out.exists()
    ):
        raise ValueError("NativeAccessorCanaryOutput")
    from environment import check_prepared_analysis_v2
    from controller_v2 import ref_for

    repository = refs.roots["repository"]
    experiment = repository / "experiments/transition-study036"
    check_prepared_analysis_v2(experiment / "analysis-environment-binding-v2.json")
    baseline_path = refs.verify(config["baseline_checkpoint_ref"])
    positive_path = refs.verify(config["positive_checkpoint_ref"])
    for path in (baseline_path, positive_path):
        RootRegistry({"attempt": path.parent}).verify_closed("attempt")
    baseline_cp = refs.read(config["baseline_checkpoint_ref"])
    positive_cp = refs.read(config["positive_checkpoint_ref"])
    baseline = refs.read(config["baseline_result_ref"])
    positive = refs.read(config["positive_result_ref"])
    if (
        baseline_cp["attempt_id"] != "a0486"
        or positive_cp["attempt_id"] != "a0491"
        or any(
            cp["stage_outcome"] != "succeeded"
            or cp.get("source_validation_error") is not None
            for cp in (baseline_cp, positive_cp)
        )
        or refs.verify(config["baseline_result_ref"])
        != private / "native-extraction/a0486/result.json"
        or refs.verify(config["positive_result_ref"])
        != private / "ground-lean-probe/a0491/result.json"
        or baseline["source_subject_ref"] != baseline_cp["source_subject_ref"]
        or positive["source_subject_ref"] != positive_cp["source_subject_ref"]
        or baseline["extraction_exit_code"] != 0
        or baseline["translation_exit_code"] != 0
        or positive["checked_roots"] != 21
        or positive["native_proof"] != "unestablished"
        or positive["feature_complete"] is not False
    ):
        raise ValueError("NativeAccessorCanaryBaseline")
    borrow_selection = refs.read(config["borrow_selection_ref"])
    if borrow_selection.get("extraction_result_ref") != config["baseline_result_ref"]:
        raise ValueError("NativeAccessorCanaryBorrowLineage")
    source_owner = (
        private
        / "cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.151"
    )
    original = private / "native-extraction/a0486"
    original_worker = original / "worker"
    owner_before = source_tree_inventory(source_owner)
    worker_before = source_tree_inventory(original_worker)
    if sum(row["bytes"] for row in owner_before + worker_before) > 64 * 1024**2:
        raise ValueError("NativeAccessorCanaryCopyBudget")
    analysis_path = refs.verify(config["analysis_ref"])
    if analysis_path != private / "analysis-toolchain/a0040/result.json":
        raise ValueError("NativeAccessorCanaryAnalysis")
    analysis = refs.read(config["analysis_ref"])
    paths = {}
    for row in analysis["patched_binaries"]:
        path = guard_owned_path(row["path"])
        if digest(path) != row["sha256"]:
            raise ValueError("NativeAccessorCanaryToolChanged")
        paths[row["name"]] = row["path"]
    if not {"cargo", "rustc", "charon", "aeneas"} <= paths.keys():
        raise ValueError("NativeAccessorCanaryTools")
    case = private / "disposable" / ("native-accessor-canary-" + name)
    guard_owned_path(case)
    case.mkdir(parents=True, exist_ok=False)
    out.mkdir(parents=True, exist_ok=False)
    owner, worker, target = (
        case / "owner/serde_json-1.0.151",
        case / "worker",
        case / "target",
    )
    copy_source_tree(source_owner, owner)
    copy_source_tree(original_worker, worker)
    manifest = guard_owned_path(worker / "Cargo.toml")
    old_manifest = manifest.read_bytes()
    original_toml = tomllib.loads(old_manifest.decode())
    expected_toml = copy.deepcopy(original_toml)
    patches = expected_toml.setdefault("patch", {}).setdefault("crates-io", {})
    if "serde_json" in patches:
        raise ValueError("NativeAccessorCanaryExistingOwnerPatch")
    patches["serde_json"] = {"path": str(owner)}
    patched_manifest = (
        old_manifest
        + (
            "\n[patch.crates-io.serde_json]\npath = " + json.dumps(str(owner)) + "\n"
        ).encode()
    )
    if tomllib.loads(patched_manifest.decode()) != expected_toml:
        raise ValueError("NativeAccessorCanaryManifestDelta")
    manifest.write_bytes(patched_manifest)
    old_lock = tomllib.loads((original_worker / "Cargo.lock").read_text())
    temporary = private / "tmp" / ("native-accessor-canary-" + name) / "prepare"
    guard_owned_path(temporary)
    temporary.mkdir(parents=True, exist_ok=False)
    env = {
        **analysis["environment"],
        **{
            key: value
            for key, value in os.environ.items()
            if key == "CORE036_PROOF_CONTROL_DECLARATION"
        },
        "CARGO_TARGET_X86_64_UNKNOWN_LINUX_GNU_LINKER": analysis["environment"]["CC"],
        "CARGO_TARGET_DIR": str(target),
        "CHARON_CACHE_DIR": str(case / "prepare-charon-cache"),
        "LANG": "C",
        "LC_ALL": "C",
        "TZ": "UTC",
        "CI": "1",
        "TMPDIR": str(temporary),
    }
    env["RUSTFLAGS"] += " -C linker-features=-lld"
    env.pop("RUSTC_WRAPPER", None)
    env.pop("RUSTC_WORKSPACE_WRAPPER", None)
    write_once(out / "environment.json", env)
    commands = []

    def command(label, argv):
        row = run_logged_command(
            out / "commands" / label,
            argv,
            cwd=worker,
            env=env,
            seconds=180,
        )
        commands.append({"label": label, **row})
        if row["exit_code"] != 0 or row["timed_out"]:
            raise ValueError("NativeAccessorCanaryPreparationCommand:" + label)
        return out / "commands" / label / "stdout.txt"

    command(
        "metadata-resolve",
        [
            paths["cargo"],
            "metadata",
            "--offline",
            "--format-version",
            "1",
            "--features",
            "worker",
        ],
    )
    metadata_path = command(
        "metadata-locked",
        [
            paths["cargo"],
            "metadata",
            "--locked",
            "--offline",
            "--format-version",
            "1",
            "--features",
            "worker",
        ],
    )
    compiler_path = command("compiler", [paths["rustc"], "-vV"])
    cfg_path = command(
        "cfg",
        [
            paths["rustc"],
            "--print",
            "cfg",
            "--cfg",
            'feature="worker"',
            "-C",
            "target-cpu=x86-64",
        ],
    )
    for label, path in [("compiler", compiler_path), ("cfg", cfg_path)]:
        prior = [row for row in baseline["commands"] if row["label"] == label]
        if len(prior) != 1 or digest(path) != prior[0]["stdout_sha256"]:
            raise ValueError("NativeAccessorCanaryCompilerCfg")
    metadata = read(metadata_path, limit=32 * 1024**2)
    original_metadata_path = original / "commands/metadata/stdout.txt"
    prior = [row for row in baseline["commands"] if row["label"] == "metadata"]
    if len(prior) != 1 or digest(original_metadata_path) != prior[0]["stdout_sha256"]:
        raise ValueError("NativeAccessorCanaryBaselineMetadata")
    original_metadata = read(original_metadata_path, limit=32 * 1024**2)
    validate_owner_metadata(
        original_metadata,
        metadata,
        old_worker=str(original_worker),
        new_worker=str(worker),
        old_owner=str(source_owner),
        new_owner=str(owner),
        old_target=original_metadata["target_directory"],
        new_target=str(target),
    )
    lock = guard_owned_path(worker / "Cargo.lock")
    validate_owner_lock(old_lock, tomllib.loads(lock.read_text()))
    expected_worker = {row["path"]: row for row in worker_before}
    actual_worker = source_tree_inventory(worker)
    if set(expected_worker) != {row["path"] for row in actual_worker}:
        raise ValueError("NativeAccessorCanaryWorkerFileSet")
    for row in actual_worker:
        if (
            row["path"] not in {"Cargo.toml", "Cargo.lock"}
            and row != expected_worker[row["path"]]
        ):
            raise ValueError("NativeAccessorCanaryWorkerSourceChanged")
    if (
        source_tree_inventory(owner) != owner_before
        or source_tree_inventory(source_owner) != owner_before
        or source_tree_inventory(original_worker) != worker_before
    ):
        raise ValueError("NativeAccessorCanarySourceChangedAfter")
    # Freeze independent byte copies before any later owning-source mutation.
    owner_snapshot = out / "source/owner"
    worker_snapshot = out / "source/worker"
    copy_source_tree(owner, owner_snapshot)
    copy_source_tree(worker, worker_snapshot)
    write_once(
        out / "source-inventories.json",
        {
            "owner": owner_before,
            "worker": actual_worker,
            "original_owner": str(source_owner),
            "original_worker": str(original_worker),
            "owned_owner": str(owner),
            "owned_worker": str(worker),
            "owner_snapshot": str(owner_snapshot),
            "worker_snapshot": str(worker_snapshot),
        },
    )
    for key in config.keys() & {
        "baseline_checkpoint_ref",
        "baseline_result_ref",
        "positive_checkpoint_ref",
        "positive_result_ref",
        "borrow_selection_ref",
        "analysis_ref",
    }:
        refs.verify(config[key])
    for row in analysis["patched_binaries"]:
        if digest(guard_owned_path(row["path"])) != row["sha256"]:
            raise ValueError("NativeAccessorCanaryToolChangedAfter")
    write_once(
        out / "result.json",
        {
            "format": "core036.native-accessor-canary-preparation.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "selection_ref": reference,
            "case": str(case),
            "source_inventory_ref": ref_for(out / "source-inventories.json", refs),
            "metadata_ref": ref_for(metadata_path, refs),
            "manifest_sha256": digest(manifest),
            "lock_sha256": digest(lock),
            "commands": commands,
            "setup_complete": True,
            "positive_accessor_proof": "pending",
            "owning_source_negative": "pending",
            "independent_mutant_witness": "pending",
            "native_proof": "unestablished",
            "feature_complete": False,
            "product_adoption": "unactivated",
        },
    )
    return 0


def guard_owned_path(path):
    path = Path(path)
    if any(
        part in {"parameters.bin", "compression_prover_key.bin"} for part in path.parts
    ):
        raise ValueError("ProtectedArtifact")
    return path


def _unlinked_parents(path):
    for parent in (path, *path.parents):
        guard_owned_path(parent)
        try:
            info = os.lstat(parent)
        except FileNotFoundError:
            continue
        if stat.S_ISLNK(info.st_mode):
            raise ValueError("NativeAccessorCanarySourceLink")


def source_tree_inventory(root, *, max_bytes=64 * 1024**2):
    root = guard_owned_path(root)
    if type(max_bytes) is not int or not 0 < max_bytes <= 64 * 1024**2:
        raise ValueError("NativeAccessorCanaryCopyBudget")
    _unlinked_parents(root)
    if not stat.S_ISDIR(os.lstat(root).st_mode):
        raise ValueError("NativeAccessorCanarySourceRoot")
    pending = [(root, 0)]
    files, total, count = [], 0, 0
    while pending:
        folder, depth = pending.pop()
        guard_owned_path(folder)
        if depth > 32:
            raise ValueError("NativeAccessorCanarySourceDepth")
        with os.scandir(folder) as directory:
            children = sorted(directory, key=lambda entry: entry.name)
        for entry in children:
            path = guard_owned_path(folder / entry.name)
            # No DirEntry stat/type operation precedes the lexical guard.
            info = os.lstat(path)
            count += 1
            if count > 20000:
                raise ValueError("NativeAccessorCanarySourceNodes")
            if stat.S_ISDIR(info.st_mode):
                pending.append((path, depth + 1))
            elif stat.S_ISREG(info.st_mode):
                total += info.st_size
                if info.st_size > 16 * 1024**2 or total > max_bytes:
                    raise ValueError("NativeAccessorCanarySourceBytes")
                files.append((path, info.st_size))
            else:
                raise ValueError("NativeAccessorCanarySourceLinkOrType")
    rows = []
    for path, expected_size in sorted(files):
        guard_owned_path(path)
        with path.open("rb") as stream:
            raw = stream.read(expected_size + 1)
        if len(raw) != expected_size:
            raise ValueError("NativeAccessorCanarySourceChanged")
        rows.append(
            dict(
                path=str(path.relative_to(root)),
                bytes=len(raw),
                sha256=hashlib.sha256(raw).hexdigest(),
            )
        )
    if not rows:
        raise ValueError("NativeAccessorCanaryEmptySource")
    return rows


def copy_source_tree(source, destination, *, max_bytes=64 * 1024**2):
    source, destination = guard_owned_path(source), guard_owned_path(destination)
    _unlinked_parents(destination)
    try:
        os.lstat(destination)
    except FileNotFoundError:
        pass
    else:
        raise FileExistsError(destination)
    before = source_tree_inventory(source, max_bytes=max_bytes)
    destination.mkdir(parents=True, exist_ok=False)
    for row in before:
        old = guard_owned_path(source / row["path"])
        target = guard_owned_path(destination / row["path"])
        with old.open("rb") as stream:
            raw = stream.read(row["bytes"] + 1)
        if len(raw) != row["bytes"] or hashlib.sha256(raw).hexdigest() != row["sha256"]:
            raise ValueError("NativeAccessorCanarySourceChanged")
        target.parent.mkdir(parents=True, exist_ok=True)
        with target.open("xb") as output:
            output.write(raw)
        old_info, new_info = os.lstat(old), os.lstat(target)
        if (old_info.st_dev, old_info.st_ino) == (new_info.st_dev, new_info.st_ino):
            raise ValueError("NativeAccessorCanaryAliasedCopy")
    if (
        source_tree_inventory(source, max_bytes=max_bytes) != before
        or source_tree_inventory(destination, max_bytes=max_bytes) != before
    ):
        raise ValueError("NativeAccessorCanaryCopyChanged")
    return before


def validate_owner_metadata(
    original,
    actual,
    *,
    old_worker,
    new_worker,
    old_owner,
    new_owner,
    old_target,
    new_target,
):
    locations = [old_worker, new_worker, old_owner, new_owner, old_target, new_target]
    for raw in locations:
        path = guard_owned_path(raw)
        if not path.is_absolute() or ".." in path.parts:
            raise ValueError("NativeAccessorCanaryGraphPath")
    if any(
        left == right
        for left, right in [
            (old_worker, new_worker),
            (old_owner, new_owner),
            (old_target, new_target),
        ]
    ):
        raise ValueError("NativeAccessorCanaryGraphIsolation")
    documents = [copy.deepcopy(original), copy.deepcopy(actual)]
    replacements = []
    for document, worker, owner, target in zip(
        documents,
        (old_worker, new_worker),
        (old_owner, new_owner),
        (old_target, new_target),
        strict=True,
    ):
        if not isinstance(document, dict):
            raise ValueError("NativeAccessorCanaryMetadata")
        packages = document.get("packages")
        if not isinstance(packages, list) or not all(
            isinstance(p, dict) for p in packages
        ):
            raise ValueError("NativeAccessorCanaryPackages")
        ids = [p.get("id") for p in packages]
        if not all(isinstance(x, str) and x for x in ids) or len(set(ids)) != len(ids):
            raise ValueError("NativeAccessorCanaryPackageIds")
        selected = [p for p in packages if p.get("name") == "serde_json"]
        roots = [
            p
            for p in packages
            if p.get("manifest_path") == str(Path(worker) / "Cargo.toml")
        ]
        if (
            len(selected) != 1
            or len(roots) != 1
            or selected[0].get("version") != "1.0.151"
        ):
            raise ValueError("NativeAccessorCanaryJsonPackage")
        package = selected[0]
        if package.get("manifest_path") != str(Path(owner) / "Cargo.toml"):
            raise ValueError("NativeAccessorCanaryJsonOwner")
        if document is documents[0]:
            if not isinstance(package.get("source"), str) or not package[
                "source"
            ].startswith("registry+"):
                raise ValueError("NativeAccessorCanaryOriginalRegistry")
        elif package.get("source") is not None:
            raise ValueError("NativeAccessorCanaryPathPackage")
        targets = package.get("targets")
        if not isinstance(targets, list) or not all(
            isinstance(t, dict) for t in targets
        ):
            raise ValueError("NativeAccessorCanaryTargets")
        libraries = [t for t in targets if t.get("kind") == ["lib"]]
        if len(libraries) != 1 or libraries[0].get("src_path") != str(
            Path(owner) / "src/lib.rs"
        ):
            raise ValueError("NativeAccessorCanaryLibraryOwner")
        resolve = document.get("resolve")
        if not isinstance(resolve, dict) or not isinstance(resolve.get("nodes"), list):
            raise ValueError("NativeAccessorCanaryResolve")
        nodes = resolve["nodes"]
        if not all(isinstance(node, dict) for node in nodes):
            raise ValueError("NativeAccessorCanaryResolveNode")
        node_ids = [node.get("id") for node in nodes]
        if not all(isinstance(x, str) for x in node_ids) or len(set(node_ids)) != len(
            node_ids
        ):
            raise ValueError("NativeAccessorCanaryResolveIds")
        json_nodes = [node for node in nodes if node["id"] == package["id"]]
        if len(json_nodes) != 1:
            raise ValueError("NativeAccessorCanaryJsonNode")
        features = json_nodes[0].get("features")
        if (
            not isinstance(features, list)
            or not all(isinstance(feature, str) for feature in features)
            or sorted(features) != ["default", "std", "unbounded_depth"]
        ):
            raise ValueError("NativeAccessorCanaryJsonFeatures")
        if (
            document.get("workspace_root") != worker
            or document.get("target_directory") != target
        ):
            raise ValueError("NativeAccessorCanaryWorkspaceTarget")
        replacements.append(
            [
                (package["id"], "SOURCE_BOUND_JSON_PACKAGE"),
                (roots[0]["id"], "SOURCE_BOUND_WORKER_PACKAGE"),
                (worker, "SOURCE_BOUND_WORKER_PATH"),
                (owner, "SOURCE_BOUND_JSON_PATH"),
                (target, "SOURCE_BOUND_TARGET_PATH"),
            ]
        )
        # Only this one source kind changes by the explicit path patch.
        package["source"] = "SOURCE_BOUND_JSON_OWNER"

    def normalize(value, substitutions):
        if isinstance(value, str):
            for old, replacement in sorted(substitutions, key=lambda row: -len(row[0])):
                value = value.replace(old, replacement)
            return value
        if isinstance(value, list):
            return [normalize(item, substitutions) for item in value]
        if isinstance(value, dict):
            return {key: normalize(item, substitutions) for key, item in value.items()}
        return value

    normalized = []
    for document, substitutions in zip(documents, replacements, strict=True):
        document = normalize(document, substitutions)
        document["packages"].sort(key=lambda package: package["id"])
        document["resolve"]["nodes"].sort(key=lambda node: node["id"])
        for node in document["resolve"]["nodes"]:
            for key in ("dependencies", "features"):
                if key in node:
                    node[key].sort()
            if "deps" in node:
                node["deps"].sort(
                    key=lambda dependency: (dependency["name"], dependency["pkg"])
                )
        for key in ("workspace_members", "workspace_default_members"):
            if key in document:
                document[key].sort()
        normalized.append(document)
    if normalized[0] != normalized[1]:
        raise ValueError("NativeAccessorCanaryChangedDependencyGraph")


def validate_owner_lock(original, actual):
    documents = [copy.deepcopy(original), copy.deepcopy(actual)]
    selected = []
    for document in documents:
        if (
            not isinstance(document, dict)
            or document.get("version") != 4
            or type(document.get("version")) is not int
            or not isinstance(document.get("package"), list)
            or not all(isinstance(row, dict) for row in document["package"])
        ):
            raise ValueError("NativeAccessorCanaryLockShape")
        rows = [row for row in document["package"] if row.get("name") == "serde_json"]
        if len(rows) != 1 or rows[0].get("version") != "1.0.151":
            raise ValueError("NativeAccessorCanaryLockJsonIdentity")
        selected.append(rows[0])
    if (
        selected[0].get("source")
        != "registry+https://github.com/rust-lang/crates.io-index"
        or selected[0].get("checksum")
        != "c841b55ecdae098c80dcae9cf767f6f8a0c2cdb3416bbef72181df4d0fe73f14"
        or "source" in selected[1]
        or "checksum" in selected[1]
    ):
        raise ValueError("NativeAccessorCanaryLockOwner")
    del selected[0]["source"]
    del selected[0]["checksum"]
    for document in documents:
        for package in document["package"]:
            dependencies = package.get("dependencies")
            if dependencies is not None:
                if not isinstance(dependencies, list) or not all(
                    isinstance(value, str) for value in dependencies
                ):
                    raise ValueError("NativeAccessorCanaryLockDependencies")
                dependencies.sort()
        document["package"].sort(key=lambda row: json.dumps(row, sort_keys=True))
    if documents[0] != documents[1]:
        raise ValueError("NativeAccessorCanaryChangedLock")


def mutate_null_accessor(source):
    if type(source) is not bytes or source.count(OWNER_METHOD) != 1:
        raise ValueError("NativeAccessorCanaryExactOwner")
    changed = OWNER_METHOD.replace(
        b"            _ => None,",
        b'            Value::Null => Some(""), _ => None,',
        1,
    )
    return source.replace(OWNER_METHOD, changed, 1)


def replay_extract_argv(baseline, original, case, phase):
    original, case = Path(original), Path(case)
    for path in (original, case):
        if any(
            part in {"parameters.bin", "compression_prover_key.bin"}
            for part in path.parts
        ):
            raise ValueError("ProtectedArtifact")
    if (
        not original.is_absolute()
        or original.name != "a0486"
        or original.parent.name != "native-extraction"
        or not case.is_absolute()
        or case.parent.name != "disposable"
        or case.parent.parent != original.parent.parent
        or re.fullmatch(r"native-accessor-canary-a[0-9]{4,16}", case.name) is None
        or not isinstance(phase, str)
        or re.fullmatch(r"(?:positive|mutant)(?:-a[0-9]{4,16})?", phase) is None
        or not isinstance(baseline, list)
        or not all(isinstance(word, str) and word for word in baseline)
        or len(baseline) < 20
        or Path(baseline[0]).name != "charon"
        or baseline[1] != "cargo"
        or baseline.count("--") != 1
    ):
        raise ValueError("NativeAccessorCanaryReplayScope")
    separator = baseline.index("--")
    if baseline[separator + 1 :] != [
        "--locked",
        "--offline",
        "--manifest-path",
        str(original / "worker/Cargo.toml"),
        "--lib",
        "--features",
        "worker",
    ]:
        raise ValueError("NativeAccessorCanaryCargoArguments")
    before = baseline[2:separator]
    if len(before) % 2:
        raise ValueError("NativeAccessorCanaryCharonArguments")
    observed = {}
    included = set()
    for option, value in zip(before[::2], before[1::2], strict=True):
        if option in {"--include", "--opaque"}:
            if value in {"*", "_", "crate", "serde_json"} or len(value) > 1024:
                raise ValueError("NativeAccessorCanaryBroadScope")
            if option == "--include":
                if (
                    value
                    not in {
                        "serde_json::value::_::as_str",
                        "serde_json::number::Number",
                        "serde_json::number::N",
                    }
                    or value in included
                ):
                    raise ValueError("NativeAccessorCanarySourceIncludes")
                included.add(value)
            continue
        if (
            option not in {"--preset", "--sysroot", "--start-from", "--dest-file"}
            or option in observed
        ):
            raise ValueError("NativeAccessorCanaryCharonArguments")
        observed[option] = value
    if (
        observed
        != {
            "--preset": "aeneas",
            "--sysroot": "default",
            "--start-from": "crate::reference::state_fact_row",
            "--dest-file": str(original / "canonical_row.llbc"),
        }
        or "serde_json::value::_::as_str" not in included
    ):
        raise ValueError("NativeAccessorCanaryWrongRoot")
    replay = list(baseline)
    replay[replay.index("--manifest-path") + 1] = str(case / "worker/Cargo.toml")
    replay[replay.index("--dest-file") + 1] = str(case / phase / "canonical_row.llbc")
    return replay
