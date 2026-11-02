"""Independent canonical LE integer oracle and all eight byte-range flags."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');source=Path('experiments/transition-study033/generated/integer-ingress-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
vectors=[]
values=[]
for number in [0,1,255,256,65535,65536,2**31-1,2**31,2**32-1,2**32,2**63-1,2**63,2**64-1]:
 values.append(list(number.to_bytes(8,'little')))
for index in range(8):
 for byte in range(256):
  candidate=[0]*8;candidate[index]=byte;values.append(candidate)
 for invalid in [256,257,65535,2**31,2**32-1]:
  candidate=[17*i for i in range(8)];candidate[index]=invalid;values.append(candidate)
seed=0x0331e001
for _ in range(128):
 candidate=[]
 for _ in range(8):
  seed=(1664525*seed+1013904223)%2**32;candidate.append(seed%256)
 values.append(candidate)
def rotate(word,amount):return ((word>>amount)|(word<<(32-amount)))%2**32
def pack(words):
 a,b,c,d=words;return (a+rotate(b,24)+rotate(c,16)+rotate(d,8))%2**32
for inputs in values:
 low,high=pack(inputs[:4]),pack(inputs[4:])
 if all(word<256 for word in inputs) and low+2**32*high!=int.from_bytes(bytes(inputs),'little'):
  raise RuntimeError('independent canonical LE oracle differs')
 vectors.append({'inputs':inputs,'expected':[low,high,*[int(word<256) for word in inputs]]})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');quote=lambda xs:'['+','.join(str(v)+'_u32' for v in xs)+']'
code=['extern crate intbytes033;','fn main() {','  let cases: &[([u32;8],[u32;10])] = &[']+[f'    ({quote(v["inputs"])},{quote(v["expected"])}),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    assert_eq!(intbytes033::checker_step(input[0],input[1],input[2],input[3],input[4],input[5],input[6],input[7]),*wanted,"integer bytes vector {}",index);','  }','  println!("passed {} independent integer-byte vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=intbytes033',str(out/'checker_step.rs'),'-o',str(out/'libintbytes033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','intbytes033='+str(out/'libintbytes033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise RuntimeError('actual source changed')
r={'format_version':'core033.integer-byte-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libintbytes033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'canonical full-width u64 byte decoder, all eight byte-range flags, every byte/position and raw-u32 rejections; supplementary native agreement only','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
