import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData0
import PathFrameInstructionMatrixData1
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows34 : actualRows34=WordField.canonicalRows actualModulus 34 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats34 : actualRows34.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows34=2892 := by core033_kernel_decide
theorem rows35 : actualRows35=WordField.canonicalRows actualModulus 35 (.badd 1 34) := by core033_kernel_decide
theorem stats35 : actualRows35.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows35=5388 := by core033_kernel_decide
theorem rows36 : actualRows36=WordField.canonicalRows actualModulus 36 (.bnot 1) := by core033_kernel_decide
theorem stats36 : actualRows36.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows36=6276 := by core033_kernel_decide
theorem rows37 : actualRows37=WordField.canonicalRows actualModulus 37 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats37 : actualRows37.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows37=3396 := by core033_kernel_decide
theorem rows38 : actualRows38=WordField.canonicalRows actualModulus 38 (.band 36 37) := by core033_kernel_decide
theorem stats38 : actualRows38.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows38=5124 := by core033_kernel_decide
theorem rows39 : actualRows39=WordField.canonicalRows actualModulus 39 (.shr 1 8) := by core033_kernel_decide
theorem stats39 : actualRows39.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows39=4548 := by core033_kernel_decide
theorem rows40 : actualRows40=WordField.canonicalRows actualModulus 40 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats40 : actualRows40.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows40=2820 := by core033_kernel_decide
theorem rows41 : actualRows41=WordField.canonicalRows actualModulus 41 (.bnot 40) := by core033_kernel_decide
theorem stats41 : actualRows41.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows41=6276 := by core033_kernel_decide
theorem rows42 : actualRows42=WordField.canonicalRows actualModulus 42 (.band 39 41) := by core033_kernel_decide
theorem stats42 : actualRows42.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows42=5124 := by core033_kernel_decide
theorem rows43 : actualRows43=WordField.canonicalRows actualModulus 43 (.shr 1 8) := by core033_kernel_decide
theorem stats43 : actualRows43.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows43=4548 := by core033_kernel_decide
theorem rows44 : actualRows44=WordField.canonicalRows actualModulus 44 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats44 : actualRows44.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows44=2820 := by core033_kernel_decide
theorem rows45 : actualRows45=WordField.canonicalRows actualModulus 45 (.bnot 44) := by core033_kernel_decide
theorem stats45 : actualRows45.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows45=6276 := by core033_kernel_decide
theorem rows46 : actualRows46=WordField.canonicalRows actualModulus 46 (.bxor 43 45) := by core033_kernel_decide
theorem stats46 : actualRows46.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows46=7428 := by core033_kernel_decide
theorem rows47 : actualRows47=WordField.canonicalRows actualModulus 47 (.shr 1 8) := by core033_kernel_decide
theorem stats47 : actualRows47.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows47=4548 := by core033_kernel_decide
theorem rows48 : actualRows48=WordField.canonicalRows actualModulus 48 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats48 : actualRows48.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows48=2820 := by core033_kernel_decide
theorem rows49 : actualRows49=WordField.canonicalRows actualModulus 49 (.bnot 48) := by core033_kernel_decide
theorem stats49 : actualRows49.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows49=6276 := by core033_kernel_decide
theorem rows50 : actualRows50=WordField.canonicalRows actualModulus 50 (.badd 47 49) := by core033_kernel_decide
theorem stats50 : actualRows50.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows50=5388 := by core033_kernel_decide
theorem rows51 : actualRows51=WordField.canonicalRows actualModulus 51 (.bnot 50) := by core033_kernel_decide
theorem stats51 : actualRows51.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows51=6276 := by core033_kernel_decide
theorem rows52 : actualRows52=WordField.canonicalRows actualModulus 52 (.band 46 51) := by core033_kernel_decide
theorem stats52 : actualRows52.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows52=5124 := by core033_kernel_decide
theorem rows53 : actualRows53=WordField.canonicalRows actualModulus 53 (.bxor 42 52) := by core033_kernel_decide
theorem stats53 : actualRows53.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows53=7428 := by core033_kernel_decide
theorem rows54 : actualRows54=WordField.canonicalRows actualModulus 54 (.shr 53 31) := by core033_kernel_decide
theorem stats54 : actualRows54.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows54=2892 := by core033_kernel_decide
theorem rows55 : actualRows55=WordField.canonicalRows actualModulus 55 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats55 : actualRows55.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows55=2892 := by core033_kernel_decide
theorem rows56 : actualRows56=WordField.canonicalRows actualModulus 56 (.bxor 54 55) := by core033_kernel_decide
theorem stats56 : actualRows56.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows56=7428 := by core033_kernel_decide
theorem rows57 : actualRows57=WordField.canonicalRows actualModulus 57 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats57 : actualRows57.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows57=2892 := by core033_kernel_decide
theorem rows58 : actualRows58=WordField.canonicalRows actualModulus 58 (.bxor 1 57) := by core033_kernel_decide
theorem stats58 : actualRows58.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows58=7428 := by core033_kernel_decide
theorem rows59 : actualRows59=WordField.canonicalRows actualModulus 59 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats59 : actualRows59.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows59=2820 := by core033_kernel_decide
theorem rows60 : actualRows60=WordField.canonicalRows actualModulus 60 (.bnot 59) := by core033_kernel_decide
theorem stats60 : actualRows60.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows60=6276 := by core033_kernel_decide
theorem rows61 : actualRows61=WordField.canonicalRows actualModulus 61 (.band 58 60) := by core033_kernel_decide
theorem stats61 : actualRows61.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows61=5124 := by core033_kernel_decide
theorem rows62 : actualRows62=WordField.canonicalRows actualModulus 62 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats62 : actualRows62.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows62=2892 := by core033_kernel_decide
theorem rows63 : actualRows63=WordField.canonicalRows actualModulus 63 (.bxor 1 62) := by core033_kernel_decide
theorem stats63 : actualRows63.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows63=7428 := by core033_kernel_decide
theorem rows64 : actualRows64=WordField.canonicalRows actualModulus 64 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats64 : actualRows64.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows64=2820 := by core033_kernel_decide
theorem rows65 : actualRows65=WordField.canonicalRows actualModulus 65 (.bnot 64) := by core033_kernel_decide
theorem stats65 : actualRows65.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows65=6276 := by core033_kernel_decide
theorem rows66 : actualRows66=WordField.canonicalRows actualModulus 66 (.bxor 63 65) := by core033_kernel_decide
theorem stats66 : actualRows66.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows66=7428 := by core033_kernel_decide
theorem rows67 : actualRows67=WordField.canonicalRows actualModulus 67 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats67 : actualRows67.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows67=2892 := by core033_kernel_decide
theorem rows68 : actualRows68=WordField.canonicalRows actualModulus 68 (.bxor 1 67) := by core033_kernel_decide
theorem stats68 : actualRows68.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows68=7428 := by core033_kernel_decide
theorem rows69 : actualRows69=WordField.canonicalRows actualModulus 69 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats69 : actualRows69.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows69=2820 := by core033_kernel_decide
theorem rows70 : actualRows70=WordField.canonicalRows actualModulus 70 (.bnot 69) := by core033_kernel_decide
theorem stats70 : actualRows70.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows70=6276 := by core033_kernel_decide
theorem rows71 : actualRows71=WordField.canonicalRows actualModulus 71 (.badd 68 70) := by core033_kernel_decide
theorem stats71 : actualRows71.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows71=5388 := by core033_kernel_decide
theorem rows72 : actualRows72=WordField.canonicalRows actualModulus 72 (.bnot 71) := by core033_kernel_decide
theorem stats72 : actualRows72.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows72=6276 := by core033_kernel_decide
theorem rows73 : actualRows73=WordField.canonicalRows actualModulus 73 (.band 66 72) := by core033_kernel_decide
theorem stats73 : actualRows73.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows73=5124 := by core033_kernel_decide
theorem rows74 : actualRows74=WordField.canonicalRows actualModulus 74 (.bxor 61 73) := by core033_kernel_decide
theorem stats74 : actualRows74.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows74=7428 := by core033_kernel_decide
theorem rows75 : actualRows75=WordField.canonicalRows actualModulus 75 (.shr 74 31) := by core033_kernel_decide
theorem stats75 : actualRows75.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows75=2892 := by core033_kernel_decide
theorem rows76 : actualRows76=WordField.canonicalRows actualModulus 76 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats76 : actualRows76.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows76=2892 := by core033_kernel_decide
theorem rows77 : actualRows77=WordField.canonicalRows actualModulus 77 (.bxor 75 76) := by core033_kernel_decide
theorem stats77 : actualRows77.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows77=7428 := by core033_kernel_decide
theorem rows78 : actualRows78=WordField.canonicalRows actualModulus 78 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats78 : actualRows78.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows78=2892 := by core033_kernel_decide
theorem rows79 : actualRows79=WordField.canonicalRows actualModulus 79 (.bnot 78) := by core033_kernel_decide
theorem stats79 : actualRows79.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows79=6276 := by core033_kernel_decide
theorem rows80 : actualRows80=WordField.canonicalRows actualModulus 80 (.band 1 79) := by core033_kernel_decide
theorem stats80 : actualRows80.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows80=5124 := by core033_kernel_decide
theorem rows81 : actualRows81=WordField.canonicalRows actualModulus 81 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats81 : actualRows81.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows81=2892 := by core033_kernel_decide
theorem rows82 : actualRows82=WordField.canonicalRows actualModulus 82 (.bnot 81) := by core033_kernel_decide
theorem stats82 : actualRows82.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows82=6276 := by core033_kernel_decide
theorem rows83 : actualRows83=WordField.canonicalRows actualModulus 83 (.bxor 1 82) := by core033_kernel_decide
theorem stats83 : actualRows83.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows83=7428 := by core033_kernel_decide
theorem rows84 : actualRows84=WordField.canonicalRows actualModulus 84 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats84 : actualRows84.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows84=2892 := by core033_kernel_decide
theorem rows85 : actualRows85=WordField.canonicalRows actualModulus 85 (.bnot 84) := by core033_kernel_decide
theorem stats85 : actualRows85.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows85=6276 := by core033_kernel_decide
theorem rows86 : actualRows86=WordField.canonicalRows actualModulus 86 (.badd 1 85) := by core033_kernel_decide
theorem stats86 : actualRows86.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows86=5388 := by core033_kernel_decide
theorem rows87 : actualRows87=WordField.canonicalRows actualModulus 87 (.bnot 86) := by core033_kernel_decide
theorem stats87 : actualRows87.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows87=6276 := by core033_kernel_decide
theorem rows88 : actualRows88=WordField.canonicalRows actualModulus 88 (.band 83 87) := by core033_kernel_decide
theorem stats88 : actualRows88.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows88=5124 := by core033_kernel_decide
theorem rows89 : actualRows89=WordField.canonicalRows actualModulus 89 (.bxor 80 88) := by core033_kernel_decide
theorem stats89 : actualRows89.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows89=7428 := by core033_kernel_decide
theorem rows90 : actualRows90=WordField.canonicalRows actualModulus 90 (.shr 89 31) := by core033_kernel_decide
theorem stats90 : actualRows90.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows90=2892 := by core033_kernel_decide
theorem rows91 : actualRows91=WordField.canonicalRows actualModulus 91 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats91 : actualRows91.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows91=2892 := by core033_kernel_decide
theorem rows92 : actualRows92=WordField.canonicalRows actualModulus 92 (.bxor 90 91) := by core033_kernel_decide
theorem stats92 : actualRows92.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows92=7428 := by core033_kernel_decide
theorem rows93 : actualRows93=WordField.canonicalRows actualModulus 93 (.shr 38 5) := by core033_kernel_decide
theorem stats93 : actualRows93.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows93=4764 := by core033_kernel_decide
theorem rows94 : actualRows94=WordField.canonicalRows actualModulus 94 (.bnot 38) := by core033_kernel_decide
theorem stats94 : actualRows94.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows94=6276 := by core033_kernel_decide
theorem rows95 : actualRows95=WordField.canonicalRows actualModulus 95 (.literal (BitVec.ofNat 32 31)) := by core033_kernel_decide
theorem stats95 : actualRows95.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows95=3180 := by core033_kernel_decide
theorem rows96 : actualRows96=WordField.canonicalRows actualModulus 96 (.band 94 95) := by core033_kernel_decide
theorem stats96 : actualRows96.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows96=5124 := by core033_kernel_decide
theorem rows97 : actualRows97=WordField.canonicalRows actualModulus 97 (.shr 38 8) := by core033_kernel_decide
theorem stats97 : actualRows97.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows97=4548 := by core033_kernel_decide
def partRows0 : List R1CS.Row := actualRows34++actualRows35++actualRows36++actualRows37++actualRows38++actualRows39++actualRows40++actualRows41++actualRows42++actualRows43++actualRows44++actualRows45++actualRows46++actualRows47++actualRows48++actualRows49++actualRows50++actualRows51++actualRows52++actualRows53++actualRows54++actualRows55++actualRows56++actualRows57++actualRows58++actualRows59++actualRows60++actualRows61++actualRows62++actualRows63++actualRows64++actualRows65++actualRows66++actualRows67++actualRows68++actualRows69++actualRows70++actualRows71++actualRows72++actualRows73++actualRows74++actualRows75++actualRows76++actualRows77++actualRows78++actualRows79++actualRows80++actualRows81++actualRows82++actualRows83++actualRows84++actualRows85++actualRows86++actualRows87++actualRows88++actualRows89++actualRows90++actualRows91++actualRows92++actualRows93++actualRows94++actualRows95++actualRows96++actualRows97
def partOps0 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 1 34,.bnot 1,.literal (BitVec.ofNat 32 255),.band 36 37,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 40,.band 39 41,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 44,.bxor 43 45,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 48,.badd 47 49,.bnot 50,.band 46 51,.bxor 42 52,.shr 53 31,.literal (BitVec.ofNat 32 1),.bxor 54 55,.literal (BitVec.ofNat 32 256),.bxor 1 57,.literal (BitVec.ofNat 32 0),.bnot 59,.band 58 60,.literal (BitVec.ofNat 32 256),.bxor 1 62,.literal (BitVec.ofNat 32 0),.bnot 64,.bxor 63 65,.literal (BitVec.ofNat 32 256),.bxor 1 67,.literal (BitVec.ofNat 32 0),.bnot 69,.badd 68 70,.bnot 71,.band 66 72,.bxor 61 73,.shr 74 31,.literal (BitVec.ofNat 32 1),.bxor 75 76,.literal (BitVec.ofNat 32 256),.bnot 78,.band 1 79,.literal (BitVec.ofNat 32 256),.bnot 81,.bxor 1 82,.literal (BitVec.ofNat 32 256),.bnot 84,.badd 1 85,.bnot 86,.band 83 87,.bxor 80 88,.shr 89 31,.literal (BitVec.ofNat 32 1),.bxor 90 91,.shr 38 5,.bnot 38,.literal (BitVec.ofNat 32 31),.band 94 95,.shr 38 8]
theorem partExact0 : partRows0=WordField.rows actualModulus 34 partOps0 := by
  simp only [partRows0,partOps0,WordField.rows,rows34,rows35,rows36,rows37,rows38,rows39,rows40,rows41,rows42,rows43,rows44,rows45,rows46,rows47,rows48,rows49,rows50,rows51,rows52,rows53,rows54,rows55,rows56,rows57,rows58,rows59,rows60,rows61,rows62,rows63,rows64,rows65,rows66,rows67,rows68,rows69,rows70,rows71,rows72,rows73,rows74,rows75,rows76,rows77,rows78,rows79,rows80,rows81,rows82,rows83,rows84,rows85,rows86,rows87,rows88,rows89,rows90,rows91,rows92,rows93,rows94,rows95,rows96,rows97,List.append_assoc,List.append_nil]
theorem partLength0 : partOps0.length=64 := by decide
theorem partStats0 : partRows0.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows0=323592 := by
  simp only [partRows0,List.length_append,MatrixRowBlocks.rows_weight_append,stats34.1,stats34.2,stats35.1,stats35.2,stats36.1,stats36.2,stats37.1,stats37.2,stats38.1,stats38.2,stats39.1,stats39.2,stats40.1,stats40.2,stats41.1,stats41.2,stats42.1,stats42.2,stats43.1,stats43.2,stats44.1,stats44.2,stats45.1,stats45.2,stats46.1,stats46.2,stats47.1,stats47.2,stats48.1,stats48.2,stats49.1,stats49.2,stats50.1,stats50.2,stats51.1,stats51.2,stats52.1,stats52.2,stats53.1,stats53.2,stats54.1,stats54.2,stats55.1,stats55.2,stats56.1,stats56.2,stats57.1,stats57.2,stats58.1,stats58.2,stats59.1,stats59.2,stats60.1,stats60.2,stats61.1,stats61.2,stats62.1,stats62.2,stats63.1,stats63.2,stats64.1,stats64.2,stats65.1,stats65.2,stats66.1,stats66.2,stats67.1,stats67.2,stats68.1,stats68.2,stats69.1,stats69.2,stats70.1,stats70.2,stats71.1,stats71.2,stats72.1,stats72.2,stats73.1,stats73.2,stats74.1,stats74.2,stats75.1,stats75.2,stats76.1,stats76.2,stats77.1,stats77.2,stats78.1,stats78.2,stats79.1,stats79.2,stats80.1,stats80.2,stats81.1,stats81.2,stats82.1,stats82.2,stats83.1,stats83.2,stats84.1,stats84.2,stats85.1,stats85.2,stats86.1,stats86.2,stats87.1,stats87.2,stats88.1,stats88.2,stats89.1,stats89.2,stats90.1,stats90.2,stats91.1,stats91.2,stats92.1,stats92.2,stats93.1,stats93.2,stats94.1,stats94.2,stats95.1,stats95.2,stats96.1,stats96.2,stats97.1,stats97.2]
  decide
end PathFrameCheckedRows
