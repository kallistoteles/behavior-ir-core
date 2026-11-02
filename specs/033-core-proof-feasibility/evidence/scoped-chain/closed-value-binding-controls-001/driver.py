"""Reject real changed artifact bytes and stale imports against a genuine receipt."""
import argparse,hashlib,json,shutil,subprocess,sys
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
root=Path('specs/033-core-proof-feasibility/evidence/scoped-chain').resolve();kernel=root/'signed-actual-matrix-001/kernel';actual=Path('experiments/transition-study033/generated/signed-positive-001/matrix.bin').resolve();raw=actual.read_bytes();report=json.loads((kernel/'report.json').read_text());changed=bytearray(raw);changed[-1]^=1;(out/'changed-matrix.bin').write_bytes(changed)
base=[sys.executable,'experiments/transition-study033/proofs/bind_checked_value.py','--module','CheckedSignedMatrix','--value','CheckedSignedMatrix.actualMatrix','--kind','matrix']
def reject(label,args,reason):
 command=base+args;result=subprocess.run(command,capture_output=True,check=False,timeout=360)
 (out/(label+'.stdout.txt')).write_bytes(result.stdout);(out/(label+'.stderr.txt')).write_bytes(result.stderr)
 if result.returncode==0 or reason.encode() not in result.stderr:raise RuntimeError('expected real rejection missing: '+label)
 return {'control':label,'exit_code':result.returncode,'rejection':reason,'command':command}
controls=[reject('changed-complete-actual-binary',['--kernel',str(kernel),'--expected',str(out/'changed-matrix.bin'),'--out',str(out/'changed-binding')],'checked logical data value differs from complete actual artifact bytes')]
stale=out/'stale-kernel';stale.mkdir();(stale/'compiled').symlink_to(kernel/'compiled',target_is_directory=True);(stale/'source-snapshot').symlink_to(kernel/'source-snapshot',target_is_directory=True)
relative=next(iter(report['seeded_modules']));report['seeded_modules'][relative]['sha256']='0'*64;(stale/'report.json').write_text(json.dumps(report)+'\n')
controls.append(reject('stale-transitive-compiled-input',['--kernel',str(stale),'--expected',str(actual),'--out',str(out/'stale-binding')],'checked imported module changed:'))
if actual.read_bytes()!=raw:raise RuntimeError('genuine actual artifact changed')
receipt={'format_version':'core033.checked-value-binding-controls.v1','outcome':'PassedRejectionControls','controls':controls,'genuine_matrix_sha256':hashlib.sha256(raw).hexdigest(),'scope':'data/file binding rejection controls only; does not replace fresh mathematical checking','g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,sort_keys=True,indent=2)+'\n');print(json.dumps(receipt))
