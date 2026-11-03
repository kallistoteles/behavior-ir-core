import ArtifactDigestVectorBlocks
import Core033.MatrixCodecChunks
import Core033.WordMatrixWitness
import Core033.MatrixPrivatePorts
import Core033.WordSourceValidity
import Core033.WordMatrixShape
import Core033.WordVectorEquality
import Core033.RawKeyCodec
import ActualDigestVectorIR
import DigestVectorRowsInputs
import DigestVectorRowsOutputs
import DigestVectorRows0
namespace ActualDigestVectorMatrixPacket
open Core033 DigestVectorInstructionData DigestVectorCheckedRows MatrixRowBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
theorem input_ports : actualInputPorts=(List.range 16).map WordField.packed := by core033_kernel_decide
theorem output_ports : actualOutputPorts=(List.range 1).map (fun i=>2449+i) := by core033_kernel_decide
theorem private_ports : actualPrivatePorts=(List.range 16).flatMap WordMatrixPorts.tail++List.range' 545 1904 := by
  unfold actualPrivatePorts
  rw [show List.range' 512 1937=List.range' 512 33++List.range' 545 1904 from (List.range'_append_1 (s:=512) (m:=33) (n:=1904)).symm]
  try simp only [List.append_assoc]
  rfl
theorem port_lengths : actualInputPorts.length=16 ∧ actualPrivatePorts.length=2432 ∧ actualOutputPorts.length=1 := by
  simp only [actualInputPorts,actualPrivatePorts,actualOutputPorts,List.length_append,List.length_cons,List.length_nil,List.length_range']
  decide
theorem constants : actualModulus=R1CS.pallasScalarModulus ∧ actualVariableCount=2450 ∧ actualConstantOne=0 := by decide
def blocks : List (List WordIR.Op) := [partOps0]
def bodyRows : List (List R1CS.Row) := [partRows0]
def expectedProgram : WordIR.Program := ⟨16,blocks.flatten,ActualDigestVectorIR.program.outputs⟩
theorem partition_checked : ActualDigestVectorIR.program.operations=blocks.flatten := by
  change ActualDigestVectorIR.operationChunks.flatten=blocks.flatten
  apply congrArg List.flatten
  rfl
theorem expected_program_exact : expectedProgram=ActualDigestVectorIR.program := by
  unfold expectedProgram
  rw [←partition_checked]
  rfl
theorem program_valid : expectedProgram.Valid := by
  rw [expected_program_exact]
  exact WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ActualDigestVectorIR.safe_checked)
theorem program_counts : expectedProgram.inputCount=16 ∧ expectedProgram.operations.length=56 ∧ expectedProgram.outputs.length=1 := by
  simp only [expectedProgram,blocks,List.length_flatten,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,partLength0,ActualDigestVectorIR.program,List.length_cons,List.length_nil]
  decide
theorem input_rows_exact : partRowsInputs=WordMatrix.inputRows actualModulus 16 := by
  simp only [partRowsInputs,rows0,rows1,rows2,rows3,rows4,rows5,rows6,rows7,rows8,rows9,rows10,rows11,rows12,rows13,rows14,rows15,List.append_assoc]
  rfl
theorem output_rows_exact : partRowsOutputs=WordMatrix.outputRows actualModulus expectedProgram := by
  simp only [partRowsOutputs,rows72]
  rfl
theorem body_chain : RowChain actualModulus 16 blocks bodyRows := by
  unfold blocks bodyRows
  exact (RowChain.cons _ _ _ _ _ partExact0 (RowChain.empty _))
theorem body_exact : bodyRows.flatten=WordField.rows actualModulus 16 blocks.flatten := by
  rw [chain_exact body_chain,MatrixRowBlocks.body_exact]
def actualFullRows : List R1CS.Row := partRowsInputs++bodyRows.flatten++partRowsOutputs
def actualMatrix : R1CS.Matrix := ⟨actualModulus,actualVariableCount,actualInputPorts,actualPrivatePorts,actualOutputPorts,actualConstantOne,actualFullRows⟩
theorem actual_rows_exact : actualFullRows=(WordMatrix.compile actualModulus expectedProgram).rows := by
  rw [actualFullRows,input_rows_exact,output_rows_exact,body_exact]
  rfl
theorem actual_matrix_exact : actualMatrix=WordMatrix.compile actualModulus expectedProgram := by
  have count:=program_counts
  have privateRecipe:=MatrixPrivatePorts.private_interval actualModulus expectedProgram
  simp only [count.1,count.2.1,WordField.base] at privateRecipe
  have inputRecipe : (WordMatrix.compile actualModulus expectedProgram).inputPorts=actualInputPorts := input_ports.symm
  have outputRecipe : (WordMatrix.compile actualModulus expectedProgram).outputPorts=actualOutputPorts := by
    change (List.range expectedProgram.outputs.length).map (fun i=>WordMatrix.outputBase expectedProgram+i)=_
    simp only [count.1,count.2.1,count.2.2,WordMatrix.outputBase,WordMatrix.wordCount]
    exact output_ports.symm
  have privateSame : (WordMatrix.compile actualModulus expectedProgram).privatePorts=actualPrivatePorts := privateRecipe.trans private_ports.symm
  have variableSame : (WordMatrix.compile actualModulus expectedProgram).variableCount=actualVariableCount := by
    change WordMatrix.outputBase expectedProgram+expectedProgram.outputs.length=actualVariableCount
    simp only [WordMatrix.outputBase,WordMatrix.wordCount,count.1,count.2.1,count.2.2,actualVariableCount]
  have oneSame : (WordMatrix.compile actualModulus expectedProgram).constantOne=actualConstantOne := rfl
  have reconstructed : WordMatrix.compile actualModulus expectedProgram=
      R1CS.Matrix.mk actualModulus (WordMatrix.compile actualModulus expectedProgram).variableCount
        (WordMatrix.compile actualModulus expectedProgram).inputPorts (WordMatrix.compile actualModulus expectedProgram).privatePorts
        (WordMatrix.compile actualModulus expectedProgram).outputPorts (WordMatrix.compile actualModulus expectedProgram).constantOne
        (WordMatrix.compile actualModulus expectedProgram).rows := rfl
  rw [reconstructed,inputRecipe,privateSame,outputRecipe,variableSame,oneSame,←actual_rows_exact]
  rfl
theorem actual_well_formed : actualMatrix.wellFormed=true := by
  rw [actual_matrix_exact]
  apply WordMatrixShape.complete_well_formedness
  · decide
  · decide
  · rw [←actual_matrix_exact];change actualVariableCount≤16777216;decide
  · exact program_valid
theorem actual_rows_size : actualMatrix.rows.length=2450 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=413232 := by
  change actualFullRows.length=2450 ∧ MatrixRowBlocks.rowsWeight actualFullRows=413232
  simp only [actualFullRows,bodyRows,List.flatten_cons,List.flatten_nil,List.append_nil,List.length_append,MatrixRowBlocks.rows_weight_append,partStatsInputs.1,partStats0.1,partStatsOutputs.1,partStatsInputs.2,partStats0.2,partStatsOutputs.2]
  decide
theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=423114 := by
  rw [encoded_matrix_size]
  have inputCount : actualMatrix.inputPorts.length=16 := port_lengths.1
  have privateCount : actualMatrix.privatePorts.length=2432 := port_lengths.2.1
  have outputCount : actualMatrix.outputPorts.length=1 := port_lengths.2.2
  rw [inputCount,privateCount,outputCount,actual_rows_size.2]
theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_well_formed
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide
theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<16 → valuation (WordField.packed i)=((inputs i).toNat : F))
    (position register : Nat) (found : expectedProgram.outputs[position]?=some register) :
    valuation (WordMatrix.outputBase expectedProgram+position)=
      ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by
  have fieldIdentity : actualModulus=R1CS.pallasScalarModulus := constants.1
  have standard : (WordMatrix.compile R1CS.pallasScalarModulus expectedProgram).satisfies valuation := by
    rw [←fieldIdentity,←actual_matrix_exact];exact satisfied
  exact WordMatrix.matrix_sound_at_output R1CS.modulus_larger_than_word expectedProgram program_valid
    valuation inputs standard inputValues position register found
theorem actual_all_outputs_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (inputs : Nat → WordIR.Word) :
    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧
      (∀ i,i<16 → valuation (WordField.packed i)=((inputs i).toNat : F)) ∧
      ∀ position register,expectedProgram.outputs[position]?=some register →
        valuation (WordMatrix.outputBase expectedProgram+position)=
          ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by
  obtain ⟨valuation,satisfied,inputsExact,outputsExact⟩:=WordMatrix.matrix_complete (F:=F)
    R1CS.modulus_larger_than_word expectedProgram program_valid inputs
  refine ⟨valuation,?_,inputsExact,outputsExact⟩
  rw [actual_matrix_exact,constants.1]
  exact satisfied
theorem exact_hash_block_program_evaluation (inputs : Nat → WordIR.Word) :
    expectedProgram.eval inputs=WordVectorEquality.digestProgram.eval inputs := by
  rw [expected_program_exact,ActualDigestVectorIR.ir_exact]
end ActualDigestVectorMatrixPacket
