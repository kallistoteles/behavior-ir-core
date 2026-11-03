"""Untrusted complete witness for the already Checked numeric hash component.

No proof authority. All actual rows are checked again by the Rust diagnostic.
"""
import argparse, hashlib, json, re
from pathlib import Path

parser = argparse.ArgumentParser()
parser.add_argument('--out', type=Path, required=True)
a = parser.parse_args()
root = Path('specs/033-core-proof-feasibility/evidence/scoped-chain')
source = root / 'frame-hash-controller-source-001'
numeric = root / 'frame-hash-controller-numeric-component-001'
for path in [source / 'kernel/report.json', numeric / 'kernel/report.json']:
    report = json.loads(path.read_text())
    if report['outcome'] != 'Checked' or not report['fresh_kernel_replay']:
        raise RuntimeError('genuine Checked/fresh component required')
binding = json.loads((root / 'frame-hash-controller-numeric-component-closed-value-binding-001/receipt.json').read_text())
matrix = Path('experiments/transition-study033/generated/frame-hash-controller-003/matrix.bin')
raw = matrix.read_bytes()
digest = hashlib.sha256(raw).hexdigest()
if binding['outcome'] != 'BoundCheckedValue' or binding['sha256'] != digest:
    raise RuntimeError('actual checked matrix binding required')
ops = json.loads((source / 'operation-literals.json').read_text())
ir = (source / 'proof-inputs/ActualFrameHashControllerIR.lean').read_text()
match = re.search(r'def program : WordIR.Program := ⟨43,operationChunks.flatten,\[(.*?)\]⟩', ir)
if match is None or len(ops) != 8827:
    raise RuntimeError('unexpected actual instruction stream')
outputs = list(map(int, match[1].split(',')))
if len(outputs) != 125:
    raise RuntimeError('complete output ports required')
header = [int.from_bytes(raw[54+4*i:58+4*i], 'little') for i in range(7)]
variables, ni, np, no, nr, one, nports = header
if (variables, ni, no, nr, one, nports) != (301706, 43, 125, 302936, 0, 301705):
    raise RuntimeError('unexpected actual matrix header')
ports = [int.from_bytes(raw[82+4*i:86+4*i], 'little') for i in range(nports)]
input_ports = ports[:ni]
output_ports = ports[ni+np:]
if input_ports != [1+34*i for i in range(ni)]:
    raise RuntimeError('unexpected actual packed input ports')

def witness(inputs):
    words = list(inputs)
    carries = [0]*ni
    for op in ops:
        parts = op.split()
        kind = parts[0]
        carry = 0
        if kind == '.literal':
            value = int(parts[-1].rstrip(')'))
        else:
            x = words[int(parts[1])]
            if kind == '.bnot':
                value = (~x) & 0xffffffff
            elif kind == '.shr':
                value = x >> int(parts[2])
            elif kind == '.rotr':
                n = int(parts[2]) % 32
                value = ((x >> n) | (x << ((32-n) % 32))) & 0xffffffff
            else:
                y = words[int(parts[2])]
                if kind == '.badd':
                    total = x+y
                    value = total & 0xffffffff
                    carry = total >> 32
                elif kind == '.band': value = x & y
                elif kind == '.bxor': value = x ^ y
                else: raise RuntimeError('unsupported actual operation '+op)
        words.append(value)
        carries.append(carry)
    result = [words[i] for i in outputs]
    if result[43:] != [1]*82:
        raise RuntimeError('actual primitive guard rejected diagnostic input')
    wires = [None]*variables
    wires[0] = 1
    for register, (value, carry) in enumerate(zip(words, carries)):
        base = 1+34*register
        wires[base] = value
        wires[base+1:base+33] = [(value >> bit) & 1 for bit in range(32)]
        wires[base+33] = carry
    for port, value in zip(output_ports, result): wires[port] = value
    if any(value is None for value in wires):
        raise RuntimeError('witness omitted an actual matrix variable')
    return wires, result[:43]

initial = [0]*43
initial[0] = initial[1] = 1
initial[11:27] = [0x11110000+i for i in range(16)]
initial[27] = 1
initial[31:35] = [1]*4
first, middle = witness(initial)
second, expected = witness(middle)
if (middle[0], expected[0]) != (2,3):
    raise RuntimeError('diagnostic controller did not execute two admitted phases')
a.out.mkdir(exist_ok=False)
(a.out / 'driver.py').write_bytes(Path(__file__).read_bytes())
(a.out / 'witnesses.json').write_text(json.dumps({'matrix_sha256':digest, 'wires':[first,second], 'initial':initial, 'expected':expected})+'\n')
print(json.dumps({'outcome':'UntrustedWitnessPrepared','matrix_sha256':digest,'steps':2,'variables':variables,'g1_pass':False}))
