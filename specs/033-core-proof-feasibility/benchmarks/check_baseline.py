"""Read-only comparison with T001's protected baseline, including symlink bytes."""
import datetime
import hashlib
import json
import os
from pathlib import Path
import sys
import time


def check(root):
    root = Path(root).resolve()
    manifest = json.loads((root / "specs/033-core-proof-feasibility/evidence/baseline-manifest.json").read_text())
    started = time.monotonic_ns(); bad = []; verified = 0; size = 0
    for relative, expected in manifest["protected_files"].items():
        path = root / relative
        try:
            if expected["kind"] == "symlink" and path.is_symlink():
                raw = os.fsencode(os.readlink(path))
            elif expected["kind"] == "file" and not path.is_symlink():
                raw = path.read_bytes()
            else:
                bad.append(relative); continue
        except OSError:
            bad.append(relative); continue
        if len(raw) != expected["bytes"] or hashlib.sha256(raw).hexdigest() != expected["sha256"]:
            bad.append(relative)
        else:
            verified += 1; size += len(raw)
    return {"format_version": "core033.baseline-check.v1", "at": datetime.datetime.now(datetime.timezone.utc).isoformat(),
            "verified_files": verified, "verified_bytes": size, "modified_or_missing": bad,
            "wall_ns": time.monotonic_ns() - started, "g1_pass": False,
            "scope": "protected Core baseline, including symlink bytes; old project seal separately recorded at T001"}


if __name__ == "__main__":
    root, output = map(Path, sys.argv[1:])
    result = check(root)
    with output.open("x") as file:
        json.dump(result, file, indent=2); file.write("\n")
    print(json.dumps(result))
    raise SystemExit(3 if result["modified_or_missing"] else 0)
