import Core033.WordMatrixWitness
import Core033.MatrixPrivatePorts
import Core033.WordSourceValidity
import Core033.WordMatrixShape
import ArtifactSHABlocks
import ActualMatrixCheckedInputs
import ActualMatrixCheckedOutputs
import ActualMatrixChecked0
import ActualMatrixChecked1
import ActualMatrixChecked2
import ActualMatrixChecked3
import ActualMatrixChecked4
import ActualMatrixChecked5
import ActualMatrixChecked6
import ActualMatrixChecked7
import ActualMatrixChecked8
import ActualMatrixChecked9
import ActualMatrixChecked10
import ActualMatrixChecked11
import ActualMatrixChecked12
import ActualMatrixChecked13
import ActualMatrixChecked14
import ActualMatrixChecked15
import ActualMatrixChecked16
import ActualMatrixChecked17
import ActualMatrixChecked18
import ActualMatrixChecked19
import ActualMatrixChecked20
import ActualMatrixChecked21
import ActualMatrixChecked22
import ActualMatrixChecked23
import ActualMatrixChecked24
import ActualMatrixChecked25
import ActualMatrixChecked26
import ActualMatrixChecked27
import ActualMatrixChecked28
import ActualMatrixChecked29
import ActualMatrixChecked30
import ActualMatrixChecked31
import ActualMatrixChecked32
import ActualMatrixChecked33
import ActualMatrixChecked34
import ActualMatrixChecked35
import ActualMatrixChecked36
namespace ActualSHAMatrixPacket
open Core033 ActualSHAWordMatrixData ActualSHAMatrixRows MatrixRowBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
def outputRegisters : List Nat := [2376,2377,2378,2379,2380,2381,2382,2383]
theorem input_ports : actualInputPorts=(List.range 24).map WordField.packed := by core033_kernel_decide
theorem output_ports : actualOutputPorts=(List.range 8).map (fun i=>81057+i) := by core033_kernel_decide
theorem private_ports : actualPrivatePorts=(List.range 24).flatMap WordMatrixPorts.tail++List.range' 817 80240 := by
  unfold actualPrivatePorts
  rw [show List.range' 784 80273=List.range' 784 33++List.range' 817 80240 from (List.range'_append_1 (s:=784) (m:=33) (n:=80240)).symm]
  simp only [List.append_assoc]
  rfl
theorem port_lengths : actualInputPorts.length=24 ∧ actualPrivatePorts.length=81032 ∧ actualOutputPorts.length=8 := by
  simp only [actualInputPorts,actualPrivatePorts,actualOutputPorts,List.length_append,List.length_cons,List.length_nil,List.length_range']
  decide
theorem constants : actualModulus=R1CS.pallasScalarModulus ∧ actualVariableCount=81065 ∧ actualConstantOne=0 := by decide

def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4,partOps5,partOps6,partOps7,partOps8,partOps9,partOps10,partOps11,partOps12,partOps13,partOps14,partOps15,partOps16,partOps17,partOps18,partOps19,partOps20,partOps21,partOps22,partOps23,partOps24,partOps25,partOps26,partOps27,partOps28,partOps29,partOps30,partOps31,partOps32,partOps33,partOps34,partOps35,partOps36]
def bodyRows : List (List R1CS.Row) := [partRows0,partRows1,partRows2,partRows3,partRows4,partRows5,partRows6,partRows7,partRows8,partRows9,partRows10,partRows11,partRows12,partRows13,partRows14,partRows15,partRows16,partRows17,partRows18,partRows19,partRows20,partRows21,partRows22,partRows23,partRows24,partRows25,partRows26,partRows27,partRows28,partRows29,partRows30,partRows31,partRows32,partRows33,partRows34,partRows35,partRows36]
def expectedProgram : WordIR.Program := ⟨24,blocks.flatten,outputRegisters⟩
theorem block_partition0 : ActualSHAMatrixRows.partOps0=ArtifactSHABlocks.partOps0 := rfl
theorem block_partition1 : ActualSHAMatrixRows.partOps1=ArtifactSHABlocks.partOps1 := rfl
theorem block_partition2 : ActualSHAMatrixRows.partOps2=ArtifactSHABlocks.partOps2 := rfl
theorem block_partition3 : ActualSHAMatrixRows.partOps3=ArtifactSHABlocks.partOps3 := rfl
theorem block_partition4 : ActualSHAMatrixRows.partOps4=ArtifactSHABlocks.partOps4 := rfl
theorem block_partition5 : ActualSHAMatrixRows.partOps5=ArtifactSHABlocks.partOps5 := rfl
theorem block_partition6 : ActualSHAMatrixRows.partOps6=ArtifactSHABlocks.partOps6 := rfl
theorem block_partition7 : ActualSHAMatrixRows.partOps7=ArtifactSHABlocks.partOps7 := rfl
theorem block_partition8 : ActualSHAMatrixRows.partOps8=ArtifactSHABlocks.partOps8 := rfl
theorem block_partition9 : ActualSHAMatrixRows.partOps9=ArtifactSHABlocks.partOps9 := rfl
theorem block_partition10 : ActualSHAMatrixRows.partOps10=ArtifactSHABlocks.partOps10 := rfl
theorem block_partition11 : ActualSHAMatrixRows.partOps11=ArtifactSHABlocks.partOps11 := rfl
theorem block_partition12 : ActualSHAMatrixRows.partOps12=ArtifactSHABlocks.partOps12 := rfl
theorem block_partition13 : ActualSHAMatrixRows.partOps13=ArtifactSHABlocks.partOps13 := rfl
theorem block_partition14 : ActualSHAMatrixRows.partOps14=ArtifactSHABlocks.partOps14 := rfl
theorem block_partition15 : ActualSHAMatrixRows.partOps15=ArtifactSHABlocks.partOps15 := rfl
theorem block_partition16 : ActualSHAMatrixRows.partOps16=ArtifactSHABlocks.partOps16 := rfl
theorem block_partition17 : ActualSHAMatrixRows.partOps17=ArtifactSHABlocks.partOps17 := rfl
theorem block_partition18 : ActualSHAMatrixRows.partOps18=ArtifactSHABlocks.partOps18 := rfl
theorem block_partition19 : ActualSHAMatrixRows.partOps19=ArtifactSHABlocks.partOps19 := rfl
theorem block_partition20 : ActualSHAMatrixRows.partOps20=ArtifactSHABlocks.partOps20 := rfl
theorem block_partition21 : ActualSHAMatrixRows.partOps21=ArtifactSHABlocks.partOps21 := rfl
theorem block_partition22 : ActualSHAMatrixRows.partOps22=ArtifactSHABlocks.partOps22 := rfl
theorem block_partition23 : ActualSHAMatrixRows.partOps23=ArtifactSHABlocks.partOps23 := rfl
theorem block_partition24 : ActualSHAMatrixRows.partOps24=ArtifactSHABlocks.partOps24 := rfl
theorem block_partition25 : ActualSHAMatrixRows.partOps25=ArtifactSHABlocks.partOps25 := rfl
theorem block_partition26 : ActualSHAMatrixRows.partOps26=ArtifactSHABlocks.partOps26 := rfl
theorem block_partition27 : ActualSHAMatrixRows.partOps27=ArtifactSHABlocks.partOps27 := rfl
theorem block_partition28 : ActualSHAMatrixRows.partOps28=ArtifactSHABlocks.partOps28 := rfl
theorem block_partition29 : ActualSHAMatrixRows.partOps29=ArtifactSHABlocks.partOps29 := rfl
theorem block_partition30 : ActualSHAMatrixRows.partOps30=ArtifactSHABlocks.partOps30 := rfl
theorem block_partition31 : ActualSHAMatrixRows.partOps31=ArtifactSHABlocks.partOps31 := rfl
theorem block_partition32 : ActualSHAMatrixRows.partOps32=ArtifactSHABlocks.partOps32 := rfl
theorem block_partition33 : ActualSHAMatrixRows.partOps33=ArtifactSHABlocks.partOps33 := rfl
theorem block_partition34 : ActualSHAMatrixRows.partOps34=ArtifactSHABlocks.partOps34 := rfl
theorem block_partition35 : ActualSHAMatrixRows.partOps35=ArtifactSHABlocks.partOps35 := rfl
theorem block_partition36 : ActualSHAMatrixRows.partOps36=ArtifactSHABlocks.partOps36 := rfl
theorem blocks_exact : blocks=ArtifactSHABlocks.blocks := by
  simp only [blocks,ArtifactSHABlocks.blocks,block_partition0,block_partition1,block_partition2,block_partition3,block_partition4,block_partition5,block_partition6,block_partition7,block_partition8,block_partition9,block_partition10,block_partition11,block_partition12,block_partition13,block_partition14,block_partition15,block_partition16,block_partition17,block_partition18,block_partition19,block_partition20,block_partition21,block_partition22,block_partition23,block_partition24,block_partition25,block_partition26,block_partition27,block_partition28,block_partition29,block_partition30,block_partition31,block_partition32,block_partition33,block_partition34,block_partition35,block_partition36]
theorem partition_checked : SHAMaterialized.program.operations=blocks.flatten := by
  rw [blocks_exact]
  exact ArtifactSHABlocks.partition_checked
theorem expected_program_exact : expectedProgram=SHAMaterialized.program := by
  unfold expectedProgram
  rw [←partition_checked]
  rfl
theorem program_valid : expectedProgram.Valid := by
  rw [expected_program_exact]
  exact WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ArtifactSHABlocks.safe_checked)
theorem program_counts : expectedProgram.inputCount=24 ∧ expectedProgram.operations.length=2360 ∧ expectedProgram.outputs.length=8 := by
  simp only [expectedProgram,blocks,List.length_flatten,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,partOpsLength0,partOpsLength1,partOpsLength2,partOpsLength3,partOpsLength4,partOpsLength5,partOpsLength6,partOpsLength7,partOpsLength8,partOpsLength9,partOpsLength10,partOpsLength11,partOpsLength12,partOpsLength13,partOpsLength14,partOpsLength15,partOpsLength16,partOpsLength17,partOpsLength18,partOpsLength19,partOpsLength20,partOpsLength21,partOpsLength22,partOpsLength23,partOpsLength24,partOpsLength25,partOpsLength26,partOpsLength27,partOpsLength28,partOpsLength29,partOpsLength30,partOpsLength31,partOpsLength32,partOpsLength33,partOpsLength34,partOpsLength35,partOpsLength36,outputRegisters,List.length_cons,List.length_nil]
  decide
theorem input_rows_exact : partRowsInputs=WordMatrix.inputRows actualModulus 24 := by
  simp only [partRowsInputs,rows0,rows1,rows2,rows3,rows4,rows5,rows6,rows7,rows8,rows9,rows10,rows11,rows12,rows13,rows14,rows15,rows16,rows17,rows18,rows19,rows20,rows21,rows22,rows23,List.append_assoc]
  rfl
theorem output_rows_exact : partRowsOutputs=WordMatrix.outputRows actualModulus expectedProgram := by
  simp only [partRowsOutputs,rows2384]
  rfl
theorem body_chain : RowChain actualModulus 24 blocks bodyRows := by
  unfold blocks bodyRows
  exact (RowChain.cons _ _ _ _ _ partRowsExact0 (RowChain.cons _ _ _ _ _ partRowsExact1 (RowChain.cons _ _ _ _ _ partRowsExact2 (RowChain.cons _ _ _ _ _ partRowsExact3 (RowChain.cons _ _ _ _ _ partRowsExact4 (RowChain.cons _ _ _ _ _ partRowsExact5 (RowChain.cons _ _ _ _ _ partRowsExact6 (RowChain.cons _ _ _ _ _ partRowsExact7 (RowChain.cons _ _ _ _ _ partRowsExact8 (RowChain.cons _ _ _ _ _ partRowsExact9 (RowChain.cons _ _ _ _ _ partRowsExact10 (RowChain.cons _ _ _ _ _ partRowsExact11 (RowChain.cons _ _ _ _ _ partRowsExact12 (RowChain.cons _ _ _ _ _ partRowsExact13 (RowChain.cons _ _ _ _ _ partRowsExact14 (RowChain.cons _ _ _ _ _ partRowsExact15 (RowChain.cons _ _ _ _ _ partRowsExact16 (RowChain.cons _ _ _ _ _ partRowsExact17 (RowChain.cons _ _ _ _ _ partRowsExact18 (RowChain.cons _ _ _ _ _ partRowsExact19 (RowChain.cons _ _ _ _ _ partRowsExact20 (RowChain.cons _ _ _ _ _ partRowsExact21 (RowChain.cons _ _ _ _ _ partRowsExact22 (RowChain.cons _ _ _ _ _ partRowsExact23 (RowChain.cons _ _ _ _ _ partRowsExact24 (RowChain.cons _ _ _ _ _ partRowsExact25 (RowChain.cons _ _ _ _ _ partRowsExact26 (RowChain.cons _ _ _ _ _ partRowsExact27 (RowChain.cons _ _ _ _ _ partRowsExact28 (RowChain.cons _ _ _ _ _ partRowsExact29 (RowChain.cons _ _ _ _ _ partRowsExact30 (RowChain.cons _ _ _ _ _ partRowsExact31 (RowChain.cons _ _ _ _ _ partRowsExact32 (RowChain.cons _ _ _ _ _ partRowsExact33 (RowChain.cons _ _ _ _ _ partRowsExact34 (RowChain.cons _ _ _ _ _ partRowsExact35 (RowChain.cons _ _ _ _ _ partRowsExact36 (RowChain.empty _))))))))))))))))))))))))))))))))))))))
theorem body_exact : bodyRows.flatten=WordField.rows actualModulus 24 blocks.flatten := by
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
theorem actual_rows_size : actualMatrix.rows.length=81664 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=13802376 := by
  change actualFullRows.length=81664 ∧ MatrixRowBlocks.rowsWeight actualFullRows=13802376
  simp only [actualFullRows,bodyRows,List.flatten_cons,List.flatten_nil,List.append_nil,List.length_append,MatrixRowBlocks.rows_weight_append,partStatsInputs.1,partStats0.1,partStats1.1,partStats2.1,partStats3.1,partStats4.1,partStats5.1,partStats6.1,partStats7.1,partStats8.1,partStats9.1,partStats10.1,partStats11.1,partStats12.1,partStats13.1,partStats14.1,partStats15.1,partStats16.1,partStats17.1,partStats18.1,partStats19.1,partStats20.1,partStats21.1,partStats22.1,partStats23.1,partStats24.1,partStats25.1,partStats26.1,partStats27.1,partStats28.1,partStats29.1,partStats30.1,partStats31.1,partStats32.1,partStats33.1,partStats34.1,partStats35.1,partStats36.1,partStatsOutputs.1,partStatsInputs.2,partStats0.2,partStats1.2,partStats2.2,partStats3.2,partStats4.2,partStats5.2,partStats6.2,partStats7.2,partStats8.2,partStats9.2,partStats10.2,partStats11.2,partStats12.2,partStats13.2,partStats14.2,partStats15.2,partStats16.2,partStats17.2,partStats18.2,partStats19.2,partStats20.2,partStats21.2,partStats22.2,partStats23.2,partStats24.2,partStats25.2,partStats26.2,partStats27.2,partStats28.2,partStats29.2,partStats30.2,partStats31.2,partStats32.2,partStats33.2,partStats34.2,partStats35.2,partStats36.2,partStatsOutputs.2]
  decide
theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=14126718 := by
  rw [encoded_matrix_size]
  have inputCount : actualMatrix.inputPorts.length=24 := port_lengths.1
  have privateCount : actualMatrix.privatePorts.length=81032 := port_lengths.2.1
  have outputCount : actualMatrix.outputPorts.length=8 := port_lengths.2.2
  rw [inputCount,privateCount,outputCount,actual_rows_size.2]
theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_well_formed
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide
theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<24 → valuation (WordField.packed i)=((inputs i).toNat : F))
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
      (∀ i,i<24 → valuation (WordField.packed i)=((inputs i).toNat : F)) ∧
      ∀ position register,expectedProgram.outputs[position]?=some register →
        valuation (WordMatrix.outputBase expectedProgram+position)=
          ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by
  obtain ⟨valuation,satisfied,inputsExact,outputsExact⟩:=WordMatrix.matrix_complete (F:=F)
    R1CS.modulus_larger_than_word expectedProgram program_valid inputs
  refine ⟨valuation,?_,inputsExact,outputsExact⟩
  rw [actual_matrix_exact,constants.1]
  exact satisfied
theorem exact_sha_evaluation (inputs : Nat → WordIR.Word) :
    expectedProgram.eval inputs=SHA256.stateWords
      (SHA256.compress (SHA256Compiled.expectedState inputs) (SHA256Compiled.expectedBlock inputs)) := by
  rw [expected_program_exact,SHAMaterialized.program_meaning]
theorem actual_sha_output {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<24 → valuation (WordField.packed i)=((inputs i).toNat : F))
    (position : Fin 8) :
    valuation (81057+position.val)=
      (((SHA256.stateWords (SHA256.compress (SHA256Compiled.expectedState inputs)
        (SHA256Compiled.expectedBlock inputs))).getD position.val 0).toNat : F) := by
  have bound : position.val<expectedProgram.outputs.length := by rw [program_counts.2.2];exact position.isLt
  let register:=expectedProgram.outputs[position.val]'bound
  have found : expectedProgram.outputs[position.val]?=some register := List.getElem?_eq_getElem bound
  have checked:=actual_output_sound valuation inputs satisfied inputValues position.val register found
  have outputBound : WordMatrix.outputBase expectedProgram=81057 := by
    simp only [WordMatrix.outputBase,WordMatrix.wordCount,program_counts.1,program_counts.2.1]
  rw [outputBound] at checked
  have evaluated : (expectedProgram.eval inputs).getD position.val 0=
      WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register := by
    simp only [WordIR.Program.eval,List.getD_eq_getElem?_getD,List.getElem?_map,found,Option.map_some,Option.getD_some]
  rw [←evaluated,exact_sha_evaluation] at checked
  exact checked
end ActualSHAMatrixPacket
