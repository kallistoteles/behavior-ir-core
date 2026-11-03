import Core033.WordMatrixWitness
import Core033.MatrixPrivatePorts
import Core033.WordSourceValidity
import Core033.WordMatrixShape
import Core033.PathFrameMeaning
import ActualPathFrameIR
import PathFrameRowsInputs
import PathFrameRowsOutputs
import PathFrameRows0
import PathFrameRows1
import PathFrameRows2
import PathFrameRows3
import PathFrameRows4
import PathFrameRows5
import PathFrameRows6
import PathFrameRows7
import PathFrameRows8
import PathFrameRows9
import PathFrameRows10
import PathFrameRows11
import PathFrameRows12
import PathFrameRows13
import PathFrameRows14
import PathFrameRows15
import PathFrameRows16
import PathFrameRows17
import PathFrameRows18
import PathFrameRows19
import PathFrameRows20
import PathFrameRows21
namespace ActualPathFrameMatrixPacket
open Core033 PathFrameInstructionData PathFrameCheckedRows MatrixRowBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
theorem input_ports : actualInputPorts=(List.range 34).map WordField.packed := by core033_kernel_decide
theorem output_ports : actualOutputPorts=(List.range 133).map (fun i=>47295+i) := by core033_kernel_decide
theorem private_ports : actualPrivatePorts=(List.range 34).flatMap WordMatrixPorts.tail++List.range' 1157 46138 := by
  unfold actualPrivatePorts
  rw [show List.range' 1124 46171=List.range' 1124 33++List.range' 1157 46138 from (List.range'_append_1 (s:=1124) (m:=33) (n:=46138)).symm]
  try simp only [List.append_assoc]
  rfl
theorem port_lengths : actualInputPorts.length=34 ∧ actualPrivatePorts.length=47260 ∧ actualOutputPorts.length=133 := by
  simp only [actualInputPorts,actualPrivatePorts,actualOutputPorts,List.length_append,List.length_cons,List.length_nil,List.length_range']
  decide
theorem constants : actualModulus=R1CS.pallasScalarModulus ∧ actualVariableCount=47428 ∧ actualConstantOne=0 := by decide
def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4,partOps5,partOps6,partOps7,partOps8,partOps9,partOps10,partOps11,partOps12,partOps13,partOps14,partOps15,partOps16,partOps17,partOps18,partOps19,partOps20,partOps21]
def bodyRows : List (List R1CS.Row) := [partRows0,partRows1,partRows2,partRows3,partRows4,partRows5,partRows6,partRows7,partRows8,partRows9,partRows10,partRows11,partRows12,partRows13,partRows14,partRows15,partRows16,partRows17,partRows18,partRows19,partRows20,partRows21]
def expectedProgram : WordIR.Program := ⟨34,blocks.flatten,ActualPathFrameIR.program.outputs⟩
theorem partition_checked : ActualPathFrameIR.program.operations=blocks.flatten := rfl
theorem expected_program_exact : expectedProgram=ActualPathFrameIR.program := by
  unfold expectedProgram
  rw [←partition_checked]
  rfl
theorem program_valid : expectedProgram.Valid := by
  rw [expected_program_exact]
  exact WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ActualPathFrameIR.safe_checked)
theorem program_counts : expectedProgram.inputCount=34 ∧ expectedProgram.operations.length=1357 ∧ expectedProgram.outputs.length=133 := by
  simp only [expectedProgram,blocks,List.length_flatten,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,partLength0,partLength1,partLength2,partLength3,partLength4,partLength5,partLength6,partLength7,partLength8,partLength9,partLength10,partLength11,partLength12,partLength13,partLength14,partLength15,partLength16,partLength17,partLength18,partLength19,partLength20,partLength21,ActualPathFrameIR.program,List.length_cons,List.length_nil]
  decide
theorem input_rows_exact : partRowsInputs=WordMatrix.inputRows actualModulus 34 := by
  simp only [partRowsInputs,rows0,rows1,rows2,rows3,rows4,rows5,rows6,rows7,rows8,rows9,rows10,rows11,rows12,rows13,rows14,rows15,rows16,rows17,rows18,rows19,rows20,rows21,rows22,rows23,rows24,rows25,rows26,rows27,rows28,rows29,rows30,rows31,rows32,rows33,List.append_assoc]
  rfl
theorem output_rows_exact : partRowsOutputs=WordMatrix.outputRows actualModulus expectedProgram := by
  simp only [partRowsOutputs,rows1391]
  rfl
theorem body_chain : RowChain actualModulus 34 blocks bodyRows := by
  unfold blocks bodyRows
  exact (RowChain.cons _ _ _ _ _ partExact0 (RowChain.cons _ _ _ _ _ partExact1 (RowChain.cons _ _ _ _ _ partExact2 (RowChain.cons _ _ _ _ _ partExact3 (RowChain.cons _ _ _ _ _ partExact4 (RowChain.cons _ _ _ _ _ partExact5 (RowChain.cons _ _ _ _ _ partExact6 (RowChain.cons _ _ _ _ _ partExact7 (RowChain.cons _ _ _ _ _ partExact8 (RowChain.cons _ _ _ _ _ partExact9 (RowChain.cons _ _ _ _ _ partExact10 (RowChain.cons _ _ _ _ _ partExact11 (RowChain.cons _ _ _ _ _ partExact12 (RowChain.cons _ _ _ _ _ partExact13 (RowChain.cons _ _ _ _ _ partExact14 (RowChain.cons _ _ _ _ _ partExact15 (RowChain.cons _ _ _ _ _ partExact16 (RowChain.cons _ _ _ _ _ partExact17 (RowChain.cons _ _ _ _ _ partExact18 (RowChain.cons _ _ _ _ _ partExact19 (RowChain.cons _ _ _ _ _ partExact20 (RowChain.cons _ _ _ _ _ partExact21 (RowChain.empty _)))))))))))))))))))))))
theorem body_exact : bodyRows.flatten=WordField.rows actualModulus 34 blocks.flatten := by
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
theorem actual_rows_size : actualMatrix.rows.length=47570 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=6928692 := by
  change actualFullRows.length=47570 ∧ MatrixRowBlocks.rowsWeight actualFullRows=6928692
  simp only [actualFullRows,bodyRows,List.flatten_cons,List.flatten_nil,List.append_nil,List.length_append,MatrixRowBlocks.rows_weight_append,partStatsInputs.1,partStats0.1,partStats1.1,partStats2.1,partStats3.1,partStats4.1,partStats5.1,partStats6.1,partStats7.1,partStats8.1,partStats9.1,partStats10.1,partStats11.1,partStats12.1,partStats13.1,partStats14.1,partStats15.1,partStats16.1,partStats17.1,partStats18.1,partStats19.1,partStats20.1,partStats21.1,partStatsOutputs.1,partStatsInputs.2,partStats0.2,partStats1.2,partStats2.2,partStats3.2,partStats4.2,partStats5.2,partStats6.2,partStats7.2,partStats8.2,partStats9.2,partStats10.2,partStats11.2,partStats12.2,partStats13.2,partStats14.2,partStats15.2,partStats16.2,partStats17.2,partStats18.2,partStats19.2,partStats20.2,partStats21.2,partStatsOutputs.2]
  decide
theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=7118486 := by
  rw [encoded_matrix_size]
  have inputCount : actualMatrix.inputPorts.length=34 := port_lengths.1
  have privateCount : actualMatrix.privatePorts.length=47260 := port_lengths.2.1
  have outputCount : actualMatrix.outputPorts.length=133 := port_lengths.2.2
  rw [inputCount,privateCount,outputCount,actual_rows_size.2]
theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_well_formed
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide
theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<34 → valuation (WordField.packed i)=((inputs i).toNat : F))
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
      (∀ i,i<34 → valuation (WordField.packed i)=((inputs i).toNat : F)) ∧
      ∀ position register,expectedProgram.outputs[position]?=some register →
        valuation (WordMatrix.outputBase expectedProgram+position)=
          ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by
  obtain ⟨valuation,satisfied,inputsExact,outputsExact⟩:=WordMatrix.matrix_complete (F:=F)
    R1CS.modulus_larger_than_word expectedProgram program_valid inputs
  refine ⟨valuation,?_,inputsExact,outputsExact⟩
  rw [actual_matrix_exact,constants.1]
  exact satisfied
theorem exact_path_frame_program_evaluation (inputs : Nat → WordIR.Word) :
    expectedProgram.eval inputs=PathFrameProgram.program.eval inputs := by
  rw [expected_program_exact,ActualPathFrameIR.ir_exact]
end ActualPathFrameMatrixPacket
