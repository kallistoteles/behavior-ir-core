import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData0
import ParentBranchInstructionMatrixData1
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows26 : actualRows26=WordField.canonicalRows actualModulus 26 (.badd 18 20) := by core033_kernel_decide
theorem stats26 : actualRows26.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows26=5388 := by core033_kernel_decide
theorem rows27 : actualRows27=WordField.canonicalRows actualModulus 27 (.badd 19 21) := by core033_kernel_decide
theorem stats27 : actualRows27.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows27=5388 := by core033_kernel_decide
theorem rows28 : actualRows28=WordField.canonicalRows actualModulus 28 (.band 18 20) := by core033_kernel_decide
theorem stats28 : actualRows28.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows28=5124 := by core033_kernel_decide
theorem rows29 : actualRows29=WordField.canonicalRows actualModulus 29 (.bxor 18 20) := by core033_kernel_decide
theorem stats29 : actualRows29.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows29=7428 := by core033_kernel_decide
theorem rows30 : actualRows30=WordField.canonicalRows actualModulus 30 (.badd 18 20) := by core033_kernel_decide
theorem stats30 : actualRows30.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows30=5388 := by core033_kernel_decide
theorem rows31 : actualRows31=WordField.canonicalRows actualModulus 31 (.bnot 30) := by core033_kernel_decide
theorem stats31 : actualRows31.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows31=6276 := by core033_kernel_decide
theorem rows32 : actualRows32=WordField.canonicalRows actualModulus 32 (.band 29 31) := by core033_kernel_decide
theorem stats32 : actualRows32.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows32=5124 := by core033_kernel_decide
theorem rows33 : actualRows33=WordField.canonicalRows actualModulus 33 (.bxor 28 32) := by core033_kernel_decide
theorem stats33 : actualRows33.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows33=7428 := by core033_kernel_decide
theorem rows34 : actualRows34=WordField.canonicalRows actualModulus 34 (.shr 33 31) := by core033_kernel_decide
theorem stats34 : actualRows34.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows34=2892 := by core033_kernel_decide
theorem rows35 : actualRows35=WordField.canonicalRows actualModulus 35 (.badd 27 34) := by core033_kernel_decide
theorem stats35 : actualRows35.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows35=5388 := by core033_kernel_decide
theorem rows36 : actualRows36=WordField.canonicalRows actualModulus 36 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats36 : actualRows36.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows36=2820 := by core033_kernel_decide
theorem rows37 : actualRows37=WordField.canonicalRows actualModulus 37 (.bnot 36) := by core033_kernel_decide
theorem stats37 : actualRows37.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows37=6276 := by core033_kernel_decide
theorem rows38 : actualRows38=WordField.canonicalRows actualModulus 38 (.band 19 37) := by core033_kernel_decide
theorem stats38 : actualRows38.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows38=5124 := by core033_kernel_decide
theorem rows39 : actualRows39=WordField.canonicalRows actualModulus 39 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats39 : actualRows39.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows39=2820 := by core033_kernel_decide
theorem rows40 : actualRows40=WordField.canonicalRows actualModulus 40 (.bnot 39) := by core033_kernel_decide
theorem stats40 : actualRows40.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows40=6276 := by core033_kernel_decide
theorem rows41 : actualRows41=WordField.canonicalRows actualModulus 41 (.bxor 19 40) := by core033_kernel_decide
theorem stats41 : actualRows41.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows41=7428 := by core033_kernel_decide
theorem rows42 : actualRows42=WordField.canonicalRows actualModulus 42 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats42 : actualRows42.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows42=2820 := by core033_kernel_decide
theorem rows43 : actualRows43=WordField.canonicalRows actualModulus 43 (.bnot 42) := by core033_kernel_decide
theorem stats43 : actualRows43.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows43=6276 := by core033_kernel_decide
theorem rows44 : actualRows44=WordField.canonicalRows actualModulus 44 (.badd 19 43) := by core033_kernel_decide
theorem stats44 : actualRows44.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows44=5388 := by core033_kernel_decide
theorem rows45 : actualRows45=WordField.canonicalRows actualModulus 45 (.bnot 44) := by core033_kernel_decide
theorem stats45 : actualRows45.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows45=6276 := by core033_kernel_decide
theorem rows46 : actualRows46=WordField.canonicalRows actualModulus 46 (.band 41 45) := by core033_kernel_decide
theorem stats46 : actualRows46.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows46=5124 := by core033_kernel_decide
theorem rows47 : actualRows47=WordField.canonicalRows actualModulus 47 (.bxor 38 46) := by core033_kernel_decide
theorem stats47 : actualRows47.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows47=7428 := by core033_kernel_decide
theorem rows48 : actualRows48=WordField.canonicalRows actualModulus 48 (.shr 47 31) := by core033_kernel_decide
theorem stats48 : actualRows48.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows48=2892 := by core033_kernel_decide
theorem rows49 : actualRows49=WordField.canonicalRows actualModulus 49 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats49 : actualRows49.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows49=2892 := by core033_kernel_decide
theorem rows50 : actualRows50=WordField.canonicalRows actualModulus 50 (.bxor 48 49) := by core033_kernel_decide
theorem stats50 : actualRows50.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows50=7428 := by core033_kernel_decide
theorem rows51 : actualRows51=WordField.canonicalRows actualModulus 51 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats51 : actualRows51.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows51=2892 := by core033_kernel_decide
theorem rows52 : actualRows52=WordField.canonicalRows actualModulus 52 (.bnot 51) := by core033_kernel_decide
theorem stats52 : actualRows52.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows52=6276 := by core033_kernel_decide
theorem rows53 : actualRows53=WordField.canonicalRows actualModulus 53 (.band 18 52) := by core033_kernel_decide
theorem stats53 : actualRows53.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows53=5124 := by core033_kernel_decide
theorem rows54 : actualRows54=WordField.canonicalRows actualModulus 54 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats54 : actualRows54.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows54=2892 := by core033_kernel_decide
theorem rows55 : actualRows55=WordField.canonicalRows actualModulus 55 (.bnot 54) := by core033_kernel_decide
theorem stats55 : actualRows55.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows55=6276 := by core033_kernel_decide
theorem rows56 : actualRows56=WordField.canonicalRows actualModulus 56 (.bxor 18 55) := by core033_kernel_decide
theorem stats56 : actualRows56.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows56=7428 := by core033_kernel_decide
theorem rows57 : actualRows57=WordField.canonicalRows actualModulus 57 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats57 : actualRows57.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows57=2892 := by core033_kernel_decide
theorem rows58 : actualRows58=WordField.canonicalRows actualModulus 58 (.bnot 57) := by core033_kernel_decide
theorem stats58 : actualRows58.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows58=6276 := by core033_kernel_decide
theorem rows59 : actualRows59=WordField.canonicalRows actualModulus 59 (.badd 18 58) := by core033_kernel_decide
theorem stats59 : actualRows59.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows59=5388 := by core033_kernel_decide
theorem rows60 : actualRows60=WordField.canonicalRows actualModulus 60 (.bnot 59) := by core033_kernel_decide
theorem stats60 : actualRows60.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows60=6276 := by core033_kernel_decide
theorem rows61 : actualRows61=WordField.canonicalRows actualModulus 61 (.band 56 60) := by core033_kernel_decide
theorem stats61 : actualRows61.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows61=5124 := by core033_kernel_decide
theorem rows62 : actualRows62=WordField.canonicalRows actualModulus 62 (.bxor 53 61) := by core033_kernel_decide
theorem stats62 : actualRows62.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows62=7428 := by core033_kernel_decide
theorem rows63 : actualRows63=WordField.canonicalRows actualModulus 63 (.shr 62 31) := by core033_kernel_decide
theorem stats63 : actualRows63.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows63=2892 := by core033_kernel_decide
theorem rows64 : actualRows64=WordField.canonicalRows actualModulus 64 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats64 : actualRows64.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows64=2892 := by core033_kernel_decide
theorem rows65 : actualRows65=WordField.canonicalRows actualModulus 65 (.bxor 63 64) := by core033_kernel_decide
theorem stats65 : actualRows65.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows65=7428 := by core033_kernel_decide
theorem rows66 : actualRows66=WordField.canonicalRows actualModulus 66 (.band 50 65) := by core033_kernel_decide
theorem stats66 : actualRows66.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows66=5124 := by core033_kernel_decide
theorem rows67 : actualRows67=WordField.canonicalRows actualModulus 67 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats67 : actualRows67.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows67=2820 := by core033_kernel_decide
theorem rows68 : actualRows68=WordField.canonicalRows actualModulus 68 (.bnot 67) := by core033_kernel_decide
theorem stats68 : actualRows68.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows68=6276 := by core033_kernel_decide
theorem rows69 : actualRows69=WordField.canonicalRows actualModulus 69 (.band 21 68) := by core033_kernel_decide
theorem stats69 : actualRows69.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows69=5124 := by core033_kernel_decide
theorem rows70 : actualRows70=WordField.canonicalRows actualModulus 70 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats70 : actualRows70.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows70=2820 := by core033_kernel_decide
theorem rows71 : actualRows71=WordField.canonicalRows actualModulus 71 (.bnot 70) := by core033_kernel_decide
theorem stats71 : actualRows71.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows71=6276 := by core033_kernel_decide
theorem rows72 : actualRows72=WordField.canonicalRows actualModulus 72 (.bxor 21 71) := by core033_kernel_decide
theorem stats72 : actualRows72.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows72=7428 := by core033_kernel_decide
theorem rows73 : actualRows73=WordField.canonicalRows actualModulus 73 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats73 : actualRows73.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows73=2820 := by core033_kernel_decide
theorem rows74 : actualRows74=WordField.canonicalRows actualModulus 74 (.bnot 73) := by core033_kernel_decide
theorem stats74 : actualRows74.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows74=6276 := by core033_kernel_decide
theorem rows75 : actualRows75=WordField.canonicalRows actualModulus 75 (.badd 21 74) := by core033_kernel_decide
theorem stats75 : actualRows75.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows75=5388 := by core033_kernel_decide
theorem rows76 : actualRows76=WordField.canonicalRows actualModulus 76 (.bnot 75) := by core033_kernel_decide
theorem stats76 : actualRows76.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows76=6276 := by core033_kernel_decide
theorem rows77 : actualRows77=WordField.canonicalRows actualModulus 77 (.band 72 76) := by core033_kernel_decide
theorem stats77 : actualRows77.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows77=5124 := by core033_kernel_decide
theorem rows78 : actualRows78=WordField.canonicalRows actualModulus 78 (.bxor 69 77) := by core033_kernel_decide
theorem stats78 : actualRows78.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows78=7428 := by core033_kernel_decide
theorem rows79 : actualRows79=WordField.canonicalRows actualModulus 79 (.shr 78 31) := by core033_kernel_decide
theorem stats79 : actualRows79.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows79=2892 := by core033_kernel_decide
theorem rows80 : actualRows80=WordField.canonicalRows actualModulus 80 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats80 : actualRows80.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows80=2892 := by core033_kernel_decide
theorem rows81 : actualRows81=WordField.canonicalRows actualModulus 81 (.bxor 79 80) := by core033_kernel_decide
theorem stats81 : actualRows81.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows81=7428 := by core033_kernel_decide
theorem rows82 : actualRows82=WordField.canonicalRows actualModulus 82 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats82 : actualRows82.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows82=2892 := by core033_kernel_decide
theorem rows83 : actualRows83=WordField.canonicalRows actualModulus 83 (.bnot 82) := by core033_kernel_decide
theorem stats83 : actualRows83.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows83=6276 := by core033_kernel_decide
theorem rows84 : actualRows84=WordField.canonicalRows actualModulus 84 (.band 20 83) := by core033_kernel_decide
theorem stats84 : actualRows84.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows84=5124 := by core033_kernel_decide
theorem rows85 : actualRows85=WordField.canonicalRows actualModulus 85 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats85 : actualRows85.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows85=2892 := by core033_kernel_decide
theorem rows86 : actualRows86=WordField.canonicalRows actualModulus 86 (.bnot 85) := by core033_kernel_decide
theorem stats86 : actualRows86.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows86=6276 := by core033_kernel_decide
theorem rows87 : actualRows87=WordField.canonicalRows actualModulus 87 (.bxor 20 86) := by core033_kernel_decide
theorem stats87 : actualRows87.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows87=7428 := by core033_kernel_decide
theorem rows88 : actualRows88=WordField.canonicalRows actualModulus 88 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats88 : actualRows88.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows88=2892 := by core033_kernel_decide
theorem rows89 : actualRows89=WordField.canonicalRows actualModulus 89 (.bnot 88) := by core033_kernel_decide
theorem stats89 : actualRows89.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows89=6276 := by core033_kernel_decide
def partRows0 : List R1CS.Row := actualRows26++actualRows27++actualRows28++actualRows29++actualRows30++actualRows31++actualRows32++actualRows33++actualRows34++actualRows35++actualRows36++actualRows37++actualRows38++actualRows39++actualRows40++actualRows41++actualRows42++actualRows43++actualRows44++actualRows45++actualRows46++actualRows47++actualRows48++actualRows49++actualRows50++actualRows51++actualRows52++actualRows53++actualRows54++actualRows55++actualRows56++actualRows57++actualRows58++actualRows59++actualRows60++actualRows61++actualRows62++actualRows63++actualRows64++actualRows65++actualRows66++actualRows67++actualRows68++actualRows69++actualRows70++actualRows71++actualRows72++actualRows73++actualRows74++actualRows75++actualRows76++actualRows77++actualRows78++actualRows79++actualRows80++actualRows81++actualRows82++actualRows83++actualRows84++actualRows85++actualRows86++actualRows87++actualRows88++actualRows89
def partOps0 : List WordIR.Op := [.badd 18 20,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 30,.band 29 31,.bxor 28 32,.shr 33 31,.badd 27 34,.literal (BitVec.ofNat 32 0),.bnot 36,.band 19 37,.literal (BitVec.ofNat 32 0),.bnot 39,.bxor 19 40,.literal (BitVec.ofNat 32 0),.bnot 42,.badd 19 43,.bnot 44,.band 41 45,.bxor 38 46,.shr 47 31,.literal (BitVec.ofNat 32 1),.bxor 48 49,.literal (BitVec.ofNat 32 1048576),.bnot 51,.band 18 52,.literal (BitVec.ofNat 32 1048576),.bnot 54,.bxor 18 55,.literal (BitVec.ofNat 32 1048576),.bnot 57,.badd 18 58,.bnot 59,.band 56 60,.bxor 53 61,.shr 62 31,.literal (BitVec.ofNat 32 1),.bxor 63 64,.band 50 65,.literal (BitVec.ofNat 32 0),.bnot 67,.band 21 68,.literal (BitVec.ofNat 32 0),.bnot 70,.bxor 21 71,.literal (BitVec.ofNat 32 0),.bnot 73,.badd 21 74,.bnot 75,.band 72 76,.bxor 69 77,.shr 78 31,.literal (BitVec.ofNat 32 1),.bxor 79 80,.literal (BitVec.ofNat 32 1048576),.bnot 82,.band 20 83,.literal (BitVec.ofNat 32 1048576),.bnot 85,.bxor 20 86,.literal (BitVec.ofNat 32 1048576),.bnot 88]
theorem partExact0 : partRows0=WordField.rows actualModulus 26 partOps0 := by
  simp only [partRows0,partOps0,WordField.rows,rows26,rows27,rows28,rows29,rows30,rows31,rows32,rows33,rows34,rows35,rows36,rows37,rows38,rows39,rows40,rows41,rows42,rows43,rows44,rows45,rows46,rows47,rows48,rows49,rows50,rows51,rows52,rows53,rows54,rows55,rows56,rows57,rows58,rows59,rows60,rows61,rows62,rows63,rows64,rows65,rows66,rows67,rows68,rows69,rows70,rows71,rows72,rows73,rows74,rows75,rows76,rows77,rows78,rows79,rows80,rows81,rows82,rows83,rows84,rows85,rows86,rows87,rows88,rows89,List.append_assoc,List.append_nil]
theorem partLength0 : partOps0.length=64 := by decide
theorem partStats0 : partRows0.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows0=333024 := by
  simp only [partRows0,List.length_append,MatrixRowBlocks.rows_weight_append,stats26.1,stats26.2,stats27.1,stats27.2,stats28.1,stats28.2,stats29.1,stats29.2,stats30.1,stats30.2,stats31.1,stats31.2,stats32.1,stats32.2,stats33.1,stats33.2,stats34.1,stats34.2,stats35.1,stats35.2,stats36.1,stats36.2,stats37.1,stats37.2,stats38.1,stats38.2,stats39.1,stats39.2,stats40.1,stats40.2,stats41.1,stats41.2,stats42.1,stats42.2,stats43.1,stats43.2,stats44.1,stats44.2,stats45.1,stats45.2,stats46.1,stats46.2,stats47.1,stats47.2,stats48.1,stats48.2,stats49.1,stats49.2,stats50.1,stats50.2,stats51.1,stats51.2,stats52.1,stats52.2,stats53.1,stats53.2,stats54.1,stats54.2,stats55.1,stats55.2,stats56.1,stats56.2,stats57.1,stats57.2,stats58.1,stats58.2,stats59.1,stats59.2,stats60.1,stats60.2,stats61.1,stats61.2,stats62.1,stats62.2,stats63.1,stats63.2,stats64.1,stats64.2,stats65.1,stats65.2,stats66.1,stats66.2,stats67.1,stats67.2,stats68.1,stats68.2,stats69.1,stats69.2,stats70.1,stats70.2,stats71.1,stats71.2,stats72.1,stats72.2,stats73.1,stats73.2,stats74.1,stats74.2,stats75.1,stats75.2,stats76.1,stats76.2,stats77.1,stats77.2,stats78.1,stats78.2,stats79.1,stats79.2,stats80.1,stats80.2,stats81.1,stats81.2,stats82.1,stats82.2,stats83.1,stats83.2,stats84.1,stats84.2,stats85.1,stats85.2,stats86.1,stats86.2,stats87.1,stats87.2,stats88.1,stats88.2,stats89.1,stats89.2]
  decide
end ParentBranchCheckedRows
