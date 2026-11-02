"""Actual Rust padding arithmetic including the high bit-length word and limits."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');source=Path('experiments/transition-study033/generated/padding-words-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
lengths=list(range(130))+[2**29-1,2**29,2**29+1,2**30-1,2**30,2**30+1,2**31,2**32-72,2**32-9,2**32-1]
for i in range(128):lengths.append(int.from_bytes(hashlib.sha256(b'core033.padding.native.v1\0'+i.to_bytes(4,'little')).digest()[:4],'little'))
vectors=[]
for n in lengths:
 z=(119-n%64)%64;total=(n+9+z)%2**32;bits=n*8
 expected=[z,total,bits%2**32,bits//2**32,total//64,int(n<=2**30)]
 if n<=2**30 and (total%64 or total<n+9):raise RuntimeError('independent padding oracle invalid')
 vectors.append({'length':n,'expected':expected})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n')
code=['extern crate padding033;','fn main() {','  let cases: &[(u32,[u32;6])] = &[']+[f'    ({v["length"]}_u32,['+','.join(str(x)+'_u32' for x in v['expected'])+']),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    assert_eq!(padding033::checker_step(*input),*wanted,"padding vector {}",index);','  }','  println!("passed {} independent padding vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=padding033',str(out/'checker_step.rs'),'-o',str(out/'libpadding033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','padding033='+str(out/'libpadding033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise RuntimeError('actual source changed')
r={'format_version':'core033.padding-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libpadding033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'padding sizes, high/low bit length, block count and profile rejection flag; downstream must constrain profile flag, not source/matrix authority','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
