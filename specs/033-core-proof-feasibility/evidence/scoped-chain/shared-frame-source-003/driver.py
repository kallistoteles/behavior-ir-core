"""Recheck the full source using explicit string-reconstruction dependencies."""
import argparse, hashlib, json, re, shutil
from pathlib import Path
import check_targets as driver

p = Path(__file__).resolve().parent
parser = argparse.ArgumentParser()
parser.add_argument('--previous',type=Path,required=True)
parser.add_argument('--out',type=Path,required=True)
a = parser.parse_args()
old, out = a.previous.resolve(), a.out.resolve()
literal = Path('specs/033-core-proof-feasibility/evidence/scoped-chain/shared-frame-program-binding-001').resolve()
prior = json.loads((literal/'report.json').read_text())
if prior['outcome']!='Checked' or not prior['fresh_kernel_replay']:
    raise driver.ProofError('genuine exact standalone program required')
source = Path('experiments/transition-study033/generated/shared-frame-hash-controller-001/checker_step.rs').resolve()
raw = source.read_bytes()
out.mkdir(exist_ok=False)
shutil.copyfile(__file__,out/'driver.py')
inputs = out/'proof-inputs'
shutil.copytree(old/'proof-inputs',inputs)
seeds = out/'filtered-seeds'
seeds.mkdir()
expected = {Path(*name.split('.')).with_suffix('.olean').as_posix():entry['olean_sha256']
            for name,entry in prior['modules'].items()}
expected.update({name:entry['sha256'] for name,entry in prior['seeded_modules'].items()})
selected = {}
for name, sha in expected.items():
    if not (name.startswith('Core033/') or name in ['CoreMath.olean','SharedFrameProgram.olean']):
        continue
    file = literal/'compiled'/name
    data = file.read_bytes()
    if hashlib.sha256(data).hexdigest()!=sha:
        raise driver.ProofError('changed checked source dependency '+name)
    destination = seeds/name
    destination.parent.mkdir(parents=True,exist_ok=True)
    destination.write_bytes(data)
    selected[name] = sha
(out/'seed-provenance.json').write_text(json.dumps(selected,indent=2,sort_keys=True)+'\n')
records = [json.loads(line[len('CORE033_AXIOMS '):])
           for line in (old/'kernel/axiom-audit.txt').read_text().splitlines()
           if line.startswith('CORE033_AXIOMS ')]
if len(records)!=303:
    raise driver.ProofError('complete previous bounded audit inventory required')
by_module = {}
for entry in records:
    by_module.setdefault(entry['target'].rsplit('.',1)[0],[]).append(entry['target'])
targets = {'Core033.SourceLiteralBytes':['Core033.SourceLiteralBytes.ascii_control']}
shutil.copyfile(p/'Core033/SourceLiteralBytes.lean',inputs/'Core033/SourceLiteralBytes.lean')
modules = ['ArtifactSharedFrameGroup'+str(i) for i in range(60)] + [
    'ArtifactSharedFrameHeader','ArtifactSharedFrameFooter','ArtifactSharedFrameBlocks']
pattern = re.compile(r'\("((?:\\.|[^"\\])*)" : String\)\.toByteArray\.data\.toList')
quote_counts = {}
for module in modules:
    file = inputs/(module+'.lean')
    code = file.read_text()
    code, count = pattern.subn(lambda match:'Core033.SourceLiteralBytes.quoted ("'+match[1]+'" : String)',code)
    if count:
        code = 'import Core033.SourceLiteralBytes\n'+code
    file.write_text(code)
    quote_counts[module] = count
    targets[module] = by_module.pop(module)
if by_module or sum(quote_counts.values())!=3851:
    raise driver.ProofError('complete source literal or audit inventory differs')
(out/'literal-quotation-counts.json').write_text(json.dumps(quote_counts,indent=2)+'\n')
result = driver.check_modules(inputs,targets,out/'kernel',audit_source=p/'Audit.lean',
    dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),
    seeded_modules=[seeds])
if source.read_bytes()!=raw:
    raise driver.ProofError('actual source changed')
(out/'checker_step.rs').write_bytes(raw)
receipt = {'format_version':'core033.complete-shared-frame-source.v1',
    'outcome':result['outcome'],'targets':len(result['theorems']),
    'fresh_kernel_replay':result['fresh_kernel_replay'],
    'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),
    'actual_statement_count':3795,'scope':'complete actual shared Rust bytes against the exact standalone shared IR; explicit safe String.ofList dependency, all original bounded obligations and full imported fresh replay; full old-program equivalence and numeric matrix remain separate',
    'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
print(json.dumps(receipt))
