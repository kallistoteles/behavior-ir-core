"""Paired old/new path round diagnostics, with independent original byte oracle."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
generated=Path('experiments/transition-study033/generated')
sources={'pair033':generated/'paired-path-round-001/checker_step.rs','round033':generated/'path-round-dispatch-002/checker_step.rs'}
hashes={}
for name,path in sources.items():
 raw=path.read_bytes();(out/(name+'.rs')).write_bytes(raw);hashes[name]=hashlib.sha256(raw).hexdigest()
def parent(kind,processed,address,child,sibling):
 depth=255-processed;key=b''.join(word.to_bytes(4,'big') for word in address)
 direction=(key[depth//8]>>(7-depth%8))&1
 left,right=(sibling,child) if direction else (child,sibling)
 lc=left[8]+2**32*left[9];rc=right[8]+2**32*right[9];count=lc+rc
 positive=left[10]&right[10];covered=left[11]&right[11]
 message=b'core033.semantic.v1\0'+(81).to_bytes(2,'little')+bytes([kind])+depth.to_bytes(2,'little')
 message+=b''.join(word.to_bytes(4,'little') for word in left[:8]+right[:8])
 message+=lc.to_bytes(8,'little')+rc.to_bytes(8,'little')+count.to_bytes(8,'little')+bytes([positive,covered])
 if len(message)!=115:raise RuntimeError('original branch byte framing')
 digest=hashlib.sha256(message).digest()
 return [int.from_bytes(digest[i:i+4],'little') for i in range(0,32,4)]+[count%2**32,count//2**32,positive,covered]
vectors=[]
for position in range(256):
 address=[int.from_bytes(hashlib.sha256(str(position).encode()).digest()[i:i+4],'big') for i in range(0,32,4)]
 old=[0x11110000+i+position for i in range(8)]+[11+position,0,position%2,(position>>1)%2]
 new=[0x22220000+i+position for i in range(8)]+[12+position,0,(position>>2)%2,(position>>3)%2]
 sibling=[0x33330000+i+position for i in range(8)]+[7,0,(position>>4)%2,(position>>5)%2]
 initial=[1,1+position%2,position]+address+old+new+sibling+[0xfeedbeef]*8+[0xaaaaaaaa]*12+[0xbbbbbbbb]*12+[0xcccc0000+i+position for i in range(17)]
 wanted=list(initial);wanted[0]=7;wanted[2]+=1
 wanted[55:67]=parent(initial[1],position,address,old,sibling)
 wanted[67:79]=parent(initial[1],position,address,new,sibling)
 if len(initial)!=96:raise RuntimeError('fixed state layout')
 vectors.append({'initial':initial,'expected':wanted})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n')
quote=lambda words:'['+','.join(str(word)+'_u32' for word in words)+']'
lines=['fn pair(input:[u32;96])->[u32;187]{pair033::checker_step('+','.join('input['+str(i)+']' for i in range(96))+')}',
 'fn round(input:[u32;43])->[u32;133]{round033::checker_step('+','.join('input['+str(i)+']' for i in range(43))+')}',
 'fn main(){let vectors:&[([u32;96],[u32;96])]=&[']
lines += ['('+quote(case['initial'])+','+quote(case['expected'])+'),' for case in vectors]
lines += ['];for (initial,wanted) in vectors{let mut state=*initial;for phase in 1..=6{',
 ' assert_eq!(state[0],phase);let mut local=[0_u32;43];local[0]=(phase-1)%3+1;local[1..11].copy_from_slice(&state[1..11]);',
 ' let child=if phase>=4{23}else{11};local[11..19].copy_from_slice(&state[child..child+8]);local[19..27].copy_from_slice(&state[35..43]);',
 ' local[27..29].copy_from_slice(&state[child+8..child+10]);local[29..31].copy_from_slice(&state[43..45]);local[31]=state[child+10];local[32]=state[45];local[33]=state[child+11];local[34]=state[46];local[35..43].copy_from_slice(&state[47..55]);',
 ' let computed=round(local);let actual=pair(state);let mut expected=state;expected[0]+=1;expected[47..55].copy_from_slice(&computed[35..43]);',
 ' if phase==3||phase==6{let base=if phase==3{55}else{67};expected[base..base+8].copy_from_slice(&computed[11..19]);expected[base+8..base+10].copy_from_slice(&computed[27..29]);expected[base+10]=computed[31];expected[base+11]=computed[33];}',
 ' if phase==6{expected[2]=computed[2];}assert_eq!(&actual[..96],&expected[..]);assert_eq!(&actual[96..186],&computed[43..]);assert_eq!(actual[186],1);assert!(actual[96..].iter().all(|x|*x==1));state=expected;',
 ' }assert_eq!(&state[..47],&wanted[..47]);assert_eq!(&state[55..],&wanted[55..]);assert_eq!(pair(state)[186],0);',
 ' for phase in [0,7,8,255,256,257,258,259,260,261,262,2147483648,4294967295]{let mut bad=*initial;bad[0]=phase;assert_eq!(pair(bad)[186],0);}',
 '}println!("passed 256 six-step paired paths, all state/guard ports and invalid full phases");}']
(out/'vectors.rs').write_text('\n'.join(lines)+'\n')
def run(argv,name):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,capture_output=True,timeout=300,check=False,preexec_fn=limits)
 (out/(name+'.txt')).write_bytes(r.stdout+r.stderr)
 (out/(name+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
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
receipt={'format_version':'core033.native-paired-path-round-diagnostic.v1','outcome':'DiagnosticNativeAgreement',
 'complete_six_step_pairs':256,'source_sha256':hashes,'compiler':version,
 'scope':'same sibling/address/children preserved in all96state ports, old/new parents match independent hashlib/original115byte framing, counter advances once, all187ports versus component routing, invalid phases rejected; no own-sibling authentication or whole K authority',
 'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
