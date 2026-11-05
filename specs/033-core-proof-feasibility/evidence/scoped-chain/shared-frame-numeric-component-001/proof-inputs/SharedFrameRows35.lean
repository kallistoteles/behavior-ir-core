import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData35
import SharedFrameInstructionMatrixData36
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2283 : actualRows2283=WordField.canonicalRows actualModulus 2283 (.badd 2178 2271) := by core033_kernel_decide
theorem stats2283 : actualRows2283.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2283=5388 := by core033_kernel_decide
theorem rows2284 : actualRows2284=WordField.canonicalRows actualModulus 2284 (.rotr 2283 6) := by core033_kernel_decide
theorem stats2284 : actualRows2284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2284=5124 := by core033_kernel_decide
theorem rows2285 : actualRows2285=WordField.canonicalRows actualModulus 2285 (.rotr 2283 11) := by core033_kernel_decide
theorem stats2285 : actualRows2285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2285=5124 := by core033_kernel_decide
theorem rows2286 : actualRows2286=WordField.canonicalRows actualModulus 2286 (.bxor 2284 2285) := by core033_kernel_decide
theorem stats2286 : actualRows2286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2286=7428 := by core033_kernel_decide
theorem rows2287 : actualRows2287=WordField.canonicalRows actualModulus 2287 (.rotr 2283 25) := by core033_kernel_decide
theorem stats2287 : actualRows2287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2287=5124 := by core033_kernel_decide
theorem rows2288 : actualRows2288=WordField.canonicalRows actualModulus 2288 (.bxor 2286 2287) := by core033_kernel_decide
theorem stats2288 : actualRows2288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2288=7428 := by core033_kernel_decide
theorem rows2289 : actualRows2289=WordField.canonicalRows actualModulus 2289 (.badd 2205 2288) := by core033_kernel_decide
theorem stats2289 : actualRows2289.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2289=5388 := by core033_kernel_decide
theorem rows2290 : actualRows2290=WordField.canonicalRows actualModulus 2290 (.band 2283 2257) := by core033_kernel_decide
theorem stats2290 : actualRows2290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2290=5124 := by core033_kernel_decide
theorem rows2291 : actualRows2291=WordField.canonicalRows actualModulus 2291 (.bnot 2283) := by core033_kernel_decide
theorem stats2291 : actualRows2291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2291=6276 := by core033_kernel_decide
theorem rows2292 : actualRows2292=WordField.canonicalRows actualModulus 2292 (.band 2291 2231) := by core033_kernel_decide
theorem stats2292 : actualRows2292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2292=5124 := by core033_kernel_decide
theorem rows2293 : actualRows2293=WordField.canonicalRows actualModulus 2293 (.bxor 2290 2292) := by core033_kernel_decide
theorem stats2293 : actualRows2293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2293=7428 := by core033_kernel_decide
theorem rows2294 : actualRows2294=WordField.canonicalRows actualModulus 2294 (.badd 2289 2293) := by core033_kernel_decide
theorem stats2294 : actualRows2294.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2294=5388 := by core033_kernel_decide
theorem rows2295 : actualRows2295=WordField.canonicalRows actualModulus 2295 (.literal (BitVec.ofNat 32 1508970993)) := by core033_kernel_decide
theorem stats2295 : actualRows2295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2295=3972 := by core033_kernel_decide
theorem rows2296 : actualRows2296=WordField.canonicalRows actualModulus 2296 (.badd 2294 2295) := by core033_kernel_decide
theorem stats2296 : actualRows2296.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2296=5388 := by core033_kernel_decide
theorem rows2297 : actualRows2297=WordField.canonicalRows actualModulus 2297 (.badd 2296 892) := by core033_kernel_decide
theorem stats2297 : actualRows2297.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2297=5388 := by core033_kernel_decide
theorem rows2298 : actualRows2298=WordField.canonicalRows actualModulus 2298 (.rotr 2282 2) := by core033_kernel_decide
theorem stats2298 : actualRows2298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2298=5124 := by core033_kernel_decide
theorem rows2299 : actualRows2299=WordField.canonicalRows actualModulus 2299 (.rotr 2282 13) := by core033_kernel_decide
theorem stats2299 : actualRows2299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2299=5124 := by core033_kernel_decide
theorem rows2300 : actualRows2300=WordField.canonicalRows actualModulus 2300 (.bxor 2298 2299) := by core033_kernel_decide
theorem stats2300 : actualRows2300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2300=7428 := by core033_kernel_decide
theorem rows2301 : actualRows2301=WordField.canonicalRows actualModulus 2301 (.rotr 2282 22) := by core033_kernel_decide
theorem stats2301 : actualRows2301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2301=5124 := by core033_kernel_decide
theorem rows2302 : actualRows2302=WordField.canonicalRows actualModulus 2302 (.bxor 2300 2301) := by core033_kernel_decide
theorem stats2302 : actualRows2302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2302=7428 := by core033_kernel_decide
theorem rows2303 : actualRows2303=WordField.canonicalRows actualModulus 2303 (.band 2282 2256) := by core033_kernel_decide
theorem stats2303 : actualRows2303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2303=5124 := by core033_kernel_decide
theorem rows2304 : actualRows2304=WordField.canonicalRows actualModulus 2304 (.band 2282 2230) := by core033_kernel_decide
theorem stats2304 : actualRows2304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2304=5124 := by core033_kernel_decide
theorem rows2305 : actualRows2305=WordField.canonicalRows actualModulus 2305 (.bxor 2303 2304) := by core033_kernel_decide
theorem stats2305 : actualRows2305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2305=7428 := by core033_kernel_decide
theorem rows2306 : actualRows2306=WordField.canonicalRows actualModulus 2306 (.bxor 2305 2277) := by core033_kernel_decide
theorem stats2306 : actualRows2306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2306=7428 := by core033_kernel_decide
theorem rows2307 : actualRows2307=WordField.canonicalRows actualModulus 2307 (.badd 2302 2306) := by core033_kernel_decide
theorem stats2307 : actualRows2307.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2307=5388 := by core033_kernel_decide
theorem rows2308 : actualRows2308=WordField.canonicalRows actualModulus 2308 (.badd 2297 2307) := by core033_kernel_decide
theorem stats2308 : actualRows2308.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2308=5388 := by core033_kernel_decide
theorem rows2309 : actualRows2309=WordField.canonicalRows actualModulus 2309 (.badd 2204 2297) := by core033_kernel_decide
theorem stats2309 : actualRows2309.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2309=5388 := by core033_kernel_decide
theorem rows2310 : actualRows2310=WordField.canonicalRows actualModulus 2310 (.rotr 2309 6) := by core033_kernel_decide
theorem stats2310 : actualRows2310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2310=5124 := by core033_kernel_decide
theorem rows2311 : actualRows2311=WordField.canonicalRows actualModulus 2311 (.rotr 2309 11) := by core033_kernel_decide
theorem stats2311 : actualRows2311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2311=5124 := by core033_kernel_decide
theorem rows2312 : actualRows2312=WordField.canonicalRows actualModulus 2312 (.bxor 2310 2311) := by core033_kernel_decide
theorem stats2312 : actualRows2312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2312=7428 := by core033_kernel_decide
theorem rows2313 : actualRows2313=WordField.canonicalRows actualModulus 2313 (.rotr 2309 25) := by core033_kernel_decide
theorem stats2313 : actualRows2313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2313=5124 := by core033_kernel_decide
theorem rows2314 : actualRows2314=WordField.canonicalRows actualModulus 2314 (.bxor 2312 2313) := by core033_kernel_decide
theorem stats2314 : actualRows2314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2314=7428 := by core033_kernel_decide
theorem rows2315 : actualRows2315=WordField.canonicalRows actualModulus 2315 (.badd 2231 2314) := by core033_kernel_decide
theorem stats2315 : actualRows2315.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2315=5388 := by core033_kernel_decide
theorem rows2316 : actualRows2316=WordField.canonicalRows actualModulus 2316 (.band 2309 2283) := by core033_kernel_decide
theorem stats2316 : actualRows2316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2316=5124 := by core033_kernel_decide
theorem rows2317 : actualRows2317=WordField.canonicalRows actualModulus 2317 (.bnot 2309) := by core033_kernel_decide
theorem stats2317 : actualRows2317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2317=6276 := by core033_kernel_decide
theorem rows2318 : actualRows2318=WordField.canonicalRows actualModulus 2318 (.band 2317 2257) := by core033_kernel_decide
theorem stats2318 : actualRows2318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2318=5124 := by core033_kernel_decide
theorem rows2319 : actualRows2319=WordField.canonicalRows actualModulus 2319 (.bxor 2316 2318) := by core033_kernel_decide
theorem stats2319 : actualRows2319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2319=7428 := by core033_kernel_decide
theorem rows2320 : actualRows2320=WordField.canonicalRows actualModulus 2320 (.badd 2315 2319) := by core033_kernel_decide
theorem stats2320 : actualRows2320.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2320=5388 := by core033_kernel_decide
theorem rows2321 : actualRows2321=WordField.canonicalRows actualModulus 2321 (.literal (BitVec.ofNat 32 2453635748)) := by core033_kernel_decide
theorem stats2321 : actualRows2321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2321=3828 := by core033_kernel_decide
theorem rows2322 : actualRows2322=WordField.canonicalRows actualModulus 2322 (.badd 2320 2321) := by core033_kernel_decide
theorem stats2322 : actualRows2322.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2322=5388 := by core033_kernel_decide
theorem rows2323 : actualRows2323=WordField.canonicalRows actualModulus 2323 (.badd 2322 898) := by core033_kernel_decide
theorem stats2323 : actualRows2323.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2323=5388 := by core033_kernel_decide
theorem rows2324 : actualRows2324=WordField.canonicalRows actualModulus 2324 (.rotr 2308 2) := by core033_kernel_decide
theorem stats2324 : actualRows2324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2324=5124 := by core033_kernel_decide
theorem rows2325 : actualRows2325=WordField.canonicalRows actualModulus 2325 (.rotr 2308 13) := by core033_kernel_decide
theorem stats2325 : actualRows2325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2325=5124 := by core033_kernel_decide
theorem rows2326 : actualRows2326=WordField.canonicalRows actualModulus 2326 (.bxor 2324 2325) := by core033_kernel_decide
theorem stats2326 : actualRows2326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2326=7428 := by core033_kernel_decide
theorem rows2327 : actualRows2327=WordField.canonicalRows actualModulus 2327 (.rotr 2308 22) := by core033_kernel_decide
theorem stats2327 : actualRows2327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2327=5124 := by core033_kernel_decide
theorem rows2328 : actualRows2328=WordField.canonicalRows actualModulus 2328 (.bxor 2326 2327) := by core033_kernel_decide
theorem stats2328 : actualRows2328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2328=7428 := by core033_kernel_decide
theorem rows2329 : actualRows2329=WordField.canonicalRows actualModulus 2329 (.band 2308 2282) := by core033_kernel_decide
theorem stats2329 : actualRows2329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2329=5124 := by core033_kernel_decide
theorem rows2330 : actualRows2330=WordField.canonicalRows actualModulus 2330 (.band 2308 2256) := by core033_kernel_decide
theorem stats2330 : actualRows2330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2330=5124 := by core033_kernel_decide
theorem rows2331 : actualRows2331=WordField.canonicalRows actualModulus 2331 (.bxor 2329 2330) := by core033_kernel_decide
theorem stats2331 : actualRows2331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2331=7428 := by core033_kernel_decide
theorem rows2332 : actualRows2332=WordField.canonicalRows actualModulus 2332 (.bxor 2331 2303) := by core033_kernel_decide
theorem stats2332 : actualRows2332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2332=7428 := by core033_kernel_decide
theorem rows2333 : actualRows2333=WordField.canonicalRows actualModulus 2333 (.badd 2328 2332) := by core033_kernel_decide
theorem stats2333 : actualRows2333.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2333=5388 := by core033_kernel_decide
theorem rows2334 : actualRows2334=WordField.canonicalRows actualModulus 2334 (.badd 2323 2333) := by core033_kernel_decide
theorem stats2334 : actualRows2334.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2334=5388 := by core033_kernel_decide
theorem rows2335 : actualRows2335=WordField.canonicalRows actualModulus 2335 (.badd 2230 2323) := by core033_kernel_decide
theorem stats2335 : actualRows2335.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2335=5388 := by core033_kernel_decide
theorem rows2336 : actualRows2336=WordField.canonicalRows actualModulus 2336 (.rotr 2335 6) := by core033_kernel_decide
theorem stats2336 : actualRows2336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2336=5124 := by core033_kernel_decide
theorem rows2337 : actualRows2337=WordField.canonicalRows actualModulus 2337 (.rotr 2335 11) := by core033_kernel_decide
theorem stats2337 : actualRows2337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2337=5124 := by core033_kernel_decide
theorem rows2338 : actualRows2338=WordField.canonicalRows actualModulus 2338 (.bxor 2336 2337) := by core033_kernel_decide
theorem stats2338 : actualRows2338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2338=7428 := by core033_kernel_decide
theorem rows2339 : actualRows2339=WordField.canonicalRows actualModulus 2339 (.rotr 2335 25) := by core033_kernel_decide
theorem stats2339 : actualRows2339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2339=5124 := by core033_kernel_decide
theorem rows2340 : actualRows2340=WordField.canonicalRows actualModulus 2340 (.bxor 2338 2339) := by core033_kernel_decide
theorem stats2340 : actualRows2340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2340=7428 := by core033_kernel_decide
theorem rows2341 : actualRows2341=WordField.canonicalRows actualModulus 2341 (.badd 2257 2340) := by core033_kernel_decide
theorem stats2341 : actualRows2341.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2341=5388 := by core033_kernel_decide
theorem rows2342 : actualRows2342=WordField.canonicalRows actualModulus 2342 (.band 2335 2309) := by core033_kernel_decide
theorem stats2342 : actualRows2342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2342=5124 := by core033_kernel_decide
theorem rows2343 : actualRows2343=WordField.canonicalRows actualModulus 2343 (.bnot 2335) := by core033_kernel_decide
theorem stats2343 : actualRows2343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2343=6276 := by core033_kernel_decide
theorem rows2344 : actualRows2344=WordField.canonicalRows actualModulus 2344 (.band 2343 2283) := by core033_kernel_decide
theorem stats2344 : actualRows2344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2344=5124 := by core033_kernel_decide
theorem rows2345 : actualRows2345=WordField.canonicalRows actualModulus 2345 (.bxor 2342 2344) := by core033_kernel_decide
theorem stats2345 : actualRows2345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2345=7428 := by core033_kernel_decide
theorem rows2346 : actualRows2346=WordField.canonicalRows actualModulus 2346 (.badd 2341 2345) := by core033_kernel_decide
theorem stats2346 : actualRows2346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2346=5388 := by core033_kernel_decide
def partRows35 : List R1CS.Row := actualRows2283++actualRows2284++actualRows2285++actualRows2286++actualRows2287++actualRows2288++actualRows2289++actualRows2290++actualRows2291++actualRows2292++actualRows2293++actualRows2294++actualRows2295++actualRows2296++actualRows2297++actualRows2298++actualRows2299++actualRows2300++actualRows2301++actualRows2302++actualRows2303++actualRows2304++actualRows2305++actualRows2306++actualRows2307++actualRows2308++actualRows2309++actualRows2310++actualRows2311++actualRows2312++actualRows2313++actualRows2314++actualRows2315++actualRows2316++actualRows2317++actualRows2318++actualRows2319++actualRows2320++actualRows2321++actualRows2322++actualRows2323++actualRows2324++actualRows2325++actualRows2326++actualRows2327++actualRows2328++actualRows2329++actualRows2330++actualRows2331++actualRows2332++actualRows2333++actualRows2334++actualRows2335++actualRows2336++actualRows2337++actualRows2338++actualRows2339++actualRows2340++actualRows2341++actualRows2342++actualRows2343++actualRows2344++actualRows2345++actualRows2346
def partOps35 : List WordIR.Op := [.badd 2178 2271,.rotr 2283 6,.rotr 2283 11,.bxor 2284 2285,.rotr 2283 25,.bxor 2286 2287,.badd 2205 2288,.band 2283 2257,.bnot 2283,.band 2291 2231,.bxor 2290 2292,.badd 2289 2293,.literal (BitVec.ofNat 32 1508970993),.badd 2294 2295,.badd 2296 892,.rotr 2282 2,.rotr 2282 13,.bxor 2298 2299,.rotr 2282 22,.bxor 2300 2301,.band 2282 2256,.band 2282 2230,.bxor 2303 2304,.bxor 2305 2277,.badd 2302 2306,.badd 2297 2307,.badd 2204 2297,.rotr 2309 6,.rotr 2309 11,.bxor 2310 2311,.rotr 2309 25,.bxor 2312 2313,.badd 2231 2314,.band 2309 2283,.bnot 2309,.band 2317 2257,.bxor 2316 2318,.badd 2315 2319,.literal (BitVec.ofNat 32 2453635748),.badd 2320 2321,.badd 2322 898,.rotr 2308 2,.rotr 2308 13,.bxor 2324 2325,.rotr 2308 22,.bxor 2326 2327,.band 2308 2282,.band 2308 2256,.bxor 2329 2330,.bxor 2331 2303,.badd 2328 2332,.badd 2323 2333,.badd 2230 2323,.rotr 2335 6,.rotr 2335 11,.bxor 2336 2337,.rotr 2335 25,.bxor 2338 2339,.badd 2257 2340,.band 2335 2309,.bnot 2335,.band 2343 2283,.bxor 2342 2344,.badd 2341 2345]
theorem partExact35 : partRows35=WordField.rows actualModulus 2283 partOps35 := by
  simp only [partRows35,partOps35,WordField.rows,rows2283,rows2284,rows2285,rows2286,rows2287,rows2288,rows2289,rows2290,rows2291,rows2292,rows2293,rows2294,rows2295,rows2296,rows2297,rows2298,rows2299,rows2300,rows2301,rows2302,rows2303,rows2304,rows2305,rows2306,rows2307,rows2308,rows2309,rows2310,rows2311,rows2312,rows2313,rows2314,rows2315,rows2316,rows2317,rows2318,rows2319,rows2320,rows2321,rows2322,rows2323,rows2324,rows2325,rows2326,rows2327,rows2328,rows2329,rows2330,rows2331,rows2332,rows2333,rows2334,rows2335,rows2336,rows2337,rows2338,rows2339,rows2340,rows2341,rows2342,rows2343,rows2344,rows2345,rows2346,List.append_assoc,List.append_nil]
theorem partLength35 : partOps35.length=64 := by decide
theorem partStats35 : partRows35.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows35=372600 := by
  simp only [partRows35,List.length_append,MatrixRowBlocks.rows_weight_append,stats2283.1,stats2283.2,stats2284.1,stats2284.2,stats2285.1,stats2285.2,stats2286.1,stats2286.2,stats2287.1,stats2287.2,stats2288.1,stats2288.2,stats2289.1,stats2289.2,stats2290.1,stats2290.2,stats2291.1,stats2291.2,stats2292.1,stats2292.2,stats2293.1,stats2293.2,stats2294.1,stats2294.2,stats2295.1,stats2295.2,stats2296.1,stats2296.2,stats2297.1,stats2297.2,stats2298.1,stats2298.2,stats2299.1,stats2299.2,stats2300.1,stats2300.2,stats2301.1,stats2301.2,stats2302.1,stats2302.2,stats2303.1,stats2303.2,stats2304.1,stats2304.2,stats2305.1,stats2305.2,stats2306.1,stats2306.2,stats2307.1,stats2307.2,stats2308.1,stats2308.2,stats2309.1,stats2309.2,stats2310.1,stats2310.2,stats2311.1,stats2311.2,stats2312.1,stats2312.2,stats2313.1,stats2313.2,stats2314.1,stats2314.2,stats2315.1,stats2315.2,stats2316.1,stats2316.2,stats2317.1,stats2317.2,stats2318.1,stats2318.2,stats2319.1,stats2319.2,stats2320.1,stats2320.2,stats2321.1,stats2321.2,stats2322.1,stats2322.2,stats2323.1,stats2323.2,stats2324.1,stats2324.2,stats2325.1,stats2325.2,stats2326.1,stats2326.2,stats2327.1,stats2327.2,stats2328.1,stats2328.2,stats2329.1,stats2329.2,stats2330.1,stats2330.2,stats2331.1,stats2331.2,stats2332.1,stats2332.2,stats2333.1,stats2333.2,stats2334.1,stats2334.2,stats2335.1,stats2335.2,stats2336.1,stats2336.2,stats2337.1,stats2337.2,stats2338.1,stats2338.2,stats2339.1,stats2339.2,stats2340.1,stats2340.2,stats2341.1,stats2341.2,stats2342.1,stats2342.2,stats2343.1,stats2343.2,stats2344.1,stats2344.2,stats2345.1,stats2345.2,stats2346.1,stats2346.2]
  decide
end SharedFrameCheckedRows
