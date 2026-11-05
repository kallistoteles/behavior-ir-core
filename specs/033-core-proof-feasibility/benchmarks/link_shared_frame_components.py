"""Record exact common-module identities between separate checked components.

No joint fresh closure, Rust executable, full Core release or speedup is claimed.
"""
import argparse
import hashlib
import json
from pathlib import Path

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--equivalence', type=Path, required=True)
parser.add_argument('--out', type=Path, required=True)
args = parser.parse_args()
base = Path('specs/033-core-proof-feasibility/evidence/scoped-chain')
roots = {'equivalence':args.equivalence,
         'literal':base/'shared-frame-program-binding-001',
         'original_literal':base/'frame-program-quoted-binding-002',
         'source':base/'shared-frame-source-004',
         'numeric':base/'shared-frame-numeric-component-001/kernel'}
reports = {}
def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()
def compiled_identity(root, report, module):
    relative = Path(*module.split('.')).with_suffix('.olean')
    expected = (report['modules'][module]['olean_sha256'] if module in report['modules']
                else report['seeded_modules'][str(relative)]['sha256'])
    if sha(root/'compiled'/relative) != expected:
        raise ValueError('changed exact compiled interface '+module)
    return expected
for label,root in roots.items():
    report = json.loads((root/'report.json').read_text())
    if report['outcome'] != 'Checked' or not report['fresh_kernel_replay']:
        raise ValueError('separate genuine Checked/fresh report required: '+label)
    reports[label] = report
if len(reports['equivalence']['theorems']) != 284 or len(reports['source']['theorems']) != 304:
    raise ValueError('complete original equivalence/source inventories required')
program = compiled_identity(roots['literal'],reports['literal'],'SharedFrameProgram')
for label in ['source','numeric']:
    if compiled_identity(roots[label],reports[label],'SharedFrameProgram') != program:
        raise ValueError('different standalone program across checked components')
data = compiled_identity(roots['literal'],reports['literal'],'SegmentedFrameSharingData')
if compiled_identity(roots['equivalence'],reports['equivalence'],'SegmentedFrameSharingData') != data:
    raise ValueError('equivalence uses different actual shared candidate data')
old = compiled_identity(roots['original_literal'],reports['original_literal'],'QuotedFrameHashControllerIR')
if compiled_identity(roots['equivalence'],reports['equivalence'],'QuotedFrameHashControllerIR') != old:
    raise ValueError('different original literal/source/model interface')
bindings = {}
artifacts = Path('experiments/transition-study033/generated/shared-frame-hash-controller-001')
for label,receipt_path,file in [
    ('source',base/'shared-frame-source-file-binding-001/receipt.json',artifacts/'checker_step.rs'),
    ('numeric',base/'shared-frame-numeric-file-binding-001/receipt.json',artifacts/'matrix.bin')]:
    binding = json.loads(receipt_path.read_text())
    if (binding['outcome'] != 'BoundCheckedValue'
            or binding['mathematical_report_sha256'] != sha(roots[label]/'report.json')
            or binding['sha256'] != sha(file) or binding['bytes'] != file.stat().st_size):
        raise ValueError('different bound actual artifact '+label)
    bindings[label] = {'receipt':str(receipt_path),'receipt_sha256':sha(receipt_path),
                       'artifact':str(file),'bytes':binding['bytes'],'sha256':binding['sha256']}
result = {'format_version':'core033.separate-shared-component-links.v1',
    'outcome':'LinkedSeparateCheckedComponents',
    'reports':{label:{'path':str(root/'report.json'),'sha256':sha(root/'report.json')}
               for label,root in roots.items()},
    'common_compiled_interfaces':{'SharedFrameProgram':program,'SegmentedFrameSharingData':data,
                                  'QuotedFrameHashControllerIR':old},
    'full_file_bindings':bindings,
    'joint_fresh_closure':False,'release_relation_complete':False,'g1_pass':False,
    'scope':'exact common module-byte identities connect independently Checked/fresh old/new equivalence, standalone literal/source/model, actual Rust source and actual guarded numeric matrix/file bindings; no optimized native executable, whole K/Nova embedding or measured latency claim'}
with args.out.open('x') as file:
    json.dump(result,file,indent=2,sort_keys=True)
    file.write('\n')
print(json.dumps({'outcome':result['outcome'],'g1_pass':False}))
