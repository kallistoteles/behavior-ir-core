"""Private pinned repository initialization and compiler plan; no compiler build."""

import argparse
from contextlib import contextmanager
import hashlib
import os
import re
import shlex
import socket
import subprocess
import tarfile
import time
from pathlib import Path, PurePosixPath

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2, validate_environment_plan

E = Path(__file__).resolve().parent
R = E.parents[1]
COMPILER = "ocaml-base-compiler.5.3.0"


@contextmanager
def repository_server(tools, repository, scratch, env):
    """Read-only public index on loopback; the server stays in the owned tree."""
    if os.geteuid() == 0:
        raise ValueError("NonposRepositoryServerRequiresUnprivilegedUser")
    folder = scratch / "repository-service"
    folder.mkdir()
    with socket.socket() as probe:
        probe.bind(("127.0.0.1", 0))
        port = probe.getsockname()[1]
    config = folder / "rsyncd.conf"
    write_once(
        config,
        (
            "use chroot = no\npid file = "
            + str(folder / "pid")
            + "\nlock file = "
            + str(folder / "lock")
            + "\n[core036]\npath = "
            + str(repository)
            + "\nread only = yes\nlist = no\n"
            + "hosts allow = 127.0.0.1\nhosts deny = *\nmax connections = 4\n"
        ).encode(),
    )
    address = "rsync://127.0.0.1:" + str(port) + "/core036"
    argv = [
        tools["rsync"]["path"],
        "--daemon",
        "--no-detach",
        "--address=127.0.0.1",
        "--port=" + str(port),
        "--config=" + str(config),
    ]
    with (
        (folder / "stdout.txt").open("xb") as stdout,
        (folder / "stderr.txt").open("xb") as stderr,
    ):
        server = subprocess.Popen(
            argv, cwd=scratch, env=env, stdout=stdout, stderr=stderr
        )
        try:
            deadline = time.monotonic() + 5
            while True:
                if server.poll() is not None:
                    raise ValueError("NonposRepositoryServerExited")
                try:
                    with socket.create_connection(
                        ("127.0.0.1", port), timeout=0.2
                    ) as connection:
                        banner = connection.recv(128)
                    if banner.startswith(b"@RSYNCD:"):
                        break
                except OSError:
                    pass
                if time.monotonic() >= deadline:
                    raise ValueError("NonposRepositoryServerNotReady")
                time.sleep(0.02)
            yield address
        finally:
            if server.poll() is None:
                server.terminate()
            try:
                server.wait(timeout=5)
            except subprocess.TimeoutExpired:
                server.kill()
                server.wait(timeout=5)
            write_once(
                folder / "result.json",
                dict(
                    argv=argv,
                    pid=server.pid,
                    address=address,
                    exit_code=server.returncode,
                    stopped_after_scope=True,
                    interface="127.0.0.1 only",
                    read_only=True,
                    stdout_sha256=digest(folder / "stdout.txt"),
                    stderr_sha256=digest(folder / "stderr.txt"),
                ),
            )


def configure_repository_transport(tools, scratch, address, env):
    """Opam strips the scheme; use daemon syntax and a pinned port argument."""
    match = re.fullmatch(r"rsync://127\.0\.0\.1:([1-9][0-9]{0,4})/core036", address)
    if match is None or int(match[1]) > 65535:
        raise ValueError("NonposRepositoryTransportAddress")
    wrappers = scratch / "wrappers"
    wrappers.mkdir()
    wrapper = wrappers / "rsync"
    write_once(
        wrapper,
        (
            "#!"
            + tools["sh"]["path"]
            + "\nexec "
            + shlex.quote(tools["rsync"]["path"])
            + " --bwlimit=128 --port="
            + match[1]
            + ' "$@"\n'
        ).encode(),
    )
    wrapper.chmod(0o500)
    env["PATH"] = str(wrappers) + os.pathsep + env["PATH"]
    return "rsync://127.0.0.1::core036", wrapper


def prepare_repository_directories(expected, target):
    """Pace directory metadata before rsync, without precomputing payloads."""
    directories = set()
    for name in expected:
        path = PurePosixPath(name)
        if (
            not path.parts
            or path.is_absolute()
            or ".." in path.parts
            or str(path) != name
        ):
            raise ValueError("NonposRepositoryDirectoryPath")
        directories.update(str(parent) for parent in path.parents if str(parent) != ".")
        if len(directories) > 200_000:
            raise ValueError("NonposRepositoryDirectoryBound")
    target.mkdir(parents=True, exist_ok=False)
    for count, name in enumerate(
        sorted(directories, key=lambda name: (len(PurePosixPath(name).parts), name)),
        1,
    ):
        (target / name).mkdir()
        if count % 8 == 0:
            time.sleep(0.01)
    return len(directories)


def git_blob(raw):
    return hashlib.sha1(b"blob " + str(len(raw)).encode() + b"\0" + raw).hexdigest()


def tree_entries(raw):
    if len(raw) > 32 * 1024**2 or not raw.endswith(b"\0"):
        raise ValueError("NonposOpamTreeBound")
    result = {}
    for row in raw[:-1].split(b"\0"):
        header, path = row.split(b"\t", 1)
        mode, kind, blob = header.decode().split(" ")
        name = path.decode("utf-8")
        if (
            kind != "blob"
            or mode not in {"100644", "100755", "120000"}
            or re.fullmatch(r"[a-f0-9]{40}", blob) is None
            or PurePosixPath(name).is_absolute()
            or ".." in PurePosixPath(name).parts
            or name != str(PurePosixPath(name))
            or name in result
            or len(result) >= 200_000
        ):
            raise ValueError("NonposOpamTreeEntry")
        result[name] = dict(mode=mode, blob=blob)
    return result


def verify_index_file(path, row):
    if row["mode"] == "120000":
        if not path.is_symlink():
            raise ValueError("NonposOpamIndexFileType")
        raw = os.readlink(path).encode()
    else:
        if path.is_symlink() or not path.is_file() or path.stat().st_size > 2 * 1024**2:
            raise ValueError("NonposOpamIndexFileTypeOrBound")
        raw = path.read_bytes()
    if git_blob(raw) != row["blob"]:
        raise ValueError("NonposOpamIndexBlob")


def unpack_index(archive, target, expected):
    target.mkdir(parents=True, exist_ok=False)
    total, count, seen = 0, 0, set()
    with tarfile.open(archive, "r|") as stream:
        for member in stream:
            count += 1
            total += member.size
            name = str(PurePosixPath(member.name))
            if (
                count > 400_000
                or total > 1024**3
                or member.size > 2 * 1024**2
                or PurePosixPath(name).is_absolute()
                or ".." in PurePosixPath(name).parts
                or not (member.isdir() or member.isfile() or member.issym())
            ):
                raise ValueError("NonposOpamIndexArchiveBoundOrPath")
            if not member.isdir() and (name not in expected or name in seen):
                raise ValueError("NonposOpamIndexUnexpectedFile")
            stream.extract(member, target, filter="data")
            if not member.isdir():
                verify_index_file(target / name, expected[name])
                seen.add(name)
            if count % 8 == 0:
                time.sleep(0.01)
    if not expected or seen != set(expected):
        raise ValueError("NonposOpamIndexMissingFile")
    return dict(files=len(seen), entries=count, bytes=total)


def verify_index(root, expected):
    seen = set()
    for directory, dirs, files in os.walk(root, followlinks=False):
        links = [d for d in dirs if (Path(directory) / d).is_symlink()]
        for name in files + links:
            path = Path(directory) / name
            label = str(path.relative_to(root))
            if label not in expected or label in seen:
                raise ValueError("NonposOpamIndexExtraFile")
            verify_index_file(path, expected[label])
            seen.add(label)
    if seen != set(expected):
        raise ValueError("NonposOpamIndexMissingFile")


def verify_recovered_repository(root, expected, config, repositories):
    """Re-establish exact metadata; an interrupted init is never a pass."""
    opamroot = root / "opamroot"
    for path in (
        root,
        root / "repository",
        opamroot,
        opamroot / "repo",
        opamroot / "repo/default",
    ):
        if path.is_symlink() or not path.is_dir():
            raise ValueError("NonposRecoveredDirectory")
    if (opamroot / "repo/default.new").exists() or (opamroot / "core036").exists():
        raise ValueError("NonposRecoveredIncompleteOrInstalledState")
    for path, raw in (
        (opamroot / "config", config),
        (opamroot / "repo/repos-config", repositories),
    ):
        if (
            path.is_symlink()
            or not path.is_file()
            or path.stat().st_size > 4 * 1024**2
            or path.read_bytes() != raw
        ):
            raise ValueError("NonposRecoveredConfiguration")
    verify_index(root / "repository", expected)
    verify_index(opamroot / "repo/default", expected)
    return opamroot


def repository_commit(selected, captured):
    if (
        not isinstance(selected, str)
        or re.fullmatch(r"[a-f0-9]{40}", selected) is None
        or selected != captured
    ):
        raise ValueError("NonposOpamRepositoryPin")
    return selected


def plan_environment(tools, scratch, ambient):
    env = {
        key: value
        for key, value in ambient.items()
        if not key.startswith(("OPAM", "GIT_"))
        and key not in {"PATH", "LD_PRELOAD", "LD_LIBRARY_PATH", "CAML_LD_LIBRARY_PATH"}
    }
    paths = list(
        dict.fromkeys(str(Path(tool["path"]).parent) for tool in tools.values())
    )
    env.update(
        PATH=os.pathsep.join(paths),
        OPAMROOT=str(scratch / "opamroot"),
        OPAMJOBS="1",
        OPAMDOWNLOADJOBS="1",
        OPAMREPOSITORYTARRING="false",
        MAKEFLAGS="-j1",
        DUNE_BUILD_JOBS="1",
        TMPDIR=str(scratch / "tmp"),
        OPAMNOENVNOTICE="1",
        GIT_CONFIG_NOSYSTEM="1",
        GIT_CONFIG_GLOBAL=os.devnull,
        GIT_TERMINAL_PROMPT="0",
        MALLOC_ARENA_MAX="2",
    )
    if "cc" in tools:
        env["CC"] = tools["cc"]["path"]
    return env


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    name = declaration["record_id"]
    if out != private / "nonpos-opam-plan" / name or out.exists():
        raise ValueError("NonposOpamPlanOwnership")
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    config = read(E / "nonpos-opam-plan-inputs-v2.json")
    if (
        not {
            "format",
            "bootstrap_ref",
            "checkpoint_ref",
            "repository_commit",
            "compiler",
            "tools",
        }
        <= set(config)
        or set(config)
        - {
            "format",
            "bootstrap_ref",
            "checkpoint_ref",
            "repository_commit",
            "compiler",
            "tools",
            "recovery_ref",
        }
        or config["format"] != "core036.nonpos-opam-plan-inputs.v2"
    ):
        raise ValueError("NonposOpamPlanContext")
    bootstrap = refs.read(config["bootstrap_ref"])
    checkpoint_path = refs.verify(config["checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    if refs.read(config["checkpoint_ref"])["stage_outcome"] != "succeeded":
        raise ValueError("NonposOpamBootstrapNotClosed")
    commit = repository_commit(
        config["repository_commit"], bootstrap["selected_repository_commit"]
    )
    if config["compiler"] != COMPILER:
        raise ValueError("NonposOpamCompilerPin")
    opam = Path(bootstrap["executable"])
    if (
        opam != private / "nonpos-opam-bootstrap/a0274/opam-2.3.0-x86_64-linux"
        or digest(opam) != bootstrap["executable_sha256"]
        or bootstrap["elf_interpreter"] is not None
        or bootstrap["version_probe"]["exit_code"] != 0
    ):
        raise ValueError("NonposOpamPlanExecutable")
    tools = config["tools"]
    required = {
        "git",
        "make",
        "cc",
        "ar",
        "rsync",
        "curl",
        "tar",
        "patch",
        "sed",
        "awk",
        "grep",
        "find",
        "sh",
        "env",
        "diff",
        "getconf",
        "gzip",
        "xz",
        "bzip2",
    }
    if set(tools) != required:
        raise ValueError("NonposOpamPlanTools")
    for tool in tools.values():
        path = Path(tool["path"])
        if not path.is_relative_to("/nix/store") or digest(path) != tool["sha256"]:
            raise ValueError("NonposOpamPlanToolChanged")
    check_prepared_native_v2(E / "toolchain-v2.json")
    if "recovery_ref" in config:
        from nonpos_opam_recover_v2 import recover

        return recover(declaration, out, refs, config, opam, tools)
    out.mkdir(parents=True)
    scratch = private / "tmp/nonpos-opam-plan" / name
    scratch.mkdir(parents=True, exist_ok=False)
    (scratch / "tmp").mkdir()
    env = plan_environment(tools, scratch, os.environ)
    commands = []

    def run(label, argv, cwd=scratch):
        log = out / "commands" / label
        log.mkdir(parents=True)
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=cwd,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=1200 if label == "opam-init" else 300,
                check=False,
            )
        row = dict(
            label=label,
            argv=argv,
            cwd=str(cwd),
            exit_code=result.returncode,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", row)
        commands.append(row)
        if result.returncode:
            raise ValueError("NonposOpamPlanCommand:" + label)
        return (log / "stdout.txt").read_bytes()

    # Keep the exact existing tool outputs alive. No builds or substitutions.
    store = read(E / "native-environment-inputs-v2.json")["tools"]["nix-store"]["path"]
    packages = sorted({str(Path(*Path(t["path"]).parts[:4])) for t in tools.values()})
    gcroots = []
    for index, package in enumerate(packages):
        run("tool-closure-" + str(index), [store, "--query", "--requisites", package])
        run("tool-content-" + str(index), [store, "--verify-path", package])
        link = private / "gcroots" / name / ("opam-tool-" + str(index))
        link.parent.mkdir(parents=True, exist_ok=True)
        run(
            "tool-gcroot-" + str(index),
            [
                store,
                "--option",
                "builders",
                "",
                "--option",
                "substitute",
                "false",
                "--max-jobs",
                "0",
                "--add-root",
                str(link),
                "--indirect",
                "--realise",
                package,
            ],
        )
        gcroots.append(dict(path=str(link), target=package))
    validate_environment_plan(dict(builders=[], repair=None, gcroots=gcroots))
    run("opam-init-help", [str(opam), "init", "--help=plain"])
    run("opam-switch-help", [str(opam), "switch", "create", "--help=plain"])
    objects = scratch / "git-objects"
    objects.mkdir()
    git = tools["git"]["path"]
    prefix = [
        git,
        "-c",
        "credential.helper=",
        "-c",
        "core.hooksPath=/dev/null",
        "-c",
        "init.templateDir=",
    ]
    run("repository-init", [*prefix, "init", "--initial-branch=core036"], objects)
    run(
        "repository-fetch",
        [
            *prefix,
            "-c",
            "fetch.fsckObjects=true",
            "fetch",
            "--depth=1",
            "--no-tags",
            "https://github.com/ocaml/opam-repository.git",
            commit,
        ],
        objects,
    )
    # Git's mass checkout exceeded the observation cadence in275. Archive the
    # same immutable tree, then materialize and verify each blob at a paced rate.
    run("repository-head-ref", [*prefix, "update-ref", "HEAD", commit], objects)
    if (
        run("repository-head", [*prefix, "rev-parse", "HEAD"], objects).decode().strip()
        != commit
    ):
        raise ValueError("NonposOpamRepositoryCommitChanged")
    tree = run("repository-tree", [*prefix, "ls-tree", "-r", "-z", commit], objects)
    expected = tree_entries(tree)
    # Prevent Git attributes from omitting or substituting committed file bytes.
    write_once(objects / ".git/info/attributes", b"* -export-ignore -export-subst\n")
    archive = scratch / "repository.tar"
    run(
        "repository-archive",
        [*prefix, "archive", "--format=tar", "--output=" + str(archive), commit],
        objects,
    )
    repo = scratch / "repository"
    extraction = unpack_index(archive, repo, expected)
    prepared_directories = prepare_repository_directories(
        expected, Path(env["OPAMROOT"]) / "repo/default.new"
    )
    with repository_server(tools, repo, scratch, env) as address:
        opam_address, rsync_wrapper = configure_repository_transport(
            tools, scratch, address, env
        )
        run(
            "opam-init",
            [
                str(opam),
                "init",
                "--bare",
                # Metadata only; ZIP remains unavailable, checksums mandatory.
                "--bypass-checks",
                "--require-checksums",
                "--no-setup",
                "--disable-sandboxing",
                "--no-opamrc",
                "--yes",
                "default",
                opam_address,
            ],
        )
        verify_index(Path(env["OPAMROOT"]) / "repo/default", expected)
        run(
            "compiler-plan",
            [
                str(opam),
                "switch",
                "create",
                "core036",
                COMPILER,
                "--dry-run",
                "--show-actions",
                "--yes",
                "--json=" + str(out / "compiler-plan.json"),
            ],
        )
    plans = sorted(out.glob("compiler-plan*.json"))
    if len(plans) != 1 or not plans[0].stat().st_size:
        raise ValueError("NonposOpamCompilerPlanMissing")
    verify_index(repo, expected)
    package = repo / "packages/ocaml-base-compiler/ocaml-base-compiler.5.3.0/opam"
    write_once(out / "compiler-package.opam", package.read_bytes())
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-opam-plan.v2",
            source_subject_ref=declaration["source_subject_ref"],
            bootstrap_ref=config["bootstrap_ref"],
            repository_commit=commit,
            repository=str(repo),
            repository_extraction=extraction,
            prepared_repository_directories=prepared_directories,
            repository_tree_sha256=hashlib.sha256(tree).hexdigest(),
            repository_transport="owned read-only loopback rsync",
            opam_repository_address=opam_address,
            repository_service=read(scratch / "repository-service/result.json"),
            rsync_wrapper_sha256=digest(rsync_wrapper),
            mutable_opamroot=env["OPAMROOT"],
            scratch=str(scratch),
            compiler=COMPILER,
            compiler_plan=str(plans[0]),
            compiler_plan_sha256=digest(plans[0]),
            compiler_package_sha256=digest(out / "compiler-package.opam"),
            environment={
                key: env[key]
                for key in (
                    "PATH",
                    "OPAMROOT",
                    "OPAMJOBS",
                    "OPAMDOWNLOADJOBS",
                    "OPAMREPOSITORYTARRING",
                    "MAKEFLAGS",
                    "DUNE_BUILD_JOBS",
                    "TMPDIR",
                    "OPAMNOENVNOTICE",
                    "GIT_CONFIG_NOSYSTEM",
                    "GIT_CONFIG_GLOBAL",
                    "GIT_TERMINAL_PROMPT",
                    "MALLOC_ARENA_MAX",
                    "CC",
                )
            },
            tools=tools,
            gcroots=gcroots,
            commands=commands,
            package_installation_requested=False,
            compiler_build_requested=False,
            zip_extractor_available=False,
            archive_extractors_before_build="mandatory; not established by a dry-run",
            ocaml_compiler_ready=False,
            new_translator_compiled=False,
            translation_backend_adopted=False,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
