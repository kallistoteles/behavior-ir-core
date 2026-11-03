import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData174
import PairedPathRoundInstructionMatrixData175
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11168 : actualRows11168=WordField.canonicalRows actualModulus 11168 (.bxor 442 11167) := by core033_kernel_decide
theorem stats11168 : actualRows11168.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11168=7428 := by core033_kernel_decide
theorem rows11169 : actualRows11169=WordField.canonicalRows actualModulus 11169 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11169 : actualRows11169.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11169=2820 := by core033_kernel_decide
theorem rows11170 : actualRows11170=WordField.canonicalRows actualModulus 11170 (.bnot 11169) := by core033_kernel_decide
theorem stats11170 : actualRows11170.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11170=6276 := by core033_kernel_decide
theorem rows11171 : actualRows11171=WordField.canonicalRows actualModulus 11171 (.bxor 11168 11170) := by core033_kernel_decide
theorem stats11171 : actualRows11171.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11171=7428 := by core033_kernel_decide
theorem rows11172 : actualRows11172=WordField.canonicalRows actualModulus 11172 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11172 : actualRows11172.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11172=2964 := by core033_kernel_decide
theorem rows11173 : actualRows11173=WordField.canonicalRows actualModulus 11173 (.bxor 442 11172) := by core033_kernel_decide
theorem stats11173 : actualRows11173.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11173=7428 := by core033_kernel_decide
theorem rows11174 : actualRows11174=WordField.canonicalRows actualModulus 11174 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11174 : actualRows11174.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11174=2820 := by core033_kernel_decide
theorem rows11175 : actualRows11175=WordField.canonicalRows actualModulus 11175 (.bnot 11174) := by core033_kernel_decide
theorem stats11175 : actualRows11175.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11175=6276 := by core033_kernel_decide
theorem rows11176 : actualRows11176=WordField.canonicalRows actualModulus 11176 (.badd 11173 11175) := by core033_kernel_decide
theorem stats11176 : actualRows11176.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11176=5388 := by core033_kernel_decide
theorem rows11177 : actualRows11177=WordField.canonicalRows actualModulus 11177 (.bnot 11176) := by core033_kernel_decide
theorem stats11177 : actualRows11177.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11177=6276 := by core033_kernel_decide
theorem rows11178 : actualRows11178=WordField.canonicalRows actualModulus 11178 (.band 11171 11177) := by core033_kernel_decide
theorem stats11178 : actualRows11178.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11178=5124 := by core033_kernel_decide
theorem rows11179 : actualRows11179=WordField.canonicalRows actualModulus 11179 (.bxor 11166 11178) := by core033_kernel_decide
theorem stats11179 : actualRows11179.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11179=7428 := by core033_kernel_decide
theorem rows11180 : actualRows11180=WordField.canonicalRows actualModulus 11180 (.shr 11179 31) := by core033_kernel_decide
theorem stats11180 : actualRows11180.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11180=2892 := by core033_kernel_decide
theorem rows11181 : actualRows11181=WordField.canonicalRows actualModulus 11181 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11181 : actualRows11181.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11181=2892 := by core033_kernel_decide
theorem rows11182 : actualRows11182=WordField.canonicalRows actualModulus 11182 (.bxor 11180 11181) := by core033_kernel_decide
theorem stats11182 : actualRows11182.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11182=7428 := by core033_kernel_decide
theorem rows11183 : actualRows11183=WordField.canonicalRows actualModulus 11183 (.bnot 11182) := by core033_kernel_decide
theorem stats11183 : actualRows11183.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11183=6276 := by core033_kernel_decide
theorem rows11184 : actualRows11184=WordField.canonicalRows actualModulus 11184 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11184 : actualRows11184.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11184=2892 := by core033_kernel_decide
theorem rows11185 : actualRows11185=WordField.canonicalRows actualModulus 11185 (.badd 11183 11184) := by core033_kernel_decide
theorem stats11185 : actualRows11185.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11185=5388 := by core033_kernel_decide
theorem rows11186 : actualRows11186=WordField.canonicalRows actualModulus 11186 (.band 11185 10025) := by core033_kernel_decide
theorem stats11186 : actualRows11186.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11186=5124 := by core033_kernel_decide
theorem rows11187 : actualRows11187=WordField.canonicalRows actualModulus 11187 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11187 : actualRows11187.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11187=2964 := by core033_kernel_decide
theorem rows11188 : actualRows11188=WordField.canonicalRows actualModulus 11188 (.bxor 442 11187) := by core033_kernel_decide
theorem stats11188 : actualRows11188.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11188=7428 := by core033_kernel_decide
theorem rows11189 : actualRows11189=WordField.canonicalRows actualModulus 11189 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11189 : actualRows11189.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11189=2820 := by core033_kernel_decide
theorem rows11190 : actualRows11190=WordField.canonicalRows actualModulus 11190 (.bnot 11189) := by core033_kernel_decide
theorem stats11190 : actualRows11190.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11190=6276 := by core033_kernel_decide
theorem rows11191 : actualRows11191=WordField.canonicalRows actualModulus 11191 (.band 11188 11190) := by core033_kernel_decide
theorem stats11191 : actualRows11191.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11191=5124 := by core033_kernel_decide
theorem rows11192 : actualRows11192=WordField.canonicalRows actualModulus 11192 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11192 : actualRows11192.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11192=2964 := by core033_kernel_decide
theorem rows11193 : actualRows11193=WordField.canonicalRows actualModulus 11193 (.bxor 442 11192) := by core033_kernel_decide
theorem stats11193 : actualRows11193.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11193=7428 := by core033_kernel_decide
theorem rows11194 : actualRows11194=WordField.canonicalRows actualModulus 11194 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11194 : actualRows11194.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11194=2820 := by core033_kernel_decide
theorem rows11195 : actualRows11195=WordField.canonicalRows actualModulus 11195 (.bnot 11194) := by core033_kernel_decide
theorem stats11195 : actualRows11195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11195=6276 := by core033_kernel_decide
theorem rows11196 : actualRows11196=WordField.canonicalRows actualModulus 11196 (.bxor 11193 11195) := by core033_kernel_decide
theorem stats11196 : actualRows11196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11196=7428 := by core033_kernel_decide
theorem rows11197 : actualRows11197=WordField.canonicalRows actualModulus 11197 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11197 : actualRows11197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11197=2964 := by core033_kernel_decide
theorem rows11198 : actualRows11198=WordField.canonicalRows actualModulus 11198 (.bxor 442 11197) := by core033_kernel_decide
theorem stats11198 : actualRows11198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11198=7428 := by core033_kernel_decide
theorem rows11199 : actualRows11199=WordField.canonicalRows actualModulus 11199 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11199 : actualRows11199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11199=2820 := by core033_kernel_decide
theorem rows11200 : actualRows11200=WordField.canonicalRows actualModulus 11200 (.bnot 11199) := by core033_kernel_decide
theorem stats11200 : actualRows11200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11200=6276 := by core033_kernel_decide
theorem rows11201 : actualRows11201=WordField.canonicalRows actualModulus 11201 (.badd 11198 11200) := by core033_kernel_decide
theorem stats11201 : actualRows11201.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11201=5388 := by core033_kernel_decide
theorem rows11202 : actualRows11202=WordField.canonicalRows actualModulus 11202 (.bnot 11201) := by core033_kernel_decide
theorem stats11202 : actualRows11202.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11202=6276 := by core033_kernel_decide
theorem rows11203 : actualRows11203=WordField.canonicalRows actualModulus 11203 (.band 11196 11202) := by core033_kernel_decide
theorem stats11203 : actualRows11203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11203=5124 := by core033_kernel_decide
theorem rows11204 : actualRows11204=WordField.canonicalRows actualModulus 11204 (.bxor 11191 11203) := by core033_kernel_decide
theorem stats11204 : actualRows11204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11204=7428 := by core033_kernel_decide
theorem rows11205 : actualRows11205=WordField.canonicalRows actualModulus 11205 (.shr 11204 31) := by core033_kernel_decide
theorem stats11205 : actualRows11205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11205=2892 := by core033_kernel_decide
theorem rows11206 : actualRows11206=WordField.canonicalRows actualModulus 11206 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11206 : actualRows11206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11206=2892 := by core033_kernel_decide
theorem rows11207 : actualRows11207=WordField.canonicalRows actualModulus 11207 (.bxor 11205 11206) := by core033_kernel_decide
theorem stats11207 : actualRows11207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11207=7428 := by core033_kernel_decide
theorem rows11208 : actualRows11208=WordField.canonicalRows actualModulus 11208 (.bnot 11207) := by core033_kernel_decide
theorem stats11208 : actualRows11208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11208=6276 := by core033_kernel_decide
theorem rows11209 : actualRows11209=WordField.canonicalRows actualModulus 11209 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11209 : actualRows11209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11209=2892 := by core033_kernel_decide
theorem rows11210 : actualRows11210=WordField.canonicalRows actualModulus 11210 (.badd 11208 11209) := by core033_kernel_decide
theorem stats11210 : actualRows11210.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11210=5388 := by core033_kernel_decide
theorem rows11211 : actualRows11211=WordField.canonicalRows actualModulus 11211 (.bnot 11210) := by core033_kernel_decide
theorem stats11211 : actualRows11211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11211=6276 := by core033_kernel_decide
theorem rows11212 : actualRows11212=WordField.canonicalRows actualModulus 11212 (.band 11211 704) := by core033_kernel_decide
theorem stats11212 : actualRows11212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11212=5124 := by core033_kernel_decide
theorem rows11213 : actualRows11213=WordField.canonicalRows actualModulus 11213 (.bxor 11186 11212) := by core033_kernel_decide
theorem stats11213 : actualRows11213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11213=7428 := by core033_kernel_decide
theorem rows11214 : actualRows11214=WordField.canonicalRows actualModulus 11214 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11214 : actualRows11214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11214=2964 := by core033_kernel_decide
theorem rows11215 : actualRows11215=WordField.canonicalRows actualModulus 11215 (.bxor 442 11214) := by core033_kernel_decide
theorem stats11215 : actualRows11215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11215=7428 := by core033_kernel_decide
theorem rows11216 : actualRows11216=WordField.canonicalRows actualModulus 11216 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11216 : actualRows11216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11216=2820 := by core033_kernel_decide
theorem rows11217 : actualRows11217=WordField.canonicalRows actualModulus 11217 (.bnot 11216) := by core033_kernel_decide
theorem stats11217 : actualRows11217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11217=6276 := by core033_kernel_decide
theorem rows11218 : actualRows11218=WordField.canonicalRows actualModulus 11218 (.band 11215 11217) := by core033_kernel_decide
theorem stats11218 : actualRows11218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11218=5124 := by core033_kernel_decide
theorem rows11219 : actualRows11219=WordField.canonicalRows actualModulus 11219 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11219 : actualRows11219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11219=2964 := by core033_kernel_decide
theorem rows11220 : actualRows11220=WordField.canonicalRows actualModulus 11220 (.bxor 442 11219) := by core033_kernel_decide
theorem stats11220 : actualRows11220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11220=7428 := by core033_kernel_decide
theorem rows11221 : actualRows11221=WordField.canonicalRows actualModulus 11221 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11221 : actualRows11221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11221=2820 := by core033_kernel_decide
theorem rows11222 : actualRows11222=WordField.canonicalRows actualModulus 11222 (.bnot 11221) := by core033_kernel_decide
theorem stats11222 : actualRows11222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11222=6276 := by core033_kernel_decide
theorem rows11223 : actualRows11223=WordField.canonicalRows actualModulus 11223 (.bxor 11220 11222) := by core033_kernel_decide
theorem stats11223 : actualRows11223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11223=7428 := by core033_kernel_decide
theorem rows11224 : actualRows11224=WordField.canonicalRows actualModulus 11224 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11224 : actualRows11224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11224=2964 := by core033_kernel_decide
theorem rows11225 : actualRows11225=WordField.canonicalRows actualModulus 11225 (.bxor 442 11224) := by core033_kernel_decide
theorem stats11225 : actualRows11225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11225=7428 := by core033_kernel_decide
theorem rows11226 : actualRows11226=WordField.canonicalRows actualModulus 11226 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11226 : actualRows11226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11226=2820 := by core033_kernel_decide
theorem rows11227 : actualRows11227=WordField.canonicalRows actualModulus 11227 (.bnot 11226) := by core033_kernel_decide
theorem stats11227 : actualRows11227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11227=6276 := by core033_kernel_decide
theorem rows11228 : actualRows11228=WordField.canonicalRows actualModulus 11228 (.badd 11225 11227) := by core033_kernel_decide
theorem stats11228 : actualRows11228.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11228=5388 := by core033_kernel_decide
theorem rows11229 : actualRows11229=WordField.canonicalRows actualModulus 11229 (.bnot 11228) := by core033_kernel_decide
theorem stats11229 : actualRows11229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11229=6276 := by core033_kernel_decide
theorem rows11230 : actualRows11230=WordField.canonicalRows actualModulus 11230 (.band 11223 11229) := by core033_kernel_decide
theorem stats11230 : actualRows11230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11230=5124 := by core033_kernel_decide
theorem rows11231 : actualRows11231=WordField.canonicalRows actualModulus 11231 (.bxor 11218 11230) := by core033_kernel_decide
theorem stats11231 : actualRows11231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11231=7428 := by core033_kernel_decide
def partRows173 : List R1CS.Row := actualRows11168++actualRows11169++actualRows11170++actualRows11171++actualRows11172++actualRows11173++actualRows11174++actualRows11175++actualRows11176++actualRows11177++actualRows11178++actualRows11179++actualRows11180++actualRows11181++actualRows11182++actualRows11183++actualRows11184++actualRows11185++actualRows11186++actualRows11187++actualRows11188++actualRows11189++actualRows11190++actualRows11191++actualRows11192++actualRows11193++actualRows11194++actualRows11195++actualRows11196++actualRows11197++actualRows11198++actualRows11199++actualRows11200++actualRows11201++actualRows11202++actualRows11203++actualRows11204++actualRows11205++actualRows11206++actualRows11207++actualRows11208++actualRows11209++actualRows11210++actualRows11211++actualRows11212++actualRows11213++actualRows11214++actualRows11215++actualRows11216++actualRows11217++actualRows11218++actualRows11219++actualRows11220++actualRows11221++actualRows11222++actualRows11223++actualRows11224++actualRows11225++actualRows11226++actualRows11227++actualRows11228++actualRows11229++actualRows11230++actualRows11231
def partOps173 : List WordIR.Op := [.bxor 442 11167,.literal (BitVec.ofNat 32 0),.bnot 11169,.bxor 11168 11170,.literal (BitVec.ofNat 32 3),.bxor 442 11172,.literal (BitVec.ofNat 32 0),.bnot 11174,.badd 11173 11175,.bnot 11176,.band 11171 11177,.bxor 11166 11178,.shr 11179 31,.literal (BitVec.ofNat 32 1),.bxor 11180 11181,.bnot 11182,.literal (BitVec.ofNat 32 1),.badd 11183 11184,.band 11185 10025,.literal (BitVec.ofNat 32 3),.bxor 442 11187,.literal (BitVec.ofNat 32 0),.bnot 11189,.band 11188 11190,.literal (BitVec.ofNat 32 3),.bxor 442 11192,.literal (BitVec.ofNat 32 0),.bnot 11194,.bxor 11193 11195,.literal (BitVec.ofNat 32 3),.bxor 442 11197,.literal (BitVec.ofNat 32 0),.bnot 11199,.badd 11198 11200,.bnot 11201,.band 11196 11202,.bxor 11191 11203,.shr 11204 31,.literal (BitVec.ofNat 32 1),.bxor 11205 11206,.bnot 11207,.literal (BitVec.ofNat 32 1),.badd 11208 11209,.bnot 11210,.band 11211 704,.bxor 11186 11212,.literal (BitVec.ofNat 32 3),.bxor 442 11214,.literal (BitVec.ofNat 32 0),.bnot 11216,.band 11215 11217,.literal (BitVec.ofNat 32 3),.bxor 442 11219,.literal (BitVec.ofNat 32 0),.bnot 11221,.bxor 11220 11222,.literal (BitVec.ofNat 32 3),.bxor 442 11224,.literal (BitVec.ofNat 32 0),.bnot 11226,.badd 11225 11227,.bnot 11228,.band 11223 11229,.bxor 11218 11230]
theorem partExact173 : partRows173=WordField.rows actualModulus 11168 partOps173 := by
  simp only [partRows173,partOps173,WordField.rows,rows11168,rows11169,rows11170,rows11171,rows11172,rows11173,rows11174,rows11175,rows11176,rows11177,rows11178,rows11179,rows11180,rows11181,rows11182,rows11183,rows11184,rows11185,rows11186,rows11187,rows11188,rows11189,rows11190,rows11191,rows11192,rows11193,rows11194,rows11195,rows11196,rows11197,rows11198,rows11199,rows11200,rows11201,rows11202,rows11203,rows11204,rows11205,rows11206,rows11207,rows11208,rows11209,rows11210,rows11211,rows11212,rows11213,rows11214,rows11215,rows11216,rows11217,rows11218,rows11219,rows11220,rows11221,rows11222,rows11223,rows11224,rows11225,rows11226,rows11227,rows11228,rows11229,rows11230,rows11231,List.append_assoc,List.append_nil]
theorem partLength173 : partOps173.length=64 := by decide
theorem partStats173 : partRows173.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows173=337608 := by
  simp only [partRows173,List.length_append,MatrixRowBlocks.rows_weight_append,stats11168.1,stats11168.2,stats11169.1,stats11169.2,stats11170.1,stats11170.2,stats11171.1,stats11171.2,stats11172.1,stats11172.2,stats11173.1,stats11173.2,stats11174.1,stats11174.2,stats11175.1,stats11175.2,stats11176.1,stats11176.2,stats11177.1,stats11177.2,stats11178.1,stats11178.2,stats11179.1,stats11179.2,stats11180.1,stats11180.2,stats11181.1,stats11181.2,stats11182.1,stats11182.2,stats11183.1,stats11183.2,stats11184.1,stats11184.2,stats11185.1,stats11185.2,stats11186.1,stats11186.2,stats11187.1,stats11187.2,stats11188.1,stats11188.2,stats11189.1,stats11189.2,stats11190.1,stats11190.2,stats11191.1,stats11191.2,stats11192.1,stats11192.2,stats11193.1,stats11193.2,stats11194.1,stats11194.2,stats11195.1,stats11195.2,stats11196.1,stats11196.2,stats11197.1,stats11197.2,stats11198.1,stats11198.2,stats11199.1,stats11199.2,stats11200.1,stats11200.2,stats11201.1,stats11201.2,stats11202.1,stats11202.2,stats11203.1,stats11203.2,stats11204.1,stats11204.2,stats11205.1,stats11205.2,stats11206.1,stats11206.2,stats11207.1,stats11207.2,stats11208.1,stats11208.2,stats11209.1,stats11209.2,stats11210.1,stats11210.2,stats11211.1,stats11211.2,stats11212.1,stats11212.2,stats11213.1,stats11213.2,stats11214.1,stats11214.2,stats11215.1,stats11215.2,stats11216.1,stats11216.2,stats11217.1,stats11217.2,stats11218.1,stats11218.2,stats11219.1,stats11219.2,stats11220.1,stats11220.2,stats11221.1,stats11221.2,stats11222.1,stats11222.2,stats11223.1,stats11223.2,stats11224.1,stats11224.2,stats11225.1,stats11225.2,stats11226.1,stats11226.2,stats11227.1,stats11227.2,stats11228.1,stats11228.2,stats11229.1,stats11229.2,stats11230.1,stats11230.2,stats11231.1,stats11231.2]
  decide
end PairedPathRoundCheckedRows
