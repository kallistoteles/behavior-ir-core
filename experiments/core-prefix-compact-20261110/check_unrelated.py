"""Negative acceptance controls using a real old proof, never a prefix substitute."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[1]
OLD = HERE.parent / "stark-preflight-20261107"
RESULTS = HERE / "results"
RECORDER = ROOT / "experiments/proof-backend-screen-20261107/run_bounded_precise.py"
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
client = Path(json.loads((RESULTS / "host-binary-001.json").read_text())["path"])
assert sha(client) == json.loads((RESULTS / "host-binary-001.json").read_text())["sha256"]
helper = RESULTS / "confine-verifier"
proof = OLD / "results/stark-proof-001/artifacts/receipt.bin"
old_image = OLD / "results/combined-program-001/image.json"
new_image = RESULTS / "combined-program-001/image.json"
expected = RESULTS / "native-input-001/expected.json"
materials = [client, helper, proof, old_image, new_image, expected, Path(__file__)]
frozen = {str(p): sha(p) for p in materials}
freeze = RESULTS / "unrelated-control-inputs.json"
with freeze.open("x") as f:
    f.write(json.dumps({"files": frozen, "positive_prefix_proof": False, "g1_pass": False}, indent=2) + "\n")
rows = []
with tempfile.TemporaryDirectory(prefix="core-unrelated-proof-consumer-") as temporary:
    allowed = Path(temporary)
    binary = allowed / "client"
    shutil.copyfile(client, binary)
    binary.chmod(0o755)
    pp = allowed / "receipt.bin"
    ee = allowed / "expected.json"
    shutil.copyfile(proof, pp)
    shutil.copyfile(expected, ee)
    for name, image, error in [
        ("unrelated-correct-image-wrong-journal", old_image, "CompleteExpectedJournalDiffers"),
        ("unrelated-wrong-image", new_image, "ReceiptVerificationFailed"),
    ]:
        ii = allowed / (name + ".json")
        shutil.copyfile(image, ii)
        out = RESULTS / name
        # These controls remain inside the already-started 1800s proof scenario.
        start = json.loads((RESULTS / "actual-prefix-proof-001/receipt.json").read_text())["started_at_utc"]
        import datetime
        remaining = int(1800 - (time.time() - datetime.datetime.fromisoformat(start).timestamp()))
        if remaining <= 0:
            raise RuntimeError("OriginalScenarioBudgetExhausted")
        subprocess.run([sys.executable, str(RECORDER), "--out", str(out), "--wall-seconds", str(min(900, remaining)),
                        "--stack-mib", "64", str(helper), str(allowed),
                        str(ROOT / "docs/proposals/core-next-architecture/reference-fixture.jsonl"),
                        str(binary), "verify", str(pp), str(ii), str(ee)], cwd=allowed, check=False)
        r = json.loads((out / "receipt.json").read_text())
        stderr = (out / "stderr.txt").read_text()
        passed = r["exit_code"] == 1 and r["stop_reason"] is None and error in stderr and "CONFINED:" in stderr
        rows.append({"case": name, "targeted_rejection": passed, "expected_error": error,
                     "repository_and_network_probes": "CONFINED:" in stderr, "receipt": str(out / "receipt.json")})
assert all(sha(Path(p)) == h for p, h in frozen.items())
record = {"kind": "NegativeControlsOnlyNotAPrefixProof", "cases": rows,
          "all_targeted_rejections": all(r["targeted_rejection"] for r in rows),
          "positive_prefix_proof": False, "g1_pass": False}
with (RESULTS / "unrelated-control-assessment.json").open("x") as f:
    f.write(json.dumps(record, indent=2) + "\n")
print(json.dumps(record))
raise SystemExit(0 if record["all_targeted_rejections"] else 1)
