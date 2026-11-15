"""Actual negative elaboration/axiom controls; not successful theorem evidence."""

import hashlib, json, os
from pathlib import Path
from check_proofs import audit_source, LEAN
from recorder import run

HERE = Path(__file__).resolve().parent


def controls(out, compiled, ledger=None):
    out = Path(out)
    out.mkdir(parents=True, exist_ok=False)
    env = {
        "LEAN_PATH": str(Path(compiled).resolve()),
        "PATH": str(LEAN / "bin") + ":" + os.environ["PATH"],
        "LEAN_NUM_THREADS": "1",
    }
    cases = [
        ("weakened", "Reuse035.finish_exact", "True", "Wrong theorem type"),
        ("missing", "Reuse035.nonexistent", "True", "Unknown constant"),
        ("definition", "Reuse035.witness", "State 1 1", "Not a theorem"),
        ("custom", "Reuse035.custom_false", "False", "Forbidden transitive axiom"),
    ]
    result = []
    for label, name, expected, message in cases:
        source = audit_source({"roots": [{"name": name, "expected_type": expected}]})
        if label == "custom":
            source = source.replace(
                "#reuse_audit Reuse035.custom_false",
                "namespace Reuse035\naxiom invalidControlAxiom : False\ntheorem custom_false : False := invalidControlAxiom\nend Reuse035\n#reuse_audit Reuse035.custom_false",
            )
        src = out / (label + ".lean")
        src.write_text(source)
        r = run(
            [str(LEAN / "bin/lean"), "-j1", "-M4096", str(src)],
            out / label,
            wall_seconds=120,
            env=env,
            ledger=ledger,
        )
        text = (out / label / "stdout.txt").read_text() + (
            out / label / "stderr.txt"
        ).read_text()
        intended = (
            r["exit_code"] == 1
            and not r["stop_reason"]
            and message.lower() in text.lower()
        )
        result.append(
            {
                "case": label,
                "intended_rejection": intended,
                "source_sha256": hashlib.sha256(source.encode()).hexdigest(),
                "receipt": label + "/receipt.json",
            }
        )
    (out / "result.json").write_text(
        json.dumps(
            {"format": "core035.actual-proof-controls.v1", "controls": result}, indent=2
        )
        + "\n"
    )
    return all(x["intended_rejection"] for x in result)


if __name__ == "__main__":
    import sys

    raise SystemExit(0 if controls(sys.argv[1], sys.argv[2]) else 1)
