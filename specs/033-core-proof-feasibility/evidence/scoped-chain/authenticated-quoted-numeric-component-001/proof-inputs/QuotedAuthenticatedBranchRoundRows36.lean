import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData37
import AuthenticatedBranchRoundInstructionMatrixData38
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2422 : actualRows2422=WordField.canonicalRows actualModulus 2422 (.badd 2178 2298) := by core033_kernel_decide
theorem stats2422 : actualRows2422.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2422=5388 := by core033_kernel_decide
theorem rows2423 : actualRows2423=WordField.canonicalRows actualModulus 2423 (.band 2168 2288) := by core033_kernel_decide
theorem stats2423 : actualRows2423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2423=5124 := by core033_kernel_decide
theorem rows2424 : actualRows2424=WordField.canonicalRows actualModulus 2424 (.bxor 2168 2288) := by core033_kernel_decide
theorem stats2424 : actualRows2424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2424=7428 := by core033_kernel_decide
theorem rows2425 : actualRows2425=WordField.canonicalRows actualModulus 2425 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2425 : actualRows2425.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2425=5388 := by core033_kernel_decide
theorem rows2426 : actualRows2426=WordField.canonicalRows actualModulus 2426 (.bnot 2425) := by core033_kernel_decide
theorem stats2426 : actualRows2426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2426=6276 := by core033_kernel_decide
theorem rows2427 : actualRows2427=WordField.canonicalRows actualModulus 2427 (.band 2424 2426) := by core033_kernel_decide
theorem stats2427 : actualRows2427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2427=5124 := by core033_kernel_decide
theorem rows2428 : actualRows2428=WordField.canonicalRows actualModulus 2428 (.bxor 2423 2427) := by core033_kernel_decide
theorem stats2428 : actualRows2428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2428=7428 := by core033_kernel_decide
theorem rows2429 : actualRows2429=WordField.canonicalRows actualModulus 2429 (.shr 2428 31) := by core033_kernel_decide
theorem stats2429 : actualRows2429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2429=2892 := by core033_kernel_decide
theorem rows2430 : actualRows2430=WordField.canonicalRows actualModulus 2430 (.badd 2422 2429) := by core033_kernel_decide
theorem stats2430 : actualRows2430.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2430=5388 := by core033_kernel_decide
theorem rows2431 : actualRows2431=WordField.canonicalRows actualModulus 2431 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2431 : actualRows2431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2431=2820 := by core033_kernel_decide
theorem rows2432 : actualRows2432=WordField.canonicalRows actualModulus 2432 (.bnot 2431) := by core033_kernel_decide
theorem stats2432 : actualRows2432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2432=6276 := by core033_kernel_decide
theorem rows2433 : actualRows2433=WordField.canonicalRows actualModulus 2433 (.bxor 2430 2432) := by core033_kernel_decide
theorem stats2433 : actualRows2433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2433=7428 := by core033_kernel_decide
theorem rows2434 : actualRows2434=WordField.canonicalRows actualModulus 2434 (.badd 2178 2298) := by core033_kernel_decide
theorem stats2434 : actualRows2434.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2434=5388 := by core033_kernel_decide
theorem rows2435 : actualRows2435=WordField.canonicalRows actualModulus 2435 (.band 2168 2288) := by core033_kernel_decide
theorem stats2435 : actualRows2435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2435=5124 := by core033_kernel_decide
theorem rows2436 : actualRows2436=WordField.canonicalRows actualModulus 2436 (.bxor 2168 2288) := by core033_kernel_decide
theorem stats2436 : actualRows2436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2436=7428 := by core033_kernel_decide
theorem rows2437 : actualRows2437=WordField.canonicalRows actualModulus 2437 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2437 : actualRows2437.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2437=5388 := by core033_kernel_decide
theorem rows2438 : actualRows2438=WordField.canonicalRows actualModulus 2438 (.bnot 2437) := by core033_kernel_decide
theorem stats2438 : actualRows2438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2438=6276 := by core033_kernel_decide
theorem rows2439 : actualRows2439=WordField.canonicalRows actualModulus 2439 (.band 2436 2438) := by core033_kernel_decide
theorem stats2439 : actualRows2439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2439=5124 := by core033_kernel_decide
theorem rows2440 : actualRows2440=WordField.canonicalRows actualModulus 2440 (.bxor 2435 2439) := by core033_kernel_decide
theorem stats2440 : actualRows2440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2440=7428 := by core033_kernel_decide
theorem rows2441 : actualRows2441=WordField.canonicalRows actualModulus 2441 (.shr 2440 31) := by core033_kernel_decide
theorem stats2441 : actualRows2441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2441=2892 := by core033_kernel_decide
theorem rows2442 : actualRows2442=WordField.canonicalRows actualModulus 2442 (.badd 2434 2441) := by core033_kernel_decide
theorem stats2442 : actualRows2442.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2442=5388 := by core033_kernel_decide
theorem rows2443 : actualRows2443=WordField.canonicalRows actualModulus 2443 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2443 : actualRows2443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2443=2820 := by core033_kernel_decide
theorem rows2444 : actualRows2444=WordField.canonicalRows actualModulus 2444 (.bnot 2443) := by core033_kernel_decide
theorem stats2444 : actualRows2444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2444=6276 := by core033_kernel_decide
theorem rows2445 : actualRows2445=WordField.canonicalRows actualModulus 2445 (.badd 2442 2444) := by core033_kernel_decide
theorem stats2445 : actualRows2445.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2445=5388 := by core033_kernel_decide
theorem rows2446 : actualRows2446=WordField.canonicalRows actualModulus 2446 (.bnot 2445) := by core033_kernel_decide
theorem stats2446 : actualRows2446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2446=6276 := by core033_kernel_decide
theorem rows2447 : actualRows2447=WordField.canonicalRows actualModulus 2447 (.band 2433 2446) := by core033_kernel_decide
theorem stats2447 : actualRows2447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2447=5124 := by core033_kernel_decide
theorem rows2448 : actualRows2448=WordField.canonicalRows actualModulus 2448 (.bxor 2421 2447) := by core033_kernel_decide
theorem stats2448 : actualRows2448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2448=7428 := by core033_kernel_decide
theorem rows2449 : actualRows2449=WordField.canonicalRows actualModulus 2449 (.shr 2448 31) := by core033_kernel_decide
theorem stats2449 : actualRows2449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2449=2892 := by core033_kernel_decide
theorem rows2450 : actualRows2450=WordField.canonicalRows actualModulus 2450 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2450 : actualRows2450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2450=2892 := by core033_kernel_decide
theorem rows2451 : actualRows2451=WordField.canonicalRows actualModulus 2451 (.bxor 2449 2450) := by core033_kernel_decide
theorem stats2451 : actualRows2451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2451=7428 := by core033_kernel_decide
theorem rows2452 : actualRows2452=WordField.canonicalRows actualModulus 2452 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2452 : actualRows2452.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2452=5388 := by core033_kernel_decide
theorem rows2453 : actualRows2453=WordField.canonicalRows actualModulus 2453 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2453 : actualRows2453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2453=2892 := by core033_kernel_decide
theorem rows2454 : actualRows2454=WordField.canonicalRows actualModulus 2454 (.bnot 2453) := by core033_kernel_decide
theorem stats2454 : actualRows2454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2454=6276 := by core033_kernel_decide
theorem rows2455 : actualRows2455=WordField.canonicalRows actualModulus 2455 (.band 2452 2454) := by core033_kernel_decide
theorem stats2455 : actualRows2455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2455=5124 := by core033_kernel_decide
theorem rows2456 : actualRows2456=WordField.canonicalRows actualModulus 2456 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2456 : actualRows2456.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2456=5388 := by core033_kernel_decide
theorem rows2457 : actualRows2457=WordField.canonicalRows actualModulus 2457 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2457 : actualRows2457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2457=2892 := by core033_kernel_decide
theorem rows2458 : actualRows2458=WordField.canonicalRows actualModulus 2458 (.bnot 2457) := by core033_kernel_decide
theorem stats2458 : actualRows2458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2458=6276 := by core033_kernel_decide
theorem rows2459 : actualRows2459=WordField.canonicalRows actualModulus 2459 (.bxor 2456 2458) := by core033_kernel_decide
theorem stats2459 : actualRows2459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2459=7428 := by core033_kernel_decide
theorem rows2460 : actualRows2460=WordField.canonicalRows actualModulus 2460 (.badd 2168 2288) := by core033_kernel_decide
theorem stats2460 : actualRows2460.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2460=5388 := by core033_kernel_decide
theorem rows2461 : actualRows2461=WordField.canonicalRows actualModulus 2461 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2461 : actualRows2461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2461=2892 := by core033_kernel_decide
theorem rows2462 : actualRows2462=WordField.canonicalRows actualModulus 2462 (.bnot 2461) := by core033_kernel_decide
theorem stats2462 : actualRows2462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2462=6276 := by core033_kernel_decide
theorem rows2463 : actualRows2463=WordField.canonicalRows actualModulus 2463 (.badd 2460 2462) := by core033_kernel_decide
theorem stats2463 : actualRows2463.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2463=5388 := by core033_kernel_decide
theorem rows2464 : actualRows2464=WordField.canonicalRows actualModulus 2464 (.bnot 2463) := by core033_kernel_decide
theorem stats2464 : actualRows2464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2464=6276 := by core033_kernel_decide
theorem rows2465 : actualRows2465=WordField.canonicalRows actualModulus 2465 (.band 2459 2464) := by core033_kernel_decide
theorem stats2465 : actualRows2465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2465=5124 := by core033_kernel_decide
theorem rows2466 : actualRows2466=WordField.canonicalRows actualModulus 2466 (.bxor 2455 2465) := by core033_kernel_decide
theorem stats2466 : actualRows2466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2466=7428 := by core033_kernel_decide
theorem rows2467 : actualRows2467=WordField.canonicalRows actualModulus 2467 (.shr 2466 31) := by core033_kernel_decide
theorem stats2467 : actualRows2467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2467=2892 := by core033_kernel_decide
theorem rows2468 : actualRows2468=WordField.canonicalRows actualModulus 2468 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2468 : actualRows2468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2468=2892 := by core033_kernel_decide
theorem rows2469 : actualRows2469=WordField.canonicalRows actualModulus 2469 (.bxor 2467 2468) := by core033_kernel_decide
theorem stats2469 : actualRows2469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2469=7428 := by core033_kernel_decide
theorem rows2470 : actualRows2470=WordField.canonicalRows actualModulus 2470 (.band 2451 2469) := by core033_kernel_decide
theorem stats2470 : actualRows2470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2470=5124 := by core033_kernel_decide
theorem rows2471 : actualRows2471=WordField.canonicalRows actualModulus 2471 (.band 2409 2470) := by core033_kernel_decide
theorem stats2471 : actualRows2471.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2471=5124 := by core033_kernel_decide
theorem rows2472 : actualRows2472=WordField.canonicalRows actualModulus 2472 (.band 2188 2308) := by core033_kernel_decide
theorem stats2472 : actualRows2472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2472=5124 := by core033_kernel_decide
theorem rows2473 : actualRows2473=WordField.canonicalRows actualModulus 2473 (.band 2198 2318) := by core033_kernel_decide
theorem stats2473 : actualRows2473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2473=5124 := by core033_kernel_decide
theorem rows2474 : actualRows2474=WordField.canonicalRows actualModulus 2474 (.shr 2188 1) := by core033_kernel_decide
theorem stats2474 : actualRows2474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2474=5052 := by core033_kernel_decide
theorem rows2475 : actualRows2475=WordField.canonicalRows actualModulus 2475 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2475 : actualRows2475.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2475=2820 := by core033_kernel_decide
theorem rows2476 : actualRows2476=WordField.canonicalRows actualModulus 2476 (.bnot 2475) := by core033_kernel_decide
theorem stats2476 : actualRows2476.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2476=6276 := by core033_kernel_decide
theorem rows2477 : actualRows2477=WordField.canonicalRows actualModulus 2477 (.band 2474 2476) := by core033_kernel_decide
theorem stats2477 : actualRows2477.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2477=5124 := by core033_kernel_decide
theorem rows2478 : actualRows2478=WordField.canonicalRows actualModulus 2478 (.shr 2188 1) := by core033_kernel_decide
theorem stats2478 : actualRows2478.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2478=5052 := by core033_kernel_decide
theorem rows2479 : actualRows2479=WordField.canonicalRows actualModulus 2479 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2479 : actualRows2479.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2479=2820 := by core033_kernel_decide
theorem rows2480 : actualRows2480=WordField.canonicalRows actualModulus 2480 (.bnot 2479) := by core033_kernel_decide
theorem stats2480 : actualRows2480.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2480=6276 := by core033_kernel_decide
theorem rows2481 : actualRows2481=WordField.canonicalRows actualModulus 2481 (.bxor 2478 2480) := by core033_kernel_decide
theorem stats2481 : actualRows2481.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2481=7428 := by core033_kernel_decide
theorem rows2482 : actualRows2482=WordField.canonicalRows actualModulus 2482 (.shr 2188 1) := by core033_kernel_decide
theorem stats2482 : actualRows2482.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2482=5052 := by core033_kernel_decide
theorem rows2483 : actualRows2483=WordField.canonicalRows actualModulus 2483 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2483 : actualRows2483.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2483=2820 := by core033_kernel_decide
theorem rows2484 : actualRows2484=WordField.canonicalRows actualModulus 2484 (.bnot 2483) := by core033_kernel_decide
theorem stats2484 : actualRows2484.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2484=6276 := by core033_kernel_decide
theorem rows2485 : actualRows2485=WordField.canonicalRows actualModulus 2485 (.badd 2482 2484) := by core033_kernel_decide
theorem stats2485 : actualRows2485.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2485=5388 := by core033_kernel_decide
def partRows36 : List R1CS.Row := actualRows2422++actualRows2423++actualRows2424++actualRows2425++actualRows2426++actualRows2427++actualRows2428++actualRows2429++actualRows2430++actualRows2431++actualRows2432++actualRows2433++actualRows2434++actualRows2435++actualRows2436++actualRows2437++actualRows2438++actualRows2439++actualRows2440++actualRows2441++actualRows2442++actualRows2443++actualRows2444++actualRows2445++actualRows2446++actualRows2447++actualRows2448++actualRows2449++actualRows2450++actualRows2451++actualRows2452++actualRows2453++actualRows2454++actualRows2455++actualRows2456++actualRows2457++actualRows2458++actualRows2459++actualRows2460++actualRows2461++actualRows2462++actualRows2463++actualRows2464++actualRows2465++actualRows2466++actualRows2467++actualRows2468++actualRows2469++actualRows2470++actualRows2471++actualRows2472++actualRows2473++actualRows2474++actualRows2475++actualRows2476++actualRows2477++actualRows2478++actualRows2479++actualRows2480++actualRows2481++actualRows2482++actualRows2483++actualRows2484++actualRows2485
def partOps36 : List WordIR.Op := [.badd 2178 2298,.band 2168 2288,.bxor 2168 2288,.badd 2168 2288,.bnot 2425,.band 2424 2426,.bxor 2423 2427,.shr 2428 31,.badd 2422 2429,.literal (BitVec.ofNat 32 0),.bnot 2431,.bxor 2430 2432,.badd 2178 2298,.band 2168 2288,.bxor 2168 2288,.badd 2168 2288,.bnot 2437,.band 2436 2438,.bxor 2435 2439,.shr 2440 31,.badd 2434 2441,.literal (BitVec.ofNat 32 0),.bnot 2443,.badd 2442 2444,.bnot 2445,.band 2433 2446,.bxor 2421 2447,.shr 2448 31,.literal (BitVec.ofNat 32 1),.bxor 2449 2450,.badd 2168 2288,.literal (BitVec.ofNat 32 1048576),.bnot 2453,.band 2452 2454,.badd 2168 2288,.literal (BitVec.ofNat 32 1048576),.bnot 2457,.bxor 2456 2458,.badd 2168 2288,.literal (BitVec.ofNat 32 1048576),.bnot 2461,.badd 2460 2462,.bnot 2463,.band 2459 2464,.bxor 2455 2465,.shr 2466 31,.literal (BitVec.ofNat 32 1),.bxor 2467 2468,.band 2451 2469,.band 2409 2470,.band 2188 2308,.band 2198 2318,.shr 2188 1,.literal (BitVec.ofNat 32 0),.bnot 2475,.band 2474 2476,.shr 2188 1,.literal (BitVec.ofNat 32 0),.bnot 2479,.bxor 2478 2480,.shr 2188 1,.literal (BitVec.ofNat 32 0),.bnot 2483,.badd 2482 2484]
theorem partExact36 : partRows36=WordField.rows actualModulus 2422 partOps36 := by
  simp only [partRows36,partOps36,WordField.rows,rows2422,rows2423,rows2424,rows2425,rows2426,rows2427,rows2428,rows2429,rows2430,rows2431,rows2432,rows2433,rows2434,rows2435,rows2436,rows2437,rows2438,rows2439,rows2440,rows2441,rows2442,rows2443,rows2444,rows2445,rows2446,rows2447,rows2448,rows2449,rows2450,rows2451,rows2452,rows2453,rows2454,rows2455,rows2456,rows2457,rows2458,rows2459,rows2460,rows2461,rows2462,rows2463,rows2464,rows2465,rows2466,rows2467,rows2468,rows2469,rows2470,rows2471,rows2472,rows2473,rows2474,rows2475,rows2476,rows2477,rows2478,rows2479,rows2480,rows2481,rows2482,rows2483,rows2484,rows2485,List.append_assoc,List.append_nil]
theorem partLength36 : partOps36.length=64 := by decide
theorem partStats36 : partRows36.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows36=338448 := by
  simp only [partRows36,List.length_append,MatrixRowBlocks.rows_weight_append,stats2422.1,stats2422.2,stats2423.1,stats2423.2,stats2424.1,stats2424.2,stats2425.1,stats2425.2,stats2426.1,stats2426.2,stats2427.1,stats2427.2,stats2428.1,stats2428.2,stats2429.1,stats2429.2,stats2430.1,stats2430.2,stats2431.1,stats2431.2,stats2432.1,stats2432.2,stats2433.1,stats2433.2,stats2434.1,stats2434.2,stats2435.1,stats2435.2,stats2436.1,stats2436.2,stats2437.1,stats2437.2,stats2438.1,stats2438.2,stats2439.1,stats2439.2,stats2440.1,stats2440.2,stats2441.1,stats2441.2,stats2442.1,stats2442.2,stats2443.1,stats2443.2,stats2444.1,stats2444.2,stats2445.1,stats2445.2,stats2446.1,stats2446.2,stats2447.1,stats2447.2,stats2448.1,stats2448.2,stats2449.1,stats2449.2,stats2450.1,stats2450.2,stats2451.1,stats2451.2,stats2452.1,stats2452.2,stats2453.1,stats2453.2,stats2454.1,stats2454.2,stats2455.1,stats2455.2,stats2456.1,stats2456.2,stats2457.1,stats2457.2,stats2458.1,stats2458.2,stats2459.1,stats2459.2,stats2460.1,stats2460.2,stats2461.1,stats2461.2,stats2462.1,stats2462.2,stats2463.1,stats2463.2,stats2464.1,stats2464.2,stats2465.1,stats2465.2,stats2466.1,stats2466.2,stats2467.1,stats2467.2,stats2468.1,stats2468.2,stats2469.1,stats2469.2,stats2470.1,stats2470.2,stats2471.1,stats2471.2,stats2472.1,stats2472.2,stats2473.1,stats2473.2,stats2474.1,stats2474.2,stats2475.1,stats2475.2,stats2476.1,stats2476.2,stats2477.1,stats2477.2,stats2478.1,stats2478.2,stats2479.1,stats2479.2,stats2480.1,stats2480.2,stats2481.1,stats2481.2,stats2482.1,stats2482.2,stats2483.1,stats2483.2,stats2484.1,stats2484.2,stats2485.1,stats2485.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
