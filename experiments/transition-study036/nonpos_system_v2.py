"""Private signed substitutes and real pkg-config/GMP readiness; no shared writes."""

import argparse
import os
from pathlib import Path
import re
import shlex
import subprocess

from analysis_runtime_probe import interpreter
from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2
from nonpos_opam_plan_v2 import plan_environment

E = Path(__file__).resolve().parent
R = E.parents[1]
KEY = "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
PKG = "/nix/store/0wrwiqca5zm6mlprx3b37ssf051r5l2m-pkgconf-2.5.1"
PKGLIB = "/nix/store/hpx33nji2bd0nrfn1ms6rrdpri6ss6rz-pkgconf-2.5.1-lib"
GMPDEV = "/nix/store/sp5vax17vhyj83bn75l00ljqq9a26afa-gmp-6.3.0-dev"
GMP = "/nix/store/02zq5w04mijwg75bv1gdbij4vjxvcjws-gmp-6.3.0"
ROOTS = [PKG, PKGLIB, GMPDEV, GMP]
PATH_PATTERN = r"/nix/store/[0-9a-df-np-sv-z]{32}-[A-Za-z0-9+_.=\-]+"


def private_store_uri(private, scratch):
    private, scratch = Path(private), Path(scratch)
    if ".." in scratch.parts or not scratch.resolve().is_relative_to(
        private.resolve() / "tmp"
    ):
        raise ValueError("NonposSystemStoreOwnership")
    root = scratch / "private-store"
    if root.exists() or root.is_symlink():
        raise FileExistsError(root)
    return "local?root=" + str(root)


def validate_closure(rows, roots):
    if (
        not isinstance(rows, dict)
        or not 1 <= len(rows) <= 128
        or not set(roots) <= set(rows)
    ):
        raise ValueError("NonposSystemClosureContext")
    total = 0
    for path, row in rows.items():
        if (
            re.fullmatch(PATH_PATTERN, path) is None
            or not isinstance(row, dict)
            or type(row.get("narSize")) is not int
            or not 0 < row["narSize"] <= 128 * 1024**2
            or not isinstance(row.get("narHash"), str)
            or re.fullmatch(r"sha256-[A-Za-z0-9+/]{43}=", row["narHash"]) is None
            or not isinstance(row.get("references"), list)
            or not set(row["references"]) <= set(rows)
            or not isinstance(row.get("signatures"), list)
            or not any(
                isinstance(sig, str) and sig.startswith("cache.nixos.org-1:")
                for sig in row["signatures"]
            )
        ):
            raise ValueError("NonposSystemClosureMetadata")
        total += row["narSize"]
    if total > 512 * 1024**2:
        raise ValueError("NonposSystemClosureSize")
    return total


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
    if out != private / "nonpos-system" / name or out.exists():
        raise ValueError("NonposSystemOutputOwnership")
    config = read(E / "nonpos-system-inputs-v2.json")
    if (
        set(config) != {"format", "plan_ref", "checkpoint_ref", "nix", "derivations"}
        or config["format"] != "core036.nonpos-system-inputs.v2"
    ):
        raise ValueError("NonposSystemContext")
    checkpoint_path = refs.verify(config["checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(config["checkpoint_ref"])
    if (
        checkpoint["stage_outcome"] != "succeeded"
        or refs.verify(config["plan_ref"])
        != private / "nonpos-dependencies" / checkpoint["attempt_id"] / "result.json"
    ):
        raise ValueError("NonposSystemDependencyPlan")
    dependency = refs.read(config["plan_ref"])
    if dependency["source_subject_ref"] != checkpoint["source_subject_ref"] or not {
        ("conf-gmp", "5"),
        ("conf-pkg-config", "5"),
    } <= {tuple(pair) for pair in dependency["packages"]}:
        raise ValueError("NonposSystemPrerequisiteScope")
    for reference in config["derivations"]:
        refs.verify(reference)
    compiler = refs.read(dependency["compiler_ref"])
    plan = refs.read(compiler["plan_ref"])
    tools = plan["tools"]
    for tool in tools.values():
        if digest(tool["path"]) != tool["sha256"]:
            raise ValueError("NonposSystemToolChanged")
    nix = config["nix"]["path"]
    if (
        nix != "/nix/store/f82xir6jh4ad169dpcs8hf32pjzs7sgy-nix-2.34.8/bin/nix"
        or digest(nix) != config["nix"]["sha256"]
    ):
        raise ValueError("NonposSystemNixBytes")
    check_prepared_native_v2(E / "toolchain-v2.json")
    out.mkdir(parents=True)
    scratch = private / "tmp/nonpos-system" / name
    scratch.mkdir(parents=True, exist_ok=False)
    (scratch / "tmp").mkdir()
    uri = private_store_uri(private, scratch)
    env = plan_environment(tools, scratch, os.environ)
    for key in list(env):
        if key.startswith(("NIX_", "PKG_CONFIG")):
            env.pop(key)
    env.update(
        NIX_REMOTE=uri,
        NIX_USER_CONF_FILES=os.devnull,
        XDG_CACHE_HOME=str(scratch / "metadata-cache"),
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
            raise ValueError("NonposSystemCommand:" + label)
        return (log / "stdout.txt").read_bytes()

    common = [
        nix,
        "--extra-experimental-features",
        "nix-command",
        "--option",
        "builders",
        "",
        "--option",
        "substituters",
        "",
        "--option",
        "trusted-public-keys",
        KEY,
        "--option",
        "require-sigs",
        "true",
        "--max-jobs",
        "0",
    ]
    run(
        "remote-closure",
        [
            *common,
            "path-info",
            "--store",
            "https://cache.nixos.org",
            "--recursive",
            "--json",
            "--json-format",
            "1",
            *ROOTS,
        ],
    )
    closure = read(out / "commands/remote-closure/stdout.txt")
    total = validate_closure(closure, ROOTS)
    write_once(
        out / "closure-admission.json",
        dict(
            paths=len(closure),
            uncompressed_nar_bytes=total,
            scope="metadata admission only; signatures/content verified by Nix copy and store verify before execution",
        ),
    )
    run(
        "copy-private-store",
        [*common, "copy", "--from", "https://cache.nixos.org", "--to", uri, *ROOTS],
        1200,
    )
    run(
        "verify-private-store",
        [
            *common,
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
    store = scratch / "private-store/nix/store"

    def physical(logical):
        return store / Path(logical).relative_to("/nix/store")

    pkg = physical(PKG) / "bin/pkgconf"
    if not pkg.resolve().is_relative_to(store.resolve()):
        raise ValueError("NonposSystemExecutableEscape")
    loader = interpreter(pkg)
    if loader is None or not Path(loader).is_relative_to("/nix/store"):
        raise ValueError("NonposSystemPkgconfInterpreter")
    runtime_loader = physical(loader)
    if not runtime_loader.is_file():
        raise ValueError("NonposSystemMissingPrivateLoader")
    library_dirs = [
        runtime_loader.parent,
        physical(PKGLIB) / "lib",
        physical(GMP) / "lib",
    ]
    library_dirs += [
        physical(path) / "lib"
        for path in sorted(closure)
        if (physical(path) / "lib").is_dir()
    ]
    library_dirs = list(dict.fromkeys(map(str, library_dirs)))
    prefix = [
        str(runtime_loader),
        "--library-path",
        os.pathsep.join(library_dirs),
        "--argv0",
        "pkg-config",
        str(pkg),
    ]
    wrappers = scratch / "wrappers"
    wrappers.mkdir()
    wrapper = wrappers / "pkg-config"
    write_once(
        wrapper,
        (
            "#!" + tools["sh"]["path"] + "\nexec " + shlex.join(prefix) + ' "$@"\n'
        ).encode(),
    )
    wrapper.chmod(0o500)
    pc = physical(GMPDEV) / "lib/pkgconfig/gmp.pc"
    pc_bytes = pc.read_bytes()
    text = pc_bytes.decode("utf-8")
    for logical in (GMPDEV, GMP):
        text = text.replace(logical, str(physical(logical)))
    metadata = scratch / "pkgconfig"
    metadata.mkdir()
    write_once(metadata / "gmp.pc", text.encode())
    env.update(
        PATH=str(wrappers) + os.pathsep + env["PATH"],
        PKG_CONFIG_PATH=str(metadata),
        PKG_CONFIG_LIBDIR=str(metadata),
    )
    run("pkg-config-help", [str(wrapper), "--help"])
    version = run("pkg-config-version", [str(wrapper), "--version"]).decode().strip()
    if (
        run("gmp-metadata-version", [str(wrapper), "--modversion", "gmp"]).strip()
        != b"6.3.0"
    ):
        raise ValueError("NonposSystemGmpMetadataVersion")
    cflags = shlex.split(run("gmp-cflags", [str(wrapper), "--cflags", "gmp"]).decode())
    libs = shlex.split(run("gmp-libs", [str(wrapper), "--libs", "gmp"]).decode())
    include, library = physical(GMPDEV) / "include", physical(GMP) / "lib"
    if (
        "-I" + str(include) not in cflags
        or "-L" + str(library) not in libs
        or "-lgmp" not in libs
    ):
        raise ValueError("NonposSystemGmpMetadataPaths")
    source = scratch / "gmp-smoke.c"
    write_once(
        source,
        b'#include <gmp.h>\n#include <stdio.h>\nint main(void) { mpz_t z; mpz_init_set_ui(z, 19); mpz_add_ui(z, z, 23); if (mpz_cmp_ui(z, 42)) return 3; printf("%d.%d.%d/%s:42\\n", __GNU_MP_VERSION, __GNU_MP_VERSION_MINOR, __GNU_MP_VERSION_PATCHLEVEL, gmp_version); mpz_clear(z); return 0; }\n',
    )
    executable = scratch / "gmp-smoke"
    run(
        "gmp-compile-link",
        [
            tools["cc"]["path"],
            *cflags,
            str(source),
            "-o",
            str(executable),
            *libs,
            "-Wl,-rpath," + str(library),
        ],
    )
    if run("gmp-native-run", [str(executable)]).strip() != b"6.3.0/6.3.0:42":
        raise ValueError("NonposSystemGmpNativeResult")
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-system-prerequisites.v2",
            source_subject_ref=declaration["source_subject_ref"],
            plan_ref=config["plan_ref"],
            copied_logical_roots=ROOTS,
            private_store_uri=uri,
            closure_paths=sorted(closure),
            uncompressed_nar_bytes=total,
            signatures_and_contents_verified=True,
            trusted_public_key=KEY,
            commands=commands,
            pkg_config=str(wrapper),
            pkg_config_sha256=digest(wrapper),
            pkgconf_version=version,
            pkgconf_binary_sha256=digest(pkg),
            private_loader_sha256=digest(runtime_loader),
            pkg_config_environment={
                key: env[key] for key in ("PKG_CONFIG_PATH", "PKG_CONFIG_LIBDIR")
            },
            original_gmp_pc_sha256=digest(pc),
            relocated_gmp_pc_sha256=digest(metadata / "gmp.pc"),
            gmp_include_directory=str(include),
            gmp_library_directory=str(library),
            gmp_native_result="6.3.0/6.3.0:42",
            smoke_executable_sha256=digest(executable),
            shared_store_mutation_requested=False,
            package_build_requested=False,
            dependencies_installed=False,
            new_translator_compiled=False,
            native_proof="unestablished",
            feature_complete=False,
            product_adoption="unactivated",
        ),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
