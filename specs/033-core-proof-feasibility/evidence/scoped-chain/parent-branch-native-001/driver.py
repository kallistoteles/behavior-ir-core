"""Independent canonical LE integer oracle and all eight byte-range flags."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');source=Path('experiments/transition-study033/generated/parent-branch-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
vectors=[]
# Separate standard integer-to-bytes oracle; include arbitrary input words to
# check the exact encoder even when a higher-level typed guard must reject.
def fieldExpected(words):
 left=words[18]+2**32*words[19];right=words[20]+2**32*words[21]
 wrapped=(left+right)%2**64
 return [int(words[0] in [1,2]),int(words[1]<256),int(words[24]<2),int(words[25]<2),
  int(wrapped%2**32==words[22]),int(wrapped//2**32==words[23]),int(left+right<=1048576)]
def byteExpected(words):
 result=b'core033.semantic.v1\0'+(81).to_bytes(2,'little')
 result+=bytes([words[0]%256])+(words[1]%65536).to_bytes(2,'little')
 result+=b''.join(word.to_bytes(4,'little') for word in words[2:24])
 result+=bytes([words[24]%256,words[25]%256])
 if len(result)!=115:raise RuntimeError('oracle framing error')
 return list(result)
def expected(words):
 left=words[18]+2**32*words[19];right=words[20]+2**32*words[21];total=(left+right)%2**64
 parent=words.copy();parent[22]=total%2**32;parent[23]=total//2**32
 parent[24]=words[22]&words[23];parent[25]=words[24]&words[25]
 return byteExpected(parent)+fieldExpected(parent)+[int(left+right<=1048576)]+[int(word<2) for word in words[22:26]]
cases=[]
for slot in range(26):
 for value in [0,1,2,255,256,65535,65536,2**31-1,2**31,2**32-1]:
  words=[0]*26;words[0]=1;words[1]=255;words[18]=11;words[20]=7;words[22]=18;words[24]=1;words[slot]=value;cases.append(words)
for left in [0,1,1048575,1048576,1048577,2**32,2**63,2**64-1]:
 for right in [0,1,1048575,1048576,1048577,2**32,2**63,2**64-1]:
  total=(left+right)%2**64
  words=[0]*26;words[0]=2;words[1]=255;words[18]=left%2**32;words[19]=left//2**32;words[20]=right%2**32;words[21]=right//2**32;words[22]=total%2**32;words[23]=total//2**32;words[24]=1;words[25]=1;cases.append(words)
seed=0x033b2026
for _ in range(256):
 words=[]
 for slot in range(26):
  seed=(1664525*seed+1013904223)%2**32;words.append(seed)
 cases.append(words)
for bits in range(16):
 for left,right in [(0,0),(1,7),(1048575,1),(1048576,0),(1048576,1)]:
  words=[0]*26;words[0]=1;words[1]=255;words[18]=left;words[20]=right
  words[22:26]=[(bits>>index)&1 for index in range(4)];cases.append(words)
for words in cases:vectors.append({'inputs':words,'expected':expected(words)})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');quote=lambda xs:'['+','.join(str(v)+'_u32' for v in xs)+']'
code=['extern crate parentbranch033;','fn main() {','  let cases: &[([u32;26],[u32;127])] = &[']+[f'    ({quote(v["inputs"])},{quote(v["expected"])}),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    assert_eq!(parentbranch033::checker_step(input[0],input[1],input[2],input[3],input[4],input[5],input[6],input[7],input[8],input[9],input[10],input[11],input[12],input[13],input[14],input[15],input[16],input[17],input[18],input[19],input[20],input[21],input[22],input[23],input[24],input[25]),*wanted,"branch bytes vector {}",index);','  }','  println!("passed {} independent branch-byte vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=parentbranch033',str(out/'checker_step.rs'),'-o',str(out/'libparentbranch033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','parentbranch033='+str(out/'libparentbranch033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise RuntimeError('actual source changed')
r={'format_version':'core033.computed-parent-branch-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libparentbranch033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'original 115 branch bytes with parent count and AND flags derived from both child summaries, plus all 12 admission flags; full-field/overflow/Boolean alias vectors; native agreement only','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
