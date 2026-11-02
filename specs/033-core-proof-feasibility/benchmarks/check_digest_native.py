"""Independent complete32-byte/four-u64 native digest ABI diagnostics."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
source=Path('experiments/transition-study033/generated/digest-words-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
byte_cases=[bytes(32),bytes([255])*32,bytes(range(32)),hashlib.sha256(b'').digest(),hashlib.sha256(b'abc').digest(),hashlib.sha256(b'a'*1024).digest()]+[hashlib.sha256(b'core033.digest.order.v1\0'+i.to_bytes(4,'little')).digest() for i in range(128)]
vectors=[{'bytes_hex':b.hex(),'inputs':[int.from_bytes(b[i:i+4],'big') for i in range(0,32,4)],'expected':[int.from_bytes(b[i:i+4],'little') for i in range(0,32,4)],'limbs':[int.from_bytes(b[i:i+8],'little') for i in range(0,32,8)]} for b in byte_cases]
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n')
quote=lambda xs,kind:'['+','.join(str(v)+'_'+kind for v in xs)+']'
code=['extern crate digest033;','fn main() {','  let cases: &[([u32;8],[u32;8],[u64;4])] = &[']+[f'    ({quote(v["inputs"],"u32")},{quote(v["expected"],"u32")},{quote(v["limbs"],"u64")}), ' for v in vectors]+['  ];','  for (index,(input,wanted,limbs)) in cases.iter().enumerate() {','    let got=digest033::checker_step(input[0],input[1],input[2],input[3],input[4],input[5],input[6],input[7]);','    assert_eq!(got,*wanted,"independent digest word vector {}",index);','    for limb in 0..4 {','      let actual=u64::from(got[2*limb]) | (u64::from(got[2*limb+1]) << 32);','      assert_eq!(actual,limbs[limb],"full digest limb vector {}:{}",index,limb);','    }','  }','  println!("passed {} full32-byte/four-u64 digest vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise ValueError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise ValueError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes']
run(['rustc',*flags,'--crate-type=rlib','--crate-name=digest033',str(out/'checker_step.rs'),'-o',str(out/'libdigest033.rlib')],'library')
run(['rustc',*flags,str(out/'vectors.rs'),'--extern','digest033='+str(out/'libdigest033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise ValueError('actual source changed')
r={'format_version':'core033.digest-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libdigest033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'supplementary real Rust full-byte/four-u64 agreement; no source/matrix authority','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
