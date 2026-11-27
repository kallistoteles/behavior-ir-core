"""Bounded development build of the actual selected source, never a proof."""

import argparse
import hashlib
import json
import os
import re
import shutil
import stat
import subprocess
import tomllib
from pathlib import Path, PurePosixPath
from artifact_io import digest, read, write_once
from environment import check_prepared_native_v2, check_original_safety_v2
from records import MANIFEST
from native_compile_binding_v2 import (
    TARGET,
    cargo_messages,
    check_json_unit,
    configuration_inventory,
    match_compiler_trace,
    select_bin_artifact,
    select_json_artifact,
)
from native_optimized_binding_v2 import (
    match_optimized_compiler_trace,
    select_optimized_bin_artifact,
    select_optimized_dependency_units,
    selected_profile,
)

E = Path(__file__).resolve().parent
R = E.parents[1]


def verify_retention_prefix_v2(destination, selected, fixture_links):
    """Read-only check before completing a resource-interrupted retention copy."""
    destination = Path(destination)
    if destination.is_symlink() or not destination.is_dir():
        raise ValueError("V2RetentionPrefixRoot")
    directories = set()
    for relative in selected:
        path = PurePosixPath(relative)
        if (
            not relative
            or not path.parts
            or path.is_absolute()
            or ".." in path.parts
            or str(path) != relative
            or relative in {"fixture-symlinks.json", "closed-artifacts.json"}
        ):
            raise ValueError("V2RetentionPrefixSelection")
        directories.update(str(parent) for parent in path.parents if str(parent) != ".")
    present = set()
    for target in destination.rglob("*"):
        relative = str(target.relative_to(destination))
        info = target.lstat()
        if stat.S_ISLNK(info.st_mode):
            raise ValueError("V2RetentionPrefixSymlink")
        if stat.S_ISDIR(info.st_mode):
            if relative not in directories:
                raise ValueError("V2RetentionPrefixUnexpectedDirectory")
            continue
        if not stat.S_ISREG(info.st_mode):
            raise ValueError("V2RetentionPrefixRegularFilesOnly")
        if relative == "fixture-symlinks.json":
            if read(target) != fixture_links:
                raise ValueError("V2RetentionPrefixFixtureLinks")
            continue
        if relative not in selected:
            raise ValueError("V2RetentionPrefixUnexpectedFile")
        source = selected[relative]
        original = source.lstat()
        if (
            not stat.S_ISREG(original.st_mode)
            or (info.st_size, stat.S_IMODE(info.st_mode), info.st_uid, info.st_gid)
            != (
                original.st_size,
                stat.S_IMODE(original.st_mode),
                original.st_uid,
                original.st_gid,
            )
            or target.read_bytes() != source.read_bytes()
        ):
            raise ValueError("V2RetentionPrefixChanged")
        present.add(relative)
    return present


def verify_private_payloads_v2(private, name, reference):
    from artifact_io import RootRegistry

    if re.fullmatch(r"a[0-9]{4,16}", name) is None:
        raise ValueError("V2PrivateRetentionName")
    relative = f"closed-native-builds/{name}/closed-artifacts.json"
    if (
        not isinstance(reference, dict)
        or reference.get("root_id") != "private"
        or reference.get("path") != relative
    ):
        raise ValueError("V2PrivateRetentionReference")
    registry = RootRegistry({"private": private}, readonly=["private"])
    manifest = registry.verify(reference)
    RootRegistry({"payload": manifest.parent}).verify_closed("payload")
    return manifest.parent


def retain_private_payloads_v2(private, name, selected, fixture_links):
    """Copy to an immutable archive outside disposable targets, within cache cap."""
    from artifact_io import RootRegistry

    if re.fullmatch(r"a[0-9]{4,16}", name) is None:
        raise ValueError("V2PrivateRetentionName")
    registry = RootRegistry({"private": private})
    destination = registry.path("private", f"closed-native-builds/{name}", writing=True)
    if sum(path.stat().st_size for path in selected.values()) > 512 * 1024**2:
        raise ValueError("V2BuildRetentionRequiresLargerDeclaredAllocation")
    seal = destination / "closed-artifacts.json"
    if not seal.exists():
        destination.mkdir(parents=True, exist_ok=True, mode=0o700)
        present = verify_retention_prefix_v2(destination, selected, fixture_links)
        if not (destination / "fixture-symlinks.json").exists():
            write_once(destination / "fixture-symlinks.json", fixture_links)
        for relative, source in sorted(selected.items()):
            if relative in present:
                continue
            target = destination / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(source, target)
            if digest(source) != digest(target):
                raise ValueError("V2PrivateRetentionBytes")
        RootRegistry({"payload": destination}).seal("payload")
    reference = registry.reference(
        "private", f"closed-native-builds/{name}/closed-artifacts.json"
    )
    verify_private_payloads_v2(private, name, reference)
    return reference


def retain_previous_build(private, work_id, checkpoint):
    """Retain closed tested binaries and raw proof/log inputs before reuse."""
    from artifact_io import RootRegistry

    name = checkpoint["attempt_id"]
    source = private / "native-builds" / name
    if not (source / "result.json").is_file():
        return
    destination = (
        R
        / "specs/036-core-transition-feasibility/evidence/v2"
        / work_id
        / "development/native-builds"
        / name
    )
    if (destination / "closed-artifacts.json").exists():
        RootRegistry({"retained": destination}).verify_closed("retained")
        if digest(destination / "result.json") != digest(source / "result.json"):
            raise ValueError("V2RetainedBuildSubjectChanged")
        if (destination / "private-retention.json").exists():
            descriptor = read(destination / "private-retention.json")
            payload = verify_private_payloads_v2(
                private, name, descriptor["archive_ref"]
            )
            if digest(payload / "result.json") != digest(source / "result.json"):
                raise ValueError("V2PrivateRetentionSubjectChanged")
        return
    selected = {}
    fixture_links = []
    for path in source.rglob("*"):
        relative = path.relative_to(source)
        if relative.parts[0] == "worker" and not (
            relative.parts[:2] == ("worker", "private")
            or str(relative)
            in {
                "worker/Cargo.toml",
                "worker/Cargo.lock",
                "worker/build-identity.json",
                "worker/oracle/Cargo.toml",
                "worker/oracle/Cargo.lock",
            }
        ):
            continue
        if path.is_symlink():
            # Negative input controls may deliberately create a symlink under
            # their private fixture root. Retain its literal target as data;
            # never follow or recreate a candidate-controlled filesystem link.
            if relative.parts[:2] != ("worker", "private"):
                raise ValueError("V2RetainedBuildSymlink")
            target = os.readlink(path)
            if len(os.fsencode(target)) > 4096:
                raise ValueError("V2RetainedFixtureLinkBound")
            fixture_links.append({"path": str(relative), "literal_target": target})
            continue
        if path.is_file():
            selected[str(relative)] = path
    private_refs = RootRegistry({"private": private}, readonly=["private"])
    for log in source.glob("*/stderr.txt"):
        for raw in re.findall(
            r"\bRunning [^\n]* \((/[^)\n]+)\)", log.read_text(errors="strict")
        ):
            binary = Path(raw)
            if not binary.is_relative_to(private / "disposable"):
                raise ValueError("V2TestBinaryOwnership")
            private_refs.path("private", str(binary.relative_to(private)))
            selected["retained-test-binaries/" + binary.name] = binary
    if sum(path.stat().st_size for path in selected.values()) > 512 * 1024**2:
        raise ValueError("V2BuildRetentionRequiresLargerDeclaredAllocation")
    policy_path = E / "build-inputs/v2/native-retention-location.json"
    if policy_path.exists():
        policy = read(policy_path)
        if (
            set(policy) != {"format", "storage", "reason"}
            or policy["format"] != "core036.native-retention-location.v2"
            or policy["storage"] != "private_immutable"
            or not isinstance(policy["reason"], str)
            or not policy["reason"].strip()
        ):
            raise ValueError("V2PrivateRetentionPolicy")
        archive_ref = retain_private_payloads_v2(private, name, selected, fixture_links)
        payload = verify_private_payloads_v2(private, name, archive_ref)
        if digest(payload / "result.json") != digest(source / "result.json"):
            raise ValueError("V2PrivateRetentionSubjectChanged")
        descriptor = {
            "format": "core036.private-native-retention.v2",
            "archive_ref": archive_ref,
            "lifetime": "immutable until work evidence is exported and verified",
            "storage_accounting": "Registered private root; included in unchanged cache cap; outside disposable cleanup roots",
        }
        expected = {
            "result.json": (source / "result.json").read_bytes(),
            "private-retention.json": (
                json.dumps(
                    descriptor,
                    sort_keys=True,
                    ensure_ascii=False,
                    indent=2,
                    allow_nan=False,
                )
                + "\n"
            ).encode(),
        }
        destination.mkdir(parents=True, exist_ok=True)
        for path in destination.iterdir():
            if (
                path.is_symlink()
                or not path.is_file()
                or path.name not in expected
                or path.read_bytes() != expected[path.name]
            ):
                raise ValueError("V2PrivateRetentionMetadataPrefix")
        for relative, raw in expected.items():
            if not (destination / relative).exists():
                write_once(destination / relative, raw)
        RootRegistry({"retained": destination}).seal("retained")
        return
    present = (
        verify_retention_prefix_v2(destination, selected, fixture_links)
        if destination.exists()
        else set()
    )
    destination.mkdir(parents=True, exist_ok=True)
    if not (destination / "fixture-symlinks.json").exists():
        write_once(destination / "fixture-symlinks.json", fixture_links)
    if present:
        print(
            json.dumps({"retention_prefix_verified_files": len(present), "build": name})
        )
    for relative, path in sorted(selected.items()):
        if relative in present:
            continue
        target = destination / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copy2(path, target)
        if digest(path) != digest(target):
            raise ValueError("V2BuildRetentionBytes")
    RootRegistry({"retained": destination}).seal("retained")


def validate_embedded_inputs(root):
    """Build inventory guard for literal include_str!/include_bytes! inputs.

    This is an early packaging check, not a Rust parser or a semantic proof.
    Cargo remains the authority for compilation and other dependency forms.
    """
    from artifact_io import RootRegistry

    root = Path(root).resolve()
    registry = RootRegistry({"worker": root}, readonly=["worker"])
    names = set()
    for source in (root / "src").rglob("*.rs"):
        for name in re.findall(
            r'include_(?:str|bytes)!\s*\(\s*"([^"\\]+)"\s*\)', source.read_text()
        ):
            path = (source.parent / name).resolve()
            if not path.is_relative_to(root) or not path.is_file():
                raise ValueError("V2MissingEmbeddedInput:" + name)
            relative = str(path.relative_to(root))
            registry.path("worker", relative)
            names.add(relative)
    return [
        {k: ref[k] for k in ("path", "bytes", "sha256")}
        for name in sorted(names)
        for ref in [registry.reference("worker", name)]
    ]


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--declaration", required=True)
    p.add_argument("--out", required=True)
    a = p.parse_args()
    declaration = read(a.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(a.out)
    if out != private / "native-builds" / declaration["record_id"] or out.exists():
        raise ValueError("V2NativeBuildOutput")
    prepared = check_prepared_native_v2(E / "toolchain-v2.json")
    check_original_safety_v2(E / "original-safety-binding-v2.json")
    from controller_v2 import artifact_context_for
    from native_extraction_sources_v2 import require_frozen_worker_sources

    source_registry, _ = artifact_context_for(declaration["work_id"])
    if source_registry.roots["private"] != private:
        raise ValueError("NativeBuildFrozenSourceRoots")
    frozen_subject = source_registry.read(
        declaration["source_subject_ref"], limit=MANIFEST
    )
    require_frozen_worker_sources(
        source_registry,
        frozen_subject,
        E,
        roots=("src", "tests", "expected", "oracle/src"),
    )
    tools = prepared["tools"]
    optimization_path = E / "build-inputs/v2/native-optimization.json"
    optimization = selected_profile(
        read(optimization_path) if optimization_path.is_file() else None
    )
    artifact_directory = "release" if optimization is not None else "debug"
    reuse_binding = E / "build-inputs/v2/native-development-reuse.json"
    if reuse_binding.is_file():
        from artifact_io import RootRegistry

        refs = RootRegistry({"repository": R}, readonly=["repository"])
        reuse = read(reuse_binding)
        if (
            set(reuse) != {"format", "checkpoint_ref"}
            or reuse["format"] != "core036.native-development-reuse.v2"
        ):
            raise ValueError("V2DevelopmentReuseBinding")
        prior_path = refs.verify(reuse["checkpoint_ref"])
        expected = (
            R
            / "specs/036-core-transition-feasibility/evidence/v2"
            / declaration["work_id"]
            / "attempts"
        )
        if prior_path.name != "checkpoint.json" or prior_path.parent.parent != expected:
            raise ValueError("V2DevelopmentReuseOwnership")
        RootRegistry({"attempt": prior_path.parent}).verify_closed("attempt")
        prior_checkpoint = read(prior_path)
        retain_previous_build(private, declaration["work_id"], prior_checkpoint)
    out.mkdir(parents=True)
    worker = out / "worker"
    worker.mkdir()
    for name in ("src", "tests", "expected"):
        shutil.copytree(E / name, worker / name)
    shutil.copytree(
        E / "oracle",
        worker / "oracle",
        ignore=shutil.ignore_patterns("target", "__pycache__"),
    )
    template = (E / "build-inputs/v2/native/Cargo.toml").read_text()
    core = Path(prepared["sources"]["core-reuse"]["path"])
    template = template.replace(
        'path = "private/core/crates/behavior-engine"',
        "path = " + json.dumps(str(core / "crates/behavior-engine")),
    )
    template += '\n[[test]]\nname = "v2_protocol"\npath = "tests/v2_protocol.rs"\n'
    development_targets = []
    codec_only = declaration["slots"] == ["native-codec-controls"]
    full_native = declaration["slots"] == ["us1-native"]
    operation_only = declaration["slots"] == ["us2-operation-controls"]
    us2_only = declaration["slots"] == ["us2-development"] or operation_only
    rust_only = declaration["slots"] == ["us1-native"] or us2_only or codec_only
    worker_only = declaration["slots"] == ["us1-worker"]
    views_only = declaration["slots"] == ["us1-views"]
    metadata_only = declaration["slots"] == ["us1-metadata"]
    transport_only = declaration["slots"] in [
        ["us1-transport"],
        ["us1-metadata"],
        ["us1-worker"],
        ["us1-views"],
    ]
    if declaration["slots"] in [
        ["native-codec-controls"],
        ["us2-operation-controls"],
        ["us2-development"],
        ["us1-development"],
        ["us1-transport"],
        ["us1-metadata"],
        ["us1-native"],
        ["us1-worker"],
        ["us1-views"],
    ]:
        development_targets = [
            "v2_native_exactness",
            "v2_ground_lifecycle",
            "v2_oracle_contract",
            "v2_source_identity",
        ]
        if declaration["slots"] == ["us1-native"]:
            # A shared-source normalization now touches acquisition, output and
            # attribution as well as authority. Check their real fault/quantity
            # controls in this same build/source context before fresh extraction.
            development_targets += [
                "v2_codec",
                "v2_intervals",
                "v2_output",
                "v2_mechanisms",
                "v2_quantities",
                "v2_operation",
                "v2_sessions",
                "v2_recovery",
                "v2_session_worker",
                "v2_session_recovery_worker",
                "v2_session_resources",
                "v2_recovery_input_shape",
                "v2_native_spans",
                "v2_core_spans",
                "v2_core_span_clock_faults",
                "v2_core_operation_spans",
            ]
        if us2_only:
            development_targets = [
                "v2_intervals",
                "v2_output",
                "v2_mechanisms",
                "v2_quantities",
            ]
        if operation_only:
            development_targets = ["v2_mechanisms"]
        if codec_only:
            # Keep the source-normalization controls together. Interval graph
            # refinements require the real differential target, without rerunning
            # unrelated long-lived program-certification fixtures each time.
            development_targets = [
                "v2_codec",
                "v2_intervals",
                "v2_quantities",
                "v2_operation",
            ]
        if transport_only:
            development_targets = [] if views_only else ["v2_native_exactness"]
        for name in development_targets:
            template += (
                "\n[[test]]\nname = "
                + json.dumps(name)
                + "\npath = "
                + json.dumps("tests/" + name + ".rs")
                + "\n"
            )
    write_once(worker / "Cargo.toml", template.encode())
    original_lock = (E / "build-inputs/v2/native/Cargo.lock").read_bytes()
    write_once(worker / "Cargo.lock", original_lock)
    # An explicitly linked continuation can reuse the previous disposable
    # compiler cache. Sources/logs remain separate, and this is a warm build.
    target = private / "disposable" / ("native-" + declaration["record_id"]) / "target"
    cache_reused = False
    if development_targets or views_only:
        # This development allocation explicitly reuses the closed a0007
        # dependency cache. Cargo still fingerprints every actual input; no
        # cold-build or semantic acceptance claim follows from cache presence.
        from artifact_io import RootRegistry

        cache_root = private / "disposable/native-a0007/target"
        RootRegistry({"private": private}).path(
            "private", str(cache_root.relative_to(private))
        )
        if cache_root.is_dir():
            target = cache_root
            cache_reused = True
    if declaration["predecessor"] is not None:
        from artifact_io import RootRegistry
        from controller_v2 import artifact_context_for

        previous, _ = artifact_context_for(declaration["work_id"])
        checkpoint = previous.read(declaration["predecessor"])
        checkpoint_path = previous.verify(declaration["predecessor"])
        RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
        retain_previous_build(private, declaration["work_id"], checkpoint)
        prior = private / "native-builds" / checkpoint["attempt_id"] / "result.json"
        if prior.exists():
            saved = read(prior)
            candidate = Path(saved["target"])
            if candidate.is_relative_to(private / "disposable") and candidate.is_dir():
                target = candidate
                cache_reused = True
        # Without a terminal build receipt, keep the failed target untouched.
        # The successor uses its new target and reruns compilation. This keeps
        # the exact executed protocol binary and partial generated inputs for
        # the red, without overwriting or relabelling them as a complete build.
    configuration_inventory(worker, private / "cargo")
    trace_root = out / "rustc-invocations"
    trace_root.mkdir()
    wrapper = out / "rustc-wrapper"
    write_once(
        wrapper,
        ("#!" + tools["python"]["path"] + "\n").encode()
        + (E / "native_rustc_trace_v2.py").read_bytes(),
    )
    wrapper.chmod(0o700)
    temporary = private / "tmp" / ("native-build-" + declaration["record_id"])
    temporary.mkdir()
    from controller_v2 import artifact_context_for

    input_registry, input_store = artifact_context_for(declaration["work_id"])
    if (
        input_registry.roots["repository"] != R
        or input_registry.roots["private"] != private
    ):
        raise ValueError("V2NativeInputRootOwnership")
    input_paths = {"work": str(input_registry.roots["work"])}
    if input_store.active_root_id == "future_evidence":
        input_paths["future_evidence"] = str(input_registry.roots["future_evidence"])
    env = {
        "CORE036_NATIVE_SUBJECT_REF_JSON": json.dumps(
            declaration["source_subject_ref"]
        ),
        "CORE036_NATIVE_INPUT_ROOTS_JSON": json.dumps(input_paths),
        "CARGO_HOME": str(private / "cargo"),
        "CARGO_NET_OFFLINE": "true",
        "CARGO_INCREMENTAL": "0",
        "CARGO_BUILD_JOBS": "1",
        "RUSTC": tools["rustc"]["path"],
        "RUSTC_WRAPPER": str(wrapper),
        "CORE036_RUSTC_TRACE_ROOT": str(trace_root),
        "TMPDIR": str(temporary),
        "LC_ALL": "C",
        "PYTHONDONTWRITEBYTECODE": "1",
        "CC": tools["cc"]["path"],
        "PATH": os.pathsep.join(
            dict.fromkeys(str(Path(t["path"]).parent) for t in tools.values())
        ),
        "CARGO_TARGET_DIR": str(target),
        "CARGO_PROFILE_DEV_DEBUG": "0",
        "CARGO_PROFILE_TEST_DEBUG": "0",
        "RUSTFLAGS": "-C target-cpu=x86-64 -C linker=" + tools["cc"]["path"],
    }
    if optimization is not None:
        env.update(
            CARGO_PROFILE_RELEASE_OPT_LEVEL="3",
            CARGO_PROFILE_RELEASE_DEBUG="0",
            CARGO_PROFILE_RELEASE_DEBUG_ASSERTIONS="true",
            CARGO_PROFILE_RELEASE_OVERFLOW_CHECKS="true",
        )
        env["RUSTFLAGS"] += (
            " -C opt-level=3 -C debug-assertions=on -C overflow-checks=on"
        )
    write_once(
        out / "build-environment.json",
        {
            "format": "core036.controlled-native-environment.v2",
            "environment": env,
            "implicit_cargo_configurations": [],
            "target": TARGET,
            "wrapper_sha256": digest(wrapper),
            "inherited_environment": False,
            "artifact_store_configuration_refs": list(input_store.configuration_refs),
            "optimization_profile": optimization,
        },
    )

    def command(name, argv, extra_env=None):
        argv = list(argv)
        if argv[0] == tools["cargo"]["path"] and argv[1] in {
            "build",
            "test",
            "check",
            "clippy",
        }:
            argv[2:2] = ["--target", TARGET]
            if optimization is not None:
                argv.insert(2, "--release")
        path = out / name
        path.mkdir()
        invocation_directory = trace_root / name
        invocation_directory.mkdir()
        with (
            (path / "stdout.txt").open("xb") as stdout,
            (path / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                env={
                    **env,
                    "CORE036_RUSTC_TRACE_ROOT": str(invocation_directory),
                    **(extra_env or {}),
                },
                stdout=stdout,
                stderr=stderr,
                check=False,
                cwd=worker,
            )
        write_once(
            path / "result.json",
            {
                "argv": argv,
                "exit_code": result.returncode,
                "stdout_sha256": digest(path / "stdout.txt"),
                "stderr_sha256": digest(path / "stderr.txt"),
            },
        )
        return result.returncode

    cargo = tools["cargo"]["path"]
    metadata = command(
        "metadata",
        [
            cargo,
            "metadata",
            "--locked",
            "--offline",
            "--format-version",
            "1",
            "--manifest-path",
            str(worker / "Cargo.toml"),
            "--features",
            "worker",
            "--filter-platform",
            TARGET,
        ],
    )
    if metadata != 0:
        return 1
    graph = read(out / "metadata/stdout.txt", MANIFEST)
    core_packages = []
    core_features = []
    nodes = {node["id"]: node for node in graph["resolve"]["nodes"]}
    for name in (
        "behavior-engine",
        "behavior-core",
        "behavior-store",
        "behavior-verify",
    ):
        packages = [row for row in graph["packages"] if row["name"] == name]
        if len(packages) != 1 or not Path(packages[0]["manifest_path"]).is_relative_to(
            core
        ):
            raise ValueError("V2CompiledCoreIdentity:" + name)
        package = packages[0]
        core_packages.append(
            {
                "name": name,
                "source_revision": __import__("sources").CORE_REV,
                "manifest_path": package["manifest_path"],
                "source_export_sha256": prepared["sources"]["core-reuse"][
                    "manifest_sha256"
                ],
            }
        )
        core_features.extend(
            name + "/" + feature for feature in nodes[package["id"]]["features"]
        )
    if command("compiler-identity", [tools["rustc"]["path"], "-vV"]) != 0:
        return 1
    compiler = {}
    for line in (out / "compiler-identity/stdout.txt").read_text().splitlines():
        if ": " in line:
            key, value = line.split(": ", 1)
            compiler[key] = value
    if compiler.get("release") != "1.98.1" or compiler.get("host") != TARGET:
        raise ValueError("V2CompilerIdentity")
    write_once(
        worker / "build-identity.json",
        {
            "core_packages": core_packages,
            "compiler_release": compiler["release"],
            # Every compiled target receives the explicit platform. The graph
            # is queried with the same worker feature/platform selection.
            "target": TARGET,
            "features": sorted(core_features),
            "source_subject_sha256": declaration["source_subject_ref"]["sha256"],
            "native_proof_status": "unestablished",
        },
    )
    embedded_inputs = validate_embedded_inputs(worker)
    oracle = worker / "oracle"
    original_core = Path(prepared["sources"]["core-original"]["path"])
    oracle_template = (E / "build-inputs/v2/oracle/Cargo.toml").read_text()
    oracle_template += (
        '\n[patch."https://github.com/kallistoteles/behavior-ir-core"]\nbehavior-engine = { path = '
        + json.dumps(str(original_core / "crates/behavior-engine"))
        + " }\n"
    )
    # The copied oracle is an input template, not a retained built artifact.
    (oracle / "Cargo.toml").write_text(oracle_template)
    oracle_lock = (E / "build-inputs/v2/oracle/Cargo.lock").read_bytes()
    write_once(out / "original-oracle-Cargo.lock", oracle_lock)
    (oracle / "Cargo.lock").write_bytes(oracle_lock)
    oracle_metadata = command(
        "oracle-metadata",
        [
            cargo,
            "metadata",
            "--offline",
            "--format-version",
            "1",
            "--manifest-path",
            str(oracle / "Cargo.toml"),
            "--filter-platform",
            TARGET,
        ],
    )
    if oracle_metadata != 0:
        return 1
    before = tomllib.loads(oracle_lock.decode())["package"]
    after = tomllib.loads((oracle / "Cargo.lock").read_text())["package"]

    def identity(package):
        return (package["name"], package["version"], package.get("checksum"))

    if sorted(map(identity, before)) != sorted(map(identity, after)):
        raise ValueError("V2OracleDependencyVersionsChanged")
    changed = []
    previous = {(x["name"], x["version"]): x for x in before}
    for package in after:
        old = previous[(package["name"], package["version"])]
        if old.get("source") != package.get("source"):
            if (
                not old.get("source", "").startswith(
                    "git+https://github.com/kallistoteles/behavior-ir-core?rev="
                    + __import__("sources").CORE_REV
                )
                or package.get("source") is not None
            ):
                raise ValueError("V2UnexpectedOracleLockSourceChange")
            changed.append(package["name"])
    original_graph = read(out / "oracle-metadata/stdout.txt", MANIFEST)
    for name in (
        "behavior-engine",
        "behavior-core",
        "behavior-store",
        "behavior-verify",
    ):
        packages = [row for row in original_graph["packages"] if row["name"] == name]
        if len(packages) != 1 or not Path(packages[0]["manifest_path"]).is_relative_to(
            original_core
        ):
            raise ValueError("V2OriginalOracleCoreIdentity:" + name)
    write_once(
        out / "oracle-lock-normalization.json",
        {
            "changed_source_packages": changed,
            "all_package_versions_and_checksums_unchanged": True,
            "original_core": str(original_core),
            "original_lock_sha256": hashlib.sha256(oracle_lock).hexdigest(),
            "normalized_lock_sha256": digest(oracle / "Cargo.lock"),
        },
    )
    source_inputs = [
        *sorted((worker / "src").rglob("*.rs")),
        *sorted((worker / "tests").rglob("*.rs")),
        *sorted((worker / "expected").rglob("*")),
        worker / "Cargo.toml",
        worker / "Cargo.lock",
        worker / "build-identity.json",
        *sorted((oracle / "src").rglob("*.rs")),
        oracle / "Cargo.toml",
        oracle / "Cargo.lock",
    ]
    source_before = [
        {
            "path": str(path.relative_to(worker)),
            "bytes": path.stat().st_size,
            "sha256": digest(path),
        }
        for path in source_inputs
        if path.is_file()
    ]
    write_once(out / "materialized-source-before.json", source_before)
    code = command(
        "protocol",
        [
            cargo,
            "test",
            "--locked",
            "--offline",
            "--manifest-path",
            str(worker / "Cargo.toml"),
            "--test",
            "v2_protocol",
            "--",
            "--test-threads=1",
        ],
    )
    scoped_quality = {}
    development_results = {}
    if code == 0 and (
        not development_targets
        or transport_only
        or us2_only
        or codec_only
        or full_native
    ):
        scoped_quality["format"] = command(
            "format",
            [
                cargo,
                "fmt",
                "--manifest-path",
                str(worker / "Cargo.toml"),
                "--all",
                "--check",
            ],
        )
        scoped_quality["clippy"] = command(
            "clippy",
            [
                cargo,
                "clippy",
                "--locked",
                "--offline",
                "--manifest-path",
                str(worker / "Cargo.toml"),
                "--all-targets",
                "--features",
                "worker",
                "--",
                "-D",
                "warnings",
            ],
        )
    if full_native and (
        code != 0 or any(value != 0 for value in scoped_quality.values())
    ):
        return 1
    for name in development_targets:
        filters = (
            [
                "--exact",
                "caller_metadata_matches_direct_core_and_survives_original_reacquisition"
                if metadata_only
                else "worker_entry_controls::fixed_roles_match_oracle_and_each_batch_case_acquires_a_fresh_ground"
                if worker_only
                else "raw_oracle_controls::raw_context_reference_preserves_signed_zero_and_exact_original_arguments",
            ]
            if transport_only
            else [
                "--exact",
                "fixed_workers_accept_session_cases_and_keep_their_ground_lifetimes_separate"
                if name == "v2_session_worker"
                else "fixed_workers_reacquire_before_operation_one_without_importing_authority",
            ]
            if name in {"v2_session_worker", "v2_session_recovery_worker"}
            else ["--skip", "raw_inputs::"]
            if name == "v2_recovery_input_shape"
            else []
        )
        development_results[name] = command(
            name,
            [
                cargo,
                "test",
                "--locked",
                "--offline",
                "--manifest-path",
                str(worker / "Cargo.toml"),
                "--test",
                name,
                "--",
                "--test-threads=1",
                *filters,
            ],
        )
    if codec_only or full_native:
        development_results["codec-selector-refinement"] = command(
            "codec-selector-refinement",
            [
                cargo,
                "test",
                "--locked",
                "--offline",
                "--manifest-path",
                str(worker / "Cargo.toml"),
                "--lib",
                "eligibility::extraction_refinement_tests::",
                "--",
                "--test-threads=1",
            ],
        )
    if codec_only or full_native:
        development_results["operation-work-quantity-controls"] = command(
            "operation-work-quantity-controls",
            [
                cargo,
                "test",
                "--locked",
                "--offline",
                "--manifest-path",
                str(worker / "Cargo.toml"),
                "--lib",
                "operation::work_quantity_controls::",
                "--",
                "--test-threads=1",
            ],
        )
    if views_only:
        development_results["view-refinement"] = command(
            "view-refinement",
            [
                cargo,
                "test",
                "--locked",
                "--offline",
                "--manifest-path",
                str(worker / "Cargo.toml"),
                "--lib",
                "views::extraction_refinement_tests::",
                "--",
                "--test-threads=1",
            ],
        )
    if views_only or full_native:
        development_results["canonical-fold-refinement"] = command(
            "canonical-fold-refinement",
            [
                cargo,
                "test",
                "--locked",
                "--offline",
                "--manifest-path",
                str(worker / "Cargo.toml"),
                "--lib",
                "reference::row_fold_refinement_tests::",
                "--",
                "--test-threads=1",
            ],
        )
    if development_targets and not transport_only and not rust_only:
        for name in ("test_correspondence.py", "test_quality.py"):
            development_results[name] = command(
                name,
                [
                    tools["python"]["path"],
                    "-m",
                    "unittest",
                    "discover",
                    "-s",
                    str(E / "tests/v2"),
                    "-p",
                    name,
                ],
            )
    if us2_only:
        for name in ("test_intervals.py", "test_costs.py"):
            development_results[name] = command(
                name,
                [
                    tools["python"]["path"],
                    "-m",
                    "unittest",
                    "discover",
                    "-s",
                    str(E / "tests/v2"),
                    "-p",
                    name,
                ],
            )
    built_executables = {}
    if (
        (transport_only or us2_only or codec_only or full_native)
        and code == 0
        and all(value == 0 for value in development_results.values())
    ):
        scoped_quality["oracle-build"] = command(
            "oracle-build",
            [
                cargo,
                "build",
                "--locked",
                "--offline",
                "--manifest-path",
                str(oracle / "Cargo.toml"),
                "--bin",
                "transition036-oracle",
                "--message-format=json",
            ],
        )
        if scoped_quality["oracle-build"] == 0:
            emitted = target / TARGET / artifact_directory / "transition036-oracle"
            retained = out / "retained/transition036-oracle"
            retained.parent.mkdir()
            shutil.copy2(emitted, retained)
            if digest(emitted) != digest(retained):
                raise ValueError("V2OracleRetainedBytes")
            built_executables["oracle"] = {
                "path": str(retained),
                "bytes": retained.stat().st_size,
                "sha256": digest(retained),
                "compiled_core": str(original_core),
                "original_lock_sha256": digest(oracle / "Cargo.lock"),
                "source_subject_ref": declaration["source_subject_ref"],
                "native_proof": "unestablished",
            }
            if optimization is not None:
                oracle_messages = cargo_messages(out / "oracle-build/stdout.txt")
                oracle_traces = [
                    read(path)
                    for path in sorted((trace_root / "oracle-build").glob("*.json"))
                ]
                oracle_package = next(
                    row
                    for row in original_graph["packages"]
                    if Path(row["manifest_path"]) == oracle / "Cargo.toml"
                )
                oracle_unit = select_optimized_bin_artifact(
                    oracle_messages,
                    oracle_package["id"],
                    "transition036-oracle",
                    oracle / "src/main.rs",
                    emitted,
                    oracle=True,
                )
                oracle_trace = match_optimized_compiler_trace(
                    oracle_traces,
                    oracle_unit,
                    tools["rustc"]["path"],
                    TARGET,
                    oracle=True,
                )
                dependencies = select_optimized_dependency_units(
                    oracle_messages,
                    [
                        row
                        for row in original_graph["packages"]
                        if row["name"]
                        in {
                            "behavior-engine",
                            "behavior-core",
                            "behavior-store",
                            "behavior-verify",
                            "serde_json",
                        }
                    ],
                    target / TARGET / artifact_directory,
                )
                oracle_json = next(
                    row for row in dependencies if row["target"]["name"] == "serde_json"
                )
                check_json_unit(oracle_json)
                write_once(
                    out / "oracle-unit-binding.json",
                    {
                        "format": "core036.native-optimized-oracle-binding.v2",
                        "source_subject_ref": declaration["source_subject_ref"],
                        "optimization_profile": optimization,
                        "artifact": oracle_unit,
                        "compiler_invocation": oracle_trace,
                        "dependency_units": dependencies,
                        "metadata_sha256": digest(out / "oracle-metadata/stdout.txt"),
                        "cargo_messages_sha256": digest(
                            out / "oracle-build/stdout.txt"
                        ),
                        "environment_sha256": digest(out / "build-environment.json"),
                        "retained_executable": built_executables["oracle"],
                        "native_proof": "unestablished",
                    },
                )
    if "oracle" in built_executables:
        # These controls use real Cargo decisions/artifacts, separately from
        # parser fixtures. They never mutate or relabel the measured subject.
        missing_feature = command(
            "worker-feature-negative",
            [
                cargo,
                "build",
                "--locked",
                "--offline",
                "--manifest-path",
                str(worker / "Cargo.toml"),
                "--bin",
                "transition036-reuse",
            ],
        )
        if (
            missing_feature == 0
            or "requires the features: `worker`"
            not in (out / "worker-feature-negative/stderr.txt").read_text()
        ):
            raise ValueError("V2ActualWorkerFeatureControl")
        mutated = command(
            "json-feature-negative",
            [
                cargo,
                "build",
                "--locked",
                "--offline",
                "--manifest-path",
                str(worker / "Cargo.toml"),
                "--features",
                "worker,serde_json/arbitrary_precision",
                "--bin",
                "transition036-reuse",
                "--message-format=json",
            ],
        )
        if mutated != 0:
            raise ValueError("V2ActualJsonFeatureControlBuild")
        mutated_messages = cargo_messages(out / "json-feature-negative/stdout.txt")
        json_id = next(
            row["id"] for row in graph["packages"] if row["name"] == "serde_json"
        )
        changed_json = select_json_artifact(mutated_messages, json_id, target / TARGET)
        if "arbitrary_precision" not in changed_json.get("features", []):
            raise ValueError("V2ActualJsonFeatureMutation")
        try:
            check_json_unit(changed_json)
        except ValueError as error:
            if str(error) != "NativeCompileJsonRepresentation":
                raise
        else:
            raise ValueError("V2ActualJsonFeatureMutantAccepted")
        write_once(
            out / "actual-feature-controls.json",
            {
                "format": "core036.native-feature-controls.v2",
                "missing_worker_feature_exit": missing_feature,
                "arbitrary_precision_build_exit": mutated,
                "arbitrary_precision_unit": changed_json,
                "rejection": "NativeCompileJsonRepresentation",
                "native_proof": "unestablished",
            },
        )
        scoped_quality["workers-build"] = command(
            "workers-build",
            [
                cargo,
                "build",
                "--locked",
                "--offline",
                "--manifest-path",
                str(worker / "Cargo.toml"),
                "--features",
                "worker",
                "--bins",
                "--message-format=json",
            ],
        )
        if scoped_quality["workers-build"] == 0:
            for role, name in [
                ("R", "transition036-reference"),
                ("GV", "transition036-reuse"),
                ("B", "transition036-buffered"),
            ]:
                emitted = target / TARGET / artifact_directory / name
                retained = out / "retained" / name
                shutil.copy2(emitted, retained)
                if digest(emitted) != digest(retained):
                    raise ValueError("V2WorkerRetainedBytes")
                built_executables[role] = {
                    "path": str(retained),
                    "bytes": retained.stat().st_size,
                    "sha256": digest(retained),
                    "compiled_core": str(core),
                    "source_subject_ref": declaration["source_subject_ref"],
                    "native_proof": "unestablished",
                }
            messages = cargo_messages(out / "workers-build/stdout.txt")
            traces = [
                read(path)
                for path in sorted((trace_root / "workers-build").glob("*.json"))
            ]
            worker_package = next(
                row
                for row in graph["packages"]
                if Path(row["manifest_path"]) == worker / "Cargo.toml"
            )
            json_package = next(
                row for row in graph["packages"] if row["name"] == "serde_json"
            )
            if json_package["version"] != "1.0.151":
                raise ValueError("V2NativeJsonVersion")
            json_unit = select_json_artifact(
                messages, json_package["id"], target / TARGET
            )
            check_json_unit(json_unit)
            units = []
            for role, name, source in [
                ("R", "transition036-reference", "reference.rs"),
                ("GV", "transition036-reuse", "reuse.rs"),
                ("B", "transition036-buffered", "buffered.rs"),
            ]:
                select_unit = (
                    select_optimized_bin_artifact
                    if optimization is not None
                    else select_bin_artifact
                )
                unit = select_unit(
                    messages,
                    worker_package["id"],
                    name,
                    worker / "src/bin" / source,
                    target / TARGET / artifact_directory / name,
                )
                match_trace = (
                    match_optimized_compiler_trace
                    if optimization is not None
                    else match_compiler_trace
                )
                trace = match_trace(traces, unit, tools["rustc"]["path"], TARGET)
                units.append(
                    {
                        "role": role,
                        "artifact": unit,
                        "compiler_invocation": trace,
                        "retained_executable": built_executables[role],
                    }
                )
            write_once(
                out / "worker-unit-binding.json",
                {
                    "format": "core036.native-worker-unit-binding.v2",
                    "source_subject_ref": declaration["source_subject_ref"],
                    "metadata_sha256": digest(out / "metadata/stdout.txt"),
                    "cargo_messages_sha256": digest(out / "workers-build/stdout.txt"),
                    "environment_sha256": digest(out / "build-environment.json"),
                    "json_unit": json_unit,
                    "worker_units": units,
                    "optimization_profile": optimization,
                    "optimized_dependency_units": select_optimized_dependency_units(
                        messages,
                        [
                            row
                            for row in graph["packages"]
                            if row["name"]
                            in {
                                "behavior-engine",
                                "behavior-core",
                                "behavior-store",
                                "behavior-verify",
                                "serde_json",
                            }
                        ],
                        target / TARGET / artifact_directory,
                    )
                    if optimization is not None
                    else None,
                    "native_proof": "unestablished",
                    "feature_complete": False,
                },
            )
            if worker_only or full_native:
                fixtures = [
                    candidate
                    for candidate in (worker / "private").glob("raw-oracle-*")
                    if (candidate / "valid-batch-request.json").is_file()
                ]
                if len(fixtures) != 1 or fixtures[0].is_symlink():
                    raise ValueError("V2ExecutableFixtureSelection")
                fixture = fixtures[0]
                from artifact_io import RootRegistry

                fixture_registry = RootRegistry({**input_paths, "raw": fixture})
                inputs_env = {
                    "CORE036_INPUT_ROOTS_JSON": json.dumps(
                        {**input_paths, "raw": str(fixture)}
                    )
                }
                executable_checks = out / "executable-checks"
                executable_checks.mkdir()
                # Both actual workloads go through the independently built,
                # unpatched original oracle before the three new workers.
                for case in range(2):
                    context = executable_checks / f"oracle-context-{case}.json"
                    write_once(
                        context,
                        {
                            "format": "core036.oracle-context.v2",
                            "workload_ref": fixture_registry.reference(
                                "raw", f"prepared-{case}/workload.json"
                            ),
                        },
                    )
                    original = built_executables["oracle"]["path"]
                    for label, argv in [
                        (
                            f"oracle-prepare-{case}",
                            [
                                original,
                                "prepare",
                                "--input",
                                str(fixture / f"prepared-{case}/workload.json"),
                                "--out",
                                str(executable_checks / f"original-{case}"),
                            ],
                        ),
                        (
                            f"oracle-replay-{case}",
                            [
                                original,
                                "replay",
                                "--prepared",
                                str(executable_checks / f"original-{case}"),
                                "--expected-context",
                                str(context),
                                "--out",
                                str(executable_checks / f"replayed-{case}"),
                            ],
                        ),
                    ]:
                        scoped_quality[label] = command(label, argv, inputs_env)
                        if scoped_quality[label] != 0:
                            raise ValueError("V2OriginalExecutableFailed:" + label)
                compared = 0
                for role in ("R", "GV", "B"):
                    label = role + "-execute"
                    scoped_quality[label] = command(
                        label,
                        [
                            built_executables[role]["path"],
                            "execute",
                            "--input",
                            str(fixture / "valid-batch-request.json"),
                            "--out",
                            str(executable_checks / role),
                        ],
                        inputs_env,
                    )
                    if scoped_quality[label] != 0:
                        raise ValueError("V2WorkerExecutableFailed:" + role)
                    for case in range(2):
                        for operation in range(2):
                            name = f"observation-{operation:03}.json"
                            expected = (
                                executable_checks / f"original-{case}" / name
                            ).read_bytes()
                            for directory in (
                                fixture / f"prepared-{case}",
                                executable_checks / f"replayed-{case}",
                                executable_checks / role / f"case-{case:03}",
                            ):
                                if (directory / name).read_bytes() != expected:
                                    raise ValueError(
                                        "V2PhysicalExecutableOriginalMismatch"
                                    )
                            compared += 1
                write_once(
                    executable_checks / "comparison.json",
                    dict(
                        format="core036.native-full-conformance.v2",
                        source_subject_ref=declaration["source_subject_ref"],
                        original_observations_compared=compared,
                        cases=2,
                        operations_per_case=2,
                        roles=["R", "GV", "B"],
                        comparison="complete original bytes",
                        native_proof="unestablished",
                        feature_complete=False,
                    ),
                )
    if (worker / "Cargo.lock").read_bytes() != original_lock:
        raise ValueError("V2NativeLockChanged")
    check_prepared_native_v2(E / "toolchain-v2.json")
    configuration_inventory(worker, private / "cargo")
    source_after = [
        {
            "path": str(path.relative_to(worker)),
            "bytes": path.stat().st_size,
            "sha256": digest(path),
        }
        for path in source_inputs
        if path.is_file()
    ]
    write_once(out / "materialized-source-after.json", source_after)
    if source_before != source_after:
        raise ValueError("V2MaterializedNativeSourceChanged")
    write_once(
        out / "result.json",
        {
            "format": "core036.native-protocol-build.v2",
            "cargo_exit_code": code,
            "compiled_core": str(core),
            "manifest_sha256": digest(worker / "Cargo.toml"),
            "lock_sha256": digest(worker / "Cargo.lock"),
            "target": str(target),
            "compiler_cache_reused": cache_reused,
            "optimization_profile": optimization,
            "embedded_inputs": embedded_inputs,
            "scoped_quality": scoped_quality,
            "built_executables": built_executables,
            "development_results": development_results,
            "oracle_original_core": str(original_core),
            "source_subject_ref": declaration["source_subject_ref"],
            "native_proof": "unestablished",
            "product_adoption": "unactivated",
        },
    )
    return (
        0
        if code == 0
        and all(
            value == 0
            for value in [*scoped_quality.values(), *development_results.values()]
        )
        else 1
    )


if __name__ == "__main__":
    raise SystemExit(main())
