"""Independent bounded byte-cursor oracle across full-u32 boundaries."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');source=Path('experiments/transition-study033/generated/byte-cursor-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
vectors=[]
limits=[0,1,4,8,64,768,32768,2**30-1,2**30,2**30+1,2**31,2**32-1]
for limit in limits:
 positions=sorted(set([0,1,2,limit,max(0,limit-1),(limit+1)%2**32,2**32-1]))
 for position in positions:
  counts=sorted(set([0,1,2,3,4,8,64,limit,max(0,limit-position),max(0,limit-position)+1,2**30,2**32-1]))
  for count in counts:
   if count>=2**32:continue
   nextPosition=(position+count)%2**32;remaining=(limit-nextPosition)%2**32
   admitted=position<=limit and count<=limit-position and limit<=2**30
   if admitted and nextPosition!=position+count:raise RuntimeError('independent no-wrap admission failed')
   vectors.append({'inputs':[position,limit,count],'expected':[nextPosition,remaining,int(admitted),int(remaining==0)]})
seed=0x033c0101
for _ in range(256):
 values=[]
 for _ in range(3):seed=(1664525*seed+1013904223)%2**32;values.append(seed)
 position,limit,count=values;nextPosition=(position+count)%2**32;remaining=(limit-nextPosition)%2**32
 vectors.append({'inputs':values,'expected':[nextPosition,remaining,int(position<=limit and count<=limit-position and limit<=2**30),int(remaining==0)]})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');quote=lambda xs:'['+','.join(str(v)+'_u32' for v in xs)+']'
code=['extern crate cursor033;','fn main() {','  let cases: &[([u32;3],[u32;4])] = &[']+[f'    ({quote(v["inputs"])},{quote(v["expected"])}),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    assert_eq!(cursor033::checker_step(input[0],input[1],input[2]),*wanted,"byte cursor vector {}",index);','  }','  println!("passed {} independent byte-cursor vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=cursor033',str(out/'checker_step.rs'),'-o',str(out/'libcursor033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','cursor033='+str(out/'libcursor033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise RuntimeError('actual source changed')
r={'format_version':'core033.byte-cursor-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libcursor033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'full-u32 position/limit/count, exact bounded admission, no-wrap accepted advancement, remaining bytes and endpoint; supplementary native agreement only','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
