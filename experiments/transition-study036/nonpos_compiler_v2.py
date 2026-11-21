"""Build the exact planned compiler with checked sources and a real smoke test."""

import argparse
import hashlib
import os
from pathlib import Path, PurePosixPath
import posixpath
import re
import subprocess
import tarfile
import urllib.parse
import urllib.request

from artifact_io import RootRegistry, digest, read, write_once
from environment import check_prepared_native_v2
from nonpos_opam_plan_v2 import COMPILER, plan_environment, tree_entries, verify_index

E = Path(__file__).resolve().parent
R = E.parents[1]
PACKAGES = sorted(
    [
        ("base-bigarray", "base"),
        ("base-domains", "base"),
        ("base-effects", "base"),
        ("base-nnp", "base"),
        ("base-threads", "base"),
        ("base-unix", "base"),
        ("ocaml", "5.3.0"),
        ("ocaml-base-compiler", "5.3.0"),
        ("ocaml-compiler", "5.3.0"),
        ("ocaml-config", "3"),
        ("ocaml-options-vanilla", "1"),
    ]
)


def compiler_solution(plan):
    if (
        not isinstance(plan, dict)
        or plan.get("opam-version") != "2.3.0"
        or plan.get("switch") != "core036"
        or not isinstance(plan.get("solution"), list)
        or len(plan["solution"]) != len(PACKAGES)
    ):
        raise ValueError("NonposCompilerPlanContext")
    result = []
    for action in plan["solution"]:
        if not isinstance(action, dict) or set(action) != {"install"}:
            raise ValueError("NonposCompilerPlanAction")
        package = action["install"]
        if not isinstance(package, dict) or set(package) != {"name", "version"}:
            raise ValueError("NonposCompilerPlanPackage")
        result.append((package["name"], package["version"]))
    if sorted(result) != PACKAGES:
        raise ValueError("NonposCompilerPlanChanged")
    return sorted(result)


def source_specs(raw):
    headers = re.findall(r"(?m)^(?:url\b|extra-source\b)", raw)
    blocks = re.findall(r'(?m)^(url|extra-source\s+"([^"\n]+)")\s*\{([^{}]*)\}', raw)
    if len(headers) != len(blocks):
        raise ValueError("NonposCompilerSourceSyntax")
    result = []
    for header, explicit, body in blocks:
        urls = re.findall(r'"(https?://[^"\s]+)"', body)
        hashes = re.findall(r'"sha256=([a-f0-9]{64})"', body)
        if len(urls) != 1 or len(hashes) != 1 or not urls[0].startswith("https://"):
            raise ValueError("NonposCompilerSourceIdentity")
        url = urls[0]
        name = (
            explicit
            if header != "url"
            else PurePosixPath(urllib.parse.urlsplit(url).path).name
        )
        if re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9._-]{0,127}", name) is None:
            raise ValueError("NonposCompilerSourceName")
        if name.endswith(".tar.gz"):
            kind, bound = "tar.gz", 64 * 1024**2
        elif name.endswith((".install", ".ml.in")):
            kind, bound = "text", 256 * 1024
        else:
            raise ValueError("NonposCompilerSourceFormat")
        result.append(
            dict(name=name, url=url, sha256=hashes[0], kind=kind, max_bytes=bound)
        )
    return result


def validate_source_bytes(path, kind):
    if kind == "text":
        raw = path.read_bytes()
        if len(raw) > 256 * 1024 or b"\0" in raw:
            raise ValueError("NonposCompilerTextFormat")
        raw.decode("utf-8")
        return
    if kind != "tar.gz":
        raise ValueError("NonposCompilerArchiveFormat")
    count, total = 0, 0
    with tarfile.open(path, "r|gz") as archive:
        for member in archive:
            count += 1
            total += member.size
            name = PurePosixPath(member.name)
            if (
                count > 128_000
                or total > 256 * 1024**2
                or member.size > 16 * 1024**2
                or name.is_absolute()
                or ".." in name.parts
                or not (
                    member.isfile()
                    or member.isdir()
                    or member.issym()
                    or member.islnk()
                )
            ):
                raise ValueError("NonposCompilerArchiveMember")
            if member.issym() or member.islnk():
                link = member.linkname
                target = posixpath.normpath(
                    posixpath.join(str(name.parent) if member.issym() else "", link)
                )
                if (
                    link.startswith("/")
                    or target.startswith("../")
                    or not name.parts
                    or PurePosixPath(target).parts[0] != name.parts[0]
                ):
                    raise ValueError("NonposCompilerArchiveLink")
    if not count:
        raise ValueError("NonposCompilerEmptyArchive")


def download_source(spec, target, *, opener=urllib.request.urlopen):
    if (
        set(spec) != {"name", "url", "sha256", "kind", "max_bytes"}
        or not spec["url"].startswith("https://")
        or re.fullmatch(r"[a-f0-9]{64}", spec["sha256"]) is None
        or type(spec["max_bytes"]) is not int
        or not 0 < spec["max_bytes"] <= 64 * 1024**2
        or spec["kind"] not in {"text", "tar.gz"}
    ):
        raise ValueError("NonposCompilerDownloadContext")
    if target.exists() or target.is_symlink():
        raise FileExistsError(target)
    partial = target.with_name(target.name + ".partial")
    count, hashed = 0, hashlib.sha256()
    request = urllib.request.Request(
        spec["url"], headers={"User-Agent": "core036-bounded-investigation"}
    )
    with opener(request, timeout=60) as source, partial.open("xb") as output:
        while raw := source.read(64 * 1024):
            count += len(raw)
            if count > spec["max_bytes"]:
                raise ValueError("NonposCompilerDownloadBound")
            hashed.update(raw)
            output.write(raw)
    if not count or hashed.hexdigest() != spec["sha256"]:
        raise ValueError("NonposCompilerDownloadDigest")
    validate_source_bytes(partial, spec["kind"])
    os.link(partial, target)
    partial.unlink()
    return dict(
        url=spec["url"], bytes=count, sha256=hashed.hexdigest(), kind=spec["kind"]
    )


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
    if out != private / "nonpos-compiler" / name or out.exists():
        raise ValueError("NonposCompilerOutputOwnership")
    config = read(E / "nonpos-compiler-inputs-v2.json")
    if (
        set(config) != {"format", "plan_ref", "checkpoint_ref", "source_contract_ref"}
        or config["format"] != "core036.nonpos-compiler-inputs.v2"
    ):
        raise ValueError("NonposCompilerContext")
    checkpoint_path = refs.verify(config["checkpoint_ref"])
    RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
    checkpoint = refs.read(config["checkpoint_ref"])
    plan_path = refs.verify(config["plan_ref"])
    if (
        checkpoint["stage_outcome"] != "succeeded"
        or plan_path
        != private / "nonpos-opam-plan" / checkpoint["attempt_id"] / "result.json"
    ):
        raise ValueError("NonposCompilerPlanNotClosed")
    plan = refs.read(config["plan_ref"])
    if (
        plan["source_subject_ref"] != checkpoint["source_subject_ref"]
        or plan["compiler"] != COMPILER
    ):
        raise ValueError("NonposCompilerPlanSubject")
    solved = plan_path.parent / "compiler-plan.json"
    if (
        str(solved) != plan["compiler_plan"]
        or digest(solved) != plan["compiler_plan_sha256"]
    ):
        raise ValueError("NonposCompilerPlanBytes")
    compiler_solution(read(solved))
    contract = refs.read(config["source_contract_ref"])
    if (
        set(contract) != {"format", "repository_commit", "packages", "assets"}
        or contract["format"] != "core036.nonpos-compiler-source-contract.v2"
        or contract["repository_commit"] != plan["repository_commit"]
    ):
        raise ValueError("NonposCompilerSourceContract")
    repo = Path(plan["repository"])
    original = private / "tmp/nonpos-opam-plan" / plan["recovered_attempt"]
    if repo != original / "repository":
        raise ValueError("NonposCompilerRepositoryOwnership")
    selected, assets = [], []
    for row in contract["packages"]:
        if set(row) != {"name", "version", "metadata_ref"}:
            raise ValueError("NonposCompilerPackageContract")
        pair = (row["name"], row["version"])
        if pair not in PACKAGES:
            raise ValueError("NonposCompilerUnplannedPackage")
        path = refs.verify(row["metadata_ref"])
        if path != repo / "packages" / pair[0] / (pair[0] + "." + pair[1]) / "opam":
            raise ValueError("NonposCompilerPackagePath")
        selected.append(pair)
        assets.extend(source_specs(path.read_text()))
    if (
        sorted(selected) != PACKAGES
        or sorted(assets, key=lambda x: x["name"])
        != sorted(contract["assets"], key=lambda x: x["name"])
        or len(assets) != 4
        or len({a["name"] for a in assets}) != 4
    ):
        raise ValueError("NonposCompilerSourceSet")
    recovery = refs.read(plan["recovery_ref"])
    expected = tree_entries(refs.verify(recovery["tree_ref"]).read_bytes())
    from nonpos_opam_plan_v2 import verify_recovered_repository

    opamroot = verify_recovered_repository(
        original,
        expected,
        refs.verify(recovery["config_ref"]).read_bytes(),
        refs.verify(recovery["repositories_ref"]).read_bytes(),
    )
    bootstrap = refs.read(plan["bootstrap_ref"])
    opam = Path(bootstrap["executable"])
    if (
        opam != private / "nonpos-opam-bootstrap/a0274/opam-2.3.0-x86_64-linux"
        or digest(opam) != bootstrap["executable_sha256"]
    ):
        raise ValueError("NonposCompilerOpamBytes")
    tools = plan["tools"]
    for tool in tools.values():
        if (
            not Path(tool["path"]).is_relative_to("/nix/store")
            or digest(tool["path"]) != tool["sha256"]
        ):
            raise ValueError("NonposCompilerToolBytes")
    packages = sorted({str(Path(*Path(t["path"]).parts[:4])) for t in tools.values()})
    for index, package in enumerate(packages):
        link = (
            private
            / "gcroots"
            / plan["recovered_attempt"]
            / ("opam-tool-" + str(index))
        )
        if not link.is_symlink() or os.readlink(link) != package:
            raise ValueError("NonposCompilerToolRoot")
    check_prepared_native_v2(E / "toolchain-v2.json")
    out.mkdir(parents=True)
    scratch = private / "tmp/nonpos-compiler" / name
    scratch.mkdir(parents=True, exist_ok=False)
    (scratch / "tmp").mkdir()
    env = plan_environment(tools, scratch, os.environ)
    env["OPAMROOT"] = str(opamroot)
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
            raise ValueError("NonposCompilerCommand:" + label)
        return (log / "stdout.txt").read_bytes()

    downloads = scratch / "verified-sources"
    downloads.mkdir()
    receipts = [download_source(asset, downloads / asset["name"]) for asset in assets]
    write_once(out / "source-downloads.json", receipts)
    base = [
        str(opam),
        "switch",
        "create",
        "core036",
        COMPILER,
        "--require-checksums",
        "--no-depexts",
        "--yes",
    ]
    run(
        "confirm-plan",
        [
            *base,
            "--dry-run",
            "--show-actions",
            "--json=" + str(out / "confirmed-plan.json"),
        ],
    )
    compiler_solution(read(out / "confirmed-plan.json"))
    run("compiler-build", [*base, "--json=" + str(out / "compiler-build.json")], 3000)
    compiler_solution(read(out / "compiler-build.json"))
    prefix = opamroot / "core036"
    ocamlc, ocamlopt = prefix / "bin/ocamlc", prefix / "bin/ocamlopt"
    if (
        run("ocamlc-version", [str(ocamlc), "-version"]).strip() != b"5.3.0"
        or run("ocamlopt-version", [str(ocamlopt), "-version"]).strip() != b"5.3.0"
    ):
        raise ValueError("NonposCompilerVersion")
    run("ocamlopt-config", [str(ocamlopt), "-config"])
    source = scratch / "CompilerSmoke.ml"
    write_once(source, b"let () = print_endline (string_of_int (19 + 23))\n")
    emitted = scratch / "compiler-smoke"
    run("compile-native-smoke", [str(ocamlopt), "-o", str(emitted), str(source)])
    if run("run-native-smoke", [str(emitted)]).strip() != b"42":
        raise ValueError("NonposCompilerSmokeResult")
    verify_index(repo, expected)
    verify_index(opamroot / "repo/default", expected)
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-compiler.v2",
            source_subject_ref=declaration["source_subject_ref"],
            plan_ref=config["plan_ref"],
            source_contract_ref=config["source_contract_ref"],
            packages=PACKAGES,
            source_downloads=receipts,
            commands=commands,
            mutable_opamroot=str(opamroot),
            scratch=str(scratch),
            compiler_prefix=str(prefix),
            ocamlc=str(ocamlc),
            ocamlc_sha256=digest(ocamlc),
            ocamlopt=str(ocamlopt),
            ocamlopt_sha256=digest(ocamlopt),
            smoke_executable_sha256=digest(emitted),
            smoke_result="42",
            ocaml_compiler_ready=True,
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
