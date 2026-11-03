import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData34
import FrameHashControllerInstructionMatrixData35
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2219 : actualRows2219=WordField.canonicalRows actualModulus 2219 (.bxor 0 2218) := by core033_kernel_decide
theorem stats2219 : actualRows2219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2219=7428 := by core033_kernel_decide
theorem rows2220 : actualRows2220=WordField.canonicalRows actualModulus 2220 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2220 : actualRows2220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2220=2820 := by core033_kernel_decide
theorem rows2221 : actualRows2221=WordField.canonicalRows actualModulus 2221 (.bnot 2220) := by core033_kernel_decide
theorem stats2221 : actualRows2221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2221=6276 := by core033_kernel_decide
theorem rows2222 : actualRows2222=WordField.canonicalRows actualModulus 2222 (.bxor 2219 2221) := by core033_kernel_decide
theorem stats2222 : actualRows2222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2222=7428 := by core033_kernel_decide
theorem rows2223 : actualRows2223=WordField.canonicalRows actualModulus 2223 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2223 : actualRows2223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2223=2892 := by core033_kernel_decide
theorem rows2224 : actualRows2224=WordField.canonicalRows actualModulus 2224 (.bxor 0 2223) := by core033_kernel_decide
theorem stats2224 : actualRows2224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2224=7428 := by core033_kernel_decide
theorem rows2225 : actualRows2225=WordField.canonicalRows actualModulus 2225 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2225 : actualRows2225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2225=2820 := by core033_kernel_decide
theorem rows2226 : actualRows2226=WordField.canonicalRows actualModulus 2226 (.bnot 2225) := by core033_kernel_decide
theorem stats2226 : actualRows2226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2226=6276 := by core033_kernel_decide
theorem rows2227 : actualRows2227=WordField.canonicalRows actualModulus 2227 (.badd 2224 2226) := by core033_kernel_decide
theorem stats2227 : actualRows2227.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2227=5388 := by core033_kernel_decide
theorem rows2228 : actualRows2228=WordField.canonicalRows actualModulus 2228 (.bnot 2227) := by core033_kernel_decide
theorem stats2228 : actualRows2228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2228=6276 := by core033_kernel_decide
theorem rows2229 : actualRows2229=WordField.canonicalRows actualModulus 2229 (.band 2222 2228) := by core033_kernel_decide
theorem stats2229 : actualRows2229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2229=5124 := by core033_kernel_decide
theorem rows2230 : actualRows2230=WordField.canonicalRows actualModulus 2230 (.bxor 2217 2229) := by core033_kernel_decide
theorem stats2230 : actualRows2230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2230=7428 := by core033_kernel_decide
theorem rows2231 : actualRows2231=WordField.canonicalRows actualModulus 2231 (.shr 2230 31) := by core033_kernel_decide
theorem stats2231 : actualRows2231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2231=2892 := by core033_kernel_decide
theorem rows2232 : actualRows2232=WordField.canonicalRows actualModulus 2232 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2232 : actualRows2232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2232=2892 := by core033_kernel_decide
theorem rows2233 : actualRows2233=WordField.canonicalRows actualModulus 2233 (.bxor 2231 2232) := by core033_kernel_decide
theorem stats2233 : actualRows2233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2233=7428 := by core033_kernel_decide
theorem rows2234 : actualRows2234=WordField.canonicalRows actualModulus 2234 (.bnot 2233) := by core033_kernel_decide
theorem stats2234 : actualRows2234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2234=6276 := by core033_kernel_decide
theorem rows2235 : actualRows2235=WordField.canonicalRows actualModulus 2235 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2235 : actualRows2235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2235=2892 := by core033_kernel_decide
theorem rows2236 : actualRows2236=WordField.canonicalRows actualModulus 2236 (.badd 2234 2235) := by core033_kernel_decide
theorem stats2236 : actualRows2236.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2236=5388 := by core033_kernel_decide
theorem rows2237 : actualRows2237=WordField.canonicalRows actualModulus 2237 (.bnot 2236) := by core033_kernel_decide
theorem stats2237 : actualRows2237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2237=6276 := by core033_kernel_decide
theorem rows2238 : actualRows2238=WordField.canonicalRows actualModulus 2238 (.band 2237 834) := by core033_kernel_decide
theorem stats2238 : actualRows2238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2238=5124 := by core033_kernel_decide
theorem rows2239 : actualRows2239=WordField.canonicalRows actualModulus 2239 (.bxor 2212 2238) := by core033_kernel_decide
theorem stats2239 : actualRows2239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2239=7428 := by core033_kernel_decide
theorem rows2240 : actualRows2240=WordField.canonicalRows actualModulus 2240 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2240 : actualRows2240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2240=2892 := by core033_kernel_decide
theorem rows2241 : actualRows2241=WordField.canonicalRows actualModulus 2241 (.bxor 0 2240) := by core033_kernel_decide
theorem stats2241 : actualRows2241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2241=7428 := by core033_kernel_decide
theorem rows2242 : actualRows2242=WordField.canonicalRows actualModulus 2242 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2242 : actualRows2242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2242=2820 := by core033_kernel_decide
theorem rows2243 : actualRows2243=WordField.canonicalRows actualModulus 2243 (.bnot 2242) := by core033_kernel_decide
theorem stats2243 : actualRows2243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2243=6276 := by core033_kernel_decide
theorem rows2244 : actualRows2244=WordField.canonicalRows actualModulus 2244 (.band 2241 2243) := by core033_kernel_decide
theorem stats2244 : actualRows2244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2244=5124 := by core033_kernel_decide
theorem rows2245 : actualRows2245=WordField.canonicalRows actualModulus 2245 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2245 : actualRows2245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2245=2892 := by core033_kernel_decide
theorem rows2246 : actualRows2246=WordField.canonicalRows actualModulus 2246 (.bxor 0 2245) := by core033_kernel_decide
theorem stats2246 : actualRows2246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2246=7428 := by core033_kernel_decide
theorem rows2247 : actualRows2247=WordField.canonicalRows actualModulus 2247 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2247 : actualRows2247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2247=2820 := by core033_kernel_decide
theorem rows2248 : actualRows2248=WordField.canonicalRows actualModulus 2248 (.bnot 2247) := by core033_kernel_decide
theorem stats2248 : actualRows2248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2248=6276 := by core033_kernel_decide
theorem rows2249 : actualRows2249=WordField.canonicalRows actualModulus 2249 (.bxor 2246 2248) := by core033_kernel_decide
theorem stats2249 : actualRows2249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2249=7428 := by core033_kernel_decide
theorem rows2250 : actualRows2250=WordField.canonicalRows actualModulus 2250 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2250 : actualRows2250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2250=2892 := by core033_kernel_decide
theorem rows2251 : actualRows2251=WordField.canonicalRows actualModulus 2251 (.bxor 0 2250) := by core033_kernel_decide
theorem stats2251 : actualRows2251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2251=7428 := by core033_kernel_decide
theorem rows2252 : actualRows2252=WordField.canonicalRows actualModulus 2252 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2252 : actualRows2252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2252=2820 := by core033_kernel_decide
theorem rows2253 : actualRows2253=WordField.canonicalRows actualModulus 2253 (.bnot 2252) := by core033_kernel_decide
theorem stats2253 : actualRows2253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2253=6276 := by core033_kernel_decide
theorem rows2254 : actualRows2254=WordField.canonicalRows actualModulus 2254 (.badd 2251 2253) := by core033_kernel_decide
theorem stats2254 : actualRows2254.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2254=5388 := by core033_kernel_decide
theorem rows2255 : actualRows2255=WordField.canonicalRows actualModulus 2255 (.bnot 2254) := by core033_kernel_decide
theorem stats2255 : actualRows2255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2255=6276 := by core033_kernel_decide
theorem rows2256 : actualRows2256=WordField.canonicalRows actualModulus 2256 (.band 2249 2255) := by core033_kernel_decide
theorem stats2256 : actualRows2256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2256=5124 := by core033_kernel_decide
theorem rows2257 : actualRows2257=WordField.canonicalRows actualModulus 2257 (.bxor 2244 2256) := by core033_kernel_decide
theorem stats2257 : actualRows2257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2257=7428 := by core033_kernel_decide
theorem rows2258 : actualRows2258=WordField.canonicalRows actualModulus 2258 (.shr 2257 31) := by core033_kernel_decide
theorem stats2258 : actualRows2258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2258=2892 := by core033_kernel_decide
theorem rows2259 : actualRows2259=WordField.canonicalRows actualModulus 2259 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2259 : actualRows2259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2259=2892 := by core033_kernel_decide
theorem rows2260 : actualRows2260=WordField.canonicalRows actualModulus 2260 (.bxor 2258 2259) := by core033_kernel_decide
theorem stats2260 : actualRows2260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2260=7428 := by core033_kernel_decide
theorem rows2261 : actualRows2261=WordField.canonicalRows actualModulus 2261 (.bnot 2260) := by core033_kernel_decide
theorem stats2261 : actualRows2261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2261=6276 := by core033_kernel_decide
theorem rows2262 : actualRows2262=WordField.canonicalRows actualModulus 2262 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2262 : actualRows2262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2262=2892 := by core033_kernel_decide
theorem rows2263 : actualRows2263=WordField.canonicalRows actualModulus 2263 (.badd 2261 2262) := by core033_kernel_decide
theorem stats2263 : actualRows2263.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2263=5388 := by core033_kernel_decide
theorem rows2264 : actualRows2264=WordField.canonicalRows actualModulus 2264 (.band 2263 1001) := by core033_kernel_decide
theorem stats2264 : actualRows2264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2264=5124 := by core033_kernel_decide
theorem rows2265 : actualRows2265=WordField.canonicalRows actualModulus 2265 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2265 : actualRows2265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2265=2892 := by core033_kernel_decide
theorem rows2266 : actualRows2266=WordField.canonicalRows actualModulus 2266 (.bxor 0 2265) := by core033_kernel_decide
theorem stats2266 : actualRows2266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2266=7428 := by core033_kernel_decide
theorem rows2267 : actualRows2267=WordField.canonicalRows actualModulus 2267 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2267 : actualRows2267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2267=2820 := by core033_kernel_decide
theorem rows2268 : actualRows2268=WordField.canonicalRows actualModulus 2268 (.bnot 2267) := by core033_kernel_decide
theorem stats2268 : actualRows2268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2268=6276 := by core033_kernel_decide
theorem rows2269 : actualRows2269=WordField.canonicalRows actualModulus 2269 (.band 2266 2268) := by core033_kernel_decide
theorem stats2269 : actualRows2269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2269=5124 := by core033_kernel_decide
theorem rows2270 : actualRows2270=WordField.canonicalRows actualModulus 2270 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2270 : actualRows2270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2270=2892 := by core033_kernel_decide
theorem rows2271 : actualRows2271=WordField.canonicalRows actualModulus 2271 (.bxor 0 2270) := by core033_kernel_decide
theorem stats2271 : actualRows2271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2271=7428 := by core033_kernel_decide
theorem rows2272 : actualRows2272=WordField.canonicalRows actualModulus 2272 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2272 : actualRows2272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2272=2820 := by core033_kernel_decide
theorem rows2273 : actualRows2273=WordField.canonicalRows actualModulus 2273 (.bnot 2272) := by core033_kernel_decide
theorem stats2273 : actualRows2273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2273=6276 := by core033_kernel_decide
theorem rows2274 : actualRows2274=WordField.canonicalRows actualModulus 2274 (.bxor 2271 2273) := by core033_kernel_decide
theorem stats2274 : actualRows2274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2274=7428 := by core033_kernel_decide
theorem rows2275 : actualRows2275=WordField.canonicalRows actualModulus 2275 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2275 : actualRows2275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2275=2892 := by core033_kernel_decide
theorem rows2276 : actualRows2276=WordField.canonicalRows actualModulus 2276 (.bxor 0 2275) := by core033_kernel_decide
theorem stats2276 : actualRows2276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2276=7428 := by core033_kernel_decide
theorem rows2277 : actualRows2277=WordField.canonicalRows actualModulus 2277 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2277 : actualRows2277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2277=2820 := by core033_kernel_decide
theorem rows2278 : actualRows2278=WordField.canonicalRows actualModulus 2278 (.bnot 2277) := by core033_kernel_decide
theorem stats2278 : actualRows2278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2278=6276 := by core033_kernel_decide
theorem rows2279 : actualRows2279=WordField.canonicalRows actualModulus 2279 (.badd 2276 2278) := by core033_kernel_decide
theorem stats2279 : actualRows2279.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2279=5388 := by core033_kernel_decide
theorem rows2280 : actualRows2280=WordField.canonicalRows actualModulus 2280 (.bnot 2279) := by core033_kernel_decide
theorem stats2280 : actualRows2280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2280=6276 := by core033_kernel_decide
theorem rows2281 : actualRows2281=WordField.canonicalRows actualModulus 2281 (.band 2274 2280) := by core033_kernel_decide
theorem stats2281 : actualRows2281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2281=5124 := by core033_kernel_decide
theorem rows2282 : actualRows2282=WordField.canonicalRows actualModulus 2282 (.bxor 2269 2281) := by core033_kernel_decide
theorem stats2282 : actualRows2282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2282=7428 := by core033_kernel_decide
def partRows34 : List R1CS.Row := actualRows2219++actualRows2220++actualRows2221++actualRows2222++actualRows2223++actualRows2224++actualRows2225++actualRows2226++actualRows2227++actualRows2228++actualRows2229++actualRows2230++actualRows2231++actualRows2232++actualRows2233++actualRows2234++actualRows2235++actualRows2236++actualRows2237++actualRows2238++actualRows2239++actualRows2240++actualRows2241++actualRows2242++actualRows2243++actualRows2244++actualRows2245++actualRows2246++actualRows2247++actualRows2248++actualRows2249++actualRows2250++actualRows2251++actualRows2252++actualRows2253++actualRows2254++actualRows2255++actualRows2256++actualRows2257++actualRows2258++actualRows2259++actualRows2260++actualRows2261++actualRows2262++actualRows2263++actualRows2264++actualRows2265++actualRows2266++actualRows2267++actualRows2268++actualRows2269++actualRows2270++actualRows2271++actualRows2272++actualRows2273++actualRows2274++actualRows2275++actualRows2276++actualRows2277++actualRows2278++actualRows2279++actualRows2280++actualRows2281++actualRows2282
def partOps34 : List WordIR.Op := [.bxor 0 2218,.literal (BitVec.ofNat 32 0),.bnot 2220,.bxor 2219 2221,.literal (BitVec.ofNat 32 2),.bxor 0 2223,.literal (BitVec.ofNat 32 0),.bnot 2225,.badd 2224 2226,.bnot 2227,.band 2222 2228,.bxor 2217 2229,.shr 2230 31,.literal (BitVec.ofNat 32 1),.bxor 2231 2232,.bnot 2233,.literal (BitVec.ofNat 32 1),.badd 2234 2235,.bnot 2236,.band 2237 834,.bxor 2212 2238,.literal (BitVec.ofNat 32 2),.bxor 0 2240,.literal (BitVec.ofNat 32 0),.bnot 2242,.band 2241 2243,.literal (BitVec.ofNat 32 2),.bxor 0 2245,.literal (BitVec.ofNat 32 0),.bnot 2247,.bxor 2246 2248,.literal (BitVec.ofNat 32 2),.bxor 0 2250,.literal (BitVec.ofNat 32 0),.bnot 2252,.badd 2251 2253,.bnot 2254,.band 2249 2255,.bxor 2244 2256,.shr 2257 31,.literal (BitVec.ofNat 32 1),.bxor 2258 2259,.bnot 2260,.literal (BitVec.ofNat 32 1),.badd 2261 2262,.band 2263 1001,.literal (BitVec.ofNat 32 2),.bxor 0 2265,.literal (BitVec.ofNat 32 0),.bnot 2267,.band 2266 2268,.literal (BitVec.ofNat 32 2),.bxor 0 2270,.literal (BitVec.ofNat 32 0),.bnot 2272,.bxor 2271 2273,.literal (BitVec.ofNat 32 2),.bxor 0 2275,.literal (BitVec.ofNat 32 0),.bnot 2277,.badd 2276 2278,.bnot 2279,.band 2274 2280,.bxor 2269 2281]
theorem partExact34 : partRows34=WordField.rows actualModulus 2219 partOps34 := by
  simp only [partRows34,partOps34,WordField.rows,rows2219,rows2220,rows2221,rows2222,rows2223,rows2224,rows2225,rows2226,rows2227,rows2228,rows2229,rows2230,rows2231,rows2232,rows2233,rows2234,rows2235,rows2236,rows2237,rows2238,rows2239,rows2240,rows2241,rows2242,rows2243,rows2244,rows2245,rows2246,rows2247,rows2248,rows2249,rows2250,rows2251,rows2252,rows2253,rows2254,rows2255,rows2256,rows2257,rows2258,rows2259,rows2260,rows2261,rows2262,rows2263,rows2264,rows2265,rows2266,rows2267,rows2268,rows2269,rows2270,rows2271,rows2272,rows2273,rows2274,rows2275,rows2276,rows2277,rows2278,rows2279,rows2280,rows2281,rows2282,List.append_assoc,List.append_nil]
theorem partLength34 : partOps34.length=64 := by decide
theorem partStats34 : partRows34.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows34=337104 := by
  simp only [partRows34,List.length_append,MatrixRowBlocks.rows_weight_append,stats2219.1,stats2219.2,stats2220.1,stats2220.2,stats2221.1,stats2221.2,stats2222.1,stats2222.2,stats2223.1,stats2223.2,stats2224.1,stats2224.2,stats2225.1,stats2225.2,stats2226.1,stats2226.2,stats2227.1,stats2227.2,stats2228.1,stats2228.2,stats2229.1,stats2229.2,stats2230.1,stats2230.2,stats2231.1,stats2231.2,stats2232.1,stats2232.2,stats2233.1,stats2233.2,stats2234.1,stats2234.2,stats2235.1,stats2235.2,stats2236.1,stats2236.2,stats2237.1,stats2237.2,stats2238.1,stats2238.2,stats2239.1,stats2239.2,stats2240.1,stats2240.2,stats2241.1,stats2241.2,stats2242.1,stats2242.2,stats2243.1,stats2243.2,stats2244.1,stats2244.2,stats2245.1,stats2245.2,stats2246.1,stats2246.2,stats2247.1,stats2247.2,stats2248.1,stats2248.2,stats2249.1,stats2249.2,stats2250.1,stats2250.2,stats2251.1,stats2251.2,stats2252.1,stats2252.2,stats2253.1,stats2253.2,stats2254.1,stats2254.2,stats2255.1,stats2255.2,stats2256.1,stats2256.2,stats2257.1,stats2257.2,stats2258.1,stats2258.2,stats2259.1,stats2259.2,stats2260.1,stats2260.2,stats2261.1,stats2261.2,stats2262.1,stats2262.2,stats2263.1,stats2263.2,stats2264.1,stats2264.2,stats2265.1,stats2265.2,stats2266.1,stats2266.2,stats2267.1,stats2267.2,stats2268.1,stats2268.2,stats2269.1,stats2269.2,stats2270.1,stats2270.2,stats2271.1,stats2271.2,stats2272.1,stats2272.2,stats2273.1,stats2273.2,stats2274.1,stats2274.2,stats2275.1,stats2275.2,stats2276.1,stats2276.2,stats2277.1,stats2277.2,stats2278.1,stats2278.2,stats2279.1,stats2279.2,stats2280.1,stats2280.2,stats2281.1,stats2281.2,stats2282.1,stats2282.2]
  decide
end FrameHashControllerCheckedRows
