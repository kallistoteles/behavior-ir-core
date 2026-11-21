"""Fetch exact official substitution metadata into owned storage, without repair."""

import argparse
import hashlib
import urllib.request
import os
import subprocess
from pathlib import Path
from artifact_io import read, write_once

E = Path(__file__).resolve().parent
ROOT = "/nix/store/7m5ds60a41w276hsx3rybv76x3609l6k-lean4-4.30.0"
DERIVER = "6wy0z2zc7gl2i6vxzcw59i9pdhk2g6b8-lean4-4.30.0.drv"


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--declaration", required=True)
    p.add_argument("--out", required=True)
    a = p.parse_args()
    d = read(a.declaration)
    private = Path(d["profile"]["roots"]["cache"])
    out = Path(a.out)
    if out != private / "lean-cache" / d["record_id"] or out.exists():
        raise ValueError("LeanCacheOutput")
    out.mkdir(parents=True)
    url = "https://cache.nixos.org/7m5ds60a41w276hsx3rybv76x3609l6k.narinfo"
    with urllib.request.urlopen(url, timeout=30) as stream:
        raw = stream.read(1024**2 + 1)
    if len(raw) > 1024**2:
        raise ValueError("NarInfoByteBound")
    write_once(out / "7m5ds60a41w276hsx3rybv76x3609l6k.narinfo", raw)
    fields = {}
    for line in raw.decode().splitlines():
        key, value = line.split(": ", 1)
        if key == "Sig":
            fields.setdefault("Sig", []).append(value)
        elif key in fields:
            raise ValueError("DuplicateNarInfoField")
        else:
            fields[key] = value
    if (
        fields["StorePath"] != ROOT
        or fields["Deriver"] != DERIVER
        or not fields.get("Sig")
    ):
        raise ValueError("ExactOfficialNarInfoMismatch")
    write_once(
        out / "cache-metadata.json",
        {
            "format": "core036.lean-cache-metadata.v2",
            "source_url": url,
            "sha256": hashlib.sha256(raw).hexdigest(),
            "fields": fields,
            "scope": "official source metadata captured; signature/content not yet verified; no shared paths changed",
            "source_subject_ref": d["source_subject_ref"],
        },
    )
    print("exact metadata sizes", fields.get("FileSize"), fields.get("NarSize"))
    if d["slots"] == ["lean-cache-download"]:
        size = int(fields["FileSize"])
        nar_size = int(fields["NarSize"])
        if not 0 < size < 1024**3 or not 0 < nar_size < 4 * 1024**3:
            raise ValueError("LeanSubstituteSizeAdmission")
        relative = fields["URL"]
        if (
            not relative.startswith("nar/")
            or "/.." in relative
            or not relative.endswith(".nar.zst")
        ):
            raise ValueError("LeanSubstituteURL")
        cache = out / "cache"
        destination = cache / relative
        destination.parent.mkdir(parents=True)
        write_once(
            cache / "nix-cache-info",
            b"StoreDir: /nix/store\nWantMassQuery: 1\nPriority: 40\n",
        )
        write_once(cache / "7m5ds60a41w276hsx3rybv76x3609l6k.narinfo", raw)
        partial = destination.with_suffix(destination.suffix + ".partial")
        with (
            urllib.request.urlopen(
                "https://cache.nixos.org/" + relative, timeout=60
            ) as stream,
            partial.open("xb") as target,
        ):
            copied = 0
            while chunk := stream.read(1024**2):
                copied += len(chunk)
                if copied > size:
                    raise ValueError("LeanSubstituteByteBound")
                target.write(chunk)
            target.flush()
            os.fsync(target.fileno())
        if copied != size:
            raise ValueError("LeanSubstituteTruncated")
        tools = read(E / "toolchain.json")["tools"]
        nix = str(Path(tools["nix-store"]["path"]).with_name("nix"))
        result = subprocess.run(
            [
                nix,
                "--extra-experimental-features",
                "nix-command",
                "hash",
                "file",
                "--type",
                "sha256",
                "--base32",
                str(partial),
            ],
            capture_output=True,
            check=False,
        )
        write_once(out / "filehash-stdout.txt", result.stdout)
        write_once(out / "filehash-stderr.txt", result.stderr)
        if result.returncode != 0 or result.stdout.decode().strip() != fields[
            "FileHash"
        ].removeprefix("sha256:"):
            raise ValueError("LeanSubstituteFileHash")
        partial.rename(destination)
        write_once(
            out / "download.json",
            {
                "format": "core036.lean-substitute.v2",
                "cache_root": str(cache),
                "compressed_bytes": size,
                "expected_nar_bytes": nar_size,
                "file_hash_verified": fields["FileHash"],
                "source_subject_ref": d["source_subject_ref"],
                "scope": "owned, hash-checked official substitute; Nix signature/NAR verification still required at import; shared store unchanged",
            },
        )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
