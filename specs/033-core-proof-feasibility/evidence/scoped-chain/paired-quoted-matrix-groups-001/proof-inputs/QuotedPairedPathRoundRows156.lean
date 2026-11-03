import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData157
import PairedPathRoundInstructionMatrixData158
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10080 : actualRows10080=WordField.canonicalRows actualModulus 10080 (.bxor 10073 10079) := by core033_kernel_decide
theorem stats10080 : actualRows10080.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10080=7428 := by core033_kernel_decide
theorem rows10081 : actualRows10081=WordField.canonicalRows actualModulus 10081 (.bnot 9926) := by core033_kernel_decide
theorem stats10081 : actualRows10081.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10081=6276 := by core033_kernel_decide
theorem rows10082 : actualRows10082=WordField.canonicalRows actualModulus 10082 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10082 : actualRows10082.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10082=2892 := by core033_kernel_decide
theorem rows10083 : actualRows10083=WordField.canonicalRows actualModulus 10083 (.badd 10081 10082) := by core033_kernel_decide
theorem stats10083 : actualRows10083.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10083=5388 := by core033_kernel_decide
theorem rows10084 : actualRows10084=WordField.canonicalRows actualModulus 10084 (.band 10083 482) := by core033_kernel_decide
theorem stats10084 : actualRows10084.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10084=5124 := by core033_kernel_decide
theorem rows10085 : actualRows10085=WordField.canonicalRows actualModulus 10085 (.bnot 9926) := by core033_kernel_decide
theorem stats10085 : actualRows10085.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10085=6276 := by core033_kernel_decide
theorem rows10086 : actualRows10086=WordField.canonicalRows actualModulus 10086 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10086 : actualRows10086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10086=2892 := by core033_kernel_decide
theorem rows10087 : actualRows10087=WordField.canonicalRows actualModulus 10087 (.badd 10085 10086) := by core033_kernel_decide
theorem stats10087 : actualRows10087.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10087=5388 := by core033_kernel_decide
theorem rows10088 : actualRows10088=WordField.canonicalRows actualModulus 10088 (.bnot 10087) := by core033_kernel_decide
theorem stats10088 : actualRows10088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10088=6276 := by core033_kernel_decide
theorem rows10089 : actualRows10089=WordField.canonicalRows actualModulus 10089 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10089 : actualRows10089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10089=2820 := by core033_kernel_decide
theorem rows10090 : actualRows10090=WordField.canonicalRows actualModulus 10090 (.band 10088 10089) := by core033_kernel_decide
theorem stats10090 : actualRows10090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10090=5124 := by core033_kernel_decide
theorem rows10091 : actualRows10091=WordField.canonicalRows actualModulus 10091 (.bxor 10084 10090) := by core033_kernel_decide
theorem stats10091 : actualRows10091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10091=7428 := by core033_kernel_decide
theorem rows10092 : actualRows10092=WordField.canonicalRows actualModulus 10092 (.bnot 9926) := by core033_kernel_decide
theorem stats10092 : actualRows10092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10092=6276 := by core033_kernel_decide
theorem rows10093 : actualRows10093=WordField.canonicalRows actualModulus 10093 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10093 : actualRows10093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10093=2892 := by core033_kernel_decide
theorem rows10094 : actualRows10094=WordField.canonicalRows actualModulus 10094 (.badd 10092 10093) := by core033_kernel_decide
theorem stats10094 : actualRows10094.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10094=5388 := by core033_kernel_decide
theorem rows10095 : actualRows10095=WordField.canonicalRows actualModulus 10095 (.band 10094 492) := by core033_kernel_decide
theorem stats10095 : actualRows10095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10095=5124 := by core033_kernel_decide
theorem rows10096 : actualRows10096=WordField.canonicalRows actualModulus 10096 (.bnot 9926) := by core033_kernel_decide
theorem stats10096 : actualRows10096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10096=6276 := by core033_kernel_decide
theorem rows10097 : actualRows10097=WordField.canonicalRows actualModulus 10097 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10097 : actualRows10097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10097=2892 := by core033_kernel_decide
theorem rows10098 : actualRows10098=WordField.canonicalRows actualModulus 10098 (.badd 10096 10097) := by core033_kernel_decide
theorem stats10098 : actualRows10098.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10098=5388 := by core033_kernel_decide
theorem rows10099 : actualRows10099=WordField.canonicalRows actualModulus 10099 (.bnot 10098) := by core033_kernel_decide
theorem stats10099 : actualRows10099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10099=6276 := by core033_kernel_decide
theorem rows10100 : actualRows10100=WordField.canonicalRows actualModulus 10100 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10100 : actualRows10100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10100=2820 := by core033_kernel_decide
theorem rows10101 : actualRows10101=WordField.canonicalRows actualModulus 10101 (.band 10099 10100) := by core033_kernel_decide
theorem stats10101 : actualRows10101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10101=5124 := by core033_kernel_decide
theorem rows10102 : actualRows10102=WordField.canonicalRows actualModulus 10102 (.bxor 10095 10101) := by core033_kernel_decide
theorem stats10102 : actualRows10102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10102=7428 := by core033_kernel_decide
theorem rows10103 : actualRows10103=WordField.canonicalRows actualModulus 10103 (.bnot 9926) := by core033_kernel_decide
theorem stats10103 : actualRows10103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10103=6276 := by core033_kernel_decide
theorem rows10104 : actualRows10104=WordField.canonicalRows actualModulus 10104 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10104 : actualRows10104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10104=2892 := by core033_kernel_decide
theorem rows10105 : actualRows10105=WordField.canonicalRows actualModulus 10105 (.badd 10103 10104) := by core033_kernel_decide
theorem stats10105 : actualRows10105.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10105=5388 := by core033_kernel_decide
theorem rows10106 : actualRows10106=WordField.canonicalRows actualModulus 10106 (.band 10105 502) := by core033_kernel_decide
theorem stats10106 : actualRows10106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10106=5124 := by core033_kernel_decide
theorem rows10107 : actualRows10107=WordField.canonicalRows actualModulus 10107 (.bnot 9926) := by core033_kernel_decide
theorem stats10107 : actualRows10107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10107=6276 := by core033_kernel_decide
theorem rows10108 : actualRows10108=WordField.canonicalRows actualModulus 10108 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10108 : actualRows10108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10108=2892 := by core033_kernel_decide
theorem rows10109 : actualRows10109=WordField.canonicalRows actualModulus 10109 (.badd 10107 10108) := by core033_kernel_decide
theorem stats10109 : actualRows10109.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10109=5388 := by core033_kernel_decide
theorem rows10110 : actualRows10110=WordField.canonicalRows actualModulus 10110 (.bnot 10109) := by core033_kernel_decide
theorem stats10110 : actualRows10110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10110=6276 := by core033_kernel_decide
theorem rows10111 : actualRows10111=WordField.canonicalRows actualModulus 10111 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10111 : actualRows10111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10111=2820 := by core033_kernel_decide
theorem rows10112 : actualRows10112=WordField.canonicalRows actualModulus 10112 (.band 10110 10111) := by core033_kernel_decide
theorem stats10112 : actualRows10112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10112=5124 := by core033_kernel_decide
theorem rows10113 : actualRows10113=WordField.canonicalRows actualModulus 10113 (.bxor 10106 10112) := by core033_kernel_decide
theorem stats10113 : actualRows10113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10113=7428 := by core033_kernel_decide
theorem rows10114 : actualRows10114=WordField.canonicalRows actualModulus 10114 (.bnot 9926) := by core033_kernel_decide
theorem stats10114 : actualRows10114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10114=6276 := by core033_kernel_decide
theorem rows10115 : actualRows10115=WordField.canonicalRows actualModulus 10115 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10115 : actualRows10115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10115=2892 := by core033_kernel_decide
theorem rows10116 : actualRows10116=WordField.canonicalRows actualModulus 10116 (.badd 10114 10115) := by core033_kernel_decide
theorem stats10116 : actualRows10116.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10116=5388 := by core033_kernel_decide
theorem rows10117 : actualRows10117=WordField.canonicalRows actualModulus 10117 (.band 10116 512) := by core033_kernel_decide
theorem stats10117 : actualRows10117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10117=5124 := by core033_kernel_decide
theorem rows10118 : actualRows10118=WordField.canonicalRows actualModulus 10118 (.bnot 9926) := by core033_kernel_decide
theorem stats10118 : actualRows10118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10118=6276 := by core033_kernel_decide
theorem rows10119 : actualRows10119=WordField.canonicalRows actualModulus 10119 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10119 : actualRows10119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10119=2892 := by core033_kernel_decide
theorem rows10120 : actualRows10120=WordField.canonicalRows actualModulus 10120 (.badd 10118 10119) := by core033_kernel_decide
theorem stats10120 : actualRows10120.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10120=5388 := by core033_kernel_decide
theorem rows10121 : actualRows10121=WordField.canonicalRows actualModulus 10121 (.bnot 10120) := by core033_kernel_decide
theorem stats10121 : actualRows10121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10121=6276 := by core033_kernel_decide
theorem rows10122 : actualRows10122=WordField.canonicalRows actualModulus 10122 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10122 : actualRows10122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10122=2820 := by core033_kernel_decide
theorem rows10123 : actualRows10123=WordField.canonicalRows actualModulus 10123 (.band 10121 10122) := by core033_kernel_decide
theorem stats10123 : actualRows10123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10123=5124 := by core033_kernel_decide
theorem rows10124 : actualRows10124=WordField.canonicalRows actualModulus 10124 (.bxor 10117 10123) := by core033_kernel_decide
theorem stats10124 : actualRows10124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10124=7428 := by core033_kernel_decide
theorem rows10125 : actualRows10125=WordField.canonicalRows actualModulus 10125 (.bnot 9926) := by core033_kernel_decide
theorem stats10125 : actualRows10125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10125=6276 := by core033_kernel_decide
theorem rows10126 : actualRows10126=WordField.canonicalRows actualModulus 10126 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10126 : actualRows10126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10126=2892 := by core033_kernel_decide
theorem rows10127 : actualRows10127=WordField.canonicalRows actualModulus 10127 (.badd 10125 10126) := by core033_kernel_decide
theorem stats10127 : actualRows10127.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10127=5388 := by core033_kernel_decide
theorem rows10128 : actualRows10128=WordField.canonicalRows actualModulus 10128 (.band 10127 522) := by core033_kernel_decide
theorem stats10128 : actualRows10128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10128=5124 := by core033_kernel_decide
theorem rows10129 : actualRows10129=WordField.canonicalRows actualModulus 10129 (.bnot 9926) := by core033_kernel_decide
theorem stats10129 : actualRows10129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10129=6276 := by core033_kernel_decide
theorem rows10130 : actualRows10130=WordField.canonicalRows actualModulus 10130 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10130 : actualRows10130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10130=2892 := by core033_kernel_decide
theorem rows10131 : actualRows10131=WordField.canonicalRows actualModulus 10131 (.badd 10129 10130) := by core033_kernel_decide
theorem stats10131 : actualRows10131.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10131=5388 := by core033_kernel_decide
theorem rows10132 : actualRows10132=WordField.canonicalRows actualModulus 10132 (.bnot 10131) := by core033_kernel_decide
theorem stats10132 : actualRows10132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10132=6276 := by core033_kernel_decide
theorem rows10133 : actualRows10133=WordField.canonicalRows actualModulus 10133 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10133 : actualRows10133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10133=2820 := by core033_kernel_decide
theorem rows10134 : actualRows10134=WordField.canonicalRows actualModulus 10134 (.band 10132 10133) := by core033_kernel_decide
theorem stats10134 : actualRows10134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10134=5124 := by core033_kernel_decide
theorem rows10135 : actualRows10135=WordField.canonicalRows actualModulus 10135 (.bxor 10128 10134) := by core033_kernel_decide
theorem stats10135 : actualRows10135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10135=7428 := by core033_kernel_decide
theorem rows10136 : actualRows10136=WordField.canonicalRows actualModulus 10136 (.bnot 9926) := by core033_kernel_decide
theorem stats10136 : actualRows10136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10136=6276 := by core033_kernel_decide
theorem rows10137 : actualRows10137=WordField.canonicalRows actualModulus 10137 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10137 : actualRows10137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10137=2892 := by core033_kernel_decide
theorem rows10138 : actualRows10138=WordField.canonicalRows actualModulus 10138 (.badd 10136 10137) := by core033_kernel_decide
theorem stats10138 : actualRows10138.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10138=5388 := by core033_kernel_decide
theorem rows10139 : actualRows10139=WordField.canonicalRows actualModulus 10139 (.band 10138 35) := by core033_kernel_decide
theorem stats10139 : actualRows10139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10139=5124 := by core033_kernel_decide
theorem rows10140 : actualRows10140=WordField.canonicalRows actualModulus 10140 (.bnot 9926) := by core033_kernel_decide
theorem stats10140 : actualRows10140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10140=6276 := by core033_kernel_decide
theorem rows10141 : actualRows10141=WordField.canonicalRows actualModulus 10141 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10141 : actualRows10141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10141=2892 := by core033_kernel_decide
theorem rows10142 : actualRows10142=WordField.canonicalRows actualModulus 10142 (.badd 10140 10141) := by core033_kernel_decide
theorem stats10142 : actualRows10142.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10142=5388 := by core033_kernel_decide
theorem rows10143 : actualRows10143=WordField.canonicalRows actualModulus 10143 (.bnot 10142) := by core033_kernel_decide
theorem stats10143 : actualRows10143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10143=6276 := by core033_kernel_decide
def partRows156 : List R1CS.Row := actualRows10080++actualRows10081++actualRows10082++actualRows10083++actualRows10084++actualRows10085++actualRows10086++actualRows10087++actualRows10088++actualRows10089++actualRows10090++actualRows10091++actualRows10092++actualRows10093++actualRows10094++actualRows10095++actualRows10096++actualRows10097++actualRows10098++actualRows10099++actualRows10100++actualRows10101++actualRows10102++actualRows10103++actualRows10104++actualRows10105++actualRows10106++actualRows10107++actualRows10108++actualRows10109++actualRows10110++actualRows10111++actualRows10112++actualRows10113++actualRows10114++actualRows10115++actualRows10116++actualRows10117++actualRows10118++actualRows10119++actualRows10120++actualRows10121++actualRows10122++actualRows10123++actualRows10124++actualRows10125++actualRows10126++actualRows10127++actualRows10128++actualRows10129++actualRows10130++actualRows10131++actualRows10132++actualRows10133++actualRows10134++actualRows10135++actualRows10136++actualRows10137++actualRows10138++actualRows10139++actualRows10140++actualRows10141++actualRows10142++actualRows10143
def partOps156 : List WordIR.Op := [.bxor 10073 10079,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10081 10082,.band 10083 482,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10085 10086,.bnot 10087,.literal (BitVec.ofNat 32 0),.band 10088 10089,.bxor 10084 10090,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10092 10093,.band 10094 492,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10096 10097,.bnot 10098,.literal (BitVec.ofNat 32 0),.band 10099 10100,.bxor 10095 10101,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10103 10104,.band 10105 502,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10107 10108,.bnot 10109,.literal (BitVec.ofNat 32 0),.band 10110 10111,.bxor 10106 10112,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10114 10115,.band 10116 512,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10118 10119,.bnot 10120,.literal (BitVec.ofNat 32 0),.band 10121 10122,.bxor 10117 10123,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10125 10126,.band 10127 522,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10129 10130,.bnot 10131,.literal (BitVec.ofNat 32 0),.band 10132 10133,.bxor 10128 10134,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10136 10137,.band 10138 35,.bnot 9926,.literal (BitVec.ofNat 32 1),.badd 10140 10141,.bnot 10142]
theorem partExact156 : partRows156=WordField.rows actualModulus 10080 partOps156 := by
  simp only [partRows156,partOps156,WordField.rows,rows10080,rows10081,rows10082,rows10083,rows10084,rows10085,rows10086,rows10087,rows10088,rows10089,rows10090,rows10091,rows10092,rows10093,rows10094,rows10095,rows10096,rows10097,rows10098,rows10099,rows10100,rows10101,rows10102,rows10103,rows10104,rows10105,rows10106,rows10107,rows10108,rows10109,rows10110,rows10111,rows10112,rows10113,rows10114,rows10115,rows10116,rows10117,rows10118,rows10119,rows10120,rows10121,rows10122,rows10123,rows10124,rows10125,rows10126,rows10127,rows10128,rows10129,rows10130,rows10131,rows10132,rows10133,rows10134,rows10135,rows10136,rows10137,rows10138,rows10139,rows10140,rows10141,rows10142,rows10143,List.append_assoc,List.append_nil]
theorem partLength156 : partOps156.length=64 := by decide
theorem partStats156 : partRows156.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows156=327360 := by
  simp only [partRows156,List.length_append,MatrixRowBlocks.rows_weight_append,stats10080.1,stats10080.2,stats10081.1,stats10081.2,stats10082.1,stats10082.2,stats10083.1,stats10083.2,stats10084.1,stats10084.2,stats10085.1,stats10085.2,stats10086.1,stats10086.2,stats10087.1,stats10087.2,stats10088.1,stats10088.2,stats10089.1,stats10089.2,stats10090.1,stats10090.2,stats10091.1,stats10091.2,stats10092.1,stats10092.2,stats10093.1,stats10093.2,stats10094.1,stats10094.2,stats10095.1,stats10095.2,stats10096.1,stats10096.2,stats10097.1,stats10097.2,stats10098.1,stats10098.2,stats10099.1,stats10099.2,stats10100.1,stats10100.2,stats10101.1,stats10101.2,stats10102.1,stats10102.2,stats10103.1,stats10103.2,stats10104.1,stats10104.2,stats10105.1,stats10105.2,stats10106.1,stats10106.2,stats10107.1,stats10107.2,stats10108.1,stats10108.2,stats10109.1,stats10109.2,stats10110.1,stats10110.2,stats10111.1,stats10111.2,stats10112.1,stats10112.2,stats10113.1,stats10113.2,stats10114.1,stats10114.2,stats10115.1,stats10115.2,stats10116.1,stats10116.2,stats10117.1,stats10117.2,stats10118.1,stats10118.2,stats10119.1,stats10119.2,stats10120.1,stats10120.2,stats10121.1,stats10121.2,stats10122.1,stats10122.2,stats10123.1,stats10123.2,stats10124.1,stats10124.2,stats10125.1,stats10125.2,stats10126.1,stats10126.2,stats10127.1,stats10127.2,stats10128.1,stats10128.2,stats10129.1,stats10129.2,stats10130.1,stats10130.2,stats10131.1,stats10131.2,stats10132.1,stats10132.2,stats10133.1,stats10133.2,stats10134.1,stats10134.2,stats10135.1,stats10135.2,stats10136.1,stats10136.2,stats10137.1,stats10137.2,stats10138.1,stats10138.2,stats10139.1,stats10139.2,stats10140.1,stats10140.2,stats10141.1,stats10141.2,stats10142.1,stats10142.2,stats10143.1,stats10143.2]
  decide
end QuotedPairedPathRoundCheckedRows
