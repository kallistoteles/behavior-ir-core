import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData157
import PathRoundDispatchInstructionMatrixData158
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10091 : actualRows10091=WordField.canonicalRows actualModulus 10091 (.shr 9769 1) := by core033_kernel_decide
theorem stats10091 : actualRows10091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10091=5052 := by core033_kernel_decide
theorem rows10092 : actualRows10092=WordField.canonicalRows actualModulus 10092 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10092 : actualRows10092.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10092=2820 := by core033_kernel_decide
theorem rows10093 : actualRows10093=WordField.canonicalRows actualModulus 10093 (.bnot 10092) := by core033_kernel_decide
theorem stats10093 : actualRows10093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10093=6276 := by core033_kernel_decide
theorem rows10094 : actualRows10094=WordField.canonicalRows actualModulus 10094 (.band 10091 10093) := by core033_kernel_decide
theorem stats10094 : actualRows10094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10094=5124 := by core033_kernel_decide
theorem rows10095 : actualRows10095=WordField.canonicalRows actualModulus 10095 (.shr 9769 1) := by core033_kernel_decide
theorem stats10095 : actualRows10095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10095=5052 := by core033_kernel_decide
theorem rows10096 : actualRows10096=WordField.canonicalRows actualModulus 10096 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10096 : actualRows10096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10096=2820 := by core033_kernel_decide
theorem rows10097 : actualRows10097=WordField.canonicalRows actualModulus 10097 (.bnot 10096) := by core033_kernel_decide
theorem stats10097 : actualRows10097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10097=6276 := by core033_kernel_decide
theorem rows10098 : actualRows10098=WordField.canonicalRows actualModulus 10098 (.bxor 10095 10097) := by core033_kernel_decide
theorem stats10098 : actualRows10098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10098=7428 := by core033_kernel_decide
theorem rows10099 : actualRows10099=WordField.canonicalRows actualModulus 10099 (.shr 9769 1) := by core033_kernel_decide
theorem stats10099 : actualRows10099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10099=5052 := by core033_kernel_decide
theorem rows10100 : actualRows10100=WordField.canonicalRows actualModulus 10100 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10100 : actualRows10100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10100=2820 := by core033_kernel_decide
theorem rows10101 : actualRows10101=WordField.canonicalRows actualModulus 10101 (.bnot 10100) := by core033_kernel_decide
theorem stats10101 : actualRows10101.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10101=6276 := by core033_kernel_decide
theorem rows10102 : actualRows10102=WordField.canonicalRows actualModulus 10102 (.badd 10099 10101) := by core033_kernel_decide
theorem stats10102 : actualRows10102.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10102=5388 := by core033_kernel_decide
theorem rows10103 : actualRows10103=WordField.canonicalRows actualModulus 10103 (.bnot 10102) := by core033_kernel_decide
theorem stats10103 : actualRows10103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10103=6276 := by core033_kernel_decide
theorem rows10104 : actualRows10104=WordField.canonicalRows actualModulus 10104 (.band 10098 10103) := by core033_kernel_decide
theorem stats10104 : actualRows10104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10104=5124 := by core033_kernel_decide
theorem rows10105 : actualRows10105=WordField.canonicalRows actualModulus 10105 (.bxor 10094 10104) := by core033_kernel_decide
theorem stats10105 : actualRows10105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10105=7428 := by core033_kernel_decide
theorem rows10106 : actualRows10106=WordField.canonicalRows actualModulus 10106 (.shr 10105 31) := by core033_kernel_decide
theorem stats10106 : actualRows10106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10106=2892 := by core033_kernel_decide
theorem rows10107 : actualRows10107=WordField.canonicalRows actualModulus 10107 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10107 : actualRows10107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10107=2892 := by core033_kernel_decide
theorem rows10108 : actualRows10108=WordField.canonicalRows actualModulus 10108 (.bxor 10106 10107) := by core033_kernel_decide
theorem stats10108 : actualRows10108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10108=7428 := by core033_kernel_decide
theorem rows10109 : actualRows10109=WordField.canonicalRows actualModulus 10109 (.shr 9780 1) := by core033_kernel_decide
theorem stats10109 : actualRows10109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10109=5052 := by core033_kernel_decide
theorem rows10110 : actualRows10110=WordField.canonicalRows actualModulus 10110 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10110 : actualRows10110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10110=2820 := by core033_kernel_decide
theorem rows10111 : actualRows10111=WordField.canonicalRows actualModulus 10111 (.bnot 10110) := by core033_kernel_decide
theorem stats10111 : actualRows10111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10111=6276 := by core033_kernel_decide
theorem rows10112 : actualRows10112=WordField.canonicalRows actualModulus 10112 (.band 10109 10111) := by core033_kernel_decide
theorem stats10112 : actualRows10112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10112=5124 := by core033_kernel_decide
theorem rows10113 : actualRows10113=WordField.canonicalRows actualModulus 10113 (.shr 9780 1) := by core033_kernel_decide
theorem stats10113 : actualRows10113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10113=5052 := by core033_kernel_decide
theorem rows10114 : actualRows10114=WordField.canonicalRows actualModulus 10114 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10114 : actualRows10114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10114=2820 := by core033_kernel_decide
theorem rows10115 : actualRows10115=WordField.canonicalRows actualModulus 10115 (.bnot 10114) := by core033_kernel_decide
theorem stats10115 : actualRows10115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10115=6276 := by core033_kernel_decide
theorem rows10116 : actualRows10116=WordField.canonicalRows actualModulus 10116 (.bxor 10113 10115) := by core033_kernel_decide
theorem stats10116 : actualRows10116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10116=7428 := by core033_kernel_decide
theorem rows10117 : actualRows10117=WordField.canonicalRows actualModulus 10117 (.shr 9780 1) := by core033_kernel_decide
theorem stats10117 : actualRows10117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10117=5052 := by core033_kernel_decide
theorem rows10118 : actualRows10118=WordField.canonicalRows actualModulus 10118 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10118 : actualRows10118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10118=2820 := by core033_kernel_decide
theorem rows10119 : actualRows10119=WordField.canonicalRows actualModulus 10119 (.bnot 10118) := by core033_kernel_decide
theorem stats10119 : actualRows10119.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10119=6276 := by core033_kernel_decide
theorem rows10120 : actualRows10120=WordField.canonicalRows actualModulus 10120 (.badd 10117 10119) := by core033_kernel_decide
theorem stats10120 : actualRows10120.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10120=5388 := by core033_kernel_decide
theorem rows10121 : actualRows10121=WordField.canonicalRows actualModulus 10121 (.bnot 10120) := by core033_kernel_decide
theorem stats10121 : actualRows10121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10121=6276 := by core033_kernel_decide
theorem rows10122 : actualRows10122=WordField.canonicalRows actualModulus 10122 (.band 10116 10121) := by core033_kernel_decide
theorem stats10122 : actualRows10122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10122=5124 := by core033_kernel_decide
theorem rows10123 : actualRows10123=WordField.canonicalRows actualModulus 10123 (.bxor 10112 10122) := by core033_kernel_decide
theorem stats10123 : actualRows10123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10123=7428 := by core033_kernel_decide
theorem rows10124 : actualRows10124=WordField.canonicalRows actualModulus 10124 (.shr 10123 31) := by core033_kernel_decide
theorem stats10124 : actualRows10124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10124=2892 := by core033_kernel_decide
theorem rows10125 : actualRows10125=WordField.canonicalRows actualModulus 10125 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10125 : actualRows10125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10125=2892 := by core033_kernel_decide
theorem rows10126 : actualRows10126=WordField.canonicalRows actualModulus 10126 (.bxor 10124 10125) := by core033_kernel_decide
theorem stats10126 : actualRows10126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10126=7428 := by core033_kernel_decide
theorem rows10127 : actualRows10127=WordField.canonicalRows actualModulus 10127 (.shr 9791 1) := by core033_kernel_decide
theorem stats10127 : actualRows10127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10127=5052 := by core033_kernel_decide
theorem rows10128 : actualRows10128=WordField.canonicalRows actualModulus 10128 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10128 : actualRows10128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10128=2820 := by core033_kernel_decide
theorem rows10129 : actualRows10129=WordField.canonicalRows actualModulus 10129 (.bnot 10128) := by core033_kernel_decide
theorem stats10129 : actualRows10129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10129=6276 := by core033_kernel_decide
theorem rows10130 : actualRows10130=WordField.canonicalRows actualModulus 10130 (.band 10127 10129) := by core033_kernel_decide
theorem stats10130 : actualRows10130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10130=5124 := by core033_kernel_decide
theorem rows10131 : actualRows10131=WordField.canonicalRows actualModulus 10131 (.shr 9791 1) := by core033_kernel_decide
theorem stats10131 : actualRows10131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10131=5052 := by core033_kernel_decide
theorem rows10132 : actualRows10132=WordField.canonicalRows actualModulus 10132 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10132 : actualRows10132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10132=2820 := by core033_kernel_decide
theorem rows10133 : actualRows10133=WordField.canonicalRows actualModulus 10133 (.bnot 10132) := by core033_kernel_decide
theorem stats10133 : actualRows10133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10133=6276 := by core033_kernel_decide
theorem rows10134 : actualRows10134=WordField.canonicalRows actualModulus 10134 (.bxor 10131 10133) := by core033_kernel_decide
theorem stats10134 : actualRows10134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10134=7428 := by core033_kernel_decide
theorem rows10135 : actualRows10135=WordField.canonicalRows actualModulus 10135 (.shr 9791 1) := by core033_kernel_decide
theorem stats10135 : actualRows10135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10135=5052 := by core033_kernel_decide
theorem rows10136 : actualRows10136=WordField.canonicalRows actualModulus 10136 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10136 : actualRows10136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10136=2820 := by core033_kernel_decide
theorem rows10137 : actualRows10137=WordField.canonicalRows actualModulus 10137 (.bnot 10136) := by core033_kernel_decide
theorem stats10137 : actualRows10137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10137=6276 := by core033_kernel_decide
theorem rows10138 : actualRows10138=WordField.canonicalRows actualModulus 10138 (.badd 10135 10137) := by core033_kernel_decide
theorem stats10138 : actualRows10138.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10138=5388 := by core033_kernel_decide
theorem rows10139 : actualRows10139=WordField.canonicalRows actualModulus 10139 (.bnot 10138) := by core033_kernel_decide
theorem stats10139 : actualRows10139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10139=6276 := by core033_kernel_decide
theorem rows10140 : actualRows10140=WordField.canonicalRows actualModulus 10140 (.band 10134 10139) := by core033_kernel_decide
theorem stats10140 : actualRows10140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10140=5124 := by core033_kernel_decide
theorem rows10141 : actualRows10141=WordField.canonicalRows actualModulus 10141 (.bxor 10130 10140) := by core033_kernel_decide
theorem stats10141 : actualRows10141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10141=7428 := by core033_kernel_decide
theorem rows10142 : actualRows10142=WordField.canonicalRows actualModulus 10142 (.shr 10141 31) := by core033_kernel_decide
theorem stats10142 : actualRows10142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10142=2892 := by core033_kernel_decide
theorem rows10143 : actualRows10143=WordField.canonicalRows actualModulus 10143 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10143 : actualRows10143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10143=2892 := by core033_kernel_decide
theorem rows10144 : actualRows10144=WordField.canonicalRows actualModulus 10144 (.bxor 10142 10143) := by core033_kernel_decide
theorem stats10144 : actualRows10144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10144=7428 := by core033_kernel_decide
theorem rows10145 : actualRows10145=WordField.canonicalRows actualModulus 10145 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10145 : actualRows10145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10145=2892 := by core033_kernel_decide
theorem rows10146 : actualRows10146=WordField.canonicalRows actualModulus 10146 (.badd 9439 10145) := by core033_kernel_decide
theorem stats10146 : actualRows10146.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10146=5388 := by core033_kernel_decide
theorem rows10147 : actualRows10147=WordField.canonicalRows actualModulus 10147 (.bnot 9439) := by core033_kernel_decide
theorem stats10147 : actualRows10147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10147=6276 := by core033_kernel_decide
theorem rows10148 : actualRows10148=WordField.canonicalRows actualModulus 10148 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats10148 : actualRows10148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10148=3396 := by core033_kernel_decide
theorem rows10149 : actualRows10149=WordField.canonicalRows actualModulus 10149 (.band 10147 10148) := by core033_kernel_decide
theorem stats10149 : actualRows10149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10149=5124 := by core033_kernel_decide
theorem rows10150 : actualRows10150=WordField.canonicalRows actualModulus 10150 (.shr 9439 8) := by core033_kernel_decide
theorem stats10150 : actualRows10150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10150=4548 := by core033_kernel_decide
theorem rows10151 : actualRows10151=WordField.canonicalRows actualModulus 10151 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10151 : actualRows10151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10151=2820 := by core033_kernel_decide
theorem rows10152 : actualRows10152=WordField.canonicalRows actualModulus 10152 (.bnot 10151) := by core033_kernel_decide
theorem stats10152 : actualRows10152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10152=6276 := by core033_kernel_decide
theorem rows10153 : actualRows10153=WordField.canonicalRows actualModulus 10153 (.band 10150 10152) := by core033_kernel_decide
theorem stats10153 : actualRows10153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10153=5124 := by core033_kernel_decide
theorem rows10154 : actualRows10154=WordField.canonicalRows actualModulus 10154 (.shr 9439 8) := by core033_kernel_decide
theorem stats10154 : actualRows10154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10154=4548 := by core033_kernel_decide
def partRows157 : List R1CS.Row := actualRows10091++actualRows10092++actualRows10093++actualRows10094++actualRows10095++actualRows10096++actualRows10097++actualRows10098++actualRows10099++actualRows10100++actualRows10101++actualRows10102++actualRows10103++actualRows10104++actualRows10105++actualRows10106++actualRows10107++actualRows10108++actualRows10109++actualRows10110++actualRows10111++actualRows10112++actualRows10113++actualRows10114++actualRows10115++actualRows10116++actualRows10117++actualRows10118++actualRows10119++actualRows10120++actualRows10121++actualRows10122++actualRows10123++actualRows10124++actualRows10125++actualRows10126++actualRows10127++actualRows10128++actualRows10129++actualRows10130++actualRows10131++actualRows10132++actualRows10133++actualRows10134++actualRows10135++actualRows10136++actualRows10137++actualRows10138++actualRows10139++actualRows10140++actualRows10141++actualRows10142++actualRows10143++actualRows10144++actualRows10145++actualRows10146++actualRows10147++actualRows10148++actualRows10149++actualRows10150++actualRows10151++actualRows10152++actualRows10153++actualRows10154
def partOps157 : List WordIR.Op := [.shr 9769 1,.literal (BitVec.ofNat 32 0),.bnot 10092,.band 10091 10093,.shr 9769 1,.literal (BitVec.ofNat 32 0),.bnot 10096,.bxor 10095 10097,.shr 9769 1,.literal (BitVec.ofNat 32 0),.bnot 10100,.badd 10099 10101,.bnot 10102,.band 10098 10103,.bxor 10094 10104,.shr 10105 31,.literal (BitVec.ofNat 32 1),.bxor 10106 10107,.shr 9780 1,.literal (BitVec.ofNat 32 0),.bnot 10110,.band 10109 10111,.shr 9780 1,.literal (BitVec.ofNat 32 0),.bnot 10114,.bxor 10113 10115,.shr 9780 1,.literal (BitVec.ofNat 32 0),.bnot 10118,.badd 10117 10119,.bnot 10120,.band 10116 10121,.bxor 10112 10122,.shr 10123 31,.literal (BitVec.ofNat 32 1),.bxor 10124 10125,.shr 9791 1,.literal (BitVec.ofNat 32 0),.bnot 10128,.band 10127 10129,.shr 9791 1,.literal (BitVec.ofNat 32 0),.bnot 10132,.bxor 10131 10133,.shr 9791 1,.literal (BitVec.ofNat 32 0),.bnot 10136,.badd 10135 10137,.bnot 10138,.band 10134 10139,.bxor 10130 10140,.shr 10141 31,.literal (BitVec.ofNat 32 1),.bxor 10142 10143,.literal (BitVec.ofNat 32 1),.badd 9439 10145,.bnot 9439,.literal (BitVec.ofNat 32 255),.band 10147 10148,.shr 9439 8,.literal (BitVec.ofNat 32 0),.bnot 10151,.band 10150 10152,.shr 9439 8]
theorem partExact157 : partRows157=WordField.rows actualModulus 10091 partOps157 := by
  simp only [partRows157,partOps157,WordField.rows,rows10091,rows10092,rows10093,rows10094,rows10095,rows10096,rows10097,rows10098,rows10099,rows10100,rows10101,rows10102,rows10103,rows10104,rows10105,rows10106,rows10107,rows10108,rows10109,rows10110,rows10111,rows10112,rows10113,rows10114,rows10115,rows10116,rows10117,rows10118,rows10119,rows10120,rows10121,rows10122,rows10123,rows10124,rows10125,rows10126,rows10127,rows10128,rows10129,rows10130,rows10131,rows10132,rows10133,rows10134,rows10135,rows10136,rows10137,rows10138,rows10139,rows10140,rows10141,rows10142,rows10143,rows10144,rows10145,rows10146,rows10147,rows10148,rows10149,rows10150,rows10151,rows10152,rows10153,rows10154,List.append_assoc,List.append_nil]
theorem partLength157 : partOps157.length=64 := by decide
theorem partStats157 : partRows157.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows157=323664 := by
  simp only [partRows157,List.length_append,MatrixRowBlocks.rows_weight_append,stats10091.1,stats10091.2,stats10092.1,stats10092.2,stats10093.1,stats10093.2,stats10094.1,stats10094.2,stats10095.1,stats10095.2,stats10096.1,stats10096.2,stats10097.1,stats10097.2,stats10098.1,stats10098.2,stats10099.1,stats10099.2,stats10100.1,stats10100.2,stats10101.1,stats10101.2,stats10102.1,stats10102.2,stats10103.1,stats10103.2,stats10104.1,stats10104.2,stats10105.1,stats10105.2,stats10106.1,stats10106.2,stats10107.1,stats10107.2,stats10108.1,stats10108.2,stats10109.1,stats10109.2,stats10110.1,stats10110.2,stats10111.1,stats10111.2,stats10112.1,stats10112.2,stats10113.1,stats10113.2,stats10114.1,stats10114.2,stats10115.1,stats10115.2,stats10116.1,stats10116.2,stats10117.1,stats10117.2,stats10118.1,stats10118.2,stats10119.1,stats10119.2,stats10120.1,stats10120.2,stats10121.1,stats10121.2,stats10122.1,stats10122.2,stats10123.1,stats10123.2,stats10124.1,stats10124.2,stats10125.1,stats10125.2,stats10126.1,stats10126.2,stats10127.1,stats10127.2,stats10128.1,stats10128.2,stats10129.1,stats10129.2,stats10130.1,stats10130.2,stats10131.1,stats10131.2,stats10132.1,stats10132.2,stats10133.1,stats10133.2,stats10134.1,stats10134.2,stats10135.1,stats10135.2,stats10136.1,stats10136.2,stats10137.1,stats10137.2,stats10138.1,stats10138.2,stats10139.1,stats10139.2,stats10140.1,stats10140.2,stats10141.1,stats10141.2,stats10142.1,stats10142.2,stats10143.1,stats10143.2,stats10144.1,stats10144.2,stats10145.1,stats10145.2,stats10146.1,stats10146.2,stats10147.1,stats10147.2,stats10148.1,stats10148.2,stats10149.1,stats10149.2,stats10150.1,stats10150.2,stats10151.1,stats10151.2,stats10152.1,stats10152.2,stats10153.1,stats10153.2,stats10154.1,stats10154.2]
  decide
end PathRoundDispatchCheckedRows
