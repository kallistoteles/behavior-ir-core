import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData205
import PairedPathRoundInstructionMatrixData206
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13152 : actualRows13152=WordField.canonicalRows actualModulus 13152 (.band 13151 12253) := by core033_kernel_decide
theorem stats13152 : actualRows13152.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13152=5124 := by core033_kernel_decide
theorem rows13153 : actualRows13153=WordField.canonicalRows actualModulus 13153 (.bnot 267) := by core033_kernel_decide
theorem stats13153 : actualRows13153.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13153=6276 := by core033_kernel_decide
theorem rows13154 : actualRows13154=WordField.canonicalRows actualModulus 13154 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13154 : actualRows13154.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13154=2892 := by core033_kernel_decide
theorem rows13155 : actualRows13155=WordField.canonicalRows actualModulus 13155 (.badd 13153 13154) := by core033_kernel_decide
theorem stats13155 : actualRows13155.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13155=5388 := by core033_kernel_decide
theorem rows13156 : actualRows13156=WordField.canonicalRows actualModulus 13156 (.bnot 13155) := by core033_kernel_decide
theorem stats13156 : actualRows13156.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13156=6276 := by core033_kernel_decide
theorem rows13157 : actualRows13157=WordField.canonicalRows actualModulus 13157 (.band 13156 64) := by core033_kernel_decide
theorem stats13157 : actualRows13157.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13157=5124 := by core033_kernel_decide
theorem rows13158 : actualRows13158=WordField.canonicalRows actualModulus 13158 (.bxor 13152 13157) := by core033_kernel_decide
theorem stats13158 : actualRows13158.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13158=7428 := by core033_kernel_decide
theorem rows13159 : actualRows13159=WordField.canonicalRows actualModulus 13159 (.bnot 267) := by core033_kernel_decide
theorem stats13159 : actualRows13159.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13159=6276 := by core033_kernel_decide
theorem rows13160 : actualRows13160=WordField.canonicalRows actualModulus 13160 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13160 : actualRows13160.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13160=2892 := by core033_kernel_decide
theorem rows13161 : actualRows13161=WordField.canonicalRows actualModulus 13161 (.badd 13159 13160) := by core033_kernel_decide
theorem stats13161 : actualRows13161.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13161=5388 := by core033_kernel_decide
theorem rows13162 : actualRows13162=WordField.canonicalRows actualModulus 13162 (.band 13161 12409) := by core033_kernel_decide
theorem stats13162 : actualRows13162.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13162=5124 := by core033_kernel_decide
theorem rows13163 : actualRows13163=WordField.canonicalRows actualModulus 13163 (.bnot 267) := by core033_kernel_decide
theorem stats13163 : actualRows13163.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13163=6276 := by core033_kernel_decide
theorem rows13164 : actualRows13164=WordField.canonicalRows actualModulus 13164 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13164 : actualRows13164.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13164=2892 := by core033_kernel_decide
theorem rows13165 : actualRows13165=WordField.canonicalRows actualModulus 13165 (.badd 13163 13164) := by core033_kernel_decide
theorem stats13165 : actualRows13165.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13165=5388 := by core033_kernel_decide
theorem rows13166 : actualRows13166=WordField.canonicalRows actualModulus 13166 (.bnot 13165) := by core033_kernel_decide
theorem stats13166 : actualRows13166.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13166=6276 := by core033_kernel_decide
theorem rows13167 : actualRows13167=WordField.canonicalRows actualModulus 13167 (.band 13166 65) := by core033_kernel_decide
theorem stats13167 : actualRows13167.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13167=5124 := by core033_kernel_decide
theorem rows13168 : actualRows13168=WordField.canonicalRows actualModulus 13168 (.bxor 13162 13167) := by core033_kernel_decide
theorem stats13168 : actualRows13168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13168=7428 := by core033_kernel_decide
theorem rows13169 : actualRows13169=WordField.canonicalRows actualModulus 13169 (.bnot 267) := by core033_kernel_decide
theorem stats13169 : actualRows13169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13169=6276 := by core033_kernel_decide
theorem rows13170 : actualRows13170=WordField.canonicalRows actualModulus 13170 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13170 : actualRows13170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13170=2892 := by core033_kernel_decide
theorem rows13171 : actualRows13171=WordField.canonicalRows actualModulus 13171 (.badd 13169 13170) := by core033_kernel_decide
theorem stats13171 : actualRows13171.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13171=5388 := by core033_kernel_decide
theorem rows13172 : actualRows13172=WordField.canonicalRows actualModulus 13172 (.band 13171 12513) := by core033_kernel_decide
theorem stats13172 : actualRows13172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13172=5124 := by core033_kernel_decide
theorem rows13173 : actualRows13173=WordField.canonicalRows actualModulus 13173 (.bnot 267) := by core033_kernel_decide
theorem stats13173 : actualRows13173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13173=6276 := by core033_kernel_decide
theorem rows13174 : actualRows13174=WordField.canonicalRows actualModulus 13174 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13174 : actualRows13174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13174=2892 := by core033_kernel_decide
theorem rows13175 : actualRows13175=WordField.canonicalRows actualModulus 13175 (.badd 13173 13174) := by core033_kernel_decide
theorem stats13175 : actualRows13175.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13175=5388 := by core033_kernel_decide
theorem rows13176 : actualRows13176=WordField.canonicalRows actualModulus 13176 (.bnot 13175) := by core033_kernel_decide
theorem stats13176 : actualRows13176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13176=6276 := by core033_kernel_decide
theorem rows13177 : actualRows13177=WordField.canonicalRows actualModulus 13177 (.band 13176 66) := by core033_kernel_decide
theorem stats13177 : actualRows13177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13177=5124 := by core033_kernel_decide
theorem rows13178 : actualRows13178=WordField.canonicalRows actualModulus 13178 (.bxor 13172 13177) := by core033_kernel_decide
theorem stats13178 : actualRows13178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13178=7428 := by core033_kernel_decide
theorem rows13179 : actualRows13179=WordField.canonicalRows actualModulus 13179 (.bnot 288) := by core033_kernel_decide
theorem stats13179 : actualRows13179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13179=6276 := by core033_kernel_decide
theorem rows13180 : actualRows13180=WordField.canonicalRows actualModulus 13180 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13180 : actualRows13180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13180=2892 := by core033_kernel_decide
theorem rows13181 : actualRows13181=WordField.canonicalRows actualModulus 13181 (.badd 13179 13180) := by core033_kernel_decide
theorem stats13181 : actualRows13181.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13181=5388 := by core033_kernel_decide
theorem rows13182 : actualRows13182=WordField.canonicalRows actualModulus 13182 (.band 13181 11369) := by core033_kernel_decide
theorem stats13182 : actualRows13182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13182=5124 := by core033_kernel_decide
theorem rows13183 : actualRows13183=WordField.canonicalRows actualModulus 13183 (.bnot 288) := by core033_kernel_decide
theorem stats13183 : actualRows13183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13183=6276 := by core033_kernel_decide
theorem rows13184 : actualRows13184=WordField.canonicalRows actualModulus 13184 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13184 : actualRows13184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13184=2892 := by core033_kernel_decide
theorem rows13185 : actualRows13185=WordField.canonicalRows actualModulus 13185 (.badd 13183 13184) := by core033_kernel_decide
theorem stats13185 : actualRows13185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13185=5388 := by core033_kernel_decide
theorem rows13186 : actualRows13186=WordField.canonicalRows actualModulus 13186 (.bnot 13185) := by core033_kernel_decide
theorem stats13186 : actualRows13186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13186=6276 := by core033_kernel_decide
theorem rows13187 : actualRows13187=WordField.canonicalRows actualModulus 13187 (.band 13186 67) := by core033_kernel_decide
theorem stats13187 : actualRows13187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13187=5124 := by core033_kernel_decide
theorem rows13188 : actualRows13188=WordField.canonicalRows actualModulus 13188 (.bxor 13182 13187) := by core033_kernel_decide
theorem stats13188 : actualRows13188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13188=7428 := by core033_kernel_decide
theorem rows13189 : actualRows13189=WordField.canonicalRows actualModulus 13189 (.bnot 288) := by core033_kernel_decide
theorem stats13189 : actualRows13189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13189=6276 := by core033_kernel_decide
theorem rows13190 : actualRows13190=WordField.canonicalRows actualModulus 13190 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13190 : actualRows13190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13190=2892 := by core033_kernel_decide
theorem rows13191 : actualRows13191=WordField.canonicalRows actualModulus 13191 (.badd 13189 13190) := by core033_kernel_decide
theorem stats13191 : actualRows13191.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13191=5388 := by core033_kernel_decide
theorem rows13192 : actualRows13192=WordField.canonicalRows actualModulus 13192 (.band 13191 11421) := by core033_kernel_decide
theorem stats13192 : actualRows13192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13192=5124 := by core033_kernel_decide
theorem rows13193 : actualRows13193=WordField.canonicalRows actualModulus 13193 (.bnot 288) := by core033_kernel_decide
theorem stats13193 : actualRows13193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13193=6276 := by core033_kernel_decide
theorem rows13194 : actualRows13194=WordField.canonicalRows actualModulus 13194 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13194 : actualRows13194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13194=2892 := by core033_kernel_decide
theorem rows13195 : actualRows13195=WordField.canonicalRows actualModulus 13195 (.badd 13193 13194) := by core033_kernel_decide
theorem stats13195 : actualRows13195.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13195=5388 := by core033_kernel_decide
theorem rows13196 : actualRows13196=WordField.canonicalRows actualModulus 13196 (.bnot 13195) := by core033_kernel_decide
theorem stats13196 : actualRows13196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13196=6276 := by core033_kernel_decide
theorem rows13197 : actualRows13197=WordField.canonicalRows actualModulus 13197 (.band 13196 68) := by core033_kernel_decide
theorem stats13197 : actualRows13197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13197=5124 := by core033_kernel_decide
theorem rows13198 : actualRows13198=WordField.canonicalRows actualModulus 13198 (.bxor 13192 13197) := by core033_kernel_decide
theorem stats13198 : actualRows13198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13198=7428 := by core033_kernel_decide
theorem rows13199 : actualRows13199=WordField.canonicalRows actualModulus 13199 (.bnot 288) := by core033_kernel_decide
theorem stats13199 : actualRows13199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13199=6276 := by core033_kernel_decide
theorem rows13200 : actualRows13200=WordField.canonicalRows actualModulus 13200 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13200 : actualRows13200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13200=2892 := by core033_kernel_decide
theorem rows13201 : actualRows13201=WordField.canonicalRows actualModulus 13201 (.badd 13199 13200) := by core033_kernel_decide
theorem stats13201 : actualRows13201.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13201=5388 := by core033_kernel_decide
theorem rows13202 : actualRows13202=WordField.canonicalRows actualModulus 13202 (.band 13201 11473) := by core033_kernel_decide
theorem stats13202 : actualRows13202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13202=5124 := by core033_kernel_decide
theorem rows13203 : actualRows13203=WordField.canonicalRows actualModulus 13203 (.bnot 288) := by core033_kernel_decide
theorem stats13203 : actualRows13203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13203=6276 := by core033_kernel_decide
theorem rows13204 : actualRows13204=WordField.canonicalRows actualModulus 13204 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13204 : actualRows13204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13204=2892 := by core033_kernel_decide
theorem rows13205 : actualRows13205=WordField.canonicalRows actualModulus 13205 (.badd 13203 13204) := by core033_kernel_decide
theorem stats13205 : actualRows13205.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13205=5388 := by core033_kernel_decide
theorem rows13206 : actualRows13206=WordField.canonicalRows actualModulus 13206 (.bnot 13205) := by core033_kernel_decide
theorem stats13206 : actualRows13206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13206=6276 := by core033_kernel_decide
theorem rows13207 : actualRows13207=WordField.canonicalRows actualModulus 13207 (.band 13206 69) := by core033_kernel_decide
theorem stats13207 : actualRows13207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13207=5124 := by core033_kernel_decide
theorem rows13208 : actualRows13208=WordField.canonicalRows actualModulus 13208 (.bxor 13202 13207) := by core033_kernel_decide
theorem stats13208 : actualRows13208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13208=7428 := by core033_kernel_decide
theorem rows13209 : actualRows13209=WordField.canonicalRows actualModulus 13209 (.bnot 288) := by core033_kernel_decide
theorem stats13209 : actualRows13209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13209=6276 := by core033_kernel_decide
theorem rows13210 : actualRows13210=WordField.canonicalRows actualModulus 13210 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13210 : actualRows13210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13210=2892 := by core033_kernel_decide
theorem rows13211 : actualRows13211=WordField.canonicalRows actualModulus 13211 (.badd 13209 13210) := by core033_kernel_decide
theorem stats13211 : actualRows13211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13211=5388 := by core033_kernel_decide
theorem rows13212 : actualRows13212=WordField.canonicalRows actualModulus 13212 (.band 13211 11525) := by core033_kernel_decide
theorem stats13212 : actualRows13212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13212=5124 := by core033_kernel_decide
theorem rows13213 : actualRows13213=WordField.canonicalRows actualModulus 13213 (.bnot 288) := by core033_kernel_decide
theorem stats13213 : actualRows13213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13213=6276 := by core033_kernel_decide
theorem rows13214 : actualRows13214=WordField.canonicalRows actualModulus 13214 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13214 : actualRows13214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13214=2892 := by core033_kernel_decide
theorem rows13215 : actualRows13215=WordField.canonicalRows actualModulus 13215 (.badd 13213 13214) := by core033_kernel_decide
theorem stats13215 : actualRows13215.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13215=5388 := by core033_kernel_decide
def partRows204 : List R1CS.Row := actualRows13152++actualRows13153++actualRows13154++actualRows13155++actualRows13156++actualRows13157++actualRows13158++actualRows13159++actualRows13160++actualRows13161++actualRows13162++actualRows13163++actualRows13164++actualRows13165++actualRows13166++actualRows13167++actualRows13168++actualRows13169++actualRows13170++actualRows13171++actualRows13172++actualRows13173++actualRows13174++actualRows13175++actualRows13176++actualRows13177++actualRows13178++actualRows13179++actualRows13180++actualRows13181++actualRows13182++actualRows13183++actualRows13184++actualRows13185++actualRows13186++actualRows13187++actualRows13188++actualRows13189++actualRows13190++actualRows13191++actualRows13192++actualRows13193++actualRows13194++actualRows13195++actualRows13196++actualRows13197++actualRows13198++actualRows13199++actualRows13200++actualRows13201++actualRows13202++actualRows13203++actualRows13204++actualRows13205++actualRows13206++actualRows13207++actualRows13208++actualRows13209++actualRows13210++actualRows13211++actualRows13212++actualRows13213++actualRows13214++actualRows13215
def partOps204 : List WordIR.Op := [.band 13151 12253,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13153 13154,.bnot 13155,.band 13156 64,.bxor 13152 13157,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13159 13160,.band 13161 12409,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13163 13164,.bnot 13165,.band 13166 65,.bxor 13162 13167,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13169 13170,.band 13171 12513,.bnot 267,.literal (BitVec.ofNat 32 1),.badd 13173 13174,.bnot 13175,.band 13176 66,.bxor 13172 13177,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13179 13180,.band 13181 11369,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13183 13184,.bnot 13185,.band 13186 67,.bxor 13182 13187,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13189 13190,.band 13191 11421,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13193 13194,.bnot 13195,.band 13196 68,.bxor 13192 13197,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13199 13200,.band 13201 11473,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13203 13204,.bnot 13205,.band 13206 69,.bxor 13202 13207,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13209 13210,.band 13211 11525,.bnot 288,.literal (BitVec.ofNat 32 1),.badd 13213 13214]
theorem partExact204 : partRows204=WordField.rows actualModulus 13152 partOps204 := by
  simp only [partRows204,partOps204,WordField.rows,rows13152,rows13153,rows13154,rows13155,rows13156,rows13157,rows13158,rows13159,rows13160,rows13161,rows13162,rows13163,rows13164,rows13165,rows13166,rows13167,rows13168,rows13169,rows13170,rows13171,rows13172,rows13173,rows13174,rows13175,rows13176,rows13177,rows13178,rows13179,rows13180,rows13181,rows13182,rows13183,rows13184,rows13185,rows13186,rows13187,rows13188,rows13189,rows13190,rows13191,rows13192,rows13193,rows13194,rows13195,rows13196,rows13197,rows13198,rows13199,rows13200,rows13201,rows13202,rows13203,rows13204,rows13205,rows13206,rows13207,rows13208,rows13209,rows13210,rows13211,rows13212,rows13213,rows13214,rows13215,List.append_assoc,List.append_nil]
theorem partLength204 : partOps204.length=64 := by decide
theorem partStats204 : partRows204.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows204=338064 := by
  simp only [partRows204,List.length_append,MatrixRowBlocks.rows_weight_append,stats13152.1,stats13152.2,stats13153.1,stats13153.2,stats13154.1,stats13154.2,stats13155.1,stats13155.2,stats13156.1,stats13156.2,stats13157.1,stats13157.2,stats13158.1,stats13158.2,stats13159.1,stats13159.2,stats13160.1,stats13160.2,stats13161.1,stats13161.2,stats13162.1,stats13162.2,stats13163.1,stats13163.2,stats13164.1,stats13164.2,stats13165.1,stats13165.2,stats13166.1,stats13166.2,stats13167.1,stats13167.2,stats13168.1,stats13168.2,stats13169.1,stats13169.2,stats13170.1,stats13170.2,stats13171.1,stats13171.2,stats13172.1,stats13172.2,stats13173.1,stats13173.2,stats13174.1,stats13174.2,stats13175.1,stats13175.2,stats13176.1,stats13176.2,stats13177.1,stats13177.2,stats13178.1,stats13178.2,stats13179.1,stats13179.2,stats13180.1,stats13180.2,stats13181.1,stats13181.2,stats13182.1,stats13182.2,stats13183.1,stats13183.2,stats13184.1,stats13184.2,stats13185.1,stats13185.2,stats13186.1,stats13186.2,stats13187.1,stats13187.2,stats13188.1,stats13188.2,stats13189.1,stats13189.2,stats13190.1,stats13190.2,stats13191.1,stats13191.2,stats13192.1,stats13192.2,stats13193.1,stats13193.2,stats13194.1,stats13194.2,stats13195.1,stats13195.2,stats13196.1,stats13196.2,stats13197.1,stats13197.2,stats13198.1,stats13198.2,stats13199.1,stats13199.2,stats13200.1,stats13200.2,stats13201.1,stats13201.2,stats13202.1,stats13202.2,stats13203.1,stats13203.2,stats13204.1,stats13204.2,stats13205.1,stats13205.2,stats13206.1,stats13206.2,stats13207.1,stats13207.2,stats13208.1,stats13208.2,stats13209.1,stats13209.2,stats13210.1,stats13210.2,stats13211.1,stats13211.2,stats13212.1,stats13212.2,stats13213.1,stats13213.2,stats13214.1,stats13214.2,stats13215.1,stats13215.2]
  decide
end PairedPathRoundCheckedRows
