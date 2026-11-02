import Core033.WordMatrixWitness
import Core033.MatrixPrivatePorts
import Core033.WordSourceValidity
import Core033.WordMatrixShape
import ActualPadByteIR
import PadByteRowsInputs
import PadByteRowsOutputs
import PadByteRows0
import PadByteRows1
import PadByteRows2
import PadByteRows3
import PadByteRows4
import PadByteRows5
import PadByteRows6
import PadByteRows7
import PadByteRows8
import PadByteRows9
import PadByteRows10
import PadByteRows11
import PadByteRows12
namespace ActualPadByteMatrixPacket
open Core033 PadByteInstructionData PadByteCheckedRows MatrixRowBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
theorem input_ports : actualInputPorts=(List.range 3).map WordField.packed := by core033_kernel_decide
theorem output_ports : actualOutputPorts=(List.range 4).map (fun i=>27983+i) := by core033_kernel_decide
theorem private_ports : actualPrivatePorts=(List.range 3).flatMap WordMatrixPorts.tail++List.range' 103 27880 := by
  unfold actualPrivatePorts
  rw [show List.range' 70 27913=List.range' 70 33++List.range' 103 27880 from (List.range'_append_1 (s:=70) (m:=33) (n:=27880)).symm]
  simp only [List.append_assoc]
  rfl
theorem port_lengths : actualInputPorts.length=3 ∧ actualPrivatePorts.length=27979 ∧ actualOutputPorts.length=4 := by
  simp only [actualInputPorts,actualPrivatePorts,actualOutputPorts,List.length_append,List.length_cons,List.length_nil,List.length_range']
  decide
theorem constants : actualModulus=R1CS.pallasScalarModulus ∧ actualVariableCount=27987 ∧ actualConstantOne=0 := by decide
def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4,partOps5,partOps6,partOps7,partOps8,partOps9,partOps10,partOps11,partOps12]
def bodyRows : List (List R1CS.Row) := [partRows0,partRows1,partRows2,partRows3,partRows4,partRows5,partRows6,partRows7,partRows8,partRows9,partRows10,partRows11,partRows12]
def expectedProgram : WordIR.Program := ⟨3,blocks.flatten,ActualPadByteIR.program.outputs⟩
theorem partition_checked : ActualPadByteIR.program.operations=blocks.flatten := rfl
theorem expected_program_exact : expectedProgram=ActualPadByteIR.program := by
  unfold expectedProgram
  rw [←partition_checked]
  rfl
theorem program_valid : expectedProgram.Valid := by
  rw [expected_program_exact]
  exact WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ActualPadByteIR.safe_checked)
theorem program_counts : expectedProgram.inputCount=3 ∧ expectedProgram.operations.length=820 ∧ expectedProgram.outputs.length=4 := by
  simp only [expectedProgram,blocks,List.length_flatten,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,partLength0,partLength1,partLength2,partLength3,partLength4,partLength5,partLength6,partLength7,partLength8,partLength9,partLength10,partLength11,partLength12,ActualPadByteIR.program,List.length_cons,List.length_nil]
  decide
theorem input_rows_exact : partRowsInputs=WordMatrix.inputRows actualModulus 3 := by
  simp only [partRowsInputs,rows0,rows1,rows2,List.append_assoc]
  rfl
theorem output_rows_exact : partRowsOutputs=WordMatrix.outputRows actualModulus expectedProgram := by
  simp only [partRowsOutputs,rows823]
  rfl
theorem body_chain : RowChain actualModulus 3 blocks bodyRows := by
  unfold blocks bodyRows
  exact (RowChain.cons _ _ _ _ _ partExact0 (RowChain.cons _ _ _ _ _ partExact1 (RowChain.cons _ _ _ _ _ partExact2 (RowChain.cons _ _ _ _ _ partExact3 (RowChain.cons _ _ _ _ _ partExact4 (RowChain.cons _ _ _ _ _ partExact5 (RowChain.cons _ _ _ _ _ partExact6 (RowChain.cons _ _ _ _ _ partExact7 (RowChain.cons _ _ _ _ _ partExact8 (RowChain.cons _ _ _ _ _ partExact9 (RowChain.cons _ _ _ _ _ partExact10 (RowChain.cons _ _ _ _ _ partExact11 (RowChain.cons _ _ _ _ _ partExact12 (RowChain.empty _))))))))))))))
theorem body_exact : bodyRows.flatten=WordField.rows actualModulus 3 blocks.flatten := by
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
theorem actual_rows_size : actualMatrix.rows.length=28179 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=4071132 := by
  change actualFullRows.length=28179 ∧ MatrixRowBlocks.rowsWeight actualFullRows=4071132
  simp only [actualFullRows,bodyRows,List.flatten_cons,List.flatten_nil,List.append_nil,List.length_append,MatrixRowBlocks.rows_weight_append,partStatsInputs.1,partStats0.1,partStats1.1,partStats2.1,partStats3.1,partStats4.1,partStats5.1,partStats6.1,partStats7.1,partStats8.1,partStats9.1,partStats10.1,partStats11.1,partStats12.1,partStatsOutputs.1,partStatsInputs.2,partStats0.2,partStats1.2,partStats2.2,partStats3.2,partStats4.2,partStats5.2,partStats6.2,partStats7.2,partStats8.2,partStats9.2,partStats10.2,partStats11.2,partStats12.2,partStatsOutputs.2]
  decide
theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=4183162 := by
  rw [encoded_matrix_size]
  have inputCount : actualMatrix.inputPorts.length=3 := port_lengths.1
  have privateCount : actualMatrix.privatePorts.length=27979 := port_lengths.2.1
  have outputCount : actualMatrix.outputPorts.length=4 := port_lengths.2.2
  rw [inputCount,privateCount,outputCount,actual_rows_size.2]
theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_well_formed
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide
theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<3 → valuation (WordField.packed i)=((inputs i).toNat : F))
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
      (∀ i,i<3 → valuation (WordField.packed i)=((inputs i).toNat : F)) ∧
      ∀ position register,expectedProgram.outputs[position]?=some register →
        valuation (WordMatrix.outputBase expectedProgram+position)=
          ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by
  obtain ⟨valuation,satisfied,inputsExact,outputsExact⟩:=WordMatrix.matrix_complete (F:=F)
    R1CS.modulus_larger_than_word expectedProgram program_valid inputs
  refine ⟨valuation,?_,inputsExact,outputsExact⟩
  rw [actual_matrix_exact,constants.1]
  exact satisfied
theorem exact_counter_evaluation (inputs : Nat → WordIR.Word) :
    expectedProgram.eval inputs=PaddingByteProgram.expected inputs := by
  rw [expected_program_exact,ActualPadByteIR.ir_exact,PaddingByteProgram.program_meaning]
end ActualPadByteMatrixPacket
