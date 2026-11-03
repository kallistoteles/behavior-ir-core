"""Prepare complete CSE checks as bounded compositional kernel obligations.

Preparation is untrusted. Every old instruction, input alias and ordered output
must pass the same proved checker. No optimized matrix or speedup is asserted.
"""
import argparse
import hashlib
import json
from pathlib import Path

parser = argparse.ArgumentParser()
parser.add_argument('--candidate', type=Path, required=True)
parser.add_argument('--out', type=Path, required=True)
args = parser.parse_args()
source = Path('specs/033-core-proof-feasibility/evidence/scoped-chain/frame-hash-controller-source-001')
ops = json.loads((source/'operation-literals.json').read_text())
shared = json.loads((args.candidate/'operations.json').read_text())
aliases = json.loads((args.candidate/'aliases.json').read_text())
if len(ops) != 8827 or len(shared) != 3795 or len(aliases) != 8870:
    raise RuntimeError('unexpected complete candidate geometry')
import re
original = (source/'proof-inputs/ActualFrameHashControllerIR.lean').read_text()
outputs = list(map(int, re.search(r'def program : WordIR.Program := ⟨43,operationChunks.flatten,\[(.*?)\]⟩', original)[1].split(',')))
if len(outputs) != 125:
    raise RuntimeError('complete ordered output sequence required')
args.out.mkdir(exist_ok=False)
(args.out/'driver.py').write_bytes(Path(__file__).read_bytes())
settings = ['namespace SegmentedFrameSharing', 'open Core033 WordIR WordSharingCertificate',
            'set_option Elab.async false', 'set_option maxRecDepth 16384', 'set_option maxHeartbeats 8000000']
code = ['import Core033.WordSharingCertificate', 'import QuotedFrameHashControllerIR',
        'import Core033.KernelDecide', *settings]
for kind, items, typ in [('operations', shared, 'Op'), ('aliases', aliases, 'Nat')]:
    for group, start in enumerate(range(0, len(items), 64)):
        code.append(f'def {kind}{group} : List {typ} := ['+','.join(map(str, items[start:start+64]))+']')
    code.append(f'def {kind}Chunks : List (List {typ}) := ['+','.join(kind+str(i) for i in range((len(items)+63)//64))+']')
code += ['def target : Program := ⟨43,operationsChunks.flatten,['+','.join(str(aliases[o]) for o in outputs)+']⟩',
         'def certificate : Certificate := ⟨aliasesChunks.flatten⟩',
         'theorem target_checked : checkProgram target=true := by core033_kernel_decide',
         'theorem input_count_checked : decide (QuotedFrameHashControllerIR.program.inputCount=target.inputCount)=true := by core033_kernel_decide',
         'theorem alias_length_checked : decide (certificate.aliases.length=QuotedFrameHashControllerIR.program.inputCount+QuotedFrameHashControllerIR.program.operations.length)=true := by core033_kernel_decide',
         'theorem inputs_checked : (List.range QuotedFrameHashControllerIR.program.inputCount).all (fun index=>decide (certificate.alias index=index))=true := by core033_kernel_decide',
         'theorem outputs_checked : decide (target.outputs=QuotedFrameHashControllerIR.program.outputs.map certificate.alias)=true := by core033_kernel_decide',
         'end SegmentedFrameSharing']
(args.out/'SegmentedFrameSharingData.lean').write_text('\n'.join(code)+'\n')
targets = {'SegmentedFrameSharingData': ['SegmentedFrameSharing.'+n for n in ['target_checked','input_count_checked','alias_length_checked','inputs_checked','outputs_checked']]}
groups = (len(ops)+63)//64
for group in range(groups):
    module = 'SegmentedFrameSharingSteps'+str(group)
    n = min(64,len(ops)-64*group)
    code = ['import SegmentedFrameSharingData', *settings,
            f'theorem checked{group} : checkSteps target certificate.alias {43+64*group} QuotedFrameHashControllerIR.operations{group}=true := by core033_kernel_decide',
            f'theorem length{group} : QuotedFrameHashControllerIR.operations{group}.length={n} := by decide',
            'end SegmentedFrameSharing']
    (args.out/(module+'.lean')).write_text('\n'.join(code)+'\n')
    targets[module] = [f'SegmentedFrameSharing.checked{group}', f'SegmentedFrameSharing.length{group}']
code = ['import SegmentedFrameSharingSteps'+str(i) for i in range(groups)] + settings
for group in reversed(range(groups)):
    suffix = '++'.join('QuotedFrameHashControllerIR.operations'+str(i) for i in range(group,groups))
    code.append(f'theorem suffix{group} : checkSteps target certificate.alias {43+64*group} ({suffix})=true := by')
    if group == groups-1:
        code.append(f'  exact checked{group}')
    else:
        code += [f'  rw [check_steps_append,checked{group},length{group}]',f'  exact suffix{group+1}']
code += ['theorem steps_checked : checkSteps target certificate.alias QuotedFrameHashControllerIR.program.inputCount QuotedFrameHashControllerIR.program.operations=true := by',
         '  exact suffix0',
         'theorem certificate_checked : check QuotedFrameHashControllerIR.program target certificate=true := by',
         '  simp only [check,input_count_checked,(program_check_exact _).mpr QuotedFrameHashControllerIR.program_valid,target_checked,alias_length_checked,inputs_checked,outputs_checked,steps_checked,Bool.and_self]',
         'theorem complete_meaning (inputs : Nat → Word) : QuotedFrameHashControllerIR.program.eval inputs=target.eval inputs :=',
         '  checked_program_meaning _ _ _ certificate_checked inputs',
         'end SegmentedFrameSharing']
(args.out/'SegmentedFrameSharingComplete.lean').write_text('\n'.join(code)+'\n')
targets['SegmentedFrameSharingComplete'] = ['SegmentedFrameSharing.steps_checked','SegmentedFrameSharing.certificate_checked','SegmentedFrameSharing.complete_meaning']
(args.out/'targets.json').write_text(json.dumps(targets,indent=2)+'\n')
receipt = {'outcome':'PreparedUncheckedSegmentedSharingCandidate','instruction_checks':len(ops),
           'candidate_operations':len(shared),'ordered_outputs':len(outputs),'step_groups':groups,
           'candidate_receipt_sha256':hashlib.sha256((args.candidate/'receipt.json').read_bytes()).hexdigest(),
           'scope':'all original instructions and outputs retained; kernel acceptance, optimized artifact correspondence and costs remain unestablished','g1_pass':False}
(args.out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
print(json.dumps(receipt))
