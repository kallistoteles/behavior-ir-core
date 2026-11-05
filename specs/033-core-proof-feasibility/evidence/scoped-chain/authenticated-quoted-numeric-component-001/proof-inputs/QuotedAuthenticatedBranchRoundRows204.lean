import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData205
import AuthenticatedBranchRoundInstructionMatrixData206
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13174 : actualRows13174=WordField.canonicalRows actualModulus 13174 (.band 13171 13173) := by core033_kernel_decide
theorem stats13174 : actualRows13174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13174=5124 := by core033_kernel_decide
theorem rows13175 : actualRows13175=WordField.canonicalRows actualModulus 13175 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13175 : actualRows13175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13175=2964 := by core033_kernel_decide
theorem rows13176 : actualRows13176=WordField.canonicalRows actualModulus 13176 (.bxor 693 13175) := by core033_kernel_decide
theorem stats13176 : actualRows13176.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13176=7428 := by core033_kernel_decide
theorem rows13177 : actualRows13177=WordField.canonicalRows actualModulus 13177 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13177 : actualRows13177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13177=2820 := by core033_kernel_decide
theorem rows13178 : actualRows13178=WordField.canonicalRows actualModulus 13178 (.bnot 13177) := by core033_kernel_decide
theorem stats13178 : actualRows13178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13178=6276 := by core033_kernel_decide
theorem rows13179 : actualRows13179=WordField.canonicalRows actualModulus 13179 (.bxor 13176 13178) := by core033_kernel_decide
theorem stats13179 : actualRows13179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13179=7428 := by core033_kernel_decide
theorem rows13180 : actualRows13180=WordField.canonicalRows actualModulus 13180 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13180 : actualRows13180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13180=2964 := by core033_kernel_decide
theorem rows13181 : actualRows13181=WordField.canonicalRows actualModulus 13181 (.bxor 693 13180) := by core033_kernel_decide
theorem stats13181 : actualRows13181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13181=7428 := by core033_kernel_decide
theorem rows13182 : actualRows13182=WordField.canonicalRows actualModulus 13182 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13182 : actualRows13182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13182=2820 := by core033_kernel_decide
theorem rows13183 : actualRows13183=WordField.canonicalRows actualModulus 13183 (.bnot 13182) := by core033_kernel_decide
theorem stats13183 : actualRows13183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13183=6276 := by core033_kernel_decide
theorem rows13184 : actualRows13184=WordField.canonicalRows actualModulus 13184 (.badd 13181 13183) := by core033_kernel_decide
theorem stats13184 : actualRows13184.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13184=5388 := by core033_kernel_decide
theorem rows13185 : actualRows13185=WordField.canonicalRows actualModulus 13185 (.bnot 13184) := by core033_kernel_decide
theorem stats13185 : actualRows13185.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13185=6276 := by core033_kernel_decide
theorem rows13186 : actualRows13186=WordField.canonicalRows actualModulus 13186 (.band 13179 13185) := by core033_kernel_decide
theorem stats13186 : actualRows13186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13186=5124 := by core033_kernel_decide
theorem rows13187 : actualRows13187=WordField.canonicalRows actualModulus 13187 (.bxor 13174 13186) := by core033_kernel_decide
theorem stats13187 : actualRows13187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13187=7428 := by core033_kernel_decide
theorem rows13188 : actualRows13188=WordField.canonicalRows actualModulus 13188 (.shr 13187 31) := by core033_kernel_decide
theorem stats13188 : actualRows13188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13188=2892 := by core033_kernel_decide
theorem rows13189 : actualRows13189=WordField.canonicalRows actualModulus 13189 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13189 : actualRows13189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13189=2892 := by core033_kernel_decide
theorem rows13190 : actualRows13190=WordField.canonicalRows actualModulus 13190 (.bxor 13188 13189) := by core033_kernel_decide
theorem stats13190 : actualRows13190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13190=7428 := by core033_kernel_decide
theorem rows13191 : actualRows13191=WordField.canonicalRows actualModulus 13191 (.bnot 13190) := by core033_kernel_decide
theorem stats13191 : actualRows13191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13191=6276 := by core033_kernel_decide
theorem rows13192 : actualRows13192=WordField.canonicalRows actualModulus 13192 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13192 : actualRows13192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13192=2892 := by core033_kernel_decide
theorem rows13193 : actualRows13193=WordField.canonicalRows actualModulus 13193 (.badd 13191 13192) := by core033_kernel_decide
theorem stats13193 : actualRows13193.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13193=5388 := by core033_kernel_decide
theorem rows13194 : actualRows13194=WordField.canonicalRows actualModulus 13194 (.bnot 13193) := by core033_kernel_decide
theorem stats13194 : actualRows13194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13194=6276 := by core033_kernel_decide
theorem rows13195 : actualRows13195=WordField.canonicalRows actualModulus 13195 (.band 13194 1662) := by core033_kernel_decide
theorem stats13195 : actualRows13195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13195=5124 := by core033_kernel_decide
theorem rows13196 : actualRows13196=WordField.canonicalRows actualModulus 13196 (.bxor 13169 13195) := by core033_kernel_decide
theorem stats13196 : actualRows13196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13196=7428 := by core033_kernel_decide
theorem rows13197 : actualRows13197=WordField.canonicalRows actualModulus 13197 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13197 : actualRows13197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13197=2964 := by core033_kernel_decide
theorem rows13198 : actualRows13198=WordField.canonicalRows actualModulus 13198 (.bxor 693 13197) := by core033_kernel_decide
theorem stats13198 : actualRows13198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13198=7428 := by core033_kernel_decide
theorem rows13199 : actualRows13199=WordField.canonicalRows actualModulus 13199 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13199 : actualRows13199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13199=2820 := by core033_kernel_decide
theorem rows13200 : actualRows13200=WordField.canonicalRows actualModulus 13200 (.bnot 13199) := by core033_kernel_decide
theorem stats13200 : actualRows13200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13200=6276 := by core033_kernel_decide
theorem rows13201 : actualRows13201=WordField.canonicalRows actualModulus 13201 (.band 13198 13200) := by core033_kernel_decide
theorem stats13201 : actualRows13201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13201=5124 := by core033_kernel_decide
theorem rows13202 : actualRows13202=WordField.canonicalRows actualModulus 13202 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13202 : actualRows13202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13202=2964 := by core033_kernel_decide
theorem rows13203 : actualRows13203=WordField.canonicalRows actualModulus 13203 (.bxor 693 13202) := by core033_kernel_decide
theorem stats13203 : actualRows13203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13203=7428 := by core033_kernel_decide
theorem rows13204 : actualRows13204=WordField.canonicalRows actualModulus 13204 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13204 : actualRows13204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13204=2820 := by core033_kernel_decide
theorem rows13205 : actualRows13205=WordField.canonicalRows actualModulus 13205 (.bnot 13204) := by core033_kernel_decide
theorem stats13205 : actualRows13205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13205=6276 := by core033_kernel_decide
theorem rows13206 : actualRows13206=WordField.canonicalRows actualModulus 13206 (.bxor 13203 13205) := by core033_kernel_decide
theorem stats13206 : actualRows13206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13206=7428 := by core033_kernel_decide
theorem rows13207 : actualRows13207=WordField.canonicalRows actualModulus 13207 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13207 : actualRows13207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13207=2964 := by core033_kernel_decide
theorem rows13208 : actualRows13208=WordField.canonicalRows actualModulus 13208 (.bxor 693 13207) := by core033_kernel_decide
theorem stats13208 : actualRows13208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13208=7428 := by core033_kernel_decide
theorem rows13209 : actualRows13209=WordField.canonicalRows actualModulus 13209 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13209 : actualRows13209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13209=2820 := by core033_kernel_decide
theorem rows13210 : actualRows13210=WordField.canonicalRows actualModulus 13210 (.bnot 13209) := by core033_kernel_decide
theorem stats13210 : actualRows13210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13210=6276 := by core033_kernel_decide
theorem rows13211 : actualRows13211=WordField.canonicalRows actualModulus 13211 (.badd 13208 13210) := by core033_kernel_decide
theorem stats13211 : actualRows13211.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13211=5388 := by core033_kernel_decide
theorem rows13212 : actualRows13212=WordField.canonicalRows actualModulus 13212 (.bnot 13211) := by core033_kernel_decide
theorem stats13212 : actualRows13212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13212=6276 := by core033_kernel_decide
theorem rows13213 : actualRows13213=WordField.canonicalRows actualModulus 13213 (.band 13206 13212) := by core033_kernel_decide
theorem stats13213 : actualRows13213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13213=5124 := by core033_kernel_decide
theorem rows13214 : actualRows13214=WordField.canonicalRows actualModulus 13214 (.bxor 13201 13213) := by core033_kernel_decide
theorem stats13214 : actualRows13214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13214=7428 := by core033_kernel_decide
theorem rows13215 : actualRows13215=WordField.canonicalRows actualModulus 13215 (.shr 13214 31) := by core033_kernel_decide
theorem stats13215 : actualRows13215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13215=2892 := by core033_kernel_decide
theorem rows13216 : actualRows13216=WordField.canonicalRows actualModulus 13216 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13216 : actualRows13216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13216=2892 := by core033_kernel_decide
theorem rows13217 : actualRows13217=WordField.canonicalRows actualModulus 13217 (.bxor 13215 13216) := by core033_kernel_decide
theorem stats13217 : actualRows13217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13217=7428 := by core033_kernel_decide
theorem rows13218 : actualRows13218=WordField.canonicalRows actualModulus 13218 (.bnot 13217) := by core033_kernel_decide
theorem stats13218 : actualRows13218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13218=6276 := by core033_kernel_decide
theorem rows13219 : actualRows13219=WordField.canonicalRows actualModulus 13219 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13219 : actualRows13219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13219=2892 := by core033_kernel_decide
theorem rows13220 : actualRows13220=WordField.canonicalRows actualModulus 13220 (.badd 13218 13219) := by core033_kernel_decide
theorem stats13220 : actualRows13220.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13220=5388 := by core033_kernel_decide
theorem rows13221 : actualRows13221=WordField.canonicalRows actualModulus 13221 (.band 13220 10994) := by core033_kernel_decide
theorem stats13221 : actualRows13221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13221=5124 := by core033_kernel_decide
theorem rows13222 : actualRows13222=WordField.canonicalRows actualModulus 13222 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13222 : actualRows13222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13222=2964 := by core033_kernel_decide
theorem rows13223 : actualRows13223=WordField.canonicalRows actualModulus 13223 (.bxor 693 13222) := by core033_kernel_decide
theorem stats13223 : actualRows13223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13223=7428 := by core033_kernel_decide
theorem rows13224 : actualRows13224=WordField.canonicalRows actualModulus 13224 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13224 : actualRows13224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13224=2820 := by core033_kernel_decide
theorem rows13225 : actualRows13225=WordField.canonicalRows actualModulus 13225 (.bnot 13224) := by core033_kernel_decide
theorem stats13225 : actualRows13225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13225=6276 := by core033_kernel_decide
theorem rows13226 : actualRows13226=WordField.canonicalRows actualModulus 13226 (.band 13223 13225) := by core033_kernel_decide
theorem stats13226 : actualRows13226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13226=5124 := by core033_kernel_decide
theorem rows13227 : actualRows13227=WordField.canonicalRows actualModulus 13227 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13227 : actualRows13227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13227=2964 := by core033_kernel_decide
theorem rows13228 : actualRows13228=WordField.canonicalRows actualModulus 13228 (.bxor 693 13227) := by core033_kernel_decide
theorem stats13228 : actualRows13228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13228=7428 := by core033_kernel_decide
theorem rows13229 : actualRows13229=WordField.canonicalRows actualModulus 13229 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13229 : actualRows13229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13229=2820 := by core033_kernel_decide
theorem rows13230 : actualRows13230=WordField.canonicalRows actualModulus 13230 (.bnot 13229) := by core033_kernel_decide
theorem stats13230 : actualRows13230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13230=6276 := by core033_kernel_decide
theorem rows13231 : actualRows13231=WordField.canonicalRows actualModulus 13231 (.bxor 13228 13230) := by core033_kernel_decide
theorem stats13231 : actualRows13231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13231=7428 := by core033_kernel_decide
theorem rows13232 : actualRows13232=WordField.canonicalRows actualModulus 13232 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13232 : actualRows13232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13232=2964 := by core033_kernel_decide
theorem rows13233 : actualRows13233=WordField.canonicalRows actualModulus 13233 (.bxor 693 13232) := by core033_kernel_decide
theorem stats13233 : actualRows13233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13233=7428 := by core033_kernel_decide
theorem rows13234 : actualRows13234=WordField.canonicalRows actualModulus 13234 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13234 : actualRows13234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13234=2820 := by core033_kernel_decide
theorem rows13235 : actualRows13235=WordField.canonicalRows actualModulus 13235 (.bnot 13234) := by core033_kernel_decide
theorem stats13235 : actualRows13235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13235=6276 := by core033_kernel_decide
theorem rows13236 : actualRows13236=WordField.canonicalRows actualModulus 13236 (.badd 13233 13235) := by core033_kernel_decide
theorem stats13236 : actualRows13236.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13236=5388 := by core033_kernel_decide
theorem rows13237 : actualRows13237=WordField.canonicalRows actualModulus 13237 (.bnot 13236) := by core033_kernel_decide
theorem stats13237 : actualRows13237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13237=6276 := by core033_kernel_decide
def partRows204 : List R1CS.Row := actualRows13174++actualRows13175++actualRows13176++actualRows13177++actualRows13178++actualRows13179++actualRows13180++actualRows13181++actualRows13182++actualRows13183++actualRows13184++actualRows13185++actualRows13186++actualRows13187++actualRows13188++actualRows13189++actualRows13190++actualRows13191++actualRows13192++actualRows13193++actualRows13194++actualRows13195++actualRows13196++actualRows13197++actualRows13198++actualRows13199++actualRows13200++actualRows13201++actualRows13202++actualRows13203++actualRows13204++actualRows13205++actualRows13206++actualRows13207++actualRows13208++actualRows13209++actualRows13210++actualRows13211++actualRows13212++actualRows13213++actualRows13214++actualRows13215++actualRows13216++actualRows13217++actualRows13218++actualRows13219++actualRows13220++actualRows13221++actualRows13222++actualRows13223++actualRows13224++actualRows13225++actualRows13226++actualRows13227++actualRows13228++actualRows13229++actualRows13230++actualRows13231++actualRows13232++actualRows13233++actualRows13234++actualRows13235++actualRows13236++actualRows13237
def partOps204 : List WordIR.Op := [.band 13171 13173,.literal (BitVec.ofNat 32 3),.bxor 693 13175,.literal (BitVec.ofNat 32 0),.bnot 13177,.bxor 13176 13178,.literal (BitVec.ofNat 32 3),.bxor 693 13180,.literal (BitVec.ofNat 32 0),.bnot 13182,.badd 13181 13183,.bnot 13184,.band 13179 13185,.bxor 13174 13186,.shr 13187 31,.literal (BitVec.ofNat 32 1),.bxor 13188 13189,.bnot 13190,.literal (BitVec.ofNat 32 1),.badd 13191 13192,.bnot 13193,.band 13194 1662,.bxor 13169 13195,.literal (BitVec.ofNat 32 3),.bxor 693 13197,.literal (BitVec.ofNat 32 0),.bnot 13199,.band 13198 13200,.literal (BitVec.ofNat 32 3),.bxor 693 13202,.literal (BitVec.ofNat 32 0),.bnot 13204,.bxor 13203 13205,.literal (BitVec.ofNat 32 3),.bxor 693 13207,.literal (BitVec.ofNat 32 0),.bnot 13209,.badd 13208 13210,.bnot 13211,.band 13206 13212,.bxor 13201 13213,.shr 13214 31,.literal (BitVec.ofNat 32 1),.bxor 13215 13216,.bnot 13217,.literal (BitVec.ofNat 32 1),.badd 13218 13219,.band 13220 10994,.literal (BitVec.ofNat 32 3),.bxor 693 13222,.literal (BitVec.ofNat 32 0),.bnot 13224,.band 13223 13225,.literal (BitVec.ofNat 32 3),.bxor 693 13227,.literal (BitVec.ofNat 32 0),.bnot 13229,.bxor 13228 13230,.literal (BitVec.ofNat 32 3),.bxor 693 13232,.literal (BitVec.ofNat 32 0),.bnot 13234,.badd 13233 13235,.bnot 13236]
theorem partExact204 : partRows204=WordField.rows actualModulus 13174 partOps204 := by
  simp only [partRows204,partOps204,WordField.rows,rows13174,rows13175,rows13176,rows13177,rows13178,rows13179,rows13180,rows13181,rows13182,rows13183,rows13184,rows13185,rows13186,rows13187,rows13188,rows13189,rows13190,rows13191,rows13192,rows13193,rows13194,rows13195,rows13196,rows13197,rows13198,rows13199,rows13200,rows13201,rows13202,rows13203,rows13204,rows13205,rows13206,rows13207,rows13208,rows13209,rows13210,rows13211,rows13212,rows13213,rows13214,rows13215,rows13216,rows13217,rows13218,rows13219,rows13220,rows13221,rows13222,rows13223,rows13224,rows13225,rows13226,rows13227,rows13228,rows13229,rows13230,rows13231,rows13232,rows13233,rows13234,rows13235,rows13236,rows13237,List.append_assoc,List.append_nil]
theorem partLength204 : partOps204.length=64 := by decide
theorem partStats204 : partRows204.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows204=333144 := by
  simp only [partRows204,List.length_append,MatrixRowBlocks.rows_weight_append,stats13174.1,stats13174.2,stats13175.1,stats13175.2,stats13176.1,stats13176.2,stats13177.1,stats13177.2,stats13178.1,stats13178.2,stats13179.1,stats13179.2,stats13180.1,stats13180.2,stats13181.1,stats13181.2,stats13182.1,stats13182.2,stats13183.1,stats13183.2,stats13184.1,stats13184.2,stats13185.1,stats13185.2,stats13186.1,stats13186.2,stats13187.1,stats13187.2,stats13188.1,stats13188.2,stats13189.1,stats13189.2,stats13190.1,stats13190.2,stats13191.1,stats13191.2,stats13192.1,stats13192.2,stats13193.1,stats13193.2,stats13194.1,stats13194.2,stats13195.1,stats13195.2,stats13196.1,stats13196.2,stats13197.1,stats13197.2,stats13198.1,stats13198.2,stats13199.1,stats13199.2,stats13200.1,stats13200.2,stats13201.1,stats13201.2,stats13202.1,stats13202.2,stats13203.1,stats13203.2,stats13204.1,stats13204.2,stats13205.1,stats13205.2,stats13206.1,stats13206.2,stats13207.1,stats13207.2,stats13208.1,stats13208.2,stats13209.1,stats13209.2,stats13210.1,stats13210.2,stats13211.1,stats13211.2,stats13212.1,stats13212.2,stats13213.1,stats13213.2,stats13214.1,stats13214.2,stats13215.1,stats13215.2,stats13216.1,stats13216.2,stats13217.1,stats13217.2,stats13218.1,stats13218.2,stats13219.1,stats13219.2,stats13220.1,stats13220.2,stats13221.1,stats13221.2,stats13222.1,stats13222.2,stats13223.1,stats13223.2,stats13224.1,stats13224.2,stats13225.1,stats13225.2,stats13226.1,stats13226.2,stats13227.1,stats13227.2,stats13228.1,stats13228.2,stats13229.1,stats13229.2,stats13230.1,stats13230.2,stats13231.1,stats13231.2,stats13232.1,stats13232.2,stats13233.1,stats13233.2,stats13234.1,stats13234.2,stats13235.1,stats13235.2,stats13236.1,stats13236.2,stats13237.1,stats13237.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
