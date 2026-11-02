import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData35
import ActualMatrixData36
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2264 : actualRows2264=WordField.canonicalRows actualModulus 2264 (.bxor 2262 2263) := by core033_kernel_decide
theorem stats2264 : actualRows2264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2264=7428 := by core033_kernel_decide
theorem rows2265 : actualRows2265=WordField.canonicalRows actualModulus 2265 (.badd 2259 2264) := by core033_kernel_decide
theorem stats2265 : actualRows2265.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2265=5388 := by core033_kernel_decide
theorem rows2266 : actualRows2266=WordField.canonicalRows actualModulus 2266 (.badd 2254 2265) := by core033_kernel_decide
theorem stats2266 : actualRows2266.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2266=5388 := by core033_kernel_decide
theorem rows2267 : actualRows2267=WordField.canonicalRows actualModulus 2267 (.badd 2158 2254) := by core033_kernel_decide
theorem stats2267 : actualRows2267.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2267=5388 := by core033_kernel_decide
theorem rows2268 : actualRows2268=WordField.canonicalRows actualModulus 2268 (.rotr 2267 6) := by core033_kernel_decide
theorem stats2268 : actualRows2268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2268=5124 := by core033_kernel_decide
theorem rows2269 : actualRows2269=WordField.canonicalRows actualModulus 2269 (.rotr 2267 11) := by core033_kernel_decide
theorem stats2269 : actualRows2269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2269=5124 := by core033_kernel_decide
theorem rows2270 : actualRows2270=WordField.canonicalRows actualModulus 2270 (.bxor 2268 2269) := by core033_kernel_decide
theorem stats2270 : actualRows2270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2270=7428 := by core033_kernel_decide
theorem rows2271 : actualRows2271=WordField.canonicalRows actualModulus 2271 (.rotr 2267 25) := by core033_kernel_decide
theorem stats2271 : actualRows2271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2271=5124 := by core033_kernel_decide
theorem rows2272 : actualRows2272=WordField.canonicalRows actualModulus 2272 (.bxor 2270 2271) := by core033_kernel_decide
theorem stats2272 : actualRows2272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2272=7428 := by core033_kernel_decide
theorem rows2273 : actualRows2273=WordField.canonicalRows actualModulus 2273 (.badd 2186 2272) := by core033_kernel_decide
theorem stats2273 : actualRows2273.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2273=5388 := by core033_kernel_decide
theorem rows2274 : actualRows2274=WordField.canonicalRows actualModulus 2274 (.band 2267 2240) := by core033_kernel_decide
theorem stats2274 : actualRows2274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2274=5124 := by core033_kernel_decide
theorem rows2275 : actualRows2275=WordField.canonicalRows actualModulus 2275 (.bnot 2267) := by core033_kernel_decide
theorem stats2275 : actualRows2275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2275=6276 := by core033_kernel_decide
theorem rows2276 : actualRows2276=WordField.canonicalRows actualModulus 2276 (.band 2275 2213) := by core033_kernel_decide
theorem stats2276 : actualRows2276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2276=5124 := by core033_kernel_decide
theorem rows2277 : actualRows2277=WordField.canonicalRows actualModulus 2277 (.bxor 2274 2276) := by core033_kernel_decide
theorem stats2277 : actualRows2277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2277=7428 := by core033_kernel_decide
theorem rows2278 : actualRows2278=WordField.canonicalRows actualModulus 2278 (.badd 2273 2277) := by core033_kernel_decide
theorem stats2278 : actualRows2278.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2278=5388 := by core033_kernel_decide
theorem rows2279 : actualRows2279=WordField.canonicalRows actualModulus 2279 (.literal (BitVec.ofNat 32 2428436474)) := by core033_kernel_decide
theorem stats2279 : actualRows2279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2279=4404 := by core033_kernel_decide
theorem rows2280 : actualRows2280=WordField.canonicalRows actualModulus 2280 (.badd 2278 2279) := by core033_kernel_decide
theorem stats2280 : actualRows2280.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2280=5388 := by core033_kernel_decide
theorem rows2281 : actualRows2281=WordField.canonicalRows actualModulus 2281 (.badd 2280 608) := by core033_kernel_decide
theorem stats2281 : actualRows2281.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2281=5388 := by core033_kernel_decide
theorem rows2282 : actualRows2282=WordField.canonicalRows actualModulus 2282 (.rotr 2266 2) := by core033_kernel_decide
theorem stats2282 : actualRows2282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2282=5124 := by core033_kernel_decide
theorem rows2283 : actualRows2283=WordField.canonicalRows actualModulus 2283 (.rotr 2266 13) := by core033_kernel_decide
theorem stats2283 : actualRows2283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2283=5124 := by core033_kernel_decide
theorem rows2284 : actualRows2284=WordField.canonicalRows actualModulus 2284 (.bxor 2282 2283) := by core033_kernel_decide
theorem stats2284 : actualRows2284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2284=7428 := by core033_kernel_decide
theorem rows2285 : actualRows2285=WordField.canonicalRows actualModulus 2285 (.rotr 2266 22) := by core033_kernel_decide
theorem stats2285 : actualRows2285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2285=5124 := by core033_kernel_decide
theorem rows2286 : actualRows2286=WordField.canonicalRows actualModulus 2286 (.bxor 2284 2285) := by core033_kernel_decide
theorem stats2286 : actualRows2286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2286=7428 := by core033_kernel_decide
theorem rows2287 : actualRows2287=WordField.canonicalRows actualModulus 2287 (.band 2266 2239) := by core033_kernel_decide
theorem stats2287 : actualRows2287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2287=5124 := by core033_kernel_decide
theorem rows2288 : actualRows2288=WordField.canonicalRows actualModulus 2288 (.band 2266 2212) := by core033_kernel_decide
theorem stats2288 : actualRows2288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2288=5124 := by core033_kernel_decide
theorem rows2289 : actualRows2289=WordField.canonicalRows actualModulus 2289 (.bxor 2287 2288) := by core033_kernel_decide
theorem stats2289 : actualRows2289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2289=7428 := by core033_kernel_decide
theorem rows2290 : actualRows2290=WordField.canonicalRows actualModulus 2290 (.band 2239 2212) := by core033_kernel_decide
theorem stats2290 : actualRows2290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2290=5124 := by core033_kernel_decide
theorem rows2291 : actualRows2291=WordField.canonicalRows actualModulus 2291 (.bxor 2289 2290) := by core033_kernel_decide
theorem stats2291 : actualRows2291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2291=7428 := by core033_kernel_decide
theorem rows2292 : actualRows2292=WordField.canonicalRows actualModulus 2292 (.badd 2286 2291) := by core033_kernel_decide
theorem stats2292 : actualRows2292.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2292=5388 := by core033_kernel_decide
theorem rows2293 : actualRows2293=WordField.canonicalRows actualModulus 2293 (.badd 2281 2292) := by core033_kernel_decide
theorem stats2293 : actualRows2293.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2293=5388 := by core033_kernel_decide
theorem rows2294 : actualRows2294=WordField.canonicalRows actualModulus 2294 (.badd 2185 2281) := by core033_kernel_decide
theorem stats2294 : actualRows2294.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2294=5388 := by core033_kernel_decide
theorem rows2295 : actualRows2295=WordField.canonicalRows actualModulus 2295 (.rotr 2294 6) := by core033_kernel_decide
theorem stats2295 : actualRows2295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2295=5124 := by core033_kernel_decide
theorem rows2296 : actualRows2296=WordField.canonicalRows actualModulus 2296 (.rotr 2294 11) := by core033_kernel_decide
theorem stats2296 : actualRows2296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2296=5124 := by core033_kernel_decide
theorem rows2297 : actualRows2297=WordField.canonicalRows actualModulus 2297 (.bxor 2295 2296) := by core033_kernel_decide
theorem stats2297 : actualRows2297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2297=7428 := by core033_kernel_decide
theorem rows2298 : actualRows2298=WordField.canonicalRows actualModulus 2298 (.rotr 2294 25) := by core033_kernel_decide
theorem stats2298 : actualRows2298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2298=5124 := by core033_kernel_decide
theorem rows2299 : actualRows2299=WordField.canonicalRows actualModulus 2299 (.bxor 2297 2298) := by core033_kernel_decide
theorem stats2299 : actualRows2299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2299=7428 := by core033_kernel_decide
theorem rows2300 : actualRows2300=WordField.canonicalRows actualModulus 2300 (.badd 2213 2299) := by core033_kernel_decide
theorem stats2300 : actualRows2300.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2300=5388 := by core033_kernel_decide
theorem rows2301 : actualRows2301=WordField.canonicalRows actualModulus 2301 (.band 2294 2267) := by core033_kernel_decide
theorem stats2301 : actualRows2301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2301=5124 := by core033_kernel_decide
theorem rows2302 : actualRows2302=WordField.canonicalRows actualModulus 2302 (.bnot 2294) := by core033_kernel_decide
theorem stats2302 : actualRows2302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2302=6276 := by core033_kernel_decide
theorem rows2303 : actualRows2303=WordField.canonicalRows actualModulus 2303 (.band 2302 2240) := by core033_kernel_decide
theorem stats2303 : actualRows2303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2303=5124 := by core033_kernel_decide
theorem rows2304 : actualRows2304=WordField.canonicalRows actualModulus 2304 (.bxor 2301 2303) := by core033_kernel_decide
theorem stats2304 : actualRows2304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2304=7428 := by core033_kernel_decide
theorem rows2305 : actualRows2305=WordField.canonicalRows actualModulus 2305 (.badd 2300 2304) := by core033_kernel_decide
theorem stats2305 : actualRows2305.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2305=5388 := by core033_kernel_decide
theorem rows2306 : actualRows2306=WordField.canonicalRows actualModulus 2306 (.literal (BitVec.ofNat 32 2756734187)) := by core033_kernel_decide
theorem stats2306 : actualRows2306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2306=3900 := by core033_kernel_decide
theorem rows2307 : actualRows2307=WordField.canonicalRows actualModulus 2307 (.badd 2305 2306) := by core033_kernel_decide
theorem stats2307 : actualRows2307.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2307=5388 := by core033_kernel_decide
theorem rows2308 : actualRows2308=WordField.canonicalRows actualModulus 2308 (.badd 2307 621) := by core033_kernel_decide
theorem stats2308 : actualRows2308.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2308=5388 := by core033_kernel_decide
theorem rows2309 : actualRows2309=WordField.canonicalRows actualModulus 2309 (.rotr 2293 2) := by core033_kernel_decide
theorem stats2309 : actualRows2309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2309=5124 := by core033_kernel_decide
theorem rows2310 : actualRows2310=WordField.canonicalRows actualModulus 2310 (.rotr 2293 13) := by core033_kernel_decide
theorem stats2310 : actualRows2310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2310=5124 := by core033_kernel_decide
theorem rows2311 : actualRows2311=WordField.canonicalRows actualModulus 2311 (.bxor 2309 2310) := by core033_kernel_decide
theorem stats2311 : actualRows2311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2311=7428 := by core033_kernel_decide
theorem rows2312 : actualRows2312=WordField.canonicalRows actualModulus 2312 (.rotr 2293 22) := by core033_kernel_decide
theorem stats2312 : actualRows2312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2312=5124 := by core033_kernel_decide
theorem rows2313 : actualRows2313=WordField.canonicalRows actualModulus 2313 (.bxor 2311 2312) := by core033_kernel_decide
theorem stats2313 : actualRows2313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2313=7428 := by core033_kernel_decide
theorem rows2314 : actualRows2314=WordField.canonicalRows actualModulus 2314 (.band 2293 2266) := by core033_kernel_decide
theorem stats2314 : actualRows2314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2314=5124 := by core033_kernel_decide
theorem rows2315 : actualRows2315=WordField.canonicalRows actualModulus 2315 (.band 2293 2239) := by core033_kernel_decide
theorem stats2315 : actualRows2315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2315=5124 := by core033_kernel_decide
theorem rows2316 : actualRows2316=WordField.canonicalRows actualModulus 2316 (.bxor 2314 2315) := by core033_kernel_decide
theorem stats2316 : actualRows2316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2316=7428 := by core033_kernel_decide
theorem rows2317 : actualRows2317=WordField.canonicalRows actualModulus 2317 (.band 2266 2239) := by core033_kernel_decide
theorem stats2317 : actualRows2317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2317=5124 := by core033_kernel_decide
theorem rows2318 : actualRows2318=WordField.canonicalRows actualModulus 2318 (.bxor 2316 2317) := by core033_kernel_decide
theorem stats2318 : actualRows2318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2318=7428 := by core033_kernel_decide
theorem rows2319 : actualRows2319=WordField.canonicalRows actualModulus 2319 (.badd 2313 2318) := by core033_kernel_decide
theorem stats2319 : actualRows2319.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2319=5388 := by core033_kernel_decide
theorem rows2320 : actualRows2320=WordField.canonicalRows actualModulus 2320 (.badd 2308 2319) := by core033_kernel_decide
theorem stats2320 : actualRows2320.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2320=5388 := by core033_kernel_decide
theorem rows2321 : actualRows2321=WordField.canonicalRows actualModulus 2321 (.badd 2212 2308) := by core033_kernel_decide
theorem stats2321 : actualRows2321.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2321=5388 := by core033_kernel_decide
theorem rows2322 : actualRows2322=WordField.canonicalRows actualModulus 2322 (.rotr 2321 6) := by core033_kernel_decide
theorem stats2322 : actualRows2322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2322=5124 := by core033_kernel_decide
theorem rows2323 : actualRows2323=WordField.canonicalRows actualModulus 2323 (.rotr 2321 11) := by core033_kernel_decide
theorem stats2323 : actualRows2323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2323=5124 := by core033_kernel_decide
theorem rows2324 : actualRows2324=WordField.canonicalRows actualModulus 2324 (.bxor 2322 2323) := by core033_kernel_decide
theorem stats2324 : actualRows2324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2324=7428 := by core033_kernel_decide
theorem rows2325 : actualRows2325=WordField.canonicalRows actualModulus 2325 (.rotr 2321 25) := by core033_kernel_decide
theorem stats2325 : actualRows2325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2325=5124 := by core033_kernel_decide
theorem rows2326 : actualRows2326=WordField.canonicalRows actualModulus 2326 (.bxor 2324 2325) := by core033_kernel_decide
theorem stats2326 : actualRows2326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2326=7428 := by core033_kernel_decide
theorem rows2327 : actualRows2327=WordField.canonicalRows actualModulus 2327 (.badd 2240 2326) := by core033_kernel_decide
theorem stats2327 : actualRows2327.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2327=5388 := by core033_kernel_decide
def partRows35 : List R1CS.Row := actualRows2264++actualRows2265++actualRows2266++actualRows2267++actualRows2268++actualRows2269++actualRows2270++actualRows2271++actualRows2272++actualRows2273++actualRows2274++actualRows2275++actualRows2276++actualRows2277++actualRows2278++actualRows2279++actualRows2280++actualRows2281++actualRows2282++actualRows2283++actualRows2284++actualRows2285++actualRows2286++actualRows2287++actualRows2288++actualRows2289++actualRows2290++actualRows2291++actualRows2292++actualRows2293++actualRows2294++actualRows2295++actualRows2296++actualRows2297++actualRows2298++actualRows2299++actualRows2300++actualRows2301++actualRows2302++actualRows2303++actualRows2304++actualRows2305++actualRows2306++actualRows2307++actualRows2308++actualRows2309++actualRows2310++actualRows2311++actualRows2312++actualRows2313++actualRows2314++actualRows2315++actualRows2316++actualRows2317++actualRows2318++actualRows2319++actualRows2320++actualRows2321++actualRows2322++actualRows2323++actualRows2324++actualRows2325++actualRows2326++actualRows2327
def partOps35 : List WordIR.Op := [.bxor 2262 2263,.badd 2259 2264,.badd 2254 2265,.badd 2158 2254,.rotr 2267 6,.rotr 2267 11,.bxor 2268 2269,.rotr 2267 25,.bxor 2270 2271,.badd 2186 2272,.band 2267 2240,.bnot 2267,.band 2275 2213,.bxor 2274 2276,.badd 2273 2277,.literal (BitVec.ofNat 32 2428436474),.badd 2278 2279,.badd 2280 608,.rotr 2266 2,.rotr 2266 13,.bxor 2282 2283,.rotr 2266 22,.bxor 2284 2285,.band 2266 2239,.band 2266 2212,.bxor 2287 2288,.band 2239 2212,.bxor 2289 2290,.badd 2286 2291,.badd 2281 2292,.badd 2185 2281,.rotr 2294 6,.rotr 2294 11,.bxor 2295 2296,.rotr 2294 25,.bxor 2297 2298,.badd 2213 2299,.band 2294 2267,.bnot 2294,.band 2302 2240,.bxor 2301 2303,.badd 2300 2304,.literal (BitVec.ofNat 32 2756734187),.badd 2305 2306,.badd 2307 621,.rotr 2293 2,.rotr 2293 13,.bxor 2309 2310,.rotr 2293 22,.bxor 2311 2312,.band 2293 2266,.band 2293 2239,.bxor 2314 2315,.band 2266 2239,.bxor 2316 2317,.badd 2313 2318,.badd 2308 2319,.badd 2212 2308,.rotr 2321 6,.rotr 2321 11,.bxor 2322 2323,.rotr 2321 25,.bxor 2324 2325,.badd 2240 2326]
theorem partRowsExact35 : partRows35=WordField.rows actualModulus 2264 partOps35 := by
  simp only [partRows35,partOps35,WordField.rows,rows2264,rows2265,rows2266,rows2267,rows2268,rows2269,rows2270,rows2271,rows2272,rows2273,rows2274,rows2275,rows2276,rows2277,rows2278,rows2279,rows2280,rows2281,rows2282,rows2283,rows2284,rows2285,rows2286,rows2287,rows2288,rows2289,rows2290,rows2291,rows2292,rows2293,rows2294,rows2295,rows2296,rows2297,rows2298,rows2299,rows2300,rows2301,rows2302,rows2303,rows2304,rows2305,rows2306,rows2307,rows2308,rows2309,rows2310,rows2311,rows2312,rows2313,rows2314,rows2315,rows2316,rows2317,rows2318,rows2319,rows2320,rows2321,rows2322,rows2323,rows2324,rows2325,rows2326,rows2327,List.append_assoc,List.append_nil]
theorem partOpsLength35 : partOps35.length=64 := by decide
theorem partStats35 : partRows35.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows35=372216 := by
  simp only [partRows35,List.length_append,MatrixRowBlocks.rows_weight_append,stats2264.1,stats2264.2,stats2265.1,stats2265.2,stats2266.1,stats2266.2,stats2267.1,stats2267.2,stats2268.1,stats2268.2,stats2269.1,stats2269.2,stats2270.1,stats2270.2,stats2271.1,stats2271.2,stats2272.1,stats2272.2,stats2273.1,stats2273.2,stats2274.1,stats2274.2,stats2275.1,stats2275.2,stats2276.1,stats2276.2,stats2277.1,stats2277.2,stats2278.1,stats2278.2,stats2279.1,stats2279.2,stats2280.1,stats2280.2,stats2281.1,stats2281.2,stats2282.1,stats2282.2,stats2283.1,stats2283.2,stats2284.1,stats2284.2,stats2285.1,stats2285.2,stats2286.1,stats2286.2,stats2287.1,stats2287.2,stats2288.1,stats2288.2,stats2289.1,stats2289.2,stats2290.1,stats2290.2,stats2291.1,stats2291.2,stats2292.1,stats2292.2,stats2293.1,stats2293.2,stats2294.1,stats2294.2,stats2295.1,stats2295.2,stats2296.1,stats2296.2,stats2297.1,stats2297.2,stats2298.1,stats2298.2,stats2299.1,stats2299.2,stats2300.1,stats2300.2,stats2301.1,stats2301.2,stats2302.1,stats2302.2,stats2303.1,stats2303.2,stats2304.1,stats2304.2,stats2305.1,stats2305.2,stats2306.1,stats2306.2,stats2307.1,stats2307.2,stats2308.1,stats2308.2,stats2309.1,stats2309.2,stats2310.1,stats2310.2,stats2311.1,stats2311.2,stats2312.1,stats2312.2,stats2313.1,stats2313.2,stats2314.1,stats2314.2,stats2315.1,stats2315.2,stats2316.1,stats2316.2,stats2317.1,stats2317.2,stats2318.1,stats2318.2,stats2319.1,stats2319.2,stats2320.1,stats2320.2,stats2321.1,stats2321.2,stats2322.1,stats2322.2,stats2323.1,stats2323.2,stats2324.1,stats2324.2,stats2325.1,stats2325.2,stats2326.1,stats2326.2,stats2327.1,stats2327.2]
  decide
end ActualSHAMatrixRows
