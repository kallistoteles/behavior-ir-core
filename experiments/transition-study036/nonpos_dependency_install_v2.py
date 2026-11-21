"""Install only the frozen checked dependency solution, then run a linked probe."""

import argparse
import hashlib
import os
from pathlib import Path
import re
import shutil
import subprocess

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2
from nonpos_compiler_v2 import PACKAGES
from nonpos_dependencies_v2 import REQUESTS, dependency_solution
from nonpos_dependency_sources_v2 import HASH_LENGTHS
from nonpos_opam_plan_v2 import plan_environment
from nonpos_system_v2 import KEY, ROOTS

E = Path(__file__).resolve().parent
R = E.parents[1]


def installed_versions(raw):
    result = {}
    for line in raw.decode("utf-8").splitlines():
        if not line.strip():
            continue
        fields = line.split()
        if len(fields) != 2:
            raise ValueError("NonposInstalledVersionColumns")
        name, version = fields
        if (
            name in result
            or re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9+_.-]{0,127}", name) is None
            or re.fullmatch(r"[A-Za-z0-9+_.~=\-]{1,128}", version) is None
        ):
            raise ValueError("NonposInstalledVersionRow")
        result[name] = version
    return result


def seed_cache(payload, cache, expected):
    if not set(expected) & {"sha256", "sha512"} or any(
        key not in HASH_LENGTHS
        or re.fullmatch(r"[a-f0-9]{" + str(HASH_LENGTHS.get(key, 0)) + "}", value)
        is None
        for key, value in expected.items()
    ):
        raise ValueError("NonposSeedHashContext")
    hashes = {key: hashlib.new(key) for key in expected}
    with payload.open("rb") as source:
        while chunk := source.read(64 * 1024):
            for hashed in hashes.values():
                hashed.update(chunk)
    if {key: hashed.hexdigest() for key, hashed in hashes.items()} != expected:
        raise ValueError("NonposSeedSourceHash")
    result = []
    for algorithm, value in sorted(expected.items()):
        path = cache / algorithm / value[:2] / value
        path.parent.mkdir(parents=True, exist_ok=True)
        if path.exists() or path.is_symlink():
            if (
                path.is_symlink()
                or not path.is_file()
                or path.stat().st_size != payload.stat().st_size
            ):
                raise ValueError("NonposSeedExistingFile")
            with path.open("rb") as current, payload.open("rb") as original:
                while chunk := original.read(64 * 1024):
                    if current.read(len(chunk)) != chunk:
                        raise ValueError("NonposSeedExistingBytes")
        else:
            partial = path.with_name(path.name + ".core036-partial")
            with payload.open("rb") as source, partial.open("xb") as target:
                shutil.copyfileobj(source, target, 64 * 1024)
            if digest(partial) != digest(payload):
                raise ValueError("NonposSeedCopyBytes")
            os.link(partial, path)
            partial.unlink()
        result.append(str(path))
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    work = (
        R / "specs/036-core-transition-feasibility/evidence/v2" / declaration["work_id"]
    )
    refs = RootRegistry({"repository": R, "private": private, "work": work})
    out = Path(args.out)
    name = declaration["record_id"]
    if out != private / "nonpos-dependency-install" / name or out.exists():
        raise ValueError("NonposDependencyInstallOutputOwnership")
    config = read(E / "nonpos-dependency-install-inputs-v2.json")
    if (
        set(config) != {"format", "sources_ref", "checkpoint_ref", "nix"}
        or config["format"] != "core036.nonpos-dependency-install-inputs.v2"
    ):
        raise ValueError("NonposDependencyInstallContext")
    checkpoint_path = refs.verify(config["checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(config["checkpoint_ref"])
    if (
        checkpoint["stage_outcome"] != "succeeded"
        or refs.verify(config["sources_ref"])
        != private
        / "nonpos-dependency-sources"
        / checkpoint["attempt_id"]
        / "result.json"
    ):
        raise ValueError("NonposDependencyInstallSourcesNotClosed")
    sources = refs.read(config["sources_ref"])
    if sources["all_dependency_sources_verified"] is not True:
        raise ValueError("NonposDependencyInstallUnverifiedSources")
    dependency = refs.read(sources["plan_ref"])
    compiler = refs.read(dependency["compiler_ref"])
    system = refs.read(sources["system_ref"])
    if (
        system["signatures_and_contents_verified"] is not True
        or system["gmp_native_result"] != "6.3.0/6.3.0:42"
    ):
        raise ValueError("NonposDependencyInstallSystemReadiness")
    expected = {tuple(row) for row in sources["packages"]}
    if expected != {tuple(row) for row in dependency["packages"]}:
        raise ValueError("NonposDependencyInstallPlanChanged")
    original_plan = refs.read(compiler["plan_ref"])
    bootstrap = refs.read(original_plan["bootstrap_ref"])
    opam = Path(bootstrap["executable"])
    if (
        opam != private / "nonpos-opam-bootstrap/a0274/opam-2.3.0-x86_64-linux"
        or digest(opam) != bootstrap["executable_sha256"]
    ):
        raise ValueError("NonposDependencyInstallOpamBytes")
    tools = original_plan["tools"]
    for tool in tools.values():
        if digest(tool["path"]) != tool["sha256"]:
            raise ValueError("NonposDependencyInstallToolBytes")
    prefix, opamroot = (
        Path(compiler["compiler_prefix"]),
        Path(compiler["mutable_opamroot"]),
    )
    if prefix != opamroot / "core036" or not opamroot.is_relative_to(
        private / "tmp/nonpos-opam-plan"
    ):
        raise ValueError("NonposDependencyInstallCompilerOwnership")
    for label in ("ocamlc", "ocamlopt"):
        if (
            Path(compiler[label]) != prefix / "bin" / label
            or digest(compiler[label]) != compiler[label + "_sha256"]
        ):
            raise ValueError("NonposDependencyInstallCompilerBytes")
    if digest(system["pkg_config"]) != system["pkg_config_sha256"]:
        raise ValueError("NonposDependencyInstallPkgConfigBytes")
    pc = Path(system["pkg_config_environment"]["PKG_CONFIG_PATH"]) / "gmp.pc"
    if digest(pc) != system["relocated_gmp_pc_sha256"]:
        raise ValueError("NonposDependencyInstallGmpMetadata")
    check_prepared_native_v2(E / "toolchain-v2.json")
    out.mkdir(parents=True)
    scratch = private / "tmp/nonpos-dependency-install" / name
    scratch.mkdir(parents=True, exist_ok=False)
    (scratch / "tmp").mkdir()
    env = plan_environment(tools, scratch, os.environ)
    for key in list(env):
        if key.startswith(("OCAML", "CAML_", "PKG_CONFIG", "NIX_CONFIG", "NIX_REMOTE")):
            env.pop(key)
    env.update(
        OPAMROOT=str(opamroot),
        OPAMSWITCH="core036",
        OPAMKEEPLOGS="true",
        PATH=str(prefix / "bin")
        + os.pathsep
        + str(Path(system["pkg_config"]).parent)
        + os.pathsep
        + env["PATH"],
        LD_LIBRARY_PATH=system["gmp_library_directory"],
        **system["pkg_config_environment"],
    )
    commands = []

    def run(label, argv, seconds=300):
        log = out / "commands" / label
        log.mkdir(parents=True)
        with (
            (log / "stdout.txt").open("xb") as stdout,
            (log / "stderr.txt").open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=scratch,
                env=env,
                stdout=stdout,
                stderr=stderr,
                timeout=seconds,
                check=False,
            )
        row = dict(
            label=label,
            argv=argv,
            exit_code=result.returncode,
            stdout_sha256=digest(log / "stdout.txt"),
            stderr_sha256=digest(log / "stderr.txt"),
        )
        write_once(log / "result.json", row)
        commands.append(row)
        if result.returncode:
            raise ValueError("NonposDependencyInstallCommand:" + label)
        return (log / "stdout.txt").read_bytes()

    nix = config["nix"]["path"]
    if (
        nix != "/nix/store/f82xir6jh4ad169dpcs8hf32pjzs7sgy-nix-2.34.8/bin/nix"
        or digest(nix) != config["nix"]["sha256"]
    ):
        raise ValueError("NonposDependencyInstallNixBytes")
    system_name = refs.verify(sources["system_ref"]).parent.name
    uri = "local?root=" + str(
        private / "tmp/nonpos-system" / system_name / "private-store"
    )
    if system["private_store_uri"] != uri:
        raise ValueError("NonposDependencyInstallPrivateStoreOwnership")
    run(
        "verify-system-closure",
        [
            nix,
            "--extra-experimental-features",
            "nix-command",
            "--option",
            "builders",
            "",
            "--option",
            "trusted-public-keys",
            KEY,
            "--max-jobs",
            "0",
            "store",
            "verify",
            "--store",
            uri,
            "--recursive",
            "--sigs-needed",
            "1",
            *ROOTS,
        ],
        600,
    )
    for label in ("ocamlc", "ocamlopt"):
        if run(label + "-version", [compiler[label], "-version"]).strip() != b"5.3.0":
            raise ValueError("NonposDependencyInstallCompilerVersion")
    list_args = [str(opam), "list", "--installed", "--short", "--columns=name,version"]
    before = installed_versions(run("installed-before", list_args))
    if before != dict(PACKAGES):
        raise ValueError("NonposDependencyInstallUnexpectedInitialState")
    seeded = []
    if len(sources["source_receipts"]) != sources["unique_sources"]:
        raise ValueError("NonposDependencyInstallSourceCount")
    for reference in sources["source_receipts"]:
        receipt = refs.read(reference)
        payload = refs.verify(receipt["payload_ref"])
        if receipt["asset"]["hashes"] != receipt["hashes"]:
            raise ValueError("NonposDependencyInstallSourceIdentity")
        seeded.append(
            dict(
                receipt_ref=reference,
                cache_paths=seed_cache(
                    payload, opamroot / "download-cache", receipt["hashes"]
                ),
            )
        )
    write_once(out / "seeded-sources.json", seeded)
    args = [
        str(opam),
        "install",
        *REQUESTS,
        "--require-checksums",
        "--no-depexts",
        "--yes",
    ]
    run(
        "confirm-plan",
        [
            *args,
            "--dry-run",
            "--show-actions",
            "--json=" + str(out / "confirmed-plan.json"),
        ],
    )
    required = {re.split(r"[<>=!]", value, maxsplit=1)[0] for value in REQUESTS}
    if (
        set(dependency_solution(read(out / "confirmed-plan.json"), required))
        != expected
    ):
        raise ValueError("NonposDependencyInstallChangedSolution")
    run(
        "dependency-build",
        [*args, "--json=" + str(out / "dependency-build.json")],
        3000,
    )
    if (
        set(dependency_solution(read(out / "dependency-build.json"), required))
        != expected
    ):
        raise ValueError("NonposDependencyInstallActualSolution")
    installed = installed_versions(run("installed-after", list_args))
    if installed != {**dict(PACKAGES), **dict(expected)}:
        raise ValueError("NonposDependencyInstallActualVersions")
    for label in ("ocamlc", "ocamlopt"):
        if digest(compiler[label]) != compiler[label + "_sha256"]:
            raise ValueError("NonposDependencyInstallCompilerMutated")
    dune, ocamlfind = prefix / "bin/dune", prefix / "bin/ocamlfind"
    if (
        run("dune-version", [str(dune), "--version"]).strip()
        != dict(expected)["dune"].encode()
    ):
        raise ValueError("NonposDependencyInstallDuneVersion")
    run("findlib-configuration", [str(ocamlfind), "printconf"])
    source = scratch / "DependencySmoke.ml"
    write_once(
        source,
        b"let () = let n = Z.add (Z.of_int 19) (Z.of_int 23) in print_endline (Yojson.Safe.to_string (\x60Int (Z.to_int n)))\n",
    )
    emitted = scratch / "dependency-smoke"
    run(
        "compile-linked-smoke",
        [
            str(ocamlfind),
            "ocamlopt",
            "-package",
            "zarith,yojson",
            "-linkpkg",
            "-o",
            str(emitted),
            str(source),
        ],
    )
    if run("run-linked-smoke", [str(emitted)]).strip() != b"42":
        raise ValueError("NonposDependencyInstallSmoke")
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-dependency-install.v2",
            source_subject_ref=declaration["source_subject_ref"],
            sources_ref=config["sources_ref"],
            compiler_ref=dependency["compiler_ref"],
            system_ref=sources["system_ref"],
            packages=sorted(expected),
            installed_versions=installed,
            commands=commands,
            seeded_source_count=len(seeded),
            compiler_unchanged=True,
            compiler_prefix=str(prefix),
            mutable_opamroot=str(opamroot),
            dune=str(dune),
            dune_sha256=digest(dune),
            ocamlfind=str(ocamlfind),
            ocamlfind_sha256=digest(ocamlfind),
            smoke_executable_sha256=digest(emitted),
            smoke_result="42",
            dependencies_installed=True,
            new_translator_compiled=False,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
