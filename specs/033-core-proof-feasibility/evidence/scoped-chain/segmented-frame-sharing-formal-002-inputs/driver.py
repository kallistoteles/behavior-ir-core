"""Check every segmented candidate obligation with explicit literal-data binding."""
import argparse
import hashlib
import json
import shutil
import sys
from pathlib import Path

proofs = Path('experiments/transition-study033/proofs').resolve()
sys.path.insert(0, str(proofs))
import check_targets

parser = argparse.ArgumentParser()
parser.add_argument('--candidate', type=Path, required=True)
parser.add_argument('--binding', type=Path, required=True)
parser.add_argument('--checker', type=Path, required=True)
parser.add_argument('--reuse-prefix', type=Path)
parser.add_argument('--checked-data', type=Path)
parser.add_argument('--out', type=Path, required=True)
args = parser.parse_args()
roots = [args.binding.resolve(), args.checker.resolve()]
for root in roots:
    report = json.loads((root/'report.json').read_text())
    if report['outcome'] != 'Checked' or not report['fresh_kernel_replay']:
        raise check_targets.ProofError('genuine fresh literal binding and universal checker required')
    for name, entry in report['modules'].items():
        file = root/'compiled'/Path(*name.split('.')).with_suffix('.olean')
        if hashlib.sha256(file.read_bytes()).hexdigest() != entry['olean_sha256']:
            raise check_targets.ProofError('changed checked module '+name)
    for relative, entry in report['seeded_modules'].items():
        if hashlib.sha256((root/'compiled'/relative).read_bytes()).hexdigest() != entry['sha256']:
            raise check_targets.ProofError('changed checked dependency '+relative)
inputs = args.out.resolve().with_name(args.out.name+'-inputs')
inputs.mkdir(exist_ok=False)
shutil.copyfile(__file__, inputs/'driver.py')
targets = json.loads((args.candidate/'targets.json').read_text())
for module in targets:
    shutil.copyfile(args.candidate/(module+'.lean'), inputs/(module+'.lean'))
# Import only the independently checked literal program and generic theory.
# Every selected module is hashed above, and the new complete imported closure
# still receives ordinary fresh kernel replay. No renamed compiled modules.
seeds = inputs/'filtered-seeds'
seeds.mkdir()
selected = {}
for root in roots:
    for file in (root/'compiled').rglob('*.olean'):
        relative = file.relative_to(root/'compiled')
        name = relative.as_posix()
        if not (name.startswith('Core033/') or name in ['CoreMath.olean','QuotedFrameHashControllerIR.olean']):
            continue
        data = file.read_bytes()
        digest = hashlib.sha256(data).hexdigest()
        if name in selected:
            if selected[name]['sha256'] != digest:
                raise check_targets.ProofError('conflicting checked seed '+name)
            continue
        destination = seeds/relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        destination.write_bytes(data)
        selected[name] = {'sha256':digest,'source':str(file)}
(inputs/'seed-provenance.json').write_text(json.dumps(selected, indent=2)+'\n')
owned_targets = dict(targets)
if args.reuse_prefix is not None:
    if args.checked_data is None:
        raise check_targets.ProofError('genuine checked exact data interface required')
    checked = args.checked_data.resolve()
    report = json.loads((checked/'report.json').read_text())
    if report['outcome'] != 'Checked' or not report['fresh_kernel_replay']:
        raise check_targets.ProofError('exact data interface is not fresh Checked')
    name = 'SegmentedFrameSharingData'
    entry = report['modules'][name]
    previous = args.reuse_prefix.resolve()
    previous_inputs = previous.with_name(previous.name+'-inputs')
    data_module = checked/'compiled'/(name+'.olean')
    if (checked/entry['source_snapshot']).read_bytes() != (inputs/(name+'.lean')).read_bytes():
        raise check_targets.ProofError('different checked candidate data source')
    if hashlib.sha256(data_module.read_bytes()).hexdigest() != entry['olean_sha256']:
        raise check_targets.ProofError('changed checked candidate data module')
    if (previous/'compiled'/(name+'.olean')).read_bytes() != data_module.read_bytes():
        raise check_targets.ProofError('prefix uses different candidate data bytes')
    shutil.copyfile(data_module,seeds/(name+'.olean'))
    reused_names = list(owned_targets.pop(name))
    provenance = {name:{'olean_sha256':entry['olean_sha256'],
        'checked_report_sha256':hashlib.sha256((checked/'report.json').read_bytes()).hexdigest()}}
    for index in range(101):
        name = 'SegmentedFrameSharingSteps'+str(index)
        source = previous_inputs/(name+'.lean')
        compiled = previous/'compiled'/(name+'.olean')
        command_file = previous/(name+'.compile.command.json')
        command = json.loads(command_file.read_text())
        if command['exit_code'] != 0 or command['timed_out']:
            raise check_targets.ProofError('prefix compilation did not succeed')
        if str(source) not in command['argv'] or str(compiled) not in command['argv']:
            raise check_targets.ProofError('different actual prefix compiler inputs')
        if source.read_bytes() != (inputs/(name+'.lean')).read_bytes():
            raise check_targets.ProofError('changed prefix source')
        shutil.copyfile(compiled,seeds/(name+'.olean'))
        provenance[name] = {'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),
            'olean_sha256':hashlib.sha256(compiled.read_bytes()).hexdigest(),
            'command_sha256':hashlib.sha256(command_file.read_bytes()).hexdigest()}
        reused_names.extend(owned_targets.pop(name))
    # All original targets remain audited. The complete imported declaration
    # closure, including every ordinary prefix compilation, is fresh-replayed.
    # Successful compilation alone is never promoted to proof authority.
    owned_targets['SegmentedFrameSharingComplete'] = reused_names+owned_targets['SegmentedFrameSharingComplete']
    (inputs/'reused-prefix-compile-provenance.json').write_text(json.dumps(provenance,indent=2,sort_keys=True)+'\n')
r = check_targets.check_modules(inputs, owned_targets, args.out, audit_source=proofs/'Audit.lean',
    dependency_paths=sorted((proofs/'.lake/packages').glob('*/.lake/build/lib/lean')),
    seeded_modules=[seeds])
receipt = {'format_version':'core033.complete-segmented-sharing.v1',
    'outcome':r['outcome'],'targets':len(r['theorems']),
    'fresh_kernel_replay':r['fresh_kernel_replay'],
    'exact_source_binding_report_sha256':hashlib.sha256((roots[0]/'report.json').read_bytes()).hexdigest(),
    'literal_program_olean_sha256':selected['QuotedFrameHashControllerIR.olean']['sha256'],
    'universal_checker_olean_sha256':selected['Core033/WordSharingCertificate.olean']['sha256'],
    'scope':'complete all-input/output meaning of literal shared program, linked by identical checked literal module to separately checked original source/model; no joint source/matrix closure, optimized executable/matrix correspondence, cost or G1 authority',
    'g1_pass':False}
(args.out/'receipt.json').write_text(json.dumps(receipt, indent=2, sort_keys=True)+'\n')
print(json.dumps(receipt))
