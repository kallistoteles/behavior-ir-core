import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData35
import AuthenticatedBranchRoundInstructionMatrixData36
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2294 : actualRows2294=WordField.canonicalRows actualModulus 2294 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2294 : actualRows2294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2294=2892 := by core033_kernel_decide
theorem rows2295 : actualRows2295=WordField.canonicalRows actualModulus 2295 (.badd 2293 2294) := by core033_kernel_decide
theorem stats2295 : actualRows2295.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2295=5388 := by core033_kernel_decide
theorem rows2296 : actualRows2296=WordField.canonicalRows actualModulus 2296 (.bnot 2295) := by core033_kernel_decide
theorem stats2296 : actualRows2296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2296=6276 := by core033_kernel_decide
theorem rows2297 : actualRows2297=WordField.canonicalRows actualModulus 2297 (.band 2296 1629) := by core033_kernel_decide
theorem stats2297 : actualRows2297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2297=5124 := by core033_kernel_decide
theorem rows2298 : actualRows2298=WordField.canonicalRows actualModulus 2298 (.bxor 2292 2297) := by core033_kernel_decide
theorem stats2298 : actualRows2298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2298=7428 := by core033_kernel_decide
theorem rows2299 : actualRows2299=WordField.canonicalRows actualModulus 2299 (.bnot 2078) := by core033_kernel_decide
theorem stats2299 : actualRows2299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2299=6276 := by core033_kernel_decide
theorem rows2300 : actualRows2300=WordField.canonicalRows actualModulus 2300 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2300 : actualRows2300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2300=2892 := by core033_kernel_decide
theorem rows2301 : actualRows2301=WordField.canonicalRows actualModulus 2301 (.badd 2299 2300) := by core033_kernel_decide
theorem stats2301 : actualRows2301.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2301=5388 := by core033_kernel_decide
theorem rows2302 : actualRows2302=WordField.canonicalRows actualModulus 2302 (.band 2301 1640) := by core033_kernel_decide
theorem stats2302 : actualRows2302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2302=5124 := by core033_kernel_decide
theorem rows2303 : actualRows2303=WordField.canonicalRows actualModulus 2303 (.bnot 2078) := by core033_kernel_decide
theorem stats2303 : actualRows2303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2303=6276 := by core033_kernel_decide
theorem rows2304 : actualRows2304=WordField.canonicalRows actualModulus 2304 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2304 : actualRows2304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2304=2892 := by core033_kernel_decide
theorem rows2305 : actualRows2305=WordField.canonicalRows actualModulus 2305 (.badd 2303 2304) := by core033_kernel_decide
theorem stats2305 : actualRows2305.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2305=5388 := by core033_kernel_decide
theorem rows2306 : actualRows2306=WordField.canonicalRows actualModulus 2306 (.bnot 2305) := by core033_kernel_decide
theorem stats2306 : actualRows2306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2306=6276 := by core033_kernel_decide
theorem rows2307 : actualRows2307=WordField.canonicalRows actualModulus 2307 (.band 2306 1651) := by core033_kernel_decide
theorem stats2307 : actualRows2307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2307=5124 := by core033_kernel_decide
theorem rows2308 : actualRows2308=WordField.canonicalRows actualModulus 2308 (.bxor 2302 2307) := by core033_kernel_decide
theorem stats2308 : actualRows2308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2308=7428 := by core033_kernel_decide
theorem rows2309 : actualRows2309=WordField.canonicalRows actualModulus 2309 (.bnot 2078) := by core033_kernel_decide
theorem stats2309 : actualRows2309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2309=6276 := by core033_kernel_decide
theorem rows2310 : actualRows2310=WordField.canonicalRows actualModulus 2310 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2310 : actualRows2310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2310=2892 := by core033_kernel_decide
theorem rows2311 : actualRows2311=WordField.canonicalRows actualModulus 2311 (.badd 2309 2310) := by core033_kernel_decide
theorem stats2311 : actualRows2311.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2311=5388 := by core033_kernel_decide
theorem rows2312 : actualRows2312=WordField.canonicalRows actualModulus 2312 (.band 2311 1662) := by core033_kernel_decide
theorem stats2312 : actualRows2312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2312=5124 := by core033_kernel_decide
theorem rows2313 : actualRows2313=WordField.canonicalRows actualModulus 2313 (.bnot 2078) := by core033_kernel_decide
theorem stats2313 : actualRows2313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2313=6276 := by core033_kernel_decide
theorem rows2314 : actualRows2314=WordField.canonicalRows actualModulus 2314 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2314 : actualRows2314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2314=2892 := by core033_kernel_decide
theorem rows2315 : actualRows2315=WordField.canonicalRows actualModulus 2315 (.badd 2313 2314) := by core033_kernel_decide
theorem stats2315 : actualRows2315.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2315=5388 := by core033_kernel_decide
theorem rows2316 : actualRows2316=WordField.canonicalRows actualModulus 2316 (.bnot 2315) := by core033_kernel_decide
theorem stats2316 : actualRows2316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2316=6276 := by core033_kernel_decide
theorem rows2317 : actualRows2317=WordField.canonicalRows actualModulus 2317 (.band 2316 1673) := by core033_kernel_decide
theorem stats2317 : actualRows2317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2317=5124 := by core033_kernel_decide
theorem rows2318 : actualRows2318=WordField.canonicalRows actualModulus 2318 (.bxor 2312 2317) := by core033_kernel_decide
theorem stats2318 : actualRows2318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2318=7428 := by core033_kernel_decide
theorem rows2319 : actualRows2319=WordField.canonicalRows actualModulus 2319 (.shr 2078 1) := by core033_kernel_decide
theorem stats2319 : actualRows2319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2319=5052 := by core033_kernel_decide
theorem rows2320 : actualRows2320=WordField.canonicalRows actualModulus 2320 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2320 : actualRows2320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2320=2820 := by core033_kernel_decide
theorem rows2321 : actualRows2321=WordField.canonicalRows actualModulus 2321 (.bnot 2320) := by core033_kernel_decide
theorem stats2321 : actualRows2321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2321=6276 := by core033_kernel_decide
theorem rows2322 : actualRows2322=WordField.canonicalRows actualModulus 2322 (.band 2319 2321) := by core033_kernel_decide
theorem stats2322 : actualRows2322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2322=5124 := by core033_kernel_decide
theorem rows2323 : actualRows2323=WordField.canonicalRows actualModulus 2323 (.shr 2078 1) := by core033_kernel_decide
theorem stats2323 : actualRows2323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2323=5052 := by core033_kernel_decide
theorem rows2324 : actualRows2324=WordField.canonicalRows actualModulus 2324 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2324 : actualRows2324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2324=2820 := by core033_kernel_decide
theorem rows2325 : actualRows2325=WordField.canonicalRows actualModulus 2325 (.bnot 2324) := by core033_kernel_decide
theorem stats2325 : actualRows2325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2325=6276 := by core033_kernel_decide
theorem rows2326 : actualRows2326=WordField.canonicalRows actualModulus 2326 (.bxor 2323 2325) := by core033_kernel_decide
theorem stats2326 : actualRows2326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2326=7428 := by core033_kernel_decide
theorem rows2327 : actualRows2327=WordField.canonicalRows actualModulus 2327 (.shr 2078 1) := by core033_kernel_decide
theorem stats2327 : actualRows2327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2327=5052 := by core033_kernel_decide
theorem rows2328 : actualRows2328=WordField.canonicalRows actualModulus 2328 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2328 : actualRows2328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2328=2820 := by core033_kernel_decide
theorem rows2329 : actualRows2329=WordField.canonicalRows actualModulus 2329 (.bnot 2328) := by core033_kernel_decide
theorem stats2329 : actualRows2329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2329=6276 := by core033_kernel_decide
theorem rows2330 : actualRows2330=WordField.canonicalRows actualModulus 2330 (.badd 2327 2329) := by core033_kernel_decide
theorem stats2330 : actualRows2330.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2330=5388 := by core033_kernel_decide
theorem rows2331 : actualRows2331=WordField.canonicalRows actualModulus 2331 (.bnot 2330) := by core033_kernel_decide
theorem stats2331 : actualRows2331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2331=6276 := by core033_kernel_decide
theorem rows2332 : actualRows2332=WordField.canonicalRows actualModulus 2332 (.band 2326 2331) := by core033_kernel_decide
theorem stats2332 : actualRows2332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2332=5124 := by core033_kernel_decide
theorem rows2333 : actualRows2333=WordField.canonicalRows actualModulus 2333 (.bxor 2322 2332) := by core033_kernel_decide
theorem stats2333 : actualRows2333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2333=7428 := by core033_kernel_decide
theorem rows2334 : actualRows2334=WordField.canonicalRows actualModulus 2334 (.shr 2333 31) := by core033_kernel_decide
theorem stats2334 : actualRows2334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2334=2892 := by core033_kernel_decide
theorem rows2335 : actualRows2335=WordField.canonicalRows actualModulus 2335 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2335 : actualRows2335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2335=2892 := by core033_kernel_decide
theorem rows2336 : actualRows2336=WordField.canonicalRows actualModulus 2336 (.bxor 2334 2335) := by core033_kernel_decide
theorem stats2336 : actualRows2336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2336=7428 := by core033_kernel_decide
theorem rows2337 : actualRows2337=WordField.canonicalRows actualModulus 2337 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2337 : actualRows2337.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2337=5388 := by core033_kernel_decide
theorem rows2338 : actualRows2338=WordField.canonicalRows actualModulus 2338 (.badd 2178 2298) := by core033_kernel_decide
theorem stats2338 : actualRows2338.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2338=5388 := by core033_kernel_decide
theorem rows2339 : actualRows2339=WordField.canonicalRows actualModulus 2339 (.band 2168 2288) := by core033_kernel_decide
theorem stats2339 : actualRows2339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2339=5124 := by core033_kernel_decide
theorem rows2340 : actualRows2340=WordField.canonicalRows actualModulus 2340 (.bxor 2168 2288) := by core033_kernel_decide
theorem stats2340 : actualRows2340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2340=7428 := by core033_kernel_decide
theorem rows2341 : actualRows2341=WordField.canonicalRows actualModulus 2341 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2341 : actualRows2341.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2341=5388 := by core033_kernel_decide
theorem rows2342 : actualRows2342=WordField.canonicalRows actualModulus 2342 (.bnot 2341) := by core033_kernel_decide
theorem stats2342 : actualRows2342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2342=6276 := by core033_kernel_decide
theorem rows2343 : actualRows2343=WordField.canonicalRows actualModulus 2343 (.band 2340 2342) := by core033_kernel_decide
theorem stats2343 : actualRows2343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2343=5124 := by core033_kernel_decide
theorem rows2344 : actualRows2344=WordField.canonicalRows actualModulus 2344 (.bxor 2339 2343) := by core033_kernel_decide
theorem stats2344 : actualRows2344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2344=7428 := by core033_kernel_decide
theorem rows2345 : actualRows2345=WordField.canonicalRows actualModulus 2345 (.shr 2344 31) := by core033_kernel_decide
theorem stats2345 : actualRows2345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2345=2892 := by core033_kernel_decide
theorem rows2346 : actualRows2346=WordField.canonicalRows actualModulus 2346 (.badd 2338 2345) := by core033_kernel_decide
theorem stats2346 : actualRows2346.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2346=5388 := by core033_kernel_decide
theorem rows2347 : actualRows2347=WordField.canonicalRows actualModulus 2347 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2347 : actualRows2347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2347=2820 := by core033_kernel_decide
theorem rows2348 : actualRows2348=WordField.canonicalRows actualModulus 2348 (.bnot 2347) := by core033_kernel_decide
theorem stats2348 : actualRows2348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2348=6276 := by core033_kernel_decide
theorem rows2349 : actualRows2349=WordField.canonicalRows actualModulus 2349 (.band 2178 2348) := by core033_kernel_decide
theorem stats2349 : actualRows2349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2349=5124 := by core033_kernel_decide
theorem rows2350 : actualRows2350=WordField.canonicalRows actualModulus 2350 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2350 : actualRows2350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2350=2820 := by core033_kernel_decide
theorem rows2351 : actualRows2351=WordField.canonicalRows actualModulus 2351 (.bnot 2350) := by core033_kernel_decide
theorem stats2351 : actualRows2351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2351=6276 := by core033_kernel_decide
theorem rows2352 : actualRows2352=WordField.canonicalRows actualModulus 2352 (.bxor 2178 2351) := by core033_kernel_decide
theorem stats2352 : actualRows2352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2352=7428 := by core033_kernel_decide
theorem rows2353 : actualRows2353=WordField.canonicalRows actualModulus 2353 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2353 : actualRows2353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2353=2820 := by core033_kernel_decide
theorem rows2354 : actualRows2354=WordField.canonicalRows actualModulus 2354 (.bnot 2353) := by core033_kernel_decide
theorem stats2354 : actualRows2354.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2354=6276 := by core033_kernel_decide
theorem rows2355 : actualRows2355=WordField.canonicalRows actualModulus 2355 (.badd 2178 2354) := by core033_kernel_decide
theorem stats2355 : actualRows2355.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2355=5388 := by core033_kernel_decide
theorem rows2356 : actualRows2356=WordField.canonicalRows actualModulus 2356 (.bnot 2355) := by core033_kernel_decide
theorem stats2356 : actualRows2356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2356=6276 := by core033_kernel_decide
theorem rows2357 : actualRows2357=WordField.canonicalRows actualModulus 2357 (.band 2352 2356) := by core033_kernel_decide
theorem stats2357 : actualRows2357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2357=5124 := by core033_kernel_decide
def partRows34 : List R1CS.Row := actualRows2294++actualRows2295++actualRows2296++actualRows2297++actualRows2298++actualRows2299++actualRows2300++actualRows2301++actualRows2302++actualRows2303++actualRows2304++actualRows2305++actualRows2306++actualRows2307++actualRows2308++actualRows2309++actualRows2310++actualRows2311++actualRows2312++actualRows2313++actualRows2314++actualRows2315++actualRows2316++actualRows2317++actualRows2318++actualRows2319++actualRows2320++actualRows2321++actualRows2322++actualRows2323++actualRows2324++actualRows2325++actualRows2326++actualRows2327++actualRows2328++actualRows2329++actualRows2330++actualRows2331++actualRows2332++actualRows2333++actualRows2334++actualRows2335++actualRows2336++actualRows2337++actualRows2338++actualRows2339++actualRows2340++actualRows2341++actualRows2342++actualRows2343++actualRows2344++actualRows2345++actualRows2346++actualRows2347++actualRows2348++actualRows2349++actualRows2350++actualRows2351++actualRows2352++actualRows2353++actualRows2354++actualRows2355++actualRows2356++actualRows2357
def partOps34 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 2293 2294,.bnot 2295,.band 2296 1629,.bxor 2292 2297,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2299 2300,.band 2301 1640,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2303 2304,.bnot 2305,.band 2306 1651,.bxor 2302 2307,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2309 2310,.band 2311 1662,.bnot 2078,.literal (BitVec.ofNat 32 1),.badd 2313 2314,.bnot 2315,.band 2316 1673,.bxor 2312 2317,.shr 2078 1,.literal (BitVec.ofNat 32 0),.bnot 2320,.band 2319 2321,.shr 2078 1,.literal (BitVec.ofNat 32 0),.bnot 2324,.bxor 2323 2325,.shr 2078 1,.literal (BitVec.ofNat 32 0),.bnot 2328,.badd 2327 2329,.bnot 2330,.band 2326 2331,.bxor 2322 2332,.shr 2333 31,.literal (BitVec.ofNat 32 1),.bxor 2334 2335,.badd 2168 2288,.badd 2178 2298,.band 2168 2288,.bxor 2168 2288,.badd 2168 2288,.bnot 2341,.band 2340 2342,.bxor 2339 2343,.shr 2344 31,.badd 2338 2345,.literal (BitVec.ofNat 32 0),.bnot 2347,.band 2178 2348,.literal (BitVec.ofNat 32 0),.bnot 2350,.bxor 2178 2351,.literal (BitVec.ofNat 32 0),.bnot 2353,.badd 2178 2354,.bnot 2355,.band 2352 2356]
theorem partExact34 : partRows34=WordField.rows actualModulus 2294 partOps34 := by
  simp only [partRows34,partOps34,WordField.rows,rows2294,rows2295,rows2296,rows2297,rows2298,rows2299,rows2300,rows2301,rows2302,rows2303,rows2304,rows2305,rows2306,rows2307,rows2308,rows2309,rows2310,rows2311,rows2312,rows2313,rows2314,rows2315,rows2316,rows2317,rows2318,rows2319,rows2320,rows2321,rows2322,rows2323,rows2324,rows2325,rows2326,rows2327,rows2328,rows2329,rows2330,rows2331,rows2332,rows2333,rows2334,rows2335,rows2336,rows2337,rows2338,rows2339,rows2340,rows2341,rows2342,rows2343,rows2344,rows2345,rows2346,rows2347,rows2348,rows2349,rows2350,rows2351,rows2352,rows2353,rows2354,rows2355,rows2356,rows2357,List.append_assoc,List.append_nil]
theorem partLength34 : partOps34.length=64 := by decide
theorem partStats34 : partRows34.length=2187 ∧ MatrixRowBlocks.rowsWeight partRows34=338112 := by
  simp only [partRows34,List.length_append,MatrixRowBlocks.rows_weight_append,stats2294.1,stats2294.2,stats2295.1,stats2295.2,stats2296.1,stats2296.2,stats2297.1,stats2297.2,stats2298.1,stats2298.2,stats2299.1,stats2299.2,stats2300.1,stats2300.2,stats2301.1,stats2301.2,stats2302.1,stats2302.2,stats2303.1,stats2303.2,stats2304.1,stats2304.2,stats2305.1,stats2305.2,stats2306.1,stats2306.2,stats2307.1,stats2307.2,stats2308.1,stats2308.2,stats2309.1,stats2309.2,stats2310.1,stats2310.2,stats2311.1,stats2311.2,stats2312.1,stats2312.2,stats2313.1,stats2313.2,stats2314.1,stats2314.2,stats2315.1,stats2315.2,stats2316.1,stats2316.2,stats2317.1,stats2317.2,stats2318.1,stats2318.2,stats2319.1,stats2319.2,stats2320.1,stats2320.2,stats2321.1,stats2321.2,stats2322.1,stats2322.2,stats2323.1,stats2323.2,stats2324.1,stats2324.2,stats2325.1,stats2325.2,stats2326.1,stats2326.2,stats2327.1,stats2327.2,stats2328.1,stats2328.2,stats2329.1,stats2329.2,stats2330.1,stats2330.2,stats2331.1,stats2331.2,stats2332.1,stats2332.2,stats2333.1,stats2333.2,stats2334.1,stats2334.2,stats2335.1,stats2335.2,stats2336.1,stats2336.2,stats2337.1,stats2337.2,stats2338.1,stats2338.2,stats2339.1,stats2339.2,stats2340.1,stats2340.2,stats2341.1,stats2341.2,stats2342.1,stats2342.2,stats2343.1,stats2343.2,stats2344.1,stats2344.2,stats2345.1,stats2345.2,stats2346.1,stats2346.2,stats2347.1,stats2347.2,stats2348.1,stats2348.2,stats2349.1,stats2349.2,stats2350.1,stats2350.2,stats2351.1,stats2351.2,stats2352.1,stats2352.2,stats2353.1,stats2353.2,stats2354.1,stats2354.2,stats2355.1,stats2355.2,stats2356.1,stats2356.2,stats2357.1,stats2357.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
