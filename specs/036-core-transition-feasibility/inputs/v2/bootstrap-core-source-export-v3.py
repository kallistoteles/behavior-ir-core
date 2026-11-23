"""Export the selected inline patch with the real exact exporter and index.

Fixture-only successor: tools and the original tree retain their checked ENV
context. This does not publish a new native readiness or proof assertion.
"""

import json
import os
from pathlib import Path
import shutil
import sys
import time

sys.dont_write_bytecode = True
STARTED = time.monotonic_ns()
R = Path("/data/repos/behavior-ir-core-033")
E = R / "experiments/transition-study036"
F = R / "specs/036-core-transition-feasibility"
P = Path("/var/tmp/behavior-ir-core036-v2/w001")
N = Path("/var/tmp/behavior-ir-core036-evidence-v2/w001")
sys.path.insert(0, str(E))
from artifact_io import digest, write_once  # noqa: E402
from controller_v2 import artifact_context_for, execution_control_paths, ref_for  # noqa: E402
from native_accessor_source_canary_v2 import (  # noqa: E402
    guard_owned_path,
    _unlinked_parents,
    source_tree_inventory,
)
from recorder import V2Runner  # noqa: E402
import sources  # noqa: E402

NAME = "core-source-inline-export-003"
BASE = N / "bootstrap-runs" / NAME
OUTPUT = P / "source-exports" / NAME
DESTINATION = P / "sources" / NAME / "core-reuse"


def guarded(path):
    path = guard_owned_path(path)
    _unlinked_parents(path)
    return path


def child():
    refs, _ = artifact_context_for("w001")
    intent = refs.read(ref_for(guarded(BASE / "intent.json"), refs))
    for reference in intent["bindings"]:
        refs.verify(reference)
    tools = refs.read(intent["tools_ref"])["tools"]
    os.environ.update(
        PATH=":".join([str(Path(tools["git"]["path"]).parent), "/usr/bin", "/bin"]),
        GIT_CONFIG_NOSYSTEM="1",
        GIT_CONFIG_GLOBAL=os.devnull,
        GIT_TEMPLATE_DIR="",
        GIT_OPTIONAL_LOCKS="0",
    )
    OUTPUT.mkdir(parents=True, exist_ok=False)
    write_once(
        OUTPUT / "environment.json",
        dict(
            environment=dict(os.environ),
            inherited_environment=False,
            scope="V2 controlled child environment plus exact pinned Git path and disabled external Git configuration/templates",
        ),
    )
    patches = sources.reviewed_patches()
    if patches != intent["patches"]:
        raise ValueError("CoreSourceExportPatchContextChanged")
    tool_refs = [
        {key: tool[key] for key in ("path", "sha256")} for tool in tools.values()
    ]
    manifest = sources.export_v2(
        R,
        sources.CORE_REV,
        guarded(DESTINATION),
        original=False,
        tools=tool_refs,
        patches=patches,
    )
    if len(manifest["files"]) != 1637 or manifest["original"] is not False:
        raise ValueError("CoreSourceExportRoleOrCount")
    sources.verify_subject_v2(DESTINATION, manifest)
    from quality_timeout_fixture_v2 import replace_helper, TEST_PATH
    previous = guarded(P / "sources/core-source-inline-export-002/core-reuse")
    old_manifest = json.loads(guarded(previous / "subject-inventory-v2.json").read_text())
    old_rows = {row["path"]: row for row in old_manifest["files"]}
    new_rows = {row["path"]: row for row in manifest["files"]}
    changed_paths = sorted(name for name in old_rows.keys() | new_rows.keys()
                           if old_rows.get(name) != new_rows.get(name))
    if (changed_paths != [TEST_PATH] or guarded(DESTINATION / TEST_PATH).read_text()
        != replace_helper(guarded(previous / TEST_PATH).read_text())):
        raise ValueError("CoreSourceExportOnlyExactFixtureChanged")
    # The previously checked collector is now inline in an existing source slot.
    work = guarded(DESTINATION / "crates/behavior-core/src/eval/work.rs").read_text()
    store = guarded(DESTINATION / "crates/behavior-store/src/store.rs").read_text()
    if (
        "pub mod research036_spans {" not in work
        or "research036_begin_spans" not in store
        or "research036_take_spans" not in store
    ):
        raise ValueError("CoreSourceExportMissingActualHooks")
    source_tree_inventory(DESTINATION, max_bytes=64 * 1024**2)
    canary = P / "disposable" / NAME / "source-mutant"
    guarded(canary).parent.mkdir(parents=True, exist_ok=False)
    shutil.copytree(DESTINATION, canary)
    sources.verify_subject_v2(canary, manifest)
    victim = guarded(canary / "crates/behavior-core/src/eval/work.rs")
    original = victim.read_bytes()
    victim.write_bytes(original + b"\n// actual isolated source mutation\n")
    try:
        sources.verify_subject_v2(canary, manifest)
    except ValueError as error:
        rejection = str(error)
    else:
        raise ValueError("CoreSourceExportMutatedBodyAccepted")
    # Leave the mutant and its actual rejection intact; do not mutate the source.
    sources.verify_subject_v2(DESTINATION, manifest)
    for reference in intent["bindings"]:
        refs.verify(reference)
    write_once(
        OUTPUT / "result.json",
        dict(
            format="core036.native-source-export.v2",
            work_id="w001",
            record_id=NAME,
            source_subject_ref=intent["source_subject_ref"],
            original_readiness_ref=intent["original_readiness_ref"],
            source_path=str(DESTINATION),
            manifest_ref=ref_for(DESTINATION / "subject-inventory-v2.json", refs),
            source_export_ref=ref_for(DESTINATION / "source-export.json", refs),
            source_revision=sources.CORE_REV,
            files=1637,
            patches=patches,
            original=False,
            changed_paths=changed_paths,
            production_source_bytes_equal_previous=True,
            actual_mutant_rejection=rejection,
            mutant_path=str(canary),
            scope="Fixture-only candidate revision with exact1637-file export/index, only the approved test helper changed, all production source bytes equal002 and actual isolated-source rejection. Native compilation/proof/quality/measurement remain unestablished.",
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


def parent():
    if len(sys.argv) != 1:
        raise ValueError("CoreSourceExportArguments")
    refs, store = artifact_context_for("w001")
    if store.active_root_id != "future_evidence":
        raise ValueError("CoreSourceExportRegisteredStore")
    cause_path = guarded(N / "bootstrap-runs/quality-timeout-fixture-format-001/result.json")
    cause = refs.read(ref_for(cause_path, refs))
    if (
        type(cause["actual_exit"]) is not int
        or cause["actual_exit"] != 0
        or cause["stop_reason"] is not None
        or not cause["tree_empty"]
        or not cause["group_empty"]
        or not cause["all_source_bytes_equal_after"]
    ):
        raise ValueError("CoreSourceExportNeedsClosedSelectionControl")
    correction_path = guarded(F / "inputs/v2/quality-timeout-fixture-repair-001.json")
    correction = refs.read(ref_for(correction_path, refs))
    if (correction.get("format") != "core036.quality-timeout-fixture-repair.v2"
        or correction.get("expected_changed_paths") != ["crates/behavior-cli/tests/cli_trusted_governance.rs"]
        or correction.get("feature_complete") is not False):
        raise ValueError("CoreSourceExportExactFixtureCorrection")
    for reference in correction["cause_refs"] + correction["source_refs"]:
        refs.verify(reference)
    binding = refs.read(ref_for(guarded(E / "toolchain-v2.json"), refs))
    readiness = refs.read(binding["readiness_ref"], limit=32 * 1024**2)
    profile_path = guarded(
        F / "inputs/v2/profiles/native-preparation-capacity-001.json"
    )
    profile = refs.read(ref_for(profile_path, refs))
    tools_path = guarded(E / "native-environment-inputs-v2.json")
    tools = refs.read(ref_for(tools_path, refs))["tools"]
    if readiness["tools"] != tools or readiness["issues"]:
        raise ValueError("CoreSourceExportToolContext")
    for name in ["python", "git"]:
        if digest(guarded(tools[name]["path"])) != tools[name]["sha256"]:
            raise ValueError("CoreSourceExportChangedTool")
    patches = sources.reviewed_patches()
    source_paths = [
        Path(__file__),
        P / "sources/core-source-inline-export-002/core-reuse/subject-inventory-v2.json",
        P / "sources/core-source-inline-export-002/core-reuse/crates/behavior-cli/tests/cli_trusted_governance.rs",
        correction_path,
        E / "quality_timeout_fixture_v2.py",
        E / "native_preparation_capacity_v2.py",
        E / "continued_capacity_v2.py",
        E / "tests/v2/test_quality_timeout_fixture.py",
        E / "tests/v2/test_native_preparation_capacity.py",
        E / "sources.py",
        E / "gate-inputs.json",
        E / "toolchain-v2.json",
        F / "inputs/additional-gate-inputs-r003.json",
        profile_path,
        tools_path,
        E / "tests/v2/test_core_span_export.py",
        *[Path(patch["path"]) for patch in patches],
    ]
    source_refs = [ref_for(guarded(path), refs) for path in source_paths]
    bindings = source_refs + [
        binding["readiness_ref"],
        binding["receipt_ref"],
        ref_for(cause_path, refs),
        *cause["inputs"],
        *correction["cause_refs"],
        *correction["source_refs"],
    ]
    BASE.mkdir(parents=True, exist_ok=False)
    rows = []
    for index, reference in enumerate(source_refs):
        snapshot = BASE / "sources" / str(index)
        write_once(snapshot, refs.verify(reference).read_bytes())
        rows.append(dict(logical_ref=reference, snapshot_ref=ref_for(snapshot, refs)))
    write_once(
        BASE / "source-index.json",
        dict(format="core036.native-source-export-source.v2", files=rows),
    )
    write_once(
        BASE / "intent.json",
        dict(
            bindings=bindings,
            tools_ref=ref_for(tools_path, refs),
            patches=patches,
            source_subject_ref=ref_for(BASE / "source-index.json", refs),
            original_readiness_ref=binding["readiness_ref"],
        ),
    )
    argv = [tools["python"]["path"], str(Path(__file__)), "--child"]
    write_once(
        BASE / "declaration.json",
        dict(
            format="core036.native-source-export-attempt.v2",
            work_id="w001",
            record_id=NAME,
            stage="NATIVE",
            profile=profile,
            argv=argv,
            wall_seconds=900,
            start_monotonic_ns=STARTED,
            source_subject_ref=ref_for(BASE / "source-index.json", refs),
            scope="Source-only export and actual mutated-source rejection; no new ENV/native/proof/quality/measurement gate.",
            feature_complete=False,
        ),
    )
    runner = V2Runner(
        profile,
        started_ns=STARTED,
        control_paths=[*execution_control_paths(), N],
        artifact_store=store,
    )
    receipt = runner.run(
        argv,
        P / "bootstrap" / NAME,
        wall_seconds=900,
        env=dict(PYTHONDONTWRITEBYTECODE="1", PYTHONPATH=str(E)),
    )
    for reference in bindings:
        refs.verify(reference)
    for row in rows:
        if (
            refs.verify(row["logical_ref"]).read_bytes()
            != refs.verify(row["snapshot_ref"]).read_bytes()
        ):
            raise ValueError("CoreSourceExportSourceChangedAfter")
    write_once(
        BASE / "result.json",
        dict(
            receipt_ref=ref_for(P / "bootstrap" / NAME / "receipt.json", refs),
            actual_exit=receipt["exit_code"],
            stop_reason=receipt["stop_reason"],
            tree_empty=receipt["tree_empty"],
            group_empty=receipt["group_empty"],
            all_source_bytes_equal_after=True,
            scientific_acceptance=False,
            feature_complete=False,
        ),
    )
    print(
        json.dumps(
            {
                key: receipt[key]
                for key in [
                    "exit_code",
                    "stop_reason",
                    "tree_empty",
                    "group_empty",
                    "final_resource_observation",
                    "final_storage_inventory_error",
                ]
            }
        )
    )
    print((P / "bootstrap" / NAME / "stderr.txt").read_text()[-3000:])


if __name__ == "__main__":
    if sys.argv[1:] == ["--child"]:
        raise SystemExit(child())
    parent()
