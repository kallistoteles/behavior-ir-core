import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData38
import SharedFrameInstructionMatrixData39
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2475 : actualRows2475=WordField.canonicalRows actualModulus 2475 (.bxor 2472 2474) := by core033_kernel_decide
theorem stats2475 : actualRows2475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2475=7428 := by core033_kernel_decide
theorem rows2476 : actualRows2476=WordField.canonicalRows actualModulus 2476 (.badd 2471 2475) := by core033_kernel_decide
theorem stats2476 : actualRows2476.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2476=5388 := by core033_kernel_decide
theorem rows2477 : actualRows2477=WordField.canonicalRows actualModulus 2477 (.literal (BitVec.ofNat 32 1925078388)) := by core033_kernel_decide
theorem stats2477 : actualRows2477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2477=4188 := by core033_kernel_decide
theorem rows2478 : actualRows2478=WordField.canonicalRows actualModulus 2478 (.badd 2476 2477) := by core033_kernel_decide
theorem stats2478 : actualRows2478.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2478=5388 := by core033_kernel_decide
theorem rows2479 : actualRows2479=WordField.canonicalRows actualModulus 2479 (.badd 2478 934) := by core033_kernel_decide
theorem stats2479 : actualRows2479.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2479=5388 := by core033_kernel_decide
theorem rows2480 : actualRows2480=WordField.canonicalRows actualModulus 2480 (.rotr 2464 2) := by core033_kernel_decide
theorem stats2480 : actualRows2480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2480=5124 := by core033_kernel_decide
theorem rows2481 : actualRows2481=WordField.canonicalRows actualModulus 2481 (.rotr 2464 13) := by core033_kernel_decide
theorem stats2481 : actualRows2481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2481=5124 := by core033_kernel_decide
theorem rows2482 : actualRows2482=WordField.canonicalRows actualModulus 2482 (.bxor 2480 2481) := by core033_kernel_decide
theorem stats2482 : actualRows2482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2482=7428 := by core033_kernel_decide
theorem rows2483 : actualRows2483=WordField.canonicalRows actualModulus 2483 (.rotr 2464 22) := by core033_kernel_decide
theorem stats2483 : actualRows2483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2483=5124 := by core033_kernel_decide
theorem rows2484 : actualRows2484=WordField.canonicalRows actualModulus 2484 (.bxor 2482 2483) := by core033_kernel_decide
theorem stats2484 : actualRows2484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2484=7428 := by core033_kernel_decide
theorem rows2485 : actualRows2485=WordField.canonicalRows actualModulus 2485 (.band 2464 2438) := by core033_kernel_decide
theorem stats2485 : actualRows2485.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2485=5124 := by core033_kernel_decide
theorem rows2486 : actualRows2486=WordField.canonicalRows actualModulus 2486 (.band 2464 2412) := by core033_kernel_decide
theorem stats2486 : actualRows2486.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2486=5124 := by core033_kernel_decide
theorem rows2487 : actualRows2487=WordField.canonicalRows actualModulus 2487 (.bxor 2485 2486) := by core033_kernel_decide
theorem stats2487 : actualRows2487.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2487=7428 := by core033_kernel_decide
theorem rows2488 : actualRows2488=WordField.canonicalRows actualModulus 2488 (.bxor 2487 2459) := by core033_kernel_decide
theorem stats2488 : actualRows2488.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2488=7428 := by core033_kernel_decide
theorem rows2489 : actualRows2489=WordField.canonicalRows actualModulus 2489 (.badd 2484 2488) := by core033_kernel_decide
theorem stats2489 : actualRows2489.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2489=5388 := by core033_kernel_decide
theorem rows2490 : actualRows2490=WordField.canonicalRows actualModulus 2490 (.badd 2479 2489) := by core033_kernel_decide
theorem stats2490 : actualRows2490.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2490=5388 := by core033_kernel_decide
theorem rows2491 : actualRows2491=WordField.canonicalRows actualModulus 2491 (.badd 2386 2479) := by core033_kernel_decide
theorem stats2491 : actualRows2491.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2491=5388 := by core033_kernel_decide
theorem rows2492 : actualRows2492=WordField.canonicalRows actualModulus 2492 (.rotr 2491 6) := by core033_kernel_decide
theorem stats2492 : actualRows2492.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2492=5124 := by core033_kernel_decide
theorem rows2493 : actualRows2493=WordField.canonicalRows actualModulus 2493 (.rotr 2491 11) := by core033_kernel_decide
theorem stats2493 : actualRows2493.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2493=5124 := by core033_kernel_decide
theorem rows2494 : actualRows2494=WordField.canonicalRows actualModulus 2494 (.bxor 2492 2493) := by core033_kernel_decide
theorem stats2494 : actualRows2494.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2494=7428 := by core033_kernel_decide
theorem rows2495 : actualRows2495=WordField.canonicalRows actualModulus 2495 (.rotr 2491 25) := by core033_kernel_decide
theorem stats2495 : actualRows2495.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2495=5124 := by core033_kernel_decide
theorem rows2496 : actualRows2496=WordField.canonicalRows actualModulus 2496 (.bxor 2494 2495) := by core033_kernel_decide
theorem stats2496 : actualRows2496.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2496=7428 := by core033_kernel_decide
theorem rows2497 : actualRows2497=WordField.canonicalRows actualModulus 2497 (.badd 2413 2496) := by core033_kernel_decide
theorem stats2497 : actualRows2497.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2497=5388 := by core033_kernel_decide
theorem rows2498 : actualRows2498=WordField.canonicalRows actualModulus 2498 (.band 2491 2465) := by core033_kernel_decide
theorem stats2498 : actualRows2498.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2498=5124 := by core033_kernel_decide
theorem rows2499 : actualRows2499=WordField.canonicalRows actualModulus 2499 (.bnot 2491) := by core033_kernel_decide
theorem stats2499 : actualRows2499.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2499=6276 := by core033_kernel_decide
theorem rows2500 : actualRows2500=WordField.canonicalRows actualModulus 2500 (.band 2499 2439) := by core033_kernel_decide
theorem stats2500 : actualRows2500.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2500=5124 := by core033_kernel_decide
theorem rows2501 : actualRows2501=WordField.canonicalRows actualModulus 2501 (.bxor 2498 2500) := by core033_kernel_decide
theorem stats2501 : actualRows2501.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2501=7428 := by core033_kernel_decide
theorem rows2502 : actualRows2502=WordField.canonicalRows actualModulus 2502 (.badd 2497 2501) := by core033_kernel_decide
theorem stats2502 : actualRows2502.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2502=5388 := by core033_kernel_decide
theorem rows2503 : actualRows2503=WordField.canonicalRows actualModulus 2503 (.literal (BitVec.ofNat 32 2162078206)) := by core033_kernel_decide
theorem stats2503 : actualRows2503.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2503=4116 := by core033_kernel_decide
theorem rows2504 : actualRows2504=WordField.canonicalRows actualModulus 2504 (.badd 2502 2503) := by core033_kernel_decide
theorem stats2504 : actualRows2504.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2504=5388 := by core033_kernel_decide
theorem rows2505 : actualRows2505=WordField.canonicalRows actualModulus 2505 (.badd 2504 940) := by core033_kernel_decide
theorem stats2505 : actualRows2505.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2505=5388 := by core033_kernel_decide
theorem rows2506 : actualRows2506=WordField.canonicalRows actualModulus 2506 (.rotr 2490 2) := by core033_kernel_decide
theorem stats2506 : actualRows2506.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2506=5124 := by core033_kernel_decide
theorem rows2507 : actualRows2507=WordField.canonicalRows actualModulus 2507 (.rotr 2490 13) := by core033_kernel_decide
theorem stats2507 : actualRows2507.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2507=5124 := by core033_kernel_decide
theorem rows2508 : actualRows2508=WordField.canonicalRows actualModulus 2508 (.bxor 2506 2507) := by core033_kernel_decide
theorem stats2508 : actualRows2508.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2508=7428 := by core033_kernel_decide
theorem rows2509 : actualRows2509=WordField.canonicalRows actualModulus 2509 (.rotr 2490 22) := by core033_kernel_decide
theorem stats2509 : actualRows2509.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2509=5124 := by core033_kernel_decide
theorem rows2510 : actualRows2510=WordField.canonicalRows actualModulus 2510 (.bxor 2508 2509) := by core033_kernel_decide
theorem stats2510 : actualRows2510.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2510=7428 := by core033_kernel_decide
theorem rows2511 : actualRows2511=WordField.canonicalRows actualModulus 2511 (.band 2490 2464) := by core033_kernel_decide
theorem stats2511 : actualRows2511.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2511=5124 := by core033_kernel_decide
theorem rows2512 : actualRows2512=WordField.canonicalRows actualModulus 2512 (.band 2490 2438) := by core033_kernel_decide
theorem stats2512 : actualRows2512.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2512=5124 := by core033_kernel_decide
theorem rows2513 : actualRows2513=WordField.canonicalRows actualModulus 2513 (.bxor 2511 2512) := by core033_kernel_decide
theorem stats2513 : actualRows2513.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2513=7428 := by core033_kernel_decide
theorem rows2514 : actualRows2514=WordField.canonicalRows actualModulus 2514 (.bxor 2513 2485) := by core033_kernel_decide
theorem stats2514 : actualRows2514.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2514=7428 := by core033_kernel_decide
theorem rows2515 : actualRows2515=WordField.canonicalRows actualModulus 2515 (.badd 2510 2514) := by core033_kernel_decide
theorem stats2515 : actualRows2515.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2515=5388 := by core033_kernel_decide
theorem rows2516 : actualRows2516=WordField.canonicalRows actualModulus 2516 (.badd 2505 2515) := by core033_kernel_decide
theorem stats2516 : actualRows2516.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2516=5388 := by core033_kernel_decide
theorem rows2517 : actualRows2517=WordField.canonicalRows actualModulus 2517 (.badd 2412 2505) := by core033_kernel_decide
theorem stats2517 : actualRows2517.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2517=5388 := by core033_kernel_decide
theorem rows2518 : actualRows2518=WordField.canonicalRows actualModulus 2518 (.rotr 2517 6) := by core033_kernel_decide
theorem stats2518 : actualRows2518.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2518=5124 := by core033_kernel_decide
theorem rows2519 : actualRows2519=WordField.canonicalRows actualModulus 2519 (.rotr 2517 11) := by core033_kernel_decide
theorem stats2519 : actualRows2519.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2519=5124 := by core033_kernel_decide
theorem rows2520 : actualRows2520=WordField.canonicalRows actualModulus 2520 (.bxor 2518 2519) := by core033_kernel_decide
theorem stats2520 : actualRows2520.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2520=7428 := by core033_kernel_decide
theorem rows2521 : actualRows2521=WordField.canonicalRows actualModulus 2521 (.rotr 2517 25) := by core033_kernel_decide
theorem stats2521 : actualRows2521.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2521=5124 := by core033_kernel_decide
theorem rows2522 : actualRows2522=WordField.canonicalRows actualModulus 2522 (.bxor 2520 2521) := by core033_kernel_decide
theorem stats2522 : actualRows2522.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2522=7428 := by core033_kernel_decide
theorem rows2523 : actualRows2523=WordField.canonicalRows actualModulus 2523 (.badd 2439 2522) := by core033_kernel_decide
theorem stats2523 : actualRows2523.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2523=5388 := by core033_kernel_decide
theorem rows2524 : actualRows2524=WordField.canonicalRows actualModulus 2524 (.band 2517 2491) := by core033_kernel_decide
theorem stats2524 : actualRows2524.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2524=5124 := by core033_kernel_decide
theorem rows2525 : actualRows2525=WordField.canonicalRows actualModulus 2525 (.bnot 2517) := by core033_kernel_decide
theorem stats2525 : actualRows2525.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2525=6276 := by core033_kernel_decide
theorem rows2526 : actualRows2526=WordField.canonicalRows actualModulus 2526 (.band 2525 2465) := by core033_kernel_decide
theorem stats2526 : actualRows2526.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2526=5124 := by core033_kernel_decide
theorem rows2527 : actualRows2527=WordField.canonicalRows actualModulus 2527 (.bxor 2524 2526) := by core033_kernel_decide
theorem stats2527 : actualRows2527.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2527=7428 := by core033_kernel_decide
theorem rows2528 : actualRows2528=WordField.canonicalRows actualModulus 2528 (.badd 2523 2527) := by core033_kernel_decide
theorem stats2528 : actualRows2528.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2528=5388 := by core033_kernel_decide
theorem rows2529 : actualRows2529=WordField.canonicalRows actualModulus 2529 (.literal (BitVec.ofNat 32 2614888103)) := by core033_kernel_decide
theorem stats2529 : actualRows2529.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2529=4044 := by core033_kernel_decide
theorem rows2530 : actualRows2530=WordField.canonicalRows actualModulus 2530 (.badd 2528 2529) := by core033_kernel_decide
theorem stats2530 : actualRows2530.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2530=5388 := by core033_kernel_decide
theorem rows2531 : actualRows2531=WordField.canonicalRows actualModulus 2531 (.badd 2530 946) := by core033_kernel_decide
theorem stats2531 : actualRows2531.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2531=5388 := by core033_kernel_decide
theorem rows2532 : actualRows2532=WordField.canonicalRows actualModulus 2532 (.rotr 2516 2) := by core033_kernel_decide
theorem stats2532 : actualRows2532.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2532=5124 := by core033_kernel_decide
theorem rows2533 : actualRows2533=WordField.canonicalRows actualModulus 2533 (.rotr 2516 13) := by core033_kernel_decide
theorem stats2533 : actualRows2533.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2533=5124 := by core033_kernel_decide
theorem rows2534 : actualRows2534=WordField.canonicalRows actualModulus 2534 (.bxor 2532 2533) := by core033_kernel_decide
theorem stats2534 : actualRows2534.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2534=7428 := by core033_kernel_decide
theorem rows2535 : actualRows2535=WordField.canonicalRows actualModulus 2535 (.rotr 2516 22) := by core033_kernel_decide
theorem stats2535 : actualRows2535.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2535=5124 := by core033_kernel_decide
theorem rows2536 : actualRows2536=WordField.canonicalRows actualModulus 2536 (.bxor 2534 2535) := by core033_kernel_decide
theorem stats2536 : actualRows2536.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2536=7428 := by core033_kernel_decide
theorem rows2537 : actualRows2537=WordField.canonicalRows actualModulus 2537 (.band 2516 2490) := by core033_kernel_decide
theorem stats2537 : actualRows2537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2537=5124 := by core033_kernel_decide
theorem rows2538 : actualRows2538=WordField.canonicalRows actualModulus 2538 (.band 2516 2464) := by core033_kernel_decide
theorem stats2538 : actualRows2538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2538=5124 := by core033_kernel_decide
def partRows38 : List R1CS.Row := actualRows2475++actualRows2476++actualRows2477++actualRows2478++actualRows2479++actualRows2480++actualRows2481++actualRows2482++actualRows2483++actualRows2484++actualRows2485++actualRows2486++actualRows2487++actualRows2488++actualRows2489++actualRows2490++actualRows2491++actualRows2492++actualRows2493++actualRows2494++actualRows2495++actualRows2496++actualRows2497++actualRows2498++actualRows2499++actualRows2500++actualRows2501++actualRows2502++actualRows2503++actualRows2504++actualRows2505++actualRows2506++actualRows2507++actualRows2508++actualRows2509++actualRows2510++actualRows2511++actualRows2512++actualRows2513++actualRows2514++actualRows2515++actualRows2516++actualRows2517++actualRows2518++actualRows2519++actualRows2520++actualRows2521++actualRows2522++actualRows2523++actualRows2524++actualRows2525++actualRows2526++actualRows2527++actualRows2528++actualRows2529++actualRows2530++actualRows2531++actualRows2532++actualRows2533++actualRows2534++actualRows2535++actualRows2536++actualRows2537++actualRows2538
def partOps38 : List WordIR.Op := [.bxor 2472 2474,.badd 2471 2475,.literal (BitVec.ofNat 32 1925078388),.badd 2476 2477,.badd 2478 934,.rotr 2464 2,.rotr 2464 13,.bxor 2480 2481,.rotr 2464 22,.bxor 2482 2483,.band 2464 2438,.band 2464 2412,.bxor 2485 2486,.bxor 2487 2459,.badd 2484 2488,.badd 2479 2489,.badd 2386 2479,.rotr 2491 6,.rotr 2491 11,.bxor 2492 2493,.rotr 2491 25,.bxor 2494 2495,.badd 2413 2496,.band 2491 2465,.bnot 2491,.band 2499 2439,.bxor 2498 2500,.badd 2497 2501,.literal (BitVec.ofNat 32 2162078206),.badd 2502 2503,.badd 2504 940,.rotr 2490 2,.rotr 2490 13,.bxor 2506 2507,.rotr 2490 22,.bxor 2508 2509,.band 2490 2464,.band 2490 2438,.bxor 2511 2512,.bxor 2513 2485,.badd 2510 2514,.badd 2505 2515,.badd 2412 2505,.rotr 2517 6,.rotr 2517 11,.bxor 2518 2519,.rotr 2517 25,.bxor 2520 2521,.badd 2439 2522,.band 2517 2491,.bnot 2517,.band 2525 2465,.bxor 2524 2526,.badd 2523 2527,.literal (BitVec.ofNat 32 2614888103),.badd 2528 2529,.badd 2530 946,.rotr 2516 2,.rotr 2516 13,.bxor 2532 2533,.rotr 2516 22,.bxor 2534 2535,.band 2516 2490,.band 2516 2464]
theorem partExact38 : partRows38=WordField.rows actualModulus 2475 partOps38 := by
  simp only [partRows38,partOps38,WordField.rows,rows2475,rows2476,rows2477,rows2478,rows2479,rows2480,rows2481,rows2482,rows2483,rows2484,rows2485,rows2486,rows2487,rows2488,rows2489,rows2490,rows2491,rows2492,rows2493,rows2494,rows2495,rows2496,rows2497,rows2498,rows2499,rows2500,rows2501,rows2502,rows2503,rows2504,rows2505,rows2506,rows2507,rows2508,rows2509,rows2510,rows2511,rows2512,rows2513,rows2514,rows2515,rows2516,rows2517,rows2518,rows2519,rows2520,rows2521,rows2522,rows2523,rows2524,rows2525,rows2526,rows2527,rows2528,rows2529,rows2530,rows2531,rows2532,rows2533,rows2534,rows2535,rows2536,rows2537,rows2538,List.append_assoc,List.append_nil]
theorem partLength38 : partOps38.length=64 := by decide
theorem partStats38 : partRows38.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows38=370872 := by
  simp only [partRows38,List.length_append,MatrixRowBlocks.rows_weight_append,stats2475.1,stats2475.2,stats2476.1,stats2476.2,stats2477.1,stats2477.2,stats2478.1,stats2478.2,stats2479.1,stats2479.2,stats2480.1,stats2480.2,stats2481.1,stats2481.2,stats2482.1,stats2482.2,stats2483.1,stats2483.2,stats2484.1,stats2484.2,stats2485.1,stats2485.2,stats2486.1,stats2486.2,stats2487.1,stats2487.2,stats2488.1,stats2488.2,stats2489.1,stats2489.2,stats2490.1,stats2490.2,stats2491.1,stats2491.2,stats2492.1,stats2492.2,stats2493.1,stats2493.2,stats2494.1,stats2494.2,stats2495.1,stats2495.2,stats2496.1,stats2496.2,stats2497.1,stats2497.2,stats2498.1,stats2498.2,stats2499.1,stats2499.2,stats2500.1,stats2500.2,stats2501.1,stats2501.2,stats2502.1,stats2502.2,stats2503.1,stats2503.2,stats2504.1,stats2504.2,stats2505.1,stats2505.2,stats2506.1,stats2506.2,stats2507.1,stats2507.2,stats2508.1,stats2508.2,stats2509.1,stats2509.2,stats2510.1,stats2510.2,stats2511.1,stats2511.2,stats2512.1,stats2512.2,stats2513.1,stats2513.2,stats2514.1,stats2514.2,stats2515.1,stats2515.2,stats2516.1,stats2516.2,stats2517.1,stats2517.2,stats2518.1,stats2518.2,stats2519.1,stats2519.2,stats2520.1,stats2520.2,stats2521.1,stats2521.2,stats2522.1,stats2522.2,stats2523.1,stats2523.2,stats2524.1,stats2524.2,stats2525.1,stats2525.2,stats2526.1,stats2526.2,stats2527.1,stats2527.2,stats2528.1,stats2528.2,stats2529.1,stats2529.2,stats2530.1,stats2530.2,stats2531.1,stats2531.2,stats2532.1,stats2532.2,stats2533.1,stats2533.2,stats2534.1,stats2534.2,stats2535.1,stats2535.2,stats2536.1,stats2536.2,stats2537.1,stats2537.2,stats2538.1,stats2538.2]
  decide
end SharedFrameCheckedRows
