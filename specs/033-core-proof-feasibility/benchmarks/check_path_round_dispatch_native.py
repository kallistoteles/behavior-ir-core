"""Native fixed-dispatch diagnostics; no proof or G1 authority."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
evidence=Path('specs/033-core-proof-feasibility/evidence/scoped-chain')
generated=Path('experiments/transition-study033/generated')
files={'round033':generated/'path-round-dispatch-002/checker_step.rs',
       'hash033':generated/'frame-hash-controller-003/checker_step.rs',
       'advance033':generated/'path-frame-advance-001/checker_step.rs'}
identities={}
for name,path in files.items():
 raw=path.read_bytes();(out/(name+'.rs')).write_bytes(raw);identities[name]=hashlib.sha256(raw).hexdigest()
frameVectors=json.loads((evidence/'frame-hash-controller-native-001/vectors.json').read_text())
updates=json.loads((evidence/'path-frame-advance-native-001/vectors.json').read_text())
quote=lambda words:'['+','.join(str(word)+'_u32' for word in words)+']'
lines=[]
for name,size in [('round033',133),('hash033',125),('advance033',50)]:
 lines.append('fn '+name+'(input:[u32;43])->[u32;'+str(size)+']{'+name+'::checker_step('+','.join('input['+str(i)+']' for i in range(43))+')}')
lines+=['fn check(input:[u32;43]){',
 ' let actual=round033(input);let mut h=[0_u32;43];h[0]=1;h[1]=1;let mut a=h;a[0]=3;',
 ' if input[0]==1||input[0]==2{h=input;}if input[0]==3{a=input;}',
 ' let hashed=hash033(h);let advanced=advance033(a);',
 ' assert_eq!(&actual[..43],if input[0]==3{&advanced[..43]}else{&hashed[..43]});',
 ' assert_eq!(&actual[43..125],&hashed[43..]);assert_eq!(&actual[125..132],&advanced[43..]);',
 ' assert_eq!(actual[132],u32::from(input[0]>=1&&input[0]<=3));',
 ' if input[0]!=1&&input[0]!=2{assert!(actual[43..125].iter().all(|x|*x==1));}',
 ' if input[0]!=3{assert!(actual[125..132].iter().all(|x|*x==1));}',
 '}', 'fn main(){let vectors:&[[u32;43]]=&[']
standalone=[]
for case in frameVectors:
 for phase in [1,2,3]:standalone.append([phase]+case['frame']+[0xfeedbeef]*8)
standalone += [case['inputs'] for case in updates['standalone']]
base=updates['chains'][0]['initial']
for phase in [0,4,255,256,257,258,259,2**31,2**32-1]+[1<<bit for bit in range(32)]:
 case=list(base);case[0]=phase;standalone.append(case)
for counter in [255,256,257,2**31,2**32-1]:
 for phase in [1,2,3]:
  case=list(base);case[0]=phase;case[2]=counter;standalone.append(case)
lines += [quote(case)+',' for case in standalone]
lines += ['];for input in vectors{check(*input);}let chains:&[([u32;43],[u32;50])]=&[']
lines += ['('+quote(case['initial'])+','+quote(case['expected'])+'),' for case in updates['chains']]
lines += ['];for (initial,wanted) in chains{let mut state=*initial;for phase in [1,2,3]{assert_eq!(state[0],phase);let result=round033(state);assert!(result[43..].iter().all(|x|*x==1));state.copy_from_slice(&result[..43]);}assert_eq!(&state[..],&wanted[..43]);let stopped=round033(state);assert_eq!(stopped[132],0);}',
 f'println!("passed {len(standalone)} full-port dispatch cases and {len(updates["chains"])} complete independent-oracle chains");','}']
(out/'vectors.rs').write_text('\n'.join(lines)+'\n')
(out/'vectors.json').write_text(json.dumps({'standalone':standalone,'chains':updates['chains']},indent=2)+'\n')
def run(argv,name):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,capture_output=True,timeout=300,check=False,preexec_fn=limits)
 (out/(name+'.txt')).write_bytes(r.stdout+r.stderr)
 (out/(name+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+name)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong pinned compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes']
for name in files:run(['rustc',*flags,'--crate-type=rlib','--crate-name='+name,str(out/(name+'.rs')),'-o',str(out/('lib'+name+'.rlib'))],name+'-compile')
externs=[]
for name in files:externs+=['--extern',name+'='+str(out/('lib'+name+'.rlib'))]
run(['rustc',*flags,str(out/'vectors.rs'),*externs,'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'run')
for name,path in files.items():
 if hashlib.sha256(path.read_bytes()).hexdigest()!=identities[name]:raise RuntimeError('actual source changed')
receipt={'format_version':'core033.native-path-round-dispatch-diagnostic.v1','outcome':'DiagnosticNativeAgreement',
 'standalone_vectors':len(standalone),'complete_three_step_chains':len(updates['chains']),'source_sha256':identities,
 'scope':'all133 ports versus frozen component functions; all256 full-chain endpoints versus prior independent hashlib/count/root-byte-order oracle; invalid full phases, inactive fallbacks and terminal return rejection; native diagnostics only',
 'compiler':version,'release_relation_complete':False,'g1_pass':False}
(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
