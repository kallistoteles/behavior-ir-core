"""Prepare whole-packet equations from checked actual numeric row modules.

Preparation is untrusted. Compilation, target axiom inspection and fresh replay
are mandatory before a whole-packet Checked result can exist.
"""
import argparse,json,re
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--inputs',type=Path,required=True);a=parser.parse_args();inputs=a.inputs
q=Path('experiments/transition-study033/generated/sha-word-matrix-quote-001');meta=json.loads((q/'quote.json').read_text())
ng=37
code=['import Core033.WordMatrixWitness','import Core033.MatrixPrivatePorts','import Core033.WordSourceValidity','import Core033.WordMatrixShape','import ArtifactSHABlocks','import ActualMatrixCheckedInputs','import ActualMatrixCheckedOutputs']+[f'import ActualMatrixChecked{g}' for g in range(ng)]+['namespace ActualSHAMatrixPacket','open Core033 ActualSHAWordMatrixData ActualSHAMatrixRows MatrixRowBlocks','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 16000000']
header=Path('specs/033-core-proof-feasibility/evidence/scoped-chain/actual-matrix-header-preflight-003/Compare.lean').read_text()
code += [header.split('def outputRegisters',1)[1].split('end ActualMatrixHeader')[0].join(['def outputRegisters',''])]
code += ['def blocks : List (List WordIR.Op) := ['+','.join(f'partOps{g}' for g in range(ng))+']','def bodyRows : List (List R1CS.Row) := ['+','.join(f'partRows{g}' for g in range(ng))+']','def expectedProgram : WordIR.Program := ⟨24,blocks.flatten,outputRegisters⟩']
for g in range(ng):
 code += [f'theorem block_partition{g} : ActualSHAMatrixRows.partOps{g}=ArtifactSHABlocks.partOps{g} := rfl']
code += ['theorem blocks_exact : blocks=ArtifactSHABlocks.blocks := by',
 '  simp only [blocks,ArtifactSHABlocks.blocks,'+','.join(f'block_partition{g}' for g in range(ng))+']',
 'theorem partition_checked : SHAMaterialized.program.operations=blocks.flatten := by',
 '  rw [blocks_exact]',
 '  exact ArtifactSHABlocks.partition_checked',
 'theorem expected_program_exact : expectedProgram=SHAMaterialized.program := by',
 '  unfold expectedProgram','  rw [←partition_checked]','  rfl',
 'theorem program_valid : expectedProgram.Valid := by',
 '  rw [expected_program_exact]',
 '  exact WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ArtifactSHABlocks.safe_checked)']
code += ['theorem program_counts : expectedProgram.inputCount=24 ∧ expectedProgram.operations.length=2360 ∧ expectedProgram.outputs.length=8 := by','  simp only [expectedProgram,blocks,List.length_flatten,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,'+','.join(f'partOpsLength{g}' for g in range(ng))+',outputRegisters,List.length_cons,List.length_nil]','  decide']
code += ['theorem input_rows_exact : partRowsInputs=WordMatrix.inputRows actualModulus 24 := by','  simp only [partRowsInputs,'+','.join(f'rows{i}' for i in range(24))+',List.append_assoc]','  rfl','theorem output_rows_exact : partRowsOutputs=WordMatrix.outputRows actualModulus expectedProgram := by','  simp only [partRowsOutputs,rows2384]','  rfl','theorem body_chain : RowChain actualModulus 24 blocks bodyRows := by','  unfold blocks bodyRows']
chain='(RowChain.empty _)'
for g in reversed(range(ng)):chain=f'(RowChain.cons _ _ _ _ _ partRowsExact{g} {chain})'
code += ['  exact '+chain,'theorem body_exact : bodyRows.flatten=WordField.rows actualModulus 24 blocks.flatten := by','  rw [chain_exact body_chain,MatrixRowBlocks.body_exact]','def actualFullRows : List R1CS.Row := partRowsInputs++bodyRows.flatten++partRowsOutputs','def actualMatrix : R1CS.Matrix := ⟨actualModulus,actualVariableCount,actualInputPorts,actualPrivatePorts,actualOutputPorts,actualConstantOne,actualFullRows⟩']
code += ['theorem actual_rows_exact : actualFullRows=(WordMatrix.compile actualModulus expectedProgram).rows := by','  rw [actualFullRows,input_rows_exact,output_rows_exact,body_exact]','  rfl','theorem actual_matrix_exact : actualMatrix=WordMatrix.compile actualModulus expectedProgram := by','  have count:=program_counts','  have privateRecipe:=MatrixPrivatePorts.private_interval actualModulus expectedProgram','  simp only [count.1,count.2.1,WordField.base] at privateRecipe','  have inputRecipe : (WordMatrix.compile actualModulus expectedProgram).inputPorts=actualInputPorts := input_ports.symm','  have outputRecipe : (WordMatrix.compile actualModulus expectedProgram).outputPorts=actualOutputPorts := by','    change (List.range expectedProgram.outputs.length).map (fun i=>WordMatrix.outputBase expectedProgram+i)=_','    simp only [count.1,count.2.1,count.2.2,WordMatrix.outputBase,WordMatrix.wordCount]','    exact output_ports.symm','  have privateSame : (WordMatrix.compile actualModulus expectedProgram).privatePorts=actualPrivatePorts := privateRecipe.trans private_ports.symm','  have variableSame : (WordMatrix.compile actualModulus expectedProgram).variableCount=actualVariableCount := by','    change WordMatrix.outputBase expectedProgram+expectedProgram.outputs.length=actualVariableCount','    simp only [WordMatrix.outputBase,WordMatrix.wordCount,count.1,count.2.1,count.2.2,actualVariableCount]','  have oneSame : (WordMatrix.compile actualModulus expectedProgram).constantOne=actualConstantOne := rfl','  have reconstructed : WordMatrix.compile actualModulus expectedProgram=','      R1CS.Matrix.mk actualModulus (WordMatrix.compile actualModulus expectedProgram).variableCount','        (WordMatrix.compile actualModulus expectedProgram).inputPorts (WordMatrix.compile actualModulus expectedProgram).privatePorts','        (WordMatrix.compile actualModulus expectedProgram).outputPorts (WordMatrix.compile actualModulus expectedProgram).constantOne','        (WordMatrix.compile actualModulus expectedProgram).rows := rfl','  rw [reconstructed,inputRecipe,privateSame,outputRecipe,variableSame,oneSame,←actual_rows_exact]','  rfl']
code += ['theorem actual_well_formed : actualMatrix.wellFormed=true := by','  rw [actual_matrix_exact]','  apply WordMatrixShape.complete_well_formedness','  · decide','  · decide','  · rw [←actual_matrix_exact];change actualVariableCount≤16777216;decide','  · exact program_valid']
labels=['Inputs']+[str(g) for g in range(ng)]+['Outputs']
sizeSimpl=['actualFullRows','bodyRows','List.flatten_cons','List.flatten_nil','List.append_nil','List.length_append','MatrixRowBlocks.rows_weight_append']+[f'partStats{g}.1' for g in labels]+[f'partStats{g}.2' for g in labels]
code += ['theorem actual_rows_size : actualMatrix.rows.length=81664 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=13802376 := by','  change actualFullRows.length=81664 ∧ MatrixRowBlocks.rowsWeight actualFullRows=13802376','  simp only ['+','.join(sizeSimpl)+']','  decide','theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=14126718 := by','  rw [encoded_matrix_size]','  have inputCount : actualMatrix.inputPorts.length=24 := port_lengths.1','  have privateCount : actualMatrix.privatePorts.length=81032 := port_lengths.2.1','  have outputCount : actualMatrix.outputPorts.length=8 := port_lengths.2.2','  rw [inputCount,privateCount,outputCount,actual_rows_size.2]','theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by','  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_well_formed','  · rw [actual_rows_size.1];decide','  · rw [actual_encoded_size];decide']
code += ['theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]','    (valuation : Nat → F) (inputs : Nat → WordIR.Word)','    (satisfied : actualMatrix.satisfies valuation)','    (inputValues : ∀ i,i<24 → valuation (WordField.packed i)=((inputs i).toNat : F))','    (position register : Nat) (found : expectedProgram.outputs[position]?=some register) :','    valuation (WordMatrix.outputBase expectedProgram+position)=','      ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by','  have fieldIdentity : actualModulus=R1CS.pallasScalarModulus := constants.1','  have standard : (WordMatrix.compile R1CS.pallasScalarModulus expectedProgram).satisfies valuation := by','    rw [←fieldIdentity,←actual_matrix_exact];exact satisfied','  exact WordMatrix.matrix_sound_at_output R1CS.modulus_larger_than_word expectedProgram program_valid','    valuation inputs standard inputValues position register found','end ActualSHAMatrixPacket']
code.pop()
code += ["theorem actual_all_outputs_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]",
    "    (inputs : Nat → WordIR.Word) :",
    "    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧",
    "      (∀ i,i<24 → valuation (WordField.packed i)=((inputs i).toNat : F)) ∧",
    "      ∀ position register,expectedProgram.outputs[position]?=some register →",
    "        valuation (WordMatrix.outputBase expectedProgram+position)=",
    "          ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by",
    "  obtain ⟨valuation,satisfied,inputsExact,outputsExact⟩:=WordMatrix.matrix_complete (F:=F)",
    "    R1CS.modulus_larger_than_word expectedProgram program_valid inputs",
    "  refine ⟨valuation,?_,inputsExact,outputsExact⟩",
    "  rw [actual_matrix_exact,constants.1]",
    "  exact satisfied",
    "theorem exact_sha_evaluation (inputs : Nat → WordIR.Word) :",
    "    expectedProgram.eval inputs=SHA256.stateWords",
    "      (SHA256.compress (SHA256Compiled.expectedState inputs) (SHA256Compiled.expectedBlock inputs)) := by",
    "  rw [expected_program_exact,SHAMaterialized.program_meaning]",
    "theorem actual_sha_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]",
    "    (valuation : Nat → F) (inputs : Nat → WordIR.Word)",
    "    (satisfied : actualMatrix.satisfies valuation)",
    "    (inputValues : ∀ i,i<24 → valuation (WordField.packed i)=((inputs i).toNat : F))",
    "    (position : Fin 8) :",
    "    valuation (81057+position.val)=",
    "      (((SHA256.stateWords (SHA256.compress (SHA256Compiled.expectedState inputs)",
    "        (SHA256Compiled.expectedBlock inputs))).getD position.val 0).toNat : F) := by",
    "  have bound : position.val<expectedProgram.outputs.length := by rw [program_counts.2.2];exact position.isLt",
    "  let register:=expectedProgram.outputs[position.val]'bound",
    "  have found : expectedProgram.outputs[position.val]?=some register := List.getElem?_eq_getElem bound",
    "  have checked:=actual_output_sound valuation inputs satisfied inputValues position.val register found",
    "  have outputBound : WordMatrix.outputBase expectedProgram=81057 := by",
    "    simp only [WordMatrix.outputBase,WordMatrix.wordCount,program_counts.1,program_counts.2.1]",
    "  rw [outputBound] at checked",
    "  have evaluated : (expectedProgram.eval inputs).getD position.val 0=",
    "      WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register := by",
    "    simp only [WordIR.Program.eval,List.getD_eq_getElem?_getD,List.getElem?_map,found,Option.map_some,Option.getD_some]",
    "  rw [←evaluated,exact_sha_evaluation] at checked",
    "  exact checked",
    "end ActualSHAMatrixPacket"]
# Derived byte-weight expectation is solely metadata and must be kernel checked.
weight=sum(g['encoded_bytes'] for g in meta['groups'])
code='\n'.join(code)+'\n';code=code.replace('13802376',str(weight))
(inputs/'ActualSHAMatrixPacket.lean').write_text(code)
print(json.dumps({'outcome':'PreparedUncheckedPacket','actual_numeric_rows':meta['rows'],'actual_row_bytes':weight,'g1_pass':False}))
