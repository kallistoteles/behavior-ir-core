"""Independent complete signed-Int64 domain boundary diagnostics."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
source=Path('experiments/transition-study033/generated/signed-positive-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw);width=2**64
values=[-(2**63),-(2**63)+1,-(2**32),-1,0,1,2**32,2**63-1]
for i in range(128):
 bits=int.from_bytes(hashlib.sha256(b'core033.signed.native.v1\0'+i.to_bytes(4,'little')).digest()[:8],'little');values.append(bits if bits<2**63 else bits-width)
vectors=[]
for value in values:
 bits=value%width;vectors.append({'value':value,'inputs':[bits%(2**32),bits>>32],'expected':[int(value>0)]})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');q=lambda xs:'['+','.join(str(v)+'_u32' for v in xs)+']'
code=['extern crate signed033;','fn main() {',' let cases: &[([u32;2],[u32;1])] = &[']+[f' ({q(v["inputs"])},{q(v["expected"])}),' for v in vectors]+[' ];',' for (index,(input,wanted)) in cases.iter().enumerate() {','  let got=signed033::checker_step(input[0],input[1]);','  assert_eq!(got,*wanted,"exact signed Int64 positive vector {}",index);',' }',' println!("passed {} exact signed Int64 positive vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise ValueError('native tool failed '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise ValueError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=signed033',str(out/'checker_step.rs'),'-o',str(out/'libsigned033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','signed033='+str(out/'libsigned033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise ValueError('actual source changed')
r={'format_version':'core033.signed-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libsigned033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'supplementary actual native signed Int64 positive agreement; not source/matrix authority','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,sort_keys=True,indent=2)+'\n');print(json.dumps(r))
