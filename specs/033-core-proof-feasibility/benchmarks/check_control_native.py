"""Compile actual emitted control Rust and compare independent integer vectors."""
import argparse,hashlib,json,os,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
source=Path('experiments/transition-study033/generated/control-primitives-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
cases=[[0,0,0,0,0,0,0],[0xffffffff,0xffffffff,1,0,1,0x12345678,0x9abcdef0],[0xffffffff,0x7fffffff,1,0,0,0xffffffff,0],[0,0x80000000,0xffffffff,0xffffffff,1,0,0xffffffff]]
for i in range(128):
 digest=hashlib.sha256(b'core033.control.vectors.v1\0'+i.to_bytes(4,'little')).digest();v=[int.from_bytes(digest[j:j+4],'little') for j in range(0,28,4)];v[4]=[0,1,2,0xffffffff][i%4];cases.append(v)
mask32=2**32-1;vectors=[]
for v in cases:
 left=v[0]+2**32*v[1];right=v[2]+2**32*v[3];added=(left+right)%(2**64);mask=(-v[4])&mask32
 expected=[added&mask32,added>>32,int(v[0]+v[2]>=2**32),int(v[0]<v[2]),int(v[0]==0),v[1]>>31,(mask&v[5])^((~mask&mask32)&v[6])]
 vectors.append({'inputs':v,'expected':expected})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n')
quote=lambda xs:'['+','.join(f'{v}_u32' for v in xs)+']'
code=['extern crate control033;','fn main() {','  let cases: &[([u32;7],[u32;7])] = &[']+[f'    ({quote(v["inputs"])},{quote(v["expected"])}),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    let got=control033::checker_step(input[0],input[1],input[2],input[3],input[4],input[5],input[6]);','    assert_eq!(got,*wanted,"independent control vector {}",index);','  }','  println!("passed {} independent control vectors",cases.len());','}']
(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits)
 (out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise ValueError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise ValueError('wrong pinned compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes']
run(['rustc',*flags,'--crate-type=rlib','--crate-name=control033',str(out/'checker_step.rs'),'-o',str(out/'libcontrol033.rlib')],'library')
run(['rustc',*flags,str(out/'vectors.rs'),'--extern','control033='+str(out/'libcontrol033.rlib'),'-o',str(out/'vectors')],'harness')
run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise ValueError('actual source changed')
receipt={'format_version':'core033.control-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libcontrol033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'supplementary native integer agreement; not mathematical/source/matrix authority','g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
