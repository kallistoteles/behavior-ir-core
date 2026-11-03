import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData38
import AuthenticatedBranchRoundInstructionMatrixData39
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2486 : actualRows2486=WordField.canonicalRows actualModulus 2486 (.bnot 2485) := by core033_kernel_decide
theorem stats2486 : actualRows2486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2486=6276 := by core033_kernel_decide
theorem rows2487 : actualRows2487=WordField.canonicalRows actualModulus 2487 (.band 2481 2486) := by core033_kernel_decide
theorem stats2487 : actualRows2487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2487=5124 := by core033_kernel_decide
theorem rows2488 : actualRows2488=WordField.canonicalRows actualModulus 2488 (.bxor 2477 2487) := by core033_kernel_decide
theorem stats2488 : actualRows2488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2488=7428 := by core033_kernel_decide
theorem rows2489 : actualRows2489=WordField.canonicalRows actualModulus 2489 (.shr 2488 31) := by core033_kernel_decide
theorem stats2489 : actualRows2489.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2489=2892 := by core033_kernel_decide
theorem rows2490 : actualRows2490=WordField.canonicalRows actualModulus 2490 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2490 : actualRows2490.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2490=2892 := by core033_kernel_decide
theorem rows2491 : actualRows2491=WordField.canonicalRows actualModulus 2491 (.bxor 2489 2490) := by core033_kernel_decide
theorem stats2491 : actualRows2491.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2491=7428 := by core033_kernel_decide
theorem rows2492 : actualRows2492=WordField.canonicalRows actualModulus 2492 (.shr 2308 1) := by core033_kernel_decide
theorem stats2492 : actualRows2492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2492=5052 := by core033_kernel_decide
theorem rows2493 : actualRows2493=WordField.canonicalRows actualModulus 2493 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2493 : actualRows2493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2493=2820 := by core033_kernel_decide
theorem rows2494 : actualRows2494=WordField.canonicalRows actualModulus 2494 (.bnot 2493) := by core033_kernel_decide
theorem stats2494 : actualRows2494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2494=6276 := by core033_kernel_decide
theorem rows2495 : actualRows2495=WordField.canonicalRows actualModulus 2495 (.band 2492 2494) := by core033_kernel_decide
theorem stats2495 : actualRows2495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2495=5124 := by core033_kernel_decide
theorem rows2496 : actualRows2496=WordField.canonicalRows actualModulus 2496 (.shr 2308 1) := by core033_kernel_decide
theorem stats2496 : actualRows2496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2496=5052 := by core033_kernel_decide
theorem rows2497 : actualRows2497=WordField.canonicalRows actualModulus 2497 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2497 : actualRows2497.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2497=2820 := by core033_kernel_decide
theorem rows2498 : actualRows2498=WordField.canonicalRows actualModulus 2498 (.bnot 2497) := by core033_kernel_decide
theorem stats2498 : actualRows2498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2498=6276 := by core033_kernel_decide
theorem rows2499 : actualRows2499=WordField.canonicalRows actualModulus 2499 (.bxor 2496 2498) := by core033_kernel_decide
theorem stats2499 : actualRows2499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2499=7428 := by core033_kernel_decide
theorem rows2500 : actualRows2500=WordField.canonicalRows actualModulus 2500 (.shr 2308 1) := by core033_kernel_decide
theorem stats2500 : actualRows2500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2500=5052 := by core033_kernel_decide
theorem rows2501 : actualRows2501=WordField.canonicalRows actualModulus 2501 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2501 : actualRows2501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2501=2820 := by core033_kernel_decide
theorem rows2502 : actualRows2502=WordField.canonicalRows actualModulus 2502 (.bnot 2501) := by core033_kernel_decide
theorem stats2502 : actualRows2502.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2502=6276 := by core033_kernel_decide
theorem rows2503 : actualRows2503=WordField.canonicalRows actualModulus 2503 (.badd 2500 2502) := by core033_kernel_decide
theorem stats2503 : actualRows2503.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2503=5388 := by core033_kernel_decide
theorem rows2504 : actualRows2504=WordField.canonicalRows actualModulus 2504 (.bnot 2503) := by core033_kernel_decide
theorem stats2504 : actualRows2504.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2504=6276 := by core033_kernel_decide
theorem rows2505 : actualRows2505=WordField.canonicalRows actualModulus 2505 (.band 2499 2504) := by core033_kernel_decide
theorem stats2505 : actualRows2505.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2505=5124 := by core033_kernel_decide
theorem rows2506 : actualRows2506=WordField.canonicalRows actualModulus 2506 (.bxor 2495 2505) := by core033_kernel_decide
theorem stats2506 : actualRows2506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2506=7428 := by core033_kernel_decide
theorem rows2507 : actualRows2507=WordField.canonicalRows actualModulus 2507 (.shr 2506 31) := by core033_kernel_decide
theorem stats2507 : actualRows2507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2507=2892 := by core033_kernel_decide
theorem rows2508 : actualRows2508=WordField.canonicalRows actualModulus 2508 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2508 : actualRows2508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2508=2892 := by core033_kernel_decide
theorem rows2509 : actualRows2509=WordField.canonicalRows actualModulus 2509 (.bxor 2507 2508) := by core033_kernel_decide
theorem stats2509 : actualRows2509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2509=7428 := by core033_kernel_decide
theorem rows2510 : actualRows2510=WordField.canonicalRows actualModulus 2510 (.shr 2198 1) := by core033_kernel_decide
theorem stats2510 : actualRows2510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2510=5052 := by core033_kernel_decide
theorem rows2511 : actualRows2511=WordField.canonicalRows actualModulus 2511 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2511 : actualRows2511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2511=2820 := by core033_kernel_decide
theorem rows2512 : actualRows2512=WordField.canonicalRows actualModulus 2512 (.bnot 2511) := by core033_kernel_decide
theorem stats2512 : actualRows2512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2512=6276 := by core033_kernel_decide
theorem rows2513 : actualRows2513=WordField.canonicalRows actualModulus 2513 (.band 2510 2512) := by core033_kernel_decide
theorem stats2513 : actualRows2513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2513=5124 := by core033_kernel_decide
theorem rows2514 : actualRows2514=WordField.canonicalRows actualModulus 2514 (.shr 2198 1) := by core033_kernel_decide
theorem stats2514 : actualRows2514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2514=5052 := by core033_kernel_decide
theorem rows2515 : actualRows2515=WordField.canonicalRows actualModulus 2515 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2515 : actualRows2515.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2515=2820 := by core033_kernel_decide
theorem rows2516 : actualRows2516=WordField.canonicalRows actualModulus 2516 (.bnot 2515) := by core033_kernel_decide
theorem stats2516 : actualRows2516.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2516=6276 := by core033_kernel_decide
theorem rows2517 : actualRows2517=WordField.canonicalRows actualModulus 2517 (.bxor 2514 2516) := by core033_kernel_decide
theorem stats2517 : actualRows2517.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2517=7428 := by core033_kernel_decide
theorem rows2518 : actualRows2518=WordField.canonicalRows actualModulus 2518 (.shr 2198 1) := by core033_kernel_decide
theorem stats2518 : actualRows2518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2518=5052 := by core033_kernel_decide
theorem rows2519 : actualRows2519=WordField.canonicalRows actualModulus 2519 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2519 : actualRows2519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2519=2820 := by core033_kernel_decide
theorem rows2520 : actualRows2520=WordField.canonicalRows actualModulus 2520 (.bnot 2519) := by core033_kernel_decide
theorem stats2520 : actualRows2520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2520=6276 := by core033_kernel_decide
theorem rows2521 : actualRows2521=WordField.canonicalRows actualModulus 2521 (.badd 2518 2520) := by core033_kernel_decide
theorem stats2521 : actualRows2521.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2521=5388 := by core033_kernel_decide
theorem rows2522 : actualRows2522=WordField.canonicalRows actualModulus 2522 (.bnot 2521) := by core033_kernel_decide
theorem stats2522 : actualRows2522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2522=6276 := by core033_kernel_decide
theorem rows2523 : actualRows2523=WordField.canonicalRows actualModulus 2523 (.band 2517 2522) := by core033_kernel_decide
theorem stats2523 : actualRows2523.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2523=5124 := by core033_kernel_decide
theorem rows2524 : actualRows2524=WordField.canonicalRows actualModulus 2524 (.bxor 2513 2523) := by core033_kernel_decide
theorem stats2524 : actualRows2524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2524=7428 := by core033_kernel_decide
theorem rows2525 : actualRows2525=WordField.canonicalRows actualModulus 2525 (.shr 2524 31) := by core033_kernel_decide
theorem stats2525 : actualRows2525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2525=2892 := by core033_kernel_decide
theorem rows2526 : actualRows2526=WordField.canonicalRows actualModulus 2526 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2526 : actualRows2526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2526=2892 := by core033_kernel_decide
theorem rows2527 : actualRows2527=WordField.canonicalRows actualModulus 2527 (.bxor 2525 2526) := by core033_kernel_decide
theorem stats2527 : actualRows2527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2527=7428 := by core033_kernel_decide
theorem rows2528 : actualRows2528=WordField.canonicalRows actualModulus 2528 (.shr 2318 1) := by core033_kernel_decide
theorem stats2528 : actualRows2528.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2528=5052 := by core033_kernel_decide
theorem rows2529 : actualRows2529=WordField.canonicalRows actualModulus 2529 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2529 : actualRows2529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2529=2820 := by core033_kernel_decide
theorem rows2530 : actualRows2530=WordField.canonicalRows actualModulus 2530 (.bnot 2529) := by core033_kernel_decide
theorem stats2530 : actualRows2530.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2530=6276 := by core033_kernel_decide
theorem rows2531 : actualRows2531=WordField.canonicalRows actualModulus 2531 (.band 2528 2530) := by core033_kernel_decide
theorem stats2531 : actualRows2531.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2531=5124 := by core033_kernel_decide
theorem rows2532 : actualRows2532=WordField.canonicalRows actualModulus 2532 (.shr 2318 1) := by core033_kernel_decide
theorem stats2532 : actualRows2532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2532=5052 := by core033_kernel_decide
theorem rows2533 : actualRows2533=WordField.canonicalRows actualModulus 2533 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2533 : actualRows2533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2533=2820 := by core033_kernel_decide
theorem rows2534 : actualRows2534=WordField.canonicalRows actualModulus 2534 (.bnot 2533) := by core033_kernel_decide
theorem stats2534 : actualRows2534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2534=6276 := by core033_kernel_decide
theorem rows2535 : actualRows2535=WordField.canonicalRows actualModulus 2535 (.bxor 2532 2534) := by core033_kernel_decide
theorem stats2535 : actualRows2535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2535=7428 := by core033_kernel_decide
theorem rows2536 : actualRows2536=WordField.canonicalRows actualModulus 2536 (.shr 2318 1) := by core033_kernel_decide
theorem stats2536 : actualRows2536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2536=5052 := by core033_kernel_decide
theorem rows2537 : actualRows2537=WordField.canonicalRows actualModulus 2537 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2537 : actualRows2537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2537=2820 := by core033_kernel_decide
theorem rows2538 : actualRows2538=WordField.canonicalRows actualModulus 2538 (.bnot 2537) := by core033_kernel_decide
theorem stats2538 : actualRows2538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2538=6276 := by core033_kernel_decide
theorem rows2539 : actualRows2539=WordField.canonicalRows actualModulus 2539 (.badd 2536 2538) := by core033_kernel_decide
theorem stats2539 : actualRows2539.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2539=5388 := by core033_kernel_decide
theorem rows2540 : actualRows2540=WordField.canonicalRows actualModulus 2540 (.bnot 2539) := by core033_kernel_decide
theorem stats2540 : actualRows2540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2540=6276 := by core033_kernel_decide
theorem rows2541 : actualRows2541=WordField.canonicalRows actualModulus 2541 (.band 2535 2540) := by core033_kernel_decide
theorem stats2541 : actualRows2541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2541=5124 := by core033_kernel_decide
theorem rows2542 : actualRows2542=WordField.canonicalRows actualModulus 2542 (.bxor 2531 2541) := by core033_kernel_decide
theorem stats2542 : actualRows2542.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2542=7428 := by core033_kernel_decide
theorem rows2543 : actualRows2543=WordField.canonicalRows actualModulus 2543 (.shr 2542 31) := by core033_kernel_decide
theorem stats2543 : actualRows2543.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2543=2892 := by core033_kernel_decide
theorem rows2544 : actualRows2544=WordField.canonicalRows actualModulus 2544 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2544 : actualRows2544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2544=2892 := by core033_kernel_decide
theorem rows2545 : actualRows2545=WordField.canonicalRows actualModulus 2545 (.bxor 2543 2544) := by core033_kernel_decide
theorem stats2545 : actualRows2545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2545=7428 := by core033_kernel_decide
theorem rows2546 : actualRows2546=WordField.canonicalRows actualModulus 2546 (.literal (BitVec.ofNat 32 99)) := by core033_kernel_decide
theorem stats2546 : actualRows2546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2546=3108 := by core033_kernel_decide
theorem rows2547 : actualRows2547=WordField.canonicalRows actualModulus 2547 (.literal (BitVec.ofNat 32 111)) := by core033_kernel_decide
theorem stats2547 : actualRows2547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2547=3252 := by core033_kernel_decide
theorem rows2548 : actualRows2548=WordField.canonicalRows actualModulus 2548 (.literal (BitVec.ofNat 32 114)) := by core033_kernel_decide
theorem stats2548 : actualRows2548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2548=3108 := by core033_kernel_decide
theorem rows2549 : actualRows2549=WordField.canonicalRows actualModulus 2549 (.literal (BitVec.ofNat 32 101)) := by core033_kernel_decide
theorem stats2549 : actualRows2549.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2549=3108 := by core033_kernel_decide
def partRows37 : List R1CS.Row := actualRows2486++actualRows2487++actualRows2488++actualRows2489++actualRows2490++actualRows2491++actualRows2492++actualRows2493++actualRows2494++actualRows2495++actualRows2496++actualRows2497++actualRows2498++actualRows2499++actualRows2500++actualRows2501++actualRows2502++actualRows2503++actualRows2504++actualRows2505++actualRows2506++actualRows2507++actualRows2508++actualRows2509++actualRows2510++actualRows2511++actualRows2512++actualRows2513++actualRows2514++actualRows2515++actualRows2516++actualRows2517++actualRows2518++actualRows2519++actualRows2520++actualRows2521++actualRows2522++actualRows2523++actualRows2524++actualRows2525++actualRows2526++actualRows2527++actualRows2528++actualRows2529++actualRows2530++actualRows2531++actualRows2532++actualRows2533++actualRows2534++actualRows2535++actualRows2536++actualRows2537++actualRows2538++actualRows2539++actualRows2540++actualRows2541++actualRows2542++actualRows2543++actualRows2544++actualRows2545++actualRows2546++actualRows2547++actualRows2548++actualRows2549
def partOps37 : List WordIR.Op := [.bnot 2485,.band 2481 2486,.bxor 2477 2487,.shr 2488 31,.literal (BitVec.ofNat 32 1),.bxor 2489 2490,.shr 2308 1,.literal (BitVec.ofNat 32 0),.bnot 2493,.band 2492 2494,.shr 2308 1,.literal (BitVec.ofNat 32 0),.bnot 2497,.bxor 2496 2498,.shr 2308 1,.literal (BitVec.ofNat 32 0),.bnot 2501,.badd 2500 2502,.bnot 2503,.band 2499 2504,.bxor 2495 2505,.shr 2506 31,.literal (BitVec.ofNat 32 1),.bxor 2507 2508,.shr 2198 1,.literal (BitVec.ofNat 32 0),.bnot 2511,.band 2510 2512,.shr 2198 1,.literal (BitVec.ofNat 32 0),.bnot 2515,.bxor 2514 2516,.shr 2198 1,.literal (BitVec.ofNat 32 0),.bnot 2519,.badd 2518 2520,.bnot 2521,.band 2517 2522,.bxor 2513 2523,.shr 2524 31,.literal (BitVec.ofNat 32 1),.bxor 2525 2526,.shr 2318 1,.literal (BitVec.ofNat 32 0),.bnot 2529,.band 2528 2530,.shr 2318 1,.literal (BitVec.ofNat 32 0),.bnot 2533,.bxor 2532 2534,.shr 2318 1,.literal (BitVec.ofNat 32 0),.bnot 2537,.badd 2536 2538,.bnot 2539,.band 2535 2540,.bxor 2531 2541,.shr 2542 31,.literal (BitVec.ofNat 32 1),.bxor 2543 2544,.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 111),.literal (BitVec.ofNat 32 114),.literal (BitVec.ofNat 32 101)]
theorem partExact37 : partRows37=WordField.rows actualModulus 2486 partOps37 := by
  simp only [partRows37,partOps37,WordField.rows,rows2486,rows2487,rows2488,rows2489,rows2490,rows2491,rows2492,rows2493,rows2494,rows2495,rows2496,rows2497,rows2498,rows2499,rows2500,rows2501,rows2502,rows2503,rows2504,rows2505,rows2506,rows2507,rows2508,rows2509,rows2510,rows2511,rows2512,rows2513,rows2514,rows2515,rows2516,rows2517,rows2518,rows2519,rows2520,rows2521,rows2522,rows2523,rows2524,rows2525,rows2526,rows2527,rows2528,rows2529,rows2530,rows2531,rows2532,rows2533,rows2534,rows2535,rows2536,rows2537,rows2538,rows2539,rows2540,rows2541,rows2542,rows2543,rows2544,rows2545,rows2546,rows2547,rows2548,rows2549,List.append_assoc,List.append_nil]
theorem partLength37 : partOps37.length=64 := by decide
theorem partStats37 : partRows37.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows37=321888 := by
  simp only [partRows37,List.length_append,MatrixRowBlocks.rows_weight_append,stats2486.1,stats2486.2,stats2487.1,stats2487.2,stats2488.1,stats2488.2,stats2489.1,stats2489.2,stats2490.1,stats2490.2,stats2491.1,stats2491.2,stats2492.1,stats2492.2,stats2493.1,stats2493.2,stats2494.1,stats2494.2,stats2495.1,stats2495.2,stats2496.1,stats2496.2,stats2497.1,stats2497.2,stats2498.1,stats2498.2,stats2499.1,stats2499.2,stats2500.1,stats2500.2,stats2501.1,stats2501.2,stats2502.1,stats2502.2,stats2503.1,stats2503.2,stats2504.1,stats2504.2,stats2505.1,stats2505.2,stats2506.1,stats2506.2,stats2507.1,stats2507.2,stats2508.1,stats2508.2,stats2509.1,stats2509.2,stats2510.1,stats2510.2,stats2511.1,stats2511.2,stats2512.1,stats2512.2,stats2513.1,stats2513.2,stats2514.1,stats2514.2,stats2515.1,stats2515.2,stats2516.1,stats2516.2,stats2517.1,stats2517.2,stats2518.1,stats2518.2,stats2519.1,stats2519.2,stats2520.1,stats2520.2,stats2521.1,stats2521.2,stats2522.1,stats2522.2,stats2523.1,stats2523.2,stats2524.1,stats2524.2,stats2525.1,stats2525.2,stats2526.1,stats2526.2,stats2527.1,stats2527.2,stats2528.1,stats2528.2,stats2529.1,stats2529.2,stats2530.1,stats2530.2,stats2531.1,stats2531.2,stats2532.1,stats2532.2,stats2533.1,stats2533.2,stats2534.1,stats2534.2,stats2535.1,stats2535.2,stats2536.1,stats2536.2,stats2537.1,stats2537.2,stats2538.1,stats2538.2,stats2539.1,stats2539.2,stats2540.1,stats2540.2,stats2541.1,stats2541.2,stats2542.1,stats2542.2,stats2543.1,stats2543.2,stats2544.1,stats2544.2,stats2545.1,stats2545.2,stats2546.1,stats2546.2,stats2547.1,stats2547.2,stats2548.1,stats2548.2,stats2549.1,stats2549.2]
  decide
end AuthenticatedBranchRoundCheckedRows
