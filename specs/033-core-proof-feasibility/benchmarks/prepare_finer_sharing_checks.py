"""Refine late certificate blocks; retain all original obligations and data."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil

parser = argparse.ArgumentParser()
parser.add_argument('--previous', type=Path, required=True)
parser.add_argument('--out', type=Path, required=True)
args = parser.parse_args()
ops = json.loads(Path('specs/033-core-proof-feasibility/evidence/scoped-chain/frame-hash-controller-source-001/operation-literals.json').read_text())
if len(ops) != 8827:
    raise ValueError('complete original operation list required')
args.out.mkdir(exist_ok=False)
shutil.copyfile(__file__,args.out/'driver.py')
for file in args.previous.glob('*.lean'):
    shutil.copyfile(file,args.out/file.name)
shutil.copyfile(args.previous/'targets.json',args.out/'targets.json')
settings = ['namespace SegmentedFrameSharing','open Core033 WordIR WordSharingCertificate',
    'set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']

def right_append(names):
    result = names[-1]
    for name in reversed(names[:-1]):
        result = '('+name+'++'+result+')'
    return result

for group in range(101,138):
    first = 64*group
    chunk = ops[first:first+64]
    parts = (len(chunk)+7)//8
    code = ['import SegmentedFrameSharingData',*settings]
    for part in range(parts):
        sub = chunk[8*part:8*part+8]
        code += [f'def subOps{group}_{part} : List Op := ['+','.join(sub)+']',
            f'theorem subChecked{group}_{part} : checkSteps target certificate.alias {43+first+8*part} subOps{group}_{part}=true := by core033_kernel_decide',
            f'theorem subLength{group}_{part} : subOps{group}_{part}.length={len(sub)} := by decide']
    suffix = right_append([f'subOps{group}_{part}' for part in range(parts)])
    code += [f'theorem checked{group} : checkSteps target certificate.alias {43+first} QuotedFrameHashControllerIR.operations{group}=true := by',
             f'  have partition : QuotedFrameHashControllerIR.operations{group}={suffix} := rfl',
             '  rw [partition]']
    for part in range(parts-1):
        code.append(f'  rw [check_steps_append,subChecked{group}_{part},subLength{group}_{part}]')
    code += [f'  exact subChecked{group}_{parts-1}',
        f'theorem length{group} : QuotedFrameHashControllerIR.operations{group}.length={len(chunk)} := by decide',
        'end SegmentedFrameSharing']
    (args.out/f'SegmentedFrameSharingSteps{group}.lean').write_text('\n'.join(code)+'\n')
# List append notation is left associative. The exact composition proof needs
# an explicit first-block/remainder decomposition at every step.
code = ['import SegmentedFrameSharingSteps'+str(i) for i in range(138)]+settings
for group in reversed(range(138)):
    suffix = right_append(['QuotedFrameHashControllerIR.operations'+str(i) for i in range(group,138)])
    code.append(f'theorem suffix{group} : checkSteps target certificate.alias {43+64*group} ({suffix})=true := by')
    if group == 137:
        code.append(f'  exact checked{group}')
    else:
        code += [f'  rw [check_steps_append,checked{group},length{group}]',f'  exact suffix{group+1}']
code += ['theorem steps_checked : checkSteps target certificate.alias QuotedFrameHashControllerIR.program.inputCount QuotedFrameHashControllerIR.program.operations=true := by',
    '  exact suffix0',
    'theorem certificate_checked : check QuotedFrameHashControllerIR.program target certificate=true := by',
    '  simp only [check,input_count_checked,(program_check_exact _).mpr QuotedFrameHashControllerIR.program_valid,target_checked,alias_length_checked,inputs_checked,outputs_checked,steps_checked,Bool.and_self]',
    'theorem complete_meaning (inputs : Nat → Word) : QuotedFrameHashControllerIR.program.eval inputs=target.eval inputs :=',
    '  checked_program_meaning _ _ _ certificate_checked inputs','end SegmentedFrameSharing']
(args.out/'SegmentedFrameSharingComplete.lean').write_text('\n'.join(code)+'\n')
assert (args.out/'SegmentedFrameSharingData.lean').read_bytes() == (args.previous/'SegmentedFrameSharingData.lean').read_bytes()
receipt = {'outcome':'PreparedUncheckedFinerSharingChecks','old_instructions':8827,
    'ordered_outputs':125,'unchanged_prefix_blocks':101,'remaining_blocks':37,'late_check_operations':8,
    'data_source_sha256':hashlib.sha256((args.out/'SegmentedFrameSharingData.lean').read_bytes()).hexdigest(),
    'scope':'same complete certificate obligations/data/target names; late proofs split into smaller closed decisions and exact append proofs; compilation and full fresh replay still required',
    'g1_pass':False}
(args.out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
print(json.dumps(receipt))
