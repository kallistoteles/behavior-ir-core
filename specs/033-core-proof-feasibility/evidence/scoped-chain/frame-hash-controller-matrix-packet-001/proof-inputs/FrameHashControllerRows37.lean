import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData37
import FrameHashControllerInstructionMatrixData38
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2411 : actualRows2411=WordField.canonicalRows actualModulus 2411 (.bnot 2410) := by core033_kernel_decide
theorem stats2411 : actualRows2411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2411=6276 := by core033_kernel_decide
theorem rows2412 : actualRows2412=WordField.canonicalRows actualModulus 2412 (.band 2405 2411) := by core033_kernel_decide
theorem stats2412 : actualRows2412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2412=5124 := by core033_kernel_decide
theorem rows2413 : actualRows2413=WordField.canonicalRows actualModulus 2413 (.bxor 2400 2412) := by core033_kernel_decide
theorem stats2413 : actualRows2413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2413=7428 := by core033_kernel_decide
theorem rows2414 : actualRows2414=WordField.canonicalRows actualModulus 2414 (.shr 2413 31) := by core033_kernel_decide
theorem stats2414 : actualRows2414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2414=2892 := by core033_kernel_decide
theorem rows2415 : actualRows2415=WordField.canonicalRows actualModulus 2415 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2415 : actualRows2415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2415=2892 := by core033_kernel_decide
theorem rows2416 : actualRows2416=WordField.canonicalRows actualModulus 2416 (.bxor 2414 2415) := by core033_kernel_decide
theorem stats2416 : actualRows2416.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2416=7428 := by core033_kernel_decide
theorem rows2417 : actualRows2417=WordField.canonicalRows actualModulus 2417 (.bnot 2416) := by core033_kernel_decide
theorem stats2417 : actualRows2417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2417=6276 := by core033_kernel_decide
theorem rows2418 : actualRows2418=WordField.canonicalRows actualModulus 2418 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2418 : actualRows2418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2418=2892 := by core033_kernel_decide
theorem rows2419 : actualRows2419=WordField.canonicalRows actualModulus 2419 (.badd 2417 2418) := by core033_kernel_decide
theorem stats2419 : actualRows2419.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2419=5388 := by core033_kernel_decide
theorem rows2420 : actualRows2420=WordField.canonicalRows actualModulus 2420 (.band 2419 1010) := by core033_kernel_decide
theorem stats2420 : actualRows2420.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2420=5124 := by core033_kernel_decide
theorem rows2421 : actualRows2421=WordField.canonicalRows actualModulus 2421 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2421 : actualRows2421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2421=2892 := by core033_kernel_decide
theorem rows2422 : actualRows2422=WordField.canonicalRows actualModulus 2422 (.bxor 0 2421) := by core033_kernel_decide
theorem stats2422 : actualRows2422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2422=7428 := by core033_kernel_decide
theorem rows2423 : actualRows2423=WordField.canonicalRows actualModulus 2423 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2423 : actualRows2423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2423=2820 := by core033_kernel_decide
theorem rows2424 : actualRows2424=WordField.canonicalRows actualModulus 2424 (.bnot 2423) := by core033_kernel_decide
theorem stats2424 : actualRows2424.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2424=6276 := by core033_kernel_decide
theorem rows2425 : actualRows2425=WordField.canonicalRows actualModulus 2425 (.band 2422 2424) := by core033_kernel_decide
theorem stats2425 : actualRows2425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2425=5124 := by core033_kernel_decide
theorem rows2426 : actualRows2426=WordField.canonicalRows actualModulus 2426 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2426 : actualRows2426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2426=2892 := by core033_kernel_decide
theorem rows2427 : actualRows2427=WordField.canonicalRows actualModulus 2427 (.bxor 0 2426) := by core033_kernel_decide
theorem stats2427 : actualRows2427.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2427=7428 := by core033_kernel_decide
theorem rows2428 : actualRows2428=WordField.canonicalRows actualModulus 2428 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2428 : actualRows2428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2428=2820 := by core033_kernel_decide
theorem rows2429 : actualRows2429=WordField.canonicalRows actualModulus 2429 (.bnot 2428) := by core033_kernel_decide
theorem stats2429 : actualRows2429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2429=6276 := by core033_kernel_decide
theorem rows2430 : actualRows2430=WordField.canonicalRows actualModulus 2430 (.bxor 2427 2429) := by core033_kernel_decide
theorem stats2430 : actualRows2430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2430=7428 := by core033_kernel_decide
theorem rows2431 : actualRows2431=WordField.canonicalRows actualModulus 2431 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2431 : actualRows2431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2431=2892 := by core033_kernel_decide
theorem rows2432 : actualRows2432=WordField.canonicalRows actualModulus 2432 (.bxor 0 2431) := by core033_kernel_decide
theorem stats2432 : actualRows2432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2432=7428 := by core033_kernel_decide
theorem rows2433 : actualRows2433=WordField.canonicalRows actualModulus 2433 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2433 : actualRows2433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2433=2820 := by core033_kernel_decide
theorem rows2434 : actualRows2434=WordField.canonicalRows actualModulus 2434 (.bnot 2433) := by core033_kernel_decide
theorem stats2434 : actualRows2434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2434=6276 := by core033_kernel_decide
theorem rows2435 : actualRows2435=WordField.canonicalRows actualModulus 2435 (.badd 2432 2434) := by core033_kernel_decide
theorem stats2435 : actualRows2435.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2435=5388 := by core033_kernel_decide
theorem rows2436 : actualRows2436=WordField.canonicalRows actualModulus 2436 (.bnot 2435) := by core033_kernel_decide
theorem stats2436 : actualRows2436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2436=6276 := by core033_kernel_decide
theorem rows2437 : actualRows2437=WordField.canonicalRows actualModulus 2437 (.band 2430 2436) := by core033_kernel_decide
theorem stats2437 : actualRows2437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2437=5124 := by core033_kernel_decide
theorem rows2438 : actualRows2438=WordField.canonicalRows actualModulus 2438 (.bxor 2425 2437) := by core033_kernel_decide
theorem stats2438 : actualRows2438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2438=7428 := by core033_kernel_decide
theorem rows2439 : actualRows2439=WordField.canonicalRows actualModulus 2439 (.shr 2438 31) := by core033_kernel_decide
theorem stats2439 : actualRows2439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2439=2892 := by core033_kernel_decide
theorem rows2440 : actualRows2440=WordField.canonicalRows actualModulus 2440 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2440 : actualRows2440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2440=2892 := by core033_kernel_decide
theorem rows2441 : actualRows2441=WordField.canonicalRows actualModulus 2441 (.bxor 2439 2440) := by core033_kernel_decide
theorem stats2441 : actualRows2441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2441=7428 := by core033_kernel_decide
theorem rows2442 : actualRows2442=WordField.canonicalRows actualModulus 2442 (.bnot 2441) := by core033_kernel_decide
theorem stats2442 : actualRows2442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2442=6276 := by core033_kernel_decide
theorem rows2443 : actualRows2443=WordField.canonicalRows actualModulus 2443 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2443 : actualRows2443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2443=2892 := by core033_kernel_decide
theorem rows2444 : actualRows2444=WordField.canonicalRows actualModulus 2444 (.badd 2442 2443) := by core033_kernel_decide
theorem stats2444 : actualRows2444.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2444=5388 := by core033_kernel_decide
theorem rows2445 : actualRows2445=WordField.canonicalRows actualModulus 2445 (.bnot 2444) := by core033_kernel_decide
theorem stats2445 : actualRows2445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2445=6276 := by core033_kernel_decide
theorem rows2446 : actualRows2446=WordField.canonicalRows actualModulus 2446 (.band 2445 838) := by core033_kernel_decide
theorem stats2446 : actualRows2446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2446=5124 := by core033_kernel_decide
theorem rows2447 : actualRows2447=WordField.canonicalRows actualModulus 2447 (.bxor 2420 2446) := by core033_kernel_decide
theorem stats2447 : actualRows2447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2447=7428 := by core033_kernel_decide
theorem rows2448 : actualRows2448=WordField.canonicalRows actualModulus 2448 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2448 : actualRows2448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2448=2892 := by core033_kernel_decide
theorem rows2449 : actualRows2449=WordField.canonicalRows actualModulus 2449 (.bxor 0 2448) := by core033_kernel_decide
theorem stats2449 : actualRows2449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2449=7428 := by core033_kernel_decide
theorem rows2450 : actualRows2450=WordField.canonicalRows actualModulus 2450 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2450 : actualRows2450.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2450=2820 := by core033_kernel_decide
theorem rows2451 : actualRows2451=WordField.canonicalRows actualModulus 2451 (.bnot 2450) := by core033_kernel_decide
theorem stats2451 : actualRows2451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2451=6276 := by core033_kernel_decide
theorem rows2452 : actualRows2452=WordField.canonicalRows actualModulus 2452 (.band 2449 2451) := by core033_kernel_decide
theorem stats2452 : actualRows2452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2452=5124 := by core033_kernel_decide
theorem rows2453 : actualRows2453=WordField.canonicalRows actualModulus 2453 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2453 : actualRows2453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2453=2892 := by core033_kernel_decide
theorem rows2454 : actualRows2454=WordField.canonicalRows actualModulus 2454 (.bxor 0 2453) := by core033_kernel_decide
theorem stats2454 : actualRows2454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2454=7428 := by core033_kernel_decide
theorem rows2455 : actualRows2455=WordField.canonicalRows actualModulus 2455 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2455 : actualRows2455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2455=2820 := by core033_kernel_decide
theorem rows2456 : actualRows2456=WordField.canonicalRows actualModulus 2456 (.bnot 2455) := by core033_kernel_decide
theorem stats2456 : actualRows2456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2456=6276 := by core033_kernel_decide
theorem rows2457 : actualRows2457=WordField.canonicalRows actualModulus 2457 (.bxor 2454 2456) := by core033_kernel_decide
theorem stats2457 : actualRows2457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2457=7428 := by core033_kernel_decide
theorem rows2458 : actualRows2458=WordField.canonicalRows actualModulus 2458 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2458 : actualRows2458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2458=2892 := by core033_kernel_decide
theorem rows2459 : actualRows2459=WordField.canonicalRows actualModulus 2459 (.bxor 0 2458) := by core033_kernel_decide
theorem stats2459 : actualRows2459.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2459=7428 := by core033_kernel_decide
theorem rows2460 : actualRows2460=WordField.canonicalRows actualModulus 2460 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2460 : actualRows2460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2460=2820 := by core033_kernel_decide
theorem rows2461 : actualRows2461=WordField.canonicalRows actualModulus 2461 (.bnot 2460) := by core033_kernel_decide
theorem stats2461 : actualRows2461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2461=6276 := by core033_kernel_decide
theorem rows2462 : actualRows2462=WordField.canonicalRows actualModulus 2462 (.badd 2459 2461) := by core033_kernel_decide
theorem stats2462 : actualRows2462.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2462=5388 := by core033_kernel_decide
theorem rows2463 : actualRows2463=WordField.canonicalRows actualModulus 2463 (.bnot 2462) := by core033_kernel_decide
theorem stats2463 : actualRows2463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2463=6276 := by core033_kernel_decide
theorem rows2464 : actualRows2464=WordField.canonicalRows actualModulus 2464 (.band 2457 2463) := by core033_kernel_decide
theorem stats2464 : actualRows2464.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2464=5124 := by core033_kernel_decide
theorem rows2465 : actualRows2465=WordField.canonicalRows actualModulus 2465 (.bxor 2452 2464) := by core033_kernel_decide
theorem stats2465 : actualRows2465.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2465=7428 := by core033_kernel_decide
theorem rows2466 : actualRows2466=WordField.canonicalRows actualModulus 2466 (.shr 2465 31) := by core033_kernel_decide
theorem stats2466 : actualRows2466.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2466=2892 := by core033_kernel_decide
theorem rows2467 : actualRows2467=WordField.canonicalRows actualModulus 2467 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2467 : actualRows2467.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2467=2892 := by core033_kernel_decide
theorem rows2468 : actualRows2468=WordField.canonicalRows actualModulus 2468 (.bxor 2466 2467) := by core033_kernel_decide
theorem stats2468 : actualRows2468.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2468=7428 := by core033_kernel_decide
theorem rows2469 : actualRows2469=WordField.canonicalRows actualModulus 2469 (.bnot 2468) := by core033_kernel_decide
theorem stats2469 : actualRows2469.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2469=6276 := by core033_kernel_decide
theorem rows2470 : actualRows2470=WordField.canonicalRows actualModulus 2470 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2470 : actualRows2470.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2470=2892 := by core033_kernel_decide
theorem rows2471 : actualRows2471=WordField.canonicalRows actualModulus 2471 (.badd 2469 2470) := by core033_kernel_decide
theorem stats2471 : actualRows2471.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2471=5388 := by core033_kernel_decide
theorem rows2472 : actualRows2472=WordField.canonicalRows actualModulus 2472 (.band 2471 1013) := by core033_kernel_decide
theorem stats2472 : actualRows2472.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2472=5124 := by core033_kernel_decide
theorem rows2473 : actualRows2473=WordField.canonicalRows actualModulus 2473 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2473 : actualRows2473.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2473=2892 := by core033_kernel_decide
theorem rows2474 : actualRows2474=WordField.canonicalRows actualModulus 2474 (.bxor 0 2473) := by core033_kernel_decide
theorem stats2474 : actualRows2474.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2474=7428 := by core033_kernel_decide
def partRows37 : List R1CS.Row := actualRows2411++actualRows2412++actualRows2413++actualRows2414++actualRows2415++actualRows2416++actualRows2417++actualRows2418++actualRows2419++actualRows2420++actualRows2421++actualRows2422++actualRows2423++actualRows2424++actualRows2425++actualRows2426++actualRows2427++actualRows2428++actualRows2429++actualRows2430++actualRows2431++actualRows2432++actualRows2433++actualRows2434++actualRows2435++actualRows2436++actualRows2437++actualRows2438++actualRows2439++actualRows2440++actualRows2441++actualRows2442++actualRows2443++actualRows2444++actualRows2445++actualRows2446++actualRows2447++actualRows2448++actualRows2449++actualRows2450++actualRows2451++actualRows2452++actualRows2453++actualRows2454++actualRows2455++actualRows2456++actualRows2457++actualRows2458++actualRows2459++actualRows2460++actualRows2461++actualRows2462++actualRows2463++actualRows2464++actualRows2465++actualRows2466++actualRows2467++actualRows2468++actualRows2469++actualRows2470++actualRows2471++actualRows2472++actualRows2473++actualRows2474
def partOps37 : List WordIR.Op := [.bnot 2410,.band 2405 2411,.bxor 2400 2412,.shr 2413 31,.literal (BitVec.ofNat 32 1),.bxor 2414 2415,.bnot 2416,.literal (BitVec.ofNat 32 1),.badd 2417 2418,.band 2419 1010,.literal (BitVec.ofNat 32 2),.bxor 0 2421,.literal (BitVec.ofNat 32 0),.bnot 2423,.band 2422 2424,.literal (BitVec.ofNat 32 2),.bxor 0 2426,.literal (BitVec.ofNat 32 0),.bnot 2428,.bxor 2427 2429,.literal (BitVec.ofNat 32 2),.bxor 0 2431,.literal (BitVec.ofNat 32 0),.bnot 2433,.badd 2432 2434,.bnot 2435,.band 2430 2436,.bxor 2425 2437,.shr 2438 31,.literal (BitVec.ofNat 32 1),.bxor 2439 2440,.bnot 2441,.literal (BitVec.ofNat 32 1),.badd 2442 2443,.bnot 2444,.band 2445 838,.bxor 2420 2446,.literal (BitVec.ofNat 32 2),.bxor 0 2448,.literal (BitVec.ofNat 32 0),.bnot 2450,.band 2449 2451,.literal (BitVec.ofNat 32 2),.bxor 0 2453,.literal (BitVec.ofNat 32 0),.bnot 2455,.bxor 2454 2456,.literal (BitVec.ofNat 32 2),.bxor 0 2458,.literal (BitVec.ofNat 32 0),.bnot 2460,.badd 2459 2461,.bnot 2462,.band 2457 2463,.bxor 2452 2464,.shr 2465 31,.literal (BitVec.ofNat 32 1),.bxor 2466 2467,.bnot 2468,.literal (BitVec.ofNat 32 1),.badd 2469 2470,.band 2471 1013,.literal (BitVec.ofNat 32 2),.bxor 0 2473]
theorem partExact37 : partRows37=WordField.rows actualModulus 2411 partOps37 := by
  simp only [partRows37,partOps37,WordField.rows,rows2411,rows2412,rows2413,rows2414,rows2415,rows2416,rows2417,rows2418,rows2419,rows2420,rows2421,rows2422,rows2423,rows2424,rows2425,rows2426,rows2427,rows2428,rows2429,rows2430,rows2431,rows2432,rows2433,rows2434,rows2435,rows2436,rows2437,rows2438,rows2439,rows2440,rows2441,rows2442,rows2443,rows2444,rows2445,rows2446,rows2447,rows2448,rows2449,rows2450,rows2451,rows2452,rows2453,rows2454,rows2455,rows2456,rows2457,rows2458,rows2459,rows2460,rows2461,rows2462,rows2463,rows2464,rows2465,rows2466,rows2467,rows2468,rows2469,rows2470,rows2471,rows2472,rows2473,rows2474,List.append_assoc,List.append_nil]
theorem partLength37 : partOps37.length=64 := by decide
theorem partStats37 : partRows37.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows37=331560 := by
  simp only [partRows37,List.length_append,MatrixRowBlocks.rows_weight_append,stats2411.1,stats2411.2,stats2412.1,stats2412.2,stats2413.1,stats2413.2,stats2414.1,stats2414.2,stats2415.1,stats2415.2,stats2416.1,stats2416.2,stats2417.1,stats2417.2,stats2418.1,stats2418.2,stats2419.1,stats2419.2,stats2420.1,stats2420.2,stats2421.1,stats2421.2,stats2422.1,stats2422.2,stats2423.1,stats2423.2,stats2424.1,stats2424.2,stats2425.1,stats2425.2,stats2426.1,stats2426.2,stats2427.1,stats2427.2,stats2428.1,stats2428.2,stats2429.1,stats2429.2,stats2430.1,stats2430.2,stats2431.1,stats2431.2,stats2432.1,stats2432.2,stats2433.1,stats2433.2,stats2434.1,stats2434.2,stats2435.1,stats2435.2,stats2436.1,stats2436.2,stats2437.1,stats2437.2,stats2438.1,stats2438.2,stats2439.1,stats2439.2,stats2440.1,stats2440.2,stats2441.1,stats2441.2,stats2442.1,stats2442.2,stats2443.1,stats2443.2,stats2444.1,stats2444.2,stats2445.1,stats2445.2,stats2446.1,stats2446.2,stats2447.1,stats2447.2,stats2448.1,stats2448.2,stats2449.1,stats2449.2,stats2450.1,stats2450.2,stats2451.1,stats2451.2,stats2452.1,stats2452.2,stats2453.1,stats2453.2,stats2454.1,stats2454.2,stats2455.1,stats2455.2,stats2456.1,stats2456.2,stats2457.1,stats2457.2,stats2458.1,stats2458.2,stats2459.1,stats2459.2,stats2460.1,stats2460.2,stats2461.1,stats2461.2,stats2462.1,stats2462.2,stats2463.1,stats2463.2,stats2464.1,stats2464.2,stats2465.1,stats2465.2,stats2466.1,stats2466.2,stats2467.1,stats2467.2,stats2468.1,stats2468.2,stats2469.1,stats2469.2,stats2470.1,stats2470.2,stats2471.1,stats2471.2,stats2472.1,stats2472.2,stats2473.1,stats2473.2,stats2474.1,stats2474.2]
  decide
end FrameHashControllerCheckedRows
