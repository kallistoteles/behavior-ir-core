import Core033.WordMatrixWitness
import Core033.MatrixPrivatePorts
import Core033.WordSourceValidity
import Core033.WordMatrixShape
import Core033.HashBlockMeaning
import ActualHashBlockIR
import HashBlockRowsInputs
import HashBlockRowsOutputs
import HashBlockRows0
import HashBlockRows1
import HashBlockRows2
import HashBlockRows3
import HashBlockRows4
import HashBlockRows5
import HashBlockRows6
import HashBlockRows7
import HashBlockRows8
import HashBlockRows9
import HashBlockRows10
import HashBlockRows11
import HashBlockRows12
import HashBlockRows13
import HashBlockRows14
import HashBlockRows15
import HashBlockRows16
import HashBlockRows17
import HashBlockRows18
import HashBlockRows19
import HashBlockRows20
import HashBlockRows21
import HashBlockRows22
import HashBlockRows23
import HashBlockRows24
import HashBlockRows25
import HashBlockRows26
import HashBlockRows27
import HashBlockRows28
import HashBlockRows29
import HashBlockRows30
import HashBlockRows31
import HashBlockRows32
import HashBlockRows33
import HashBlockRows34
import HashBlockRows35
import HashBlockRows36
import HashBlockRows37
import HashBlockRows38
import HashBlockRows39
import HashBlockRows40
import HashBlockRows41
import HashBlockRows42
import HashBlockRows43
import HashBlockRows44
import HashBlockRows45
import HashBlockRows46
import HashBlockRows47
import HashBlockRows48
import HashBlockRows49
import HashBlockRows50
import HashBlockRows51
import HashBlockRows52
import HashBlockRows53
import HashBlockRows54
import HashBlockRows55
import HashBlockRows56
namespace ActualHashBlockMatrixPacket
open Core033 HashBlockInstructionData HashBlockCheckedRows MatrixRowBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
theorem input_ports : actualInputPorts=(List.range 72).map WordField.packed := by core033_kernel_decide
theorem output_ports : actualOutputPorts=(List.range 72).map (fun i=>125121+i) := by core033_kernel_decide
theorem private_ports : actualPrivatePorts=(List.range 72).flatMap WordMatrixPorts.tail++List.range' 2449 122672 := by
  unfold actualPrivatePorts
  rw [show List.range' 2416 122705=List.range' 2416 33++List.range' 2449 122672 from (List.range'_append_1 (s:=2416) (m:=33) (n:=122672)).symm]
  try simp only [List.append_assoc]
  rfl
theorem port_lengths : actualInputPorts.length=72 ∧ actualPrivatePorts.length=125048 ∧ actualOutputPorts.length=72 := by
  simp only [actualInputPorts,actualPrivatePorts,actualOutputPorts,List.length_append,List.length_cons,List.length_nil,List.length_range']
  decide
theorem constants : actualModulus=R1CS.pallasScalarModulus ∧ actualVariableCount=125193 ∧ actualConstantOne=0 := by decide
def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4,partOps5,partOps6,partOps7,partOps8,partOps9,partOps10,partOps11,partOps12,partOps13,partOps14,partOps15,partOps16,partOps17,partOps18,partOps19,partOps20,partOps21,partOps22,partOps23,partOps24,partOps25,partOps26,partOps27,partOps28,partOps29,partOps30,partOps31,partOps32,partOps33,partOps34,partOps35,partOps36,partOps37,partOps38,partOps39,partOps40,partOps41,partOps42,partOps43,partOps44,partOps45,partOps46,partOps47,partOps48,partOps49,partOps50,partOps51,partOps52,partOps53,partOps54,partOps55,partOps56]
def bodyRows : List (List R1CS.Row) := [partRows0,partRows1,partRows2,partRows3,partRows4,partRows5,partRows6,partRows7,partRows8,partRows9,partRows10,partRows11,partRows12,partRows13,partRows14,partRows15,partRows16,partRows17,partRows18,partRows19,partRows20,partRows21,partRows22,partRows23,partRows24,partRows25,partRows26,partRows27,partRows28,partRows29,partRows30,partRows31,partRows32,partRows33,partRows34,partRows35,partRows36,partRows37,partRows38,partRows39,partRows40,partRows41,partRows42,partRows43,partRows44,partRows45,partRows46,partRows47,partRows48,partRows49,partRows50,partRows51,partRows52,partRows53,partRows54,partRows55,partRows56]
def expectedProgram : WordIR.Program := ⟨72,blocks.flatten,ActualHashBlockIR.program.outputs⟩
theorem partition_checked : ActualHashBlockIR.program.operations=blocks.flatten := by
  change ActualHashBlockIR.operationChunks.flatten=blocks.flatten
  apply congrArg List.flatten
  rfl
theorem expected_program_exact : expectedProgram=ActualHashBlockIR.program := by
  unfold expectedProgram
  rw [←partition_checked]
  rfl
theorem program_valid : expectedProgram.Valid := by
  rw [expected_program_exact]
  exact WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ActualHashBlockIR.safe_checked)
theorem program_counts : expectedProgram.inputCount=72 ∧ expectedProgram.operations.length=3608 ∧ expectedProgram.outputs.length=72 := by
  simp only [expectedProgram,blocks,List.length_flatten,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,partLength0,partLength1,partLength2,partLength3,partLength4,partLength5,partLength6,partLength7,partLength8,partLength9,partLength10,partLength11,partLength12,partLength13,partLength14,partLength15,partLength16,partLength17,partLength18,partLength19,partLength20,partLength21,partLength22,partLength23,partLength24,partLength25,partLength26,partLength27,partLength28,partLength29,partLength30,partLength31,partLength32,partLength33,partLength34,partLength35,partLength36,partLength37,partLength38,partLength39,partLength40,partLength41,partLength42,partLength43,partLength44,partLength45,partLength46,partLength47,partLength48,partLength49,partLength50,partLength51,partLength52,partLength53,partLength54,partLength55,partLength56,ActualHashBlockIR.program,List.length_cons,List.length_nil]
  decide
theorem input_rows_exact : partRowsInputs=WordMatrix.inputRows actualModulus 72 := by
  simp only [partRowsInputs,rows0,rows1,rows2,rows3,rows4,rows5,rows6,rows7,rows8,rows9,rows10,rows11,rows12,rows13,rows14,rows15,rows16,rows17,rows18,rows19,rows20,rows21,rows22,rows23,rows24,rows25,rows26,rows27,rows28,rows29,rows30,rows31,rows32,rows33,rows34,rows35,rows36,rows37,rows38,rows39,rows40,rows41,rows42,rows43,rows44,rows45,rows46,rows47,rows48,rows49,rows50,rows51,rows52,rows53,rows54,rows55,rows56,rows57,rows58,rows59,rows60,rows61,rows62,rows63,rows64,rows65,rows66,rows67,rows68,rows69,rows70,rows71,List.append_assoc]
  rfl
theorem output_rows_exact : partRowsOutputs=WordMatrix.outputRows actualModulus expectedProgram := by
  simp only [partRowsOutputs,rows3680]
  rfl
theorem body_chain : RowChain actualModulus 72 blocks bodyRows := by
  unfold blocks bodyRows
  exact (RowChain.cons _ _ _ _ _ partExact0 (RowChain.cons _ _ _ _ _ partExact1 (RowChain.cons _ _ _ _ _ partExact2 (RowChain.cons _ _ _ _ _ partExact3 (RowChain.cons _ _ _ _ _ partExact4 (RowChain.cons _ _ _ _ _ partExact5 (RowChain.cons _ _ _ _ _ partExact6 (RowChain.cons _ _ _ _ _ partExact7 (RowChain.cons _ _ _ _ _ partExact8 (RowChain.cons _ _ _ _ _ partExact9 (RowChain.cons _ _ _ _ _ partExact10 (RowChain.cons _ _ _ _ _ partExact11 (RowChain.cons _ _ _ _ _ partExact12 (RowChain.cons _ _ _ _ _ partExact13 (RowChain.cons _ _ _ _ _ partExact14 (RowChain.cons _ _ _ _ _ partExact15 (RowChain.cons _ _ _ _ _ partExact16 (RowChain.cons _ _ _ _ _ partExact17 (RowChain.cons _ _ _ _ _ partExact18 (RowChain.cons _ _ _ _ _ partExact19 (RowChain.cons _ _ _ _ _ partExact20 (RowChain.cons _ _ _ _ _ partExact21 (RowChain.cons _ _ _ _ _ partExact22 (RowChain.cons _ _ _ _ _ partExact23 (RowChain.cons _ _ _ _ _ partExact24 (RowChain.cons _ _ _ _ _ partExact25 (RowChain.cons _ _ _ _ _ partExact26 (RowChain.cons _ _ _ _ _ partExact27 (RowChain.cons _ _ _ _ _ partExact28 (RowChain.cons _ _ _ _ _ partExact29 (RowChain.cons _ _ _ _ _ partExact30 (RowChain.cons _ _ _ _ _ partExact31 (RowChain.cons _ _ _ _ _ partExact32 (RowChain.cons _ _ _ _ _ partExact33 (RowChain.cons _ _ _ _ _ partExact34 (RowChain.cons _ _ _ _ _ partExact35 (RowChain.cons _ _ _ _ _ partExact36 (RowChain.cons _ _ _ _ _ partExact37 (RowChain.cons _ _ _ _ _ partExact38 (RowChain.cons _ _ _ _ _ partExact39 (RowChain.cons _ _ _ _ _ partExact40 (RowChain.cons _ _ _ _ _ partExact41 (RowChain.cons _ _ _ _ _ partExact42 (RowChain.cons _ _ _ _ _ partExact43 (RowChain.cons _ _ _ _ _ partExact44 (RowChain.cons _ _ _ _ _ partExact45 (RowChain.cons _ _ _ _ _ partExact46 (RowChain.cons _ _ _ _ _ partExact47 (RowChain.cons _ _ _ _ _ partExact48 (RowChain.cons _ _ _ _ _ partExact49 (RowChain.cons _ _ _ _ _ partExact50 (RowChain.cons _ _ _ _ _ partExact51 (RowChain.cons _ _ _ _ _ partExact52 (RowChain.cons _ _ _ _ _ partExact53 (RowChain.cons _ _ _ _ _ partExact54 (RowChain.cons _ _ _ _ _ partExact55 (RowChain.cons _ _ _ _ _ partExact56 (RowChain.empty _))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem body_exact : bodyRows.flatten=WordField.rows actualModulus 72 blocks.flatten := by
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
theorem actual_rows_size : actualMatrix.rows.length=125904 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=20378952 := by
  change actualFullRows.length=125904 ∧ MatrixRowBlocks.rowsWeight actualFullRows=20378952
  simp only [actualFullRows,bodyRows,List.flatten_cons,List.flatten_nil,List.append_nil,List.length_append,MatrixRowBlocks.rows_weight_append,partStatsInputs.1,partStats0.1,partStats1.1,partStats2.1,partStats3.1,partStats4.1,partStats5.1,partStats6.1,partStats7.1,partStats8.1,partStats9.1,partStats10.1,partStats11.1,partStats12.1,partStats13.1,partStats14.1,partStats15.1,partStats16.1,partStats17.1,partStats18.1,partStats19.1,partStats20.1,partStats21.1,partStats22.1,partStats23.1,partStats24.1,partStats25.1,partStats26.1,partStats27.1,partStats28.1,partStats29.1,partStats30.1,partStats31.1,partStats32.1,partStats33.1,partStats34.1,partStats35.1,partStats36.1,partStats37.1,partStats38.1,partStats39.1,partStats40.1,partStats41.1,partStats42.1,partStats43.1,partStats44.1,partStats45.1,partStats46.1,partStats47.1,partStats48.1,partStats49.1,partStats50.1,partStats51.1,partStats52.1,partStats53.1,partStats54.1,partStats55.1,partStats56.1,partStatsOutputs.1,partStatsInputs.2,partStats0.2,partStats1.2,partStats2.2,partStats3.2,partStats4.2,partStats5.2,partStats6.2,partStats7.2,partStats8.2,partStats9.2,partStats10.2,partStats11.2,partStats12.2,partStats13.2,partStats14.2,partStats15.2,partStats16.2,partStats17.2,partStats18.2,partStats19.2,partStats20.2,partStats21.2,partStats22.2,partStats23.2,partStats24.2,partStats25.2,partStats26.2,partStats27.2,partStats28.2,partStats29.2,partStats30.2,partStats31.2,partStats32.2,partStats33.2,partStats34.2,partStats35.2,partStats36.2,partStats37.2,partStats38.2,partStats39.2,partStats40.2,partStats41.2,partStats42.2,partStats43.2,partStats44.2,partStats45.2,partStats46.2,partStats47.2,partStats48.2,partStats49.2,partStats50.2,partStats51.2,partStats52.2,partStats53.2,partStats54.2,partStats55.2,partStats56.2,partStatsOutputs.2]
  decide
theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=20879806 := by
  rw [encoded_matrix_size]
  have inputCount : actualMatrix.inputPorts.length=72 := port_lengths.1
  have privateCount : actualMatrix.privatePorts.length=125048 := port_lengths.2.1
  have outputCount : actualMatrix.outputPorts.length=72 := port_lengths.2.2
  rw [inputCount,privateCount,outputCount,actual_rows_size.2]
theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_well_formed
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide
theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<72 → valuation (WordField.packed i)=((inputs i).toNat : F))
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
      (∀ i,i<72 → valuation (WordField.packed i)=((inputs i).toNat : F)) ∧
      ∀ position register,expectedProgram.outputs[position]?=some register →
        valuation (WordMatrix.outputBase expectedProgram+position)=
          ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by
  obtain ⟨valuation,satisfied,inputsExact,outputsExact⟩:=WordMatrix.matrix_complete (F:=F)
    R1CS.modulus_larger_than_word expectedProgram program_valid inputs
  refine ⟨valuation,?_,inputsExact,outputsExact⟩
  rw [actual_matrix_exact,constants.1]
  exact satisfied
theorem exact_hash_block_program_evaluation (inputs : Nat → WordIR.Word) :
    expectedProgram.eval inputs=HashBlockProgram.program.eval inputs := by
  rw [expected_program_exact,ActualHashBlockIR.ir_exact]
end ActualHashBlockMatrixPacket
