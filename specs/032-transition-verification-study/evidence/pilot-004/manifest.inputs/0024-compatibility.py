"""Audit protected user work/fixtures and the exact test-only production overlay."""
import hashlib
import json
from pathlib import Path
import subprocess
from early_campaign import write_new

def audit(root,output,*,gates_report):
    root=Path(root);inventory=json.loads((root/'specs/032-transition-verification-study/evidence/protected-inputs.json').read_text());changed=[];missing=[]
    allowed='crates/behavior-store/src/store/incremental/mod.rs'
    for collection in ('tracked_baseline_sha256','protected_sha256'):
        for name,digest in inventory[collection].items():
            path=root/name
            if not path.is_file():missing.append(name);continue
            raw=path.read_bytes()
            if hashlib.sha256(raw).hexdigest()!=digest:
                if collection=='tracked_baseline_sha256' and name==allowed:
                    restored=raw.removesuffix(b'\n#[cfg(test)]\nmod research032_tests;\n')
                    if hashlib.sha256(restored).hexdigest()==digest:continue
                changed.append({'path':name,'inventory':collection})
    # Independent git diff check: no other tracked production mutation is allowed.
    tracked=subprocess.check_output(['git','diff','--name-only',inventory['baseline']],cwd=root,text=True).splitlines()
    unexpected=[name for name in tracked if name!=allowed]
    gates=json.loads(Path(gates_report).read_text())
    result={'format':'core032.compatibility.v1','passed':not(changed or missing or unexpected) and gates.get('passed') is True,'protected_files':len(inventory['protected_sha256']),'tracked_baseline_files':len(inventory['tracked_baseline_sha256']),'changed_protected':changed,'missing':missing,'unexpected_tracked_changes':unexpected,'allowed_overlay':'only cfg(test) research032 module declaration; exact stripped baseline bytes verified','production_semantics_changed':False if not unexpected else None,'gates_report':str(gates_report),'branch':subprocess.check_output(['git','branch','--show-current'],cwd=root,text=True).strip(),'source_baseline':inventory['baseline']}
    write_new(output,result);return result
