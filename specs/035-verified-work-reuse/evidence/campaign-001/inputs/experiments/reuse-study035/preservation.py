"""Read only selected old bindings; never enumerate the historical archive."""

import hashlib
import json
from pathlib import Path
from artifact_io import bounded_read, strict_loads, write_once

ROOT = Path(__file__).resolve().parents[2]


def check(out):
    catalog = strict_loads(
        bounded_read(
            ROOT / "specs/035-verified-work-reuse/inputs/protected-inputs.json"
        )
    )
    observations = []
    for ref in catalog["manifests"]:
        path = ROOT / ref["path"]
        raw = path.read_bytes()
        if hashlib.sha256(raw).hexdigest() != ref["sha256"]:
            raise ValueError("HistoricalManifestChanged")
        manifest = json.loads(
            raw
        )  # Hash-verified legacy diagnostics, never semantic wire.
        for name, digest in manifest["files"].items():
            p = Path(name)
            p = p if p.is_absolute() else ROOT / p
            if not p.resolve().is_relative_to(ROOT.resolve()):
                raise ValueError("HistoricalInputOutsideRoot")
            h = hashlib.sha256()
            with p.open("rb") as f:
                for chunk in iter(lambda: f.read(1024**2), b""):
                    h.update(chunk)
            if h.hexdigest() != digest:
                raise ValueError("HistoricalInputChanged:" + name)
        observations.append(
            {
                "path": ref["path"],
                "sha256": ref["sha256"],
                "verified_bindings": len(manifest["files"]),
            }
        )
    unrelated = [
        {"path": p, "present": (ROOT / p).is_file()}
        for p in catalog["unrelated_artifacts_present_only"]
    ]
    if not all(p["present"] for p in unrelated):
        raise ValueError("UnrelatedArtifactMissing")
    result = {
        "format": "core035.preservation.v1",
        "operational": "completed",
        "manifests": observations,
        "unrelated": unrelated,
        "scope": "Only explicitly selected old bindings; unrelated presence checked without reading huge artifacts",
        "product_adoption": "unactivated",
    }
    write_once(out, result)
    return result


if __name__ == "__main__":
    import sys

    check(Path(sys.argv[1]))
