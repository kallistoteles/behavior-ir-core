import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData189
import PairedPathRoundInstructionMatrixData190
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12128 : actualRows12128=WordField.canonicalRows actualModulus 12128 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12128 : actualRows12128.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12128=2964 := by core033_kernel_decide
theorem rows12129 : actualRows12129=WordField.canonicalRows actualModulus 12129 (.bxor 442 12128) := by core033_kernel_decide
theorem stats12129 : actualRows12129.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12129=7428 := by core033_kernel_decide
theorem rows12130 : actualRows12130=WordField.canonicalRows actualModulus 12130 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12130 : actualRows12130.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12130=2820 := by core033_kernel_decide
theorem rows12131 : actualRows12131=WordField.canonicalRows actualModulus 12131 (.bnot 12130) := by core033_kernel_decide
theorem stats12131 : actualRows12131.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12131=6276 := by core033_kernel_decide
theorem rows12132 : actualRows12132=WordField.canonicalRows actualModulus 12132 (.bxor 12129 12131) := by core033_kernel_decide
theorem stats12132 : actualRows12132.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12132=7428 := by core033_kernel_decide
theorem rows12133 : actualRows12133=WordField.canonicalRows actualModulus 12133 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12133 : actualRows12133.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12133=2964 := by core033_kernel_decide
theorem rows12134 : actualRows12134=WordField.canonicalRows actualModulus 12134 (.bxor 442 12133) := by core033_kernel_decide
theorem stats12134 : actualRows12134.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12134=7428 := by core033_kernel_decide
theorem rows12135 : actualRows12135=WordField.canonicalRows actualModulus 12135 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12135 : actualRows12135.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12135=2820 := by core033_kernel_decide
theorem rows12136 : actualRows12136=WordField.canonicalRows actualModulus 12136 (.bnot 12135) := by core033_kernel_decide
theorem stats12136 : actualRows12136.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12136=6276 := by core033_kernel_decide
theorem rows12137 : actualRows12137=WordField.canonicalRows actualModulus 12137 (.badd 12134 12136) := by core033_kernel_decide
theorem stats12137 : actualRows12137.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12137=5388 := by core033_kernel_decide
theorem rows12138 : actualRows12138=WordField.canonicalRows actualModulus 12138 (.bnot 12137) := by core033_kernel_decide
theorem stats12138 : actualRows12138.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12138=6276 := by core033_kernel_decide
theorem rows12139 : actualRows12139=WordField.canonicalRows actualModulus 12139 (.band 12132 12138) := by core033_kernel_decide
theorem stats12139 : actualRows12139.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12139=5124 := by core033_kernel_decide
theorem rows12140 : actualRows12140=WordField.canonicalRows actualModulus 12140 (.bxor 12127 12139) := by core033_kernel_decide
theorem stats12140 : actualRows12140.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12140=7428 := by core033_kernel_decide
theorem rows12141 : actualRows12141=WordField.canonicalRows actualModulus 12141 (.shr 12140 31) := by core033_kernel_decide
theorem stats12141 : actualRows12141.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12141=2892 := by core033_kernel_decide
theorem rows12142 : actualRows12142=WordField.canonicalRows actualModulus 12142 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12142 : actualRows12142.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12142=2892 := by core033_kernel_decide
theorem rows12143 : actualRows12143=WordField.canonicalRows actualModulus 12143 (.bxor 12141 12142) := by core033_kernel_decide
theorem stats12143 : actualRows12143.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12143=7428 := by core033_kernel_decide
theorem rows12144 : actualRows12144=WordField.canonicalRows actualModulus 12144 (.bnot 12143) := by core033_kernel_decide
theorem stats12144 : actualRows12144.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12144=6276 := by core033_kernel_decide
theorem rows12145 : actualRows12145=WordField.canonicalRows actualModulus 12145 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12145 : actualRows12145.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12145=2892 := by core033_kernel_decide
theorem rows12146 : actualRows12146=WordField.canonicalRows actualModulus 12146 (.badd 12144 12145) := by core033_kernel_decide
theorem stats12146 : actualRows12146.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12146=5388 := by core033_kernel_decide
theorem rows12147 : actualRows12147=WordField.canonicalRows actualModulus 12147 (.bnot 12146) := by core033_kernel_decide
theorem stats12147 : actualRows12147.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12147=6276 := by core033_kernel_decide
theorem rows12148 : actualRows12148=WordField.canonicalRows actualModulus 12148 (.band 12147 902) := by core033_kernel_decide
theorem stats12148 : actualRows12148.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12148=5124 := by core033_kernel_decide
theorem rows12149 : actualRows12149=WordField.canonicalRows actualModulus 12149 (.bxor 12122 12148) := by core033_kernel_decide
theorem stats12149 : actualRows12149.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12149=7428 := by core033_kernel_decide
theorem rows12150 : actualRows12150=WordField.canonicalRows actualModulus 12150 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12150 : actualRows12150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12150=2964 := by core033_kernel_decide
theorem rows12151 : actualRows12151=WordField.canonicalRows actualModulus 12151 (.bxor 442 12150) := by core033_kernel_decide
theorem stats12151 : actualRows12151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12151=7428 := by core033_kernel_decide
theorem rows12152 : actualRows12152=WordField.canonicalRows actualModulus 12152 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12152 : actualRows12152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12152=2820 := by core033_kernel_decide
theorem rows12153 : actualRows12153=WordField.canonicalRows actualModulus 12153 (.bnot 12152) := by core033_kernel_decide
theorem stats12153 : actualRows12153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12153=6276 := by core033_kernel_decide
theorem rows12154 : actualRows12154=WordField.canonicalRows actualModulus 12154 (.band 12151 12153) := by core033_kernel_decide
theorem stats12154 : actualRows12154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12154=5124 := by core033_kernel_decide
theorem rows12155 : actualRows12155=WordField.canonicalRows actualModulus 12155 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12155 : actualRows12155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12155=2964 := by core033_kernel_decide
theorem rows12156 : actualRows12156=WordField.canonicalRows actualModulus 12156 (.bxor 442 12155) := by core033_kernel_decide
theorem stats12156 : actualRows12156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12156=7428 := by core033_kernel_decide
theorem rows12157 : actualRows12157=WordField.canonicalRows actualModulus 12157 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12157 : actualRows12157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12157=2820 := by core033_kernel_decide
theorem rows12158 : actualRows12158=WordField.canonicalRows actualModulus 12158 (.bnot 12157) := by core033_kernel_decide
theorem stats12158 : actualRows12158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12158=6276 := by core033_kernel_decide
theorem rows12159 : actualRows12159=WordField.canonicalRows actualModulus 12159 (.bxor 12156 12158) := by core033_kernel_decide
theorem stats12159 : actualRows12159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12159=7428 := by core033_kernel_decide
theorem rows12160 : actualRows12160=WordField.canonicalRows actualModulus 12160 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12160 : actualRows12160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12160=2964 := by core033_kernel_decide
theorem rows12161 : actualRows12161=WordField.canonicalRows actualModulus 12161 (.bxor 442 12160) := by core033_kernel_decide
theorem stats12161 : actualRows12161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12161=7428 := by core033_kernel_decide
theorem rows12162 : actualRows12162=WordField.canonicalRows actualModulus 12162 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12162 : actualRows12162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12162=2820 := by core033_kernel_decide
theorem rows12163 : actualRows12163=WordField.canonicalRows actualModulus 12163 (.bnot 12162) := by core033_kernel_decide
theorem stats12163 : actualRows12163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12163=6276 := by core033_kernel_decide
theorem rows12164 : actualRows12164=WordField.canonicalRows actualModulus 12164 (.badd 12161 12163) := by core033_kernel_decide
theorem stats12164 : actualRows12164.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12164=5388 := by core033_kernel_decide
theorem rows12165 : actualRows12165=WordField.canonicalRows actualModulus 12165 (.bnot 12164) := by core033_kernel_decide
theorem stats12165 : actualRows12165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12165=6276 := by core033_kernel_decide
theorem rows12166 : actualRows12166=WordField.canonicalRows actualModulus 12166 (.band 12159 12165) := by core033_kernel_decide
theorem stats12166 : actualRows12166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12166=5124 := by core033_kernel_decide
theorem rows12167 : actualRows12167=WordField.canonicalRows actualModulus 12167 (.bxor 12154 12166) := by core033_kernel_decide
theorem stats12167 : actualRows12167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12167=7428 := by core033_kernel_decide
theorem rows12168 : actualRows12168=WordField.canonicalRows actualModulus 12168 (.shr 12167 31) := by core033_kernel_decide
theorem stats12168 : actualRows12168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12168=2892 := by core033_kernel_decide
theorem rows12169 : actualRows12169=WordField.canonicalRows actualModulus 12169 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12169 : actualRows12169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12169=2892 := by core033_kernel_decide
theorem rows12170 : actualRows12170=WordField.canonicalRows actualModulus 12170 (.bxor 12168 12169) := by core033_kernel_decide
theorem stats12170 : actualRows12170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12170=7428 := by core033_kernel_decide
theorem rows12171 : actualRows12171=WordField.canonicalRows actualModulus 12171 (.bnot 12170) := by core033_kernel_decide
theorem stats12171 : actualRows12171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12171=6276 := by core033_kernel_decide
theorem rows12172 : actualRows12172=WordField.canonicalRows actualModulus 12172 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12172 : actualRows12172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12172=2892 := by core033_kernel_decide
theorem rows12173 : actualRows12173=WordField.canonicalRows actualModulus 12173 (.badd 12171 12172) := by core033_kernel_decide
theorem stats12173 : actualRows12173.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12173=5388 := by core033_kernel_decide
theorem rows12174 : actualRows12174=WordField.canonicalRows actualModulus 12174 (.band 12173 10456) := by core033_kernel_decide
theorem stats12174 : actualRows12174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12174=5124 := by core033_kernel_decide
theorem rows12175 : actualRows12175=WordField.canonicalRows actualModulus 12175 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12175 : actualRows12175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12175=2964 := by core033_kernel_decide
theorem rows12176 : actualRows12176=WordField.canonicalRows actualModulus 12176 (.bxor 442 12175) := by core033_kernel_decide
theorem stats12176 : actualRows12176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12176=7428 := by core033_kernel_decide
theorem rows12177 : actualRows12177=WordField.canonicalRows actualModulus 12177 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12177 : actualRows12177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12177=2820 := by core033_kernel_decide
theorem rows12178 : actualRows12178=WordField.canonicalRows actualModulus 12178 (.bnot 12177) := by core033_kernel_decide
theorem stats12178 : actualRows12178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12178=6276 := by core033_kernel_decide
theorem rows12179 : actualRows12179=WordField.canonicalRows actualModulus 12179 (.band 12176 12178) := by core033_kernel_decide
theorem stats12179 : actualRows12179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12179=5124 := by core033_kernel_decide
theorem rows12180 : actualRows12180=WordField.canonicalRows actualModulus 12180 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12180 : actualRows12180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12180=2964 := by core033_kernel_decide
theorem rows12181 : actualRows12181=WordField.canonicalRows actualModulus 12181 (.bxor 442 12180) := by core033_kernel_decide
theorem stats12181 : actualRows12181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12181=7428 := by core033_kernel_decide
theorem rows12182 : actualRows12182=WordField.canonicalRows actualModulus 12182 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12182 : actualRows12182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12182=2820 := by core033_kernel_decide
theorem rows12183 : actualRows12183=WordField.canonicalRows actualModulus 12183 (.bnot 12182) := by core033_kernel_decide
theorem stats12183 : actualRows12183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12183=6276 := by core033_kernel_decide
theorem rows12184 : actualRows12184=WordField.canonicalRows actualModulus 12184 (.bxor 12181 12183) := by core033_kernel_decide
theorem stats12184 : actualRows12184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12184=7428 := by core033_kernel_decide
theorem rows12185 : actualRows12185=WordField.canonicalRows actualModulus 12185 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12185 : actualRows12185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12185=2964 := by core033_kernel_decide
theorem rows12186 : actualRows12186=WordField.canonicalRows actualModulus 12186 (.bxor 442 12185) := by core033_kernel_decide
theorem stats12186 : actualRows12186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12186=7428 := by core033_kernel_decide
theorem rows12187 : actualRows12187=WordField.canonicalRows actualModulus 12187 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12187 : actualRows12187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12187=2820 := by core033_kernel_decide
theorem rows12188 : actualRows12188=WordField.canonicalRows actualModulus 12188 (.bnot 12187) := by core033_kernel_decide
theorem stats12188 : actualRows12188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12188=6276 := by core033_kernel_decide
theorem rows12189 : actualRows12189=WordField.canonicalRows actualModulus 12189 (.badd 12186 12188) := by core033_kernel_decide
theorem stats12189 : actualRows12189.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12189=5388 := by core033_kernel_decide
theorem rows12190 : actualRows12190=WordField.canonicalRows actualModulus 12190 (.bnot 12189) := by core033_kernel_decide
theorem stats12190 : actualRows12190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12190=6276 := by core033_kernel_decide
theorem rows12191 : actualRows12191=WordField.canonicalRows actualModulus 12191 (.band 12184 12190) := by core033_kernel_decide
theorem stats12191 : actualRows12191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12191=5124 := by core033_kernel_decide
def partRows188 : List R1CS.Row := actualRows12128++actualRows12129++actualRows12130++actualRows12131++actualRows12132++actualRows12133++actualRows12134++actualRows12135++actualRows12136++actualRows12137++actualRows12138++actualRows12139++actualRows12140++actualRows12141++actualRows12142++actualRows12143++actualRows12144++actualRows12145++actualRows12146++actualRows12147++actualRows12148++actualRows12149++actualRows12150++actualRows12151++actualRows12152++actualRows12153++actualRows12154++actualRows12155++actualRows12156++actualRows12157++actualRows12158++actualRows12159++actualRows12160++actualRows12161++actualRows12162++actualRows12163++actualRows12164++actualRows12165++actualRows12166++actualRows12167++actualRows12168++actualRows12169++actualRows12170++actualRows12171++actualRows12172++actualRows12173++actualRows12174++actualRows12175++actualRows12176++actualRows12177++actualRows12178++actualRows12179++actualRows12180++actualRows12181++actualRows12182++actualRows12183++actualRows12184++actualRows12185++actualRows12186++actualRows12187++actualRows12188++actualRows12189++actualRows12190++actualRows12191
def partOps188 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 442 12128,.literal (BitVec.ofNat 32 0),.bnot 12130,.bxor 12129 12131,.literal (BitVec.ofNat 32 3),.bxor 442 12133,.literal (BitVec.ofNat 32 0),.bnot 12135,.badd 12134 12136,.bnot 12137,.band 12132 12138,.bxor 12127 12139,.shr 12140 31,.literal (BitVec.ofNat 32 1),.bxor 12141 12142,.bnot 12143,.literal (BitVec.ofNat 32 1),.badd 12144 12145,.bnot 12146,.band 12147 902,.bxor 12122 12148,.literal (BitVec.ofNat 32 3),.bxor 442 12150,.literal (BitVec.ofNat 32 0),.bnot 12152,.band 12151 12153,.literal (BitVec.ofNat 32 3),.bxor 442 12155,.literal (BitVec.ofNat 32 0),.bnot 12157,.bxor 12156 12158,.literal (BitVec.ofNat 32 3),.bxor 442 12160,.literal (BitVec.ofNat 32 0),.bnot 12162,.badd 12161 12163,.bnot 12164,.band 12159 12165,.bxor 12154 12166,.shr 12167 31,.literal (BitVec.ofNat 32 1),.bxor 12168 12169,.bnot 12170,.literal (BitVec.ofNat 32 1),.badd 12171 12172,.band 12173 10456,.literal (BitVec.ofNat 32 3),.bxor 442 12175,.literal (BitVec.ofNat 32 0),.bnot 12177,.band 12176 12178,.literal (BitVec.ofNat 32 3),.bxor 442 12180,.literal (BitVec.ofNat 32 0),.bnot 12182,.bxor 12181 12183,.literal (BitVec.ofNat 32 3),.bxor 442 12185,.literal (BitVec.ofNat 32 0),.bnot 12187,.badd 12186 12188,.bnot 12189,.band 12184 12190]
theorem partExact188 : partRows188=WordField.rows actualModulus 12128 partOps188 := by
  simp only [partRows188,partOps188,WordField.rows,rows12128,rows12129,rows12130,rows12131,rows12132,rows12133,rows12134,rows12135,rows12136,rows12137,rows12138,rows12139,rows12140,rows12141,rows12142,rows12143,rows12144,rows12145,rows12146,rows12147,rows12148,rows12149,rows12150,rows12151,rows12152,rows12153,rows12154,rows12155,rows12156,rows12157,rows12158,rows12159,rows12160,rows12161,rows12162,rows12163,rows12164,rows12165,rows12166,rows12167,rows12168,rows12169,rows12170,rows12171,rows12172,rows12173,rows12174,rows12175,rows12176,rows12177,rows12178,rows12179,rows12180,rows12181,rows12182,rows12183,rows12184,rows12185,rows12186,rows12187,rows12188,rows12189,rows12190,rows12191,List.append_assoc,List.append_nil]
theorem partLength188 : partOps188.length=64 := by decide
theorem partStats188 : partRows188.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows188=333144 := by
  simp only [partRows188,List.length_append,MatrixRowBlocks.rows_weight_append,stats12128.1,stats12128.2,stats12129.1,stats12129.2,stats12130.1,stats12130.2,stats12131.1,stats12131.2,stats12132.1,stats12132.2,stats12133.1,stats12133.2,stats12134.1,stats12134.2,stats12135.1,stats12135.2,stats12136.1,stats12136.2,stats12137.1,stats12137.2,stats12138.1,stats12138.2,stats12139.1,stats12139.2,stats12140.1,stats12140.2,stats12141.1,stats12141.2,stats12142.1,stats12142.2,stats12143.1,stats12143.2,stats12144.1,stats12144.2,stats12145.1,stats12145.2,stats12146.1,stats12146.2,stats12147.1,stats12147.2,stats12148.1,stats12148.2,stats12149.1,stats12149.2,stats12150.1,stats12150.2,stats12151.1,stats12151.2,stats12152.1,stats12152.2,stats12153.1,stats12153.2,stats12154.1,stats12154.2,stats12155.1,stats12155.2,stats12156.1,stats12156.2,stats12157.1,stats12157.2,stats12158.1,stats12158.2,stats12159.1,stats12159.2,stats12160.1,stats12160.2,stats12161.1,stats12161.2,stats12162.1,stats12162.2,stats12163.1,stats12163.2,stats12164.1,stats12164.2,stats12165.1,stats12165.2,stats12166.1,stats12166.2,stats12167.1,stats12167.2,stats12168.1,stats12168.2,stats12169.1,stats12169.2,stats12170.1,stats12170.2,stats12171.1,stats12171.2,stats12172.1,stats12172.2,stats12173.1,stats12173.2,stats12174.1,stats12174.2,stats12175.1,stats12175.2,stats12176.1,stats12176.2,stats12177.1,stats12177.2,stats12178.1,stats12178.2,stats12179.1,stats12179.2,stats12180.1,stats12180.2,stats12181.1,stats12181.2,stats12182.1,stats12182.2,stats12183.1,stats12183.2,stats12184.1,stats12184.2,stats12185.1,stats12185.2,stats12186.1,stats12186.2,stats12187.1,stats12187.2,stats12188.1,stats12188.2,stats12189.1,stats12189.2,stats12190.1,stats12190.2,stats12191.1,stats12191.2]
  decide
end QuotedPairedPathRoundCheckedRows
