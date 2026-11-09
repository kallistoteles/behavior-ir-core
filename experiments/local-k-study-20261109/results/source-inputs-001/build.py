"""Record actual tools inside the pinned Nix shell, then compile separately."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys

HERE = Path(__file__).resolve().parent
tools = {}
for name in ["cargo", "rustc", "cc"]:
    path = Path(shutil.which(name)).resolve()
    tools[name] = {
        "path": str(path),
        "sha256": hashlib.sha256(path.read_bytes()).hexdigest(),
        "version": subprocess.run([str(path), "--version"], check=True, capture_output=True,
                                  text=True).stdout.splitlines()[0],
    }
tools["flags"] = os.environ.get("RUSTFLAGS")
tools["rustc_verbose"] = subprocess.run(["rustc", "-vV"], check=True, capture_output=True,
                                        text=True).stdout
(HERE / f"results/tools-{sys.argv[1]}.json").write_text(json.dumps(tools, indent=2) + "\n")
subprocess.run(["cargo", "build", "--offline", "--locked", "--release",
                "--manifest-path", str(HERE / "Cargo.toml")], check=True)
