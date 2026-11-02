"""Independent byte-ingress range/big-endian vectors against actual compiled source."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
source=Path('experiments/transition-study033/generated/block-ingress-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
vectors=[]
blocks=[[0]*64,[255]*64,list(range(64))]
for i in range(128):
 blocks.append(list(hashlib.sha512(b'core033.block-ingress.native.v1\0'+i.to_bytes(4,'little')).digest()))
# A too-large input at every byte position must leave its own range flag zero.
for index in range(64):
 for invalid in [256,257,65536,2**31,2**32-1]:
  values=[0]*64;values[index]=invalid;blocks.append(values)
for values in blocks:
 packed=[(((values[i]>>8)|(values[i]<<24))&0xffffffff)+
         (((values[i+1]>>16)|(values[i+1]<<16))&0xffffffff)+
         (((values[i+2]>>24)|(values[i+2]<<8))&0xffffffff)+values[i+3]
         for i in range(0,64,4)]
 packed=[value&0xffffffff for value in packed]
 guards=[int(value<256) for value in values]
 if all(guards):
  wanted=[int.from_bytes(bytes(values[i:i+4]),'big') for i in range(0,64,4)]
  if wanted!=packed:raise RuntimeError('independent big-endian byte oracle mismatch')
 vectors.append({'inputs':values,'expected':packed+guards,'all_bytes_in_range':all(guards)})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');quote=lambda xs:'['+','.join(str(v)+'_u32' for v in xs)+']'
code=['extern crate ingress033;','fn main() {','  let cases: &[([u32;64],[u32;80])] = &[']+[f'    ({quote(v["inputs"])},{quote(v["expected"])}),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    let got=ingress033::checker_step(input[0],input[1],input[2],input[3],input[4],input[5],input[6],input[7],input[8],input[9],input[10],input[11],input[12],input[13],input[14],input[15],input[16],input[17],input[18],input[19],input[20],input[21],input[22],input[23],input[24],input[25],input[26],input[27],input[28],input[29],input[30],input[31],input[32],input[33],input[34],input[35],input[36],input[37],input[38],input[39],input[40],input[41],input[42],input[43],input[44],input[45],input[46],input[47],input[48],input[49],input[50],input[51],input[52],input[53],input[54],input[55],input[56],input[57],input[58],input[59],input[60],input[61],input[62],input[63]);','    assert_eq!(got,*wanted,"independent block-ingress vector {}",index);','  }','  println!("passed {} byte-ingress range/big-endian vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise ValueError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise ValueError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=ingress033',str(out/'checker_step.rs'),'-o',str(out/'libingress033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','ingress033='+str(out/'libingress033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise ValueError('actual source changed')
r={'format_version':'core033.block-ingress-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libingress033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'supplementary real Rust all 64 byte-range flags and full 16 big-endian SHA words; not source/matrix authority','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
