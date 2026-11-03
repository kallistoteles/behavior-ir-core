import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData37
import PairedPathRoundInstructionMatrixData38
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2400 : actualRows2400=WordField.canonicalRows actualModulus 2400 (.bxor 1485 1605) := by core033_kernel_decide
theorem stats2400 : actualRows2400.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2400=7428 := by core033_kernel_decide
theorem rows2401 : actualRows2401=WordField.canonicalRows actualModulus 2401 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2401 : actualRows2401.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2401=5388 := by core033_kernel_decide
theorem rows2402 : actualRows2402=WordField.canonicalRows actualModulus 2402 (.bnot 2401) := by core033_kernel_decide
theorem stats2402 : actualRows2402.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2402=6276 := by core033_kernel_decide
theorem rows2403 : actualRows2403=WordField.canonicalRows actualModulus 2403 (.band 2400 2402) := by core033_kernel_decide
theorem stats2403 : actualRows2403.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2403=5124 := by core033_kernel_decide
theorem rows2404 : actualRows2404=WordField.canonicalRows actualModulus 2404 (.bxor 2399 2403) := by core033_kernel_decide
theorem stats2404 : actualRows2404.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2404=7428 := by core033_kernel_decide
theorem rows2405 : actualRows2405=WordField.canonicalRows actualModulus 2405 (.shr 2404 31) := by core033_kernel_decide
theorem stats2405 : actualRows2405.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2405=2892 := by core033_kernel_decide
theorem rows2406 : actualRows2406=WordField.canonicalRows actualModulus 2406 (.badd 2398 2405) := by core033_kernel_decide
theorem stats2406 : actualRows2406.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2406=5388 := by core033_kernel_decide
theorem rows2407 : actualRows2407=WordField.canonicalRows actualModulus 2407 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2407 : actualRows2407.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2407=2820 := by core033_kernel_decide
theorem rows2408 : actualRows2408=WordField.canonicalRows actualModulus 2408 (.bnot 2407) := by core033_kernel_decide
theorem stats2408 : actualRows2408.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2408=6276 := by core033_kernel_decide
theorem rows2409 : actualRows2409=WordField.canonicalRows actualModulus 2409 (.badd 2406 2408) := by core033_kernel_decide
theorem stats2409 : actualRows2409.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2409=5388 := by core033_kernel_decide
theorem rows2410 : actualRows2410=WordField.canonicalRows actualModulus 2410 (.bnot 2409) := by core033_kernel_decide
theorem stats2410 : actualRows2410.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2410=6276 := by core033_kernel_decide
theorem rows2411 : actualRows2411=WordField.canonicalRows actualModulus 2411 (.band 2397 2410) := by core033_kernel_decide
theorem stats2411 : actualRows2411.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2411=5124 := by core033_kernel_decide
theorem rows2412 : actualRows2412=WordField.canonicalRows actualModulus 2412 (.bxor 2385 2411) := by core033_kernel_decide
theorem stats2412 : actualRows2412.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2412=7428 := by core033_kernel_decide
theorem rows2413 : actualRows2413=WordField.canonicalRows actualModulus 2413 (.shr 2412 31) := by core033_kernel_decide
theorem stats2413 : actualRows2413.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2413=2892 := by core033_kernel_decide
theorem rows2414 : actualRows2414=WordField.canonicalRows actualModulus 2414 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2414 : actualRows2414.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2414=2892 := by core033_kernel_decide
theorem rows2415 : actualRows2415=WordField.canonicalRows actualModulus 2415 (.bxor 2413 2414) := by core033_kernel_decide
theorem stats2415 : actualRows2415.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2415=7428 := by core033_kernel_decide
theorem rows2416 : actualRows2416=WordField.canonicalRows actualModulus 2416 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2416 : actualRows2416.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2416=5388 := by core033_kernel_decide
theorem rows2417 : actualRows2417=WordField.canonicalRows actualModulus 2417 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2417 : actualRows2417.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2417=2892 := by core033_kernel_decide
theorem rows2418 : actualRows2418=WordField.canonicalRows actualModulus 2418 (.bnot 2417) := by core033_kernel_decide
theorem stats2418 : actualRows2418.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2418=6276 := by core033_kernel_decide
theorem rows2419 : actualRows2419=WordField.canonicalRows actualModulus 2419 (.band 2416 2418) := by core033_kernel_decide
theorem stats2419 : actualRows2419.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2419=5124 := by core033_kernel_decide
theorem rows2420 : actualRows2420=WordField.canonicalRows actualModulus 2420 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2420 : actualRows2420.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2420=5388 := by core033_kernel_decide
theorem rows2421 : actualRows2421=WordField.canonicalRows actualModulus 2421 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2421 : actualRows2421.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2421=2892 := by core033_kernel_decide
theorem rows2422 : actualRows2422=WordField.canonicalRows actualModulus 2422 (.bnot 2421) := by core033_kernel_decide
theorem stats2422 : actualRows2422.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2422=6276 := by core033_kernel_decide
theorem rows2423 : actualRows2423=WordField.canonicalRows actualModulus 2423 (.bxor 2420 2422) := by core033_kernel_decide
theorem stats2423 : actualRows2423.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2423=7428 := by core033_kernel_decide
theorem rows2424 : actualRows2424=WordField.canonicalRows actualModulus 2424 (.badd 1485 1605) := by core033_kernel_decide
theorem stats2424 : actualRows2424.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2424=5388 := by core033_kernel_decide
theorem rows2425 : actualRows2425=WordField.canonicalRows actualModulus 2425 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats2425 : actualRows2425.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2425=2892 := by core033_kernel_decide
theorem rows2426 : actualRows2426=WordField.canonicalRows actualModulus 2426 (.bnot 2425) := by core033_kernel_decide
theorem stats2426 : actualRows2426.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2426=6276 := by core033_kernel_decide
theorem rows2427 : actualRows2427=WordField.canonicalRows actualModulus 2427 (.badd 2424 2426) := by core033_kernel_decide
theorem stats2427 : actualRows2427.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2427=5388 := by core033_kernel_decide
theorem rows2428 : actualRows2428=WordField.canonicalRows actualModulus 2428 (.bnot 2427) := by core033_kernel_decide
theorem stats2428 : actualRows2428.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2428=6276 := by core033_kernel_decide
theorem rows2429 : actualRows2429=WordField.canonicalRows actualModulus 2429 (.band 2423 2428) := by core033_kernel_decide
theorem stats2429 : actualRows2429.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2429=5124 := by core033_kernel_decide
theorem rows2430 : actualRows2430=WordField.canonicalRows actualModulus 2430 (.bxor 2419 2429) := by core033_kernel_decide
theorem stats2430 : actualRows2430.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2430=7428 := by core033_kernel_decide
theorem rows2431 : actualRows2431=WordField.canonicalRows actualModulus 2431 (.shr 2430 31) := by core033_kernel_decide
theorem stats2431 : actualRows2431.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2431=2892 := by core033_kernel_decide
theorem rows2432 : actualRows2432=WordField.canonicalRows actualModulus 2432 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2432 : actualRows2432.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2432=2892 := by core033_kernel_decide
theorem rows2433 : actualRows2433=WordField.canonicalRows actualModulus 2433 (.bxor 2431 2432) := by core033_kernel_decide
theorem stats2433 : actualRows2433.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2433=7428 := by core033_kernel_decide
theorem rows2434 : actualRows2434=WordField.canonicalRows actualModulus 2434 (.band 2415 2433) := by core033_kernel_decide
theorem stats2434 : actualRows2434.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2434=5124 := by core033_kernel_decide
theorem rows2435 : actualRows2435=WordField.canonicalRows actualModulus 2435 (.band 2373 2434) := by core033_kernel_decide
theorem stats2435 : actualRows2435.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2435=5124 := by core033_kernel_decide
theorem rows2436 : actualRows2436=WordField.canonicalRows actualModulus 2436 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2436 : actualRows2436.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2436=2892 := by core033_kernel_decide
theorem rows2437 : actualRows2437=WordField.canonicalRows actualModulus 2437 (.bxor 616 2436) := by core033_kernel_decide
theorem stats2437 : actualRows2437.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2437=7428 := by core033_kernel_decide
theorem rows2438 : actualRows2438=WordField.canonicalRows actualModulus 2438 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2438 : actualRows2438.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2438=2820 := by core033_kernel_decide
theorem rows2439 : actualRows2439=WordField.canonicalRows actualModulus 2439 (.bnot 2438) := by core033_kernel_decide
theorem stats2439 : actualRows2439.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2439=6276 := by core033_kernel_decide
theorem rows2440 : actualRows2440=WordField.canonicalRows actualModulus 2440 (.band 2437 2439) := by core033_kernel_decide
theorem stats2440 : actualRows2440.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2440=5124 := by core033_kernel_decide
theorem rows2441 : actualRows2441=WordField.canonicalRows actualModulus 2441 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2441 : actualRows2441.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2441=2892 := by core033_kernel_decide
theorem rows2442 : actualRows2442=WordField.canonicalRows actualModulus 2442 (.bxor 616 2441) := by core033_kernel_decide
theorem stats2442 : actualRows2442.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2442=7428 := by core033_kernel_decide
theorem rows2443 : actualRows2443=WordField.canonicalRows actualModulus 2443 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2443 : actualRows2443.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2443=2820 := by core033_kernel_decide
theorem rows2444 : actualRows2444=WordField.canonicalRows actualModulus 2444 (.bnot 2443) := by core033_kernel_decide
theorem stats2444 : actualRows2444.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2444=6276 := by core033_kernel_decide
theorem rows2445 : actualRows2445=WordField.canonicalRows actualModulus 2445 (.bxor 2442 2444) := by core033_kernel_decide
theorem stats2445 : actualRows2445.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2445=7428 := by core033_kernel_decide
theorem rows2446 : actualRows2446=WordField.canonicalRows actualModulus 2446 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2446 : actualRows2446.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2446=2892 := by core033_kernel_decide
theorem rows2447 : actualRows2447=WordField.canonicalRows actualModulus 2447 (.bxor 616 2446) := by core033_kernel_decide
theorem stats2447 : actualRows2447.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2447=7428 := by core033_kernel_decide
theorem rows2448 : actualRows2448=WordField.canonicalRows actualModulus 2448 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2448 : actualRows2448.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2448=2820 := by core033_kernel_decide
theorem rows2449 : actualRows2449=WordField.canonicalRows actualModulus 2449 (.bnot 2448) := by core033_kernel_decide
theorem stats2449 : actualRows2449.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2449=6276 := by core033_kernel_decide
theorem rows2450 : actualRows2450=WordField.canonicalRows actualModulus 2450 (.badd 2447 2449) := by core033_kernel_decide
theorem stats2450 : actualRows2450.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2450=5388 := by core033_kernel_decide
theorem rows2451 : actualRows2451=WordField.canonicalRows actualModulus 2451 (.bnot 2450) := by core033_kernel_decide
theorem stats2451 : actualRows2451.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2451=6276 := by core033_kernel_decide
theorem rows2452 : actualRows2452=WordField.canonicalRows actualModulus 2452 (.band 2445 2451) := by core033_kernel_decide
theorem stats2452 : actualRows2452.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2452=5124 := by core033_kernel_decide
theorem rows2453 : actualRows2453=WordField.canonicalRows actualModulus 2453 (.bxor 2440 2452) := by core033_kernel_decide
theorem stats2453 : actualRows2453.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2453=7428 := by core033_kernel_decide
theorem rows2454 : actualRows2454=WordField.canonicalRows actualModulus 2454 (.shr 2453 31) := by core033_kernel_decide
theorem stats2454 : actualRows2454.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2454=2892 := by core033_kernel_decide
theorem rows2455 : actualRows2455=WordField.canonicalRows actualModulus 2455 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2455 : actualRows2455.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2455=2892 := by core033_kernel_decide
theorem rows2456 : actualRows2456=WordField.canonicalRows actualModulus 2456 (.bxor 2454 2455) := by core033_kernel_decide
theorem stats2456 : actualRows2456.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2456=7428 := by core033_kernel_decide
theorem rows2457 : actualRows2457=WordField.canonicalRows actualModulus 2457 (.bnot 2456) := by core033_kernel_decide
theorem stats2457 : actualRows2457.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2457=6276 := by core033_kernel_decide
theorem rows2458 : actualRows2458=WordField.canonicalRows actualModulus 2458 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2458 : actualRows2458.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2458=2892 := by core033_kernel_decide
theorem rows2459 : actualRows2459=WordField.canonicalRows actualModulus 2459 (.badd 2457 2458) := by core033_kernel_decide
theorem stats2459 : actualRows2459.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2459=5388 := by core033_kernel_decide
theorem rows2460 : actualRows2460=WordField.canonicalRows actualModulus 2460 (.band 2459 1001) := by core033_kernel_decide
theorem stats2460 : actualRows2460.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2460=5124 := by core033_kernel_decide
theorem rows2461 : actualRows2461=WordField.canonicalRows actualModulus 2461 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2461 : actualRows2461.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2461=2892 := by core033_kernel_decide
theorem rows2462 : actualRows2462=WordField.canonicalRows actualModulus 2462 (.bxor 616 2461) := by core033_kernel_decide
theorem stats2462 : actualRows2462.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2462=7428 := by core033_kernel_decide
theorem rows2463 : actualRows2463=WordField.canonicalRows actualModulus 2463 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2463 : actualRows2463.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2463=2820 := by core033_kernel_decide
def partRows36 : List R1CS.Row := actualRows2400++actualRows2401++actualRows2402++actualRows2403++actualRows2404++actualRows2405++actualRows2406++actualRows2407++actualRows2408++actualRows2409++actualRows2410++actualRows2411++actualRows2412++actualRows2413++actualRows2414++actualRows2415++actualRows2416++actualRows2417++actualRows2418++actualRows2419++actualRows2420++actualRows2421++actualRows2422++actualRows2423++actualRows2424++actualRows2425++actualRows2426++actualRows2427++actualRows2428++actualRows2429++actualRows2430++actualRows2431++actualRows2432++actualRows2433++actualRows2434++actualRows2435++actualRows2436++actualRows2437++actualRows2438++actualRows2439++actualRows2440++actualRows2441++actualRows2442++actualRows2443++actualRows2444++actualRows2445++actualRows2446++actualRows2447++actualRows2448++actualRows2449++actualRows2450++actualRows2451++actualRows2452++actualRows2453++actualRows2454++actualRows2455++actualRows2456++actualRows2457++actualRows2458++actualRows2459++actualRows2460++actualRows2461++actualRows2462++actualRows2463
def partOps36 : List WordIR.Op := [.bxor 1485 1605,.badd 1485 1605,.bnot 2401,.band 2400 2402,.bxor 2399 2403,.shr 2404 31,.badd 2398 2405,.literal (BitVec.ofNat 32 0),.bnot 2407,.badd 2406 2408,.bnot 2409,.band 2397 2410,.bxor 2385 2411,.shr 2412 31,.literal (BitVec.ofNat 32 1),.bxor 2413 2414,.badd 1485 1605,.literal (BitVec.ofNat 32 1048576),.bnot 2417,.band 2416 2418,.badd 1485 1605,.literal (BitVec.ofNat 32 1048576),.bnot 2421,.bxor 2420 2422,.badd 1485 1605,.literal (BitVec.ofNat 32 1048576),.bnot 2425,.badd 2424 2426,.bnot 2427,.band 2423 2428,.bxor 2419 2429,.shr 2430 31,.literal (BitVec.ofNat 32 1),.bxor 2431 2432,.band 2415 2433,.band 2373 2434,.literal (BitVec.ofNat 32 2),.bxor 616 2436,.literal (BitVec.ofNat 32 0),.bnot 2438,.band 2437 2439,.literal (BitVec.ofNat 32 2),.bxor 616 2441,.literal (BitVec.ofNat 32 0),.bnot 2443,.bxor 2442 2444,.literal (BitVec.ofNat 32 2),.bxor 616 2446,.literal (BitVec.ofNat 32 0),.bnot 2448,.badd 2447 2449,.bnot 2450,.band 2445 2451,.bxor 2440 2452,.shr 2453 31,.literal (BitVec.ofNat 32 1),.bxor 2454 2455,.bnot 2456,.literal (BitVec.ofNat 32 1),.badd 2457 2458,.band 2459 1001,.literal (BitVec.ofNat 32 2),.bxor 616 2461,.literal (BitVec.ofNat 32 0)]
theorem partExact36 : partRows36=WordField.rows actualModulus 2400 partOps36 := by
  simp only [partRows36,partOps36,WordField.rows,rows2400,rows2401,rows2402,rows2403,rows2404,rows2405,rows2406,rows2407,rows2408,rows2409,rows2410,rows2411,rows2412,rows2413,rows2414,rows2415,rows2416,rows2417,rows2418,rows2419,rows2420,rows2421,rows2422,rows2423,rows2424,rows2425,rows2426,rows2427,rows2428,rows2429,rows2430,rows2431,rows2432,rows2433,rows2434,rows2435,rows2436,rows2437,rows2438,rows2439,rows2440,rows2441,rows2442,rows2443,rows2444,rows2445,rows2446,rows2447,rows2448,rows2449,rows2450,rows2451,rows2452,rows2453,rows2454,rows2455,rows2456,rows2457,rows2458,rows2459,rows2460,rows2461,rows2462,rows2463,List.append_assoc,List.append_nil]
theorem partLength36 : partOps36.length=64 := by decide
theorem partStats36 : partRows36.length=2185 ∧ MatrixRowBlocks.rowsWeight partRows36=331392 := by
  simp only [partRows36,List.length_append,MatrixRowBlocks.rows_weight_append,stats2400.1,stats2400.2,stats2401.1,stats2401.2,stats2402.1,stats2402.2,stats2403.1,stats2403.2,stats2404.1,stats2404.2,stats2405.1,stats2405.2,stats2406.1,stats2406.2,stats2407.1,stats2407.2,stats2408.1,stats2408.2,stats2409.1,stats2409.2,stats2410.1,stats2410.2,stats2411.1,stats2411.2,stats2412.1,stats2412.2,stats2413.1,stats2413.2,stats2414.1,stats2414.2,stats2415.1,stats2415.2,stats2416.1,stats2416.2,stats2417.1,stats2417.2,stats2418.1,stats2418.2,stats2419.1,stats2419.2,stats2420.1,stats2420.2,stats2421.1,stats2421.2,stats2422.1,stats2422.2,stats2423.1,stats2423.2,stats2424.1,stats2424.2,stats2425.1,stats2425.2,stats2426.1,stats2426.2,stats2427.1,stats2427.2,stats2428.1,stats2428.2,stats2429.1,stats2429.2,stats2430.1,stats2430.2,stats2431.1,stats2431.2,stats2432.1,stats2432.2,stats2433.1,stats2433.2,stats2434.1,stats2434.2,stats2435.1,stats2435.2,stats2436.1,stats2436.2,stats2437.1,stats2437.2,stats2438.1,stats2438.2,stats2439.1,stats2439.2,stats2440.1,stats2440.2,stats2441.1,stats2441.2,stats2442.1,stats2442.2,stats2443.1,stats2443.2,stats2444.1,stats2444.2,stats2445.1,stats2445.2,stats2446.1,stats2446.2,stats2447.1,stats2447.2,stats2448.1,stats2448.2,stats2449.1,stats2449.2,stats2450.1,stats2450.2,stats2451.1,stats2451.2,stats2452.1,stats2452.2,stats2453.1,stats2453.2,stats2454.1,stats2454.2,stats2455.1,stats2455.2,stats2456.1,stats2456.2,stats2457.1,stats2457.2,stats2458.1,stats2458.2,stats2459.1,stats2459.2,stats2460.1,stats2460.2,stats2461.1,stats2461.2,stats2462.1,stats2462.2,stats2463.1,stats2463.2]
  decide
end PairedPathRoundCheckedRows
