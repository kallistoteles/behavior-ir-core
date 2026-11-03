"""Untrusted bounded quotation of the actual full return line; kernel check required."""
import json,re,shutil,sys
from pathlib import Path
from source_quote import lean_ascii_expression
p=Path(__file__).resolve().parent
inputs=Path(sys.argv[1])
ir=(inputs/'ActualOwnBranchRoutingIR.lean').read_text();match=re.search(r'def program : WordIR.Program := ⟨33,operationChunks.flatten,\[(.*?)\]⟩',ir)
if not match:raise ValueError('full actual IR required')
outputs=[int(value) for value in match[1].split(',')]
raw=Path('experiments/transition-study033/generated/own-branch-routing-001/checker_step.rs').read_bytes();footer=b''.join(raw.splitlines(keepends=True)[-2:])
opening=b'    [';ending=b']\n}\n'
if not footer.startswith(opening) or not footer.endswith(ending):raise ValueError('actual footer framing differs')
tokens=footer[len(opening):-len(ending)].split(b', ')
if len(tokens)!=45 or len(outputs)!=45:raise ValueError('full actual output list required')
parts=[outputs[start:min(start+16,44)] for start in range(0,44,16)]
code=['import ActualOwnBranchRoutingIR','import Core033.SourceReturns','import Core033.KernelDecide','namespace ArtifactOwnBranchRoutingFooter','open Core033 WordSource WordSourceBlocks SourceReturns','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 8000000']
lengths=[]
for group,indices in enumerate(parts):
 start=group*16;chunk=b''.join(token+b', ' for token in tokens[start:start+len(indices)]);lengths.append(len(chunk))
 code += [f'def indices{group} : List Nat := ['+','.join(map(str,indices))+']',f'def chunk{group} : Bytes := '+lean_ascii_expression(chunk),f'theorem checked{group} : chunk{group}=namePrefix indices{group} ∧ chunk{group}.length={len(chunk)} := by core033_kernel_decide']
code += ['def parts : List (List Nat) := ['+','.join(f'indices{g}' for g in range(len(parts)))+']','def chunks : List Bytes := ['+','.join(f'chunk{g}' for g in range(len(parts)))+']','def before : List Nat := parts.flatten',f'def lastIndex : Nat := {outputs[-1]}','def lastBytes : Bytes := '+lean_ascii_expression(tokens[-1]),'def opening : Bytes := '+lean_ascii_expression(opening),'def ending : Bytes := '+lean_ascii_expression(ending),'def actualFooter : Bytes := opening++chunks.flatten++lastBytes++ending',f'theorem lastChecked : lastBytes=name lastIndex ∧ lastBytes.length={len(tokens[-1])} := by core033_kernel_decide',f'theorem openingChecked : opening=Codec.textBytes "    [" ∧ opening.length={len(opening)} := by core033_kernel_decide',f'theorem endingChecked : ending=Codec.textBytes "]\\n}}\\n" ∧ ending.length={len(ending)} := by core033_kernel_decide','theorem outputPartition : ActualOwnBranchRoutingIR.program.outputs=before++[lastIndex] := rfl','theorem prefixExact : chunks.flatten=namePrefix before := by','  rw [before,namePrefix_flatten]','  simp only [chunks,parts,List.map_cons,List.map_nil,'+','.join(f'checked{g}.1' for g in range(len(parts)))+']','theorem checked : actualFooter=suffix ActualOwnBranchRoutingIR.program.outputs ∧ actualFooter.length='+str(len(footer))+' := by','  constructor','  · simp only [actualFooter,suffix,openingChecked.1,endingChecked.1,lastChecked.1,outputPartition,return_append_last,prefixExact,List.append_assoc]','  · simp only [actualFooter,List.length_append,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,openingChecked.2,endingChecked.2,lastChecked.2,'+','.join(f'checked{g}.2' for g in range(len(parts)))+']','    decide','end ArtifactOwnBranchRoutingFooter']
(inputs/'ArtifactOwnBranchRoutingFooter.lean').write_text('\n'.join(code)+'\n');shutil.copyfile(p/'Core033/SourceReturns.lean',inputs/'Core033/SourceReturns.lean')
print(json.dumps({'outcome':'PreparedUncheckedFooterChunks','output_count':45,'chunks':len(parts),'g1_pass':False}))
