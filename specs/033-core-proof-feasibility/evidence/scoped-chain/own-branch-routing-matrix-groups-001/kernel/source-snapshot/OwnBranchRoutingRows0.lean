import ActualOwnBranchRoutingIR
import Core033.OwnBranchRouting
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import OwnBranchRoutingInstructionMatrixData0
import OwnBranchRoutingInstructionMatrixData1
namespace OwnBranchRoutingCheckedRows
open Core033 OwnBranchRoutingInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows33 : actualRows33=WordField.canonicalRows actualModulus 33 (.literal (BitVec.ofNat 32 4294967295)) := by core033_kernel_decide
theorem stats33 : actualRows33.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows33=5124 := by core033_kernel_decide
theorem rows34 : actualRows34=WordField.canonicalRows actualModulus 34 (.badd 0 33) := by core033_kernel_decide
theorem stats34 : actualRows34.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows34=5388 := by core033_kernel_decide
theorem rows35 : actualRows35=WordField.canonicalRows actualModulus 35 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats35 : actualRows35.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows35=2820 := by core033_kernel_decide
theorem rows36 : actualRows36=WordField.canonicalRows actualModulus 36 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats36 : actualRows36.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows36=2820 := by core033_kernel_decide
theorem rows37 : actualRows37=WordField.canonicalRows actualModulus 37 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats37 : actualRows37.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows37=2820 := by core033_kernel_decide
theorem rows38 : actualRows38=WordField.canonicalRows actualModulus 38 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats38 : actualRows38.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows38=2820 := by core033_kernel_decide
theorem rows39 : actualRows39=WordField.canonicalRows actualModulus 39 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats39 : actualRows39.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows39=2820 := by core033_kernel_decide
theorem rows40 : actualRows40=WordField.canonicalRows actualModulus 40 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats40 : actualRows40.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows40=2820 := by core033_kernel_decide
theorem rows41 : actualRows41=WordField.canonicalRows actualModulus 41 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats41 : actualRows41.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows41=2820 := by core033_kernel_decide
theorem rows42 : actualRows42=WordField.canonicalRows actualModulus 42 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats42 : actualRows42.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows42=2820 := by core033_kernel_decide
theorem rows43 : actualRows43=WordField.canonicalRows actualModulus 43 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats43 : actualRows43.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows43=2892 := by core033_kernel_decide
theorem rows44 : actualRows44=WordField.canonicalRows actualModulus 44 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats44 : actualRows44.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows44=2892 := by core033_kernel_decide
theorem rows45 : actualRows45=WordField.canonicalRows actualModulus 45 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats45 : actualRows45.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows45=2820 := by core033_kernel_decide
theorem rows46 : actualRows46=WordField.canonicalRows actualModulus 46 (.bnot 45) := by core033_kernel_decide
theorem stats46 : actualRows46.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows46=6276 := by core033_kernel_decide
theorem rows47 : actualRows47=WordField.canonicalRows actualModulus 47 (.band 0 46) := by core033_kernel_decide
theorem stats47 : actualRows47.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows47=5124 := by core033_kernel_decide
theorem rows48 : actualRows48=WordField.canonicalRows actualModulus 48 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats48 : actualRows48.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows48=2820 := by core033_kernel_decide
theorem rows49 : actualRows49=WordField.canonicalRows actualModulus 49 (.bnot 48) := by core033_kernel_decide
theorem stats49 : actualRows49.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows49=6276 := by core033_kernel_decide
theorem rows50 : actualRows50=WordField.canonicalRows actualModulus 50 (.bxor 0 49) := by core033_kernel_decide
theorem stats50 : actualRows50.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows50=7428 := by core033_kernel_decide
theorem rows51 : actualRows51=WordField.canonicalRows actualModulus 51 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats51 : actualRows51.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows51=2820 := by core033_kernel_decide
theorem rows52 : actualRows52=WordField.canonicalRows actualModulus 52 (.bnot 51) := by core033_kernel_decide
theorem stats52 : actualRows52.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows52=6276 := by core033_kernel_decide
theorem rows53 : actualRows53=WordField.canonicalRows actualModulus 53 (.badd 0 52) := by core033_kernel_decide
theorem stats53 : actualRows53.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows53=5388 := by core033_kernel_decide
theorem rows54 : actualRows54=WordField.canonicalRows actualModulus 54 (.bnot 53) := by core033_kernel_decide
theorem stats54 : actualRows54.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows54=6276 := by core033_kernel_decide
theorem rows55 : actualRows55=WordField.canonicalRows actualModulus 55 (.band 50 54) := by core033_kernel_decide
theorem stats55 : actualRows55.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows55=5124 := by core033_kernel_decide
theorem rows56 : actualRows56=WordField.canonicalRows actualModulus 56 (.bxor 47 55) := by core033_kernel_decide
theorem stats56 : actualRows56.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows56=7428 := by core033_kernel_decide
theorem rows57 : actualRows57=WordField.canonicalRows actualModulus 57 (.shr 56 31) := by core033_kernel_decide
theorem stats57 : actualRows57.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows57=2892 := by core033_kernel_decide
theorem rows58 : actualRows58=WordField.canonicalRows actualModulus 58 (.shr 0 8) := by core033_kernel_decide
theorem stats58 : actualRows58.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows58=4548 := by core033_kernel_decide
theorem rows59 : actualRows59=WordField.canonicalRows actualModulus 59 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats59 : actualRows59.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows59=2820 := by core033_kernel_decide
theorem rows60 : actualRows60=WordField.canonicalRows actualModulus 60 (.bnot 59) := by core033_kernel_decide
theorem stats60 : actualRows60.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows60=6276 := by core033_kernel_decide
theorem rows61 : actualRows61=WordField.canonicalRows actualModulus 61 (.band 58 60) := by core033_kernel_decide
theorem stats61 : actualRows61.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows61=5124 := by core033_kernel_decide
theorem rows62 : actualRows62=WordField.canonicalRows actualModulus 62 (.shr 0 8) := by core033_kernel_decide
theorem stats62 : actualRows62.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows62=4548 := by core033_kernel_decide
theorem rows63 : actualRows63=WordField.canonicalRows actualModulus 63 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats63 : actualRows63.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows63=2820 := by core033_kernel_decide
theorem rows64 : actualRows64=WordField.canonicalRows actualModulus 64 (.bnot 63) := by core033_kernel_decide
theorem stats64 : actualRows64.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows64=6276 := by core033_kernel_decide
theorem rows65 : actualRows65=WordField.canonicalRows actualModulus 65 (.bxor 62 64) := by core033_kernel_decide
theorem stats65 : actualRows65.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows65=7428 := by core033_kernel_decide
theorem rows66 : actualRows66=WordField.canonicalRows actualModulus 66 (.shr 0 8) := by core033_kernel_decide
theorem stats66 : actualRows66.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows66=4548 := by core033_kernel_decide
theorem rows67 : actualRows67=WordField.canonicalRows actualModulus 67 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats67 : actualRows67.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows67=2820 := by core033_kernel_decide
theorem rows68 : actualRows68=WordField.canonicalRows actualModulus 68 (.bnot 67) := by core033_kernel_decide
theorem stats68 : actualRows68.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows68=6276 := by core033_kernel_decide
theorem rows69 : actualRows69=WordField.canonicalRows actualModulus 69 (.badd 66 68) := by core033_kernel_decide
theorem stats69 : actualRows69.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows69=5388 := by core033_kernel_decide
theorem rows70 : actualRows70=WordField.canonicalRows actualModulus 70 (.bnot 69) := by core033_kernel_decide
theorem stats70 : actualRows70.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows70=6276 := by core033_kernel_decide
theorem rows71 : actualRows71=WordField.canonicalRows actualModulus 71 (.band 65 70) := by core033_kernel_decide
theorem stats71 : actualRows71.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows71=5124 := by core033_kernel_decide
theorem rows72 : actualRows72=WordField.canonicalRows actualModulus 72 (.bxor 61 71) := by core033_kernel_decide
theorem stats72 : actualRows72.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows72=7428 := by core033_kernel_decide
theorem rows73 : actualRows73=WordField.canonicalRows actualModulus 73 (.shr 72 31) := by core033_kernel_decide
theorem stats73 : actualRows73.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows73=2892 := by core033_kernel_decide
theorem rows74 : actualRows74=WordField.canonicalRows actualModulus 74 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats74 : actualRows74.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows74=2892 := by core033_kernel_decide
theorem rows75 : actualRows75=WordField.canonicalRows actualModulus 75 (.bxor 73 74) := by core033_kernel_decide
theorem stats75 : actualRows75.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows75=7428 := by core033_kernel_decide
def partRows0 : List R1CS.Row := actualRows33++actualRows34++actualRows35++actualRows36++actualRows37++actualRows38++actualRows39++actualRows40++actualRows41++actualRows42++actualRows43++actualRows44++actualRows45++actualRows46++actualRows47++actualRows48++actualRows49++actualRows50++actualRows51++actualRows52++actualRows53++actualRows54++actualRows55++actualRows56++actualRows57++actualRows58++actualRows59++actualRows60++actualRows61++actualRows62++actualRows63++actualRows64++actualRows65++actualRows66++actualRows67++actualRows68++actualRows69++actualRows70++actualRows71++actualRows72++actualRows73++actualRows74++actualRows75
def partOps0 : List WordIR.Op := [.literal (BitVec.ofNat 32 4294967295),.badd 0 33,.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 1),.literal (BitVec.ofNat 32 1),.literal (BitVec.ofNat 32 0),.bnot 45,.band 0 46,.literal (BitVec.ofNat 32 0),.bnot 48,.bxor 0 49,.literal (BitVec.ofNat 32 0),.bnot 51,.badd 0 52,.bnot 53,.band 50 54,.bxor 47 55,.shr 56 31,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 59,.band 58 60,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 63,.bxor 62 64,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 67,.badd 66 68,.bnot 69,.band 65 70,.bxor 61 71,.shr 72 31,.literal (BitVec.ofNat 32 1),.bxor 73 74]
theorem partExact0 : partRows0=WordField.rows actualModulus 33 partOps0 := by
  simp only [partRows0,partOps0,WordField.rows,rows33,rows34,rows35,rows36,rows37,rows38,rows39,rows40,rows41,rows42,rows43,rows44,rows45,rows46,rows47,rows48,rows49,rows50,rows51,rows52,rows53,rows54,rows55,rows56,rows57,rows58,rows59,rows60,rows61,rows62,rows63,rows64,rows65,rows66,rows67,rows68,rows69,rows70,rows71,rows72,rows73,rows74,rows75,List.append_assoc,List.append_nil]
theorem partLength0 : partOps0.length=43 := by decide
theorem partStats0 : partRows0.length=1465 ∧ MatrixRowBlocks.rowsWeight partRows0=196716 := by
  simp only [partRows0,List.length_append,MatrixRowBlocks.rows_weight_append,stats33.1,stats33.2,stats34.1,stats34.2,stats35.1,stats35.2,stats36.1,stats36.2,stats37.1,stats37.2,stats38.1,stats38.2,stats39.1,stats39.2,stats40.1,stats40.2,stats41.1,stats41.2,stats42.1,stats42.2,stats43.1,stats43.2,stats44.1,stats44.2,stats45.1,stats45.2,stats46.1,stats46.2,stats47.1,stats47.2,stats48.1,stats48.2,stats49.1,stats49.2,stats50.1,stats50.2,stats51.1,stats51.2,stats52.1,stats52.2,stats53.1,stats53.2,stats54.1,stats54.2,stats55.1,stats55.2,stats56.1,stats56.2,stats57.1,stats57.2,stats58.1,stats58.2,stats59.1,stats59.2,stats60.1,stats60.2,stats61.1,stats61.2,stats62.1,stats62.2,stats63.1,stats63.2,stats64.1,stats64.2,stats65.1,stats65.2,stats66.1,stats66.2,stats67.1,stats67.2,stats68.1,stats68.2,stats69.1,stats69.2,stats70.1,stats70.2,stats71.1,stats71.2,stats72.1,stats72.2,stats73.1,stats73.2,stats74.1,stats74.2,stats75.1,stats75.2]
  decide
end OwnBranchRoutingCheckedRows
