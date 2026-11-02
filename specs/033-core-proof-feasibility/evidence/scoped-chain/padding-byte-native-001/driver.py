"""Independent padding-byte oracle across stream phases, boundaries and rejections."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');source=Path('experiments/transition-study033/generated/padding-byte-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
lengths=[0,1,2,3,4,5,7,8,15,16,31,32,54,55,56,57,62,63,64,65,118,119,120,121,127,128,129,255,256,257,2**29-1,2**29,2**29+1,2**30-1,2**30,2**30+1,2**31,2**32-1]
vectors=[]
for n in lengths:
 zeros=(119-n%64)%64;total=(n+9+zeros)%2**32;lengthBytes=list((n*8).to_bytes(8,'big'))
 positions=set([0,1,n,max(0,n-1),(n+1)%2**32,total,(total+1)%2**32,*[(total-k)%2**32 for k in range(1,11)]])
 if n in [0,55,56,63,64,65]:positions.update(range(total))
 for position in sorted(positions):
  values=[(n*7+position*17)%256]
  if position in [0,n,(total-1)%2**32]:values += [0,127,128,255,256,2**32-1]
  for rawByte in sorted(set(values)):
   tail=0
   for k,index in [(5,3),(4,4),(3,5),(2,6),(1,7)]:
    if position==(total-k)%2**32:tail=lengthBytes[index];break
   byte=rawByte if position<n else (128 if position==n else tail)
   if n<=2**30 and position<total:
    expectedCanonical=rawByte if position<n else (128 if position==n else (0 if position<total-8 else lengthBytes[position-(total-8)]))
    if byte!=expectedCanonical:raise RuntimeError('independent canonical padding oracle disagrees')
   vectors.append({'inputs':[n,position,rawByte],'expected':[byte,int(n<=2**30),int(position<total),int(rawByte<256)]})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');quote=lambda xs:'['+','.join(str(v)+'_u32' for v in xs)+']'
code=['extern crate padbyte033;','fn main() {','  let cases: &[([u32;3],[u32;4])] = &[']+[f'    ({quote(v["inputs"])},{quote(v["expected"])}),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    assert_eq!(padbyte033::checker_step(input[0],input[1],input[2]),*wanted,"padding byte vector {}",index);','  }','  println!("passed {} independent padding-byte vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=padbyte033',str(out/'checker_step.rs'),'-o',str(out/'libpadbyte033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','padbyte033='+str(out/'libpadbyte033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise RuntimeError('actual source changed')
r={'format_version':'core033.padding-byte-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libpadbyte033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'data/marker/zero/length byte and all profile/position/raw-byte flags, supplementary native agreement only','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
