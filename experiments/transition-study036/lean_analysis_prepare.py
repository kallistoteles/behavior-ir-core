"""Exact analysis Lean publisher metadata, separate from original Lean4.30."""

import argparse
import hashlib
import json
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
    if out != private / "analysis-lean" / declaration["record_id"] or out.exists():
        raise ValueError("AnalysisLeanOutput")
    out.mkdir(parents=True)
    if declaration["slots"] == ["analysis-lean-download"]:
        metadata_path = private / "analysis-lean/a0042/result.json"
        metadata = read(metadata_path)
        asset = metadata["asset"]
        expected_url = "https://github.com/leanprover/lean4/releases/download/v4.36.0-rc2/lean-4.36.0-rc2-linux.tar.zst"
        if asset["url"] != expected_url or not 0 < asset["bytes"] <= 1024**3:
            raise ValueError("LeanNativeArchiveAdmission")
        partial = out / (asset["name"] + ".partial")
        value, count = hashlib.sha256(), 0
        with (
            urllib.request.urlopen(asset["url"], timeout=60) as stream,
            partial.open("xb") as target,
        ):
            while chunk := stream.read(1024**2):
                count += len(chunk)
                if count > asset["bytes"]:
                    raise ValueError("LeanNativeArchiveByteBound")
                target.write(chunk)
                value.update(chunk)
        if count != asset["bytes"] or value.hexdigest() != asset["sha256"]:
            raise ValueError("LeanNativeArchiveHash")
        destination = out / asset["name"]
        partial.rename(destination)
        write_once(
            out / "result.json",
            {
                "format": "core036.analysis-lean-archive.v2",
                "source_subject_ref": declaration["source_subject_ref"],
                "asset": asset,
                "path": str(destination),
                "metadata_sha256": hashlib.sha256(
                    metadata_path.read_bytes()
                ).hexdigest(),
                "scope": "complete hash-checked analysis Lean archive only; not installed or kernel checked",
                "product_adoption": "unactivated",
            },
        )
        return 0
    url = "https://api.github.com/repos/leanprover/lean4/releases/tags/v4.36.0-rc2"
    request = urllib.request.Request(
        url, headers={"User-Agent": "core036-bounded-investigation"}
    )
    with urllib.request.urlopen(request, timeout=60) as stream:
        raw = stream.read(4 * 1024**2 + 1)
    if len(raw) > 4 * 1024**2:
        raise ValueError("LeanReleaseMetadataBound")
    metadata = json.loads(raw)
    if metadata["tag_name"] != "v4.36.0-rc2":
        raise ValueError("LeanReleaseTag")
    write_once(out / "release.json", raw)
    asset = next(
        row
        for row in metadata["assets"]
        if row["name"] == "lean-4.36.0-rc2-linux.tar.zst"
    )
    checksum = asset["digest"].removeprefix("sha256:")
    if len(checksum) != 64 or any(c not in "0123456789abcdef" for c in checksum):
        raise ValueError("LeanReleaseAssetDigest")
    write_once(
        out / "result.json",
        {
            "format": "core036.analysis-lean-metadata.v2",
            "source_subject_ref": declaration["source_subject_ref"],
            "metadata_url": url,
            "metadata_sha256": hashlib.sha256(raw).hexdigest(),
            "asset": {
                "name": asset["name"],
                "bytes": asset["size"],
                "sha256": checksum,
                "url": asset["browser_download_url"],
            },
            "scope": "exact analysis Lean4.36.0-rc2 native-host archive metadata only; no download, installation or kernel-readiness claim",
            "product_adoption": "unactivated",
        },
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
