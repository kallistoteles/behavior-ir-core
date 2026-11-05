"""Direct bounded kernel check of a complete actual small control matrix.

This deliberately independent data quotation retains every row and port. It
must complete ordinary kernel equality and full fresh replay before acceptance.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys

import check_targets as driver


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--kind', choices=['reload','finalize'], required=True)
    parser.add_argument('--ir', type=Path, required=True)
    parser.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    p = Path(__file__).resolve().parent
    root, out = args.ir.resolve(), args.out.resolve()
    prior = json.loads((root/'report.json').read_text())
    if prior['outcome'] != 'Checked' or not prior['fresh_kernel_replay']:
        raise driver.ProofError('fresh Checked actual literal/model binding required')
    model = 'PairedPathReload' if args.kind == 'reload' else 'PairedPathFinalize'
    ir = 'Actual'+model+'IR'
    module = 'Actual'+model+'Numeric'
    literal = (root/prior['modules'][ir]['source_snapshot']).read_text()
    match = re.search(r'def program : WordIR.Program := ⟨(\d+),operationChunks.flatten,\[(.*?)\]⟩', literal)
    if not match:
        raise driver.ProofError('complete literal interface required')
    ni, no = int(match[1]), len(match[2].split(','))
    guards = 3 if args.kind == 'reload' else 16
    artifact = Path('experiments/transition-study033/generated/paired-path-control-windows-001')/args.kind
    operations = json.loads((artifact/'operation-literals.json').read_text())
    matrix = artifact/'matrix.bin'
    raw = matrix.read_bytes()
    out.mkdir(exist_ok=False)
    shutil.copyfile(__file__, out/'driver.py')
    (out/'matrix.bin').write_bytes(raw)
    groups = [34]*ni+[35 if op.startswith('.badd ') else 34 for op in operations]+[no,guards]
    (out/'row-groups.json').write_text(json.dumps({'group_sizes':groups})+'\n')
    result = subprocess.run([sys.executable,str(p/'quote_matrix_compact.py'),str(matrix),
        '--groups',str(out/'row-groups.json'),'--out',str(out/'actual-quote'),
        '--namespace','ControlWindowNumericData','--module-prefix','ControlWindowMatrix'],
        capture_output=True, timeout=300)
    (out/'quotation.txt').write_bytes(result.stdout+result.stderr)
    if result.returncode:
        raise driver.ProofError('independent complete matrix quotation failed')
    inputs, seeds = out/'proof-inputs', out/'filtered-seeds'
    (inputs/'Core033').mkdir(parents=True)
    seeds.mkdir()
    expected = {Path(*n.split('.')).with_suffix('.olean').as_posix():e['olean_sha256']
                for n,e in prior['modules'].items()}
    expected.update({n:e['sha256'] for n,e in prior['seeded_modules'].items()})
    for name, sha in expected.items():
        if not (name.startswith('Core033/') or name in ['CoreMath.olean',ir+'.olean']):
            continue
        data = (root/'compiled'/name).read_bytes()
        if hashlib.sha256(data).hexdigest() != sha:
            raise driver.ProofError('changed checked matrix dependency '+name)
        destination = seeds/name
        destination.parent.mkdir(parents=True, exist_ok=True)
        destination.write_bytes(data)
    targets = {}
    for file in sorted((out/'actual-quote').glob('*.lean')):
        shutil.copyfile(file,inputs/file.name)
        targets[file.stem] = []
    # Data files import their constants. All of them enter the full fresh
    # imported closure even though the data modules have no theorem targets.
    imports = ['import '+name for name in targets]
    code = imports+['import '+ir,'import Core033.KernelDecide',
        'import Core033.WordGuardSuffix', 'namespace '+module,
        'open Core033 ControlWindowNumericData', 'set_option Elab.async false',
        'set_option maxRecDepth 16384', 'set_option maxHeartbeats 16000000',
        'def actualFullRows : List R1CS.Row := ['+','.join('actualRows'+str(i) for i in range(len(groups)))+'].flatten',
        'def actualMatrix : R1CS.Matrix := ⟨actualModulus,actualVariableCount,actualInputPorts,actualPrivatePorts,actualOutputPorts,actualConstantOne,actualFullRows⟩',
        f'theorem actual_model : actualMatrix=WordGuardSuffix.compile R1CS.pallasScalarModulus {ir}.program 96 {guards} := by core033_kernel_decide',
        'theorem actual_guard {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]',
        '    (valuation : Nat → F) (inputs : Nat → WordIR.Word)',
        '    (accepted : actualMatrix.satisfies valuation)',
        f'    (inputValues : ∀ index,index<{ni} → valuation (WordField.packed index)=((inputs index).toNat : F))',
        f'    (position : Nat) (bound : position<{guards}) :',
        f'    ({ir}.program.eval inputs).getD (96+position) 0=1 := by',
        '  rw [actual_model] at accepted',
        f'  exact WordGuardSuffix.forced_output_one R1CS.modulus_larger_than_word {ir}.program {ir}.program_valid',
        f'    96 {guards} (by rw [{ir}.output_count]) valuation inputs accepted inputValues position bound',
        'theorem actual_admitted_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]',
        '    (inputs : Nat → WordIR.Word)',
        f'    (admitted : ∀ position,position<{guards} → ({ir}.program.eval inputs).getD (96+position) 0=1) :',
        '    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧',
        f'      (∀ index,index<{ni} → valuation (WordField.packed index)=((inputs index).toNat : F)) := by',
        '  rw [actual_model]',
        f'  exact WordGuardSuffix.admitted_complete (F:=F) R1CS.modulus_larger_than_word {ir}.program',
        f'    {ir}.program_valid 96 {guards} (by rw [{ir}.output_count]) inputs admitted',
        'end '+module]
    (inputs/(module+'.lean')).write_text('\n'.join(code)+'\n')
    targets[module] = [module+'.actual_model',module+'.actual_guard',module+'.actual_admitted_complete']
    (out/'targets.json').write_text(json.dumps(targets,indent=2)+'\n')
    checked = driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',
        dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[seeds])
    if matrix.read_bytes() != raw:
        raise driver.ProofError('actual matrix changed')
    receipt = {'outcome':checked['outcome'],'fresh_kernel_replay':checked['fresh_kernel_replay'],
        'targets':len(checked['theorems']),'matrix_bytes':len(raw),
        'matrix_sha256':hashlib.sha256(raw).hexdigest(), 'g1_pass':False,
        'scope':'complete actual numeric local control matrix equals the exact guarded literal/model matrix; no full K, physical state/private-input embedding or independent source authority'}
    (out/'receipt.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps(receipt))


if __name__ == '__main__':
    main()
