"""Specialize existing bounded numeric proof generators; no proof authority.

Every resulting numeric row/port/codec equation still requires kernel checking.
Templates and exact substitutions are retained to expose the derivation.
"""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--out', type=Path, required=True)
args = parser.parse_args()
out = args.out.resolve()
out.mkdir(exist_ok=False)
shutil.copyfile(__file__,out/'driver.py')
p = Path('experiments/transition-study033/proofs').resolve()
numbers = {43:96, 3795:307, 125:112, 3838:403, 3839:404, 3840:405,
           130493:13703, 130618:13815, 130449:13606,
           1463:3265, 129030:10438, 1430:3232, 129063:10471,
           82:16, 9840:1920}
records = {}
for name in ['check_shared_frame_matrix_groups_compact.py',
             'assemble_shared_frame_matrix_prefix.py',
             'assemble_shared_frame_guarded_packet.py',
             'check_shared_frame_numeric_component.py']:
    raw = (p/name).read_bytes()
    text = raw.decode()
    text = text.replace('SharedFrameProgram','ActualPairedPathFinalizeIR')
    text = text.replace('operationsChunks','operationChunks')
    text = text.replace('SharedFrame','FinalizeControl')
    text = text.replace('shared-frame-hash-controller-001/matrix.bin',
                        'paired-path-control-windows-001/finalize/matrix.bin')
    text = text.replace('frame-sharing-candidate-001/operations.json',
                        'paired-path-control-windows-001/finalize/operation-literals.json')
    text = text.replace('rows3838','rows403').replace('rows3839','rows404')
    text = re.sub(r'\b(?:'+ '|'.join(map(str,sorted(numbers,reverse=True))) +r')\b',
                  lambda m:str(numbers[int(m[0])]), text)
    text = text.replace('ng=60','ng=5')
    # Original generators locate ordinary pinned tool/dependency modules at p.
    # Keep that stable while storing the specialized script in a separate root.
    text = text.replace('p=Path(__file__).resolve().parent', 'p=Path('+repr(str(p))+')')
    if name == 'check_shared_frame_numeric_component.py':
        text = text.replace("str(p/'assemble_shared_frame_matrix_prefix.py')",
                            'str(Path('+repr(str(out))+')/\'assemble_shared_frame_matrix_prefix.py\')')
        text = text.replace("str(p/'assemble_shared_frame_guarded_packet.py')",
                            'str(Path('+repr(str(out))+')/\'assemble_shared_frame_guarded_packet.py\')')
        text = text.replace('shared-frame matrix','local finalizer matrix')
    destination = out/name
    destination.write_text(text)
    records[name] = {'template_sha256':hashlib.sha256(raw).hexdigest(),
                     'specialized_sha256':hashlib.sha256(text.encode()).hexdigest()}
(out/'specialization.json').write_text(json.dumps({
    'outcome':'PreparedUncheckedGenerators','numeric_substitutions':numbers,
    'templates':records,'g1_pass':False,
    'scope':'untrusted complete specialization; all405groups,13846rows,112outputs and16guards require kernel equality, parser/shape proofs, fresh replay and full file binding',
},indent=2,sort_keys=True)+'\n')
print(json.dumps({'outcome':'PreparedUncheckedGenerators','files':len(records),'g1_pass':False}))
