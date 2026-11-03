import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData34
import PairedPathRoundInstructionMatrixData35
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2208 : actualRows2208=WordField.canonicalRows actualModulus 2208 (.bxor 2206 2207) := by core033_kernel_decide
theorem stats2208 : actualRows2208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2208=7428 := by core033_kernel_decide
theorem rows2209 : actualRows2209=WordField.canonicalRows actualModulus 2209 (.shr 1789 1) := by core033_kernel_decide
theorem stats2209 : actualRows2209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2209=5052 := by core033_kernel_decide
theorem rows2210 : actualRows2210=WordField.canonicalRows actualModulus 2210 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2210 : actualRows2210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2210=2820 := by core033_kernel_decide
theorem rows2211 : actualRows2211=WordField.canonicalRows actualModulus 2211 (.bnot 2210) := by core033_kernel_decide
theorem stats2211 : actualRows2211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2211=6276 := by core033_kernel_decide
theorem rows2212 : actualRows2212=WordField.canonicalRows actualModulus 2212 (.band 2209 2211) := by core033_kernel_decide
theorem stats2212 : actualRows2212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2212=5124 := by core033_kernel_decide
theorem rows2213 : actualRows2213=WordField.canonicalRows actualModulus 2213 (.shr 1789 1) := by core033_kernel_decide
theorem stats2213 : actualRows2213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2213=5052 := by core033_kernel_decide
theorem rows2214 : actualRows2214=WordField.canonicalRows actualModulus 2214 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2214 : actualRows2214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2214=2820 := by core033_kernel_decide
theorem rows2215 : actualRows2215=WordField.canonicalRows actualModulus 2215 (.bnot 2214) := by core033_kernel_decide
theorem stats2215 : actualRows2215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2215=6276 := by core033_kernel_decide
theorem rows2216 : actualRows2216=WordField.canonicalRows actualModulus 2216 (.bxor 2213 2215) := by core033_kernel_decide
theorem stats2216 : actualRows2216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2216=7428 := by core033_kernel_decide
theorem rows2217 : actualRows2217=WordField.canonicalRows actualModulus 2217 (.shr 1789 1) := by core033_kernel_decide
theorem stats2217 : actualRows2217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2217=5052 := by core033_kernel_decide
theorem rows2218 : actualRows2218=WordField.canonicalRows actualModulus 2218 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2218 : actualRows2218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2218=2820 := by core033_kernel_decide
theorem rows2219 : actualRows2219=WordField.canonicalRows actualModulus 2219 (.bnot 2218) := by core033_kernel_decide
theorem stats2219 : actualRows2219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2219=6276 := by core033_kernel_decide
theorem rows2220 : actualRows2220=WordField.canonicalRows actualModulus 2220 (.badd 2217 2219) := by core033_kernel_decide
theorem stats2220 : actualRows2220.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2220=5388 := by core033_kernel_decide
theorem rows2221 : actualRows2221=WordField.canonicalRows actualModulus 2221 (.bnot 2220) := by core033_kernel_decide
theorem stats2221 : actualRows2221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2221=6276 := by core033_kernel_decide
theorem rows2222 : actualRows2222=WordField.canonicalRows actualModulus 2222 (.band 2216 2221) := by core033_kernel_decide
theorem stats2222 : actualRows2222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2222=5124 := by core033_kernel_decide
theorem rows2223 : actualRows2223=WordField.canonicalRows actualModulus 2223 (.bxor 2212 2222) := by core033_kernel_decide
theorem stats2223 : actualRows2223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2223=7428 := by core033_kernel_decide
theorem rows2224 : actualRows2224=WordField.canonicalRows actualModulus 2224 (.shr 2223 31) := by core033_kernel_decide
theorem stats2224 : actualRows2224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2224=2892 := by core033_kernel_decide
theorem rows2225 : actualRows2225=WordField.canonicalRows actualModulus 2225 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2225 : actualRows2225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2225=2892 := by core033_kernel_decide
theorem rows2226 : actualRows2226=WordField.canonicalRows actualModulus 2226 (.bxor 2224 2225) := by core033_kernel_decide
theorem stats2226 : actualRows2226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2226=7428 := by core033_kernel_decide
theorem rows2227 : actualRows2227=WordField.canonicalRows actualModulus 2227 (.shr 1790 1) := by core033_kernel_decide
theorem stats2227 : actualRows2227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2227=5052 := by core033_kernel_decide
theorem rows2228 : actualRows2228=WordField.canonicalRows actualModulus 2228 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2228 : actualRows2228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2228=2820 := by core033_kernel_decide
theorem rows2229 : actualRows2229=WordField.canonicalRows actualModulus 2229 (.bnot 2228) := by core033_kernel_decide
theorem stats2229 : actualRows2229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2229=6276 := by core033_kernel_decide
theorem rows2230 : actualRows2230=WordField.canonicalRows actualModulus 2230 (.band 2227 2229) := by core033_kernel_decide
theorem stats2230 : actualRows2230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2230=5124 := by core033_kernel_decide
theorem rows2231 : actualRows2231=WordField.canonicalRows actualModulus 2231 (.shr 1790 1) := by core033_kernel_decide
theorem stats2231 : actualRows2231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2231=5052 := by core033_kernel_decide
theorem rows2232 : actualRows2232=WordField.canonicalRows actualModulus 2232 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2232 : actualRows2232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2232=2820 := by core033_kernel_decide
theorem rows2233 : actualRows2233=WordField.canonicalRows actualModulus 2233 (.bnot 2232) := by core033_kernel_decide
theorem stats2233 : actualRows2233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2233=6276 := by core033_kernel_decide
theorem rows2234 : actualRows2234=WordField.canonicalRows actualModulus 2234 (.bxor 2231 2233) := by core033_kernel_decide
theorem stats2234 : actualRows2234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2234=7428 := by core033_kernel_decide
theorem rows2235 : actualRows2235=WordField.canonicalRows actualModulus 2235 (.shr 1790 1) := by core033_kernel_decide
theorem stats2235 : actualRows2235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2235=5052 := by core033_kernel_decide
theorem rows2236 : actualRows2236=WordField.canonicalRows actualModulus 2236 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2236 : actualRows2236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2236=2820 := by core033_kernel_decide
theorem rows2237 : actualRows2237=WordField.canonicalRows actualModulus 2237 (.bnot 2236) := by core033_kernel_decide
theorem stats2237 : actualRows2237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2237=6276 := by core033_kernel_decide
theorem rows2238 : actualRows2238=WordField.canonicalRows actualModulus 2238 (.badd 2235 2237) := by core033_kernel_decide
theorem stats2238 : actualRows2238.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2238=5388 := by core033_kernel_decide
theorem rows2239 : actualRows2239=WordField.canonicalRows actualModulus 2239 (.bnot 2238) := by core033_kernel_decide
theorem stats2239 : actualRows2239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2239=6276 := by core033_kernel_decide
theorem rows2240 : actualRows2240=WordField.canonicalRows actualModulus 2240 (.band 2234 2239) := by core033_kernel_decide
theorem stats2240 : actualRows2240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2240=5124 := by core033_kernel_decide
theorem rows2241 : actualRows2241=WordField.canonicalRows actualModulus 2241 (.bxor 2230 2240) := by core033_kernel_decide
theorem stats2241 : actualRows2241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2241=7428 := by core033_kernel_decide
theorem rows2242 : actualRows2242=WordField.canonicalRows actualModulus 2242 (.shr 2241 31) := by core033_kernel_decide
theorem stats2242 : actualRows2242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2242=2892 := by core033_kernel_decide
theorem rows2243 : actualRows2243=WordField.canonicalRows actualModulus 2243 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2243 : actualRows2243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2243=2892 := by core033_kernel_decide
theorem rows2244 : actualRows2244=WordField.canonicalRows actualModulus 2244 (.bxor 2242 2243) := by core033_kernel_decide
theorem stats2244 : actualRows2244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2244=7428 := by core033_kernel_decide
theorem rows2245 : actualRows2245=WordField.canonicalRows actualModulus 2245 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2245 : actualRows2245.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2245=5388 := by core033_kernel_decide
theorem rows2246 : actualRows2246=WordField.canonicalRows actualModulus 2246 (.bxor 2245 1654) := by core033_kernel_decide
theorem stats2246 : actualRows2246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2246=7428 := by core033_kernel_decide
theorem rows2247 : actualRows2247=WordField.canonicalRows actualModulus 2247 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2247 : actualRows2247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2247=2820 := by core033_kernel_decide
theorem rows2248 : actualRows2248=WordField.canonicalRows actualModulus 2248 (.bnot 2247) := by core033_kernel_decide
theorem stats2248 : actualRows2248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2248=6276 := by core033_kernel_decide
theorem rows2249 : actualRows2249=WordField.canonicalRows actualModulus 2249 (.band 2246 2248) := by core033_kernel_decide
theorem stats2249 : actualRows2249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2249=5124 := by core033_kernel_decide
theorem rows2250 : actualRows2250=WordField.canonicalRows actualModulus 2250 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2250 : actualRows2250.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2250=5388 := by core033_kernel_decide
theorem rows2251 : actualRows2251=WordField.canonicalRows actualModulus 2251 (.bxor 2250 1654) := by core033_kernel_decide
theorem stats2251 : actualRows2251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2251=7428 := by core033_kernel_decide
theorem rows2252 : actualRows2252=WordField.canonicalRows actualModulus 2252 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2252 : actualRows2252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2252=2820 := by core033_kernel_decide
theorem rows2253 : actualRows2253=WordField.canonicalRows actualModulus 2253 (.bnot 2252) := by core033_kernel_decide
theorem stats2253 : actualRows2253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2253=6276 := by core033_kernel_decide
theorem rows2254 : actualRows2254=WordField.canonicalRows actualModulus 2254 (.bxor 2251 2253) := by core033_kernel_decide
theorem stats2254 : actualRows2254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2254=7428 := by core033_kernel_decide
theorem rows2255 : actualRows2255=WordField.canonicalRows actualModulus 2255 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2255 : actualRows2255.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2255=5388 := by core033_kernel_decide
theorem rows2256 : actualRows2256=WordField.canonicalRows actualModulus 2256 (.bxor 2255 1654) := by core033_kernel_decide
theorem stats2256 : actualRows2256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2256=7428 := by core033_kernel_decide
theorem rows2257 : actualRows2257=WordField.canonicalRows actualModulus 2257 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2257 : actualRows2257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2257=2820 := by core033_kernel_decide
theorem rows2258 : actualRows2258=WordField.canonicalRows actualModulus 2258 (.bnot 2257) := by core033_kernel_decide
theorem stats2258 : actualRows2258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2258=6276 := by core033_kernel_decide
theorem rows2259 : actualRows2259=WordField.canonicalRows actualModulus 2259 (.badd 2256 2258) := by core033_kernel_decide
theorem stats2259 : actualRows2259.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2259=5388 := by core033_kernel_decide
theorem rows2260 : actualRows2260=WordField.canonicalRows actualModulus 2260 (.bnot 2259) := by core033_kernel_decide
theorem stats2260 : actualRows2260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2260=6276 := by core033_kernel_decide
theorem rows2261 : actualRows2261=WordField.canonicalRows actualModulus 2261 (.band 2254 2260) := by core033_kernel_decide
theorem stats2261 : actualRows2261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2261=5124 := by core033_kernel_decide
theorem rows2262 : actualRows2262=WordField.canonicalRows actualModulus 2262 (.bxor 2249 2261) := by core033_kernel_decide
theorem stats2262 : actualRows2262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2262=7428 := by core033_kernel_decide
theorem rows2263 : actualRows2263=WordField.canonicalRows actualModulus 2263 (.shr 2262 31) := by core033_kernel_decide
theorem stats2263 : actualRows2263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2263=2892 := by core033_kernel_decide
theorem rows2264 : actualRows2264=WordField.canonicalRows actualModulus 2264 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2264 : actualRows2264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2264=2892 := by core033_kernel_decide
theorem rows2265 : actualRows2265=WordField.canonicalRows actualModulus 2265 (.bxor 2263 2264) := by core033_kernel_decide
theorem stats2265 : actualRows2265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2265=7428 := by core033_kernel_decide
theorem rows2266 : actualRows2266=WordField.canonicalRows actualModulus 2266 (.badd 1495 1615) := by core033_kernel_decide
theorem stats2266 : actualRows2266.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2266=5388 := by core033_kernel_decide
theorem rows2267 : actualRows2267=WordField.canonicalRows actualModulus 2267 (.band 1485 1605) := by core033_kernel_decide
theorem stats2267 : actualRows2267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2267=5124 := by core033_kernel_decide
theorem rows2268 : actualRows2268=WordField.canonicalRows actualModulus 2268 (.bxor 1485 1605) := by core033_kernel_decide
theorem stats2268 : actualRows2268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2268=7428 := by core033_kernel_decide
theorem rows2269 : actualRows2269=WordField.canonicalRows actualModulus 2269 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2269 : actualRows2269.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2269=5388 := by core033_kernel_decide
theorem rows2270 : actualRows2270=WordField.canonicalRows actualModulus 2270 (.bnot 2269) := by core033_kernel_decide
theorem stats2270 : actualRows2270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2270=6276 := by core033_kernel_decide
theorem rows2271 : actualRows2271=WordField.canonicalRows actualModulus 2271 (.band 2268 2270) := by core033_kernel_decide
theorem stats2271 : actualRows2271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2271=5124 := by core033_kernel_decide
def partRows33 : List R1CS.Row := actualRows2208++actualRows2209++actualRows2210++actualRows2211++actualRows2212++actualRows2213++actualRows2214++actualRows2215++actualRows2216++actualRows2217++actualRows2218++actualRows2219++actualRows2220++actualRows2221++actualRows2222++actualRows2223++actualRows2224++actualRows2225++actualRows2226++actualRows2227++actualRows2228++actualRows2229++actualRows2230++actualRows2231++actualRows2232++actualRows2233++actualRows2234++actualRows2235++actualRows2236++actualRows2237++actualRows2238++actualRows2239++actualRows2240++actualRows2241++actualRows2242++actualRows2243++actualRows2244++actualRows2245++actualRows2246++actualRows2247++actualRows2248++actualRows2249++actualRows2250++actualRows2251++actualRows2252++actualRows2253++actualRows2254++actualRows2255++actualRows2256++actualRows2257++actualRows2258++actualRows2259++actualRows2260++actualRows2261++actualRows2262++actualRows2263++actualRows2264++actualRows2265++actualRows2266++actualRows2267++actualRows2268++actualRows2269++actualRows2270++actualRows2271
def partOps33 : List WordIR.Op := [.bxor 2206 2207,.shr 1789 1,.literal (BitVec.ofNat 32 0),.bnot 2210,.band 2209 2211,.shr 1789 1,.literal (BitVec.ofNat 32 0),.bnot 2214,.bxor 2213 2215,.shr 1789 1,.literal (BitVec.ofNat 32 0),.bnot 2218,.badd 2217 2219,.bnot 2220,.band 2216 2221,.bxor 2212 2222,.shr 2223 31,.literal (BitVec.ofNat 32 1),.bxor 2224 2225,.shr 1790 1,.literal (BitVec.ofNat 32 0),.bnot 2228,.band 2227 2229,.shr 1790 1,.literal (BitVec.ofNat 32 0),.bnot 2232,.bxor 2231 2233,.shr 1790 1,.literal (BitVec.ofNat 32 0),.bnot 2236,.badd 2235 2237,.bnot 2238,.band 2234 2239,.bxor 2230 2240,.shr 2241 31,.literal (BitVec.ofNat 32 1),.bxor 2242 2243,.badd 1485 1605,.bxor 2245 1654,.literal (BitVec.ofNat 32 0),.bnot 2247,.band 2246 2248,.badd 1485 1605,.bxor 2250 1654,.literal (BitVec.ofNat 32 0),.bnot 2252,.bxor 2251 2253,.badd 1485 1605,.bxor 2255 1654,.literal (BitVec.ofNat 32 0),.bnot 2257,.badd 2256 2258,.bnot 2259,.band 2254 2260,.bxor 2249 2261,.shr 2262 31,.literal (BitVec.ofNat 32 1),.bxor 2263 2264,.badd 1495 1615,.band 1485 1605,.bxor 1485 1605,.badd 1485 1605,.bnot 2269,.band 2268 2270]
theorem partExact33 : partRows33=WordField.rows actualModulus 2208 partOps33 := by
  simp only [partRows33,partOps33,WordField.rows,rows2208,rows2209,rows2210,rows2211,rows2212,rows2213,rows2214,rows2215,rows2216,rows2217,rows2218,rows2219,rows2220,rows2221,rows2222,rows2223,rows2224,rows2225,rows2226,rows2227,rows2228,rows2229,rows2230,rows2231,rows2232,rows2233,rows2234,rows2235,rows2236,rows2237,rows2238,rows2239,rows2240,rows2241,rows2242,rows2243,rows2244,rows2245,rows2246,rows2247,rows2248,rows2249,rows2250,rows2251,rows2252,rows2253,rows2254,rows2255,rows2256,rows2257,rows2258,rows2259,rows2260,rows2261,rows2262,rows2263,rows2264,rows2265,rows2266,rows2267,rows2268,rows2269,rows2270,rows2271,List.append_assoc,List.append_nil]
theorem partLength33 : partOps33.length=64 := by decide
theorem partStats33 : partRows33.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows33=342720 := by
  simp only [partRows33,List.length_append,MatrixRowBlocks.rows_weight_append,stats2208.1,stats2208.2,stats2209.1,stats2209.2,stats2210.1,stats2210.2,stats2211.1,stats2211.2,stats2212.1,stats2212.2,stats2213.1,stats2213.2,stats2214.1,stats2214.2,stats2215.1,stats2215.2,stats2216.1,stats2216.2,stats2217.1,stats2217.2,stats2218.1,stats2218.2,stats2219.1,stats2219.2,stats2220.1,stats2220.2,stats2221.1,stats2221.2,stats2222.1,stats2222.2,stats2223.1,stats2223.2,stats2224.1,stats2224.2,stats2225.1,stats2225.2,stats2226.1,stats2226.2,stats2227.1,stats2227.2,stats2228.1,stats2228.2,stats2229.1,stats2229.2,stats2230.1,stats2230.2,stats2231.1,stats2231.2,stats2232.1,stats2232.2,stats2233.1,stats2233.2,stats2234.1,stats2234.2,stats2235.1,stats2235.2,stats2236.1,stats2236.2,stats2237.1,stats2237.2,stats2238.1,stats2238.2,stats2239.1,stats2239.2,stats2240.1,stats2240.2,stats2241.1,stats2241.2,stats2242.1,stats2242.2,stats2243.1,stats2243.2,stats2244.1,stats2244.2,stats2245.1,stats2245.2,stats2246.1,stats2246.2,stats2247.1,stats2247.2,stats2248.1,stats2248.2,stats2249.1,stats2249.2,stats2250.1,stats2250.2,stats2251.1,stats2251.2,stats2252.1,stats2252.2,stats2253.1,stats2253.2,stats2254.1,stats2254.2,stats2255.1,stats2255.2,stats2256.1,stats2256.2,stats2257.1,stats2257.2,stats2258.1,stats2258.2,stats2259.1,stats2259.2,stats2260.1,stats2260.2,stats2261.1,stats2261.2,stats2262.1,stats2262.2,stats2263.1,stats2263.2,stats2264.1,stats2264.2,stats2265.1,stats2265.2,stats2266.1,stats2266.2,stats2267.1,stats2267.2,stats2268.1,stats2268.2,stats2269.1,stats2269.2,stats2270.1,stats2270.2,stats2271.1,stats2271.2]
  decide
end QuotedPairedPathRoundCheckedRows
