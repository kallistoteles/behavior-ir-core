"""Scoped checks only; do not follow path imports with rustfmt or rebuild old bins."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import time

HERE = Path(__file__).resolve().parent
OLD = HERE.parent / "stark-preflight-20261107"
out = HERE / "results/code-checks-001"
out.mkdir(exist_ok=False)
env = dict(os.environ, CARGO_HOME=str(OLD / "cargo-cache"),
           CARGO_INCREMENTAL="0", CARGO_BUILD_JOBS="1", RUSTFLAGS="-C target-cpu=x86-64")
base = ["--offline", "--locked", "--release", "--manifest-path", str(HERE / "host/Cargo.toml"),
        "--target-dir", str(OLD / "host-target")]
source = [HERE / p for p in ["compact.rs", "prefix_logic.rs", "host/src/main.rs",
                            "guest/src/main.rs", "sha-adapter/src/lib.rs"]]
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = {str(p): sha(p) for p in source}
commands = [
    ("fmt", ["rustfmt", "--check", "--edition", "2024", "--config", "skip_children=true", *map(str, source)]),
    ("test", ["cargo", "test", *base, "--bin", "core_compact_prefix_client", "--", "--nocapture"]),
    ("clippy", ["cargo", "clippy", *base, "--all-targets", "--", "-D", "warnings"]),
]
rows = []
for name, argv in commands:
    start = time.monotonic_ns()
    with (out / (name + ".stdout.txt")).open("xb") as stdout, (out / (name + ".stderr.txt")).open("xb") as stderr:
        r = subprocess.run(argv, env=env, stdout=stdout, stderr=stderr, check=False)
    rows.append({"check": name, "argv": argv, "exit_code": r.returncode, "wall_ns": time.monotonic_ns()-start})
assert all(sha(Path(p)) == h for p, h in frozen.items())
record = {"scope": "Only new standalone compact-prefix crate; not repository-wide product gates",
          "source_bytes_unchanged": True, "files": frozen, "checks": rows,
          "tools": {name: {"path": str(Path(shutil.which(name)).resolve()), "sha256": sha(Path(shutil.which(name)).resolve())}
                    for name in ["cargo", "rustc", "rustfmt", "cargo-clippy"]},
          "all_checks_passed": all(r["exit_code"] == 0 for r in rows), "g1_pass": False}
(out / "assessment.json").write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps({"checks": rows, "all_checks_passed": record["all_checks_passed"]}))
raise SystemExit(0 if record["all_checks_passed"] else 1)
