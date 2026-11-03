"""Independent native three-stage branch digest/metadata/counter diagnostics."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
source=Path('experiments/transition-study033/generated/path-frame-advance-001/checker_step.rs').resolve();sourceBytes=source.read_bytes();(out/'checker_step.rs').write_bytes(sourceBytes)
controller=Path('experiments/transition-study033/generated/frame-hash-controller-003/checker_step.rs').resolve();controllerBytes=controller.read_bytes();(out/'controller.rs').write_bytes(controllerBytes)
def frame_expected(words):
 processed=words[1];depth=255-processed%256
 address=b''.join(word.to_bytes(4,'big') for word in words[2:10])
 direction=(address[depth//8]>>(7-depth%8))&1
 child=words[10:18]+words[26:28]+[words[30],words[32]]
 sibling=words[18:26]+words[28:30]+[words[31],words[33]]
 left,right=(sibling,child) if direction else (child,sibling)
 leftCount=left[8]+2**32*left[9];rightCount=right[8]+2**32*right[9]
 total=(leftCount+rightCount)%2**64;positive=left[10]&right[10];covered=left[11]&right[11]
 body=b'core033.semantic.v1\0'+(81).to_bytes(2,'little')+bytes([words[0]%256])+depth.to_bytes(2,'little')
 body+=b''.join(word.to_bytes(4,'little') for word in left[:8]+right[:8])
 body+=leftCount.to_bytes(8,'little')+rightCount.to_bytes(8,'little')+total.to_bytes(8,'little')+bytes([positive%256,covered%256])
 if len(body)!=115:raise RuntimeError('independent original branch frame size')
 admitted=int(leftCount+rightCount<=1048576)
 flags=[int(words[0] in [1,2]),1,int(positive<2),int(covered<2),1,1,admitted,
   admitted,int(left[10]<2),int(right[10]<2),int(left[11]<2),int(right[11]<2)]
 return list(body)+flags+[int(processed<256),1,1,1,1,(processed+1)%2**32]

def base():
 words=[1,0]+[((index+1)*0x01020304)%2**32 for index in range(8)]
 words += [0x11110000+index for index in range(8)]+[0x22220000+index for index in range(8)]
 return words+[11,0,7,0,1,1,1,1]

def expected(inputs):
 result=list(inputs);result[0]=4;result[2]=(inputs[2]+1)%2**32
 result[11:19]=[int.from_bytes(value.to_bytes(4,'big'),'little') for value in inputs[35:43]]
 total=inputs[27]+2**32*inputs[28]+inputs[29]+2**32*inputs[30]
 result[27]=(total%2**64)%2**32;result[28]=(total%2**64)//2**32
 result[31]=inputs[31]&inputs[32];result[33]=inputs[33]&inputs[34]
 return result+[int(total<=1048576)]+[int(inputs[i]<2) for i in [31,32,33,34]]+[int(inputs[2]<256),int(inputs[0]==3)]
standalone=[]
for position in range(43):
 for value in [0,1,2,3,255,256,1048576,2**31,2**32-1]:
  inputs=[3]+base()+[0x01020304+i for i in range(8)];inputs[position]=value;standalone.append({'inputs':inputs,'expected':expected(inputs)})
chains=[]
for depth in range(256):
 words=base();words[1]=depth;words[0]=1+depth%2
 words[2:10]=[int.from_bytes(hashlib.sha256(str(depth).encode()).digest()[i:i+4],'big') for i in range(0,32,4)]
 words[30:34]=[(depth>>shift)&1 for shift in range(4)]
 message=bytes(frame_expected(words)[:115]);digest=hashlib.sha256(message).digest()
 hashed=[3]+words+[int.from_bytes(digest[i:i+4],'big') for i in range(0,32,4)]
 chains.append({'initial':[1]+words+[0xfeedbeef]*8,'expected':expected(hashed)})
(out/'vectors.json').write_text(json.dumps({'standalone':standalone,'chains':chains},indent=2)+'\n')
quote=lambda words:'['+','.join(str(word)+'_u32' for word in words)+']'
lines=['fn advance(input: [u32;43])->[u32;50] { advance033::checker_step('+','.join('input['+str(i)+']' for i in range(43))+') }',
 'fn hash(input: [u32;43])->[u32;125] { controller033::checker_step('+','.join('input['+str(i)+']' for i in range(43))+') }',
 'fn main() {','  let standalone: &[([u32;43],[u32;50])] = &[']
lines += ['('+quote(v['inputs'])+','+quote(v['expected'])+'),' for v in standalone]
lines += ['  ];','  for (i,(input,wanted)) in standalone.iter().enumerate() { assert_eq!(advance(*input),*wanted,"standalone vector {}",i); }','  let chains: &[([u32;43],[u32;50])] = &[']
lines += ['('+quote(v['initial'])+','+quote(v['expected'])+'),' for v in chains]
lines += ['  ];','  for (i,(input,wanted)) in chains.iter().enumerate() { let first=hash(*input);assert!(first[43..].iter().all(|x|*x==1));let mut state=[0_u32;43];state.copy_from_slice(&first[..43]);let second=hash(state);assert!(second[43..].iter().all(|x|*x==1));state.copy_from_slice(&second[..43]);let result=advance(state);assert_eq!(result,*wanted,"complete three-stage vector {}",i);assert!(result[43..].iter().all(|x|*x==1)); }','  println!("passed {} standalone updates and {} complete three-stage paths",standalone.len(),chains.len());','}']
(out/'vectors.rs').write_text('\n'.join(lines)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,capture_output=True,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout+r.stderr);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong pinned compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes']
run(['rustc',*flags,'--crate-type=rlib','--crate-name=advance033',str(out/'checker_step.rs'),'-o',str(out/'libadvance033.rlib')],'library')
run(['rustc',*flags,'--crate-type=rlib','--crate-name=controller033',str(out/'controller.rs'),'-o',str(out/'libcontroller033.rlib')],'controller-library')
run(['rustc',*flags,str(out/'vectors.rs'),'--extern','advance033='+str(out/'libadvance033.rlib'),'--extern','controller033='+str(out/'libcontroller033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=sourceBytes:raise RuntimeError('actual generated source changed')
if controller.read_bytes()!=controllerBytes:raise RuntimeError('actual controller source changed')
receipt={'format_version':'core033.native-three-stage-path-diagnostic.v1','outcome':'DiagnosticNativeAgreement','standalone_vectors':len(standalone),'three_stage_vectors':len(chains),'compiler':version,'source_sha256':hashlib.sha256(sourceBytes).hexdigest(),'controller_source_sha256':hashlib.sha256(controllerBytes).hexdigest(),'scope':'actual two compression steps plus complete digest byte-order/count/aggregate/counter state update at all256positions; independent hashlib and arithmetic oracle; native diagnostics only','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
