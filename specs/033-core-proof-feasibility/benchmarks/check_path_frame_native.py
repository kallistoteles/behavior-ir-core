"""Independent original-byte/address/count oracle for the actual complete frame."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args()
out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py')
source=Path('experiments/transition-study033/generated/path-frame-001/checker_step.rs').resolve();sourceBytes=source.read_bytes();(out/'checker_step.rs').write_bytes(sourceBytes)

def expected(words):
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
for position in range(34):
 for value in [0,1,2,255,256,65535,65536,1048576,2**31,2**32-1]:
  words=base();words[position]=value;cases.append(words)
for processed in range(258):
 for marker in [0,1,2**31,2**32-1]:
  words=base();words[1]=processed;words[2:10]=[((index+1)*0x01020304+marker)%2**32 for index in range(8)];cases.append(words)
seed=0x033f1126
for _ in range(128):
 words=[]
 for index in range(34):seed=(1664525*seed+1013904223)%2**32;words.append(seed)
 cases.append(words)
vectors=[{'inputs':words,'expected':expected(words)} for words in cases];(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n')
quote=lambda words:'['+','.join(str(word)+'_u32' for word in words)+']'
code=['extern crate pathframe033;','fn main() {','  let cases: &[([u32;34],[u32;133])] = &[']
code += [f'    ({quote(vector["inputs"])},{quote(vector["expected"])}),' for vector in vectors]
code += ['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    assert_eq!(pathframe033::checker_step('+','.join('input['+str(index)+']' for index in range(34))+'),*wanted,"full path frame vector {}",index);','  }','  println!("passed {} independent complete path-frame vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,capture_output=True,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout+r.stderr);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong pinned compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes']
run(['rustc',*flags,'--crate-type=rlib','--crate-name=pathframe033',str(out/'checker_step.rs'),'-o',str(out/'libpathframe033.rlib')],'library')
run(['rustc',*flags,str(out/'vectors.rs'),'--extern','pathframe033='+str(out/'libpathframe033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=sourceBytes:raise RuntimeError('actual generated source changed')
receipt={'format_version':'core033.integrated-path-frame-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(sourceBytes).hexdigest(),'library_sha256':hashlib.sha256((out/'libpathframe033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'original address byte order selects every root/count/flag child word, depth derives from full processed counter, exact parent bytes and all 17 flags; native agreement only','g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
