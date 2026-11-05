import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData39
import SharedFrameInstructionMatrixData40
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2539 : actualRows2539=WordField.canonicalRows actualModulus 2539 (.bxor 2537 2538) := by core033_kernel_decide
theorem stats2539 : actualRows2539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2539=7428 := by core033_kernel_decide
theorem rows2540 : actualRows2540=WordField.canonicalRows actualModulus 2540 (.bxor 2539 2511) := by core033_kernel_decide
theorem stats2540 : actualRows2540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2540=7428 := by core033_kernel_decide
theorem rows2541 : actualRows2541=WordField.canonicalRows actualModulus 2541 (.badd 2536 2540) := by core033_kernel_decide
theorem stats2541 : actualRows2541.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2541=5388 := by core033_kernel_decide
theorem rows2542 : actualRows2542=WordField.canonicalRows actualModulus 2542 (.badd 2531 2541) := by core033_kernel_decide
theorem stats2542 : actualRows2542.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2542=5388 := by core033_kernel_decide
theorem rows2543 : actualRows2543=WordField.canonicalRows actualModulus 2543 (.badd 2438 2531) := by core033_kernel_decide
theorem stats2543 : actualRows2543.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2543=5388 := by core033_kernel_decide
theorem rows2544 : actualRows2544=WordField.canonicalRows actualModulus 2544 (.rotr 2543 6) := by core033_kernel_decide
theorem stats2544 : actualRows2544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2544=5124 := by core033_kernel_decide
theorem rows2545 : actualRows2545=WordField.canonicalRows actualModulus 2545 (.rotr 2543 11) := by core033_kernel_decide
theorem stats2545 : actualRows2545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2545=5124 := by core033_kernel_decide
theorem rows2546 : actualRows2546=WordField.canonicalRows actualModulus 2546 (.bxor 2544 2545) := by core033_kernel_decide
theorem stats2546 : actualRows2546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2546=7428 := by core033_kernel_decide
theorem rows2547 : actualRows2547=WordField.canonicalRows actualModulus 2547 (.rotr 2543 25) := by core033_kernel_decide
theorem stats2547 : actualRows2547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2547=5124 := by core033_kernel_decide
theorem rows2548 : actualRows2548=WordField.canonicalRows actualModulus 2548 (.bxor 2546 2547) := by core033_kernel_decide
theorem stats2548 : actualRows2548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2548=7428 := by core033_kernel_decide
theorem rows2549 : actualRows2549=WordField.canonicalRows actualModulus 2549 (.badd 2465 2548) := by core033_kernel_decide
theorem stats2549 : actualRows2549.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2549=5388 := by core033_kernel_decide
theorem rows2550 : actualRows2550=WordField.canonicalRows actualModulus 2550 (.band 2543 2517) := by core033_kernel_decide
theorem stats2550 : actualRows2550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2550=5124 := by core033_kernel_decide
theorem rows2551 : actualRows2551=WordField.canonicalRows actualModulus 2551 (.bnot 2543) := by core033_kernel_decide
theorem stats2551 : actualRows2551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2551=6276 := by core033_kernel_decide
theorem rows2552 : actualRows2552=WordField.canonicalRows actualModulus 2552 (.band 2551 2491) := by core033_kernel_decide
theorem stats2552 : actualRows2552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2552=5124 := by core033_kernel_decide
theorem rows2553 : actualRows2553=WordField.canonicalRows actualModulus 2553 (.bxor 2550 2552) := by core033_kernel_decide
theorem stats2553 : actualRows2553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2553=7428 := by core033_kernel_decide
theorem rows2554 : actualRows2554=WordField.canonicalRows actualModulus 2554 (.badd 2549 2553) := by core033_kernel_decide
theorem stats2554 : actualRows2554.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2554=5388 := by core033_kernel_decide
theorem rows2555 : actualRows2555=WordField.canonicalRows actualModulus 2555 (.literal (BitVec.ofNat 32 3248222580)) := by core033_kernel_decide
theorem stats2555 : actualRows2555.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2555=4044 := by core033_kernel_decide
theorem rows2556 : actualRows2556=WordField.canonicalRows actualModulus 2556 (.badd 2554 2555) := by core033_kernel_decide
theorem stats2556 : actualRows2556.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2556=5388 := by core033_kernel_decide
theorem rows2557 : actualRows2557=WordField.canonicalRows actualModulus 2557 (.badd 2556 952) := by core033_kernel_decide
theorem stats2557 : actualRows2557.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2557=5388 := by core033_kernel_decide
theorem rows2558 : actualRows2558=WordField.canonicalRows actualModulus 2558 (.rotr 2542 2) := by core033_kernel_decide
theorem stats2558 : actualRows2558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2558=5124 := by core033_kernel_decide
theorem rows2559 : actualRows2559=WordField.canonicalRows actualModulus 2559 (.rotr 2542 13) := by core033_kernel_decide
theorem stats2559 : actualRows2559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2559=5124 := by core033_kernel_decide
theorem rows2560 : actualRows2560=WordField.canonicalRows actualModulus 2560 (.bxor 2558 2559) := by core033_kernel_decide
theorem stats2560 : actualRows2560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2560=7428 := by core033_kernel_decide
theorem rows2561 : actualRows2561=WordField.canonicalRows actualModulus 2561 (.rotr 2542 22) := by core033_kernel_decide
theorem stats2561 : actualRows2561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2561=5124 := by core033_kernel_decide
theorem rows2562 : actualRows2562=WordField.canonicalRows actualModulus 2562 (.bxor 2560 2561) := by core033_kernel_decide
theorem stats2562 : actualRows2562.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2562=7428 := by core033_kernel_decide
theorem rows2563 : actualRows2563=WordField.canonicalRows actualModulus 2563 (.band 2542 2516) := by core033_kernel_decide
theorem stats2563 : actualRows2563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2563=5124 := by core033_kernel_decide
theorem rows2564 : actualRows2564=WordField.canonicalRows actualModulus 2564 (.band 2542 2490) := by core033_kernel_decide
theorem stats2564 : actualRows2564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2564=5124 := by core033_kernel_decide
theorem rows2565 : actualRows2565=WordField.canonicalRows actualModulus 2565 (.bxor 2563 2564) := by core033_kernel_decide
theorem stats2565 : actualRows2565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2565=7428 := by core033_kernel_decide
theorem rows2566 : actualRows2566=WordField.canonicalRows actualModulus 2566 (.bxor 2565 2537) := by core033_kernel_decide
theorem stats2566 : actualRows2566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2566=7428 := by core033_kernel_decide
theorem rows2567 : actualRows2567=WordField.canonicalRows actualModulus 2567 (.badd 2562 2566) := by core033_kernel_decide
theorem stats2567 : actualRows2567.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2567=5388 := by core033_kernel_decide
theorem rows2568 : actualRows2568=WordField.canonicalRows actualModulus 2568 (.badd 2557 2567) := by core033_kernel_decide
theorem stats2568 : actualRows2568.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2568=5388 := by core033_kernel_decide
theorem rows2569 : actualRows2569=WordField.canonicalRows actualModulus 2569 (.badd 2464 2557) := by core033_kernel_decide
theorem stats2569 : actualRows2569.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2569=5388 := by core033_kernel_decide
theorem rows2570 : actualRows2570=WordField.canonicalRows actualModulus 2570 (.rotr 2569 6) := by core033_kernel_decide
theorem stats2570 : actualRows2570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2570=5124 := by core033_kernel_decide
theorem rows2571 : actualRows2571=WordField.canonicalRows actualModulus 2571 (.rotr 2569 11) := by core033_kernel_decide
theorem stats2571 : actualRows2571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2571=5124 := by core033_kernel_decide
theorem rows2572 : actualRows2572=WordField.canonicalRows actualModulus 2572 (.bxor 2570 2571) := by core033_kernel_decide
theorem stats2572 : actualRows2572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2572=7428 := by core033_kernel_decide
theorem rows2573 : actualRows2573=WordField.canonicalRows actualModulus 2573 (.rotr 2569 25) := by core033_kernel_decide
theorem stats2573 : actualRows2573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2573=5124 := by core033_kernel_decide
theorem rows2574 : actualRows2574=WordField.canonicalRows actualModulus 2574 (.bxor 2572 2573) := by core033_kernel_decide
theorem stats2574 : actualRows2574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2574=7428 := by core033_kernel_decide
theorem rows2575 : actualRows2575=WordField.canonicalRows actualModulus 2575 (.badd 2491 2574) := by core033_kernel_decide
theorem stats2575 : actualRows2575.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2575=5388 := by core033_kernel_decide
theorem rows2576 : actualRows2576=WordField.canonicalRows actualModulus 2576 (.band 2569 2543) := by core033_kernel_decide
theorem stats2576 : actualRows2576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2576=5124 := by core033_kernel_decide
theorem rows2577 : actualRows2577=WordField.canonicalRows actualModulus 2577 (.bnot 2569) := by core033_kernel_decide
theorem stats2577 : actualRows2577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2577=6276 := by core033_kernel_decide
theorem rows2578 : actualRows2578=WordField.canonicalRows actualModulus 2578 (.band 2577 2517) := by core033_kernel_decide
theorem stats2578 : actualRows2578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2578=5124 := by core033_kernel_decide
theorem rows2579 : actualRows2579=WordField.canonicalRows actualModulus 2579 (.bxor 2576 2578) := by core033_kernel_decide
theorem stats2579 : actualRows2579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2579=7428 := by core033_kernel_decide
theorem rows2580 : actualRows2580=WordField.canonicalRows actualModulus 2580 (.badd 2575 2579) := by core033_kernel_decide
theorem stats2580 : actualRows2580.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2580=5388 := by core033_kernel_decide
theorem rows2581 : actualRows2581=WordField.canonicalRows actualModulus 2581 (.literal (BitVec.ofNat 32 3835390401)) := by core033_kernel_decide
theorem stats2581 : actualRows2581.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2581=3972 := by core033_kernel_decide
theorem rows2582 : actualRows2582=WordField.canonicalRows actualModulus 2582 (.badd 2580 2581) := by core033_kernel_decide
theorem stats2582 : actualRows2582.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2582=5388 := by core033_kernel_decide
theorem rows2583 : actualRows2583=WordField.canonicalRows actualModulus 2583 (.badd 2582 1541) := by core033_kernel_decide
theorem stats2583 : actualRows2583.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2583=5388 := by core033_kernel_decide
theorem rows2584 : actualRows2584=WordField.canonicalRows actualModulus 2584 (.rotr 2568 2) := by core033_kernel_decide
theorem stats2584 : actualRows2584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2584=5124 := by core033_kernel_decide
theorem rows2585 : actualRows2585=WordField.canonicalRows actualModulus 2585 (.rotr 2568 13) := by core033_kernel_decide
theorem stats2585 : actualRows2585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2585=5124 := by core033_kernel_decide
theorem rows2586 : actualRows2586=WordField.canonicalRows actualModulus 2586 (.bxor 2584 2585) := by core033_kernel_decide
theorem stats2586 : actualRows2586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2586=7428 := by core033_kernel_decide
theorem rows2587 : actualRows2587=WordField.canonicalRows actualModulus 2587 (.rotr 2568 22) := by core033_kernel_decide
theorem stats2587 : actualRows2587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2587=5124 := by core033_kernel_decide
theorem rows2588 : actualRows2588=WordField.canonicalRows actualModulus 2588 (.bxor 2586 2587) := by core033_kernel_decide
theorem stats2588 : actualRows2588.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2588=7428 := by core033_kernel_decide
theorem rows2589 : actualRows2589=WordField.canonicalRows actualModulus 2589 (.band 2568 2542) := by core033_kernel_decide
theorem stats2589 : actualRows2589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2589=5124 := by core033_kernel_decide
theorem rows2590 : actualRows2590=WordField.canonicalRows actualModulus 2590 (.band 2568 2516) := by core033_kernel_decide
theorem stats2590 : actualRows2590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2590=5124 := by core033_kernel_decide
theorem rows2591 : actualRows2591=WordField.canonicalRows actualModulus 2591 (.bxor 2589 2590) := by core033_kernel_decide
theorem stats2591 : actualRows2591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2591=7428 := by core033_kernel_decide
theorem rows2592 : actualRows2592=WordField.canonicalRows actualModulus 2592 (.bxor 2591 2563) := by core033_kernel_decide
theorem stats2592 : actualRows2592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2592=7428 := by core033_kernel_decide
theorem rows2593 : actualRows2593=WordField.canonicalRows actualModulus 2593 (.badd 2588 2592) := by core033_kernel_decide
theorem stats2593 : actualRows2593.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2593=5388 := by core033_kernel_decide
theorem rows2594 : actualRows2594=WordField.canonicalRows actualModulus 2594 (.badd 2583 2593) := by core033_kernel_decide
theorem stats2594 : actualRows2594.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2594=5388 := by core033_kernel_decide
theorem rows2595 : actualRows2595=WordField.canonicalRows actualModulus 2595 (.badd 2490 2583) := by core033_kernel_decide
theorem stats2595 : actualRows2595.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2595=5388 := by core033_kernel_decide
theorem rows2596 : actualRows2596=WordField.canonicalRows actualModulus 2596 (.rotr 2595 6) := by core033_kernel_decide
theorem stats2596 : actualRows2596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2596=5124 := by core033_kernel_decide
theorem rows2597 : actualRows2597=WordField.canonicalRows actualModulus 2597 (.rotr 2595 11) := by core033_kernel_decide
theorem stats2597 : actualRows2597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2597=5124 := by core033_kernel_decide
theorem rows2598 : actualRows2598=WordField.canonicalRows actualModulus 2598 (.bxor 2596 2597) := by core033_kernel_decide
theorem stats2598 : actualRows2598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2598=7428 := by core033_kernel_decide
theorem rows2599 : actualRows2599=WordField.canonicalRows actualModulus 2599 (.rotr 2595 25) := by core033_kernel_decide
theorem stats2599 : actualRows2599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2599=5124 := by core033_kernel_decide
theorem rows2600 : actualRows2600=WordField.canonicalRows actualModulus 2600 (.bxor 2598 2599) := by core033_kernel_decide
theorem stats2600 : actualRows2600.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2600=7428 := by core033_kernel_decide
theorem rows2601 : actualRows2601=WordField.canonicalRows actualModulus 2601 (.badd 2517 2600) := by core033_kernel_decide
theorem stats2601 : actualRows2601.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2601=5388 := by core033_kernel_decide
theorem rows2602 : actualRows2602=WordField.canonicalRows actualModulus 2602 (.band 2595 2569) := by core033_kernel_decide
theorem stats2602 : actualRows2602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2602=5124 := by core033_kernel_decide
def partRows39 : List R1CS.Row := actualRows2539++actualRows2540++actualRows2541++actualRows2542++actualRows2543++actualRows2544++actualRows2545++actualRows2546++actualRows2547++actualRows2548++actualRows2549++actualRows2550++actualRows2551++actualRows2552++actualRows2553++actualRows2554++actualRows2555++actualRows2556++actualRows2557++actualRows2558++actualRows2559++actualRows2560++actualRows2561++actualRows2562++actualRows2563++actualRows2564++actualRows2565++actualRows2566++actualRows2567++actualRows2568++actualRows2569++actualRows2570++actualRows2571++actualRows2572++actualRows2573++actualRows2574++actualRows2575++actualRows2576++actualRows2577++actualRows2578++actualRows2579++actualRows2580++actualRows2581++actualRows2582++actualRows2583++actualRows2584++actualRows2585++actualRows2586++actualRows2587++actualRows2588++actualRows2589++actualRows2590++actualRows2591++actualRows2592++actualRows2593++actualRows2594++actualRows2595++actualRows2596++actualRows2597++actualRows2598++actualRows2599++actualRows2600++actualRows2601++actualRows2602
def partOps39 : List WordIR.Op := [.bxor 2537 2538,.bxor 2539 2511,.badd 2536 2540,.badd 2531 2541,.badd 2438 2531,.rotr 2543 6,.rotr 2543 11,.bxor 2544 2545,.rotr 2543 25,.bxor 2546 2547,.badd 2465 2548,.band 2543 2517,.bnot 2543,.band 2551 2491,.bxor 2550 2552,.badd 2549 2553,.literal (BitVec.ofNat 32 3248222580),.badd 2554 2555,.badd 2556 952,.rotr 2542 2,.rotr 2542 13,.bxor 2558 2559,.rotr 2542 22,.bxor 2560 2561,.band 2542 2516,.band 2542 2490,.bxor 2563 2564,.bxor 2565 2537,.badd 2562 2566,.badd 2557 2567,.badd 2464 2557,.rotr 2569 6,.rotr 2569 11,.bxor 2570 2571,.rotr 2569 25,.bxor 2572 2573,.badd 2491 2574,.band 2569 2543,.bnot 2569,.band 2577 2517,.bxor 2576 2578,.badd 2575 2579,.literal (BitVec.ofNat 32 3835390401),.badd 2580 2581,.badd 2582 1541,.rotr 2568 2,.rotr 2568 13,.bxor 2584 2585,.rotr 2568 22,.bxor 2586 2587,.band 2568 2542,.band 2568 2516,.bxor 2589 2590,.bxor 2591 2563,.badd 2588 2592,.badd 2583 2593,.badd 2490 2583,.rotr 2595 6,.rotr 2595 11,.bxor 2596 2597,.rotr 2595 25,.bxor 2598 2599,.badd 2517 2600,.band 2595 2569]
theorem partExact39 : partRows39=WordField.rows actualModulus 2539 partOps39 := by
  simp only [partRows39,partOps39,WordField.rows,rows2539,rows2540,rows2541,rows2542,rows2543,rows2544,rows2545,rows2546,rows2547,rows2548,rows2549,rows2550,rows2551,rows2552,rows2553,rows2554,rows2555,rows2556,rows2557,rows2558,rows2559,rows2560,rows2561,rows2562,rows2563,rows2564,rows2565,rows2566,rows2567,rows2568,rows2569,rows2570,rows2571,rows2572,rows2573,rows2574,rows2575,rows2576,rows2577,rows2578,rows2579,rows2580,rows2581,rows2582,rows2583,rows2584,rows2585,rows2586,rows2587,rows2588,rows2589,rows2590,rows2591,rows2592,rows2593,rows2594,rows2595,rows2596,rows2597,rows2598,rows2599,rows2600,rows2601,rows2602,List.append_assoc,List.append_nil]
theorem partLength39 : partOps39.length=64 := by decide
theorem partStats39 : partRows39.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows39=374232 := by
  simp only [partRows39,List.length_append,MatrixRowBlocks.rows_weight_append,stats2539.1,stats2539.2,stats2540.1,stats2540.2,stats2541.1,stats2541.2,stats2542.1,stats2542.2,stats2543.1,stats2543.2,stats2544.1,stats2544.2,stats2545.1,stats2545.2,stats2546.1,stats2546.2,stats2547.1,stats2547.2,stats2548.1,stats2548.2,stats2549.1,stats2549.2,stats2550.1,stats2550.2,stats2551.1,stats2551.2,stats2552.1,stats2552.2,stats2553.1,stats2553.2,stats2554.1,stats2554.2,stats2555.1,stats2555.2,stats2556.1,stats2556.2,stats2557.1,stats2557.2,stats2558.1,stats2558.2,stats2559.1,stats2559.2,stats2560.1,stats2560.2,stats2561.1,stats2561.2,stats2562.1,stats2562.2,stats2563.1,stats2563.2,stats2564.1,stats2564.2,stats2565.1,stats2565.2,stats2566.1,stats2566.2,stats2567.1,stats2567.2,stats2568.1,stats2568.2,stats2569.1,stats2569.2,stats2570.1,stats2570.2,stats2571.1,stats2571.2,stats2572.1,stats2572.2,stats2573.1,stats2573.2,stats2574.1,stats2574.2,stats2575.1,stats2575.2,stats2576.1,stats2576.2,stats2577.1,stats2577.2,stats2578.1,stats2578.2,stats2579.1,stats2579.2,stats2580.1,stats2580.2,stats2581.1,stats2581.2,stats2582.1,stats2582.2,stats2583.1,stats2583.2,stats2584.1,stats2584.2,stats2585.1,stats2585.2,stats2586.1,stats2586.2,stats2587.1,stats2587.2,stats2588.1,stats2588.2,stats2589.1,stats2589.2,stats2590.1,stats2590.2,stats2591.1,stats2591.2,stats2592.1,stats2592.2,stats2593.1,stats2593.2,stats2594.1,stats2594.2,stats2595.1,stats2595.2,stats2596.1,stats2596.2,stats2597.1,stats2597.2,stats2598.1,stats2598.2,stats2599.1,stats2599.2,stats2600.1,stats2600.2,stats2601.1,stats2601.2,stats2602.1,stats2602.2]
  decide
end SharedFrameCheckedRows
