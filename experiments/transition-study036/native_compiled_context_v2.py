"""Keep a successful executor and its unchanged compiled subject distinct."""

from pathlib import Path
import re

from artifact_registration_v2 import guard_reference
from native_compile_binding_v2 import check_json_unit
from records import MANIFEST


def compiled_worker_layout(private, native, compiled):
    if (
        not Path(private).is_absolute()
        or re.fullmatch(r"a[0-9]{4,16}", compiled.get("attempt_id", "")) is None
        or compiled.get("source_validation_error") is not None
        or compiled.get("source_subject_ref")
        != native.get("compiled_source_subject_ref")
    ):
        raise ValueError("NativeCompiledContextSubject")
    worker = Path(private) / "native-builds" / compiled["attempt_id"] / "worker"
    if native.get("format") == "core036.native-completion.v2":
        if native.get("worker_path") != str(worker):
            raise ValueError("NativeCompiledContextHistoricalPath")
    elif native.get("format") == "core036.native-unit-completion.v3":
        if (
            type(native.get("completed_prior_tests")) is not int
            or native["completed_prior_tests"] != 77
            or type(native.get("original_observations_compared")) is not int
            or native["original_observations_compared"] != 12
            or native.get("native_proof") != "unestablished"
            or native.get("feature_complete") is not False
        ):
            raise ValueError("NativeCompiledContextV3Scope")
    else:
        raise ValueError("NativeCompiledContextVersion")
    return worker


def verified_build_hashes(refs, native, result_path, worker, config):
    if native.get("format") != "core036.native-unit-completion.v3":
        if "native_audit_ref" in config or "native_unit_binding_ref" in config:
            raise ValueError("NativeCompiledContextUnexpectedV3Inputs")
        return native["manifest_sha256"], native["lock_sha256"]
    for key, filename in [
        ("native_audit_ref", "closed481-source-audit-after.json"),
        ("native_unit_binding_ref", "worker-unit-binding.json"),
    ]:
        guard_reference(config.get(key))
        if refs.verify(config[key]) != result_path.parent / filename:
            raise ValueError("NativeCompiledContextV3InputOwnership")
    inventory = refs.read(config["native_audit_ref"], limit=MANIFEST)
    from native_unit_completion_481_v2 import verify_materialized

    verify_materialized(worker, inventory)
    binding = refs.read(config["native_unit_binding_ref"], limit=MANIFEST)
    if (
        binding.get("format") != "core036.native-worker-unit-binding.v2"
        or binding.get("source_subject_ref") != native["source_subject_ref"]
        or binding.get("compiled_source_subject_ref")
        != native["compiled_source_subject_ref"]
        or binding.get("native_proof") != "unestablished"
        or binding.get("feature_complete") is not False
        or [row.get("role") for row in binding.get("worker_units", [])]
        != ["R", "GV", "B"]
    ):
        raise ValueError("NativeCompiledContextV3Binding")
    check_json_unit(binding["json_unit"])
    for row in binding["worker_units"]:
        if row["retained_executable"] != native["built_executables"][row["role"]]:
            raise ValueError("NativeCompiledContextExecutableBinding")
    hashes = {row["path"]: row["sha256"] for row in inventory}
    return hashes["Cargo.toml"], hashes["Cargo.lock"]
