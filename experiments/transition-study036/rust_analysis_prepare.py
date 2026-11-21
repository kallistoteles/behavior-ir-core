"""Acquire the exact official native-host Rust distribution metadata only."""

import argparse
import hashlib
import tomllib
import urllib.request
from pathlib import Path

from artifact_io import read, write_once


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--declaration", required=True)
    parser.add_argument("--out", required=True)
    args = parser.parse_args()
    declaration = read(args.declaration)
    private = Path(declaration["profile"]["roots"]["cache"])
    out = Path(args.out)
    if out != private / "analysis-rust" / declaration["record_id"] or out.exists():
        raise ValueError("AnalysisRustOutput")
    out.mkdir(parents=True)
    prefix = "https://static.rust-lang.org/dist/2026-09-17/"
    if declaration["slots"] == ["analysis-rust-download"]:
        metadata_path = private / "analysis-rust/a0036/result.json"
        metadata = read(metadata_path)
        manifest_path = metadata_path.parent / "channel-rust-nightly.toml"
        if (
            hashlib.sha256(manifest_path.read_bytes()).hexdigest()
            != metadata["manifest_sha256"]
        ):
            raise ValueError("RustDistributionMetadataChanged")
        if {row["name"] for row in metadata["components"]} != {
            "rustc",
            "cargo",
            "rust-std",
            "rust-src",
        }:
            raise ValueError("RustNativeComponentSet")
        archives = []
        for component in metadata["components"]:
            if not component["url"].startswith(prefix):
                raise ValueError("RustPublisherURL")
            partial = out / (component["name"] + ".tar.xz.partial")
            hash_value, count = hashlib.sha256(), 0
            with (
                urllib.request.urlopen(component["url"], timeout=60) as stream,
                partial.open("xb") as target,
            ):
                size = stream.headers.get("Content-Length")
                if size is not None and int(size) > 512 * 1024**2:
                    raise ValueError("RustComponentByteAdmission")
                while chunk := stream.read(1024**2):
                    count += len(chunk)
                    if count > 512 * 1024**2:
                        raise ValueError("RustComponentByteBound")
                    target.write(chunk)
                    hash_value.update(chunk)
            if hash_value.hexdigest() != component["sha256"]:
                raise ValueError("RustComponentHash")
            destination = out / (component["name"] + ".tar.xz")
            partial.rename(destination)
            archives.append({**component, "path": str(destination), "bytes": count})
        write_once(
            out / "result.json",
            {
                "format": "core036.rust-component-archives.v2",
                "source_subject_ref": declaration["source_subject_ref"],
                "metadata_sha256": hashlib.sha256(
                    metadata_path.read_bytes()
                ).hexdigest(),
                "archives": archives,
                "scope": "complete hash-checked native-host official archives; not installed or executed; no rustup/cross-target acquisition",
                "product_adoption": "unactivated",
            },
        )
        return 0
    url = prefix + "channel-rust-nightly.toml"
    with urllib.request.urlopen(url, timeout=60) as stream:
        raw = stream.read(4 * 1024**2 + 1)
    if len(raw) > 4 * 1024**2:
        raise ValueError("RustDistributionManifestBound")
    write_once(out / "channel-rust-nightly.toml", raw)
    manifest = tomllib.loads(raw.decode("utf-8"))
    if manifest["date"] != "2026-09-17":
        raise ValueError("RustDistributionDate")
    host = "x86_64-unknown-linux-gnu"
    components = []
    for name in ("rustc", "cargo", "rust-std", "rust-src"):
        target = "*" if name == "rust-src" else host
        package = manifest["pkg"][name]
        row = package["target"][target]
        if not row["available"] or not row["xz_url"].startswith(prefix):
            raise ValueError("RustNativeComponentAvailability")
        digest = row["xz_hash"]
        if len(digest) != 64 or any(c not in "0123456789abcdef" for c in digest):
            raise ValueError("RustNativeComponentDigest")
        components.append(
            {
                "name": name,
                "target": target,
                "version": package["version"],
                "url": row["xz_url"],
                "sha256": digest,
            }
        )
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-rust-metadata.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "manifest_url": url,
            "manifest_sha256": hashlib.sha256(raw).hexdigest(),
            "components": components,
            "scope": "official dated metadata only; no compiler installation, rustup auto-install, cross-target acquisition or analysis readiness claim",
            "product_adoption": "unactivated",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
