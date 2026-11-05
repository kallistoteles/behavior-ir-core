import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData0
import SharedFrameInstructionMatrixData1
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows43 : actualRows43=WordField.canonicalRows actualModulus 43 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats43 : actualRows43.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows43=2892 := by core033_kernel_decide
theorem rows44 : actualRows44=WordField.canonicalRows actualModulus 44 (.badd 2 43) := by core033_kernel_decide
theorem stats44 : actualRows44.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows44=5388 := by core033_kernel_decide
theorem rows45 : actualRows45=WordField.canonicalRows actualModulus 45 (.bnot 2) := by core033_kernel_decide
theorem stats45 : actualRows45.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows45=6276 := by core033_kernel_decide
theorem rows46 : actualRows46=WordField.canonicalRows actualModulus 46 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats46 : actualRows46.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows46=3396 := by core033_kernel_decide
theorem rows47 : actualRows47=WordField.canonicalRows actualModulus 47 (.band 45 46) := by core033_kernel_decide
theorem stats47 : actualRows47.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows47=5124 := by core033_kernel_decide
theorem rows48 : actualRows48=WordField.canonicalRows actualModulus 48 (.shr 2 8) := by core033_kernel_decide
theorem stats48 : actualRows48.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows48=4548 := by core033_kernel_decide
theorem rows49 : actualRows49=WordField.canonicalRows actualModulus 49 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats49 : actualRows49.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows49=2820 := by core033_kernel_decide
theorem rows50 : actualRows50=WordField.canonicalRows actualModulus 50 (.bnot 49) := by core033_kernel_decide
theorem stats50 : actualRows50.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows50=6276 := by core033_kernel_decide
theorem rows51 : actualRows51=WordField.canonicalRows actualModulus 51 (.band 48 50) := by core033_kernel_decide
theorem stats51 : actualRows51.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows51=5124 := by core033_kernel_decide
theorem rows52 : actualRows52=WordField.canonicalRows actualModulus 52 (.bxor 48 50) := by core033_kernel_decide
theorem stats52 : actualRows52.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows52=7428 := by core033_kernel_decide
theorem rows53 : actualRows53=WordField.canonicalRows actualModulus 53 (.badd 48 50) := by core033_kernel_decide
theorem stats53 : actualRows53.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows53=5388 := by core033_kernel_decide
theorem rows54 : actualRows54=WordField.canonicalRows actualModulus 54 (.bnot 53) := by core033_kernel_decide
theorem stats54 : actualRows54.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows54=6276 := by core033_kernel_decide
theorem rows55 : actualRows55=WordField.canonicalRows actualModulus 55 (.band 52 54) := by core033_kernel_decide
theorem stats55 : actualRows55.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows55=5124 := by core033_kernel_decide
theorem rows56 : actualRows56=WordField.canonicalRows actualModulus 56 (.bxor 51 55) := by core033_kernel_decide
theorem stats56 : actualRows56.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows56=7428 := by core033_kernel_decide
theorem rows57 : actualRows57=WordField.canonicalRows actualModulus 57 (.shr 56 31) := by core033_kernel_decide
theorem stats57 : actualRows57.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows57=2892 := by core033_kernel_decide
theorem rows58 : actualRows58=WordField.canonicalRows actualModulus 58 (.bxor 57 43) := by core033_kernel_decide
theorem stats58 : actualRows58.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows58=7428 := by core033_kernel_decide
theorem rows59 : actualRows59=WordField.canonicalRows actualModulus 59 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats59 : actualRows59.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows59=2892 := by core033_kernel_decide
theorem rows60 : actualRows60=WordField.canonicalRows actualModulus 60 (.bxor 2 59) := by core033_kernel_decide
theorem stats60 : actualRows60.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows60=7428 := by core033_kernel_decide
theorem rows61 : actualRows61=WordField.canonicalRows actualModulus 61 (.band 60 50) := by core033_kernel_decide
theorem stats61 : actualRows61.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows61=5124 := by core033_kernel_decide
theorem rows62 : actualRows62=WordField.canonicalRows actualModulus 62 (.bxor 60 50) := by core033_kernel_decide
theorem stats62 : actualRows62.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows62=7428 := by core033_kernel_decide
theorem rows63 : actualRows63=WordField.canonicalRows actualModulus 63 (.badd 60 50) := by core033_kernel_decide
theorem stats63 : actualRows63.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows63=5388 := by core033_kernel_decide
theorem rows64 : actualRows64=WordField.canonicalRows actualModulus 64 (.bnot 63) := by core033_kernel_decide
theorem stats64 : actualRows64.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows64=6276 := by core033_kernel_decide
theorem rows65 : actualRows65=WordField.canonicalRows actualModulus 65 (.band 62 64) := by core033_kernel_decide
theorem stats65 : actualRows65.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows65=5124 := by core033_kernel_decide
theorem rows66 : actualRows66=WordField.canonicalRows actualModulus 66 (.bxor 61 65) := by core033_kernel_decide
theorem stats66 : actualRows66.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows66=7428 := by core033_kernel_decide
theorem rows67 : actualRows67=WordField.canonicalRows actualModulus 67 (.shr 66 31) := by core033_kernel_decide
theorem stats67 : actualRows67.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows67=2892 := by core033_kernel_decide
theorem rows68 : actualRows68=WordField.canonicalRows actualModulus 68 (.bxor 67 43) := by core033_kernel_decide
theorem stats68 : actualRows68.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows68=7428 := by core033_kernel_decide
theorem rows69 : actualRows69=WordField.canonicalRows actualModulus 69 (.bnot 59) := by core033_kernel_decide
theorem stats69 : actualRows69.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows69=6276 := by core033_kernel_decide
theorem rows70 : actualRows70=WordField.canonicalRows actualModulus 70 (.band 2 69) := by core033_kernel_decide
theorem stats70 : actualRows70.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows70=5124 := by core033_kernel_decide
theorem rows71 : actualRows71=WordField.canonicalRows actualModulus 71 (.bxor 2 69) := by core033_kernel_decide
theorem stats71 : actualRows71.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows71=7428 := by core033_kernel_decide
theorem rows72 : actualRows72=WordField.canonicalRows actualModulus 72 (.badd 2 69) := by core033_kernel_decide
theorem stats72 : actualRows72.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows72=5388 := by core033_kernel_decide
theorem rows73 : actualRows73=WordField.canonicalRows actualModulus 73 (.bnot 72) := by core033_kernel_decide
theorem stats73 : actualRows73.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows73=6276 := by core033_kernel_decide
theorem rows74 : actualRows74=WordField.canonicalRows actualModulus 74 (.band 71 73) := by core033_kernel_decide
theorem stats74 : actualRows74.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows74=5124 := by core033_kernel_decide
theorem rows75 : actualRows75=WordField.canonicalRows actualModulus 75 (.bxor 70 74) := by core033_kernel_decide
theorem stats75 : actualRows75.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows75=7428 := by core033_kernel_decide
theorem rows76 : actualRows76=WordField.canonicalRows actualModulus 76 (.shr 75 31) := by core033_kernel_decide
theorem stats76 : actualRows76.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows76=2892 := by core033_kernel_decide
theorem rows77 : actualRows77=WordField.canonicalRows actualModulus 77 (.bxor 76 43) := by core033_kernel_decide
theorem stats77 : actualRows77.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows77=7428 := by core033_kernel_decide
theorem rows78 : actualRows78=WordField.canonicalRows actualModulus 78 (.shr 47 5) := by core033_kernel_decide
theorem stats78 : actualRows78.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows78=4764 := by core033_kernel_decide
theorem rows79 : actualRows79=WordField.canonicalRows actualModulus 79 (.bnot 47) := by core033_kernel_decide
theorem stats79 : actualRows79.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows79=6276 := by core033_kernel_decide
theorem rows80 : actualRows80=WordField.canonicalRows actualModulus 80 (.literal (BitVec.ofNat 32 31)) := by core033_kernel_decide
theorem stats80 : actualRows80.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows80=3180 := by core033_kernel_decide
theorem rows81 : actualRows81=WordField.canonicalRows actualModulus 81 (.band 79 80) := by core033_kernel_decide
theorem stats81 : actualRows81.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows81=5124 := by core033_kernel_decide
theorem rows82 : actualRows82=WordField.canonicalRows actualModulus 82 (.shr 47 8) := by core033_kernel_decide
theorem stats82 : actualRows82.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows82=4548 := by core033_kernel_decide
theorem rows83 : actualRows83=WordField.canonicalRows actualModulus 83 (.band 82 50) := by core033_kernel_decide
theorem stats83 : actualRows83.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows83=5124 := by core033_kernel_decide
theorem rows84 : actualRows84=WordField.canonicalRows actualModulus 84 (.bxor 82 50) := by core033_kernel_decide
theorem stats84 : actualRows84.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows84=7428 := by core033_kernel_decide
theorem rows85 : actualRows85=WordField.canonicalRows actualModulus 85 (.badd 82 50) := by core033_kernel_decide
theorem stats85 : actualRows85.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows85=5388 := by core033_kernel_decide
theorem rows86 : actualRows86=WordField.canonicalRows actualModulus 86 (.bnot 85) := by core033_kernel_decide
theorem stats86 : actualRows86.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows86=6276 := by core033_kernel_decide
theorem rows87 : actualRows87=WordField.canonicalRows actualModulus 87 (.band 84 86) := by core033_kernel_decide
theorem stats87 : actualRows87.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows87=5124 := by core033_kernel_decide
theorem rows88 : actualRows88=WordField.canonicalRows actualModulus 88 (.bxor 83 87) := by core033_kernel_decide
theorem stats88 : actualRows88.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows88=7428 := by core033_kernel_decide
theorem rows89 : actualRows89=WordField.canonicalRows actualModulus 89 (.shr 88 31) := by core033_kernel_decide
theorem stats89 : actualRows89.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows89=2892 := by core033_kernel_decide
theorem rows90 : actualRows90=WordField.canonicalRows actualModulus 90 (.bxor 89 43) := by core033_kernel_decide
theorem stats90 : actualRows90.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows90=7428 := by core033_kernel_decide
theorem rows91 : actualRows91=WordField.canonicalRows actualModulus 91 (.shr 78 2) := by core033_kernel_decide
theorem stats91 : actualRows91.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows91=4980 := by core033_kernel_decide
theorem rows92 : actualRows92=WordField.canonicalRows actualModulus 92 (.band 91 43) := by core033_kernel_decide
theorem stats92 : actualRows92.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows92=5124 := by core033_kernel_decide
theorem rows93 : actualRows93=WordField.canonicalRows actualModulus 93 (.bnot 92) := by core033_kernel_decide
theorem stats93 : actualRows93.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows93=6276 := by core033_kernel_decide
theorem rows94 : actualRows94=WordField.canonicalRows actualModulus 94 (.badd 93 43) := by core033_kernel_decide
theorem stats94 : actualRows94.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows94=5388 := by core033_kernel_decide
theorem rows95 : actualRows95=WordField.canonicalRows actualModulus 95 (.shr 78 1) := by core033_kernel_decide
theorem stats95 : actualRows95.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows95=5052 := by core033_kernel_decide
theorem rows96 : actualRows96=WordField.canonicalRows actualModulus 96 (.band 95 43) := by core033_kernel_decide
theorem stats96 : actualRows96.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows96=5124 := by core033_kernel_decide
theorem rows97 : actualRows97=WordField.canonicalRows actualModulus 97 (.bnot 96) := by core033_kernel_decide
theorem stats97 : actualRows97.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows97=6276 := by core033_kernel_decide
theorem rows98 : actualRows98=WordField.canonicalRows actualModulus 98 (.badd 97 43) := by core033_kernel_decide
theorem stats98 : actualRows98.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows98=5388 := by core033_kernel_decide
theorem rows99 : actualRows99=WordField.canonicalRows actualModulus 99 (.shr 78 0) := by core033_kernel_decide
theorem stats99 : actualRows99.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows99=5124 := by core033_kernel_decide
theorem rows100 : actualRows100=WordField.canonicalRows actualModulus 100 (.band 99 43) := by core033_kernel_decide
theorem stats100 : actualRows100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows100=5124 := by core033_kernel_decide
theorem rows101 : actualRows101=WordField.canonicalRows actualModulus 101 (.bnot 100) := by core033_kernel_decide
theorem stats101 : actualRows101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows101=6276 := by core033_kernel_decide
theorem rows102 : actualRows102=WordField.canonicalRows actualModulus 102 (.badd 101 43) := by core033_kernel_decide
theorem stats102 : actualRows102.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows102=5388 := by core033_kernel_decide
theorem rows103 : actualRows103=WordField.canonicalRows actualModulus 103 (.band 102 10) := by core033_kernel_decide
theorem stats103 : actualRows103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows103=5124 := by core033_kernel_decide
theorem rows104 : actualRows104=WordField.canonicalRows actualModulus 104 (.bnot 102) := by core033_kernel_decide
theorem stats104 : actualRows104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows104=6276 := by core033_kernel_decide
theorem rows105 : actualRows105=WordField.canonicalRows actualModulus 105 (.band 104 9) := by core033_kernel_decide
theorem stats105 : actualRows105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows105=5124 := by core033_kernel_decide
theorem rows106 : actualRows106=WordField.canonicalRows actualModulus 106 (.bxor 103 105) := by core033_kernel_decide
theorem stats106 : actualRows106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows106=7428 := by core033_kernel_decide
def partRows0 : List R1CS.Row := actualRows43++actualRows44++actualRows45++actualRows46++actualRows47++actualRows48++actualRows49++actualRows50++actualRows51++actualRows52++actualRows53++actualRows54++actualRows55++actualRows56++actualRows57++actualRows58++actualRows59++actualRows60++actualRows61++actualRows62++actualRows63++actualRows64++actualRows65++actualRows66++actualRows67++actualRows68++actualRows69++actualRows70++actualRows71++actualRows72++actualRows73++actualRows74++actualRows75++actualRows76++actualRows77++actualRows78++actualRows79++actualRows80++actualRows81++actualRows82++actualRows83++actualRows84++actualRows85++actualRows86++actualRows87++actualRows88++actualRows89++actualRows90++actualRows91++actualRows92++actualRows93++actualRows94++actualRows95++actualRows96++actualRows97++actualRows98++actualRows99++actualRows100++actualRows101++actualRows102++actualRows103++actualRows104++actualRows105++actualRows106
def partOps0 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 2 43,.bnot 2,.literal (BitVec.ofNat 32 255),.band 45 46,.shr 2 8,.literal (BitVec.ofNat 32 0),.bnot 49,.band 48 50,.bxor 48 50,.badd 48 50,.bnot 53,.band 52 54,.bxor 51 55,.shr 56 31,.bxor 57 43,.literal (BitVec.ofNat 32 256),.bxor 2 59,.band 60 50,.bxor 60 50,.badd 60 50,.bnot 63,.band 62 64,.bxor 61 65,.shr 66 31,.bxor 67 43,.bnot 59,.band 2 69,.bxor 2 69,.badd 2 69,.bnot 72,.band 71 73,.bxor 70 74,.shr 75 31,.bxor 76 43,.shr 47 5,.bnot 47,.literal (BitVec.ofNat 32 31),.band 79 80,.shr 47 8,.band 82 50,.bxor 82 50,.badd 82 50,.bnot 85,.band 84 86,.bxor 83 87,.shr 88 31,.bxor 89 43,.shr 78 2,.band 91 43,.bnot 92,.badd 93 43,.shr 78 1,.band 95 43,.bnot 96,.badd 97 43,.shr 78 0,.band 99 43,.bnot 100,.badd 101 43,.band 102 10,.bnot 102,.band 104 9,.bxor 103 105]
theorem partExact0 : partRows0=WordField.rows actualModulus 43 partOps0 := by
  simp only [partRows0,partOps0,WordField.rows,rows43,rows44,rows45,rows46,rows47,rows48,rows49,rows50,rows51,rows52,rows53,rows54,rows55,rows56,rows57,rows58,rows59,rows60,rows61,rows62,rows63,rows64,rows65,rows66,rows67,rows68,rows69,rows70,rows71,rows72,rows73,rows74,rows75,rows76,rows77,rows78,rows79,rows80,rows81,rows82,rows83,rows84,rows85,rows86,rows87,rows88,rows89,rows90,rows91,rows92,rows93,rows94,rows95,rows96,rows97,rows98,rows99,rows100,rows101,rows102,rows103,rows104,rows105,rows106,List.append_assoc,List.append_nil]
theorem partLength0 : partOps0.length=64 := by decide
theorem partStats0 : partRows0.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows0=355032 := by
  simp only [partRows0,List.length_append,MatrixRowBlocks.rows_weight_append,stats43.1,stats43.2,stats44.1,stats44.2,stats45.1,stats45.2,stats46.1,stats46.2,stats47.1,stats47.2,stats48.1,stats48.2,stats49.1,stats49.2,stats50.1,stats50.2,stats51.1,stats51.2,stats52.1,stats52.2,stats53.1,stats53.2,stats54.1,stats54.2,stats55.1,stats55.2,stats56.1,stats56.2,stats57.1,stats57.2,stats58.1,stats58.2,stats59.1,stats59.2,stats60.1,stats60.2,stats61.1,stats61.2,stats62.1,stats62.2,stats63.1,stats63.2,stats64.1,stats64.2,stats65.1,stats65.2,stats66.1,stats66.2,stats67.1,stats67.2,stats68.1,stats68.2,stats69.1,stats69.2,stats70.1,stats70.2,stats71.1,stats71.2,stats72.1,stats72.2,stats73.1,stats73.2,stats74.1,stats74.2,stats75.1,stats75.2,stats76.1,stats76.2,stats77.1,stats77.2,stats78.1,stats78.2,stats79.1,stats79.2,stats80.1,stats80.2,stats81.1,stats81.2,stats82.1,stats82.2,stats83.1,stats83.2,stats84.1,stats84.2,stats85.1,stats85.2,stats86.1,stats86.2,stats87.1,stats87.2,stats88.1,stats88.2,stats89.1,stats89.2,stats90.1,stats90.2,stats91.1,stats91.2,stats92.1,stats92.2,stats93.1,stats93.2,stats94.1,stats94.2,stats95.1,stats95.2,stats96.1,stats96.2,stats97.1,stats97.2,stats98.1,stats98.2,stats99.1,stats99.2,stats100.1,stats100.2,stats101.1,stats101.2,stats102.1,stats102.2,stats103.1,stats103.2,stats104.1,stats104.2,stats105.1,stats105.2,stats106.1,stats106.2]
  decide
end SharedFrameCheckedRows
