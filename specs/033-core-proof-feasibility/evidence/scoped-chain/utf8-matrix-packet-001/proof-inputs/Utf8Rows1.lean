import ActualUtf8IR
import ArtifactUtf8Blocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import Utf8InstructionMatrixData1
import Utf8InstructionMatrixData2
namespace Utf8CheckedRows
open Core033 Utf8InstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows65 : actualRows65=WordField.canonicalRows actualModulus 65 (.badd 63 64) := by core033_kernel_decide
theorem stats65 : actualRows65.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows65=5388 := by core033_kernel_decide
theorem rows66 : actualRows66=WordField.canonicalRows actualModulus 66 (.bnot 65) := by core033_kernel_decide
theorem stats66 : actualRows66.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows66=6276 := by core033_kernel_decide
theorem rows67 : actualRows67=WordField.canonicalRows actualModulus 67 (.band 62 66) := by core033_kernel_decide
theorem stats67 : actualRows67.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows67=5124 := by core033_kernel_decide
theorem rows68 : actualRows68=WordField.canonicalRows actualModulus 68 (.bxor 59 67) := by core033_kernel_decide
theorem stats68 : actualRows68.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows68=7428 := by core033_kernel_decide
theorem rows69 : actualRows69=WordField.canonicalRows actualModulus 69 (.shr 68 31) := by core033_kernel_decide
theorem stats69 : actualRows69.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows69=2892 := by core033_kernel_decide
theorem rows70 : actualRows70=WordField.canonicalRows actualModulus 70 (.bnot 69) := by core033_kernel_decide
theorem stats70 : actualRows70.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows70=6276 := by core033_kernel_decide
theorem rows71 : actualRows71=WordField.canonicalRows actualModulus 71 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats71 : actualRows71.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows71=2892 := by core033_kernel_decide
theorem rows72 : actualRows72=WordField.canonicalRows actualModulus 72 (.badd 70 71) := by core033_kernel_decide
theorem stats72 : actualRows72.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows72=5388 := by core033_kernel_decide
theorem rows73 : actualRows73=WordField.canonicalRows actualModulus 73 (.bnot 72) := by core033_kernel_decide
theorem stats73 : actualRows73.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows73=6276 := by core033_kernel_decide
theorem rows74 : actualRows74=WordField.canonicalRows actualModulus 74 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats74 : actualRows74.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows74=2892 := by core033_kernel_decide
theorem rows75 : actualRows75=WordField.canonicalRows actualModulus 75 (.bnot 0) := by core033_kernel_decide
theorem stats75 : actualRows75.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows75=6276 := by core033_kernel_decide
theorem rows76 : actualRows76=WordField.canonicalRows actualModulus 76 (.band 74 75) := by core033_kernel_decide
theorem stats76 : actualRows76.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows76=5124 := by core033_kernel_decide
theorem rows77 : actualRows77=WordField.canonicalRows actualModulus 77 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats77 : actualRows77.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows77=2892 := by core033_kernel_decide
theorem rows78 : actualRows78=WordField.canonicalRows actualModulus 78 (.bnot 0) := by core033_kernel_decide
theorem stats78 : actualRows78.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows78=6276 := by core033_kernel_decide
theorem rows79 : actualRows79=WordField.canonicalRows actualModulus 79 (.bxor 77 78) := by core033_kernel_decide
theorem stats79 : actualRows79.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows79=7428 := by core033_kernel_decide
theorem rows80 : actualRows80=WordField.canonicalRows actualModulus 80 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats80 : actualRows80.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows80=2892 := by core033_kernel_decide
theorem rows81 : actualRows81=WordField.canonicalRows actualModulus 81 (.bnot 0) := by core033_kernel_decide
theorem stats81 : actualRows81.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows81=6276 := by core033_kernel_decide
theorem rows82 : actualRows82=WordField.canonicalRows actualModulus 82 (.badd 80 81) := by core033_kernel_decide
theorem stats82 : actualRows82.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows82=5388 := by core033_kernel_decide
theorem rows83 : actualRows83=WordField.canonicalRows actualModulus 83 (.bnot 82) := by core033_kernel_decide
theorem stats83 : actualRows83.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows83=6276 := by core033_kernel_decide
theorem rows84 : actualRows84=WordField.canonicalRows actualModulus 84 (.band 79 83) := by core033_kernel_decide
theorem stats84 : actualRows84.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows84=5124 := by core033_kernel_decide
theorem rows85 : actualRows85=WordField.canonicalRows actualModulus 85 (.bxor 76 84) := by core033_kernel_decide
theorem stats85 : actualRows85.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows85=7428 := by core033_kernel_decide
theorem rows86 : actualRows86=WordField.canonicalRows actualModulus 86 (.shr 85 31) := by core033_kernel_decide
theorem stats86 : actualRows86.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows86=2892 := by core033_kernel_decide
theorem rows87 : actualRows87=WordField.canonicalRows actualModulus 87 (.bnot 86) := by core033_kernel_decide
theorem stats87 : actualRows87.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows87=6276 := by core033_kernel_decide
theorem rows88 : actualRows88=WordField.canonicalRows actualModulus 88 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats88 : actualRows88.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows88=2892 := by core033_kernel_decide
theorem rows89 : actualRows89=WordField.canonicalRows actualModulus 89 (.badd 87 88) := by core033_kernel_decide
theorem stats89 : actualRows89.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows89=5388 := by core033_kernel_decide
theorem rows90 : actualRows90=WordField.canonicalRows actualModulus 90 (.shr 0 12) := by core033_kernel_decide
theorem stats90 : actualRows90.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows90=4260 := by core033_kernel_decide
theorem rows91 : actualRows91=WordField.canonicalRows actualModulus 91 (.literal (BitVec.ofNat 32 15)) := by core033_kernel_decide
theorem stats91 : actualRows91.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows91=3108 := by core033_kernel_decide
theorem rows92 : actualRows92=WordField.canonicalRows actualModulus 92 (.band 90 91) := by core033_kernel_decide
theorem stats92 : actualRows92.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows92=5124 := by core033_kernel_decide
theorem rows93 : actualRows93=WordField.canonicalRows actualModulus 93 (.literal (BitVec.ofNat 32 224)) := by core033_kernel_decide
theorem stats93 : actualRows93.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows93=3036 := by core033_kernel_decide
theorem rows94 : actualRows94=WordField.canonicalRows actualModulus 94 (.badd 92 93) := by core033_kernel_decide
theorem stats94 : actualRows94.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows94=5388 := by core033_kernel_decide
theorem rows95 : actualRows95=WordField.canonicalRows actualModulus 95 (.band 89 94) := by core033_kernel_decide
theorem stats95 : actualRows95.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows95=5124 := by core033_kernel_decide
theorem rows96 : actualRows96=WordField.canonicalRows actualModulus 96 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats96 : actualRows96.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows96=2892 := by core033_kernel_decide
theorem rows97 : actualRows97=WordField.canonicalRows actualModulus 97 (.bnot 0) := by core033_kernel_decide
theorem stats97 : actualRows97.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows97=6276 := by core033_kernel_decide
theorem rows98 : actualRows98=WordField.canonicalRows actualModulus 98 (.band 96 97) := by core033_kernel_decide
theorem stats98 : actualRows98.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows98=5124 := by core033_kernel_decide
theorem rows99 : actualRows99=WordField.canonicalRows actualModulus 99 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats99 : actualRows99.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows99=2892 := by core033_kernel_decide
theorem rows100 : actualRows100=WordField.canonicalRows actualModulus 100 (.bnot 0) := by core033_kernel_decide
theorem stats100 : actualRows100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows100=6276 := by core033_kernel_decide
theorem rows101 : actualRows101=WordField.canonicalRows actualModulus 101 (.bxor 99 100) := by core033_kernel_decide
theorem stats101 : actualRows101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows101=7428 := by core033_kernel_decide
theorem rows102 : actualRows102=WordField.canonicalRows actualModulus 102 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats102 : actualRows102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows102=2892 := by core033_kernel_decide
theorem rows103 : actualRows103=WordField.canonicalRows actualModulus 103 (.bnot 0) := by core033_kernel_decide
theorem stats103 : actualRows103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows103=6276 := by core033_kernel_decide
theorem rows104 : actualRows104=WordField.canonicalRows actualModulus 104 (.badd 102 103) := by core033_kernel_decide
theorem stats104 : actualRows104.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows104=5388 := by core033_kernel_decide
theorem rows105 : actualRows105=WordField.canonicalRows actualModulus 105 (.bnot 104) := by core033_kernel_decide
theorem stats105 : actualRows105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows105=6276 := by core033_kernel_decide
theorem rows106 : actualRows106=WordField.canonicalRows actualModulus 106 (.band 101 105) := by core033_kernel_decide
theorem stats106 : actualRows106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows106=5124 := by core033_kernel_decide
theorem rows107 : actualRows107=WordField.canonicalRows actualModulus 107 (.bxor 98 106) := by core033_kernel_decide
theorem stats107 : actualRows107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows107=7428 := by core033_kernel_decide
theorem rows108 : actualRows108=WordField.canonicalRows actualModulus 108 (.shr 107 31) := by core033_kernel_decide
theorem stats108 : actualRows108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows108=2892 := by core033_kernel_decide
theorem rows109 : actualRows109=WordField.canonicalRows actualModulus 109 (.bnot 108) := by core033_kernel_decide
theorem stats109 : actualRows109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows109=6276 := by core033_kernel_decide
theorem rows110 : actualRows110=WordField.canonicalRows actualModulus 110 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats110 : actualRows110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows110=2892 := by core033_kernel_decide
theorem rows111 : actualRows111=WordField.canonicalRows actualModulus 111 (.badd 109 110) := by core033_kernel_decide
theorem stats111 : actualRows111.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows111=5388 := by core033_kernel_decide
theorem rows112 : actualRows112=WordField.canonicalRows actualModulus 112 (.bnot 111) := by core033_kernel_decide
theorem stats112 : actualRows112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows112=6276 := by core033_kernel_decide
theorem rows113 : actualRows113=WordField.canonicalRows actualModulus 113 (.shr 0 18) := by core033_kernel_decide
theorem stats113 : actualRows113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows113=3828 := by core033_kernel_decide
theorem rows114 : actualRows114=WordField.canonicalRows actualModulus 114 (.literal (BitVec.ofNat 32 7)) := by core033_kernel_decide
theorem stats114 : actualRows114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows114=3036 := by core033_kernel_decide
theorem rows115 : actualRows115=WordField.canonicalRows actualModulus 115 (.band 113 114) := by core033_kernel_decide
theorem stats115 : actualRows115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows115=5124 := by core033_kernel_decide
theorem rows116 : actualRows116=WordField.canonicalRows actualModulus 116 (.literal (BitVec.ofNat 32 240)) := by core033_kernel_decide
theorem stats116 : actualRows116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows116=3108 := by core033_kernel_decide
theorem rows117 : actualRows117=WordField.canonicalRows actualModulus 117 (.badd 115 116) := by core033_kernel_decide
theorem stats117 : actualRows117.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows117=5388 := by core033_kernel_decide
theorem rows118 : actualRows118=WordField.canonicalRows actualModulus 118 (.band 112 117) := by core033_kernel_decide
theorem stats118 : actualRows118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows118=5124 := by core033_kernel_decide
theorem rows119 : actualRows119=WordField.canonicalRows actualModulus 119 (.bxor 95 118) := by core033_kernel_decide
theorem stats119 : actualRows119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows119=7428 := by core033_kernel_decide
theorem rows120 : actualRows120=WordField.canonicalRows actualModulus 120 (.band 73 119) := by core033_kernel_decide
theorem stats120 : actualRows120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows120=5124 := by core033_kernel_decide
theorem rows121 : actualRows121=WordField.canonicalRows actualModulus 121 (.bxor 56 120) := by core033_kernel_decide
theorem stats121 : actualRows121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows121=7428 := by core033_kernel_decide
theorem rows122 : actualRows122=WordField.canonicalRows actualModulus 122 (.band 34 121) := by core033_kernel_decide
theorem stats122 : actualRows122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows122=5124 := by core033_kernel_decide
theorem rows123 : actualRows123=WordField.canonicalRows actualModulus 123 (.bxor 17 122) := by core033_kernel_decide
theorem stats123 : actualRows123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows123=7428 := by core033_kernel_decide
theorem rows124 : actualRows124=WordField.canonicalRows actualModulus 124 (.literal (BitVec.ofNat 32 128)) := by core033_kernel_decide
theorem stats124 : actualRows124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows124=2892 := by core033_kernel_decide
theorem rows125 : actualRows125=WordField.canonicalRows actualModulus 125 (.bnot 0) := by core033_kernel_decide
theorem stats125 : actualRows125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows125=6276 := by core033_kernel_decide
theorem rows126 : actualRows126=WordField.canonicalRows actualModulus 126 (.band 124 125) := by core033_kernel_decide
theorem stats126 : actualRows126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows126=5124 := by core033_kernel_decide
theorem rows127 : actualRows127=WordField.canonicalRows actualModulus 127 (.literal (BitVec.ofNat 32 128)) := by core033_kernel_decide
theorem stats127 : actualRows127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows127=2892 := by core033_kernel_decide
theorem rows128 : actualRows128=WordField.canonicalRows actualModulus 128 (.bnot 0) := by core033_kernel_decide
theorem stats128 : actualRows128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows128=6276 := by core033_kernel_decide
def partRows1 : List R1CS.Row := actualRows65++actualRows66++actualRows67++actualRows68++actualRows69++actualRows70++actualRows71++actualRows72++actualRows73++actualRows74++actualRows75++actualRows76++actualRows77++actualRows78++actualRows79++actualRows80++actualRows81++actualRows82++actualRows83++actualRows84++actualRows85++actualRows86++actualRows87++actualRows88++actualRows89++actualRows90++actualRows91++actualRows92++actualRows93++actualRows94++actualRows95++actualRows96++actualRows97++actualRows98++actualRows99++actualRows100++actualRows101++actualRows102++actualRows103++actualRows104++actualRows105++actualRows106++actualRows107++actualRows108++actualRows109++actualRows110++actualRows111++actualRows112++actualRows113++actualRows114++actualRows115++actualRows116++actualRows117++actualRows118++actualRows119++actualRows120++actualRows121++actualRows122++actualRows123++actualRows124++actualRows125++actualRows126++actualRows127++actualRows128
def partOps1 : List WordIR.Op := [.badd 63 64,.bnot 65,.band 62 66,.bxor 59 67,.shr 68 31,.bnot 69,.literal (BitVec.ofNat 32 1),.badd 70 71,.bnot 72,.literal (BitVec.ofNat 32 65536),.bnot 0,.band 74 75,.literal (BitVec.ofNat 32 65536),.bnot 0,.bxor 77 78,.literal (BitVec.ofNat 32 65536),.bnot 0,.badd 80 81,.bnot 82,.band 79 83,.bxor 76 84,.shr 85 31,.bnot 86,.literal (BitVec.ofNat 32 1),.badd 87 88,.shr 0 12,.literal (BitVec.ofNat 32 15),.band 90 91,.literal (BitVec.ofNat 32 224),.badd 92 93,.band 89 94,.literal (BitVec.ofNat 32 65536),.bnot 0,.band 96 97,.literal (BitVec.ofNat 32 65536),.bnot 0,.bxor 99 100,.literal (BitVec.ofNat 32 65536),.bnot 0,.badd 102 103,.bnot 104,.band 101 105,.bxor 98 106,.shr 107 31,.bnot 108,.literal (BitVec.ofNat 32 1),.badd 109 110,.bnot 111,.shr 0 18,.literal (BitVec.ofNat 32 7),.band 113 114,.literal (BitVec.ofNat 32 240),.badd 115 116,.band 112 117,.bxor 95 118,.band 73 119,.bxor 56 120,.band 34 121,.bxor 17 122,.literal (BitVec.ofNat 32 128),.bnot 0,.band 124 125,.literal (BitVec.ofNat 32 128),.bnot 0]
theorem partExact1 : partRows1=WordField.rows actualModulus 65 partOps1 := by
  simp only [partRows1,partOps1,WordField.rows,rows65,rows66,rows67,rows68,rows69,rows70,rows71,rows72,rows73,rows74,rows75,rows76,rows77,rows78,rows79,rows80,rows81,rows82,rows83,rows84,rows85,rows86,rows87,rows88,rows89,rows90,rows91,rows92,rows93,rows94,rows95,rows96,rows97,rows98,rows99,rows100,rows101,rows102,rows103,rows104,rows105,rows106,rows107,rows108,rows109,rows110,rows111,rows112,rows113,rows114,rows115,rows116,rows117,rows118,rows119,rows120,rows121,rows122,rows123,rows124,rows125,rows126,rows127,rows128,List.append_assoc,List.append_nil]
theorem partLength1 : partOps1.length=64 := by decide
theorem partStats1 : partRows1.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows1=325296 := by
  simp only [partRows1,List.length_append,MatrixRowBlocks.rows_weight_append,stats65.1,stats65.2,stats66.1,stats66.2,stats67.1,stats67.2,stats68.1,stats68.2,stats69.1,stats69.2,stats70.1,stats70.2,stats71.1,stats71.2,stats72.1,stats72.2,stats73.1,stats73.2,stats74.1,stats74.2,stats75.1,stats75.2,stats76.1,stats76.2,stats77.1,stats77.2,stats78.1,stats78.2,stats79.1,stats79.2,stats80.1,stats80.2,stats81.1,stats81.2,stats82.1,stats82.2,stats83.1,stats83.2,stats84.1,stats84.2,stats85.1,stats85.2,stats86.1,stats86.2,stats87.1,stats87.2,stats88.1,stats88.2,stats89.1,stats89.2,stats90.1,stats90.2,stats91.1,stats91.2,stats92.1,stats92.2,stats93.1,stats93.2,stats94.1,stats94.2,stats95.1,stats95.2,stats96.1,stats96.2,stats97.1,stats97.2,stats98.1,stats98.2,stats99.1,stats99.2,stats100.1,stats100.2,stats101.1,stats101.2,stats102.1,stats102.2,stats103.1,stats103.2,stats104.1,stats104.2,stats105.1,stats105.2,stats106.1,stats106.2,stats107.1,stats107.2,stats108.1,stats108.2,stats109.1,stats109.2,stats110.1,stats110.2,stats111.1,stats111.2,stats112.1,stats112.2,stats113.1,stats113.2,stats114.1,stats114.2,stats115.1,stats115.2,stats116.1,stats116.2,stats117.1,stats117.2,stats118.1,stats118.2,stats119.1,stats119.2,stats120.1,stats120.2,stats121.1,stats121.2,stats122.1,stats122.2,stats123.1,stats123.2,stats124.1,stats124.2,stats125.1,stats125.2,stats126.1,stats126.2,stats127.1,stats127.2,stats128.1,stats128.2]
  decide
end Utf8CheckedRows
