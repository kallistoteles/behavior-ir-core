import ActualRangeIR
import ArtifactRangeBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import RangeInstructionMatrixData0
namespace RangeCheckedRows
open Core033 RangeInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1 : actualRows1=WordField.canonicalRows actualModulus 1 (.shr 0 1) := by core033_kernel_decide
theorem stats1 : actualRows1.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1=5052 := by core033_kernel_decide
theorem rows2 : actualRows2=WordField.canonicalRows actualModulus 2 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2 : actualRows2.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2=2820 := by core033_kernel_decide
theorem rows3 : actualRows3=WordField.canonicalRows actualModulus 3 (.bnot 2) := by core033_kernel_decide
theorem stats3 : actualRows3.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3=6276 := by core033_kernel_decide
theorem rows4 : actualRows4=WordField.canonicalRows actualModulus 4 (.band 1 3) := by core033_kernel_decide
theorem stats4 : actualRows4.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4=5124 := by core033_kernel_decide
theorem rows5 : actualRows5=WordField.canonicalRows actualModulus 5 (.shr 0 1) := by core033_kernel_decide
theorem stats5 : actualRows5.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5=5052 := by core033_kernel_decide
theorem rows6 : actualRows6=WordField.canonicalRows actualModulus 6 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats6 : actualRows6.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6=2820 := by core033_kernel_decide
theorem rows7 : actualRows7=WordField.canonicalRows actualModulus 7 (.bnot 6) := by core033_kernel_decide
theorem stats7 : actualRows7.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7=6276 := by core033_kernel_decide
theorem rows8 : actualRows8=WordField.canonicalRows actualModulus 8 (.bxor 5 7) := by core033_kernel_decide
theorem stats8 : actualRows8.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8=7428 := by core033_kernel_decide
theorem rows9 : actualRows9=WordField.canonicalRows actualModulus 9 (.shr 0 1) := by core033_kernel_decide
theorem stats9 : actualRows9.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9=5052 := by core033_kernel_decide
theorem rows10 : actualRows10=WordField.canonicalRows actualModulus 10 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10 : actualRows10.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10=2820 := by core033_kernel_decide
theorem rows11 : actualRows11=WordField.canonicalRows actualModulus 11 (.bnot 10) := by core033_kernel_decide
theorem stats11 : actualRows11.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11=6276 := by core033_kernel_decide
theorem rows12 : actualRows12=WordField.canonicalRows actualModulus 12 (.badd 9 11) := by core033_kernel_decide
theorem stats12 : actualRows12.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12=5388 := by core033_kernel_decide
theorem rows13 : actualRows13=WordField.canonicalRows actualModulus 13 (.bnot 12) := by core033_kernel_decide
theorem stats13 : actualRows13.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13=6276 := by core033_kernel_decide
theorem rows14 : actualRows14=WordField.canonicalRows actualModulus 14 (.band 8 13) := by core033_kernel_decide
theorem stats14 : actualRows14.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14=5124 := by core033_kernel_decide
theorem rows15 : actualRows15=WordField.canonicalRows actualModulus 15 (.bxor 4 14) := by core033_kernel_decide
theorem stats15 : actualRows15.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows15=7428 := by core033_kernel_decide
theorem rows16 : actualRows16=WordField.canonicalRows actualModulus 16 (.shr 15 31) := by core033_kernel_decide
theorem stats16 : actualRows16.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows16=2892 := by core033_kernel_decide
theorem rows17 : actualRows17=WordField.canonicalRows actualModulus 17 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats17 : actualRows17.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows17=2892 := by core033_kernel_decide
theorem rows18 : actualRows18=WordField.canonicalRows actualModulus 18 (.bxor 16 17) := by core033_kernel_decide
theorem stats18 : actualRows18.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows18=7428 := by core033_kernel_decide
theorem rows19 : actualRows19=WordField.canonicalRows actualModulus 19 (.shr 0 8) := by core033_kernel_decide
theorem stats19 : actualRows19.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows19=4548 := by core033_kernel_decide
theorem rows20 : actualRows20=WordField.canonicalRows actualModulus 20 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats20 : actualRows20.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows20=2820 := by core033_kernel_decide
theorem rows21 : actualRows21=WordField.canonicalRows actualModulus 21 (.bnot 20) := by core033_kernel_decide
theorem stats21 : actualRows21.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows21=6276 := by core033_kernel_decide
theorem rows22 : actualRows22=WordField.canonicalRows actualModulus 22 (.band 19 21) := by core033_kernel_decide
theorem stats22 : actualRows22.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows22=5124 := by core033_kernel_decide
theorem rows23 : actualRows23=WordField.canonicalRows actualModulus 23 (.shr 0 8) := by core033_kernel_decide
theorem stats23 : actualRows23.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows23=4548 := by core033_kernel_decide
theorem rows24 : actualRows24=WordField.canonicalRows actualModulus 24 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats24 : actualRows24.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows24=2820 := by core033_kernel_decide
theorem rows25 : actualRows25=WordField.canonicalRows actualModulus 25 (.bnot 24) := by core033_kernel_decide
theorem stats25 : actualRows25.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows25=6276 := by core033_kernel_decide
theorem rows26 : actualRows26=WordField.canonicalRows actualModulus 26 (.bxor 23 25) := by core033_kernel_decide
theorem stats26 : actualRows26.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows26=7428 := by core033_kernel_decide
theorem rows27 : actualRows27=WordField.canonicalRows actualModulus 27 (.shr 0 8) := by core033_kernel_decide
theorem stats27 : actualRows27.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows27=4548 := by core033_kernel_decide
theorem rows28 : actualRows28=WordField.canonicalRows actualModulus 28 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats28 : actualRows28.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows28=2820 := by core033_kernel_decide
theorem rows29 : actualRows29=WordField.canonicalRows actualModulus 29 (.bnot 28) := by core033_kernel_decide
theorem stats29 : actualRows29.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows29=6276 := by core033_kernel_decide
theorem rows30 : actualRows30=WordField.canonicalRows actualModulus 30 (.badd 27 29) := by core033_kernel_decide
theorem stats30 : actualRows30.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows30=5388 := by core033_kernel_decide
theorem rows31 : actualRows31=WordField.canonicalRows actualModulus 31 (.bnot 30) := by core033_kernel_decide
theorem stats31 : actualRows31.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows31=6276 := by core033_kernel_decide
theorem rows32 : actualRows32=WordField.canonicalRows actualModulus 32 (.band 26 31) := by core033_kernel_decide
theorem stats32 : actualRows32.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows32=5124 := by core033_kernel_decide
theorem rows33 : actualRows33=WordField.canonicalRows actualModulus 33 (.bxor 22 32) := by core033_kernel_decide
theorem stats33 : actualRows33.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows33=7428 := by core033_kernel_decide
theorem rows34 : actualRows34=WordField.canonicalRows actualModulus 34 (.shr 33 31) := by core033_kernel_decide
theorem stats34 : actualRows34.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows34=2892 := by core033_kernel_decide
theorem rows35 : actualRows35=WordField.canonicalRows actualModulus 35 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats35 : actualRows35.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows35=2892 := by core033_kernel_decide
theorem rows36 : actualRows36=WordField.canonicalRows actualModulus 36 (.bxor 34 35) := by core033_kernel_decide
theorem stats36 : actualRows36.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows36=7428 := by core033_kernel_decide
theorem rows37 : actualRows37=WordField.canonicalRows actualModulus 37 (.shr 0 16) := by core033_kernel_decide
theorem stats37 : actualRows37.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows37=3972 := by core033_kernel_decide
theorem rows38 : actualRows38=WordField.canonicalRows actualModulus 38 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats38 : actualRows38.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows38=2820 := by core033_kernel_decide
theorem rows39 : actualRows39=WordField.canonicalRows actualModulus 39 (.bnot 38) := by core033_kernel_decide
theorem stats39 : actualRows39.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows39=6276 := by core033_kernel_decide
theorem rows40 : actualRows40=WordField.canonicalRows actualModulus 40 (.band 37 39) := by core033_kernel_decide
theorem stats40 : actualRows40.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows40=5124 := by core033_kernel_decide
theorem rows41 : actualRows41=WordField.canonicalRows actualModulus 41 (.shr 0 16) := by core033_kernel_decide
theorem stats41 : actualRows41.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows41=3972 := by core033_kernel_decide
theorem rows42 : actualRows42=WordField.canonicalRows actualModulus 42 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats42 : actualRows42.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows42=2820 := by core033_kernel_decide
theorem rows43 : actualRows43=WordField.canonicalRows actualModulus 43 (.bnot 42) := by core033_kernel_decide
theorem stats43 : actualRows43.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows43=6276 := by core033_kernel_decide
theorem rows44 : actualRows44=WordField.canonicalRows actualModulus 44 (.bxor 41 43) := by core033_kernel_decide
theorem stats44 : actualRows44.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows44=7428 := by core033_kernel_decide
theorem rows45 : actualRows45=WordField.canonicalRows actualModulus 45 (.shr 0 16) := by core033_kernel_decide
theorem stats45 : actualRows45.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows45=3972 := by core033_kernel_decide
theorem rows46 : actualRows46=WordField.canonicalRows actualModulus 46 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats46 : actualRows46.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows46=2820 := by core033_kernel_decide
theorem rows47 : actualRows47=WordField.canonicalRows actualModulus 47 (.bnot 46) := by core033_kernel_decide
theorem stats47 : actualRows47.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows47=6276 := by core033_kernel_decide
theorem rows48 : actualRows48=WordField.canonicalRows actualModulus 48 (.badd 45 47) := by core033_kernel_decide
theorem stats48 : actualRows48.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows48=5388 := by core033_kernel_decide
theorem rows49 : actualRows49=WordField.canonicalRows actualModulus 49 (.bnot 48) := by core033_kernel_decide
theorem stats49 : actualRows49.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows49=6276 := by core033_kernel_decide
theorem rows50 : actualRows50=WordField.canonicalRows actualModulus 50 (.band 44 49) := by core033_kernel_decide
theorem stats50 : actualRows50.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows50=5124 := by core033_kernel_decide
theorem rows51 : actualRows51=WordField.canonicalRows actualModulus 51 (.bxor 40 50) := by core033_kernel_decide
theorem stats51 : actualRows51.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows51=7428 := by core033_kernel_decide
theorem rows52 : actualRows52=WordField.canonicalRows actualModulus 52 (.shr 51 31) := by core033_kernel_decide
theorem stats52 : actualRows52.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows52=2892 := by core033_kernel_decide
theorem rows53 : actualRows53=WordField.canonicalRows actualModulus 53 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats53 : actualRows53.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows53=2892 := by core033_kernel_decide
theorem rows54 : actualRows54=WordField.canonicalRows actualModulus 54 (.bxor 52 53) := by core033_kernel_decide
theorem stats54 : actualRows54.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows54=7428 := by core033_kernel_decide
def partRows0 : List R1CS.Row := actualRows1++actualRows2++actualRows3++actualRows4++actualRows5++actualRows6++actualRows7++actualRows8++actualRows9++actualRows10++actualRows11++actualRows12++actualRows13++actualRows14++actualRows15++actualRows16++actualRows17++actualRows18++actualRows19++actualRows20++actualRows21++actualRows22++actualRows23++actualRows24++actualRows25++actualRows26++actualRows27++actualRows28++actualRows29++actualRows30++actualRows31++actualRows32++actualRows33++actualRows34++actualRows35++actualRows36++actualRows37++actualRows38++actualRows39++actualRows40++actualRows41++actualRows42++actualRows43++actualRows44++actualRows45++actualRows46++actualRows47++actualRows48++actualRows49++actualRows50++actualRows51++actualRows52++actualRows53++actualRows54
def partOps0 : List WordIR.Op := [.shr 0 1,.literal (BitVec.ofNat 32 0),.bnot 2,.band 1 3,.shr 0 1,.literal (BitVec.ofNat 32 0),.bnot 6,.bxor 5 7,.shr 0 1,.literal (BitVec.ofNat 32 0),.bnot 10,.badd 9 11,.bnot 12,.band 8 13,.bxor 4 14,.shr 15 31,.literal (BitVec.ofNat 32 1),.bxor 16 17,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 20,.band 19 21,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 24,.bxor 23 25,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 28,.badd 27 29,.bnot 30,.band 26 31,.bxor 22 32,.shr 33 31,.literal (BitVec.ofNat 32 1),.bxor 34 35,.shr 0 16,.literal (BitVec.ofNat 32 0),.bnot 38,.band 37 39,.shr 0 16,.literal (BitVec.ofNat 32 0),.bnot 42,.bxor 41 43,.shr 0 16,.literal (BitVec.ofNat 32 0),.bnot 46,.badd 45 47,.bnot 48,.band 44 49,.bxor 40 50,.shr 51 31,.literal (BitVec.ofNat 32 1),.bxor 52 53]
theorem partExact0 : partRows0=WordField.rows actualModulus 1 partOps0 := by
  simp only [partRows0,partOps0,WordField.rows,rows1,rows2,rows3,rows4,rows5,rows6,rows7,rows8,rows9,rows10,rows11,rows12,rows13,rows14,rows15,rows16,rows17,rows18,rows19,rows20,rows21,rows22,rows23,rows24,rows25,rows26,rows27,rows28,rows29,rows30,rows31,rows32,rows33,rows34,rows35,rows36,rows37,rows38,rows39,rows40,rows41,rows42,rows43,rows44,rows45,rows46,rows47,rows48,rows49,rows50,rows51,rows52,rows53,rows54,List.append_assoc,List.append_nil]
theorem partLength0 : partOps0.length=54 := by decide
theorem partStats0 : partRows0.length=1839 ∧ MatrixRowBlocks.rowsWeight partRows0=272520 := by
  simp only [partRows0,List.length_append,MatrixRowBlocks.rows_weight_append,stats1.1,stats1.2,stats2.1,stats2.2,stats3.1,stats3.2,stats4.1,stats4.2,stats5.1,stats5.2,stats6.1,stats6.2,stats7.1,stats7.2,stats8.1,stats8.2,stats9.1,stats9.2,stats10.1,stats10.2,stats11.1,stats11.2,stats12.1,stats12.2,stats13.1,stats13.2,stats14.1,stats14.2,stats15.1,stats15.2,stats16.1,stats16.2,stats17.1,stats17.2,stats18.1,stats18.2,stats19.1,stats19.2,stats20.1,stats20.2,stats21.1,stats21.2,stats22.1,stats22.2,stats23.1,stats23.2,stats24.1,stats24.2,stats25.1,stats25.2,stats26.1,stats26.2,stats27.1,stats27.2,stats28.1,stats28.2,stats29.1,stats29.2,stats30.1,stats30.2,stats31.1,stats31.2,stats32.1,stats32.2,stats33.1,stats33.2,stats34.1,stats34.2,stats35.1,stats35.2,stats36.1,stats36.2,stats37.1,stats37.2,stats38.1,stats38.2,stats39.1,stats39.2,stats40.1,stats40.2,stats41.1,stats41.2,stats42.1,stats42.2,stats43.1,stats43.2,stats44.1,stats44.2,stats45.1,stats45.2,stats46.1,stats46.2,stats47.1,stats47.2,stats48.1,stats48.2,stats49.1,stats49.2,stats50.1,stats50.2,stats51.1,stats51.2,stats52.1,stats52.2,stats53.1,stats53.2,stats54.1,stats54.2]
  decide
end RangeCheckedRows
