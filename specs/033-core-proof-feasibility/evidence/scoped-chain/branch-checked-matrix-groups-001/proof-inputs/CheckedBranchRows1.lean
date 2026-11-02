import ActualCheckedBranchIR
import ArtifactCheckedBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import CheckedBranchInstructionMatrixData1
import CheckedBranchInstructionMatrixData2
namespace CheckedBranchCheckedRows
open Core033 CheckedBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows90 : actualRows90=WordField.canonicalRows actualModulus 90 (.shr 4 24) := by core033_kernel_decide
theorem stats90 : actualRows90.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows90=3396 := by core033_kernel_decide
theorem rows91 : actualRows91=WordField.canonicalRows actualModulus 91 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats91 : actualRows91.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows91=3396 := by core033_kernel_decide
theorem rows92 : actualRows92=WordField.canonicalRows actualModulus 92 (.band 90 91) := by core033_kernel_decide
theorem stats92 : actualRows92.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows92=5124 := by core033_kernel_decide
theorem rows93 : actualRows93=WordField.canonicalRows actualModulus 93 (.shr 5 0) := by core033_kernel_decide
theorem stats93 : actualRows93.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows93=5124 := by core033_kernel_decide
theorem rows94 : actualRows94=WordField.canonicalRows actualModulus 94 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats94 : actualRows94.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows94=3396 := by core033_kernel_decide
theorem rows95 : actualRows95=WordField.canonicalRows actualModulus 95 (.band 93 94) := by core033_kernel_decide
theorem stats95 : actualRows95.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows95=5124 := by core033_kernel_decide
theorem rows96 : actualRows96=WordField.canonicalRows actualModulus 96 (.shr 5 8) := by core033_kernel_decide
theorem stats96 : actualRows96.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows96=4548 := by core033_kernel_decide
theorem rows97 : actualRows97=WordField.canonicalRows actualModulus 97 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats97 : actualRows97.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows97=3396 := by core033_kernel_decide
theorem rows98 : actualRows98=WordField.canonicalRows actualModulus 98 (.band 96 97) := by core033_kernel_decide
theorem stats98 : actualRows98.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows98=5124 := by core033_kernel_decide
theorem rows99 : actualRows99=WordField.canonicalRows actualModulus 99 (.shr 5 16) := by core033_kernel_decide
theorem stats99 : actualRows99.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows99=3972 := by core033_kernel_decide
theorem rows100 : actualRows100=WordField.canonicalRows actualModulus 100 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats100 : actualRows100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows100=3396 := by core033_kernel_decide
theorem rows101 : actualRows101=WordField.canonicalRows actualModulus 101 (.band 99 100) := by core033_kernel_decide
theorem stats101 : actualRows101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows101=5124 := by core033_kernel_decide
theorem rows102 : actualRows102=WordField.canonicalRows actualModulus 102 (.shr 5 24) := by core033_kernel_decide
theorem stats102 : actualRows102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows102=3396 := by core033_kernel_decide
theorem rows103 : actualRows103=WordField.canonicalRows actualModulus 103 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats103 : actualRows103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows103=3396 := by core033_kernel_decide
theorem rows104 : actualRows104=WordField.canonicalRows actualModulus 104 (.band 102 103) := by core033_kernel_decide
theorem stats104 : actualRows104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows104=5124 := by core033_kernel_decide
theorem rows105 : actualRows105=WordField.canonicalRows actualModulus 105 (.shr 6 0) := by core033_kernel_decide
theorem stats105 : actualRows105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows105=5124 := by core033_kernel_decide
theorem rows106 : actualRows106=WordField.canonicalRows actualModulus 106 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats106 : actualRows106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows106=3396 := by core033_kernel_decide
theorem rows107 : actualRows107=WordField.canonicalRows actualModulus 107 (.band 105 106) := by core033_kernel_decide
theorem stats107 : actualRows107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows107=5124 := by core033_kernel_decide
theorem rows108 : actualRows108=WordField.canonicalRows actualModulus 108 (.shr 6 8) := by core033_kernel_decide
theorem stats108 : actualRows108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows108=4548 := by core033_kernel_decide
theorem rows109 : actualRows109=WordField.canonicalRows actualModulus 109 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats109 : actualRows109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows109=3396 := by core033_kernel_decide
theorem rows110 : actualRows110=WordField.canonicalRows actualModulus 110 (.band 108 109) := by core033_kernel_decide
theorem stats110 : actualRows110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows110=5124 := by core033_kernel_decide
theorem rows111 : actualRows111=WordField.canonicalRows actualModulus 111 (.shr 6 16) := by core033_kernel_decide
theorem stats111 : actualRows111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows111=3972 := by core033_kernel_decide
theorem rows112 : actualRows112=WordField.canonicalRows actualModulus 112 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats112 : actualRows112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows112=3396 := by core033_kernel_decide
theorem rows113 : actualRows113=WordField.canonicalRows actualModulus 113 (.band 111 112) := by core033_kernel_decide
theorem stats113 : actualRows113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows113=5124 := by core033_kernel_decide
theorem rows114 : actualRows114=WordField.canonicalRows actualModulus 114 (.shr 6 24) := by core033_kernel_decide
theorem stats114 : actualRows114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows114=3396 := by core033_kernel_decide
theorem rows115 : actualRows115=WordField.canonicalRows actualModulus 115 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats115 : actualRows115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows115=3396 := by core033_kernel_decide
theorem rows116 : actualRows116=WordField.canonicalRows actualModulus 116 (.band 114 115) := by core033_kernel_decide
theorem stats116 : actualRows116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows116=5124 := by core033_kernel_decide
theorem rows117 : actualRows117=WordField.canonicalRows actualModulus 117 (.shr 7 0) := by core033_kernel_decide
theorem stats117 : actualRows117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows117=5124 := by core033_kernel_decide
theorem rows118 : actualRows118=WordField.canonicalRows actualModulus 118 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats118 : actualRows118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows118=3396 := by core033_kernel_decide
theorem rows119 : actualRows119=WordField.canonicalRows actualModulus 119 (.band 117 118) := by core033_kernel_decide
theorem stats119 : actualRows119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows119=5124 := by core033_kernel_decide
theorem rows120 : actualRows120=WordField.canonicalRows actualModulus 120 (.shr 7 8) := by core033_kernel_decide
theorem stats120 : actualRows120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows120=4548 := by core033_kernel_decide
theorem rows121 : actualRows121=WordField.canonicalRows actualModulus 121 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats121 : actualRows121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows121=3396 := by core033_kernel_decide
theorem rows122 : actualRows122=WordField.canonicalRows actualModulus 122 (.band 120 121) := by core033_kernel_decide
theorem stats122 : actualRows122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows122=5124 := by core033_kernel_decide
theorem rows123 : actualRows123=WordField.canonicalRows actualModulus 123 (.shr 7 16) := by core033_kernel_decide
theorem stats123 : actualRows123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows123=3972 := by core033_kernel_decide
theorem rows124 : actualRows124=WordField.canonicalRows actualModulus 124 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats124 : actualRows124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows124=3396 := by core033_kernel_decide
theorem rows125 : actualRows125=WordField.canonicalRows actualModulus 125 (.band 123 124) := by core033_kernel_decide
theorem stats125 : actualRows125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows125=5124 := by core033_kernel_decide
theorem rows126 : actualRows126=WordField.canonicalRows actualModulus 126 (.shr 7 24) := by core033_kernel_decide
theorem stats126 : actualRows126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows126=3396 := by core033_kernel_decide
theorem rows127 : actualRows127=WordField.canonicalRows actualModulus 127 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats127 : actualRows127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows127=3396 := by core033_kernel_decide
theorem rows128 : actualRows128=WordField.canonicalRows actualModulus 128 (.band 126 127) := by core033_kernel_decide
theorem stats128 : actualRows128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows128=5124 := by core033_kernel_decide
theorem rows129 : actualRows129=WordField.canonicalRows actualModulus 129 (.shr 8 0) := by core033_kernel_decide
theorem stats129 : actualRows129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows129=5124 := by core033_kernel_decide
theorem rows130 : actualRows130=WordField.canonicalRows actualModulus 130 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats130 : actualRows130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows130=3396 := by core033_kernel_decide
theorem rows131 : actualRows131=WordField.canonicalRows actualModulus 131 (.band 129 130) := by core033_kernel_decide
theorem stats131 : actualRows131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows131=5124 := by core033_kernel_decide
theorem rows132 : actualRows132=WordField.canonicalRows actualModulus 132 (.shr 8 8) := by core033_kernel_decide
theorem stats132 : actualRows132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows132=4548 := by core033_kernel_decide
theorem rows133 : actualRows133=WordField.canonicalRows actualModulus 133 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats133 : actualRows133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows133=3396 := by core033_kernel_decide
theorem rows134 : actualRows134=WordField.canonicalRows actualModulus 134 (.band 132 133) := by core033_kernel_decide
theorem stats134 : actualRows134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows134=5124 := by core033_kernel_decide
theorem rows135 : actualRows135=WordField.canonicalRows actualModulus 135 (.shr 8 16) := by core033_kernel_decide
theorem stats135 : actualRows135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows135=3972 := by core033_kernel_decide
theorem rows136 : actualRows136=WordField.canonicalRows actualModulus 136 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats136 : actualRows136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows136=3396 := by core033_kernel_decide
theorem rows137 : actualRows137=WordField.canonicalRows actualModulus 137 (.band 135 136) := by core033_kernel_decide
theorem stats137 : actualRows137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows137=5124 := by core033_kernel_decide
theorem rows138 : actualRows138=WordField.canonicalRows actualModulus 138 (.shr 8 24) := by core033_kernel_decide
theorem stats138 : actualRows138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows138=3396 := by core033_kernel_decide
theorem rows139 : actualRows139=WordField.canonicalRows actualModulus 139 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats139 : actualRows139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows139=3396 := by core033_kernel_decide
theorem rows140 : actualRows140=WordField.canonicalRows actualModulus 140 (.band 138 139) := by core033_kernel_decide
theorem stats140 : actualRows140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows140=5124 := by core033_kernel_decide
theorem rows141 : actualRows141=WordField.canonicalRows actualModulus 141 (.shr 9 0) := by core033_kernel_decide
theorem stats141 : actualRows141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows141=5124 := by core033_kernel_decide
theorem rows142 : actualRows142=WordField.canonicalRows actualModulus 142 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats142 : actualRows142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows142=3396 := by core033_kernel_decide
theorem rows143 : actualRows143=WordField.canonicalRows actualModulus 143 (.band 141 142) := by core033_kernel_decide
theorem stats143 : actualRows143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows143=5124 := by core033_kernel_decide
theorem rows144 : actualRows144=WordField.canonicalRows actualModulus 144 (.shr 9 8) := by core033_kernel_decide
theorem stats144 : actualRows144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows144=4548 := by core033_kernel_decide
theorem rows145 : actualRows145=WordField.canonicalRows actualModulus 145 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats145 : actualRows145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows145=3396 := by core033_kernel_decide
theorem rows146 : actualRows146=WordField.canonicalRows actualModulus 146 (.band 144 145) := by core033_kernel_decide
theorem stats146 : actualRows146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows146=5124 := by core033_kernel_decide
theorem rows147 : actualRows147=WordField.canonicalRows actualModulus 147 (.shr 9 16) := by core033_kernel_decide
theorem stats147 : actualRows147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows147=3972 := by core033_kernel_decide
theorem rows148 : actualRows148=WordField.canonicalRows actualModulus 148 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats148 : actualRows148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows148=3396 := by core033_kernel_decide
theorem rows149 : actualRows149=WordField.canonicalRows actualModulus 149 (.band 147 148) := by core033_kernel_decide
theorem stats149 : actualRows149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows149=5124 := by core033_kernel_decide
theorem rows150 : actualRows150=WordField.canonicalRows actualModulus 150 (.shr 9 24) := by core033_kernel_decide
theorem stats150 : actualRows150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows150=3396 := by core033_kernel_decide
theorem rows151 : actualRows151=WordField.canonicalRows actualModulus 151 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats151 : actualRows151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows151=3396 := by core033_kernel_decide
theorem rows152 : actualRows152=WordField.canonicalRows actualModulus 152 (.band 150 151) := by core033_kernel_decide
theorem stats152 : actualRows152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows152=5124 := by core033_kernel_decide
theorem rows153 : actualRows153=WordField.canonicalRows actualModulus 153 (.shr 10 0) := by core033_kernel_decide
theorem stats153 : actualRows153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows153=5124 := by core033_kernel_decide
def partRows1 : List R1CS.Row := actualRows90++actualRows91++actualRows92++actualRows93++actualRows94++actualRows95++actualRows96++actualRows97++actualRows98++actualRows99++actualRows100++actualRows101++actualRows102++actualRows103++actualRows104++actualRows105++actualRows106++actualRows107++actualRows108++actualRows109++actualRows110++actualRows111++actualRows112++actualRows113++actualRows114++actualRows115++actualRows116++actualRows117++actualRows118++actualRows119++actualRows120++actualRows121++actualRows122++actualRows123++actualRows124++actualRows125++actualRows126++actualRows127++actualRows128++actualRows129++actualRows130++actualRows131++actualRows132++actualRows133++actualRows134++actualRows135++actualRows136++actualRows137++actualRows138++actualRows139++actualRows140++actualRows141++actualRows142++actualRows143++actualRows144++actualRows145++actualRows146++actualRows147++actualRows148++actualRows149++actualRows150++actualRows151++actualRows152++actualRows153
def partOps1 : List WordIR.Op := [.shr 4 24,.literal (BitVec.ofNat 32 255),.band 90 91,.shr 5 0,.literal (BitVec.ofNat 32 255),.band 93 94,.shr 5 8,.literal (BitVec.ofNat 32 255),.band 96 97,.shr 5 16,.literal (BitVec.ofNat 32 255),.band 99 100,.shr 5 24,.literal (BitVec.ofNat 32 255),.band 102 103,.shr 6 0,.literal (BitVec.ofNat 32 255),.band 105 106,.shr 6 8,.literal (BitVec.ofNat 32 255),.band 108 109,.shr 6 16,.literal (BitVec.ofNat 32 255),.band 111 112,.shr 6 24,.literal (BitVec.ofNat 32 255),.band 114 115,.shr 7 0,.literal (BitVec.ofNat 32 255),.band 117 118,.shr 7 8,.literal (BitVec.ofNat 32 255),.band 120 121,.shr 7 16,.literal (BitVec.ofNat 32 255),.band 123 124,.shr 7 24,.literal (BitVec.ofNat 32 255),.band 126 127,.shr 8 0,.literal (BitVec.ofNat 32 255),.band 129 130,.shr 8 8,.literal (BitVec.ofNat 32 255),.band 132 133,.shr 8 16,.literal (BitVec.ofNat 32 255),.band 135 136,.shr 8 24,.literal (BitVec.ofNat 32 255),.band 138 139,.shr 9 0,.literal (BitVec.ofNat 32 255),.band 141 142,.shr 9 8,.literal (BitVec.ofNat 32 255),.band 144 145,.shr 9 16,.literal (BitVec.ofNat 32 255),.band 147 148,.shr 9 24,.literal (BitVec.ofNat 32 255),.band 150 151,.shr 10 0]
theorem partExact1 : partRows1=WordField.rows actualModulus 90 partOps1 := by
  simp only [partRows1,partOps1,WordField.rows,rows90,rows91,rows92,rows93,rows94,rows95,rows96,rows97,rows98,rows99,rows100,rows101,rows102,rows103,rows104,rows105,rows106,rows107,rows108,rows109,rows110,rows111,rows112,rows113,rows114,rows115,rows116,rows117,rows118,rows119,rows120,rows121,rows122,rows123,rows124,rows125,rows126,rows127,rows128,rows129,rows130,rows131,rows132,rows133,rows134,rows135,rows136,rows137,rows138,rows139,rows140,rows141,rows142,rows143,rows144,rows145,rows146,rows147,rows148,rows149,rows150,rows151,rows152,rows153,List.append_assoc,List.append_nil]
theorem partLength1 : partOps1.length=64 := by decide
theorem partStats1 : partRows1.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows1=272640 := by
  simp only [partRows1,List.length_append,MatrixRowBlocks.rows_weight_append,stats90.1,stats90.2,stats91.1,stats91.2,stats92.1,stats92.2,stats93.1,stats93.2,stats94.1,stats94.2,stats95.1,stats95.2,stats96.1,stats96.2,stats97.1,stats97.2,stats98.1,stats98.2,stats99.1,stats99.2,stats100.1,stats100.2,stats101.1,stats101.2,stats102.1,stats102.2,stats103.1,stats103.2,stats104.1,stats104.2,stats105.1,stats105.2,stats106.1,stats106.2,stats107.1,stats107.2,stats108.1,stats108.2,stats109.1,stats109.2,stats110.1,stats110.2,stats111.1,stats111.2,stats112.1,stats112.2,stats113.1,stats113.2,stats114.1,stats114.2,stats115.1,stats115.2,stats116.1,stats116.2,stats117.1,stats117.2,stats118.1,stats118.2,stats119.1,stats119.2,stats120.1,stats120.2,stats121.1,stats121.2,stats122.1,stats122.2,stats123.1,stats123.2,stats124.1,stats124.2,stats125.1,stats125.2,stats126.1,stats126.2,stats127.1,stats127.2,stats128.1,stats128.2,stats129.1,stats129.2,stats130.1,stats130.2,stats131.1,stats131.2,stats132.1,stats132.2,stats133.1,stats133.2,stats134.1,stats134.2,stats135.1,stats135.2,stats136.1,stats136.2,stats137.1,stats137.2,stats138.1,stats138.2,stats139.1,stats139.2,stats140.1,stats140.2,stats141.1,stats141.2,stats142.1,stats142.2,stats143.1,stats143.2,stats144.1,stats144.2,stats145.1,stats145.2,stats146.1,stats146.2,stats147.1,stats147.2,stats148.1,stats148.2,stats149.1,stats149.2,stats150.1,stats150.2,stats151.1,stats151.2,stats152.1,stats152.2,stats153.1,stats153.2]
  decide
end CheckedBranchCheckedRows
