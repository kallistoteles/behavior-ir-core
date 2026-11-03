import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData204
import PairedPathRoundInstructionMatrixData205
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13088 : actualRows13088=WordField.canonicalRows actualModulus 13088 (.bxor 13082 13087) := by core033_kernel_decide
theorem stats13088 : actualRows13088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13088=7428 := by core033_kernel_decide
theorem rows13089 : actualRows13089=WordField.canonicalRows actualModulus 13089 (.bnot 267) := by core033_kernel_decide
theorem stats13089 : actualRows13089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13089=6276 := by core033_kernel_decide
theorem rows13090 : actualRows13090=WordField.canonicalRows actualModulus 13090 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13090 : actualRows13090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13090=2892 := by core033_kernel_decide
theorem rows13091 : actualRows13091=WordField.canonicalRows actualModulus 13091 (.badd 13089 13090) := by core033_kernel_decide
theorem stats13091 : actualRows13091.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13091=5388 := by core033_kernel_decide
theorem rows13092 : actualRows13092=WordField.canonicalRows actualModulus 13092 (.band 13091 11525) := by core033_kernel_decide
theorem stats13092 : actualRows13092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13092=5124 := by core033_kernel_decide
theorem rows13093 : actualRows13093=WordField.canonicalRows actualModulus 13093 (.bnot 267) := by core033_kernel_decide
theorem stats13093 : actualRows13093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13093=6276 := by core033_kernel_decide
theorem rows13094 : actualRows13094=WordField.canonicalRows actualModulus 13094 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13094 : actualRows13094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13094=2892 := by core033_kernel_decide
theorem rows13095 : actualRows13095=WordField.canonicalRows actualModulus 13095 (.badd 13093 13094) := by core033_kernel_decide
theorem stats13095 : actualRows13095.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13095=5388 := by core033_kernel_decide
theorem rows13096 : actualRows13096=WordField.canonicalRows actualModulus 13096 (.bnot 13095) := by core033_kernel_decide
theorem stats13096 : actualRows13096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13096=6276 := by core033_kernel_decide
theorem rows13097 : actualRows13097=WordField.canonicalRows actualModulus 13097 (.band 13096 58) := by core033_kernel_decide
theorem stats13097 : actualRows13097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13097=5124 := by core033_kernel_decide
theorem rows13098 : actualRows13098=WordField.canonicalRows actualModulus 13098 (.bxor 13092 13097) := by core033_kernel_decide
theorem stats13098 : actualRows13098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13098=7428 := by core033_kernel_decide
theorem rows13099 : actualRows13099=WordField.canonicalRows actualModulus 13099 (.bnot 267) := by core033_kernel_decide
theorem stats13099 : actualRows13099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13099=6276 := by core033_kernel_decide
theorem rows13100 : actualRows13100=WordField.canonicalRows actualModulus 13100 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13100 : actualRows13100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13100=2892 := by core033_kernel_decide
theorem rows13101 : actualRows13101=WordField.canonicalRows actualModulus 13101 (.badd 13099 13100) := by core033_kernel_decide
theorem stats13101 : actualRows13101.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13101=5388 := by core033_kernel_decide
theorem rows13102 : actualRows13102=WordField.canonicalRows actualModulus 13102 (.band 13101 11577) := by core033_kernel_decide
theorem stats13102 : actualRows13102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13102=5124 := by core033_kernel_decide
theorem rows13103 : actualRows13103=WordField.canonicalRows actualModulus 13103 (.bnot 267) := by core033_kernel_decide
theorem stats13103 : actualRows13103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13103=6276 := by core033_kernel_decide
theorem rows13104 : actualRows13104=WordField.canonicalRows actualModulus 13104 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13104 : actualRows13104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13104=2892 := by core033_kernel_decide
theorem rows13105 : actualRows13105=WordField.canonicalRows actualModulus 13105 (.badd 13103 13104) := by core033_kernel_decide
theorem stats13105 : actualRows13105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13105=5388 := by core033_kernel_decide
theorem rows13106 : actualRows13106=WordField.canonicalRows actualModulus 13106 (.bnot 13105) := by core033_kernel_decide
theorem stats13106 : actualRows13106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13106=6276 := by core033_kernel_decide
theorem rows13107 : actualRows13107=WordField.canonicalRows actualModulus 13107 (.band 13106 59) := by core033_kernel_decide
theorem stats13107 : actualRows13107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13107=5124 := by core033_kernel_decide
theorem rows13108 : actualRows13108=WordField.canonicalRows actualModulus 13108 (.bxor 13102 13107) := by core033_kernel_decide
theorem stats13108 : actualRows13108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13108=7428 := by core033_kernel_decide
theorem rows13109 : actualRows13109=WordField.canonicalRows actualModulus 13109 (.bnot 267) := by core033_kernel_decide
theorem stats13109 : actualRows13109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13109=6276 := by core033_kernel_decide
theorem rows13110 : actualRows13110=WordField.canonicalRows actualModulus 13110 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13110 : actualRows13110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13110=2892 := by core033_kernel_decide
theorem rows13111 : actualRows13111=WordField.canonicalRows actualModulus 13111 (.badd 13109 13110) := by core033_kernel_decide
theorem stats13111 : actualRows13111.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13111=5388 := by core033_kernel_decide
theorem rows13112 : actualRows13112=WordField.canonicalRows actualModulus 13112 (.band 13111 11629) := by core033_kernel_decide
theorem stats13112 : actualRows13112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13112=5124 := by core033_kernel_decide
theorem rows13113 : actualRows13113=WordField.canonicalRows actualModulus 13113 (.bnot 267) := by core033_kernel_decide
theorem stats13113 : actualRows13113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13113=6276 := by core033_kernel_decide
theorem rows13114 : actualRows13114=WordField.canonicalRows actualModulus 13114 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13114 : actualRows13114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13114=2892 := by core033_kernel_decide
theorem rows13115 : actualRows13115=WordField.canonicalRows actualModulus 13115 (.badd 13113 13114) := by core033_kernel_decide
theorem stats13115 : actualRows13115.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13115=5388 := by core033_kernel_decide
theorem rows13116 : actualRows13116=WordField.canonicalRows actualModulus 13116 (.bnot 13115) := by core033_kernel_decide
theorem stats13116 : actualRows13116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13116=6276 := by core033_kernel_decide
theorem rows13117 : actualRows13117=WordField.canonicalRows actualModulus 13117 (.band 13116 60) := by core033_kernel_decide
theorem stats13117 : actualRows13117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13117=5124 := by core033_kernel_decide
theorem rows13118 : actualRows13118=WordField.canonicalRows actualModulus 13118 (.bxor 13112 13117) := by core033_kernel_decide
theorem stats13118 : actualRows13118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13118=7428 := by core033_kernel_decide
theorem rows13119 : actualRows13119=WordField.canonicalRows actualModulus 13119 (.bnot 267) := by core033_kernel_decide
theorem stats13119 : actualRows13119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13119=6276 := by core033_kernel_decide
theorem rows13120 : actualRows13120=WordField.canonicalRows actualModulus 13120 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13120 : actualRows13120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13120=2892 := by core033_kernel_decide
theorem rows13121 : actualRows13121=WordField.canonicalRows actualModulus 13121 (.badd 13119 13120) := by core033_kernel_decide
theorem stats13121 : actualRows13121.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13121=5388 := by core033_kernel_decide
theorem rows13122 : actualRows13122=WordField.canonicalRows actualModulus 13122 (.band 13121 11681) := by core033_kernel_decide
theorem stats13122 : actualRows13122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13122=5124 := by core033_kernel_decide
theorem rows13123 : actualRows13123=WordField.canonicalRows actualModulus 13123 (.bnot 267) := by core033_kernel_decide
theorem stats13123 : actualRows13123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13123=6276 := by core033_kernel_decide
theorem rows13124 : actualRows13124=WordField.canonicalRows actualModulus 13124 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13124 : actualRows13124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13124=2892 := by core033_kernel_decide
theorem rows13125 : actualRows13125=WordField.canonicalRows actualModulus 13125 (.badd 13123 13124) := by core033_kernel_decide
theorem stats13125 : actualRows13125.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13125=5388 := by core033_kernel_decide
theorem rows13126 : actualRows13126=WordField.canonicalRows actualModulus 13126 (.bnot 13125) := by core033_kernel_decide
theorem stats13126 : actualRows13126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13126=6276 := by core033_kernel_decide
theorem rows13127 : actualRows13127=WordField.canonicalRows actualModulus 13127 (.band 13126 61) := by core033_kernel_decide
theorem stats13127 : actualRows13127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13127=5124 := by core033_kernel_decide
theorem rows13128 : actualRows13128=WordField.canonicalRows actualModulus 13128 (.bxor 13122 13127) := by core033_kernel_decide
theorem stats13128 : actualRows13128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13128=7428 := by core033_kernel_decide
theorem rows13129 : actualRows13129=WordField.canonicalRows actualModulus 13129 (.bnot 267) := by core033_kernel_decide
theorem stats13129 : actualRows13129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13129=6276 := by core033_kernel_decide
theorem rows13130 : actualRows13130=WordField.canonicalRows actualModulus 13130 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13130 : actualRows13130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13130=2892 := by core033_kernel_decide
theorem rows13131 : actualRows13131=WordField.canonicalRows actualModulus 13131 (.badd 13129 13130) := by core033_kernel_decide
theorem stats13131 : actualRows13131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13131=5388 := by core033_kernel_decide
theorem rows13132 : actualRows13132=WordField.canonicalRows actualModulus 13132 (.band 13131 11733) := by core033_kernel_decide
theorem stats13132 : actualRows13132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13132=5124 := by core033_kernel_decide
theorem rows13133 : actualRows13133=WordField.canonicalRows actualModulus 13133 (.bnot 267) := by core033_kernel_decide
theorem stats13133 : actualRows13133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13133=6276 := by core033_kernel_decide
theorem rows13134 : actualRows13134=WordField.canonicalRows actualModulus 13134 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13134 : actualRows13134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13134=2892 := by core033_kernel_decide
theorem rows13135 : actualRows13135=WordField.canonicalRows actualModulus 13135 (.badd 13133 13134) := by core033_kernel_decide
theorem stats13135 : actualRows13135.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13135=5388 := by core033_kernel_decide
theorem rows13136 : actualRows13136=WordField.canonicalRows actualModulus 13136 (.bnot 13135) := by core033_kernel_decide
theorem stats13136 : actualRows13136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13136=6276 := by core033_kernel_decide
theorem rows13137 : actualRows13137=WordField.canonicalRows actualModulus 13137 (.band 13136 62) := by core033_kernel_decide
theorem stats13137 : actualRows13137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13137=5124 := by core033_kernel_decide
theorem rows13138 : actualRows13138=WordField.canonicalRows actualModulus 13138 (.bxor 13132 13137) := by core033_kernel_decide
theorem stats13138 : actualRows13138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13138=7428 := by core033_kernel_decide
theorem rows13139 : actualRows13139=WordField.canonicalRows actualModulus 13139 (.bnot 267) := by core033_kernel_decide
theorem stats13139 : actualRows13139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13139=6276 := by core033_kernel_decide
theorem rows13140 : actualRows13140=WordField.canonicalRows actualModulus 13140 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13140 : actualRows13140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13140=2892 := by core033_kernel_decide
theorem rows13141 : actualRows13141=WordField.canonicalRows actualModulus 13141 (.badd 13139 13140) := by core033_kernel_decide
theorem stats13141 : actualRows13141.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13141=5388 := by core033_kernel_decide
theorem rows13142 : actualRows13142=WordField.canonicalRows actualModulus 13142 (.band 13141 12201) := by core033_kernel_decide
theorem stats13142 : actualRows13142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13142=5124 := by core033_kernel_decide
theorem rows13143 : actualRows13143=WordField.canonicalRows actualModulus 13143 (.bnot 267) := by core033_kernel_decide
theorem stats13143 : actualRows13143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13143=6276 := by core033_kernel_decide
theorem rows13144 : actualRows13144=WordField.canonicalRows actualModulus 13144 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13144 : actualRows13144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13144=2892 := by core033_kernel_decide
theorem rows13145 : actualRows13145=WordField.canonicalRows actualModulus 13145 (.badd 13143 13144) := by core033_kernel_decide
theorem stats13145 : actualRows13145.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13145=5388 := by core033_kernel_decide
theorem rows13146 : actualRows13146=WordField.canonicalRows actualModulus 13146 (.bnot 13145) := by core033_kernel_decide
theorem stats13146 : actualRows13146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13146=6276 := by core033_kernel_decide
theorem rows13147 : actualRows13147=WordField.canonicalRows actualModulus 13147 (.band 13146 63) := by core033_kernel_decide
theorem stats13147 : actualRows13147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13147=5124 := by core033_kernel_decide
theorem rows13148 : actualRows13148=WordField.canonicalRows actualModulus 13148 (.bxor 13142 13147) := by core033_kernel_decide
theorem stats13148 : actualRows13148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13148=7428 := by core033_kernel_decide
theorem rows13149 : actualRows13149=WordField.canonicalRows actualModulus 13149 (.bnot 267) := by core033_kernel_decide
theorem stats13149 : actualRows13149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13149=6276 := by core033_kernel_decide
theorem rows13150 : actualRows13150=WordField.canonicalRows actualModulus 13150 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13150 : actualRows13150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13150=2892 := by core033_kernel_decide
theorem rows13151 : actualRows13151=WordField.canonicalRows actualModulus 13151 (.badd 13149 13150) := by core033_kernel_decide
theorem stats13151 : actualRows13151.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13151=5388 := by core033_kernel_decide
def partRows203 : List R1CS.Row := actualRows13088++actualRows13089++actualRows13090++actualRows13091++actualRows13092++actualRows13093++actualRows13094++actualRows13095++actualRows13096++actualRows13097++actualRows13098++actualRows13099++actualRows13100++actualRows13101++actualRows13102++actualRows13103++actualRows13104++actualRows13105++actualRows13106++actualRows13107++actualRows13108++actualRows13109++actualRows13110++actualRows13111++actualRows13112++actualRows13113++actualRows13114++actualRows13115++actualRows13116++actualRows13117++actualRows13118++actualRows13119++actualRows13120++actualRows13121++actualRows13122++actualRows13123++actualRows13124++actualRows13125++actualRows13126++actualRows13127++actualRows13128++actualRows13129++actualRows13130++actualRows13131++actualRows13132++actualRows13133++actualRows13134++actualRows13135++actualRows13136++actualRows13137++actualRows13138++actualRows13139++actualRows13140++actualRows13141++actualRows13142++actualRows13143++actualRows13144++actualRows13145++actualRows13146++actualRows13147++actualRows13148++actualRows13149++actualRows13150++actualRows13151
def partOps203 : List WordIR.Op := [.bxor 13082 13087,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13089 13090,.band 13091 11525,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13093 13094,.bnot 13095,.band 13096 58,.bxor 13092 13097,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13099 13100,.band 13101 11577,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13103 13104,.bnot 13105,.band 13106 59,.bxor 13102 13107,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13109 13110,.band 13111 11629,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13113 13114,.bnot 13115,.band 13116 60,.bxor 13112 13117,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13119 13120,.band 13121 11681,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13123 13124,.bnot 13125,.band 13126 61,.bxor 13122 13127,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13129 13130,.band 13131 11733,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13133 13134,.bnot 13135,.band 13136 62,.bxor 13132 13137,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13139 13140,.band 13141 12201,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13143 13144,.bnot 13145,.band 13146 63,.bxor 13142 13147,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13149 13150]
theorem partExact203 : partRows203=WordField.rows actualModulus 13088 partOps203 := by
  simp only [partRows203,partOps203,WordField.rows,rows13088,rows13089,rows13090,rows13091,rows13092,rows13093,rows13094,rows13095,rows13096,rows13097,rows13098,rows13099,rows13100,rows13101,rows13102,rows13103,rows13104,rows13105,rows13106,rows13107,rows13108,rows13109,rows13110,rows13111,rows13112,rows13113,rows13114,rows13115,rows13116,rows13117,rows13118,rows13119,rows13120,rows13121,rows13122,rows13123,rows13124,rows13125,rows13126,rows13127,rows13128,rows13129,rows13130,rows13131,rows13132,rows13133,rows13134,rows13135,rows13136,rows13137,rows13138,rows13139,rows13140,rows13141,rows13142,rows13143,rows13144,rows13145,rows13146,rows13147,rows13148,rows13149,rows13150,rows13151,List.append_assoc,List.append_nil]
theorem partLength203 : partOps203.length=64 := by decide
theorem partStats203 : partRows203.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows203=340368 := by
  simp only [partRows203,List.length_append,MatrixRowBlocks.rows_weight_append,stats13088.1,stats13088.2,stats13089.1,stats13089.2,stats13090.1,stats13090.2,stats13091.1,stats13091.2,stats13092.1,stats13092.2,stats13093.1,stats13093.2,stats13094.1,stats13094.2,stats13095.1,stats13095.2,stats13096.1,stats13096.2,stats13097.1,stats13097.2,stats13098.1,stats13098.2,stats13099.1,stats13099.2,stats13100.1,stats13100.2,stats13101.1,stats13101.2,stats13102.1,stats13102.2,stats13103.1,stats13103.2,stats13104.1,stats13104.2,stats13105.1,stats13105.2,stats13106.1,stats13106.2,stats13107.1,stats13107.2,stats13108.1,stats13108.2,stats13109.1,stats13109.2,stats13110.1,stats13110.2,stats13111.1,stats13111.2,stats13112.1,stats13112.2,stats13113.1,stats13113.2,stats13114.1,stats13114.2,stats13115.1,stats13115.2,stats13116.1,stats13116.2,stats13117.1,stats13117.2,stats13118.1,stats13118.2,stats13119.1,stats13119.2,stats13120.1,stats13120.2,stats13121.1,stats13121.2,stats13122.1,stats13122.2,stats13123.1,stats13123.2,stats13124.1,stats13124.2,stats13125.1,stats13125.2,stats13126.1,stats13126.2,stats13127.1,stats13127.2,stats13128.1,stats13128.2,stats13129.1,stats13129.2,stats13130.1,stats13130.2,stats13131.1,stats13131.2,stats13132.1,stats13132.2,stats13133.1,stats13133.2,stats13134.1,stats13134.2,stats13135.1,stats13135.2,stats13136.1,stats13136.2,stats13137.1,stats13137.2,stats13138.1,stats13138.2,stats13139.1,stats13139.2,stats13140.1,stats13140.2,stats13141.1,stats13141.2,stats13142.1,stats13142.2,stats13143.1,stats13143.2,stats13144.1,stats13144.2,stats13145.1,stats13145.2,stats13146.1,stats13146.2,stats13147.1,stats13147.2,stats13148.1,stats13148.2,stats13149.1,stats13149.2,stats13150.1,stats13150.2,stats13151.1,stats13151.2]
  decide
end PairedPathRoundCheckedRows
