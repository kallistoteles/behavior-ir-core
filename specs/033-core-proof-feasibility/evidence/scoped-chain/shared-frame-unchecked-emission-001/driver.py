"""Emit unchecked shared-program source/matrix from immutable compiled data.

Full source/matrix correspondence, all-byte bindings and the complete universal
sharing certificate remain independent requirements. This is not acceptance.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import sys

proofs = Path('experiments/transition-study033/proofs').resolve()
sys.path.insert(0, str(proofs))
import check_targets

parser = argparse.ArgumentParser()
parser.add_argument('--compiled-data', type=Path, required=True)
parser.add_argument('--artifact', type=Path, required=True)
parser.add_argument('--out', type=Path, required=True)
args = parser.parse_args()
root = args.compiled_data.resolve()
command = json.loads((root/'SegmentedFrameSharingData.compile.command.json').read_text())
source = Path(command['argv'][-1])
module = root/'compiled/SegmentedFrameSharingData.olean'
if command['exit_code'] != 0 or command['timed_out'] or not source.is_file() or not module.is_file():
    raise check_targets.ProofError('actual successful data compile required for emission only')
args.out.mkdir(exist_ok=False)
generator = proofs/'GenerateSharedFrameHashController.lean'
snapshot = args.out.resolve()/generator.name
shutil.copyfile(generator, snapshot)
shutil.copyfile(__file__, args.out/'driver.py')
paths = [root/'compiled', *sorted((proofs/'.lake/packages').glob('*/.lake/build/lib/lean'))]
env = dict(os.environ, LEAN_PATH=':'.join(map(str, paths)))
before = {str(file):hashlib.sha256(file.read_bytes()).hexdigest() for file in [source,module,generator]}
check_targets._call(['lean','-j1','--run',str(snapshot),str(args.artifact.resolve())],
                   cwd=args.out.resolve(),env=env,log=args.out.resolve()/'generation.txt')
if any(hashlib.sha256(Path(file).read_bytes()).hexdigest() != sha for file,sha in before.items()):
    raise check_targets.ProofError('emission input changed')
receipt = {'outcome':'EmittedUncheckedSharedCandidate','input_sha256':before,
    'artifacts':{file.name:{'bytes':file.stat().st_size,'sha256':hashlib.sha256(file.read_bytes()).hexdigest()}
                 for file in args.artifact.glob('*') if file.is_file()},
    'scope':'untrusted emission only; complete sharing certificate/source/matrix bindings and costs remain open',
    'g1_pass':False}
(args.out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
print(json.dumps(receipt))
