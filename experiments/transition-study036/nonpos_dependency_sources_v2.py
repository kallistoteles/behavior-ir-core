"""Check all frozen dependency sources before requesting any package build."""

import argparse
import hashlib
import os
from pathlib import Path, PurePosixPath
import posixpath
import re
import tarfile
import urllib.parse
import urllib.request

from artifact_io import RootRegistry, digest, read, write_once
from nonpos_dependencies_v2 import REQUESTS, dependency_solution

E = Path(__file__).resolve().parent
R = E.parents[1]
HASH_LENGTHS = {"md5": 32, "sha256": 64, "sha512": 128}


def dependency_source_specs(raw):
    headers = re.findall(r"(?m)^(?:url\b|extra-source\b)", raw)
    blocks = re.findall(r'(?m)^(url|extra-source\s+"([^"\n]+)")\s*\{([^{}]*)\}', raw)
    if len(headers) != len(blocks):
        raise ValueError("NonposDependencySourceSyntax")
    result = []
    for header, explicit, body in blocks:
        urls = re.findall(r'"(https?://[^"\s]+)"', body)
        pairs = re.findall(r'"([a-z0-9]+)=([a-z0-9]+)"', body)
        hashes = dict(pairs)
        if (
            len(urls) != 1
            or not urls[0].startswith("https://")
            or len(hashes) != len(pairs)
            or not set(hashes) & {"sha256", "sha512"}
            or any(
                key not in HASH_LENGTHS
                or re.fullmatch(
                    r"[a-f0-9]{" + str(HASH_LENGTHS.get(key, 0)) + "}", value
                )
                is None
                for key, value in hashes.items()
            )
        ):
            raise ValueError("NonposDependencySourceIdentity")
        url = urls[0]
        name = (
            explicit
            if header != "url"
            else PurePosixPath(urllib.parse.urlsplit(url).path).name
        )
        if re.fullmatch(r"[A-Za-z0-9][A-Za-z0-9._-]{0,127}", name) is None:
            raise ValueError("NonposDependencySourceName")
        if name.endswith((".tar.gz", ".tgz")):
            kind, bound = "tar.gz", 64 * 1024**2
        elif name.endswith((".tbz", ".tar.bz2")):
            kind, bound = "tbz", 64 * 1024**2
        elif explicit and name.endswith((".sh", ".c", ".install", ".ml.in")):
            kind, bound = "text", 1024**2
        else:
            raise ValueError("NonposDependencySourceFormat")
        result.append(
            dict(name=name, url=url, hashes=hashes, kind=kind, max_bytes=bound)
        )
    return result


def asset_key(asset):
    algorithm = "sha512" if "sha512" in asset["hashes"] else "sha256"
    return algorithm + "-" + asset["hashes"][algorithm]


def validate_payload(path, kind):
    if kind == "text":
        raw = path.read_bytes()
        if len(raw) > 1024**2 or b"\0" in raw:
            raise ValueError("NonposDependencyTextFormat")
        raw.decode("utf-8")
        return dict(entries=0, uncompressed_bytes=len(raw))
    if kind not in {"tar.gz", "tbz"}:
        raise ValueError("NonposDependencyArchiveFormat")
    with path.open("rb") as source:
        magic = source.read(4)
    if not (
        magic.startswith(b"\x1f\x8b\x08")
        if kind == "tar.gz"
        else magic[:3] == b"BZh" and magic[3:4] in b"123456789"
    ):
        raise ValueError("NonposDependencyArchiveMagic")
    count, total = 0, 0
    with tarfile.open(path, "r|gz" if kind == "tar.gz" else "r|bz2") as archive:
        for member in archive:
            count += 1
            total += member.size
            name = PurePosixPath(member.name)
            if (
                count > 128_000
                or total > 512 * 1024**2
                or member.size > 32 * 1024**2
                or name.is_absolute()
                or ".." in name.parts
                or not (
                    member.isfile()
                    or member.isdir()
                    or member.issym()
                    or member.islnk()
                )
            ):
                raise ValueError("NonposDependencyArchiveMember")
            if member.issym() or member.islnk():
                link = member.linkname
                target = posixpath.normpath(
                    posixpath.join(str(name.parent) if member.issym() else "", link)
                )
                if (
                    not link
                    or link.startswith("/")
                    or target == ".."
                    or target.startswith("../")
                ):
                    raise ValueError("NonposDependencyArchiveLink")
    if not count:
        raise ValueError("NonposDependencyEmptyArchive")
    return dict(entries=count, uncompressed_bytes=total)


def checked_download(
    asset, target, *, remaining=256 * 1024**2, opener=urllib.request.urlopen
):
    if (
        set(asset) != {"name", "url", "hashes", "kind", "max_bytes"}
        or not asset["url"].startswith("https://")
        or type(asset["max_bytes"]) is not int
        or not 0 < asset["max_bytes"] <= 64 * 1024**2
        or type(remaining) is not int
        or remaining <= 0
        or not isinstance(asset["hashes"], dict)
        or not set(asset["hashes"]) & {"sha256", "sha512"}
        or any(
            key not in HASH_LENGTHS
            or re.fullmatch(r"[a-f0-9]{" + str(HASH_LENGTHS.get(key, 0)) + "}", value)
            is None
            for key, value in asset["hashes"].items()
        )
    ):
        raise ValueError("NonposDependencyDownloadContext")
    if target.exists() or target.is_symlink():
        raise FileExistsError(target)
    partial = target.with_name(target.name + ".partial")
    count = 0
    hashes = {name: hashlib.new(name) for name in asset["hashes"]}
    request = urllib.request.Request(
        asset["url"], headers={"User-Agent": "core036-bounded-investigation"}
    )
    with opener(request, timeout=60) as source, partial.open("xb") as output:
        while raw := source.read(64 * 1024):
            count += len(raw)
            if count > min(asset["max_bytes"], remaining):
                raise ValueError("NonposDependencyDownloadBound")
            for hashed in hashes.values():
                hashed.update(raw)
            output.write(raw)
    actual = {name: hashed.hexdigest() for name, hashed in hashes.items()}
    if not count or actual != asset["hashes"]:
        raise ValueError("NonposDependencyDownloadDigest")
    validation = validate_payload(partial, asset["kind"])
    os.link(partial, target)
    partial.unlink()
    return dict(
        url=asset["url"],
        bytes=count,
        hashes=actual,
        sha256=digest(target),
        kind=asset["kind"],
        format_validation=validation,
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
    if out != private / "nonpos-dependency-sources" / name or out.exists():
        raise ValueError("NonposDependencySourcesOutputOwnership")
    config = read(E / "nonpos-dependency-sources-inputs-v2.json")
    if (
        set(config)
        != {
            "format",
            "plan_ref",
            "plan_checkpoint_ref",
            "system_ref",
            "system_checkpoint_ref",
            "contract_ref",
        }
        or config["format"] != "core036.nonpos-dependency-sources-inputs.v2"
    ):
        raise ValueError("NonposDependencySourcesContext")
    for label, prefix in (("plan", "nonpos-dependencies"), ("system", "nonpos-system")):
        checkpoint_path = refs.verify(config[label + "_checkpoint_ref"])
        RootRegistry({"attempt": checkpoint_path.parent}).verify_closed("attempt")
        checkpoint = refs.read(config[label + "_checkpoint_ref"])
        if (
            checkpoint["stage_outcome"] != "succeeded"
            or refs.verify(config[label + "_ref"])
            != private / prefix / checkpoint["attempt_id"] / "result.json"
        ):
            raise ValueError("NonposDependencySourcesPrerequisiteNotClosed")
    plan = refs.read(config["plan_ref"])
    system = refs.read(config["system_ref"])
    if (
        system["signatures_and_contents_verified"] is not True
        or system["gmp_native_result"] != "6.3.0/6.3.0:42"
        or system["plan_ref"] != config["plan_ref"]
    ):
        raise ValueError("NonposDependencySourcesSystemReadiness")
    solved = Path(plan["plan"])
    if (
        solved != refs.verify(config["plan_ref"]).parent / "dependency-plan.json"
        or digest(solved) != plan["plan_sha256"]
    ):
        raise ValueError("NonposDependencySourcesPlanBytes")
    packages = dependency_solution(
        read(solved), {re.split(r"[<>=!]", value, 1)[0] for value in REQUESTS}
    )
    contract = refs.read(config["contract_ref"])
    if (
        set(contract) != {"format", "packages", "assets"}
        or contract["format"] != "core036.nonpos-dependency-source-contract.v2"
    ):
        raise ValueError("NonposDependencySourceContract")
    compiler = refs.read(plan["compiler_ref"])
    original_plan = refs.read(compiler["plan_ref"])
    repo = Path(original_plan["repository"])
    selected, unique, original_count = [], {}, 0
    for row in contract["packages"]:
        if (
            set(row) != {"name", "version", "metadata_ref"}
            or (row["name"], row["version"]) not in packages
        ):
            raise ValueError("NonposDependencySourcePackage")
        path = refs.verify(row["metadata_ref"])
        if (
            path
            != repo
            / "packages"
            / row["name"]
            / (row["name"] + "." + row["version"])
            / "opam"
        ):
            raise ValueError("NonposDependencySourcePackagePath")
        selected.append((row["name"], row["version"]))
        for asset in dependency_source_specs(path.read_text()):
            original_count += 1
            key = asset_key(asset)
            if key in unique and {
                k: v for k, v in unique[key].items() if k != "name"
            } != {k: v for k, v in asset.items() if k != "name"}:
                raise ValueError("NonposDependencySourceAmbiguousSharedArchive")
            unique.setdefault(key, asset)
    assets = sorted(unique.values(), key=asset_key)
    if (
        sorted(selected) != packages
        or assets != contract["assets"]
        or len(assets) > 128
    ):
        raise ValueError("NonposDependencySourceSet")
    out.mkdir(parents=True)
    scratch = private / "tmp/nonpos-dependency-sources" / name
    scratch.mkdir(parents=True, exist_ok=False)
    downloads = scratch / "verified-sources"
    downloads.mkdir()
    receipts, total = [], 0
    for index, asset in enumerate(assets):
        key = asset_key(asset)
        target = downloads / key
        result = checked_download(asset, target, remaining=256 * 1024**2 - total)
        total += result["bytes"]
        result.update(
            asset=asset,
            payload_ref=refs.reference("private", str(target.relative_to(private))),
        )
        path = out / "sources" / (str(index).zfill(3) + ".json")
        write_once(path, result)
        receipts.append(refs.reference("private", str(path.relative_to(private))))
    for row in contract["packages"]:
        refs.verify(row["metadata_ref"])
    write_once(
        out / "result.json",
        dict(
            format="core036.nonpos-dependency-sources.v2",
            source_subject_ref=declaration["source_subject_ref"],
            plan_ref=config["plan_ref"],
            system_ref=config["system_ref"],
            contract_ref=config["contract_ref"],
            packages=packages,
            declared_source_occurrences=original_count,
            unique_sources=len(assets),
            verified_download_bytes=total,
            source_receipts=receipts,
            all_dependency_sources_verified=True,
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
