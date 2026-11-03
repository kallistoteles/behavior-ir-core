"""Independent numeric quotation and unchecked full-packet preparation only."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import struct
import subprocess
import sys

parser = argparse.ArgumentParser()
parser.add_argument('--out', type=Path, required=True)
args = parser.parse_args()
proofs = Path('experiments/transition-study033/proofs').resolve()
matrix = Path('experiments/transition-study033/generated/shared-frame-hash-controller-001/matrix.bin')
raw = matrix.read_bytes()
if raw[:22] != b'core033.semantic.v1\0\x60\0':
    raise ValueError('unexpected actual matrix format')
variables, ni, np, no, nr, one, ports = struct.unpack_from('<7I',raw,54)
if (variables,ni,np,no,nr,one,ports) != (130618,43,130449,125,131450,0,130617):
    raise ValueError('unexpected complete actual geometry')
actual_ports = list(struct.unpack_from('<'+str(ports)+'I',raw,82))
expected_inputs = [1+34*i for i in range(43)]
expected_private = [1+34*i+offset for i in range(3838)
                    for offset in (range(1,34) if i<43 else range(34))]
expected_outputs = list(range(130493,130618))
if actual_ports != expected_inputs+expected_private+expected_outputs:
    raise ValueError('actual full physical ports differ')
ops = json.loads(Path('experiments/transition-study033/generated/frame-sharing-candidate-001/operations.json').read_text())
if len(ops) != 3795:
    raise ValueError('complete operation sequence required')
args.out.mkdir(exist_ok=False)
shutil.copyfile(__file__,args.out/'driver.py')
inputs = args.out/'proof-inputs'
inputs.mkdir()
groups = [34]*43+[35 if op.startswith('.badd ') else 34 for op in ops]+[125,82]
group_file = args.out/'row-groups.json'
group_file.write_text(json.dumps({'group_sizes':groups})+'\n')
quote = args.out/'actual-quote'
subprocess.run([sys.executable,str(proofs/'quote_matrix_compact.py'),str(matrix),
    '--groups',str(group_file),'--out',str(quote),
    '--namespace','SharedFrameInstructionData','--module-prefix','SharedFrameInstructionMatrix'],
    check=True,timeout=300,capture_output=True)
for file in quote.glob('*.lean'):
    shutil.copyfile(file,inputs/file.name)
for name in ['assemble_shared_frame_matrix_prefix.py','assemble_shared_frame_guarded_packet.py']:
    subprocess.run([sys.executable,str(proofs/name),'--inputs',str(inputs)],check=True)
if matrix.read_bytes() != raw:
    raise ValueError('actual matrix changed')
receipt = {'outcome':'PreparedUncheckedSharedNumericPacket','rows':nr,'variables':variables,
    'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest(),'full_native_port_geometry_equal':True,
    'scope':'untrusted preparation and native header/port check only; every numeric row/source/guard equation and complete fresh replay remain required',
    'g1_pass':False}
(args.out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
print(json.dumps(receipt))
