import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData188
import AuthenticatedBranchRoundInstructionMatrixData189
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12086 : actualRows12086=WordField.canonicalRows actualModulus 12086 (.bnot 12085) := by core033_kernel_decide
theorem stats12086 : actualRows12086.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12086=6276 := by core033_kernel_decide
theorem rows12087 : actualRows12087=WordField.canonicalRows actualModulus 12087 (.bxor 12084 12086) := by core033_kernel_decide
theorem stats12087 : actualRows12087.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12087=7428 := by core033_kernel_decide
theorem rows12088 : actualRows12088=WordField.canonicalRows actualModulus 12088 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12088 : actualRows12088.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12088=2964 := by core033_kernel_decide
theorem rows12089 : actualRows12089=WordField.canonicalRows actualModulus 12089 (.bxor 693 12088) := by core033_kernel_decide
theorem stats12089 : actualRows12089.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12089=7428 := by core033_kernel_decide
theorem rows12090 : actualRows12090=WordField.canonicalRows actualModulus 12090 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12090 : actualRows12090.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12090=2820 := by core033_kernel_decide
theorem rows12091 : actualRows12091=WordField.canonicalRows actualModulus 12091 (.bnot 12090) := by core033_kernel_decide
theorem stats12091 : actualRows12091.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12091=6276 := by core033_kernel_decide
theorem rows12092 : actualRows12092=WordField.canonicalRows actualModulus 12092 (.badd 12089 12091) := by core033_kernel_decide
theorem stats12092 : actualRows12092.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12092=5388 := by core033_kernel_decide
theorem rows12093 : actualRows12093=WordField.canonicalRows actualModulus 12093 (.bnot 12092) := by core033_kernel_decide
theorem stats12093 : actualRows12093.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12093=6276 := by core033_kernel_decide
theorem rows12094 : actualRows12094=WordField.canonicalRows actualModulus 12094 (.band 12087 12093) := by core033_kernel_decide
theorem stats12094 : actualRows12094.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12094=5124 := by core033_kernel_decide
theorem rows12095 : actualRows12095=WordField.canonicalRows actualModulus 12095 (.bxor 12082 12094) := by core033_kernel_decide
theorem stats12095 : actualRows12095.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12095=7428 := by core033_kernel_decide
theorem rows12096 : actualRows12096=WordField.canonicalRows actualModulus 12096 (.shr 12095 31) := by core033_kernel_decide
theorem stats12096 : actualRows12096.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12096=2892 := by core033_kernel_decide
theorem rows12097 : actualRows12097=WordField.canonicalRows actualModulus 12097 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12097 : actualRows12097.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12097=2892 := by core033_kernel_decide
theorem rows12098 : actualRows12098=WordField.canonicalRows actualModulus 12098 (.bxor 12096 12097) := by core033_kernel_decide
theorem stats12098 : actualRows12098.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12098=7428 := by core033_kernel_decide
theorem rows12099 : actualRows12099=WordField.canonicalRows actualModulus 12099 (.bnot 12098) := by core033_kernel_decide
theorem stats12099 : actualRows12099.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12099=6276 := by core033_kernel_decide
theorem rows12100 : actualRows12100=WordField.canonicalRows actualModulus 12100 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12100 : actualRows12100.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12100=2892 := by core033_kernel_decide
theorem rows12101 : actualRows12101=WordField.canonicalRows actualModulus 12101 (.badd 12099 12100) := by core033_kernel_decide
theorem stats12101 : actualRows12101.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12101=5388 := by core033_kernel_decide
theorem rows12102 : actualRows12102=WordField.canonicalRows actualModulus 12102 (.bnot 12101) := by core033_kernel_decide
theorem stats12102 : actualRows12102.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12102=6276 := by core033_kernel_decide
theorem rows12103 : actualRows12103=WordField.canonicalRows actualModulus 12103 (.band 12102 1431) := by core033_kernel_decide
theorem stats12103 : actualRows12103.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12103=5124 := by core033_kernel_decide
theorem rows12104 : actualRows12104=WordField.canonicalRows actualModulus 12104 (.bxor 12077 12103) := by core033_kernel_decide
theorem stats12104 : actualRows12104.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12104=7428 := by core033_kernel_decide
theorem rows12105 : actualRows12105=WordField.canonicalRows actualModulus 12105 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12105 : actualRows12105.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12105=2964 := by core033_kernel_decide
theorem rows12106 : actualRows12106=WordField.canonicalRows actualModulus 12106 (.bxor 693 12105) := by core033_kernel_decide
theorem stats12106 : actualRows12106.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12106=7428 := by core033_kernel_decide
theorem rows12107 : actualRows12107=WordField.canonicalRows actualModulus 12107 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12107 : actualRows12107.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12107=2820 := by core033_kernel_decide
theorem rows12108 : actualRows12108=WordField.canonicalRows actualModulus 12108 (.bnot 12107) := by core033_kernel_decide
theorem stats12108 : actualRows12108.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12108=6276 := by core033_kernel_decide
theorem rows12109 : actualRows12109=WordField.canonicalRows actualModulus 12109 (.band 12106 12108) := by core033_kernel_decide
theorem stats12109 : actualRows12109.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12109=5124 := by core033_kernel_decide
theorem rows12110 : actualRows12110=WordField.canonicalRows actualModulus 12110 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12110 : actualRows12110.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12110=2964 := by core033_kernel_decide
theorem rows12111 : actualRows12111=WordField.canonicalRows actualModulus 12111 (.bxor 693 12110) := by core033_kernel_decide
theorem stats12111 : actualRows12111.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12111=7428 := by core033_kernel_decide
theorem rows12112 : actualRows12112=WordField.canonicalRows actualModulus 12112 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12112 : actualRows12112.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12112=2820 := by core033_kernel_decide
theorem rows12113 : actualRows12113=WordField.canonicalRows actualModulus 12113 (.bnot 12112) := by core033_kernel_decide
theorem stats12113 : actualRows12113.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12113=6276 := by core033_kernel_decide
theorem rows12114 : actualRows12114=WordField.canonicalRows actualModulus 12114 (.bxor 12111 12113) := by core033_kernel_decide
theorem stats12114 : actualRows12114.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12114=7428 := by core033_kernel_decide
theorem rows12115 : actualRows12115=WordField.canonicalRows actualModulus 12115 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12115 : actualRows12115.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12115=2964 := by core033_kernel_decide
theorem rows12116 : actualRows12116=WordField.canonicalRows actualModulus 12116 (.bxor 693 12115) := by core033_kernel_decide
theorem stats12116 : actualRows12116.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12116=7428 := by core033_kernel_decide
theorem rows12117 : actualRows12117=WordField.canonicalRows actualModulus 12117 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12117 : actualRows12117.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12117=2820 := by core033_kernel_decide
theorem rows12118 : actualRows12118=WordField.canonicalRows actualModulus 12118 (.bnot 12117) := by core033_kernel_decide
theorem stats12118 : actualRows12118.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12118=6276 := by core033_kernel_decide
theorem rows12119 : actualRows12119=WordField.canonicalRows actualModulus 12119 (.badd 12116 12118) := by core033_kernel_decide
theorem stats12119 : actualRows12119.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12119=5388 := by core033_kernel_decide
theorem rows12120 : actualRows12120=WordField.canonicalRows actualModulus 12120 (.bnot 12119) := by core033_kernel_decide
theorem stats12120 : actualRows12120.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12120=6276 := by core033_kernel_decide
theorem rows12121 : actualRows12121=WordField.canonicalRows actualModulus 12121 (.band 12114 12120) := by core033_kernel_decide
theorem stats12121 : actualRows12121.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12121=5124 := by core033_kernel_decide
theorem rows12122 : actualRows12122=WordField.canonicalRows actualModulus 12122 (.bxor 12109 12121) := by core033_kernel_decide
theorem stats12122 : actualRows12122.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12122=7428 := by core033_kernel_decide
theorem rows12123 : actualRows12123=WordField.canonicalRows actualModulus 12123 (.shr 12122 31) := by core033_kernel_decide
theorem stats12123 : actualRows12123.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12123=2892 := by core033_kernel_decide
theorem rows12124 : actualRows12124=WordField.canonicalRows actualModulus 12124 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12124 : actualRows12124.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12124=2892 := by core033_kernel_decide
theorem rows12125 : actualRows12125=WordField.canonicalRows actualModulus 12125 (.bxor 12123 12124) := by core033_kernel_decide
theorem stats12125 : actualRows12125.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12125=7428 := by core033_kernel_decide
theorem rows12126 : actualRows12126=WordField.canonicalRows actualModulus 12126 (.bnot 12125) := by core033_kernel_decide
theorem stats12126 : actualRows12126.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12126=6276 := by core033_kernel_decide
theorem rows12127 : actualRows12127=WordField.canonicalRows actualModulus 12127 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12127 : actualRows12127.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12127=2892 := by core033_kernel_decide
theorem rows12128 : actualRows12128=WordField.canonicalRows actualModulus 12128 (.badd 12126 12127) := by core033_kernel_decide
theorem stats12128 : actualRows12128.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12128=5388 := by core033_kernel_decide
theorem rows12129 : actualRows12129=WordField.canonicalRows actualModulus 12129 (.band 12128 11103) := by core033_kernel_decide
theorem stats12129 : actualRows12129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12129=5124 := by core033_kernel_decide
theorem rows12130 : actualRows12130=WordField.canonicalRows actualModulus 12130 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12130 : actualRows12130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12130=2964 := by core033_kernel_decide
theorem rows12131 : actualRows12131=WordField.canonicalRows actualModulus 12131 (.bxor 693 12130) := by core033_kernel_decide
theorem stats12131 : actualRows12131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12131=7428 := by core033_kernel_decide
theorem rows12132 : actualRows12132=WordField.canonicalRows actualModulus 12132 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12132 : actualRows12132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12132=2820 := by core033_kernel_decide
theorem rows12133 : actualRows12133=WordField.canonicalRows actualModulus 12133 (.bnot 12132) := by core033_kernel_decide
theorem stats12133 : actualRows12133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12133=6276 := by core033_kernel_decide
theorem rows12134 : actualRows12134=WordField.canonicalRows actualModulus 12134 (.band 12131 12133) := by core033_kernel_decide
theorem stats12134 : actualRows12134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12134=5124 := by core033_kernel_decide
theorem rows12135 : actualRows12135=WordField.canonicalRows actualModulus 12135 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12135 : actualRows12135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12135=2964 := by core033_kernel_decide
theorem rows12136 : actualRows12136=WordField.canonicalRows actualModulus 12136 (.bxor 693 12135) := by core033_kernel_decide
theorem stats12136 : actualRows12136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12136=7428 := by core033_kernel_decide
theorem rows12137 : actualRows12137=WordField.canonicalRows actualModulus 12137 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12137 : actualRows12137.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12137=2820 := by core033_kernel_decide
theorem rows12138 : actualRows12138=WordField.canonicalRows actualModulus 12138 (.bnot 12137) := by core033_kernel_decide
theorem stats12138 : actualRows12138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12138=6276 := by core033_kernel_decide
theorem rows12139 : actualRows12139=WordField.canonicalRows actualModulus 12139 (.bxor 12136 12138) := by core033_kernel_decide
theorem stats12139 : actualRows12139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12139=7428 := by core033_kernel_decide
theorem rows12140 : actualRows12140=WordField.canonicalRows actualModulus 12140 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12140 : actualRows12140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12140=2964 := by core033_kernel_decide
theorem rows12141 : actualRows12141=WordField.canonicalRows actualModulus 12141 (.bxor 693 12140) := by core033_kernel_decide
theorem stats12141 : actualRows12141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12141=7428 := by core033_kernel_decide
theorem rows12142 : actualRows12142=WordField.canonicalRows actualModulus 12142 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12142 : actualRows12142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12142=2820 := by core033_kernel_decide
theorem rows12143 : actualRows12143=WordField.canonicalRows actualModulus 12143 (.bnot 12142) := by core033_kernel_decide
theorem stats12143 : actualRows12143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12143=6276 := by core033_kernel_decide
theorem rows12144 : actualRows12144=WordField.canonicalRows actualModulus 12144 (.badd 12141 12143) := by core033_kernel_decide
theorem stats12144 : actualRows12144.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12144=5388 := by core033_kernel_decide
theorem rows12145 : actualRows12145=WordField.canonicalRows actualModulus 12145 (.bnot 12144) := by core033_kernel_decide
theorem stats12145 : actualRows12145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12145=6276 := by core033_kernel_decide
theorem rows12146 : actualRows12146=WordField.canonicalRows actualModulus 12146 (.band 12139 12145) := by core033_kernel_decide
theorem stats12146 : actualRows12146.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12146=5124 := by core033_kernel_decide
theorem rows12147 : actualRows12147=WordField.canonicalRows actualModulus 12147 (.bxor 12134 12146) := by core033_kernel_decide
theorem stats12147 : actualRows12147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12147=7428 := by core033_kernel_decide
theorem rows12148 : actualRows12148=WordField.canonicalRows actualModulus 12148 (.shr 12147 31) := by core033_kernel_decide
theorem stats12148 : actualRows12148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12148=2892 := by core033_kernel_decide
theorem rows12149 : actualRows12149=WordField.canonicalRows actualModulus 12149 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12149 : actualRows12149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12149=2892 := by core033_kernel_decide
def partRows187 : List R1CS.Row := actualRows12086++actualRows12087++actualRows12088++actualRows12089++actualRows12090++actualRows12091++actualRows12092++actualRows12093++actualRows12094++actualRows12095++actualRows12096++actualRows12097++actualRows12098++actualRows12099++actualRows12100++actualRows12101++actualRows12102++actualRows12103++actualRows12104++actualRows12105++actualRows12106++actualRows12107++actualRows12108++actualRows12109++actualRows12110++actualRows12111++actualRows12112++actualRows12113++actualRows12114++actualRows12115++actualRows12116++actualRows12117++actualRows12118++actualRows12119++actualRows12120++actualRows12121++actualRows12122++actualRows12123++actualRows12124++actualRows12125++actualRows12126++actualRows12127++actualRows12128++actualRows12129++actualRows12130++actualRows12131++actualRows12132++actualRows12133++actualRows12134++actualRows12135++actualRows12136++actualRows12137++actualRows12138++actualRows12139++actualRows12140++actualRows12141++actualRows12142++actualRows12143++actualRows12144++actualRows12145++actualRows12146++actualRows12147++actualRows12148++actualRows12149
def partOps187 : List WordIR.Op := [.bnot 12085,.bxor 12084 12086,.literal (BitVec.ofNat 32 3),.bxor 693 12088,.literal (BitVec.ofNat 32 0),.bnot 12090,.badd 12089 12091,.bnot 12092,.band 12087 12093,.bxor 12082 12094,.shr 12095 31,.literal (BitVec.ofNat 32 1),.bxor 12096 12097,.bnot 12098,.literal (BitVec.ofNat 32 1),.badd 12099 12100,.bnot 12101,.band 12102 1431,.bxor 12077 12103,.literal (BitVec.ofNat 32 3),.bxor 693 12105,.literal (BitVec.ofNat 32 0),.bnot 12107,.band 12106 12108,.literal (BitVec.ofNat 32 3),.bxor 693 12110,.literal (BitVec.ofNat 32 0),.bnot 12112,.bxor 12111 12113,.literal (BitVec.ofNat 32 3),.bxor 693 12115,.literal (BitVec.ofNat 32 0),.bnot 12117,.badd 12116 12118,.bnot 12119,.band 12114 12120,.bxor 12109 12121,.shr 12122 31,.literal (BitVec.ofNat 32 1),.bxor 12123 12124,.bnot 12125,.literal (BitVec.ofNat 32 1),.badd 12126 12127,.band 12128 11103,.literal (BitVec.ofNat 32 3),.bxor 693 12130,.literal (BitVec.ofNat 32 0),.bnot 12132,.band 12131 12133,.literal (BitVec.ofNat 32 3),.bxor 693 12135,.literal (BitVec.ofNat 32 0),.bnot 12137,.bxor 12136 12138,.literal (BitVec.ofNat 32 3),.bxor 693 12140,.literal (BitVec.ofNat 32 0),.bnot 12142,.badd 12141 12143,.bnot 12144,.band 12139 12145,.bxor 12134 12146,.shr 12147 31,.literal (BitVec.ofNat 32 1)]
theorem partExact187 : partRows187=WordField.rows actualModulus 12086 partOps187 := by
  simp only [partRows187,partOps187,WordField.rows,rows12086,rows12087,rows12088,rows12089,rows12090,rows12091,rows12092,rows12093,rows12094,rows12095,rows12096,rows12097,rows12098,rows12099,rows12100,rows12101,rows12102,rows12103,rows12104,rows12105,rows12106,rows12107,rows12108,rows12109,rows12110,rows12111,rows12112,rows12113,rows12114,rows12115,rows12116,rows12117,rows12118,rows12119,rows12120,rows12121,rows12122,rows12123,rows12124,rows12125,rows12126,rows12127,rows12128,rows12129,rows12130,rows12131,rows12132,rows12133,rows12134,rows12135,rows12136,rows12137,rows12138,rows12139,rows12140,rows12141,rows12142,rows12143,rows12144,rows12145,rows12146,rows12147,rows12148,rows12149,List.append_assoc,List.append_nil]
theorem partLength187 : partOps187.length=64 := by decide
theorem partStats187 : partRows187.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows187=333144 := by
  simp only [partRows187,List.length_append,MatrixRowBlocks.rows_weight_append,stats12086.1,stats12086.2,stats12087.1,stats12087.2,stats12088.1,stats12088.2,stats12089.1,stats12089.2,stats12090.1,stats12090.2,stats12091.1,stats12091.2,stats12092.1,stats12092.2,stats12093.1,stats12093.2,stats12094.1,stats12094.2,stats12095.1,stats12095.2,stats12096.1,stats12096.2,stats12097.1,stats12097.2,stats12098.1,stats12098.2,stats12099.1,stats12099.2,stats12100.1,stats12100.2,stats12101.1,stats12101.2,stats12102.1,stats12102.2,stats12103.1,stats12103.2,stats12104.1,stats12104.2,stats12105.1,stats12105.2,stats12106.1,stats12106.2,stats12107.1,stats12107.2,stats12108.1,stats12108.2,stats12109.1,stats12109.2,stats12110.1,stats12110.2,stats12111.1,stats12111.2,stats12112.1,stats12112.2,stats12113.1,stats12113.2,stats12114.1,stats12114.2,stats12115.1,stats12115.2,stats12116.1,stats12116.2,stats12117.1,stats12117.2,stats12118.1,stats12118.2,stats12119.1,stats12119.2,stats12120.1,stats12120.2,stats12121.1,stats12121.2,stats12122.1,stats12122.2,stats12123.1,stats12123.2,stats12124.1,stats12124.2,stats12125.1,stats12125.2,stats12126.1,stats12126.2,stats12127.1,stats12127.2,stats12128.1,stats12128.2,stats12129.1,stats12129.2,stats12130.1,stats12130.2,stats12131.1,stats12131.2,stats12132.1,stats12132.2,stats12133.1,stats12133.2,stats12134.1,stats12134.2,stats12135.1,stats12135.2,stats12136.1,stats12136.2,stats12137.1,stats12137.2,stats12138.1,stats12138.2,stats12139.1,stats12139.2,stats12140.1,stats12140.2,stats12141.1,stats12141.2,stats12142.1,stats12142.2,stats12143.1,stats12143.2,stats12144.1,stats12144.2,stats12145.1,stats12145.2,stats12146.1,stats12146.2,stats12147.1,stats12147.2,stats12148.1,stats12148.2,stats12149.1,stats12149.2]
  decide
end AuthenticatedBranchRoundCheckedRows
