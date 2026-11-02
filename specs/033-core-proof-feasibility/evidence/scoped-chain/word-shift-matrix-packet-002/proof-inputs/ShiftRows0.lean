import ActualShiftIR
import ArtifactShiftBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ShiftInstructionMatrixData0
import ShiftInstructionMatrixData1
namespace ShiftCheckedRows
open Core033 ShiftInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2 : actualRows2=WordField.canonicalRows actualModulus 2 (.shr 1 0) := by core033_kernel_decide
theorem stats2 : actualRows2.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2=5124 := by core033_kernel_decide
theorem rows3 : actualRows3=WordField.canonicalRows actualModulus 3 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats3 : actualRows3.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows3=2892 := by core033_kernel_decide
theorem rows4 : actualRows4=WordField.canonicalRows actualModulus 4 (.band 2 3) := by core033_kernel_decide
theorem stats4 : actualRows4.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4=5124 := by core033_kernel_decide
theorem rows5 : actualRows5=WordField.canonicalRows actualModulus 5 (.bnot 4) := by core033_kernel_decide
theorem stats5 : actualRows5.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5=6276 := by core033_kernel_decide
theorem rows6 : actualRows6=WordField.canonicalRows actualModulus 6 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats6 : actualRows6.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows6=2892 := by core033_kernel_decide
theorem rows7 : actualRows7=WordField.canonicalRows actualModulus 7 (.badd 5 6) := by core033_kernel_decide
theorem stats7 : actualRows7.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7=5388 := by core033_kernel_decide
theorem rows8 : actualRows8=WordField.canonicalRows actualModulus 8 (.shr 0 1) := by core033_kernel_decide
theorem stats8 : actualRows8.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8=5052 := by core033_kernel_decide
theorem rows9 : actualRows9=WordField.canonicalRows actualModulus 9 (.band 7 8) := by core033_kernel_decide
theorem stats9 : actualRows9.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows9=5124 := by core033_kernel_decide
theorem rows10 : actualRows10=WordField.canonicalRows actualModulus 10 (.shr 1 0) := by core033_kernel_decide
theorem stats10 : actualRows10.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10=5124 := by core033_kernel_decide
theorem rows11 : actualRows11=WordField.canonicalRows actualModulus 11 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11 : actualRows11.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11=2892 := by core033_kernel_decide
theorem rows12 : actualRows12=WordField.canonicalRows actualModulus 12 (.band 10 11) := by core033_kernel_decide
theorem stats12 : actualRows12.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12=5124 := by core033_kernel_decide
theorem rows13 : actualRows13=WordField.canonicalRows actualModulus 13 (.bnot 12) := by core033_kernel_decide
theorem stats13 : actualRows13.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13=6276 := by core033_kernel_decide
theorem rows14 : actualRows14=WordField.canonicalRows actualModulus 14 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats14 : actualRows14.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows14=2892 := by core033_kernel_decide
theorem rows15 : actualRows15=WordField.canonicalRows actualModulus 15 (.badd 13 14) := by core033_kernel_decide
theorem stats15 : actualRows15.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows15=5388 := by core033_kernel_decide
theorem rows16 : actualRows16=WordField.canonicalRows actualModulus 16 (.bnot 15) := by core033_kernel_decide
theorem stats16 : actualRows16.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows16=6276 := by core033_kernel_decide
theorem rows17 : actualRows17=WordField.canonicalRows actualModulus 17 (.band 16 0) := by core033_kernel_decide
theorem stats17 : actualRows17.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows17=5124 := by core033_kernel_decide
theorem rows18 : actualRows18=WordField.canonicalRows actualModulus 18 (.bxor 9 17) := by core033_kernel_decide
theorem stats18 : actualRows18.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows18=7428 := by core033_kernel_decide
theorem rows19 : actualRows19=WordField.canonicalRows actualModulus 19 (.shr 1 1) := by core033_kernel_decide
theorem stats19 : actualRows19.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows19=5052 := by core033_kernel_decide
theorem rows20 : actualRows20=WordField.canonicalRows actualModulus 20 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats20 : actualRows20.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows20=2892 := by core033_kernel_decide
theorem rows21 : actualRows21=WordField.canonicalRows actualModulus 21 (.band 19 20) := by core033_kernel_decide
theorem stats21 : actualRows21.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows21=5124 := by core033_kernel_decide
theorem rows22 : actualRows22=WordField.canonicalRows actualModulus 22 (.bnot 21) := by core033_kernel_decide
theorem stats22 : actualRows22.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows22=6276 := by core033_kernel_decide
theorem rows23 : actualRows23=WordField.canonicalRows actualModulus 23 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats23 : actualRows23.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows23=2892 := by core033_kernel_decide
theorem rows24 : actualRows24=WordField.canonicalRows actualModulus 24 (.badd 22 23) := by core033_kernel_decide
theorem stats24 : actualRows24.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows24=5388 := by core033_kernel_decide
theorem rows25 : actualRows25=WordField.canonicalRows actualModulus 25 (.shr 18 2) := by core033_kernel_decide
theorem stats25 : actualRows25.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows25=4980 := by core033_kernel_decide
theorem rows26 : actualRows26=WordField.canonicalRows actualModulus 26 (.band 24 25) := by core033_kernel_decide
theorem stats26 : actualRows26.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows26=5124 := by core033_kernel_decide
theorem rows27 : actualRows27=WordField.canonicalRows actualModulus 27 (.shr 1 1) := by core033_kernel_decide
theorem stats27 : actualRows27.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows27=5052 := by core033_kernel_decide
theorem rows28 : actualRows28=WordField.canonicalRows actualModulus 28 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats28 : actualRows28.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows28=2892 := by core033_kernel_decide
theorem rows29 : actualRows29=WordField.canonicalRows actualModulus 29 (.band 27 28) := by core033_kernel_decide
theorem stats29 : actualRows29.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows29=5124 := by core033_kernel_decide
theorem rows30 : actualRows30=WordField.canonicalRows actualModulus 30 (.bnot 29) := by core033_kernel_decide
theorem stats30 : actualRows30.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows30=6276 := by core033_kernel_decide
theorem rows31 : actualRows31=WordField.canonicalRows actualModulus 31 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats31 : actualRows31.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows31=2892 := by core033_kernel_decide
theorem rows32 : actualRows32=WordField.canonicalRows actualModulus 32 (.badd 30 31) := by core033_kernel_decide
theorem stats32 : actualRows32.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows32=5388 := by core033_kernel_decide
theorem rows33 : actualRows33=WordField.canonicalRows actualModulus 33 (.bnot 32) := by core033_kernel_decide
theorem stats33 : actualRows33.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows33=6276 := by core033_kernel_decide
theorem rows34 : actualRows34=WordField.canonicalRows actualModulus 34 (.band 33 18) := by core033_kernel_decide
theorem stats34 : actualRows34.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows34=5124 := by core033_kernel_decide
theorem rows35 : actualRows35=WordField.canonicalRows actualModulus 35 (.bxor 26 34) := by core033_kernel_decide
theorem stats35 : actualRows35.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows35=7428 := by core033_kernel_decide
theorem rows36 : actualRows36=WordField.canonicalRows actualModulus 36 (.shr 1 2) := by core033_kernel_decide
theorem stats36 : actualRows36.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows36=4980 := by core033_kernel_decide
theorem rows37 : actualRows37=WordField.canonicalRows actualModulus 37 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats37 : actualRows37.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows37=2892 := by core033_kernel_decide
theorem rows38 : actualRows38=WordField.canonicalRows actualModulus 38 (.band 36 37) := by core033_kernel_decide
theorem stats38 : actualRows38.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows38=5124 := by core033_kernel_decide
theorem rows39 : actualRows39=WordField.canonicalRows actualModulus 39 (.bnot 38) := by core033_kernel_decide
theorem stats39 : actualRows39.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows39=6276 := by core033_kernel_decide
theorem rows40 : actualRows40=WordField.canonicalRows actualModulus 40 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats40 : actualRows40.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows40=2892 := by core033_kernel_decide
theorem rows41 : actualRows41=WordField.canonicalRows actualModulus 41 (.badd 39 40) := by core033_kernel_decide
theorem stats41 : actualRows41.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows41=5388 := by core033_kernel_decide
theorem rows42 : actualRows42=WordField.canonicalRows actualModulus 42 (.shr 35 4) := by core033_kernel_decide
theorem stats42 : actualRows42.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows42=4836 := by core033_kernel_decide
theorem rows43 : actualRows43=WordField.canonicalRows actualModulus 43 (.band 41 42) := by core033_kernel_decide
theorem stats43 : actualRows43.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows43=5124 := by core033_kernel_decide
theorem rows44 : actualRows44=WordField.canonicalRows actualModulus 44 (.shr 1 2) := by core033_kernel_decide
theorem stats44 : actualRows44.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows44=4980 := by core033_kernel_decide
theorem rows45 : actualRows45=WordField.canonicalRows actualModulus 45 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats45 : actualRows45.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows45=2892 := by core033_kernel_decide
theorem rows46 : actualRows46=WordField.canonicalRows actualModulus 46 (.band 44 45) := by core033_kernel_decide
theorem stats46 : actualRows46.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows46=5124 := by core033_kernel_decide
theorem rows47 : actualRows47=WordField.canonicalRows actualModulus 47 (.bnot 46) := by core033_kernel_decide
theorem stats47 : actualRows47.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows47=6276 := by core033_kernel_decide
theorem rows48 : actualRows48=WordField.canonicalRows actualModulus 48 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats48 : actualRows48.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows48=2892 := by core033_kernel_decide
theorem rows49 : actualRows49=WordField.canonicalRows actualModulus 49 (.badd 47 48) := by core033_kernel_decide
theorem stats49 : actualRows49.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows49=5388 := by core033_kernel_decide
theorem rows50 : actualRows50=WordField.canonicalRows actualModulus 50 (.bnot 49) := by core033_kernel_decide
theorem stats50 : actualRows50.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows50=6276 := by core033_kernel_decide
theorem rows51 : actualRows51=WordField.canonicalRows actualModulus 51 (.band 50 35) := by core033_kernel_decide
theorem stats51 : actualRows51.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows51=5124 := by core033_kernel_decide
theorem rows52 : actualRows52=WordField.canonicalRows actualModulus 52 (.bxor 43 51) := by core033_kernel_decide
theorem stats52 : actualRows52.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows52=7428 := by core033_kernel_decide
theorem rows53 : actualRows53=WordField.canonicalRows actualModulus 53 (.shr 1 3) := by core033_kernel_decide
theorem stats53 : actualRows53.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows53=4908 := by core033_kernel_decide
theorem rows54 : actualRows54=WordField.canonicalRows actualModulus 54 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats54 : actualRows54.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows54=2892 := by core033_kernel_decide
theorem rows55 : actualRows55=WordField.canonicalRows actualModulus 55 (.band 53 54) := by core033_kernel_decide
theorem stats55 : actualRows55.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows55=5124 := by core033_kernel_decide
theorem rows56 : actualRows56=WordField.canonicalRows actualModulus 56 (.bnot 55) := by core033_kernel_decide
theorem stats56 : actualRows56.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows56=6276 := by core033_kernel_decide
theorem rows57 : actualRows57=WordField.canonicalRows actualModulus 57 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats57 : actualRows57.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows57=2892 := by core033_kernel_decide
theorem rows58 : actualRows58=WordField.canonicalRows actualModulus 58 (.badd 56 57) := by core033_kernel_decide
theorem stats58 : actualRows58.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows58=5388 := by core033_kernel_decide
theorem rows59 : actualRows59=WordField.canonicalRows actualModulus 59 (.shr 52 8) := by core033_kernel_decide
theorem stats59 : actualRows59.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows59=4548 := by core033_kernel_decide
theorem rows60 : actualRows60=WordField.canonicalRows actualModulus 60 (.band 58 59) := by core033_kernel_decide
theorem stats60 : actualRows60.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows60=5124 := by core033_kernel_decide
theorem rows61 : actualRows61=WordField.canonicalRows actualModulus 61 (.shr 1 3) := by core033_kernel_decide
theorem stats61 : actualRows61.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows61=4908 := by core033_kernel_decide
theorem rows62 : actualRows62=WordField.canonicalRows actualModulus 62 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats62 : actualRows62.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows62=2892 := by core033_kernel_decide
theorem rows63 : actualRows63=WordField.canonicalRows actualModulus 63 (.band 61 62) := by core033_kernel_decide
theorem stats63 : actualRows63.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows63=5124 := by core033_kernel_decide
theorem rows64 : actualRows64=WordField.canonicalRows actualModulus 64 (.bnot 63) := by core033_kernel_decide
theorem stats64 : actualRows64.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows64=6276 := by core033_kernel_decide
theorem rows65 : actualRows65=WordField.canonicalRows actualModulus 65 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats65 : actualRows65.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows65=2892 := by core033_kernel_decide
def partRows0 : List R1CS.Row := actualRows2++actualRows3++actualRows4++actualRows5++actualRows6++actualRows7++actualRows8++actualRows9++actualRows10++actualRows11++actualRows12++actualRows13++actualRows14++actualRows15++actualRows16++actualRows17++actualRows18++actualRows19++actualRows20++actualRows21++actualRows22++actualRows23++actualRows24++actualRows25++actualRows26++actualRows27++actualRows28++actualRows29++actualRows30++actualRows31++actualRows32++actualRows33++actualRows34++actualRows35++actualRows36++actualRows37++actualRows38++actualRows39++actualRows40++actualRows41++actualRows42++actualRows43++actualRows44++actualRows45++actualRows46++actualRows47++actualRows48++actualRows49++actualRows50++actualRows51++actualRows52++actualRows53++actualRows54++actualRows55++actualRows56++actualRows57++actualRows58++actualRows59++actualRows60++actualRows61++actualRows62++actualRows63++actualRows64++actualRows65
def partOps0 : List WordIR.Op := [.shr 1 0,.literal (BitVec.ofNat 32 1),.band 2 3,.bnot 4,.literal (BitVec.ofNat 32 1),.badd 5 6,.shr 0 1,.band 7 8,.shr 1 0,.literal (BitVec.ofNat 32 1),.band 10 11,.bnot 12,.literal (BitVec.ofNat 32 1),.badd 13 14,.bnot 15,.band 16 0,.bxor 9 17,.shr 1 1,.literal (BitVec.ofNat 32 1),.band 19 20,.bnot 21,.literal (BitVec.ofNat 32 1),.badd 22 23,.shr 18 2,.band 24 25,.shr 1 1,.literal (BitVec.ofNat 32 1),.band 27 28,.bnot 29,.literal (BitVec.ofNat 32 1),.badd 30 31,.bnot 32,.band 33 18,.bxor 26 34,.shr 1 2,.literal (BitVec.ofNat 32 1),.band 36 37,.bnot 38,.literal (BitVec.ofNat 32 1),.badd 39 40,.shr 35 4,.band 41 42,.shr 1 2,.literal (BitVec.ofNat 32 1),.band 44 45,.bnot 46,.literal (BitVec.ofNat 32 1),.badd 47 48,.bnot 49,.band 50 35,.bxor 43 51,.shr 1 3,.literal (BitVec.ofNat 32 1),.band 53 54,.bnot 55,.literal (BitVec.ofNat 32 1),.badd 56 57,.shr 52 8,.band 58 59,.shr 1 3,.literal (BitVec.ofNat 32 1),.band 61 62,.bnot 63,.literal (BitVec.ofNat 32 1)]
theorem partExact0 : partRows0=WordField.rows actualModulus 2 partOps0 := by
  simp only [partRows0,partOps0,WordField.rows,rows2,rows3,rows4,rows5,rows6,rows7,rows8,rows9,rows10,rows11,rows12,rows13,rows14,rows15,rows16,rows17,rows18,rows19,rows20,rows21,rows22,rows23,rows24,rows25,rows26,rows27,rows28,rows29,rows30,rows31,rows32,rows33,rows34,rows35,rows36,rows37,rows38,rows39,rows40,rows41,rows42,rows43,rows44,rows45,rows46,rows47,rows48,rows49,rows50,rows51,rows52,rows53,rows54,rows55,rows56,rows57,rows58,rows59,rows60,rows61,rows62,rows63,rows64,rows65,List.append_assoc,List.append_nil]
theorem partLength0 : partOps0.length=64 := by decide
theorem partStats0 : partRows0.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows0=311712 := by
  simp only [partRows0,List.length_append,MatrixRowBlocks.rows_weight_append,stats2.1,stats2.2,stats3.1,stats3.2,stats4.1,stats4.2,stats5.1,stats5.2,stats6.1,stats6.2,stats7.1,stats7.2,stats8.1,stats8.2,stats9.1,stats9.2,stats10.1,stats10.2,stats11.1,stats11.2,stats12.1,stats12.2,stats13.1,stats13.2,stats14.1,stats14.2,stats15.1,stats15.2,stats16.1,stats16.2,stats17.1,stats17.2,stats18.1,stats18.2,stats19.1,stats19.2,stats20.1,stats20.2,stats21.1,stats21.2,stats22.1,stats22.2,stats23.1,stats23.2,stats24.1,stats24.2,stats25.1,stats25.2,stats26.1,stats26.2,stats27.1,stats27.2,stats28.1,stats28.2,stats29.1,stats29.2,stats30.1,stats30.2,stats31.1,stats31.2,stats32.1,stats32.2,stats33.1,stats33.2,stats34.1,stats34.2,stats35.1,stats35.2,stats36.1,stats36.2,stats37.1,stats37.2,stats38.1,stats38.2,stats39.1,stats39.2,stats40.1,stats40.2,stats41.1,stats41.2,stats42.1,stats42.2,stats43.1,stats43.2,stats44.1,stats44.2,stats45.1,stats45.2,stats46.1,stats46.2,stats47.1,stats47.2,stats48.1,stats48.2,stats49.1,stats49.2,stats50.1,stats50.2,stats51.1,stats51.2,stats52.1,stats52.2,stats53.1,stats53.2,stats54.1,stats54.2,stats55.1,stats55.2,stats56.1,stats56.2,stats57.1,stats57.2,stats58.1,stats58.2,stats59.1,stats59.2,stats60.1,stats60.2,stats61.1,stats61.2,stats62.1,stats62.2,stats63.1,stats63.2,stats64.1,stats64.2,stats65.1,stats65.2]
  decide
end ShiftCheckedRows
