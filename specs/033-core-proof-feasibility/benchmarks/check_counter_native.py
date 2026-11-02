"""Independent full-u64 counter boundary vectors against actual compiled source."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
source=Path('experiments/transition-study033/generated/counter-words-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
width=2**64;mask32=2**32-1;special=[0,1,2,2**32-1,2**32,2**63-1,2**63,width-2,width-1];pairs=[(p,r) for p in special for r in special]
for i in range(128):
 d=hashlib.sha256(b'core033.counter.native.v1\0'+i.to_bytes(4,'little')).digest();pairs.append((int.from_bytes(d[:8],'little'),int.from_bytes(d[8:16],'little')))
vectors=[]
for p,r in pairs:
 np=(p+1)%width;nr=(r-1)%width;allowP=int(p<width-1);allowR=int(r>0)
 vectors.append({'processed':p,'remaining':r,'inputs':[p&mask32,p>>32,r&mask32,r>>32],'expected':[np&mask32,np>>32,allowP,nr&mask32,nr>>32,allowR,int(nr==0),allowP&allowR]})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');quote=lambda xs:'['+','.join(str(v)+'_u32' for v in xs)+']'
code=['extern crate counter033;','fn main() {','  let cases: &[([u32;4],[u32;8])] = &[']+[f'    ({quote(v["inputs"])},{quote(v["expected"])}),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    let got=counter033::checker_step(input[0],input[1],input[2],input[3]);','    assert_eq!(got,*wanted,"independent counter vector {}",index);','  }','  println!("passed {} full-u64 counter boundary vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise ValueError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise ValueError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=counter033',str(out/'checker_step.rs'),'-o',str(out/'libcounter033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','counter033='+str(out/'libcounter033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise ValueError('actual source changed')
r={'format_version':'core033.counter-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libcounter033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'supplementary real Rust full-u64 arithmetic/overflow/underflow/ready flags; not source/matrix authority','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
