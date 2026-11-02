"""Fresh kernel check of concrete SHA and its numeric word/Boolean relation.

This is an engineering proof receipt. It does not certify a generated release,
actual Nova embedding, durable chain, performance quantiles or G1.
"""
import argparse
import json
from pathlib import Path
import re
import sys

parser = argparse.ArgumentParser()
parser.add_argument("--out", type=Path, required=True)
args = parser.parse_args()
proofs = Path("experiments/transition-study033/proofs").resolve()
sys.path.insert(0, str(proofs))
import check_targets

modules = {"Core033.IR": [], "Core033.Bits": [], "Core033.R1CS": []}
for name in ["SHA256", "SHA256Circuit", "SHA256Words", "SHA256Expr", "SHA256Symbolic"]:
    source = proofs / "Core033" / (name + ".lean")
    names = re.findall(r"^theorem ([A-Za-z_0-9]+)", source.read_text(), re.M)
    modules["Core033." + name] = ["Core033." + name + "." + n for n in names]
modules["Core033.KernelDecide"] = []
vector_names = re.findall(r"^theorem ([A-Za-z_0-9]+)", (proofs / "tests/SHA256Vectors.lean").read_text(), re.M)
modules["tests.SHA256Vectors"] = ["Core033.SHA256Vectors." + n for n in vector_names]
dependencies = sorted((proofs / ".lake/packages").glob("*/.lake/build/lib/lean"))
report = check_targets.check_modules(proofs, modules, args.out,
    audit_source=proofs / "Audit.lean", dependency_paths=dependencies)
print(json.dumps({"outcome": report["outcome"], "targets": len(report["theorems"]),
    "fresh_kernel_replay": report["fresh_kernel_replay"], "g1_pass": False,
    "release_relation_complete": False}))
