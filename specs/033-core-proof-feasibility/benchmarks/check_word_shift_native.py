"""Independent canonical LE integer oracle and all eight byte-range flags."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');source=Path('experiments/transition-study033/generated/word-shift-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
vectors=[]
values=[0,1,2,255,256,65535,65536,2**31-1,2**31,2**32-1,0xaaaaaaaa,0x55555555]
amounts=list(range(65))+[127,255,256,65535,65536,2**31-1,2**31,2**32-1]
pairs=[(value,amount) for value in values for amount in amounts]
seed=0x033d2026
for _ in range(256):
 seed=(1664525*seed+1013904223)%2**32;value=seed
 seed=(1664525*seed+1013904223)%2**32;pairs.append((value,seed))
for value,amount in pairs:
 vectors.append({'inputs':[value,amount],'expected':[value>>(amount%32),int(amount<32)]})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');quote=lambda xs:'['+','.join(str(v)+'_u32' for v in xs)+']'
code=['extern crate wordshift033;','fn main() {','  let cases: &[([u32;2],[u32;2])] = &[']+[f'    ({quote(v["inputs"])},{quote(v["expected"])}),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    assert_eq!(wordshift033::checker_step(input[0],input[1]),*wanted,"dynamic shift vector {}",index);','  }','  println!("passed {} independent dynamic-shift vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=wordshift033',str(out/'checker_step.rs'),'-o',str(out/'libwordshift033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','wordshift033='+str(out/'libwordshift033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise RuntimeError('actual source changed')
r={'format_version':'core033.word-shift-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libwordshift033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'full-u32 logical shift through five constant stages and separate full shift<32 admission, including all valid offsets, high-bit alias attacks and full-word random amounts; native agreement only','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
