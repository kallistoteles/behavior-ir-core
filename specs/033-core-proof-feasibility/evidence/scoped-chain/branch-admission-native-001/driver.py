"""Independent canonical LE integer oracle and all eight byte-range flags."""
import argparse,hashlib,json,resource,shutil,subprocess
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');source=Path('experiments/transition-study033/generated/branch-admission-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
vectors=[]
# Separate standard integer-to-bytes oracle; include arbitrary input words to
# check the exact encoder even when a higher-level typed guard must reject.
def expected(words):
 left=words[18]+2**32*words[19];right=words[20]+2**32*words[21]
 wrapped=(left+right)%2**64
 return [int(words[0] in [1,2]),int(words[1]<256),int(words[24]<2),int(words[25]<2),
  int(wrapped%2**32==words[22]),int(wrapped//2**32==words[23]),int(left+right<=1048576)]
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
for words in cases:vectors.append({'inputs':words,'expected':expected(words)})
(out/'vectors.json').write_text(json.dumps(vectors,indent=2)+'\n');quote=lambda xs:'['+','.join(str(v)+'_u32' for v in xs)+']'
code=['extern crate branchadmit033;','fn main() {','  let cases: &[([u32;26],[u32;7])] = &[']+[f'    ({quote(v["inputs"])},{quote(v["expected"])}),' for v in vectors]+['  ];','  for (index,(input,wanted)) in cases.iter().enumerate() {','    assert_eq!(branchadmit033::checker_step(input[0],input[1],input[2],input[3],input[4],input[5],input[6],input[7],input[8],input[9],input[10],input[11],input[12],input[13],input[14],input[15],input[16],input[17],input[18],input[19],input[20],input[21],input[22],input[23],input[24],input[25]),*wanted,"branch bytes vector {}",index);','  }','  println!("passed {} independent branch-byte vectors",cases.len());','}'];(out/'vectors.rs').write_text('\n'.join(code)+'\n')
def run(argv,log):
 def limits():resource.setrlimit(resource.RLIMIT_AS,(8*1024**3,8*1024**3))
 r=subprocess.run(argv,cwd=out,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=300,check=False,preexec_fn=limits);(out/(log+'.txt')).write_bytes(r.stdout);(out/(log+'.command.json')).write_text(json.dumps({'argv':list(map(str,argv)),'exit_code':r.returncode},indent=2)+'\n')
 if r.returncode:raise RuntimeError('native tool failed: '+log)
 return r.stdout
version=run(['rustc','--version'],'toolchain').decode().strip()
if 'rustc 1.98.1 ' not in version:raise RuntimeError('wrong compiler')
flags=['--edition=2024','-C','opt-level=3','-C','overflow-checks=yes'];run(['rustc',*flags,'--crate-type=rlib','--crate-name=branchadmit033',str(out/'checker_step.rs'),'-o',str(out/'libbranchadmit033.rlib')],'library');run(['rustc',*flags,str(out/'vectors.rs'),'--extern','branchadmit033='+str(out/'libbranchadmit033.rlib'),'-o',str(out/'vectors')],'harness');run([str(out/'vectors')],'vectors-run')
if source.read_bytes()!=raw:raise RuntimeError('actual source changed')
r={'format_version':'core033.branch-field-admission-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','vectors':len(vectors),'compiler':version,'source_sha256':hashlib.sha256(raw).hexdigest(),'library_sha256':hashlib.sha256((out/'libbranchadmit033.rlib').read_bytes()).hexdigest(),'harness_sha256':hashlib.sha256((out/'vectors').read_bytes()).hexdigest(),'scope':'all seven full-field branch admission flags, canonical kind/depth/Boolean and exact full-u64 count sum plus frozen cap, including 2^64 wrap and low-byte alias attacks; native agreement only','g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
