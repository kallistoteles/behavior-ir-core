"""Source-bound runtime capture for the unchanged canonical quality script.

The evaluated-shell entry point uses only Python's standard library. Controller
integration imports are local to preparation functions, not the captured child.
"""

import hashlib
import json
import os
from pathlib import Path
import stat
import shutil
import subprocess
import sys
import tomllib

CAPTURE_LIMIT = 32 * 1024**2
CAPTURE_FIELDS = {
    "format",
    "phase",
    "shell_pid",
    "driver_pid",
    "tools",
    "configurations",
    "sources",
    "environment",
    "closures",
}


def guard_path(path):
    path = Path(path)
    if any(
        part in {"parameters.bin", "compression_prover_key.bin"} for part in path.parts
    ):
        raise ValueError("ProtectedArtifact")
    return path


def digest_file(path):
    path = guard_path(path)
    checksum = hashlib.sha256()
    with path.open("rb") as source:
        while block := source.read(256 * 1024):
            checksum.update(block)
    return checksum.hexdigest()


def executable_identity(path, approved_roots):
    invocation = guard_path(path)
    roots = [guard_path(root) for root in approved_roots]
    if (
        not invocation.is_absolute()
        or not roots
        or any(not root.is_absolute() for root in roots)
    ):
        raise ValueError("QualityToolAbsolutePath")
    current, pending, links = Path("/"), list(invocation.parts[1:]), []
    while pending:
        name = pending.pop(0)
        if name == ".":
            continue
        if name == "..":
            current = current.parent
            continue
        candidate = guard_path(current / name)
        if not any(
            candidate.is_relative_to(root) or root.is_relative_to(candidate)
            for root in roots
        ):
            raise ValueError("QualityToolOutsideProviderClosure")
        info = candidate.lstat()
        if stat.S_ISLNK(info.st_mode):
            target = guard_path(os.readlink(candidate))
            links.append(dict(path=str(candidate), target=str(target)))
            if len(links) > 32:
                raise ValueError("QualityToolSymlinkBound")
            if target.is_absolute():
                current = Path("/")
                pending = list(target.parts[1:]) + pending
            else:
                pending = list(target.parts) + pending
            continue
        if pending:
            if not stat.S_ISDIR(info.st_mode):
                raise ValueError("QualityToolParentType")
            current = candidate
            continue
        if (
            not stat.S_ISREG(info.st_mode)
            or not info.st_mode & 0o111
            or info.st_size > 256 * 1024**2
            or not any(candidate.is_relative_to(root) for root in roots)
        ):
            raise ValueError("QualityToolExecutableType")
        return dict(
            invocation=str(invocation),
            canonical=str(candidate),
            bytes=info.st_size,
            mode=stat.S_IMODE(info.st_mode),
            sha256=digest_file(candidate),
            symlinks=links,
        )
    raise ValueError("QualityToolMissingLeaf")


def ordinary_path(path):
    path = guard_path(path)
    for parent in reversed((path, *path.parents)):
        guard_path(parent)
        try:
            info = parent.lstat()
        except FileNotFoundError:
            break
        if stat.S_ISLNK(info.st_mode):
            raise ValueError("QualitySourceSymlink")
    return path


def configuration_snapshot(paths):
    result = []
    for source in paths:
        path = ordinary_path(source)
        try:
            info = path.lstat()
        except FileNotFoundError:
            result.append(dict(path=str(path), exists=False))
            continue
        if not stat.S_ISREG(info.st_mode) or info.st_size > 1024**2:
            raise ValueError("QualityCargoConfigurationType")
        raw = path.read_bytes()
        if len(raw) != info.st_size:
            raise ValueError("QualityCargoConfigurationChanged")
        validate_cargo_configuration(tomllib.loads(raw.decode()))
        result.append(
            dict(
                path=str(path),
                exists=True,
                bytes=len(raw),
                sha256=hashlib.sha256(raw).hexdigest(),
                mode=stat.S_IMODE(info.st_mode),
            )
        )
    return result


def write_capture(path, value):
    path = ordinary_path(path)
    raw = (json.dumps(value, sort_keys=True, indent=2, allow_nan=False) + "\n").encode()
    if len(raw) > CAPTURE_LIMIT:
        raise ValueError("QualityCaptureBound")
    with path.open("xb") as destination:
        destination.write(raw)
        destination.flush()
        os.fsync(destination.fileno())
    return dict(path=str(path), bytes=len(raw), sha256=hashlib.sha256(raw).hexdigest())


def read_capture(path, reference):
    path = ordinary_path(path)
    if "path" in reference and str(guard_path(reference["path"])) != str(path):
        raise ValueError("QualityCapturePath")
    with path.open("rb") as source:
        raw = source.read(CAPTURE_LIMIT + 1)
    if (
        len(raw) > CAPTURE_LIMIT
        or len(raw) != reference["bytes"]
        or hashlib.sha256(raw).hexdigest() != reference["sha256"]
    ):
        raise ValueError("QualityCaptureBytes")

    def reject_constant(_value):
        raise ValueError("QualityCaptureNonFinite")

    return json.loads(raw, parse_constant=reject_constant)


def launch_environment(bootstrap, owned, inherited):
    if set(owned) != {"CARGO_HOME", "CARGO_TARGET_DIR", "TMPDIR", "BEHAVIOR_BIN"}:
        raise ValueError("QualityLaunchOwnedEnvironment")
    env = {
        key: inherited[key] for key in ("HOME", "USER", "LOGNAME") if key in inherited
    }
    env.update(owned)
    env.update(
        PATH=bootstrap["nix_bin"] + ":" + str(Path(bootstrap["bash"]).parent),
        NIX_BUILD_SHELL=bootstrap["bash"],
        LANG="C.UTF-8",
        LC_ALL="C.UTF-8",
        CARGO_NET_OFFLINE="true",
        CARGO_INCREMENTAL="0",
        CARGO_BUILD_JOBS="1",
        CARGO_PROFILE_DEV_DEBUG="0",
        CARGO_PROFILE_TEST_DEBUG="0",
        CARGO_PROFILE_TEST_OPT_LEVEL="2",
        CARGO_PROFILE_TEST_DEBUG_ASSERTIONS="true",
        CARGO_PROFILE_TEST_OVERFLOW_CHECKS="true",
        CARGO_PROFILE_RELEASE_DEBUG="0",
        CARGO_TERM_COLOR="never",
        RUSTFLAGS="-C target-cpu=x86-64",
        RUST_TEST_THREADS="1",
        RAYON_NUM_THREADS="1",
        LEAN_NUM_THREADS="1",
        PYTHONNOUSERSITE="1",
        PYTHONDONTWRITEBYTECODE="1",
        GIT_CONFIG_NOSYSTEM="1",
        GIT_CONFIG_GLOBAL="/dev/null",
    )
    return env


def validate_capture_pair(before, after):
    if (
        not isinstance(before, dict)
        or not isinstance(after, dict)
        or set(before) != CAPTURE_FIELDS
        or set(after) != CAPTURE_FIELDS
        or before["format"] != "core036.quality-runtime-capture.v2"
        or after["format"] != before["format"]
        or before["phase"] != "before"
        or after["phase"] != "after"
        or any(
            type(before[key]) is not int or before[key] <= 0
            for key in ("shell_pid", "driver_pid")
        )
        or json.dumps(
            {k: v for k, v in before.items() if k != "phase"},
            sort_keys=True,
            allow_nan=False,
        )
        != json.dumps(
            {k: v for k, v in after.items() if k != "phase"},
            sort_keys=True,
            allow_nan=False,
        )
    ):
        raise ValueError("QualityRuntimeCaptureMismatch")


def validate_cargo_configuration(configuration):
    if not isinstance(configuration, dict) or set(configuration) - {
        "net",
        "source",
        "registries",
        "registry",
        "term",
        "build",
        "http",
    }:
        raise ValueError("QualityCargoUndeclaredSelection")
    build = configuration.get("build", {})
    if not isinstance(build, dict) or set(build) - {"jobs"}:
        raise ValueError("QualityCargoCompilerSelection")
    if "jobs" in build and build["jobs"] != 1:
        raise ValueError("QualityCargoCompilerSelection")

    def reject_credentials(value):
        if isinstance(value, dict):
            for key, child in value.items():
                if any(
                    word in key.lower() for word in ("token", "password", "credential")
                ):
                    raise ValueError("QualityCargoCredentialSelection")
                reject_credentials(child)

    reject_credentials(configuration)


def source_snapshot(sources):
    result = {}
    for name, reference in sources.items():
        path = ordinary_path(reference["path"])
        info = path.stat()
        if not stat.S_ISREG(info.st_mode) or info.st_size != reference["bytes"]:
            raise ValueError("QualityRuntimeSourceSize")
        if digest_file(path) != reference["sha256"]:
            raise ValueError("QualityRuntimeSourceChanged")
        result[name] = dict(reference)
    return result


def applicable_configurations(core, cargo_home):
    paths = []
    for working in (Path(core), Path(core) / "consumer"):
        for parent in (working, *working.parents):
            paths.extend(parent / ".cargo" / name for name in ("config", "config.toml"))
    paths.extend(Path(cargo_home) / name for name in ("config", "config.toml"))
    return list(dict.fromkeys(paths))


def captured_command(argv, directory, name, *, seconds=30):
    """No discarded probe output or unbounded subprocess capture."""
    directory = ordinary_path(directory)
    stdout_path, stderr_path = directory / (name + ".out"), directory / (name + ".err")
    with stdout_path.open("xb") as stdout, stderr_path.open("xb") as stderr:
        child = subprocess.run(
            argv,
            stdin=subprocess.DEVNULL,
            stdout=stdout,
            stderr=stderr,
            timeout=seconds,
            check=False,
        )
    references = {}
    for label, path in (("stdout", stdout_path), ("stderr", stderr_path)):
        size = path.stat().st_size
        if size > 4 * 1024**2:
            raise ValueError("QualityRuntimeProbeOutputBound")
        references[label] = dict(path=str(path), bytes=size, sha256=digest_file(path))
    if child.returncode:
        raise ValueError("QualityRuntimeProbeFailed:" + name)
    return references, stdout_path.read_text()


def runtime_capture(job, spec, phase):
    directory = Path(job["out"]) / phase
    directory.mkdir()
    store = job["nix_store"]
    executable_identity(store["path"], store["approved_roots"])
    if digest_file(store["path"]) != store["sha256"]:
        raise ValueError("QualityRuntimeStoreChanged")
    closures, approved = {}, set()
    errors = []
    for name, provider in spec["providers"].items():
        try:
            output = guard_path(provider["output"])
            if output.parent != Path("/nix/store"):
                raise ValueError("QualityRuntimeProviderPath")
            _logs, raw = captured_command(
                [store["path"], "--query", "--requisites", str(output)],
                directory,
                "closure-" + name,
            )
            paths = sorted(set(raw.splitlines()))
            if str(output) not in paths or any(
                guard_path(path).parent != Path("/nix/store") for path in paths
            ):
                raise ValueError("QualityRuntimeClosure")
            closures[name] = dict(provider=provider, paths=paths)
            _logs, deriver = captured_command(
                [store["path"], "--query", "--deriver", str(output)],
                directory,
                "deriver-" + name,
            )
            deriver = deriver.strip()
            claims = {}
            for label, selected in (
                ("evaluated", provider["derivation"]),
                ("registered", deriver),
            ):
                if selected in (None, "unknown-deriver"):
                    continue
                if guard_path(selected).parent != Path(
                    "/nix/store"
                ) or not selected.endswith(".drv"):
                    raise ValueError("QualityRuntimeDeriverPath:" + name)
                _logs, output_list = captured_command(
                    [store["path"], "--query", "--outputs", selected],
                    directory,
                    "outputs-" + name + "-" + label,
                )
                claims[label] = sorted(set(output_list.splitlines()))
            validate_provider_outputs(provider, deriver, claims)
            closures[name]["observed_deriver"] = deriver
            closures[name]["derivation_output_claims"] = claims
            approved.update(paths)
        except (OSError, ValueError, subprocess.SubprocessError) as error:
            errors.append(
                dict(
                    scope="provider",
                    name=name,
                    error=type(error).__name__ + ":" + str(error)[:500],
                )
            )
    tools = {}
    for name, expected in spec["tools"].items():
        try:
            if shutil.which(name) != expected["path"]:
                raise ValueError("QualityRuntimePathSelection:" + name)
            identity = executable_identity(expected["path"], approved)
            if (
                "expected_sha256" in expected
                and identity["sha256"] != expected["expected_sha256"]
            ):
                raise ValueError("QualityRuntimePinnedTool:" + name)
            if expected["version_args"]:
                _logs, version = captured_command(
                    [expected["path"], *expected["version_args"]],
                    directory,
                    "version-" + name,
                )
                if expected["version_contains"] not in version:
                    raise ValueError("QualityRuntimeVersion:" + name)
                identity["version"] = version
            identity["provider"] = expected["provider"]
            tools[name] = identity
        except (OSError, ValueError, subprocess.SubprocessError) as error:
            errors.append(
                dict(
                    scope="tool",
                    name=name,
                    error=type(error).__name__ + ":" + str(error)[:500],
                )
            )
    if errors:
        write_capture(
            directory / "diagnostic.json",
            dict(errors=errors, closures=closures, tools=tools),
        )
        raise ValueError("QualityRuntimeCaptureErrors:" + str(len(errors)))
    parent = int(os.environ["CORE036_Q_PARENT_PID"])
    if parent != os.getppid():
        raise ValueError("QualityRuntimeParentChanged")
    launch_bash = job["launch_bash"]
    parent_bash = executable_identity(
        os.environ["CORE036_Q_PARENT_BASH"], [launch_bash["root"]]
    )
    if (
        parent_bash["sha256"] != launch_bash["sha256"]
        or parent_bash["invocation"] != launch_bash["path"]
    ):
        raise ValueError("QualityRuntimeParentBash")
    tools["launch-bash"] = parent_bash
    # Explicit allowlist: credentials and unrelated inherited environment never enter evidence.
    keys = set(job["environment_keys"]) | {
        "PATH",
        "BEHAVIOR_Z3",
        "CORE036_Q_PYTHON",
        "NIX_BUILD_SHELL",
    }
    return dict(
        format="core036.quality-runtime-capture.v2",
        phase=phase,
        shell_pid=parent,
        driver_pid=os.getpid(),
        tools=tools,
        configurations=configuration_snapshot(job["configurations"]),
        sources=source_snapshot(job["sources"]),
        environment={key: os.environ[key] for key in sorted(keys) if key in os.environ},
        closures=closures,
    )


def runtime_job(path):
    path = ordinary_path(path)
    job = json.loads(path.read_text())
    spec = json.loads(os.environ["CORE036_Q_RUNTIME_SPEC"])
    if spec["format"] != "core036.quality-shell-expectations.v2":
        raise ValueError("QualityRuntimeEvaluatedSpec")
    out = ordinary_path(job["out"])
    write_capture(out / "evaluated-spec.json", spec)
    before = runtime_capture(job, spec, "before")
    before_ref = write_capture(out / "before.json", before)
    gate_exit = None
    if job["mode"] == "gate":
        # This stricter child limit also applies to all ordinary Lean invocations.
        import resource

        def limit_child():
            resource.setrlimit(resource.RLIMIT_AS, (4 * 1024**3, 4 * 1024**3))

        cargo = spec["tools"]["cargo"]["path"]
        demo_target = Path(job["target"]) / "consumer"
        env = dict(os.environ, CARGO_TARGET_DIR=str(demo_target))
        argv = [
            cargo,
            "build",
            "--offline",
            "--manifest-path",
            str(Path(job["core"]) / "consumer/Cargo.toml"),
            "--example",
            "durable_commands",
        ]
        with (
            (out / "consumer-build.out").open("xb") as stdout,
            (out / "consumer-build.err").open("xb") as stderr,
        ):
            built = subprocess.run(
                argv,
                cwd=job["core"],
                env=env,
                stdout=stdout,
                stderr=stderr,
                preexec_fn=limit_child,
                check=False,
            )
        write_capture(
            out / "consumer-build.json", dict(argv=argv, exit_code=built.returncode)
        )
        if built.returncode == 0:
            demo = demo_target / "debug/examples/durable_commands"
            identity = executable_identity(demo, [demo_target])
            write_capture(out / "consumer-executable.json", identity)
            env = dict(os.environ, BEHAVIOR_COMMAND_DEMO_BIN=str(demo))
            gate_exit = subprocess.run(
                [spec["tools"]["bash"]["path"], job["script"]],
                cwd=job["core"],
                env=env,
                preexec_fn=limit_child,
                check=False,
            ).returncode
        else:
            gate_exit = built.returncode
    elif job["mode"] != "prepare":
        raise ValueError("QualityRuntimeMode")
    after = runtime_capture(job, spec, "after")
    after_ref = write_capture(out / "after.json", after)
    validate_capture_pair(before, after)
    write_capture(
        out / "result.json",
        dict(
            format="core036.quality-runtime-result.v2",
            before=before_ref,
            after=after_ref,
            gate_exit=gate_exit,
            capture_pair_equal=True,
            mode=job["mode"],
        ),
    )
    return 0 if gate_exit in (None, 0) else 1


def validate_provider_outputs(provider, observed_deriver, claims):
    """A database deriver name is distinct from an evaluated output claim.

    Both named derivations must actually list the selected output. Merely
    accepting a different name, or copying the evaluator's claim, is forbidden.
    """
    required = set()
    if provider["derivation"] is not None:
        required.add("evaluated")
    if observed_deriver != "unknown-deriver":
        required.add("registered")
    if set(claims) != required or any(
        provider["output"] not in outputs
        or not isinstance(outputs, list)
        or any(guard_path(path).parent != Path("/nix/store") for path in outputs)
        for outputs in claims.values()
    ):
        raise ValueError("QualityRuntimeDerivationOutputMismatch")


def prepare_launch(*, declaration, registry, out, core, target, cli, mode):
    """Evaluate only immutable copies present in this attempt's frozen subject."""
    from artifact_io import read
    from controller_v2 import ref_for
    from sources import resolve_execution_source_v2

    repository = registry.roots["repository"]
    relative = "experiments/transition-study036/"
    environment_source = "specs/036-core-transition-feasibility/evidence/v2/w001/environments/env0001/native-inputs.json"
    selected = ["flake.lock", "rust-toolchain.toml", environment_source] + [
        relative + name
        for name in (
            "shell.nix",
            "quality-runtime-v2.sh",
            "quality_runtime_v2.py",
            "toolchain.json",
            "quality-launch-inputs-v2.json",
        )
    ]
    mirror = out / "runtime-source"
    bound = {}
    for name in selected:
        original = ordinary_path(repository / name)
        reference = ref_for(original, registry)
        snapshot = resolve_execution_source_v2(
            reference, declaration, registry=registry
        )
        destination = mirror / name
        destination.parent.mkdir(parents=True, exist_ok=True)
        with destination.open("xb") as stream:
            stream.write(snapshot.read_bytes())
        destination.chmod(0o444)
        bound[name] = dict(
            path=str(destination), bytes=reference["bytes"], sha256=reference["sha256"]
        )
    tools = read(mirror / relative / "toolchain.json")["tools"]
    launch_inputs = read(mirror / relative / "quality-launch-inputs-v2.json")
    if launch_inputs["format"] != "core036.quality-launch-inputs.v2":
        raise ValueError("QualityLaunchInputs")
    shell, store = tools["nix-shell"], tools["nix-store"]
    for tool in (shell, store):
        executable_identity(tool["path"], launch_inputs["nix_approved_roots"])
        if digest_file(tool["path"]) != tool["sha256"]:
            raise ValueError("QualityRuntimeLaunchToolChanged")
    # The independently registered environment records the initial Bash; the
    # evaluated expression must subsequently agree on its own Bash identity.
    environment = read(mirror / environment_source)
    bash = environment["tools"]["bash"]
    if digest_file(bash["path"]) != bash["sha256"]:
        raise ValueError("QualityRuntimeLaunchBashChanged")
    private = Path(declaration["profile"]["roots"]["cache"])
    env = launch_environment(
        dict(bash=bash["path"], nix_bin=str(Path(shell["path"]).parent)),
        dict(
            CARGO_HOME=str(private / "cargo"),
            CARGO_TARGET_DIR=str(target),
            TMPDIR=str(private / "tmp"),
            BEHAVIOR_BIN=str(cli),
        ),
        os.environ,
    )
    runtime = out / "runtime"
    runtime.mkdir()
    bound["original-script"] = dict(
        path=str(core / "scripts/gates.sh"),
        bytes=(core / "scripts/gates.sh").stat().st_size,
        sha256=digest_file(core / "scripts/gates.sh"),
    )
    job = dict(
        mode=mode,
        out=str(runtime),
        core=str(core),
        target=str(target),
        script=str(core / "scripts/gates.sh"),
        sources=bound,
        nix_store={**store, "approved_roots": launch_inputs["nix_approved_roots"]},
        configurations=[
            str(path) for path in applicable_configurations(core, private / "cargo")
        ],
        environment_keys=sorted(env),
        launch_bash={**bash, "root": str(Path(*Path(bash["path"]).parts[:4]))},
    )
    write_capture(out / "runtime-job.json", job)
    import shlex

    argv = [
        shell["path"],
        str(mirror / relative / "shell.nix"),
        "--option",
        "builders",
        "",
        "--option",
        "substitute",
        "false",
        "--max-jobs",
        "0",
        "--run",
        ". "
        + shlex.join(
            [
                str(mirror / relative / "quality-runtime-v2.sh"),
                str(mirror / relative / "quality_runtime_v2.py"),
                str(out / "runtime-job.json"),
            ]
        ),
    ]
    return argv, env


if __name__ == "__main__":
    if len(sys.argv) != 3 or sys.argv[1] != "--runtime-job":
        raise SystemExit("QualityRuntimeArguments")
    raise SystemExit(runtime_job(sys.argv[2]))
