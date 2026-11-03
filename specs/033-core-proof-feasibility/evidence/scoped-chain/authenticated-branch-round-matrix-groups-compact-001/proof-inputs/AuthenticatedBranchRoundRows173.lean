import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData174
import AuthenticatedBranchRoundInstructionMatrixData175
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11190 : actualRows11190=WordField.canonicalRows actualModulus 11190 (.band 11185 11189) := by core033_kernel_decide
theorem stats11190 : actualRows11190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11190=5124 := by core033_kernel_decide
theorem rows11191 : actualRows11191=WordField.canonicalRows actualModulus 11191 (.bxor 11182 11190) := by core033_kernel_decide
theorem stats11191 : actualRows11191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11191=7428 := by core033_kernel_decide
theorem rows11192 : actualRows11192=WordField.canonicalRows actualModulus 11192 (.shr 11191 31) := by core033_kernel_decide
theorem stats11192 : actualRows11192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11192=2892 := by core033_kernel_decide
theorem rows11193 : actualRows11193=WordField.canonicalRows actualModulus 11193 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11193 : actualRows11193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11193=2892 := by core033_kernel_decide
theorem rows11194 : actualRows11194=WordField.canonicalRows actualModulus 11194 (.bxor 11192 11193) := by core033_kernel_decide
theorem stats11194 : actualRows11194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11194=7428 := by core033_kernel_decide
theorem rows11195 : actualRows11195=WordField.canonicalRows actualModulus 11195 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats11195 : actualRows11195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11195=2892 := by core033_kernel_decide
theorem rows11196 : actualRows11196=WordField.canonicalRows actualModulus 11196 (.bnot 11195) := by core033_kernel_decide
theorem stats11196 : actualRows11196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11196=6276 := by core033_kernel_decide
theorem rows11197 : actualRows11197=WordField.canonicalRows actualModulus 11197 (.band 10939 11196) := by core033_kernel_decide
theorem stats11197 : actualRows11197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11197=5124 := by core033_kernel_decide
theorem rows11198 : actualRows11198=WordField.canonicalRows actualModulus 11198 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats11198 : actualRows11198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11198=2892 := by core033_kernel_decide
theorem rows11199 : actualRows11199=WordField.canonicalRows actualModulus 11199 (.bnot 11198) := by core033_kernel_decide
theorem stats11199 : actualRows11199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11199=6276 := by core033_kernel_decide
theorem rows11200 : actualRows11200=WordField.canonicalRows actualModulus 11200 (.bxor 10939 11199) := by core033_kernel_decide
theorem stats11200 : actualRows11200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11200=7428 := by core033_kernel_decide
theorem rows11201 : actualRows11201=WordField.canonicalRows actualModulus 11201 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats11201 : actualRows11201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11201=2892 := by core033_kernel_decide
theorem rows11202 : actualRows11202=WordField.canonicalRows actualModulus 11202 (.bnot 11201) := by core033_kernel_decide
theorem stats11202 : actualRows11202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11202=6276 := by core033_kernel_decide
theorem rows11203 : actualRows11203=WordField.canonicalRows actualModulus 11203 (.badd 10939 11202) := by core033_kernel_decide
theorem stats11203 : actualRows11203.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11203=5388 := by core033_kernel_decide
theorem rows11204 : actualRows11204=WordField.canonicalRows actualModulus 11204 (.bnot 11203) := by core033_kernel_decide
theorem stats11204 : actualRows11204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11204=6276 := by core033_kernel_decide
theorem rows11205 : actualRows11205=WordField.canonicalRows actualModulus 11205 (.band 11200 11204) := by core033_kernel_decide
theorem stats11205 : actualRows11205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11205=5124 := by core033_kernel_decide
theorem rows11206 : actualRows11206=WordField.canonicalRows actualModulus 11206 (.bxor 11197 11205) := by core033_kernel_decide
theorem stats11206 : actualRows11206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11206=7428 := by core033_kernel_decide
theorem rows11207 : actualRows11207=WordField.canonicalRows actualModulus 11207 (.shr 11206 31) := by core033_kernel_decide
theorem stats11207 : actualRows11207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11207=2892 := by core033_kernel_decide
theorem rows11208 : actualRows11208=WordField.canonicalRows actualModulus 11208 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11208 : actualRows11208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11208=2892 := by core033_kernel_decide
theorem rows11209 : actualRows11209=WordField.canonicalRows actualModulus 11209 (.bxor 11207 11208) := by core033_kernel_decide
theorem stats11209 : actualRows11209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11209=7428 := by core033_kernel_decide
theorem rows11210 : actualRows11210=WordField.canonicalRows actualModulus 11210 (.band 11194 11209) := by core033_kernel_decide
theorem stats11210 : actualRows11210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11210=5124 := by core033_kernel_decide
theorem rows11211 : actualRows11211=WordField.canonicalRows actualModulus 11211 (.band 11179 11210) := by core033_kernel_decide
theorem stats11211 : actualRows11211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11211=5124 := by core033_kernel_decide
theorem rows11212 : actualRows11212=WordField.canonicalRows actualModulus 11212 (.badd 10928 10950) := by core033_kernel_decide
theorem stats11212 : actualRows11212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11212=5388 := by core033_kernel_decide
theorem rows11213 : actualRows11213=WordField.canonicalRows actualModulus 11213 (.band 10917 10939) := by core033_kernel_decide
theorem stats11213 : actualRows11213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11213=5124 := by core033_kernel_decide
theorem rows11214 : actualRows11214=WordField.canonicalRows actualModulus 11214 (.bxor 10917 10939) := by core033_kernel_decide
theorem stats11214 : actualRows11214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11214=7428 := by core033_kernel_decide
theorem rows11215 : actualRows11215=WordField.canonicalRows actualModulus 11215 (.badd 10917 10939) := by core033_kernel_decide
theorem stats11215 : actualRows11215.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11215=5388 := by core033_kernel_decide
theorem rows11216 : actualRows11216=WordField.canonicalRows actualModulus 11216 (.bnot 11215) := by core033_kernel_decide
theorem stats11216 : actualRows11216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11216=6276 := by core033_kernel_decide
theorem rows11217 : actualRows11217=WordField.canonicalRows actualModulus 11217 (.band 11214 11216) := by core033_kernel_decide
theorem stats11217 : actualRows11217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11217=5124 := by core033_kernel_decide
theorem rows11218 : actualRows11218=WordField.canonicalRows actualModulus 11218 (.bxor 11213 11217) := by core033_kernel_decide
theorem stats11218 : actualRows11218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11218=7428 := by core033_kernel_decide
theorem rows11219 : actualRows11219=WordField.canonicalRows actualModulus 11219 (.shr 11218 31) := by core033_kernel_decide
theorem stats11219 : actualRows11219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11219=2892 := by core033_kernel_decide
theorem rows11220 : actualRows11220=WordField.canonicalRows actualModulus 11220 (.badd 11212 11219) := by core033_kernel_decide
theorem stats11220 : actualRows11220.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11220=5388 := by core033_kernel_decide
theorem rows11221 : actualRows11221=WordField.canonicalRows actualModulus 11221 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11221 : actualRows11221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11221=2820 := by core033_kernel_decide
theorem rows11222 : actualRows11222=WordField.canonicalRows actualModulus 11222 (.bnot 11221) := by core033_kernel_decide
theorem stats11222 : actualRows11222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11222=6276 := by core033_kernel_decide
theorem rows11223 : actualRows11223=WordField.canonicalRows actualModulus 11223 (.band 11220 11222) := by core033_kernel_decide
theorem stats11223 : actualRows11223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11223=5124 := by core033_kernel_decide
theorem rows11224 : actualRows11224=WordField.canonicalRows actualModulus 11224 (.badd 10928 10950) := by core033_kernel_decide
theorem stats11224 : actualRows11224.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11224=5388 := by core033_kernel_decide
theorem rows11225 : actualRows11225=WordField.canonicalRows actualModulus 11225 (.band 10917 10939) := by core033_kernel_decide
theorem stats11225 : actualRows11225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11225=5124 := by core033_kernel_decide
theorem rows11226 : actualRows11226=WordField.canonicalRows actualModulus 11226 (.bxor 10917 10939) := by core033_kernel_decide
theorem stats11226 : actualRows11226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11226=7428 := by core033_kernel_decide
theorem rows11227 : actualRows11227=WordField.canonicalRows actualModulus 11227 (.badd 10917 10939) := by core033_kernel_decide
theorem stats11227 : actualRows11227.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11227=5388 := by core033_kernel_decide
theorem rows11228 : actualRows11228=WordField.canonicalRows actualModulus 11228 (.bnot 11227) := by core033_kernel_decide
theorem stats11228 : actualRows11228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11228=6276 := by core033_kernel_decide
theorem rows11229 : actualRows11229=WordField.canonicalRows actualModulus 11229 (.band 11226 11228) := by core033_kernel_decide
theorem stats11229 : actualRows11229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11229=5124 := by core033_kernel_decide
theorem rows11230 : actualRows11230=WordField.canonicalRows actualModulus 11230 (.bxor 11225 11229) := by core033_kernel_decide
theorem stats11230 : actualRows11230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11230=7428 := by core033_kernel_decide
theorem rows11231 : actualRows11231=WordField.canonicalRows actualModulus 11231 (.shr 11230 31) := by core033_kernel_decide
theorem stats11231 : actualRows11231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11231=2892 := by core033_kernel_decide
theorem rows11232 : actualRows11232=WordField.canonicalRows actualModulus 11232 (.badd 11224 11231) := by core033_kernel_decide
theorem stats11232 : actualRows11232.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11232=5388 := by core033_kernel_decide
theorem rows11233 : actualRows11233=WordField.canonicalRows actualModulus 11233 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11233 : actualRows11233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11233=2820 := by core033_kernel_decide
theorem rows11234 : actualRows11234=WordField.canonicalRows actualModulus 11234 (.bnot 11233) := by core033_kernel_decide
theorem stats11234 : actualRows11234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11234=6276 := by core033_kernel_decide
theorem rows11235 : actualRows11235=WordField.canonicalRows actualModulus 11235 (.bxor 11232 11234) := by core033_kernel_decide
theorem stats11235 : actualRows11235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11235=7428 := by core033_kernel_decide
theorem rows11236 : actualRows11236=WordField.canonicalRows actualModulus 11236 (.badd 10928 10950) := by core033_kernel_decide
theorem stats11236 : actualRows11236.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11236=5388 := by core033_kernel_decide
theorem rows11237 : actualRows11237=WordField.canonicalRows actualModulus 11237 (.band 10917 10939) := by core033_kernel_decide
theorem stats11237 : actualRows11237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11237=5124 := by core033_kernel_decide
theorem rows11238 : actualRows11238=WordField.canonicalRows actualModulus 11238 (.bxor 10917 10939) := by core033_kernel_decide
theorem stats11238 : actualRows11238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11238=7428 := by core033_kernel_decide
theorem rows11239 : actualRows11239=WordField.canonicalRows actualModulus 11239 (.badd 10917 10939) := by core033_kernel_decide
theorem stats11239 : actualRows11239.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11239=5388 := by core033_kernel_decide
theorem rows11240 : actualRows11240=WordField.canonicalRows actualModulus 11240 (.bnot 11239) := by core033_kernel_decide
theorem stats11240 : actualRows11240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11240=6276 := by core033_kernel_decide
theorem rows11241 : actualRows11241=WordField.canonicalRows actualModulus 11241 (.band 11238 11240) := by core033_kernel_decide
theorem stats11241 : actualRows11241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11241=5124 := by core033_kernel_decide
theorem rows11242 : actualRows11242=WordField.canonicalRows actualModulus 11242 (.bxor 11237 11241) := by core033_kernel_decide
theorem stats11242 : actualRows11242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11242=7428 := by core033_kernel_decide
theorem rows11243 : actualRows11243=WordField.canonicalRows actualModulus 11243 (.shr 11242 31) := by core033_kernel_decide
theorem stats11243 : actualRows11243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11243=2892 := by core033_kernel_decide
theorem rows11244 : actualRows11244=WordField.canonicalRows actualModulus 11244 (.badd 11236 11243) := by core033_kernel_decide
theorem stats11244 : actualRows11244.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11244=5388 := by core033_kernel_decide
theorem rows11245 : actualRows11245=WordField.canonicalRows actualModulus 11245 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11245 : actualRows11245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11245=2820 := by core033_kernel_decide
theorem rows11246 : actualRows11246=WordField.canonicalRows actualModulus 11246 (.bnot 11245) := by core033_kernel_decide
theorem stats11246 : actualRows11246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11246=6276 := by core033_kernel_decide
theorem rows11247 : actualRows11247=WordField.canonicalRows actualModulus 11247 (.badd 11244 11246) := by core033_kernel_decide
theorem stats11247 : actualRows11247.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11247=5388 := by core033_kernel_decide
theorem rows11248 : actualRows11248=WordField.canonicalRows actualModulus 11248 (.bnot 11247) := by core033_kernel_decide
theorem stats11248 : actualRows11248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11248=6276 := by core033_kernel_decide
theorem rows11249 : actualRows11249=WordField.canonicalRows actualModulus 11249 (.band 11235 11248) := by core033_kernel_decide
theorem stats11249 : actualRows11249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11249=5124 := by core033_kernel_decide
theorem rows11250 : actualRows11250=WordField.canonicalRows actualModulus 11250 (.bxor 11223 11249) := by core033_kernel_decide
theorem stats11250 : actualRows11250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11250=7428 := by core033_kernel_decide
theorem rows11251 : actualRows11251=WordField.canonicalRows actualModulus 11251 (.shr 11250 31) := by core033_kernel_decide
theorem stats11251 : actualRows11251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11251=2892 := by core033_kernel_decide
theorem rows11252 : actualRows11252=WordField.canonicalRows actualModulus 11252 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11252 : actualRows11252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11252=2892 := by core033_kernel_decide
theorem rows11253 : actualRows11253=WordField.canonicalRows actualModulus 11253 (.bxor 11251 11252) := by core033_kernel_decide
theorem stats11253 : actualRows11253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11253=7428 := by core033_kernel_decide
def partRows173 : List R1CS.Row := actualRows11190++actualRows11191++actualRows11192++actualRows11193++actualRows11194++actualRows11195++actualRows11196++actualRows11197++actualRows11198++actualRows11199++actualRows11200++actualRows11201++actualRows11202++actualRows11203++actualRows11204++actualRows11205++actualRows11206++actualRows11207++actualRows11208++actualRows11209++actualRows11210++actualRows11211++actualRows11212++actualRows11213++actualRows11214++actualRows11215++actualRows11216++actualRows11217++actualRows11218++actualRows11219++actualRows11220++actualRows11221++actualRows11222++actualRows11223++actualRows11224++actualRows11225++actualRows11226++actualRows11227++actualRows11228++actualRows11229++actualRows11230++actualRows11231++actualRows11232++actualRows11233++actualRows11234++actualRows11235++actualRows11236++actualRows11237++actualRows11238++actualRows11239++actualRows11240++actualRows11241++actualRows11242++actualRows11243++actualRows11244++actualRows11245++actualRows11246++actualRows11247++actualRows11248++actualRows11249++actualRows11250++actualRows11251++actualRows11252++actualRows11253
def partOps173 : List WordIR.Op := [.band 11185 11189,.bxor 11182 11190,.shr 11191 31,.literal (BitVec.ofNat 32 1),.bxor 11192 11193,.literal (BitVec.ofNat 32 1048576),.bnot 11195,.band 10939 11196,.literal (BitVec.ofNat 32 1048576),.bnot 11198,.bxor 10939 11199,.literal (BitVec.ofNat 32 1048576),.bnot 11201,.badd 10939 11202,.bnot 11203,.band 11200 11204,.bxor 11197 11205,.shr 11206 31,.literal (BitVec.ofNat 32 1),.bxor 11207 11208,.band 11194 11209,.band 11179 11210,.badd 10928 10950,.band 10917 10939,.bxor 10917 10939,.badd 10917 10939,.bnot 11215,.band 11214 11216,.bxor 11213 11217,.shr 11218 31,.badd 11212 11219,.literal (BitVec.ofNat 32 0),.bnot 11221,.band 11220 11222,.badd 10928 10950,.band 10917 10939,.bxor 10917 10939,.badd 10917 10939,.bnot 11227,.band 11226 11228,.bxor 11225 11229,.shr 11230 31,.badd 11224 11231,.literal (BitVec.ofNat 32 0),.bnot 11233,.bxor 11232 11234,.badd 10928 10950,.band 10917 10939,.bxor 10917 10939,.badd 10917 10939,.bnot 11239,.band 11238 11240,.bxor 11237 11241,.shr 11242 31,.badd 11236 11243,.literal (BitVec.ofNat 32 0),.bnot 11245,.badd 11244 11246,.bnot 11247,.band 11235 11248,.bxor 11223 11249,.shr 11250 31,.literal (BitVec.ofNat 32 1),.bxor 11251 11252]
theorem partExact173 : partRows173=WordField.rows actualModulus 11190 partOps173 := by
  simp only [partRows173,partOps173,WordField.rows,rows11190,rows11191,rows11192,rows11193,rows11194,rows11195,rows11196,rows11197,rows11198,rows11199,rows11200,rows11201,rows11202,rows11203,rows11204,rows11205,rows11206,rows11207,rows11208,rows11209,rows11210,rows11211,rows11212,rows11213,rows11214,rows11215,rows11216,rows11217,rows11218,rows11219,rows11220,rows11221,rows11222,rows11223,rows11224,rows11225,rows11226,rows11227,rows11228,rows11229,rows11230,rows11231,rows11232,rows11233,rows11234,rows11235,rows11236,rows11237,rows11238,rows11239,rows11240,rows11241,rows11242,rows11243,rows11244,rows11245,rows11246,rows11247,rows11248,rows11249,rows11250,rows11251,rows11252,rows11253,List.append_assoc,List.append_nil]
theorem partLength173 : partOps173.length=64 := by decide
theorem partStats173 : partRows173.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows173=342072 := by
  simp only [partRows173,List.length_append,MatrixRowBlocks.rows_weight_append,stats11190.1,stats11190.2,stats11191.1,stats11191.2,stats11192.1,stats11192.2,stats11193.1,stats11193.2,stats11194.1,stats11194.2,stats11195.1,stats11195.2,stats11196.1,stats11196.2,stats11197.1,stats11197.2,stats11198.1,stats11198.2,stats11199.1,stats11199.2,stats11200.1,stats11200.2,stats11201.1,stats11201.2,stats11202.1,stats11202.2,stats11203.1,stats11203.2,stats11204.1,stats11204.2,stats11205.1,stats11205.2,stats11206.1,stats11206.2,stats11207.1,stats11207.2,stats11208.1,stats11208.2,stats11209.1,stats11209.2,stats11210.1,stats11210.2,stats11211.1,stats11211.2,stats11212.1,stats11212.2,stats11213.1,stats11213.2,stats11214.1,stats11214.2,stats11215.1,stats11215.2,stats11216.1,stats11216.2,stats11217.1,stats11217.2,stats11218.1,stats11218.2,stats11219.1,stats11219.2,stats11220.1,stats11220.2,stats11221.1,stats11221.2,stats11222.1,stats11222.2,stats11223.1,stats11223.2,stats11224.1,stats11224.2,stats11225.1,stats11225.2,stats11226.1,stats11226.2,stats11227.1,stats11227.2,stats11228.1,stats11228.2,stats11229.1,stats11229.2,stats11230.1,stats11230.2,stats11231.1,stats11231.2,stats11232.1,stats11232.2,stats11233.1,stats11233.2,stats11234.1,stats11234.2,stats11235.1,stats11235.2,stats11236.1,stats11236.2,stats11237.1,stats11237.2,stats11238.1,stats11238.2,stats11239.1,stats11239.2,stats11240.1,stats11240.2,stats11241.1,stats11241.2,stats11242.1,stats11242.2,stats11243.1,stats11243.2,stats11244.1,stats11244.2,stats11245.1,stats11245.2,stats11246.1,stats11246.2,stats11247.1,stats11247.2,stats11248.1,stats11248.2,stats11249.1,stats11249.2,stats11250.1,stats11250.2,stats11251.1,stats11251.2,stats11252.1,stats11252.2,stats11253.1,stats11253.2]
  decide
end AuthenticatedBranchRoundCheckedRows
