import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData189
import AuthenticatedBranchRoundInstructionMatrixData190
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12150 : actualRows12150=WordField.canonicalRows actualModulus 12150 (.bxor 12148 12149) := by core033_kernel_decide
theorem stats12150 : actualRows12150.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12150=7428 := by core033_kernel_decide
theorem rows12151 : actualRows12151=WordField.canonicalRows actualModulus 12151 (.bnot 12150) := by core033_kernel_decide
theorem stats12151 : actualRows12151.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12151=6276 := by core033_kernel_decide
theorem rows12152 : actualRows12152=WordField.canonicalRows actualModulus 12152 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12152 : actualRows12152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12152=2892 := by core033_kernel_decide
theorem rows12153 : actualRows12153=WordField.canonicalRows actualModulus 12153 (.badd 12151 12152) := by core033_kernel_decide
theorem stats12153 : actualRows12153.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12153=5388 := by core033_kernel_decide
theorem rows12154 : actualRows12154=WordField.canonicalRows actualModulus 12154 (.bnot 12153) := by core033_kernel_decide
theorem stats12154 : actualRows12154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12154=6276 := by core033_kernel_decide
theorem rows12155 : actualRows12155=WordField.canonicalRows actualModulus 12155 (.band 12154 1442) := by core033_kernel_decide
theorem stats12155 : actualRows12155.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12155=5124 := by core033_kernel_decide
theorem rows12156 : actualRows12156=WordField.canonicalRows actualModulus 12156 (.bxor 12129 12155) := by core033_kernel_decide
theorem stats12156 : actualRows12156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12156=7428 := by core033_kernel_decide
theorem rows12157 : actualRows12157=WordField.canonicalRows actualModulus 12157 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12157 : actualRows12157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12157=2964 := by core033_kernel_decide
theorem rows12158 : actualRows12158=WordField.canonicalRows actualModulus 12158 (.bxor 693 12157) := by core033_kernel_decide
theorem stats12158 : actualRows12158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12158=7428 := by core033_kernel_decide
theorem rows12159 : actualRows12159=WordField.canonicalRows actualModulus 12159 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12159 : actualRows12159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12159=2820 := by core033_kernel_decide
theorem rows12160 : actualRows12160=WordField.canonicalRows actualModulus 12160 (.bnot 12159) := by core033_kernel_decide
theorem stats12160 : actualRows12160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12160=6276 := by core033_kernel_decide
theorem rows12161 : actualRows12161=WordField.canonicalRows actualModulus 12161 (.band 12158 12160) := by core033_kernel_decide
theorem stats12161 : actualRows12161.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12161=5124 := by core033_kernel_decide
theorem rows12162 : actualRows12162=WordField.canonicalRows actualModulus 12162 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12162 : actualRows12162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12162=2964 := by core033_kernel_decide
theorem rows12163 : actualRows12163=WordField.canonicalRows actualModulus 12163 (.bxor 693 12162) := by core033_kernel_decide
theorem stats12163 : actualRows12163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12163=7428 := by core033_kernel_decide
theorem rows12164 : actualRows12164=WordField.canonicalRows actualModulus 12164 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12164 : actualRows12164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12164=2820 := by core033_kernel_decide
theorem rows12165 : actualRows12165=WordField.canonicalRows actualModulus 12165 (.bnot 12164) := by core033_kernel_decide
theorem stats12165 : actualRows12165.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12165=6276 := by core033_kernel_decide
theorem rows12166 : actualRows12166=WordField.canonicalRows actualModulus 12166 (.bxor 12163 12165) := by core033_kernel_decide
theorem stats12166 : actualRows12166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12166=7428 := by core033_kernel_decide
theorem rows12167 : actualRows12167=WordField.canonicalRows actualModulus 12167 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12167 : actualRows12167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12167=2964 := by core033_kernel_decide
theorem rows12168 : actualRows12168=WordField.canonicalRows actualModulus 12168 (.bxor 693 12167) := by core033_kernel_decide
theorem stats12168 : actualRows12168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12168=7428 := by core033_kernel_decide
theorem rows12169 : actualRows12169=WordField.canonicalRows actualModulus 12169 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12169 : actualRows12169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12169=2820 := by core033_kernel_decide
theorem rows12170 : actualRows12170=WordField.canonicalRows actualModulus 12170 (.bnot 12169) := by core033_kernel_decide
theorem stats12170 : actualRows12170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12170=6276 := by core033_kernel_decide
theorem rows12171 : actualRows12171=WordField.canonicalRows actualModulus 12171 (.badd 12168 12170) := by core033_kernel_decide
theorem stats12171 : actualRows12171.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12171=5388 := by core033_kernel_decide
theorem rows12172 : actualRows12172=WordField.canonicalRows actualModulus 12172 (.bnot 12171) := by core033_kernel_decide
theorem stats12172 : actualRows12172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12172=6276 := by core033_kernel_decide
theorem rows12173 : actualRows12173=WordField.canonicalRows actualModulus 12173 (.band 12166 12172) := by core033_kernel_decide
theorem stats12173 : actualRows12173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12173=5124 := by core033_kernel_decide
theorem rows12174 : actualRows12174=WordField.canonicalRows actualModulus 12174 (.bxor 12161 12173) := by core033_kernel_decide
theorem stats12174 : actualRows12174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12174=7428 := by core033_kernel_decide
theorem rows12175 : actualRows12175=WordField.canonicalRows actualModulus 12175 (.shr 12174 31) := by core033_kernel_decide
theorem stats12175 : actualRows12175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12175=2892 := by core033_kernel_decide
theorem rows12176 : actualRows12176=WordField.canonicalRows actualModulus 12176 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12176 : actualRows12176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12176=2892 := by core033_kernel_decide
theorem rows12177 : actualRows12177=WordField.canonicalRows actualModulus 12177 (.bxor 12175 12176) := by core033_kernel_decide
theorem stats12177 : actualRows12177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12177=7428 := by core033_kernel_decide
theorem rows12178 : actualRows12178=WordField.canonicalRows actualModulus 12178 (.bnot 12177) := by core033_kernel_decide
theorem stats12178 : actualRows12178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12178=6276 := by core033_kernel_decide
theorem rows12179 : actualRows12179=WordField.canonicalRows actualModulus 12179 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12179 : actualRows12179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12179=2892 := by core033_kernel_decide
theorem rows12180 : actualRows12180=WordField.canonicalRows actualModulus 12180 (.badd 12178 12179) := by core033_kernel_decide
theorem stats12180 : actualRows12180.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12180=5388 := by core033_kernel_decide
theorem rows12181 : actualRows12181=WordField.canonicalRows actualModulus 12181 (.band 12180 11110) := by core033_kernel_decide
theorem stats12181 : actualRows12181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12181=5124 := by core033_kernel_decide
theorem rows12182 : actualRows12182=WordField.canonicalRows actualModulus 12182 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12182 : actualRows12182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12182=2964 := by core033_kernel_decide
theorem rows12183 : actualRows12183=WordField.canonicalRows actualModulus 12183 (.bxor 693 12182) := by core033_kernel_decide
theorem stats12183 : actualRows12183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12183=7428 := by core033_kernel_decide
theorem rows12184 : actualRows12184=WordField.canonicalRows actualModulus 12184 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12184 : actualRows12184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12184=2820 := by core033_kernel_decide
theorem rows12185 : actualRows12185=WordField.canonicalRows actualModulus 12185 (.bnot 12184) := by core033_kernel_decide
theorem stats12185 : actualRows12185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12185=6276 := by core033_kernel_decide
theorem rows12186 : actualRows12186=WordField.canonicalRows actualModulus 12186 (.band 12183 12185) := by core033_kernel_decide
theorem stats12186 : actualRows12186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12186=5124 := by core033_kernel_decide
theorem rows12187 : actualRows12187=WordField.canonicalRows actualModulus 12187 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12187 : actualRows12187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12187=2964 := by core033_kernel_decide
theorem rows12188 : actualRows12188=WordField.canonicalRows actualModulus 12188 (.bxor 693 12187) := by core033_kernel_decide
theorem stats12188 : actualRows12188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12188=7428 := by core033_kernel_decide
theorem rows12189 : actualRows12189=WordField.canonicalRows actualModulus 12189 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12189 : actualRows12189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12189=2820 := by core033_kernel_decide
theorem rows12190 : actualRows12190=WordField.canonicalRows actualModulus 12190 (.bnot 12189) := by core033_kernel_decide
theorem stats12190 : actualRows12190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12190=6276 := by core033_kernel_decide
theorem rows12191 : actualRows12191=WordField.canonicalRows actualModulus 12191 (.bxor 12188 12190) := by core033_kernel_decide
theorem stats12191 : actualRows12191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12191=7428 := by core033_kernel_decide
theorem rows12192 : actualRows12192=WordField.canonicalRows actualModulus 12192 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12192 : actualRows12192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12192=2964 := by core033_kernel_decide
theorem rows12193 : actualRows12193=WordField.canonicalRows actualModulus 12193 (.bxor 693 12192) := by core033_kernel_decide
theorem stats12193 : actualRows12193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12193=7428 := by core033_kernel_decide
theorem rows12194 : actualRows12194=WordField.canonicalRows actualModulus 12194 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12194 : actualRows12194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12194=2820 := by core033_kernel_decide
theorem rows12195 : actualRows12195=WordField.canonicalRows actualModulus 12195 (.bnot 12194) := by core033_kernel_decide
theorem stats12195 : actualRows12195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12195=6276 := by core033_kernel_decide
theorem rows12196 : actualRows12196=WordField.canonicalRows actualModulus 12196 (.badd 12193 12195) := by core033_kernel_decide
theorem stats12196 : actualRows12196.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12196=5388 := by core033_kernel_decide
theorem rows12197 : actualRows12197=WordField.canonicalRows actualModulus 12197 (.bnot 12196) := by core033_kernel_decide
theorem stats12197 : actualRows12197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12197=6276 := by core033_kernel_decide
theorem rows12198 : actualRows12198=WordField.canonicalRows actualModulus 12198 (.band 12191 12197) := by core033_kernel_decide
theorem stats12198 : actualRows12198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12198=5124 := by core033_kernel_decide
theorem rows12199 : actualRows12199=WordField.canonicalRows actualModulus 12199 (.bxor 12186 12198) := by core033_kernel_decide
theorem stats12199 : actualRows12199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12199=7428 := by core033_kernel_decide
theorem rows12200 : actualRows12200=WordField.canonicalRows actualModulus 12200 (.shr 12199 31) := by core033_kernel_decide
theorem stats12200 : actualRows12200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12200=2892 := by core033_kernel_decide
theorem rows12201 : actualRows12201=WordField.canonicalRows actualModulus 12201 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12201 : actualRows12201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12201=2892 := by core033_kernel_decide
theorem rows12202 : actualRows12202=WordField.canonicalRows actualModulus 12202 (.bxor 12200 12201) := by core033_kernel_decide
theorem stats12202 : actualRows12202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12202=7428 := by core033_kernel_decide
theorem rows12203 : actualRows12203=WordField.canonicalRows actualModulus 12203 (.bnot 12202) := by core033_kernel_decide
theorem stats12203 : actualRows12203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12203=6276 := by core033_kernel_decide
theorem rows12204 : actualRows12204=WordField.canonicalRows actualModulus 12204 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12204 : actualRows12204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12204=2892 := by core033_kernel_decide
theorem rows12205 : actualRows12205=WordField.canonicalRows actualModulus 12205 (.badd 12203 12204) := by core033_kernel_decide
theorem stats12205 : actualRows12205.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12205=5388 := by core033_kernel_decide
theorem rows12206 : actualRows12206=WordField.canonicalRows actualModulus 12206 (.bnot 12205) := by core033_kernel_decide
theorem stats12206 : actualRows12206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12206=6276 := by core033_kernel_decide
theorem rows12207 : actualRows12207=WordField.canonicalRows actualModulus 12207 (.band 12206 1453) := by core033_kernel_decide
theorem stats12207 : actualRows12207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12207=5124 := by core033_kernel_decide
theorem rows12208 : actualRows12208=WordField.canonicalRows actualModulus 12208 (.bxor 12181 12207) := by core033_kernel_decide
theorem stats12208 : actualRows12208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12208=7428 := by core033_kernel_decide
theorem rows12209 : actualRows12209=WordField.canonicalRows actualModulus 12209 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12209 : actualRows12209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12209=2964 := by core033_kernel_decide
theorem rows12210 : actualRows12210=WordField.canonicalRows actualModulus 12210 (.bxor 693 12209) := by core033_kernel_decide
theorem stats12210 : actualRows12210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12210=7428 := by core033_kernel_decide
theorem rows12211 : actualRows12211=WordField.canonicalRows actualModulus 12211 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12211 : actualRows12211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12211=2820 := by core033_kernel_decide
theorem rows12212 : actualRows12212=WordField.canonicalRows actualModulus 12212 (.bnot 12211) := by core033_kernel_decide
theorem stats12212 : actualRows12212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12212=6276 := by core033_kernel_decide
theorem rows12213 : actualRows12213=WordField.canonicalRows actualModulus 12213 (.band 12210 12212) := by core033_kernel_decide
theorem stats12213 : actualRows12213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12213=5124 := by core033_kernel_decide
def partRows188 : List R1CS.Row := actualRows12150++actualRows12151++actualRows12152++actualRows12153++actualRows12154++actualRows12155++actualRows12156++actualRows12157++actualRows12158++actualRows12159++actualRows12160++actualRows12161++actualRows12162++actualRows12163++actualRows12164++actualRows12165++actualRows12166++actualRows12167++actualRows12168++actualRows12169++actualRows12170++actualRows12171++actualRows12172++actualRows12173++actualRows12174++actualRows12175++actualRows12176++actualRows12177++actualRows12178++actualRows12179++actualRows12180++actualRows12181++actualRows12182++actualRows12183++actualRows12184++actualRows12185++actualRows12186++actualRows12187++actualRows12188++actualRows12189++actualRows12190++actualRows12191++actualRows12192++actualRows12193++actualRows12194++actualRows12195++actualRows12196++actualRows12197++actualRows12198++actualRows12199++actualRows12200++actualRows12201++actualRows12202++actualRows12203++actualRows12204++actualRows12205++actualRows12206++actualRows12207++actualRows12208++actualRows12209++actualRows12210++actualRows12211++actualRows12212++actualRows12213
def partOps188 : List WordIR.Op := [.bxor 12148 12149,.bnot 12150,.literal (BitVec.ofNat 32 1),.badd 12151 12152,.bnot 12153,.band 12154 1442,.bxor 12129 12155,.literal (BitVec.ofNat 32 3),.bxor 693 12157,.literal (BitVec.ofNat 32 0),.bnot 12159,.band 12158 12160,.literal (BitVec.ofNat 32 3),.bxor 693 12162,.literal (BitVec.ofNat 32 0),.bnot 12164,.bxor 12163 12165,.literal (BitVec.ofNat 32 3),.bxor 693 12167,.literal (BitVec.ofNat 32 0),.bnot 12169,.badd 12168 12170,.bnot 12171,.band 12166 12172,.bxor 12161 12173,.shr 12174 31,.literal (BitVec.ofNat 32 1),.bxor 12175 12176,.bnot 12177,.literal (BitVec.ofNat 32 1),.badd 12178 12179,.band 12180 11110,.literal (BitVec.ofNat 32 3),.bxor 693 12182,.literal (BitVec.ofNat 32 0),.bnot 12184,.band 12183 12185,.literal (BitVec.ofNat 32 3),.bxor 693 12187,.literal (BitVec.ofNat 32 0),.bnot 12189,.bxor 12188 12190,.literal (BitVec.ofNat 32 3),.bxor 693 12192,.literal (BitVec.ofNat 32 0),.bnot 12194,.badd 12193 12195,.bnot 12196,.band 12191 12197,.bxor 12186 12198,.shr 12199 31,.literal (BitVec.ofNat 32 1),.bxor 12200 12201,.bnot 12202,.literal (BitVec.ofNat 32 1),.badd 12203 12204,.bnot 12205,.band 12206 1453,.bxor 12181 12207,.literal (BitVec.ofNat 32 3),.bxor 693 12209,.literal (BitVec.ofNat 32 0),.bnot 12211,.band 12210 12212]
theorem partExact188 : partRows188=WordField.rows actualModulus 12150 partOps188 := by
  simp only [partRows188,partOps188,WordField.rows,rows12150,rows12151,rows12152,rows12153,rows12154,rows12155,rows12156,rows12157,rows12158,rows12159,rows12160,rows12161,rows12162,rows12163,rows12164,rows12165,rows12166,rows12167,rows12168,rows12169,rows12170,rows12171,rows12172,rows12173,rows12174,rows12175,rows12176,rows12177,rows12178,rows12179,rows12180,rows12181,rows12182,rows12183,rows12184,rows12185,rows12186,rows12187,rows12188,rows12189,rows12190,rows12191,rows12192,rows12193,rows12194,rows12195,rows12196,rows12197,rows12198,rows12199,rows12200,rows12201,rows12202,rows12203,rows12204,rows12205,rows12206,rows12207,rows12208,rows12209,rows12210,rows12211,rows12212,rows12213,List.append_assoc,List.append_nil]
theorem partLength188 : partOps188.length=64 := by decide
theorem partStats188 : partRows188.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows188=335376 := by
  simp only [partRows188,List.length_append,MatrixRowBlocks.rows_weight_append,stats12150.1,stats12150.2,stats12151.1,stats12151.2,stats12152.1,stats12152.2,stats12153.1,stats12153.2,stats12154.1,stats12154.2,stats12155.1,stats12155.2,stats12156.1,stats12156.2,stats12157.1,stats12157.2,stats12158.1,stats12158.2,stats12159.1,stats12159.2,stats12160.1,stats12160.2,stats12161.1,stats12161.2,stats12162.1,stats12162.2,stats12163.1,stats12163.2,stats12164.1,stats12164.2,stats12165.1,stats12165.2,stats12166.1,stats12166.2,stats12167.1,stats12167.2,stats12168.1,stats12168.2,stats12169.1,stats12169.2,stats12170.1,stats12170.2,stats12171.1,stats12171.2,stats12172.1,stats12172.2,stats12173.1,stats12173.2,stats12174.1,stats12174.2,stats12175.1,stats12175.2,stats12176.1,stats12176.2,stats12177.1,stats12177.2,stats12178.1,stats12178.2,stats12179.1,stats12179.2,stats12180.1,stats12180.2,stats12181.1,stats12181.2,stats12182.1,stats12182.2,stats12183.1,stats12183.2,stats12184.1,stats12184.2,stats12185.1,stats12185.2,stats12186.1,stats12186.2,stats12187.1,stats12187.2,stats12188.1,stats12188.2,stats12189.1,stats12189.2,stats12190.1,stats12190.2,stats12191.1,stats12191.2,stats12192.1,stats12192.2,stats12193.1,stats12193.2,stats12194.1,stats12194.2,stats12195.1,stats12195.2,stats12196.1,stats12196.2,stats12197.1,stats12197.2,stats12198.1,stats12198.2,stats12199.1,stats12199.2,stats12200.1,stats12200.2,stats12201.1,stats12201.2,stats12202.1,stats12202.2,stats12203.1,stats12203.2,stats12204.1,stats12204.2,stats12205.1,stats12205.2,stats12206.1,stats12206.2,stats12207.1,stats12207.2,stats12208.1,stats12208.2,stats12209.1,stats12209.2,stats12210.1,stats12210.2,stats12211.1,stats12211.2,stats12212.1,stats12212.2,stats12213.1,stats12213.2]
  decide
end AuthenticatedBranchRoundCheckedRows
