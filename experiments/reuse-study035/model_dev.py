"""Sequential bounded development typechecks; never final proof authority."""

import json, os, sys, shutil, hashlib
from pathlib import Path
from recorder import run

E = Path(__file__).resolve().parent
F = E.parents[1] / "specs/035-verified-work-reuse"


def check(out, modules, base=None):
    out = Path(out)
    out.mkdir(parents=True, exist_ok=False)
    compiled = out / "compiled"
    compiled.mkdir()
    if base:
        shutil.copytree(base, compiled, dirs_exist_ok=True)
    snapshots = out / "sources"
    shutil.copytree(E / "proofs", snapshots)
    (out / "source-hashes.json").write_text(
        json.dumps(
            {
                str(p.relative_to(snapshots)): hashlib.sha256(
                    p.read_bytes()
                ).hexdigest()
                for p in snapshots.rglob("*")
                if p.is_file()
            },
            indent=2,
        )
    )
    lean = json.loads((E / "toolchain.json").read_text())["tools"]["lean"]["path"]
    env = {
        "LEAN_PATH": str(compiled),
        "PATH": str(Path(lean).parent) + ":" + os.environ["PATH"],
        "LEAN_NUM_THREADS": "1",
    }
    for module in modules:
        source = snapshots / Path(module.replace(".", "/")).with_suffix(".lean")
        target = compiled / Path(module.replace(".", "/")).with_suffix(".olean")
        target.parent.mkdir(parents=True, exist_ok=True)
        r = run(
            [lean, "-j1", "-M4096", "-o", str(target), str(source)],
            out / module,
            wall_seconds=180,
            env=env,
        )
        print(module, r["exit_code"], r["stop_reason"], flush=True)
        if r["exit_code"] != 0 or r["stop_reason"]:
            print(
                (out / module / "stdout.txt").read_text(),
                (out / module / "stderr.txt").read_text(),
            )
            return False
    return True


if __name__ == "__main__":
    modules = [
        "safety.Data",
        "safety.FieldOwnership",
        "safety.LifecycleData",
        "safety.LifecycleDependency",
        "Reuse035.State",
        "Reuse035.Reference",
        "Reuse035.Incremental",
        "Reuse035.ObservationModel",
        "Reuse035.Imports",
        "Reuse035.Projection",
    ] + sys.argv[2:]
    base = None
    if "--base" in sys.argv:
        at = sys.argv.index("--base")
        base = sys.argv[at + 1]
        modules = sys.argv[2:at]
    raise SystemExit(0 if check(sys.argv[1], modules, base) else 1)
