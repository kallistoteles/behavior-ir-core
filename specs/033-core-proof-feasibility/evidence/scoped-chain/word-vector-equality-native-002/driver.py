"""Actual native all-bit full-word equality controls; no semantic proof authority."""
import argparse,hashlib,json,os,shutil,sys
from pathlib import Path
p=Path('experiments/transition-study033/proofs').resolve();sys.path.insert(0,str(p));import check_targets
parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');env=dict(os.environ);env.pop('RUSTC_BOOTSTRAP',None)
version=check_targets._call(['rustc','-Vv'],cwd=out,env=env,log=out/'compiler.txt')
if not version.startswith('rustc 1.98.1 ') or 'host: x86_64-unknown-linux-gnu' not in version:raise ValueError('wrong compiler/target')
flags=['--edition=2024','--target=x86_64-unknown-linux-gnu','-C','opt-level=3','-C','overflow-checks=yes'];cases=[]
for name,count in [('key',48),('digest',8)]:
 source=Path('experiments/transition-study033/generated/word-vector-equality-001')/name/'checker_step.rs';raw=source.read_bytes();snapshot=out/(name+'.rs');snapshot.write_bytes(raw);lib=out/('lib'+name+'033.rlib')
 check_targets._call(['rustc',*flags,'--crate-type=rlib','--crate-name',name+'033',str(snapshot),'-o',str(lib)],cwd=out,env=env,log=out/(name+'-library.txt'))
 code=['fn equal(input: [u32;'+str(2*count)+'])->u32 { '+name+'033::checker_step('+','.join('input['+str(i)+']' for i in range(2*count))+')[0] }','fn main() {',
   '  let mut seed=0x033faced_u32;','  for _ in 0..32 { let mut values=[0_u32;'+str(2*count)+'];for i in 0..'+str(count)+' { seed=seed.wrapping_mul(1664525).wrapping_add(1013904223);values[i]=seed;values['+str(count)+'+i]=seed; } assert_eq!(equal(values),1); }',
   '  for position in 0..'+str(count)+' { for bit in 0..32_u32 { for side in 0..2_usize { let mut values=[0xfedcba98_u32;'+str(2*count)+'];values[side*'+str(count)+'+position]^=1_u32<<bit;assert_eq!(equal(values),0,"full-word position {} bit {} side {}",position,bit,side); } } }',
   '  println!("passed 32 equality vectors and '+str(2*count*32)+' independent full-word bit flips");','}']
 harness=out/(name+'-vectors.rs');harness.write_text('\n'.join(code)+'\n');exe=out/(name+'-vectors')
 check_targets._call(['rustc',*flags,str(harness),'--extern',name+'033='+str(lib),'-o',str(exe)],cwd=out,env=env,log=out/(name+'-harness.txt'));check_targets._call([str(exe)],cwd=out,env=env,log=out/(name+'-run.txt'))
 if source.read_bytes()!=raw:raise ValueError('changed actual source')
 cases.append({'name':name,'word_count':count,'equal_vectors':32,'all_bit_rejection_vectors':2*count*32,'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),'library_sha256':hashlib.sha256(lib.read_bytes()).hexdigest(),'executable_sha256':hashlib.sha256(exe.read_bytes()).hexdigest()})
r={'format_version':'core033.full-word-vector-native-diagnostic.v1','outcome':'DiagnosticNativeAgreement','cases':cases,'compiler':version.strip(),'scope':'all32bits of every full key/digest word on both sides affect actual comparison output; native controls only','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n');print(json.dumps(r))
