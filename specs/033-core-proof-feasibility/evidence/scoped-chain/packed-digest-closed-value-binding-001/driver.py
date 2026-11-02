"""Bind a Checked closed Lean data value to the complete actual artifact bytes.

Native evaluation is used solely for literal/data I/O binding under the named
ordinary pinned compiler/runtime assumption. It proves no semantic proposition,
introduces no axiom and cannot replace a Checked/fresh mathematical receipt.
"""
import argparse,hashlib,json,os,re,shutil
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--kernel',type=Path,required=True);parser.add_argument('--module',required=True);parser.add_argument('--value',required=True);parser.add_argument('--kind',choices=['matrix','bytes'],required=True);parser.add_argument('--expected',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
name=re.compile(r'[A-Za-z_][A-Za-z_0-9]*(?:\.[A-Za-z_][A-Za-z_0-9]*)*\Z')
if not name.fullmatch(a.module) or not name.fullmatch(a.value):raise driver.ProofError('invalid closed module/value name')
kernel=a.kernel.resolve();reportBytes=(kernel/'report.json').read_bytes();report=json.loads(reportBytes)
if report['outcome']!='Checked' or not report['fresh_kernel_replay']:raise driver.ProofError('genuine Checked/fresh receipt required before binding')
if a.module not in report['modules']:raise driver.ProofError('binding root must be an owned, actually checked module')
entry=report['modules'][a.module];module=kernel/'compiled'/Path(*a.module.split('.')).with_suffix('.olean');originalModule=module.read_bytes()
if hashlib.sha256(originalModule).hexdigest()!=entry['olean_sha256']:raise driver.ProofError('checked root module changed')
for checked,record in report['modules'].items():
 snapshot=kernel/record['source_snapshot'];raw=snapshot.read_bytes()
 if hashlib.sha256(raw).hexdigest()!=record['source_sha256']:raise driver.ProofError('checked source snapshot changed')
 # Generated data/assembly cannot override their pure logical value at runtime.
 if re.search(rb'@\[\s*(?:extern|implemented_by)\b|\battribute\s*\[\s*(?:extern|implemented_by)\b',raw):raise driver.ProofError('runtime override forbidden in checked binding input')
expected=a.expected.resolve();rawExpected=expected.read_bytes();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
expression='Core033.MatrixCodec.encode '+a.value if a.kind=='matrix' else a.value
imports=['import '+a.module]+(['import Core033.MatrixCodec'] if a.kind=='matrix' else [])
code=imports+['def main (args : List String) : IO UInt32 := do','  let [path] := args | do IO.eprintln "one output path required";return 3','  let bytes : List UInt8 := '+expression,'  IO.FS.writeBinFile path ⟨bytes.toArray⟩','  IO.println s!"bound closed data bytes={bytes.length}"','  return 0'];main=out/'BindValue.lean';main.write_text('\n'.join(code)+'\n');serialized=out/'serialized-checked-value.bin'
env=dict(os.environ,LEAN_PATH=':'.join(map(str,[kernel/'compiled',*sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean'))])))
version=driver._call(['lean','--version'],cwd=out,env=env,log=out/'toolchain.txt')
if 'version 4.30.0,' not in version:raise driver.ProofError('wrong pinned data evaluator')
driver._call(['lean','-j1','--run',str(main),str(serialized)],cwd=out,env=env,log=out/'serialization.txt')
actual=serialized.read_bytes()
if actual!=rawExpected:raise driver.ProofError('checked logical data value differs from complete actual artifact bytes')
if expected.read_bytes()!=rawExpected or module.read_bytes()!=originalModule or (kernel/'report.json').read_bytes()!=reportBytes:raise driver.ProofError('checked artifact changed during binding')
r={'format_version':'core033.checked-closed-data-binding.v1','outcome':'BoundCheckedValue','mathematical_outcome':report['outcome'],'mathematical_fresh_kernel_replay':True,'mathematical_report_sha256':hashlib.sha256(reportBytes).hexdigest(),'module':a.module,'value':a.value,'kind':a.kind,'bytes':len(actual),'sha256':hashlib.sha256(actual).hexdigest(),'expected_path':str(expected),'module_olean_sha256':entry['olean_sha256'],'equality':'complete byte-for-byte equality, not digest equality alone','assumption':'ordinary pinned Lean compiler/runtime and file I/O for data/literal binding only; no native-evaluation axiom or semantic proof authority','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,sort_keys=True,indent=2)+'\n');print(json.dumps(r))
