"""Independent full two-step digest and state/guard diagnostics, not proof authority."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
source=Path('experiments/transition-study033/generated/frame-hash-controller-003/checker_step.rs').resolve();sourceBytes=source.read_bytes();(out/'checker_step.rs').write_bytes(sourceBytes)
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

cases=[]
for processed in range(256):
 words=base();words[1]=processed
 words[2:10]=[int.from_bytes(hashlib.sha256(str(processed).encode()).digest()[i:i+4],'big') for i in range(0,32,4)]
 words[0]=1+processed%2
 cases.append(words)
for position in range(34):
 for value in [0,1,2,255,256,65536,1048576,2**31,2**32-1]:
  words=base();words[position]=value;cases.append(words)
vectors=[]
for words in cases:
 frame=frame_expected(words);message=bytes(frame[:115]);digest=list(int.from_bytes(hashlib.sha256(message).digest()[i:i+4],'big') for i in range(0,32,4))
 vectors.append({'frame':words,'flags':frame[115:132],'digest':digest})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n')
quote=lambda words:'['+','.join(str(word)+'_u32' for word in words)+']'
lines=['fn step(state: [u32;43])->[u32;125] { controller033::checker_step('+','.join('state['+str(i)+']' for i in range(43))+') }','fn main() {','  let cases: &[([u32;34],[u32;17],[u32;8])] = &[']
lines += ['('+quote(v['frame'])+','+quote(v['flags'])+','+quote(v['digest'])+'),' for v in vectors]
lines += ['  ];','  for (index,(frame,flags,digest)) in cases.iter().enumerate() {',
 '    let mut state=[0_u32;43];state[0]=1;state[1..35].copy_from_slice(frame);state[35..].fill(0xfeedbeef);',
 '    let first=step(state);assert_eq!(first[0],2);assert_eq!(&first[1..35],frame);assert_eq!(&first[43..60],flags);assert!(first[60..].iter().all(|flag|*flag==1));',
 '    let mut changed=state;changed[35..].fill(0);assert_eq!(step(changed),first,"first phase must use IV");',
 '    state.copy_from_slice(&first[..43]);let last=step(state);assert_eq!(last[0],3);assert_eq!(&last[1..35],frame);assert_eq!(&last[35..43],digest,"full final digest vector {}",index);assert_eq!(&last[43..60],flags);assert!(last[60..].iter().all(|flag|*flag==1));',
 '    for invalid in [0_u32,3,257,258,65537,2147483649,4294967295] { state[0]=invalid;let result=step(state);assert_eq!(result[124],0,"full phase alias {}",invalid);assert_eq!(&result[1..35],frame); }',
 '  }','  println!("passed {} full two-step frame digests, first-phase IV independence and seven full-word phase aliases each",cases.len());','}']
(out/'vectors.rs').write_text('\n'.join(lines)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,capture_output=True,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout+r.stderr);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong pinned compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes']
run(['rustc',*flags,'--crate-type=rlib','--crate-name=controller033',str(out/'checker_step.rs'),'-o',str(out/'libcontroller033.rlib')],'library')
run(['rustc',*flags,str(out/'vectors.rs'),'--extern','controller033='+str(out/'libcontroller033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=sourceBytes:raise RuntimeError('actual generated source changed')
receipt={'format_version':'core033.frame-hash-controller-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','two_step_vectors':len(vectors),'phase_alias_vectors':7*len(vectors),'compiler':version,'source_sha256':hashlib.sha256(sourceBytes).hexdigest(),'source_bytes':len(sourceBytes),'scope':'all original frame fields preserved through both physical steps, all 82 exact flags, full hashlib final digest, first-step IV independence and full-word invalid phase rejection; native diagnostics only','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
