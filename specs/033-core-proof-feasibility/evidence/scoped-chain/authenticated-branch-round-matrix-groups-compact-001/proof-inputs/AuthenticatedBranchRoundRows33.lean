import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData34
import AuthenticatedBranchRoundInstructionMatrixData35
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2230 : actualRows2230=WordField.canonicalRows actualModulus 2230 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2230 : actualRows2230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2230=2892 := by core033_kernel_decide
theorem rows2231 : actualRows2231=WordField.canonicalRows actualModulus 2231 (.badd 2229 2230) := by core033_kernel_decide
theorem stats2231 : actualRows2231.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2231=5388 := by core033_kernel_decide
theorem rows2232 : actualRows2232=WordField.canonicalRows actualModulus 2232 (.band 2231 1453) := by core033_kernel_decide
theorem stats2232 : actualRows2232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2232=5124 := by core033_kernel_decide
theorem rows2233 : actualRows2233=WordField.canonicalRows actualModulus 2233 (.bnot 2078) := by core033_kernel_decide
theorem stats2233 : actualRows2233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2233=6276 := by core033_kernel_decide
theorem rows2234 : actualRows2234=WordField.canonicalRows actualModulus 2234 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2234 : actualRows2234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2234=2892 := by core033_kernel_decide
theorem rows2235 : actualRows2235=WordField.canonicalRows actualModulus 2235 (.badd 2233 2234) := by core033_kernel_decide
theorem stats2235 : actualRows2235.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2235=5388 := by core033_kernel_decide
theorem rows2236 : actualRows2236=WordField.canonicalRows actualModulus 2236 (.bnot 2235) := by core033_kernel_decide
theorem stats2236 : actualRows2236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2236=6276 := by core033_kernel_decide
theorem rows2237 : actualRows2237=WordField.canonicalRows actualModulus 2237 (.band 2236 1541) := by core033_kernel_decide
theorem stats2237 : actualRows2237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2237=5124 := by core033_kernel_decide
theorem rows2238 : actualRows2238=WordField.canonicalRows actualModulus 2238 (.bxor 2232 2237) := by core033_kernel_decide
theorem stats2238 : actualRows2238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2238=7428 := by core033_kernel_decide
theorem rows2239 : actualRows2239=WordField.canonicalRows actualModulus 2239 (.bnot 2078) := by core033_kernel_decide
theorem stats2239 : actualRows2239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2239=6276 := by core033_kernel_decide
theorem rows2240 : actualRows2240=WordField.canonicalRows actualModulus 2240 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2240 : actualRows2240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2240=2892 := by core033_kernel_decide
theorem rows2241 : actualRows2241=WordField.canonicalRows actualModulus 2241 (.badd 2239 2240) := by core033_kernel_decide
theorem stats2241 : actualRows2241.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2241=5388 := by core033_kernel_decide
theorem rows2242 : actualRows2242=WordField.canonicalRows actualModulus 2242 (.band 2241 1464) := by core033_kernel_decide
theorem stats2242 : actualRows2242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2242=5124 := by core033_kernel_decide
theorem rows2243 : actualRows2243=WordField.canonicalRows actualModulus 2243 (.bnot 2078) := by core033_kernel_decide
theorem stats2243 : actualRows2243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2243=6276 := by core033_kernel_decide
theorem rows2244 : actualRows2244=WordField.canonicalRows actualModulus 2244 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2244 : actualRows2244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2244=2892 := by core033_kernel_decide
theorem rows2245 : actualRows2245=WordField.canonicalRows actualModulus 2245 (.badd 2243 2244) := by core033_kernel_decide
theorem stats2245 : actualRows2245.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2245=5388 := by core033_kernel_decide
theorem rows2246 : actualRows2246=WordField.canonicalRows actualModulus 2246 (.bnot 2245) := by core033_kernel_decide
theorem stats2246 : actualRows2246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2246=6276 := by core033_kernel_decide
theorem rows2247 : actualRows2247=WordField.canonicalRows actualModulus 2247 (.band 2246 1552) := by core033_kernel_decide
theorem stats2247 : actualRows2247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2247=5124 := by core033_kernel_decide
theorem rows2248 : actualRows2248=WordField.canonicalRows actualModulus 2248 (.bxor 2242 2247) := by core033_kernel_decide
theorem stats2248 : actualRows2248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2248=7428 := by core033_kernel_decide
theorem rows2249 : actualRows2249=WordField.canonicalRows actualModulus 2249 (.bnot 2078) := by core033_kernel_decide
theorem stats2249 : actualRows2249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2249=6276 := by core033_kernel_decide
theorem rows2250 : actualRows2250=WordField.canonicalRows actualModulus 2250 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2250 : actualRows2250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2250=2892 := by core033_kernel_decide
theorem rows2251 : actualRows2251=WordField.canonicalRows actualModulus 2251 (.badd 2249 2250) := by core033_kernel_decide
theorem stats2251 : actualRows2251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2251=5388 := by core033_kernel_decide
theorem rows2252 : actualRows2252=WordField.canonicalRows actualModulus 2252 (.band 2251 1475) := by core033_kernel_decide
theorem stats2252 : actualRows2252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2252=5124 := by core033_kernel_decide
theorem rows2253 : actualRows2253=WordField.canonicalRows actualModulus 2253 (.bnot 2078) := by core033_kernel_decide
theorem stats2253 : actualRows2253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2253=6276 := by core033_kernel_decide
theorem rows2254 : actualRows2254=WordField.canonicalRows actualModulus 2254 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2254 : actualRows2254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2254=2892 := by core033_kernel_decide
theorem rows2255 : actualRows2255=WordField.canonicalRows actualModulus 2255 (.badd 2253 2254) := by core033_kernel_decide
theorem stats2255 : actualRows2255.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2255=5388 := by core033_kernel_decide
theorem rows2256 : actualRows2256=WordField.canonicalRows actualModulus 2256 (.bnot 2255) := by core033_kernel_decide
theorem stats2256 : actualRows2256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2256=6276 := by core033_kernel_decide
theorem rows2257 : actualRows2257=WordField.canonicalRows actualModulus 2257 (.band 2256 1563) := by core033_kernel_decide
theorem stats2257 : actualRows2257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2257=5124 := by core033_kernel_decide
theorem rows2258 : actualRows2258=WordField.canonicalRows actualModulus 2258 (.bxor 2252 2257) := by core033_kernel_decide
theorem stats2258 : actualRows2258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2258=7428 := by core033_kernel_decide
theorem rows2259 : actualRows2259=WordField.canonicalRows actualModulus 2259 (.bnot 2078) := by core033_kernel_decide
theorem stats2259 : actualRows2259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2259=6276 := by core033_kernel_decide
theorem rows2260 : actualRows2260=WordField.canonicalRows actualModulus 2260 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2260 : actualRows2260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2260=2892 := by core033_kernel_decide
theorem rows2261 : actualRows2261=WordField.canonicalRows actualModulus 2261 (.badd 2259 2260) := by core033_kernel_decide
theorem stats2261 : actualRows2261.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2261=5388 := by core033_kernel_decide
theorem rows2262 : actualRows2262=WordField.canonicalRows actualModulus 2262 (.band 2261 1486) := by core033_kernel_decide
theorem stats2262 : actualRows2262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2262=5124 := by core033_kernel_decide
theorem rows2263 : actualRows2263=WordField.canonicalRows actualModulus 2263 (.bnot 2078) := by core033_kernel_decide
theorem stats2263 : actualRows2263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2263=6276 := by core033_kernel_decide
theorem rows2264 : actualRows2264=WordField.canonicalRows actualModulus 2264 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2264 : actualRows2264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2264=2892 := by core033_kernel_decide
theorem rows2265 : actualRows2265=WordField.canonicalRows actualModulus 2265 (.badd 2263 2264) := by core033_kernel_decide
theorem stats2265 : actualRows2265.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2265=5388 := by core033_kernel_decide
theorem rows2266 : actualRows2266=WordField.canonicalRows actualModulus 2266 (.bnot 2265) := by core033_kernel_decide
theorem stats2266 : actualRows2266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2266=6276 := by core033_kernel_decide
theorem rows2267 : actualRows2267=WordField.canonicalRows actualModulus 2267 (.band 2266 1574) := by core033_kernel_decide
theorem stats2267 : actualRows2267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2267=5124 := by core033_kernel_decide
theorem rows2268 : actualRows2268=WordField.canonicalRows actualModulus 2268 (.bxor 2262 2267) := by core033_kernel_decide
theorem stats2268 : actualRows2268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2268=7428 := by core033_kernel_decide
theorem rows2269 : actualRows2269=WordField.canonicalRows actualModulus 2269 (.bnot 2078) := by core033_kernel_decide
theorem stats2269 : actualRows2269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2269=6276 := by core033_kernel_decide
theorem rows2270 : actualRows2270=WordField.canonicalRows actualModulus 2270 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2270 : actualRows2270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2270=2892 := by core033_kernel_decide
theorem rows2271 : actualRows2271=WordField.canonicalRows actualModulus 2271 (.badd 2269 2270) := by core033_kernel_decide
theorem stats2271 : actualRows2271.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2271=5388 := by core033_kernel_decide
theorem rows2272 : actualRows2272=WordField.canonicalRows actualModulus 2272 (.band 2271 1497) := by core033_kernel_decide
theorem stats2272 : actualRows2272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2272=5124 := by core033_kernel_decide
theorem rows2273 : actualRows2273=WordField.canonicalRows actualModulus 2273 (.bnot 2078) := by core033_kernel_decide
theorem stats2273 : actualRows2273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2273=6276 := by core033_kernel_decide
theorem rows2274 : actualRows2274=WordField.canonicalRows actualModulus 2274 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2274 : actualRows2274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2274=2892 := by core033_kernel_decide
theorem rows2275 : actualRows2275=WordField.canonicalRows actualModulus 2275 (.badd 2273 2274) := by core033_kernel_decide
theorem stats2275 : actualRows2275.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2275=5388 := by core033_kernel_decide
theorem rows2276 : actualRows2276=WordField.canonicalRows actualModulus 2276 (.bnot 2275) := by core033_kernel_decide
theorem stats2276 : actualRows2276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2276=6276 := by core033_kernel_decide
theorem rows2277 : actualRows2277=WordField.canonicalRows actualModulus 2277 (.band 2276 1585) := by core033_kernel_decide
theorem stats2277 : actualRows2277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2277=5124 := by core033_kernel_decide
theorem rows2278 : actualRows2278=WordField.canonicalRows actualModulus 2278 (.bxor 2272 2277) := by core033_kernel_decide
theorem stats2278 : actualRows2278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2278=7428 := by core033_kernel_decide
theorem rows2279 : actualRows2279=WordField.canonicalRows actualModulus 2279 (.bnot 2078) := by core033_kernel_decide
theorem stats2279 : actualRows2279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2279=6276 := by core033_kernel_decide
theorem rows2280 : actualRows2280=WordField.canonicalRows actualModulus 2280 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2280 : actualRows2280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2280=2892 := by core033_kernel_decide
theorem rows2281 : actualRows2281=WordField.canonicalRows actualModulus 2281 (.badd 2279 2280) := by core033_kernel_decide
theorem stats2281 : actualRows2281.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2281=5388 := by core033_kernel_decide
theorem rows2282 : actualRows2282=WordField.canonicalRows actualModulus 2282 (.band 2281 1596) := by core033_kernel_decide
theorem stats2282 : actualRows2282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2282=5124 := by core033_kernel_decide
theorem rows2283 : actualRows2283=WordField.canonicalRows actualModulus 2283 (.bnot 2078) := by core033_kernel_decide
theorem stats2283 : actualRows2283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2283=6276 := by core033_kernel_decide
theorem rows2284 : actualRows2284=WordField.canonicalRows actualModulus 2284 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2284 : actualRows2284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2284=2892 := by core033_kernel_decide
theorem rows2285 : actualRows2285=WordField.canonicalRows actualModulus 2285 (.badd 2283 2284) := by core033_kernel_decide
theorem stats2285 : actualRows2285.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2285=5388 := by core033_kernel_decide
theorem rows2286 : actualRows2286=WordField.canonicalRows actualModulus 2286 (.bnot 2285) := by core033_kernel_decide
theorem stats2286 : actualRows2286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2286=6276 := by core033_kernel_decide
theorem rows2287 : actualRows2287=WordField.canonicalRows actualModulus 2287 (.band 2286 1618) := by core033_kernel_decide
theorem stats2287 : actualRows2287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2287=5124 := by core033_kernel_decide
theorem rows2288 : actualRows2288=WordField.canonicalRows actualModulus 2288 (.bxor 2282 2287) := by core033_kernel_decide
theorem stats2288 : actualRows2288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2288=7428 := by core033_kernel_decide
theorem rows2289 : actualRows2289=WordField.canonicalRows actualModulus 2289 (.bnot 2078) := by core033_kernel_decide
theorem stats2289 : actualRows2289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2289=6276 := by core033_kernel_decide
theorem rows2290 : actualRows2290=WordField.canonicalRows actualModulus 2290 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2290 : actualRows2290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2290=2892 := by core033_kernel_decide
theorem rows2291 : actualRows2291=WordField.canonicalRows actualModulus 2291 (.badd 2289 2290) := by core033_kernel_decide
theorem stats2291 : actualRows2291.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2291=5388 := by core033_kernel_decide
theorem rows2292 : actualRows2292=WordField.canonicalRows actualModulus 2292 (.band 2291 1607) := by core033_kernel_decide
theorem stats2292 : actualRows2292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2292=5124 := by core033_kernel_decide
theorem rows2293 : actualRows2293=WordField.canonicalRows actualModulus 2293 (.bnot 2078) := by core033_kernel_decide
theorem stats2293 : actualRows2293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2293=6276 := by core033_kernel_decide
def partRows33 : List R1CS.Row := actualRows2230++actualRows2231++actualRows2232++actualRows2233++actualRows2234++actualRows2235++actualRows2236++actualRows2237++actualRows2238++actualRows2239++actualRows2240++actualRows2241++actualRows2242++actualRows2243++actualRows2244++actualRows2245++actualRows2246++actualRows2247++actualRows2248++actualRows2249++actualRows2250++actualRows2251++actualRows2252++actualRows2253++actualRows2254++actualRows2255++actualRows2256++actualRows2257++actualRows2258++actualRows2259++actualRows2260++actualRows2261++actualRows2262++actualRows2263++actualRows2264++actualRows2265++actualRows2266++actualRows2267++actualRows2268++actualRows2269++actualRows2270++actualRows2271++actualRows2272++actualRows2273++actualRows2274++actualRows2275++actualRows2276++actualRows2277++actualRows2278++actualRows2279++actualRows2280++actualRows2281++actualRows2282++actualRows2283++actualRows2284++actualRows2285++actualRows2286++actualRows2287++actualRows2288++actualRows2289++actualRows2290++actualRows2291++actualRows2292++actualRows2293
def partOps33 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 2229 2230,.band 2231 1453,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2233 2234,.bnot 2235,.band 2236 1541,.bxor 2232 2237,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2239 2240,.band 2241 1464,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2243 2244,.bnot 2245,.band 2246 1552,.bxor 2242 2247,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2249 2250,.band 2251 1475,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2253 2254,.bnot 2255,.band 2256 1563,.bxor 2252 2257,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2259 2260,.band 2261 1486,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2263 2264,.bnot 2265,.band 2266 1574,.bxor 2262 2267,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2269 2270,.band 2271 1497,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2273 2274,.bnot 2275,.band 2276 1585,.bxor 2272 2277,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2279 2280,.band 2281 1596,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2283 2284,.bnot 2285,.band 2286 1618,.bxor 2282 2287,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2289 2290,.band 2291 1607,.bnot 2078]
theorem partExact33 : partRows33=WordField.rows actualModulus 2230 partOps33 := by
  simp only [partRows33,partOps33,WordField.rows,rows2230,rows2231,rows2232,rows2233,rows2234,rows2235,rows2236,rows2237,rows2238,rows2239,rows2240,rows2241,rows2242,rows2243,rows2244,rows2245,rows2246,rows2247,rows2248,rows2249,rows2250,rows2251,rows2252,rows2253,rows2254,rows2255,rows2256,rows2257,rows2258,rows2259,rows2260,rows2261,rows2262,rows2263,rows2264,rows2265,rows2266,rows2267,rows2268,rows2269,rows2270,rows2271,rows2272,rows2273,rows2274,rows2275,rows2276,rows2277,rows2278,rows2279,rows2280,rows2281,rows2282,rows2283,rows2284,rows2285,rows2286,rows2287,rows2288,rows2289,rows2290,rows2291,rows2292,rows2293,List.append_assoc,List.append_nil]
theorem partLength33 : partOps33.length=64 := by decide
theorem partStats33 : partRows33.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows33=338064 := by
  simp only [partRows33,List.length_append,MatrixRowBlocks.rows_weight_append,stats2230.1,stats2230.2,stats2231.1,stats2231.2,stats2232.1,stats2232.2,stats2233.1,stats2233.2,stats2234.1,stats2234.2,stats2235.1,stats2235.2,stats2236.1,stats2236.2,stats2237.1,stats2237.2,stats2238.1,stats2238.2,stats2239.1,stats2239.2,stats2240.1,stats2240.2,stats2241.1,stats2241.2,stats2242.1,stats2242.2,stats2243.1,stats2243.2,stats2244.1,stats2244.2,stats2245.1,stats2245.2,stats2246.1,stats2246.2,stats2247.1,stats2247.2,stats2248.1,stats2248.2,stats2249.1,stats2249.2,stats2250.1,stats2250.2,stats2251.1,stats2251.2,stats2252.1,stats2252.2,stats2253.1,stats2253.2,stats2254.1,stats2254.2,stats2255.1,stats2255.2,stats2256.1,stats2256.2,stats2257.1,stats2257.2,stats2258.1,stats2258.2,stats2259.1,stats2259.2,stats2260.1,stats2260.2,stats2261.1,stats2261.2,stats2262.1,stats2262.2,stats2263.1,stats2263.2,stats2264.1,stats2264.2,stats2265.1,stats2265.2,stats2266.1,stats2266.2,stats2267.1,stats2267.2,stats2268.1,stats2268.2,stats2269.1,stats2269.2,stats2270.1,stats2270.2,stats2271.1,stats2271.2,stats2272.1,stats2272.2,stats2273.1,stats2273.2,stats2274.1,stats2274.2,stats2275.1,stats2275.2,stats2276.1,stats2276.2,stats2277.1,stats2277.2,stats2278.1,stats2278.2,stats2279.1,stats2279.2,stats2280.1,stats2280.2,stats2281.1,stats2281.2,stats2282.1,stats2282.2,stats2283.1,stats2283.2,stats2284.1,stats2284.2,stats2285.1,stats2285.2,stats2286.1,stats2286.2,stats2287.1,stats2287.2,stats2288.1,stats2288.2,stats2289.1,stats2289.2,stats2290.1,stats2290.2,stats2291.1,stats2291.2,stats2292.1,stats2292.2,stats2293.1,stats2293.2]
  decide
end AuthenticatedBranchRoundCheckedRows
