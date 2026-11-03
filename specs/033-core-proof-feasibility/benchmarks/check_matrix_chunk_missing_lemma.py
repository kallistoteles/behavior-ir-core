"""Negative control: chunk binding must reject a closure without its theorem."""
import json,subprocess,sys
from pathlib import Path
out=Path(sys.argv[1]).resolve();out.mkdir(exist_ok=False)
root=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/word-address-matrix-packet-003/kernel')
argv=[sys.executable,'experiments/transition-study033/proofs/bind_checked_value.py','--kernel',str(root),'--module','ActualAddressMatrixPacket','--value','ActualAddressMatrixPacket.actualMatrix','--kind','matrix','--expected','experiments/transition-study033/generated/word-address-001/matrix.bin','--out',str(out/'must-not-exist'),'--matrix-chunks']
r=subprocess.run(argv,capture_output=True,timeout=120,check=False);(out/'stdout.txt').write_bytes(r.stdout);(out/'stderr.txt').write_bytes(r.stderr)
if r.returncode==0 or b'matrix chunk encoding lemma must belong to the genuine fresh-checked closure' not in r.stderr or (out/'must-not-exist').exists():raise RuntimeError('missing checked encoder lemma did not fail before output')
receipt={'outcome':'RejectedMissingCheckedChunkLemma','exit_code':r.returncode,'command':argv,'no_binding_output_created':True,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
