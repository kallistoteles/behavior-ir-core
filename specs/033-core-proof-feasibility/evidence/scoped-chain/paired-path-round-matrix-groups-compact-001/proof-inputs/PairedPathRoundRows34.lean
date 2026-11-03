import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData35
import PairedPathRoundInstructionMatrixData36
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2272 : actualRows2272=WordField.canonicalRows actualModulus 2272 (.bxor 2267 2271) := by core033_kernel_decide
theorem stats2272 : actualRows2272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2272=7428 := by core033_kernel_decide
theorem rows2273 : actualRows2273=WordField.canonicalRows actualModulus 2273 (.shr 2272 31) := by core033_kernel_decide
theorem stats2273 : actualRows2273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2273=2892 := by core033_kernel_decide
theorem rows2274 : actualRows2274=WordField.canonicalRows actualModulus 2274 (.badd 2266 2273) := by core033_kernel_decide
theorem stats2274 : actualRows2274.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2274=5388 := by core033_kernel_decide
theorem rows2275 : actualRows2275=WordField.canonicalRows actualModulus 2275 (.bxor 2274 1663) := by core033_kernel_decide
theorem stats2275 : actualRows2275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2275=7428 := by core033_kernel_decide
theorem rows2276 : actualRows2276=WordField.canonicalRows actualModulus 2276 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2276 : actualRows2276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2276=2820 := by core033_kernel_decide
theorem rows2277 : actualRows2277=WordField.canonicalRows actualModulus 2277 (.bnot 2276) := by core033_kernel_decide
theorem stats2277 : actualRows2277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2277=6276 := by core033_kernel_decide
theorem rows2278 : actualRows2278=WordField.canonicalRows actualModulus 2278 (.band 2275 2277) := by core033_kernel_decide
theorem stats2278 : actualRows2278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2278=5124 := by core033_kernel_decide
theorem rows2279 : actualRows2279=WordField.canonicalRows actualModulus 2279 (.badd 1495 1615) := by core033_kernel_decide
theorem stats2279 : actualRows2279.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2279=5388 := by core033_kernel_decide
theorem rows2280 : actualRows2280=WordField.canonicalRows actualModulus 2280 (.band 1485 1605) := by core033_kernel_decide
theorem stats2280 : actualRows2280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2280=5124 := by core033_kernel_decide
theorem rows2281 : actualRows2281=WordField.canonicalRows actualModulus 2281 (.bxor 1485 1605) := by core033_kernel_decide
theorem stats2281 : actualRows2281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2281=7428 := by core033_kernel_decide
theorem rows2282 : actualRows2282=WordField.canonicalRows actualModulus 2282 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2282 : actualRows2282.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2282=5388 := by core033_kernel_decide
theorem rows2283 : actualRows2283=WordField.canonicalRows actualModulus 2283 (.bnot 2282) := by core033_kernel_decide
theorem stats2283 : actualRows2283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2283=6276 := by core033_kernel_decide
theorem rows2284 : actualRows2284=WordField.canonicalRows actualModulus 2284 (.band 2281 2283) := by core033_kernel_decide
theorem stats2284 : actualRows2284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2284=5124 := by core033_kernel_decide
theorem rows2285 : actualRows2285=WordField.canonicalRows actualModulus 2285 (.bxor 2280 2284) := by core033_kernel_decide
theorem stats2285 : actualRows2285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2285=7428 := by core033_kernel_decide
theorem rows2286 : actualRows2286=WordField.canonicalRows actualModulus 2286 (.shr 2285 31) := by core033_kernel_decide
theorem stats2286 : actualRows2286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2286=2892 := by core033_kernel_decide
theorem rows2287 : actualRows2287=WordField.canonicalRows actualModulus 2287 (.badd 2279 2286) := by core033_kernel_decide
theorem stats2287 : actualRows2287.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2287=5388 := by core033_kernel_decide
theorem rows2288 : actualRows2288=WordField.canonicalRows actualModulus 2288 (.bxor 2287 1663) := by core033_kernel_decide
theorem stats2288 : actualRows2288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2288=7428 := by core033_kernel_decide
theorem rows2289 : actualRows2289=WordField.canonicalRows actualModulus 2289 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2289 : actualRows2289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2289=2820 := by core033_kernel_decide
theorem rows2290 : actualRows2290=WordField.canonicalRows actualModulus 2290 (.bnot 2289) := by core033_kernel_decide
theorem stats2290 : actualRows2290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2290=6276 := by core033_kernel_decide
theorem rows2291 : actualRows2291=WordField.canonicalRows actualModulus 2291 (.bxor 2288 2290) := by core033_kernel_decide
theorem stats2291 : actualRows2291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2291=7428 := by core033_kernel_decide
theorem rows2292 : actualRows2292=WordField.canonicalRows actualModulus 2292 (.badd 1495 1615) := by core033_kernel_decide
theorem stats2292 : actualRows2292.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2292=5388 := by core033_kernel_decide
theorem rows2293 : actualRows2293=WordField.canonicalRows actualModulus 2293 (.band 1485 1605) := by core033_kernel_decide
theorem stats2293 : actualRows2293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2293=5124 := by core033_kernel_decide
theorem rows2294 : actualRows2294=WordField.canonicalRows actualModulus 2294 (.bxor 1485 1605) := by core033_kernel_decide
theorem stats2294 : actualRows2294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2294=7428 := by core033_kernel_decide
theorem rows2295 : actualRows2295=WordField.canonicalRows actualModulus 2295 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2295 : actualRows2295.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2295=5388 := by core033_kernel_decide
theorem rows2296 : actualRows2296=WordField.canonicalRows actualModulus 2296 (.bnot 2295) := by core033_kernel_decide
theorem stats2296 : actualRows2296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2296=6276 := by core033_kernel_decide
theorem rows2297 : actualRows2297=WordField.canonicalRows actualModulus 2297 (.band 2294 2296) := by core033_kernel_decide
theorem stats2297 : actualRows2297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2297=5124 := by core033_kernel_decide
theorem rows2298 : actualRows2298=WordField.canonicalRows actualModulus 2298 (.bxor 2293 2297) := by core033_kernel_decide
theorem stats2298 : actualRows2298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2298=7428 := by core033_kernel_decide
theorem rows2299 : actualRows2299=WordField.canonicalRows actualModulus 2299 (.shr 2298 31) := by core033_kernel_decide
theorem stats2299 : actualRows2299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2299=2892 := by core033_kernel_decide
theorem rows2300 : actualRows2300=WordField.canonicalRows actualModulus 2300 (.badd 2292 2299) := by core033_kernel_decide
theorem stats2300 : actualRows2300.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2300=5388 := by core033_kernel_decide
theorem rows2301 : actualRows2301=WordField.canonicalRows actualModulus 2301 (.bxor 2300 1663) := by core033_kernel_decide
theorem stats2301 : actualRows2301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2301=7428 := by core033_kernel_decide
theorem rows2302 : actualRows2302=WordField.canonicalRows actualModulus 2302 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2302 : actualRows2302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2302=2820 := by core033_kernel_decide
theorem rows2303 : actualRows2303=WordField.canonicalRows actualModulus 2303 (.bnot 2302) := by core033_kernel_decide
theorem stats2303 : actualRows2303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2303=6276 := by core033_kernel_decide
theorem rows2304 : actualRows2304=WordField.canonicalRows actualModulus 2304 (.badd 2301 2303) := by core033_kernel_decide
theorem stats2304 : actualRows2304.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2304=5388 := by core033_kernel_decide
theorem rows2305 : actualRows2305=WordField.canonicalRows actualModulus 2305 (.bnot 2304) := by core033_kernel_decide
theorem stats2305 : actualRows2305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2305=6276 := by core033_kernel_decide
theorem rows2306 : actualRows2306=WordField.canonicalRows actualModulus 2306 (.band 2291 2305) := by core033_kernel_decide
theorem stats2306 : actualRows2306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2306=5124 := by core033_kernel_decide
theorem rows2307 : actualRows2307=WordField.canonicalRows actualModulus 2307 (.bxor 2278 2306) := by core033_kernel_decide
theorem stats2307 : actualRows2307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2307=7428 := by core033_kernel_decide
theorem rows2308 : actualRows2308=WordField.canonicalRows actualModulus 2308 (.shr 2307 31) := by core033_kernel_decide
theorem stats2308 : actualRows2308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2308=2892 := by core033_kernel_decide
theorem rows2309 : actualRows2309=WordField.canonicalRows actualModulus 2309 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2309 : actualRows2309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2309=2892 := by core033_kernel_decide
theorem rows2310 : actualRows2310=WordField.canonicalRows actualModulus 2310 (.bxor 2308 2309) := by core033_kernel_decide
theorem stats2310 : actualRows2310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2310=7428 := by core033_kernel_decide
theorem rows2311 : actualRows2311=WordField.canonicalRows actualModulus 2311 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2311 : actualRows2311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2311=2820 := by core033_kernel_decide
theorem rows2312 : actualRows2312=WordField.canonicalRows actualModulus 2312 (.bnot 2311) := by core033_kernel_decide
theorem stats2312 : actualRows2312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2312=6276 := by core033_kernel_decide
theorem rows2313 : actualRows2313=WordField.canonicalRows actualModulus 2313 (.band 1495 2312) := by core033_kernel_decide
theorem stats2313 : actualRows2313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2313=5124 := by core033_kernel_decide
theorem rows2314 : actualRows2314=WordField.canonicalRows actualModulus 2314 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2314 : actualRows2314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2314=2820 := by core033_kernel_decide
theorem rows2315 : actualRows2315=WordField.canonicalRows actualModulus 2315 (.bnot 2314) := by core033_kernel_decide
theorem stats2315 : actualRows2315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2315=6276 := by core033_kernel_decide
theorem rows2316 : actualRows2316=WordField.canonicalRows actualModulus 2316 (.bxor 1495 2315) := by core033_kernel_decide
theorem stats2316 : actualRows2316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2316=7428 := by core033_kernel_decide
theorem rows2317 : actualRows2317=WordField.canonicalRows actualModulus 2317 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2317 : actualRows2317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2317=2820 := by core033_kernel_decide
theorem rows2318 : actualRows2318=WordField.canonicalRows actualModulus 2318 (.bnot 2317) := by core033_kernel_decide
theorem stats2318 : actualRows2318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2318=6276 := by core033_kernel_decide
theorem rows2319 : actualRows2319=WordField.canonicalRows actualModulus 2319 (.badd 1495 2318) := by core033_kernel_decide
theorem stats2319 : actualRows2319.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2319=5388 := by core033_kernel_decide
theorem rows2320 : actualRows2320=WordField.canonicalRows actualModulus 2320 (.bnot 2319) := by core033_kernel_decide
theorem stats2320 : actualRows2320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2320=6276 := by core033_kernel_decide
theorem rows2321 : actualRows2321=WordField.canonicalRows actualModulus 2321 (.band 2316 2320) := by core033_kernel_decide
theorem stats2321 : actualRows2321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2321=5124 := by core033_kernel_decide
theorem rows2322 : actualRows2322=WordField.canonicalRows actualModulus 2322 (.bxor 2313 2321) := by core033_kernel_decide
theorem stats2322 : actualRows2322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2322=7428 := by core033_kernel_decide
theorem rows2323 : actualRows2323=WordField.canonicalRows actualModulus 2323 (.shr 2322 31) := by core033_kernel_decide
theorem stats2323 : actualRows2323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2323=2892 := by core033_kernel_decide
theorem rows2324 : actualRows2324=WordField.canonicalRows actualModulus 2324 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2324 : actualRows2324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2324=2892 := by core033_kernel_decide
theorem rows2325 : actualRows2325=WordField.canonicalRows actualModulus 2325 (.bxor 2323 2324) := by core033_kernel_decide
theorem stats2325 : actualRows2325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2325=7428 := by core033_kernel_decide
theorem rows2326 : actualRows2326=WordField.canonicalRows actualModulus 2326 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2326 : actualRows2326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2326=2892 := by core033_kernel_decide
theorem rows2327 : actualRows2327=WordField.canonicalRows actualModulus 2327 (.bnot 2326) := by core033_kernel_decide
theorem stats2327 : actualRows2327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2327=6276 := by core033_kernel_decide
theorem rows2328 : actualRows2328=WordField.canonicalRows actualModulus 2328 (.band 1485 2327) := by core033_kernel_decide
theorem stats2328 : actualRows2328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2328=5124 := by core033_kernel_decide
theorem rows2329 : actualRows2329=WordField.canonicalRows actualModulus 2329 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2329 : actualRows2329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2329=2892 := by core033_kernel_decide
theorem rows2330 : actualRows2330=WordField.canonicalRows actualModulus 2330 (.bnot 2329) := by core033_kernel_decide
theorem stats2330 : actualRows2330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2330=6276 := by core033_kernel_decide
theorem rows2331 : actualRows2331=WordField.canonicalRows actualModulus 2331 (.bxor 1485 2330) := by core033_kernel_decide
theorem stats2331 : actualRows2331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2331=7428 := by core033_kernel_decide
theorem rows2332 : actualRows2332=WordField.canonicalRows actualModulus 2332 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2332 : actualRows2332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2332=2892 := by core033_kernel_decide
theorem rows2333 : actualRows2333=WordField.canonicalRows actualModulus 2333 (.bnot 2332) := by core033_kernel_decide
theorem stats2333 : actualRows2333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2333=6276 := by core033_kernel_decide
theorem rows2334 : actualRows2334=WordField.canonicalRows actualModulus 2334 (.badd 1485 2333) := by core033_kernel_decide
theorem stats2334 : actualRows2334.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2334=5388 := by core033_kernel_decide
theorem rows2335 : actualRows2335=WordField.canonicalRows actualModulus 2335 (.bnot 2334) := by core033_kernel_decide
theorem stats2335 : actualRows2335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2335=6276 := by core033_kernel_decide
def partRows34 : List R1CS.Row := actualRows2272++actualRows2273++actualRows2274++actualRows2275++actualRows2276++actualRows2277++actualRows2278++actualRows2279++actualRows2280++actualRows2281++actualRows2282++actualRows2283++actualRows2284++actualRows2285++actualRows2286++actualRows2287++actualRows2288++actualRows2289++actualRows2290++actualRows2291++actualRows2292++actualRows2293++actualRows2294++actualRows2295++actualRows2296++actualRows2297++actualRows2298++actualRows2299++actualRows2300++actualRows2301++actualRows2302++actualRows2303++actualRows2304++actualRows2305++actualRows2306++actualRows2307++actualRows2308++actualRows2309++actualRows2310++actualRows2311++actualRows2312++actualRows2313++actualRows2314++actualRows2315++actualRows2316++actualRows2317++actualRows2318++actualRows2319++actualRows2320++actualRows2321++actualRows2322++actualRows2323++actualRows2324++actualRows2325++actualRows2326++actualRows2327++actualRows2328++actualRows2329++actualRows2330++actualRows2331++actualRows2332++actualRows2333++actualRows2334++actualRows2335
def partOps34 : List WordIR.Op := [.bxor 2267 2271,.shr 2272 31,.badd 2266 2273,.bxor 2274 1663,.literal (BitVec.ofNat 32 0),.bnot 2276,.band 2275 2277,.badd 1495 1615,.band 1485 1605,.bxor 1485 1605,.badd 1485 1605,.bnot 2282,.band 2281 2283,.bxor 2280 2284,.shr 2285 31,.badd 2279 2286,.bxor 2287 1663,.literal (BitVec.ofNat 32 0),.bnot 2289,.bxor 2288 2290,.badd 1495 1615,.band 1485 1605,.bxor 1485 1605,.badd 1485 1605,.bnot 2295,.band 2294 2296,.bxor 2293 2297,.shr 2298 31,.badd 2292 2299,.bxor 2300 1663,.literal (BitVec.ofNat 32 0),.bnot 2302,.badd 2301 2303,.bnot 2304,.band 2291 2305,.bxor 2278 2306,.shr 2307 31,.literal (BitVec.ofNat 32 1),.bxor 2308 2309,.literal (BitVec.ofNat 32 0),.bnot 2311,.band 1495 2312,.literal (BitVec.ofNat 32 0),.bnot 2314,.bxor 1495 2315,.literal (BitVec.ofNat 32 0),.bnot 2317,.badd 1495 2318,.bnot 2319,.band 2316 2320,.bxor 2313 2321,.shr 2322 31,.literal (BitVec.ofNat 32 1),.bxor 2323 2324,.literal (BitVec.ofNat 32 1048576),.bnot 2326,.band 1485 2327,.literal (BitVec.ofNat 32 1048576),.bnot 2329,.bxor 1485 2330,.literal (BitVec.ofNat 32 1048576),.bnot 2332,.badd 1485 2333,.bnot 2334]
theorem partExact34 : partRows34=WordField.rows actualModulus 2272 partOps34 := by
  simp only [partRows34,partOps34,WordField.rows,rows2272,rows2273,rows2274,rows2275,rows2276,rows2277,rows2278,rows2279,rows2280,rows2281,rows2282,rows2283,rows2284,rows2285,rows2286,rows2287,rows2288,rows2289,rows2290,rows2291,rows2292,rows2293,rows2294,rows2295,rows2296,rows2297,rows2298,rows2299,rows2300,rows2301,rows2302,rows2303,rows2304,rows2305,rows2306,rows2307,rows2308,rows2309,rows2310,rows2311,rows2312,rows2313,rows2314,rows2315,rows2316,rows2317,rows2318,rows2319,rows2320,rows2321,rows2322,rows2323,rows2324,rows2325,rows2326,rows2327,rows2328,rows2329,rows2330,rows2331,rows2332,rows2333,rows2334,rows2335,List.append_assoc,List.append_nil]
theorem partLength34 : partOps34.length=64 := by decide
theorem partStats34 : partRows34.length=2186 ∧ MatrixRowBlocks.rowsWeight partRows34=345120 := by
  simp only [partRows34,List.length_append,MatrixRowBlocks.rows_weight_append,stats2272.1,stats2272.2,stats2273.1,stats2273.2,stats2274.1,stats2274.2,stats2275.1,stats2275.2,stats2276.1,stats2276.2,stats2277.1,stats2277.2,stats2278.1,stats2278.2,stats2279.1,stats2279.2,stats2280.1,stats2280.2,stats2281.1,stats2281.2,stats2282.1,stats2282.2,stats2283.1,stats2283.2,stats2284.1,stats2284.2,stats2285.1,stats2285.2,stats2286.1,stats2286.2,stats2287.1,stats2287.2,stats2288.1,stats2288.2,stats2289.1,stats2289.2,stats2290.1,stats2290.2,stats2291.1,stats2291.2,stats2292.1,stats2292.2,stats2293.1,stats2293.2,stats2294.1,stats2294.2,stats2295.1,stats2295.2,stats2296.1,stats2296.2,stats2297.1,stats2297.2,stats2298.1,stats2298.2,stats2299.1,stats2299.2,stats2300.1,stats2300.2,stats2301.1,stats2301.2,stats2302.1,stats2302.2,stats2303.1,stats2303.2,stats2304.1,stats2304.2,stats2305.1,stats2305.2,stats2306.1,stats2306.2,stats2307.1,stats2307.2,stats2308.1,stats2308.2,stats2309.1,stats2309.2,stats2310.1,stats2310.2,stats2311.1,stats2311.2,stats2312.1,stats2312.2,stats2313.1,stats2313.2,stats2314.1,stats2314.2,stats2315.1,stats2315.2,stats2316.1,stats2316.2,stats2317.1,stats2317.2,stats2318.1,stats2318.2,stats2319.1,stats2319.2,stats2320.1,stats2320.2,stats2321.1,stats2321.2,stats2322.1,stats2322.2,stats2323.1,stats2323.2,stats2324.1,stats2324.2,stats2325.1,stats2325.2,stats2326.1,stats2326.2,stats2327.1,stats2327.2,stats2328.1,stats2328.2,stats2329.1,stats2329.2,stats2330.1,stats2330.2,stats2331.1,stats2331.2,stats2332.1,stats2332.2,stats2333.1,stats2333.2,stats2334.1,stats2334.2,stats2335.1,stats2335.2]
  decide
end PairedPathRoundCheckedRows
