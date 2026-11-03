"""Resume successful real block compiles; freshly audit/replay the whole closure."""
import argparse,hashlib,json,re,shutil,subprocess,sys
from pathlib import Path
import check_targets as driver
p=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--previous',type=Path,required=True);parser.add_argument('--out',type=Path,required=True);a=parser.parse_args();old=a.previous.resolve();out=a.out.resolve();out.mkdir(exist_ok=False);shutil.copyfile(__file__,out/'driver.py');inputs=out/'proof-inputs';shutil.copytree(old/'proof-inputs',inputs)
provenance={};allNames=[]
for command in sorted((old/'kernel').glob('*.compile.command.json')):
 r=json.loads(command.read_text());name=command.name.removesuffix('.compile.command.json')
 if name=='ArtifactPathFrameBlocks':continue
 if r['exit_code']!=0 or r['timed_out']:raise driver.ProofError('failed block compile: '+name)
 source=old/'proof-inputs'/Path(*name.split('.')).with_suffix('.lean');snapshot=old/'kernel/source-snapshot'/Path(*name.split('.')).with_suffix('.lean');olean=old/'kernel/compiled'/Path(*name.split('.')).with_suffix('.olean')
 if source.read_bytes()!=snapshot.read_bytes() or str(source) not in r['argv'] or str(olean) not in r['argv']:raise driver.ProofError('different actual compiler inputs: '+name)
 provenance[name]={'source_sha256':hashlib.sha256(source.read_bytes()).hexdigest(),'olean_sha256':hashlib.sha256(olean.read_bytes()).hexdigest(),'command_sha256':hashlib.sha256(command.read_bytes()).hexdigest()}
 allNames += [name+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',source.read_text(),re.M)]
if len(provenance)!=25:raise driver.ProofError('incomplete successful block inventory')
main=inputs/'ArtifactPathFrameBlocks.lean';code=main.read_text();ir=(inputs/'ActualPathFrameIR.lean').read_text();ops=re.search(r'def program : WordIR.Program := ⟨34,\[(.*?)\],',ir)[1].split(',');ng=22
# Materialize each finite operation block once. Small rfl equations bind each
# literal block to its already checked instruction bytes; no whole-program
# normalizer has to unfold 1357 singleton-list flattenings simultaneously.
aliases=[]
for g in range(ng):
 chunk=ops[64*g:min(64*g+64,len(ops))]
 aliases += [f'def partOps{g} : List WordIR.Op := ['+','.join(chunk)+']',f'theorem partPartition{g} : partOps{g}=ArtifactPathFrameGroup{g}.partOps := rfl',f'theorem partChecked{g} : ArtifactPathFrameGroup{g}.partBytes=statementBytes {34+64*g} (partOps{g}.map lower) := by',f'  rw [partPartition{g}]',f'  exact ArtifactPathFrameGroup{g}.partChecked',f'theorem partLength{g} : partOps{g}.length={len(chunk)} := rfl']
code=code.replace('def blocks :', '\n'.join(aliases)+'\ndef blocks :')
for g in range(ng):code=code.replace('def blocks : List (List WordIR.Op) := ['+','.join(f'ArtifactPathFrameGroup{i}.partOps' for i in range(ng))+']','def blocks : List (List WordIR.Op) := ['+','.join(f'partOps{i}' for i in range(ng))+']')
start=code.index('  exact (.cons ',code.index('theorem body_checked'));stop=code.index('\ntheorem actual_size',start)
body=[]
for g in range(ng):body += [f'  apply BlockChain.cons _ _ _ _ _ partChecked{g}',f'  simp only [partLength{g}]']
body+=['  exact .empty _'];code=code[:start]+'\n'.join(body)+code[stop:];main.write_text(code)
allNames+=['ArtifactPathFrameBlocks.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',code,re.M)];(out/'seed-provenance.json').write_text(json.dumps(provenance,indent=2,sort_keys=True)+'\n')
# Split the actual 64-parameter header into independently checked lines.
from source_quote import lean_ascii_expression
headerRaw=Path('experiments/transition-study033/generated/path-frame-001/checker_step.rs').read_bytes().splitlines(keepends=True)[:36]
header=['import Core033.SourceParameters','import Core033.KernelDecide','namespace ArtifactPathFrameHeader','open Core033 WordSource WordSourceBlocks','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
for i,line in enumerate(headerRaw[1:-1]):
 header += [f'def line{i} : Bytes := '+lean_ascii_expression(line),f'theorem lineChecked{i} : line{i}=parameterBytes {i} 1 ∧ line{i}.length={len(line)} := by core033_kernel_decide']
header += ['def parameters : List Bytes := ['+','.join(f'line{i}' for i in range(34))+']','def preamble : Bytes := '+lean_ascii_expression(headerRaw[0]),'def ending : Bytes := '+lean_ascii_expression(headerRaw[-1]),'def actualHeader : Bytes := preamble++parameters.flatten++ending',f'theorem preambleChecked : preamble=Codec.textBytes "pub fn checker_step(\\n" ∧ preamble.length={len(headerRaw[0])} := by core033_kernel_decide',f'theorem endingChecked : ending=Codec.textBytes ") -> [u32; 0x"++hexDigits 8 133++Codec.textBytes "_usize] {{\\n" ∧ ending.length={len(headerRaw[-1])} := by core033_kernel_decide','theorem parameterChain : SourceParameters.Chain 0 parameters := by','  unfold parameters']
chain='(.empty _)'
for i in reversed(range(34)):chain=f'(.cons _ _ _ lineChecked{i}.1 {chain})'
header += ['  exact '+chain,'theorem checked : actualHeader=headerBytes 34 133 ∧ actualHeader.length='+str(sum(map(len,headerRaw)))+' := by','  constructor','  · unfold actualHeader headerBytes','    rw [preambleChecked.1,SourceParameters.chain_exact parameterChain,endingChecked.1]','    rfl','  · simp only [actualHeader,List.length_append,WordSource.chunk_sizes_exact,parameters,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,preambleChecked.2,endingChecked.2,'+','.join(f'lineChecked{i}.2' for i in range(34))+']','    decide','end ArtifactPathFrameHeader']
(inputs/'ArtifactPathFrameHeader.lean').write_text('\n'.join(header)+'\n')
# SourceParameters is already a hashed, fresh-checked dependency in the successful block seeds.
code=code.replace('import ArtifactPathFrameGroup0','import ArtifactPathFrameHeader\nimport ArtifactPathFrameGroup0')
start=code.index('def actualHeader :');stop=code.index('\ndef actualFooter',start);code=code[:start]+'def actualHeader : Bytes := ArtifactPathFrameHeader.actualHeader'+code[stop:]
start=code.index('theorem header_checked :');stop=code.index('\ntheorem footer_checked',start);code=code[:start]+'theorem header_checked : actualHeader=headerBytes 34 133 ∧ actualHeader.length='+str(sum(map(len,headerRaw)))+' := ArtifactPathFrameHeader.checked'+code[stop:];main.write_text(code)
subprocess.run([sys.executable,str(p/'prepare_path_frame_source_footer.py'),str(inputs)],check=True)
code=main.read_text().replace('import ArtifactPathFrameHeader','import ArtifactPathFrameFooter\nimport Core033.PathFrameMeaning\nimport ArtifactPathFrameHeader')
start=code.index('def actualFooter :');stop=code.index('\ndef actualBytes',start)
code=code[:start]+'def actualFooter : Bytes := ArtifactPathFrameFooter.actualFooter'+code[stop:]
start=code.index('theorem footer_checked :');stop=code.index('\ntheorem body_checked',start)
footerLen=len(b''.join(Path('experiments/transition-study033/generated/path-frame-001/checker_step.rs').read_bytes().splitlines(keepends=True)[-2:]))
code=code[:start]+f'theorem footer_checked : actualFooter=suffix ActualPathFrameIR.program.outputs ∧ actualFooter.length={footerLen} := ArtifactPathFrameFooter.checked'+code[stop:]
main.write_text(code)
extra={}
for module,path in [('Core033.SourceReturns',inputs/'Core033/SourceReturns.lean'),('ArtifactPathFrameHeader',inputs/'ArtifactPathFrameHeader.lean'),('ArtifactPathFrameFooter',inputs/'ArtifactPathFrameFooter.lean')]:
 if module=='Core033.SourceReturns':
  seeded=old/'kernel/compiled/Core033/SourceReturns.olean'
  prior=json.loads((old/'kernel/report.json').read_text())
  expected=prior['seeded_modules'].get('Core033/SourceReturns.olean',{}).get('sha256')
  if seeded.exists():
   if expected is None or hashlib.sha256(seeded.read_bytes()).hexdigest()!=expected:raise driver.ProofError('changed seeded return-format proof')
   continue
 extra[module]=[module+'.'+n for n in re.findall(r'^theorem ([A-Za-z_0-9]+)',path.read_text(),re.M)]
r=driver.check_modules(inputs,{**extra,'ArtifactPathFrameBlocks':allNames},out/'kernel',audit_source=p/'Audit.lean',dependency_paths=sorted((p/'.lake/packages').glob('*/.lake/build/lib/lean')),seeded_modules=[old/'kernel/compiled'])
source=Path('experiments/transition-study033/generated/path-frame-001/checker_step.rs').resolve();raw=source.read_bytes();(out/'checker_step.rs').write_bytes(raw)
receipt={'format_version':'core033.actual-integrated-path-frame-source.v1','outcome':r['outcome'],'targets':len(r['theorems']),'fresh_kernel_replay':r['fresh_kernel_replay'],'source_sha256':hashlib.sha256(raw).hexdigest(),'source_bytes':len(raw),'actual_statement_count':1357,'scope':'complete integrated counter/address/word-order/parent frame with all 17 flags; physical node SHA, phase and original subject bindings remain open','release_relation_complete':False,'g1_pass':False};(out/'receipt.json').write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n');print(json.dumps(receipt))
