"""Own-branch adapter and two actual hashes versus independent original bytes."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
generated=Path('experiments/transition-study033/generated');sources={
 'route033':generated/'own-branch-routing-001/checker_step.rs',
 'hash033':generated/'frame-hash-controller-003/checker_step.rs'}
hashes={}
for name,path in sources.items():
 raw=path.read_bytes();(out/(name+'.rs')).write_bytes(raw);hashes[name]=hashlib.sha256(raw).hexdigest()
vectors=[]
for height in range(1,256):
 for flags in range(4):
  kind=1+height%2;left=[0x11110000+i+height for i in range(8)];right=[0x22220000+i+height for i in range(8)]
  lc=height;rc=1048576-height if height%3==0 else 7;positive=flags%2;covered=flags//2
  inputs=[height,kind]+left+right+[lc,0,rc,0,positive,covered,1]+[0xfeedbeef]*8
  message=b'core033.semantic.v1\0'+(81).to_bytes(2,'little')+bytes([kind])+(256-height).to_bytes(2,'little')
  message+=b''.join(word.to_bytes(4,'little') for word in left+right)
  message+=lc.to_bytes(8,'little')+rc.to_bytes(8,'little')+(lc+rc).to_bytes(8,'little')+bytes([positive,covered])
  if len(message)!=115:raise RuntimeError('original branch record byte length')
  digest=hashlib.sha256(message).digest();expected=[int.from_bytes(digest[i:i+4],'big') for i in range(0,32,4)]
  vectors.append({'inputs':inputs,'expected_sha_words':expected})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');quote=lambda words:'['+','.join(str(word)+'_u32' for word in words)+']'
lines=['fn route(input:[u32;33])->[u32;45]{route033::checker_step('+','.join('input['+str(i)+']' for i in range(33))+')}',
 'fn hash(input:[u32;43])->[u32;125]{hash033::checker_step('+','.join('input['+str(i)+']' for i in range(43))+')}',
 'fn main(){let vectors:&[([u32;33],[u32;8])]=&[']
lines += ['('+quote(v['inputs'])+','+quote(v['expected_sha_words'])+'),' for v in vectors]
lines += ['];for (input,wanted) in vectors{let routed=route(*input);assert_eq!(&routed[43..],&[1,1]);let mut frame=[0_u32;43];frame.copy_from_slice(&routed[..43]);let first=hash(frame);assert!(first[43..].iter().all(|x|*x==1));',
 ' let mut continued=*input;continued[24]=2;continued[25..33].copy_from_slice(&first[35..43]);let secondRoute=route(continued);assert_eq!(&secondRoute[..43],&first[..43]);frame.copy_from_slice(&secondRoute[..43]);let second=hash(frame);assert!(second[43..].iter().all(|x|*x==1));assert_eq!(&second[35..43],&wanted[..]);',
 ' for height in [0,256,257,65536,2147483648,4294967295]{let mut bad=*input;bad[0]=height;let result=route(bad);assert!(result[43..].iter().any(|x|*x!=1));}',
 '}println!("passed 1020 own-branch adapter/two-hash original-record cases and invalid heights");}']
(out/'vectors.rs').write_text('\n'.join(lines)+'\n')
def run(argv,name):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,capture_output=True,timeout=300,check=False,preexec_fn=limits)
 (out/(name+'.txt')).write_bytes(r.stdout+r.stderr);(out/(name+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+name)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];externs=[]
for name in sources:
 run(['rustc',*flags,'--crate-type=rlib','--crate-name='+name,str(out/(name+'.rs')),'-o',str(out/('lib'+name+'.rlib'))],name)
 externs+=['--extern',name+'='+str(out/('lib'+name+'.rlib'))]
run(['rustc',*flags,str(out/'vectors.rs'),*externs,'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'run')
for name,path in sources.items():
 if hashlib.sha256(path.read_bytes()).hexdigest()!=hashes[name]:raise RuntimeError('actual source changed')
r={'format_version':'core033.native-own-branch-routing-diagnostic.v1','outcome':'DiagnosticNativeAgreement','original_record_vectors':len(vectors),
 'source_sha256':hashes,'compiler':version,'scope':'all sibling heights1..255, both self P/C fields, original115byte records, actual adapter and two hashes, exact continuation ports and full digest, invalid full-u32 heights; expected sibling-root authentication and whole K remain open',
 'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
