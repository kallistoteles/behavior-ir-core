"""Independent canonical LE integer oracle and all eight byte-range flags."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');source=Path('experiments/transition-study033/generated/node-count-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
vectors=[]
values=[0,1,2,1048575,1048576,1048577,2**31-1,2**31,2**32-1,2**32,2**63,2**64-1]
pairs=[(left,right) for left in values for right in values]
seed=0x033c2026
for _ in range(256):
 seed=(6364136223846793005*seed+1442695040888963407)%2**64;left=seed
 seed=(6364136223846793005*seed+1442695040888963407)%2**64;pairs.append((left,seed))
for left,right in pairs:
 total=(left+right)%2**64
 vectors.append({'inputs':[left%2**32,left//2**32,right%2**32,right//2**32],
  'expected':[total%2**32,total//2**32,int(left+right<=1048576)]})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');quote=lambda xs:'['+','.join(str(v)+'_u32' for v in xs)+']'
code=['extern crate nodecount033;','fn main() {','  let cases: &[([u32;4],[u32;3])] = &[']+[f'    ({quote(v["inputs"])},{quote(v["expected"])}),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    assert_eq!(nodecount033::checker_step(input[0],input[1],input[2],input[3]),*wanted,"integer bytes vector {}",index);','  }','  println!("passed {} independent integer-byte vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=nodecount033',str(out/'checker_step.rs'),'-o',str(out/'libnodecount033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','nodecount033='+str(out/'libnodecount033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise RuntimeError('actual source changed')
r={'format_version':'core033.node-count-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libnodecount033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'full-u64 child counts, exact wrapping sum and separate no-wrap frozen-cap admission, including 2^64 wrap attacks; native agreement only','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
