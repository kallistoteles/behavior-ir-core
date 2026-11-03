import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData1
import PairedPathRoundInstructionMatrixData2
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows96 : actualRows96=WordField.canonicalRows actualModulus 96 (.literal (BitVec.ofNat 32 4)) := by core033_kernel_decide
theorem stats96 : actualRows96.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows96=2892 := by core033_kernel_decide
theorem rows97 : actualRows97=WordField.canonicalRows actualModulus 97 (.bxor 0 96) := by core033_kernel_decide
theorem stats97 : actualRows97.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows97=7428 := by core033_kernel_decide
theorem rows98 : actualRows98=WordField.canonicalRows actualModulus 98 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats98 : actualRows98.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows98=2820 := by core033_kernel_decide
theorem rows99 : actualRows99=WordField.canonicalRows actualModulus 99 (.bnot 98) := by core033_kernel_decide
theorem stats99 : actualRows99.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows99=6276 := by core033_kernel_decide
theorem rows100 : actualRows100=WordField.canonicalRows actualModulus 100 (.band 97 99) := by core033_kernel_decide
theorem stats100 : actualRows100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows100=5124 := by core033_kernel_decide
theorem rows101 : actualRows101=WordField.canonicalRows actualModulus 101 (.literal (BitVec.ofNat 32 4)) := by core033_kernel_decide
theorem stats101 : actualRows101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows101=2892 := by core033_kernel_decide
theorem rows102 : actualRows102=WordField.canonicalRows actualModulus 102 (.bxor 0 101) := by core033_kernel_decide
theorem stats102 : actualRows102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows102=7428 := by core033_kernel_decide
theorem rows103 : actualRows103=WordField.canonicalRows actualModulus 103 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats103 : actualRows103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows103=2820 := by core033_kernel_decide
theorem rows104 : actualRows104=WordField.canonicalRows actualModulus 104 (.bnot 103) := by core033_kernel_decide
theorem stats104 : actualRows104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows104=6276 := by core033_kernel_decide
theorem rows105 : actualRows105=WordField.canonicalRows actualModulus 105 (.bxor 102 104) := by core033_kernel_decide
theorem stats105 : actualRows105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows105=7428 := by core033_kernel_decide
theorem rows106 : actualRows106=WordField.canonicalRows actualModulus 106 (.literal (BitVec.ofNat 32 4)) := by core033_kernel_decide
theorem stats106 : actualRows106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows106=2892 := by core033_kernel_decide
theorem rows107 : actualRows107=WordField.canonicalRows actualModulus 107 (.bxor 0 106) := by core033_kernel_decide
theorem stats107 : actualRows107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows107=7428 := by core033_kernel_decide
theorem rows108 : actualRows108=WordField.canonicalRows actualModulus 108 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats108 : actualRows108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows108=2820 := by core033_kernel_decide
theorem rows109 : actualRows109=WordField.canonicalRows actualModulus 109 (.bnot 108) := by core033_kernel_decide
theorem stats109 : actualRows109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows109=6276 := by core033_kernel_decide
theorem rows110 : actualRows110=WordField.canonicalRows actualModulus 110 (.badd 107 109) := by core033_kernel_decide
theorem stats110 : actualRows110.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows110=5388 := by core033_kernel_decide
theorem rows111 : actualRows111=WordField.canonicalRows actualModulus 111 (.bnot 110) := by core033_kernel_decide
theorem stats111 : actualRows111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows111=6276 := by core033_kernel_decide
theorem rows112 : actualRows112=WordField.canonicalRows actualModulus 112 (.band 105 111) := by core033_kernel_decide
theorem stats112 : actualRows112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows112=5124 := by core033_kernel_decide
theorem rows113 : actualRows113=WordField.canonicalRows actualModulus 113 (.bxor 100 112) := by core033_kernel_decide
theorem stats113 : actualRows113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows113=7428 := by core033_kernel_decide
theorem rows114 : actualRows114=WordField.canonicalRows actualModulus 114 (.shr 113 31) := by core033_kernel_decide
theorem stats114 : actualRows114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows114=2892 := by core033_kernel_decide
theorem rows115 : actualRows115=WordField.canonicalRows actualModulus 115 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats115 : actualRows115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows115=2892 := by core033_kernel_decide
theorem rows116 : actualRows116=WordField.canonicalRows actualModulus 116 (.bxor 114 115) := by core033_kernel_decide
theorem stats116 : actualRows116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows116=7428 := by core033_kernel_decide
theorem rows117 : actualRows117=WordField.canonicalRows actualModulus 117 (.literal (BitVec.ofNat 32 5)) := by core033_kernel_decide
theorem stats117 : actualRows117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows117=2964 := by core033_kernel_decide
theorem rows118 : actualRows118=WordField.canonicalRows actualModulus 118 (.bxor 0 117) := by core033_kernel_decide
theorem stats118 : actualRows118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows118=7428 := by core033_kernel_decide
theorem rows119 : actualRows119=WordField.canonicalRows actualModulus 119 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats119 : actualRows119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows119=2820 := by core033_kernel_decide
theorem rows120 : actualRows120=WordField.canonicalRows actualModulus 120 (.bnot 119) := by core033_kernel_decide
theorem stats120 : actualRows120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows120=6276 := by core033_kernel_decide
theorem rows121 : actualRows121=WordField.canonicalRows actualModulus 121 (.band 118 120) := by core033_kernel_decide
theorem stats121 : actualRows121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows121=5124 := by core033_kernel_decide
theorem rows122 : actualRows122=WordField.canonicalRows actualModulus 122 (.literal (BitVec.ofNat 32 5)) := by core033_kernel_decide
theorem stats122 : actualRows122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows122=2964 := by core033_kernel_decide
theorem rows123 : actualRows123=WordField.canonicalRows actualModulus 123 (.bxor 0 122) := by core033_kernel_decide
theorem stats123 : actualRows123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows123=7428 := by core033_kernel_decide
theorem rows124 : actualRows124=WordField.canonicalRows actualModulus 124 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats124 : actualRows124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows124=2820 := by core033_kernel_decide
theorem rows125 : actualRows125=WordField.canonicalRows actualModulus 125 (.bnot 124) := by core033_kernel_decide
theorem stats125 : actualRows125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows125=6276 := by core033_kernel_decide
theorem rows126 : actualRows126=WordField.canonicalRows actualModulus 126 (.bxor 123 125) := by core033_kernel_decide
theorem stats126 : actualRows126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows126=7428 := by core033_kernel_decide
theorem rows127 : actualRows127=WordField.canonicalRows actualModulus 127 (.literal (BitVec.ofNat 32 5)) := by core033_kernel_decide
theorem stats127 : actualRows127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows127=2964 := by core033_kernel_decide
theorem rows128 : actualRows128=WordField.canonicalRows actualModulus 128 (.bxor 0 127) := by core033_kernel_decide
theorem stats128 : actualRows128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows128=7428 := by core033_kernel_decide
theorem rows129 : actualRows129=WordField.canonicalRows actualModulus 129 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats129 : actualRows129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows129=2820 := by core033_kernel_decide
theorem rows130 : actualRows130=WordField.canonicalRows actualModulus 130 (.bnot 129) := by core033_kernel_decide
theorem stats130 : actualRows130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows130=6276 := by core033_kernel_decide
theorem rows131 : actualRows131=WordField.canonicalRows actualModulus 131 (.badd 128 130) := by core033_kernel_decide
theorem stats131 : actualRows131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows131=5388 := by core033_kernel_decide
theorem rows132 : actualRows132=WordField.canonicalRows actualModulus 132 (.bnot 131) := by core033_kernel_decide
theorem stats132 : actualRows132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows132=6276 := by core033_kernel_decide
theorem rows133 : actualRows133=WordField.canonicalRows actualModulus 133 (.band 126 132) := by core033_kernel_decide
theorem stats133 : actualRows133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows133=5124 := by core033_kernel_decide
theorem rows134 : actualRows134=WordField.canonicalRows actualModulus 134 (.bxor 121 133) := by core033_kernel_decide
theorem stats134 : actualRows134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows134=7428 := by core033_kernel_decide
theorem rows135 : actualRows135=WordField.canonicalRows actualModulus 135 (.shr 134 31) := by core033_kernel_decide
theorem stats135 : actualRows135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows135=2892 := by core033_kernel_decide
theorem rows136 : actualRows136=WordField.canonicalRows actualModulus 136 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats136 : actualRows136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows136=2892 := by core033_kernel_decide
theorem rows137 : actualRows137=WordField.canonicalRows actualModulus 137 (.bxor 135 136) := by core033_kernel_decide
theorem stats137 : actualRows137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows137=7428 := by core033_kernel_decide
theorem rows138 : actualRows138=WordField.canonicalRows actualModulus 138 (.bxor 116 137) := by core033_kernel_decide
theorem stats138 : actualRows138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows138=7428 := by core033_kernel_decide
theorem rows139 : actualRows139=WordField.canonicalRows actualModulus 139 (.literal (BitVec.ofNat 32 6)) := by core033_kernel_decide
theorem stats139 : actualRows139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows139=2964 := by core033_kernel_decide
theorem rows140 : actualRows140=WordField.canonicalRows actualModulus 140 (.bxor 0 139) := by core033_kernel_decide
theorem stats140 : actualRows140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows140=7428 := by core033_kernel_decide
theorem rows141 : actualRows141=WordField.canonicalRows actualModulus 141 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats141 : actualRows141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows141=2820 := by core033_kernel_decide
theorem rows142 : actualRows142=WordField.canonicalRows actualModulus 142 (.bnot 141) := by core033_kernel_decide
theorem stats142 : actualRows142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows142=6276 := by core033_kernel_decide
theorem rows143 : actualRows143=WordField.canonicalRows actualModulus 143 (.band 140 142) := by core033_kernel_decide
theorem stats143 : actualRows143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows143=5124 := by core033_kernel_decide
theorem rows144 : actualRows144=WordField.canonicalRows actualModulus 144 (.literal (BitVec.ofNat 32 6)) := by core033_kernel_decide
theorem stats144 : actualRows144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows144=2964 := by core033_kernel_decide
theorem rows145 : actualRows145=WordField.canonicalRows actualModulus 145 (.bxor 0 144) := by core033_kernel_decide
theorem stats145 : actualRows145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows145=7428 := by core033_kernel_decide
theorem rows146 : actualRows146=WordField.canonicalRows actualModulus 146 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats146 : actualRows146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows146=2820 := by core033_kernel_decide
theorem rows147 : actualRows147=WordField.canonicalRows actualModulus 147 (.bnot 146) := by core033_kernel_decide
theorem stats147 : actualRows147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows147=6276 := by core033_kernel_decide
theorem rows148 : actualRows148=WordField.canonicalRows actualModulus 148 (.bxor 145 147) := by core033_kernel_decide
theorem stats148 : actualRows148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows148=7428 := by core033_kernel_decide
theorem rows149 : actualRows149=WordField.canonicalRows actualModulus 149 (.literal (BitVec.ofNat 32 6)) := by core033_kernel_decide
theorem stats149 : actualRows149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows149=2964 := by core033_kernel_decide
theorem rows150 : actualRows150=WordField.canonicalRows actualModulus 150 (.bxor 0 149) := by core033_kernel_decide
theorem stats150 : actualRows150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows150=7428 := by core033_kernel_decide
theorem rows151 : actualRows151=WordField.canonicalRows actualModulus 151 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats151 : actualRows151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows151=2820 := by core033_kernel_decide
theorem rows152 : actualRows152=WordField.canonicalRows actualModulus 152 (.bnot 151) := by core033_kernel_decide
theorem stats152 : actualRows152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows152=6276 := by core033_kernel_decide
theorem rows153 : actualRows153=WordField.canonicalRows actualModulus 153 (.badd 150 152) := by core033_kernel_decide
theorem stats153 : actualRows153.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows153=5388 := by core033_kernel_decide
theorem rows154 : actualRows154=WordField.canonicalRows actualModulus 154 (.bnot 153) := by core033_kernel_decide
theorem stats154 : actualRows154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows154=6276 := by core033_kernel_decide
theorem rows155 : actualRows155=WordField.canonicalRows actualModulus 155 (.band 148 154) := by core033_kernel_decide
theorem stats155 : actualRows155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows155=5124 := by core033_kernel_decide
theorem rows156 : actualRows156=WordField.canonicalRows actualModulus 156 (.bxor 143 155) := by core033_kernel_decide
theorem stats156 : actualRows156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows156=7428 := by core033_kernel_decide
theorem rows157 : actualRows157=WordField.canonicalRows actualModulus 157 (.shr 156 31) := by core033_kernel_decide
theorem stats157 : actualRows157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows157=2892 := by core033_kernel_decide
theorem rows158 : actualRows158=WordField.canonicalRows actualModulus 158 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats158 : actualRows158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows158=2892 := by core033_kernel_decide
theorem rows159 : actualRows159=WordField.canonicalRows actualModulus 159 (.bxor 157 158) := by core033_kernel_decide
theorem stats159 : actualRows159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows159=7428 := by core033_kernel_decide
def partRows0 : List R1CS.Row := actualRows96++actualRows97++actualRows98++actualRows99++actualRows100++actualRows101++actualRows102++actualRows103++actualRows104++actualRows105++actualRows106++actualRows107++actualRows108++actualRows109++actualRows110++actualRows111++actualRows112++actualRows113++actualRows114++actualRows115++actualRows116++actualRows117++actualRows118++actualRows119++actualRows120++actualRows121++actualRows122++actualRows123++actualRows124++actualRows125++actualRows126++actualRows127++actualRows128++actualRows129++actualRows130++actualRows131++actualRows132++actualRows133++actualRows134++actualRows135++actualRows136++actualRows137++actualRows138++actualRows139++actualRows140++actualRows141++actualRows142++actualRows143++actualRows144++actualRows145++actualRows146++actualRows147++actualRows148++actualRows149++actualRows150++actualRows151++actualRows152++actualRows153++actualRows154++actualRows155++actualRows156++actualRows157++actualRows158++actualRows159
def partOps0 : List WordIR.Op := [.literal (BitVec.ofNat 32 4),.bxor 0 96,.literal (BitVec.ofNat 32 0),.bnot 98,.band 97 99,.literal (BitVec.ofNat 32 4),.bxor 0 101,.literal (BitVec.ofNat 32 0),.bnot 103,.bxor 102 104,.literal (BitVec.ofNat 32 4),.bxor 0 106,.literal (BitVec.ofNat 32 0),.bnot 108,.badd 107 109,.bnot 110,.band 105 111,.bxor 100 112,.shr 113 31,.literal (BitVec.ofNat 32 1),.bxor 114 115,.literal (BitVec.ofNat 32 5),.bxor 0 117,.literal (BitVec.ofNat 32 0),.bnot 119,.band 118 120,.literal (BitVec.ofNat 32 5),.bxor 0 122,.literal (BitVec.ofNat 32 0),.bnot 124,.bxor 123 125,.literal (BitVec.ofNat 32 5),.bxor 0 127,.literal (BitVec.ofNat 32 0),.bnot 129,.badd 128 130,.bnot 131,.band 126 132,.bxor 121 133,.shr 134 31,.literal (BitVec.ofNat 32 1),.bxor 135 136,.bxor 116 137,.literal (BitVec.ofNat 32 6),.bxor 0 139,.literal (BitVec.ofNat 32 0),.bnot 141,.band 140 142,.literal (BitVec.ofNat 32 6),.bxor 0 144,.literal (BitVec.ofNat 32 0),.bnot 146,.bxor 145 147,.literal (BitVec.ofNat 32 6),.bxor 0 149,.literal (BitVec.ofNat 32 0),.bnot 151,.badd 150 152,.bnot 153,.band 148 154,.bxor 143 155,.shr 156 31,.literal (BitVec.ofNat 32 1),.bxor 157 158]
theorem partExact0 : partRows0=WordField.rows actualModulus 96 partOps0 := by
  simp only [partRows0,partOps0,WordField.rows,rows96,rows97,rows98,rows99,rows100,rows101,rows102,rows103,rows104,rows105,rows106,rows107,rows108,rows109,rows110,rows111,rows112,rows113,rows114,rows115,rows116,rows117,rows118,rows119,rows120,rows121,rows122,rows123,rows124,rows125,rows126,rows127,rows128,rows129,rows130,rows131,rows132,rows133,rows134,rows135,rows136,rows137,rows138,rows139,rows140,rows141,rows142,rows143,rows144,rows145,rows146,rows147,rows148,rows149,rows150,rows151,rows152,rows153,rows154,rows155,rows156,rows157,rows158,rows159,List.append_assoc,List.append_nil]
theorem partLength0 : partOps0.length=64 := by decide
theorem partStats0 : partRows0.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows0=332544 := by
  simp only [partRows0,List.length_append,MatrixRowBlocks.rows_weight_append,stats96.1,stats96.2,stats97.1,stats97.2,stats98.1,stats98.2,stats99.1,stats99.2,stats100.1,stats100.2,stats101.1,stats101.2,stats102.1,stats102.2,stats103.1,stats103.2,stats104.1,stats104.2,stats105.1,stats105.2,stats106.1,stats106.2,stats107.1,stats107.2,stats108.1,stats108.2,stats109.1,stats109.2,stats110.1,stats110.2,stats111.1,stats111.2,stats112.1,stats112.2,stats113.1,stats113.2,stats114.1,stats114.2,stats115.1,stats115.2,stats116.1,stats116.2,stats117.1,stats117.2,stats118.1,stats118.2,stats119.1,stats119.2,stats120.1,stats120.2,stats121.1,stats121.2,stats122.1,stats122.2,stats123.1,stats123.2,stats124.1,stats124.2,stats125.1,stats125.2,stats126.1,stats126.2,stats127.1,stats127.2,stats128.1,stats128.2,stats129.1,stats129.2,stats130.1,stats130.2,stats131.1,stats131.2,stats132.1,stats132.2,stats133.1,stats133.2,stats134.1,stats134.2,stats135.1,stats135.2,stats136.1,stats136.2,stats137.1,stats137.2,stats138.1,stats138.2,stats139.1,stats139.2,stats140.1,stats140.2,stats141.1,stats141.2,stats142.1,stats142.2,stats143.1,stats143.2,stats144.1,stats144.2,stats145.1,stats145.2,stats146.1,stats146.2,stats147.1,stats147.2,stats148.1,stats148.2,stats149.1,stats149.2,stats150.1,stats150.2,stats151.1,stats151.2,stats152.1,stats152.2,stats153.1,stats153.2,stats154.1,stats154.2,stats155.1,stats155.2,stats156.1,stats156.2,stats157.1,stats157.2,stats158.1,stats158.2,stats159.1,stats159.2]
  decide
end QuotedPairedPathRoundCheckedRows
