"""Prepare whole-packet equations from checked actual numeric row modules.

Preparation is untrusted. Compilation, target axiom inspection and fresh replay
are mandatory before a whole-packet Checked result can exist.
"""
import argparse,json,re
from pathlib import Path
parser=argparse.ArgumentParser();parser.add_argument('--inputs',type=Path,required=True);a=parser.parse_args();inputs=a.inputs
q=inputs.parent/'actual-quote';meta=json.loads((q/'quote.json').read_text())
ng=22
code=['import Core033.WordMatrixWitness','import Core033.MatrixPrivatePorts','import Core033.WordSourceValidity','import Core033.WordMatrixShape','import Core033.PathFrameMeaning','import ActualPathFrameIR','import PathFrameRowsInputs','import PathFrameRowsOutputs']+[f'import PathFrameRows{g}' for g in range(ng)]+['namespace ActualPathFrameMatrixPacket','open Core033 PathFrameInstructionData PathFrameCheckedRows MatrixRowBlocks','set_option Elab.async false','set_option maxRecDepth 16384','set_option maxHeartbeats 16000000']
code += ['theorem input_ports : actualInputPorts=(List.range 34).map WordField.packed := by core033_kernel_decide',
 'theorem output_ports : actualOutputPorts=(List.range 133).map (fun i=>47295+i) := by core033_kernel_decide',
 "theorem private_ports : actualPrivatePorts=(List.range 34).flatMap WordMatrixPorts.tail++List.range' 1157 46138 := by",
 '  unfold actualPrivatePorts',
 "  rw [show List.range' 1124 46171=List.range' 1124 33++List.range' 1157 46138 from (List.range'_append_1 (s:=1124) (m:=33) (n:=46138)).symm]",
 '  try simp only [List.append_assoc]', '  rfl',
 'theorem port_lengths : actualInputPorts.length=34 ∧ actualPrivatePorts.length=47260 ∧ actualOutputPorts.length=133 := by',
 "  simp only [actualInputPorts,actualPrivatePorts,actualOutputPorts,List.length_append,List.length_cons,List.length_nil,List.length_range']", '  decide',
 'theorem constants : actualModulus=R1CS.pallasScalarModulus ∧ actualVariableCount=47428 ∧ actualConstantOne=0 := by decide']
code += ['def blocks : List (List WordIR.Op) := ['+','.join(f'partOps{g}' for g in range(ng))+']','def bodyRows : List (List R1CS.Row) := ['+','.join(f'partRows{g}' for g in range(ng))+']','def expectedProgram : WordIR.Program := ⟨34,blocks.flatten,ActualPathFrameIR.program.outputs⟩']
code += ['theorem partition_checked : ActualPathFrameIR.program.operations=blocks.flatten := rfl',
 'theorem expected_program_exact : expectedProgram=ActualPathFrameIR.program := by',
 '  unfold expectedProgram', '  rw [←partition_checked]', '  rfl',
 'theorem program_valid : expectedProgram.Valid := by',
 '  rw [expected_program_exact]',
 '  exact WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ActualPathFrameIR.safe_checked)']
code += ['theorem program_counts : expectedProgram.inputCount=34 ∧ expectedProgram.operations.length=1357 ∧ expectedProgram.outputs.length=133 := by','  simp only [expectedProgram,blocks,List.length_flatten,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,'+','.join(f'partLength{g}' for g in range(ng))+',ActualPathFrameIR.program,List.length_cons,List.length_nil]','  decide']
code += ['theorem input_rows_exact : partRowsInputs=WordMatrix.inputRows actualModulus 34 := by','  simp only [partRowsInputs,'+','.join(f'rows{i}' for i in range(34))+',List.append_assoc]','  rfl','theorem output_rows_exact : partRowsOutputs=WordMatrix.outputRows actualModulus expectedProgram := by','  simp only [partRowsOutputs,rows1391]','  rfl','theorem body_chain : RowChain actualModulus 34 blocks bodyRows := by','  unfold blocks bodyRows']
chain='(RowChain.empty _)'
for g in reversed(range(ng)):chain=f'(RowChain.cons _ _ _ _ _ partExact{g} {chain})'
code += ['  exact '+chain,'theorem body_exact : bodyRows.flatten=WordField.rows actualModulus 34 blocks.flatten := by','  rw [chain_exact body_chain,MatrixRowBlocks.body_exact]','def actualFullRows : List R1CS.Row := partRowsInputs++bodyRows.flatten++partRowsOutputs','def actualMatrix : R1CS.Matrix := ⟨actualModulus,actualVariableCount,actualInputPorts,actualPrivatePorts,actualOutputPorts,actualConstantOne,actualFullRows⟩']
code += ['theorem actual_rows_exact : actualFullRows=(WordMatrix.compile actualModulus expectedProgram).rows := by','  rw [actualFullRows,input_rows_exact,output_rows_exact,body_exact]','  rfl','theorem actual_matrix_exact : actualMatrix=WordMatrix.compile actualModulus expectedProgram := by','  have count:=program_counts','  have privateRecipe:=MatrixPrivatePorts.private_interval actualModulus expectedProgram','  simp only [count.1,count.2.1,WordField.base] at privateRecipe','  have inputRecipe : (WordMatrix.compile actualModulus expectedProgram).inputPorts=actualInputPorts := input_ports.symm','  have outputRecipe : (WordMatrix.compile actualModulus expectedProgram).outputPorts=actualOutputPorts := by','    change (List.range expectedProgram.outputs.length).map (fun i=>WordMatrix.outputBase expectedProgram+i)=_','    simp only [count.1,count.2.1,count.2.2,WordMatrix.outputBase,WordMatrix.wordCount]','    exact output_ports.symm','  have privateSame : (WordMatrix.compile actualModulus expectedProgram).privatePorts=actualPrivatePorts := privateRecipe.trans private_ports.symm','  have variableSame : (WordMatrix.compile actualModulus expectedProgram).variableCount=actualVariableCount := by','    change WordMatrix.outputBase expectedProgram+expectedProgram.outputs.length=actualVariableCount','    simp only [WordMatrix.outputBase,WordMatrix.wordCount,count.1,count.2.1,count.2.2,actualVariableCount]','  have oneSame : (WordMatrix.compile actualModulus expectedProgram).constantOne=actualConstantOne := rfl','  have reconstructed : WordMatrix.compile actualModulus expectedProgram=','      R1CS.Matrix.mk actualModulus (WordMatrix.compile actualModulus expectedProgram).variableCount','        (WordMatrix.compile actualModulus expectedProgram).inputPorts (WordMatrix.compile actualModulus expectedProgram).privatePorts','        (WordMatrix.compile actualModulus expectedProgram).outputPorts (WordMatrix.compile actualModulus expectedProgram).constantOne','        (WordMatrix.compile actualModulus expectedProgram).rows := rfl','  rw [reconstructed,inputRecipe,privateSame,outputRecipe,variableSame,oneSame,←actual_rows_exact]','  rfl']
code += ['theorem actual_well_formed : actualMatrix.wellFormed=true := by','  rw [actual_matrix_exact]','  apply WordMatrixShape.complete_well_formedness','  · decide','  · decide','  · rw [←actual_matrix_exact];change actualVariableCount≤16777216;decide','  · exact program_valid']
labels=['Inputs']+[str(g) for g in range(ng)]+['Outputs']
sizeSimpl=['actualFullRows','bodyRows','List.flatten_cons','List.flatten_nil','List.append_nil','List.length_append','MatrixRowBlocks.rows_weight_append']+[f'partStats{g}.1' for g in labels]+[f'partStats{g}.2' for g in labels]
code += ['theorem actual_rows_size : actualMatrix.rows.length=9109 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=13802376 := by','  change actualFullRows.length=9109 ∧ MatrixRowBlocks.rowsWeight actualFullRows=13802376','  simp only ['+','.join(sizeSimpl)+']','  decide','theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=BYTE_SIZE := by','  rw [encoded_matrix_size]','  have inputCount : actualMatrix.inputPorts.length=34 := port_lengths.1','  have privateCount : actualMatrix.privatePorts.length=47260 := port_lengths.2.1','  have outputCount : actualMatrix.outputPorts.length=133 := port_lengths.2.2','  rw [inputCount,privateCount,outputCount,actual_rows_size.2]','theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by','  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_well_formed','  · rw [actual_rows_size.1];decide','  · rw [actual_encoded_size];decide']
code += ['theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]','    (valuation : Nat → F) (inputs : Nat → WordIR.Word)','    (satisfied : actualMatrix.satisfies valuation)','    (inputValues : ∀ i,i<34 → valuation (WordField.packed i)=((inputs i).toNat : F))','    (position register : Nat) (found : expectedProgram.outputs[position]?=some register) :','    valuation (WordMatrix.outputBase expectedProgram+position)=','      ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by','  have fieldIdentity : actualModulus=R1CS.pallasScalarModulus := constants.1','  have standard : (WordMatrix.compile R1CS.pallasScalarModulus expectedProgram).satisfies valuation := by','    rw [←fieldIdentity,←actual_matrix_exact];exact satisfied','  exact WordMatrix.matrix_sound_at_output R1CS.modulus_larger_than_word expectedProgram program_valid','    valuation inputs standard inputValues position register found','end ActualPathFrameMatrixPacket']
code.pop()
code += ["theorem actual_all_outputs_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]",
    "    (inputs : Nat → WordIR.Word) :",
    "    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧",
    "      (∀ i,i<34 → valuation (WordField.packed i)=((inputs i).toNat : F)) ∧",
    "      ∀ position register,expectedProgram.outputs[position]?=some register →",
    "        valuation (WordMatrix.outputBase expectedProgram+position)=",
    "          ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by",
    "  obtain ⟨valuation,satisfied,inputsExact,outputsExact⟩:=WordMatrix.matrix_complete (F:=F)",
    "    R1CS.modulus_larger_than_word expectedProgram program_valid inputs",
    "  refine ⟨valuation,?_,inputsExact,outputsExact⟩",
    "  rw [actual_matrix_exact,constants.1]",
    "  exact satisfied",
    "theorem exact_path_frame_program_evaluation (inputs : Nat → WordIR.Word) :",
    "    expectedProgram.eval inputs=PathFrameProgram.program.eval inputs := by",
    "  rw [expected_program_exact,ActualPathFrameIR.ir_exact]",
    "end ActualPathFrameMatrixPacket"]
# Derived byte-weight expectation is solely metadata and must be kernel checked.
weight=sum(g['encoded_bytes'] for g in meta['groups'])
code='\n'.join(code)+'\n';code=code.replace('13802376',str(weight)).replace('9109',str(meta['rows'])).replace('BYTE_SIZE',str(meta['source_bytes']))
(inputs/'ActualPathFrameMatrixPacket.lean').write_text(code)
print(json.dumps({'outcome':'PreparedUncheckedPacket','actual_numeric_rows':meta['rows'],'actual_row_bytes':weight,'g1_pass':False}))
