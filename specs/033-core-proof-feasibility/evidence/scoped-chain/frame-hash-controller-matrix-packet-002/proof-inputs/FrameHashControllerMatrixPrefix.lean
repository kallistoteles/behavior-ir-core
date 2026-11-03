import Core033.WordMatrixWitness
import Core033.MatrixPrivatePorts
import Core033.WordSourceValidity
import Core033.WordMatrixShape
import Core033.FrameHashController
import ActualFrameHashControllerIR
import FrameHashControllerRowsInputs
import FrameHashControllerRowsOutputs
import FrameHashControllerRows0
import FrameHashControllerRows1
import FrameHashControllerRows2
import FrameHashControllerRows3
import FrameHashControllerRows4
import FrameHashControllerRows5
import FrameHashControllerRows6
import FrameHashControllerRows7
import FrameHashControllerRows8
import FrameHashControllerRows9
import FrameHashControllerRows10
import FrameHashControllerRows11
import FrameHashControllerRows12
import FrameHashControllerRows13
import FrameHashControllerRows14
import FrameHashControllerRows15
import FrameHashControllerRows16
import FrameHashControllerRows17
import FrameHashControllerRows18
import FrameHashControllerRows19
import FrameHashControllerRows20
import FrameHashControllerRows21
import FrameHashControllerRows22
import FrameHashControllerRows23
import FrameHashControllerRows24
import FrameHashControllerRows25
import FrameHashControllerRows26
import FrameHashControllerRows27
import FrameHashControllerRows28
import FrameHashControllerRows29
import FrameHashControllerRows30
import FrameHashControllerRows31
import FrameHashControllerRows32
import FrameHashControllerRows33
import FrameHashControllerRows34
import FrameHashControllerRows35
import FrameHashControllerRows36
import FrameHashControllerRows37
import FrameHashControllerRows38
import FrameHashControllerRows39
import FrameHashControllerRows40
import FrameHashControllerRows41
import FrameHashControllerRows42
import FrameHashControllerRows43
import FrameHashControllerRows44
import FrameHashControllerRows45
import FrameHashControllerRows46
import FrameHashControllerRows47
import FrameHashControllerRows48
import FrameHashControllerRows49
import FrameHashControllerRows50
import FrameHashControllerRows51
import FrameHashControllerRows52
import FrameHashControllerRows53
import FrameHashControllerRows54
import FrameHashControllerRows55
import FrameHashControllerRows56
import FrameHashControllerRows57
import FrameHashControllerRows58
import FrameHashControllerRows59
import FrameHashControllerRows60
import FrameHashControllerRows61
import FrameHashControllerRows62
import FrameHashControllerRows63
import FrameHashControllerRows64
import FrameHashControllerRows65
import FrameHashControllerRows66
import FrameHashControllerRows67
import FrameHashControllerRows68
import FrameHashControllerRows69
import FrameHashControllerRows70
import FrameHashControllerRows71
import FrameHashControllerRows72
import FrameHashControllerRows73
import FrameHashControllerRows74
import FrameHashControllerRows75
import FrameHashControllerRows76
import FrameHashControllerRows77
import FrameHashControllerRows78
import FrameHashControllerRows79
import FrameHashControllerRows80
import FrameHashControllerRows81
import FrameHashControllerRows82
import FrameHashControllerRows83
import FrameHashControllerRows84
import FrameHashControllerRows85
import FrameHashControllerRows86
import FrameHashControllerRows87
import FrameHashControllerRows88
import FrameHashControllerRows89
import FrameHashControllerRows90
import FrameHashControllerRows91
import FrameHashControllerRows92
import FrameHashControllerRows93
import FrameHashControllerRows94
import FrameHashControllerRows95
import FrameHashControllerRows96
import FrameHashControllerRows97
import FrameHashControllerRows98
import FrameHashControllerRows99
import FrameHashControllerRows100
import FrameHashControllerRows101
import FrameHashControllerRows102
import FrameHashControllerRows103
import FrameHashControllerRows104
import FrameHashControllerRows105
import FrameHashControllerRows106
import FrameHashControllerRows107
import FrameHashControllerRows108
import FrameHashControllerRows109
import FrameHashControllerRows110
import FrameHashControllerRows111
import FrameHashControllerRows112
import FrameHashControllerRows113
import FrameHashControllerRows114
import FrameHashControllerRows115
import FrameHashControllerRows116
import FrameHashControllerRows117
import FrameHashControllerRows118
import FrameHashControllerRows119
import FrameHashControllerRows120
import FrameHashControllerRows121
import FrameHashControllerRows122
import FrameHashControllerRows123
import FrameHashControllerRows124
import FrameHashControllerRows125
import FrameHashControllerRows126
import FrameHashControllerRows127
import FrameHashControllerRows128
import FrameHashControllerRows129
import FrameHashControllerRows130
import FrameHashControllerRows131
import FrameHashControllerRows132
import FrameHashControllerRows133
import FrameHashControllerRows134
import FrameHashControllerRows135
import FrameHashControllerRows136
import FrameHashControllerRows137
namespace FrameHashControllerMatrixPrefix
open Core033 FrameHashControllerInstructionData FrameHashControllerCheckedRows MatrixRowBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
theorem input_ports : actualInputPorts=(List.range 43).map WordField.packed := by core033_kernel_decide
theorem output_ports : actualOutputPorts=(List.range 125).map (fun i=>301581+i) := by core033_kernel_decide
theorem private_ports : actualPrivatePorts=(List.range 43).flatMap WordMatrixPorts.tail++List.range' 1463 300118 := by
  unfold actualPrivatePorts
  rw [show List.range' 1430 300151=List.range' 1430 33++List.range' 1463 300118 from (List.range'_append_1 (s:=1430) (m:=33) (n:=300118)).symm]
  try simp only [List.append_assoc]
  rfl
theorem port_lengths : actualInputPorts.length=43 ∧ actualPrivatePorts.length=301537 ∧ actualOutputPorts.length=125 := by
  simp only [actualInputPorts,actualPrivatePorts,actualOutputPorts,List.length_append,List.length_cons,List.length_nil,List.length_range']
  decide
theorem constants : actualModulus=R1CS.pallasScalarModulus ∧ actualVariableCount=301706 ∧ actualConstantOne=0 := by decide
def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4,partOps5,partOps6,partOps7,partOps8,partOps9,partOps10,partOps11,partOps12,partOps13,partOps14,partOps15,partOps16,partOps17,partOps18,partOps19,partOps20,partOps21,partOps22,partOps23,partOps24,partOps25,partOps26,partOps27,partOps28,partOps29,partOps30,partOps31,partOps32,partOps33,partOps34,partOps35,partOps36,partOps37,partOps38,partOps39,partOps40,partOps41,partOps42,partOps43,partOps44,partOps45,partOps46,partOps47,partOps48,partOps49,partOps50,partOps51,partOps52,partOps53,partOps54,partOps55,partOps56,partOps57,partOps58,partOps59,partOps60,partOps61,partOps62,partOps63,partOps64,partOps65,partOps66,partOps67,partOps68,partOps69,partOps70,partOps71,partOps72,partOps73,partOps74,partOps75,partOps76,partOps77,partOps78,partOps79,partOps80,partOps81,partOps82,partOps83,partOps84,partOps85,partOps86,partOps87,partOps88,partOps89,partOps90,partOps91,partOps92,partOps93,partOps94,partOps95,partOps96,partOps97,partOps98,partOps99,partOps100,partOps101,partOps102,partOps103,partOps104,partOps105,partOps106,partOps107,partOps108,partOps109,partOps110,partOps111,partOps112,partOps113,partOps114,partOps115,partOps116,partOps117,partOps118,partOps119,partOps120,partOps121,partOps122,partOps123,partOps124,partOps125,partOps126,partOps127,partOps128,partOps129,partOps130,partOps131,partOps132,partOps133,partOps134,partOps135,partOps136,partOps137]
def bodyRows : List (List R1CS.Row) := [partRows0,partRows1,partRows2,partRows3,partRows4,partRows5,partRows6,partRows7,partRows8,partRows9,partRows10,partRows11,partRows12,partRows13,partRows14,partRows15,partRows16,partRows17,partRows18,partRows19,partRows20,partRows21,partRows22,partRows23,partRows24,partRows25,partRows26,partRows27,partRows28,partRows29,partRows30,partRows31,partRows32,partRows33,partRows34,partRows35,partRows36,partRows37,partRows38,partRows39,partRows40,partRows41,partRows42,partRows43,partRows44,partRows45,partRows46,partRows47,partRows48,partRows49,partRows50,partRows51,partRows52,partRows53,partRows54,partRows55,partRows56,partRows57,partRows58,partRows59,partRows60,partRows61,partRows62,partRows63,partRows64,partRows65,partRows66,partRows67,partRows68,partRows69,partRows70,partRows71,partRows72,partRows73,partRows74,partRows75,partRows76,partRows77,partRows78,partRows79,partRows80,partRows81,partRows82,partRows83,partRows84,partRows85,partRows86,partRows87,partRows88,partRows89,partRows90,partRows91,partRows92,partRows93,partRows94,partRows95,partRows96,partRows97,partRows98,partRows99,partRows100,partRows101,partRows102,partRows103,partRows104,partRows105,partRows106,partRows107,partRows108,partRows109,partRows110,partRows111,partRows112,partRows113,partRows114,partRows115,partRows116,partRows117,partRows118,partRows119,partRows120,partRows121,partRows122,partRows123,partRows124,partRows125,partRows126,partRows127,partRows128,partRows129,partRows130,partRows131,partRows132,partRows133,partRows134,partRows135,partRows136,partRows137]
def expectedProgram : WordIR.Program := ⟨43,blocks.flatten,ActualFrameHashControllerIR.program.outputs⟩
theorem partition_checked : ActualFrameHashControllerIR.program.operations=blocks.flatten := by
  change ActualFrameHashControllerIR.operationChunks.flatten=blocks.flatten
  apply congrArg List.flatten
  rfl
theorem expected_program_exact : expectedProgram=ActualFrameHashControllerIR.program := by
  unfold expectedProgram
  rw [←partition_checked]
  rfl
theorem program_valid : expectedProgram.Valid := by
  rw [expected_program_exact]
  exact WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp ActualFrameHashControllerIR.safe_checked)
theorem program_counts : expectedProgram.inputCount=43 ∧ expectedProgram.operations.length=8827 ∧ expectedProgram.outputs.length=125 := by
  simp only [expectedProgram,blocks,List.length_flatten,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,partLength0,partLength1,partLength2,partLength3,partLength4,partLength5,partLength6,partLength7,partLength8,partLength9,partLength10,partLength11,partLength12,partLength13,partLength14,partLength15,partLength16,partLength17,partLength18,partLength19,partLength20,partLength21,partLength22,partLength23,partLength24,partLength25,partLength26,partLength27,partLength28,partLength29,partLength30,partLength31,partLength32,partLength33,partLength34,partLength35,partLength36,partLength37,partLength38,partLength39,partLength40,partLength41,partLength42,partLength43,partLength44,partLength45,partLength46,partLength47,partLength48,partLength49,partLength50,partLength51,partLength52,partLength53,partLength54,partLength55,partLength56,partLength57,partLength58,partLength59,partLength60,partLength61,partLength62,partLength63,partLength64,partLength65,partLength66,partLength67,partLength68,partLength69,partLength70,partLength71,partLength72,partLength73,partLength74,partLength75,partLength76,partLength77,partLength78,partLength79,partLength80,partLength81,partLength82,partLength83,partLength84,partLength85,partLength86,partLength87,partLength88,partLength89,partLength90,partLength91,partLength92,partLength93,partLength94,partLength95,partLength96,partLength97,partLength98,partLength99,partLength100,partLength101,partLength102,partLength103,partLength104,partLength105,partLength106,partLength107,partLength108,partLength109,partLength110,partLength111,partLength112,partLength113,partLength114,partLength115,partLength116,partLength117,partLength118,partLength119,partLength120,partLength121,partLength122,partLength123,partLength124,partLength125,partLength126,partLength127,partLength128,partLength129,partLength130,partLength131,partLength132,partLength133,partLength134,partLength135,partLength136,partLength137,ActualFrameHashControllerIR.program,List.length_cons,List.length_nil]
  decide
theorem input_rows_exact : partRowsInputs=WordMatrix.inputRows actualModulus 43 := by
  simp only [partRowsInputs,rows0,rows1,rows2,rows3,rows4,rows5,rows6,rows7,rows8,rows9,rows10,rows11,rows12,rows13,rows14,rows15,rows16,rows17,rows18,rows19,rows20,rows21,rows22,rows23,rows24,rows25,rows26,rows27,rows28,rows29,rows30,rows31,rows32,rows33,rows34,rows35,rows36,rows37,rows38,rows39,rows40,rows41,rows42,List.append_assoc]
  rfl
theorem output_rows_exact : partRowsOutputs=WordMatrix.outputRows actualModulus expectedProgram := by
  simp only [partRowsOutputs,rows8870]
  rfl
theorem body_chain : RowChain actualModulus 43 blocks bodyRows := by
  unfold blocks bodyRows
  exact (RowChain.cons _ _ _ _ _ partExact0 (RowChain.cons _ _ _ _ _ partExact1 (RowChain.cons _ _ _ _ _ partExact2 (RowChain.cons _ _ _ _ _ partExact3 (RowChain.cons _ _ _ _ _ partExact4 (RowChain.cons _ _ _ _ _ partExact5 (RowChain.cons _ _ _ _ _ partExact6 (RowChain.cons _ _ _ _ _ partExact7 (RowChain.cons _ _ _ _ _ partExact8 (RowChain.cons _ _ _ _ _ partExact9 (RowChain.cons _ _ _ _ _ partExact10 (RowChain.cons _ _ _ _ _ partExact11 (RowChain.cons _ _ _ _ _ partExact12 (RowChain.cons _ _ _ _ _ partExact13 (RowChain.cons _ _ _ _ _ partExact14 (RowChain.cons _ _ _ _ _ partExact15 (RowChain.cons _ _ _ _ _ partExact16 (RowChain.cons _ _ _ _ _ partExact17 (RowChain.cons _ _ _ _ _ partExact18 (RowChain.cons _ _ _ _ _ partExact19 (RowChain.cons _ _ _ _ _ partExact20 (RowChain.cons _ _ _ _ _ partExact21 (RowChain.cons _ _ _ _ _ partExact22 (RowChain.cons _ _ _ _ _ partExact23 (RowChain.cons _ _ _ _ _ partExact24 (RowChain.cons _ _ _ _ _ partExact25 (RowChain.cons _ _ _ _ _ partExact26 (RowChain.cons _ _ _ _ _ partExact27 (RowChain.cons _ _ _ _ _ partExact28 (RowChain.cons _ _ _ _ _ partExact29 (RowChain.cons _ _ _ _ _ partExact30 (RowChain.cons _ _ _ _ _ partExact31 (RowChain.cons _ _ _ _ _ partExact32 (RowChain.cons _ _ _ _ _ partExact33 (RowChain.cons _ _ _ _ _ partExact34 (RowChain.cons _ _ _ _ _ partExact35 (RowChain.cons _ _ _ _ _ partExact36 (RowChain.cons _ _ _ _ _ partExact37 (RowChain.cons _ _ _ _ _ partExact38 (RowChain.cons _ _ _ _ _ partExact39 (RowChain.cons _ _ _ _ _ partExact40 (RowChain.cons _ _ _ _ _ partExact41 (RowChain.cons _ _ _ _ _ partExact42 (RowChain.cons _ _ _ _ _ partExact43 (RowChain.cons _ _ _ _ _ partExact44 (RowChain.cons _ _ _ _ _ partExact45 (RowChain.cons _ _ _ _ _ partExact46 (RowChain.cons _ _ _ _ _ partExact47 (RowChain.cons _ _ _ _ _ partExact48 (RowChain.cons _ _ _ _ _ partExact49 (RowChain.cons _ _ _ _ _ partExact50 (RowChain.cons _ _ _ _ _ partExact51 (RowChain.cons _ _ _ _ _ partExact52 (RowChain.cons _ _ _ _ _ partExact53 (RowChain.cons _ _ _ _ _ partExact54 (RowChain.cons _ _ _ _ _ partExact55 (RowChain.cons _ _ _ _ _ partExact56 (RowChain.cons _ _ _ _ _ partExact57 (RowChain.cons _ _ _ _ _ partExact58 (RowChain.cons _ _ _ _ _ partExact59 (RowChain.cons _ _ _ _ _ partExact60 (RowChain.cons _ _ _ _ _ partExact61 (RowChain.cons _ _ _ _ _ partExact62 (RowChain.cons _ _ _ _ _ partExact63 (RowChain.cons _ _ _ _ _ partExact64 (RowChain.cons _ _ _ _ _ partExact65 (RowChain.cons _ _ _ _ _ partExact66 (RowChain.cons _ _ _ _ _ partExact67 (RowChain.cons _ _ _ _ _ partExact68 (RowChain.cons _ _ _ _ _ partExact69 (RowChain.cons _ _ _ _ _ partExact70 (RowChain.cons _ _ _ _ _ partExact71 (RowChain.cons _ _ _ _ _ partExact72 (RowChain.cons _ _ _ _ _ partExact73 (RowChain.cons _ _ _ _ _ partExact74 (RowChain.cons _ _ _ _ _ partExact75 (RowChain.cons _ _ _ _ _ partExact76 (RowChain.cons _ _ _ _ _ partExact77 (RowChain.cons _ _ _ _ _ partExact78 (RowChain.cons _ _ _ _ _ partExact79 (RowChain.cons _ _ _ _ _ partExact80 (RowChain.cons _ _ _ _ _ partExact81 (RowChain.cons _ _ _ _ _ partExact82 (RowChain.cons _ _ _ _ _ partExact83 (RowChain.cons _ _ _ _ _ partExact84 (RowChain.cons _ _ _ _ _ partExact85 (RowChain.cons _ _ _ _ _ partExact86 (RowChain.cons _ _ _ _ _ partExact87 (RowChain.cons _ _ _ _ _ partExact88 (RowChain.cons _ _ _ _ _ partExact89 (RowChain.cons _ _ _ _ _ partExact90 (RowChain.cons _ _ _ _ _ partExact91 (RowChain.cons _ _ _ _ _ partExact92 (RowChain.cons _ _ _ _ _ partExact93 (RowChain.cons _ _ _ _ _ partExact94 (RowChain.cons _ _ _ _ _ partExact95 (RowChain.cons _ _ _ _ _ partExact96 (RowChain.cons _ _ _ _ _ partExact97 (RowChain.cons _ _ _ _ _ partExact98 (RowChain.cons _ _ _ _ _ partExact99 (RowChain.cons _ _ _ _ _ partExact100 (RowChain.cons _ _ _ _ _ partExact101 (RowChain.cons _ _ _ _ _ partExact102 (RowChain.cons _ _ _ _ _ partExact103 (RowChain.cons _ _ _ _ _ partExact104 (RowChain.cons _ _ _ _ _ partExact105 (RowChain.cons _ _ _ _ _ partExact106 (RowChain.cons _ _ _ _ _ partExact107 (RowChain.cons _ _ _ _ _ partExact108 (RowChain.cons _ _ _ _ _ partExact109 (RowChain.cons _ _ _ _ _ partExact110 (RowChain.cons _ _ _ _ _ partExact111 (RowChain.cons _ _ _ _ _ partExact112 (RowChain.cons _ _ _ _ _ partExact113 (RowChain.cons _ _ _ _ _ partExact114 (RowChain.cons _ _ _ _ _ partExact115 (RowChain.cons _ _ _ _ _ partExact116 (RowChain.cons _ _ _ _ _ partExact117 (RowChain.cons _ _ _ _ _ partExact118 (RowChain.cons _ _ _ _ _ partExact119 (RowChain.cons _ _ _ _ _ partExact120 (RowChain.cons _ _ _ _ _ partExact121 (RowChain.cons _ _ _ _ _ partExact122 (RowChain.cons _ _ _ _ _ partExact123 (RowChain.cons _ _ _ _ _ partExact124 (RowChain.cons _ _ _ _ _ partExact125 (RowChain.cons _ _ _ _ _ partExact126 (RowChain.cons _ _ _ _ _ partExact127 (RowChain.cons _ _ _ _ _ partExact128 (RowChain.cons _ _ _ _ _ partExact129 (RowChain.cons _ _ _ _ _ partExact130 (RowChain.cons _ _ _ _ _ partExact131 (RowChain.cons _ _ _ _ _ partExact132 (RowChain.cons _ _ _ _ _ partExact133 (RowChain.cons _ _ _ _ _ partExact134 (RowChain.cons _ _ _ _ _ partExact135 (RowChain.cons _ _ _ _ _ partExact136 (RowChain.cons _ _ _ _ _ partExact137 (RowChain.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem body_exact : bodyRows.flatten=WordField.rows actualModulus 43 blocks.flatten := by
  rw [chain_exact body_chain,MatrixRowBlocks.body_exact]
def actualFullRows : List R1CS.Row := partRowsInputs++bodyRows.flatten++partRowsOutputs
def actualMatrix : R1CS.Matrix := ⟨actualModulus,actualVariableCount,actualInputPorts,actualPrivatePorts,actualOutputPorts,actualConstantOne,actualFullRows⟩
theorem actual_rows_exact : actualFullRows=(WordMatrix.compile actualModulus expectedProgram).rows := by
  rw [actualFullRows,input_rows_exact,output_rows_exact,body_exact]
  rfl
theorem matrix_eta (matrix : R1CS.Matrix) : matrix=R1CS.Matrix.mk matrix.modulus matrix.variableCount matrix.inputPorts matrix.privatePorts matrix.outputPorts matrix.constantOne matrix.rows := by cases matrix;rfl
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
        (WordMatrix.compile actualModulus expectedProgram).rows := matrix_eta _
  rw [reconstructed,inputRecipe,privateSame,outputRecipe,variableSame,oneSame,←actual_rows_exact]
  rfl
theorem actual_well_formed : actualMatrix.wellFormed=true := by
  rw [actual_matrix_exact]
  apply WordMatrixShape.complete_well_formedness
  · decide
  · decide
  · rw [←actual_matrix_exact];change actualVariableCount≤16777216;decide
  · exact program_valid
theorem actual_rows_size : actualMatrix.rows.length=302854 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=46949376 := by
  change actualFullRows.length=302854 ∧ MatrixRowBlocks.rowsWeight actualFullRows=46949376
  simp only [actualFullRows,bodyRows,List.flatten_cons,List.flatten_nil,List.append_nil,List.length_append,MatrixRowBlocks.rows_weight_append,partStatsInputs.1,partStats0.1,partStats1.1,partStats2.1,partStats3.1,partStats4.1,partStats5.1,partStats6.1,partStats7.1,partStats8.1,partStats9.1,partStats10.1,partStats11.1,partStats12.1,partStats13.1,partStats14.1,partStats15.1,partStats16.1,partStats17.1,partStats18.1,partStats19.1,partStats20.1,partStats21.1,partStats22.1,partStats23.1,partStats24.1,partStats25.1,partStats26.1,partStats27.1,partStats28.1,partStats29.1,partStats30.1,partStats31.1,partStats32.1,partStats33.1,partStats34.1,partStats35.1,partStats36.1,partStats37.1,partStats38.1,partStats39.1,partStats40.1,partStats41.1,partStats42.1,partStats43.1,partStats44.1,partStats45.1,partStats46.1,partStats47.1,partStats48.1,partStats49.1,partStats50.1,partStats51.1,partStats52.1,partStats53.1,partStats54.1,partStats55.1,partStats56.1,partStats57.1,partStats58.1,partStats59.1,partStats60.1,partStats61.1,partStats62.1,partStats63.1,partStats64.1,partStats65.1,partStats66.1,partStats67.1,partStats68.1,partStats69.1,partStats70.1,partStats71.1,partStats72.1,partStats73.1,partStats74.1,partStats75.1,partStats76.1,partStats77.1,partStats78.1,partStats79.1,partStats80.1,partStats81.1,partStats82.1,partStats83.1,partStats84.1,partStats85.1,partStats86.1,partStats87.1,partStats88.1,partStats89.1,partStats90.1,partStats91.1,partStats92.1,partStats93.1,partStats94.1,partStats95.1,partStats96.1,partStats97.1,partStats98.1,partStats99.1,partStats100.1,partStats101.1,partStats102.1,partStats103.1,partStats104.1,partStats105.1,partStats106.1,partStats107.1,partStats108.1,partStats109.1,partStats110.1,partStats111.1,partStats112.1,partStats113.1,partStats114.1,partStats115.1,partStats116.1,partStats117.1,partStats118.1,partStats119.1,partStats120.1,partStats121.1,partStats122.1,partStats123.1,partStats124.1,partStats125.1,partStats126.1,partStats127.1,partStats128.1,partStats129.1,partStats130.1,partStats131.1,partStats132.1,partStats133.1,partStats134.1,partStats135.1,partStats136.1,partStats137.1,partStatsOutputs.1,partStatsInputs.2,partStats0.2,partStats1.2,partStats2.2,partStats3.2,partStats4.2,partStats5.2,partStats6.2,partStats7.2,partStats8.2,partStats9.2,partStats10.2,partStats11.2,partStats12.2,partStats13.2,partStats14.2,partStats15.2,partStats16.2,partStats17.2,partStats18.2,partStats19.2,partStats20.2,partStats21.2,partStats22.2,partStats23.2,partStats24.2,partStats25.2,partStats26.2,partStats27.2,partStats28.2,partStats29.2,partStats30.2,partStats31.2,partStats32.2,partStats33.2,partStats34.2,partStats35.2,partStats36.2,partStats37.2,partStats38.2,partStats39.2,partStats40.2,partStats41.2,partStats42.2,partStats43.2,partStats44.2,partStats45.2,partStats46.2,partStats47.2,partStats48.2,partStats49.2,partStats50.2,partStats51.2,partStats52.2,partStats53.2,partStats54.2,partStats55.2,partStats56.2,partStats57.2,partStats58.2,partStats59.2,partStats60.2,partStats61.2,partStats62.2,partStats63.2,partStats64.2,partStats65.2,partStats66.2,partStats67.2,partStats68.2,partStats69.2,partStats70.2,partStats71.2,partStats72.2,partStats73.2,partStats74.2,partStats75.2,partStats76.2,partStats77.2,partStats78.2,partStats79.2,partStats80.2,partStats81.2,partStats82.2,partStats83.2,partStats84.2,partStats85.2,partStats86.2,partStats87.2,partStats88.2,partStats89.2,partStats90.2,partStats91.2,partStats92.2,partStats93.2,partStats94.2,partStats95.2,partStats96.2,partStats97.2,partStats98.2,partStats99.2,partStats100.2,partStats101.2,partStats102.2,partStats103.2,partStats104.2,partStats105.2,partStats106.2,partStats107.2,partStats108.2,partStats109.2,partStats110.2,partStats111.2,partStats112.2,partStats113.2,partStats114.2,partStats115.2,partStats116.2,partStats117.2,partStats118.2,partStats119.2,partStats120.2,partStats121.2,partStats122.2,partStats123.2,partStats124.2,partStats125.2,partStats126.2,partStats127.2,partStats128.2,partStats129.2,partStats130.2,partStats131.2,partStats132.2,partStats133.2,partStats134.2,partStats135.2,partStats136.2,partStats137.2,partStatsOutputs.2]
  decide
theorem actual_encoded_size : (MatrixCodec.encode actualMatrix).length=48156282 := by
  rw [encoded_matrix_size]
  have inputCount : actualMatrix.inputPorts.length=43 := port_lengths.1
  have privateCount : actualMatrix.privatePorts.length=301537 := port_lengths.2.1
  have outputCount : actualMatrix.outputPorts.length=125 := port_lengths.2.2
  rw [inputCount,privateCount,outputCount,actual_rows_size.2]
theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix actual_well_formed
  · rw [actual_rows_size.1];decide
  · rw [actual_encoded_size];decide
theorem actual_output_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<43 → valuation (WordField.packed i)=((inputs i).toNat : F))
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
      (∀ i,i<43 → valuation (WordField.packed i)=((inputs i).toNat : F)) ∧
      ∀ position register,expectedProgram.outputs[position]?=some register →
        valuation (WordMatrix.outputBase expectedProgram+position)=
          ((WordIR.run expectedProgram.inputCount expectedProgram.operations inputs register).toNat : F) := by
  obtain ⟨valuation,satisfied,inputsExact,outputsExact⟩:=WordMatrix.matrix_complete (F:=F)
    R1CS.modulus_larger_than_word expectedProgram program_valid inputs
  refine ⟨valuation,?_,inputsExact,outputsExact⟩
  rw [actual_matrix_exact,constants.1]
  exact satisfied
theorem exact_hash_block_program_evaluation (inputs : Nat → WordIR.Word) :
    expectedProgram.eval inputs=FrameHashController.program.eval inputs := by
  rw [expected_program_exact,ActualFrameHashControllerIR.ir_exact]
end FrameHashControllerMatrixPrefix
