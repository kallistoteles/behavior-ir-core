import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup38
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2432 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2432 : Bytes := ("    let r000009ab: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2432 : bytes2432=statementBytes 2475 (op2432.map lower) ∧ bytes2432.length=41 := by core033_kernel_decide
def op2433 : List WordIR.Op := [.bnot 2475]
def bytes2433 : Bytes := ("    let r000009ac: u32 = !r000009ab;\n" : String).toByteArray.data.toList
theorem checked2433 : bytes2433=statementBytes 2476 (op2433.map lower) ∧ bytes2433.length=37 := by core033_kernel_decide
def op2434 : List WordIR.Op := [.band 2474 2476]
def bytes2434 : Bytes := ("    let r000009ad: u32 = r000009aa & r000009ac;\n" : String).toByteArray.data.toList
theorem checked2434 : bytes2434=statementBytes 2477 (op2434.map lower) ∧ bytes2434.length=48 := by core033_kernel_decide
def op2435 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2435 : Bytes := ("    let r000009ae: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2435 : bytes2435=statementBytes 2478 (op2435.map lower) ∧ bytes2435.length=41 := by core033_kernel_decide
def op2436 : List WordIR.Op := [.bxor 0 2478]
def bytes2436 : Bytes := ("    let r000009af: u32 = r00000000 ^ r000009ae;\n" : String).toByteArray.data.toList
theorem checked2436 : bytes2436=statementBytes 2479 (op2436.map lower) ∧ bytes2436.length=48 := by core033_kernel_decide
def op2437 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2437 : Bytes := ("    let r000009b0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2437 : bytes2437=statementBytes 2480 (op2437.map lower) ∧ bytes2437.length=41 := by core033_kernel_decide
def op2438 : List WordIR.Op := [.bnot 2480]
def bytes2438 : Bytes := ("    let r000009b1: u32 = !r000009b0;\n" : String).toByteArray.data.toList
theorem checked2438 : bytes2438=statementBytes 2481 (op2438.map lower) ∧ bytes2438.length=37 := by core033_kernel_decide
def op2439 : List WordIR.Op := [.bxor 2479 2481]
def bytes2439 : Bytes := ("    let r000009b2: u32 = r000009af ^ r000009b1;\n" : String).toByteArray.data.toList
theorem checked2439 : bytes2439=statementBytes 2482 (op2439.map lower) ∧ bytes2439.length=48 := by core033_kernel_decide
def op2440 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2440 : Bytes := ("    let r000009b3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2440 : bytes2440=statementBytes 2483 (op2440.map lower) ∧ bytes2440.length=41 := by core033_kernel_decide
def op2441 : List WordIR.Op := [.bxor 0 2483]
def bytes2441 : Bytes := ("    let r000009b4: u32 = r00000000 ^ r000009b3;\n" : String).toByteArray.data.toList
theorem checked2441 : bytes2441=statementBytes 2484 (op2441.map lower) ∧ bytes2441.length=48 := by core033_kernel_decide
def op2442 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2442 : Bytes := ("    let r000009b5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2442 : bytes2442=statementBytes 2485 (op2442.map lower) ∧ bytes2442.length=41 := by core033_kernel_decide
def op2443 : List WordIR.Op := [.bnot 2485]
def bytes2443 : Bytes := ("    let r000009b6: u32 = !r000009b5;\n" : String).toByteArray.data.toList
theorem checked2443 : bytes2443=statementBytes 2486 (op2443.map lower) ∧ bytes2443.length=37 := by core033_kernel_decide
def op2444 : List WordIR.Op := [.badd 2484 2486]
def bytes2444 : Bytes := ("    let r000009b7: u32 = r000009b4.wrapping_add(r000009b6);\n" : String).toByteArray.data.toList
theorem checked2444 : bytes2444=statementBytes 2487 (op2444.map lower) ∧ bytes2444.length=60 := by core033_kernel_decide
def op2445 : List WordIR.Op := [.bnot 2487]
def bytes2445 : Bytes := ("    let r000009b8: u32 = !r000009b7;\n" : String).toByteArray.data.toList
theorem checked2445 : bytes2445=statementBytes 2488 (op2445.map lower) ∧ bytes2445.length=37 := by core033_kernel_decide
def op2446 : List WordIR.Op := [.band 2482 2488]
def bytes2446 : Bytes := ("    let r000009b9: u32 = r000009b2 & r000009b8;\n" : String).toByteArray.data.toList
theorem checked2446 : bytes2446=statementBytes 2489 (op2446.map lower) ∧ bytes2446.length=48 := by core033_kernel_decide
def op2447 : List WordIR.Op := [.bxor 2477 2489]
def bytes2447 : Bytes := ("    let r000009ba: u32 = r000009ad ^ r000009b9;\n" : String).toByteArray.data.toList
theorem checked2447 : bytes2447=statementBytes 2490 (op2447.map lower) ∧ bytes2447.length=48 := by core033_kernel_decide
def op2448 : List WordIR.Op := [.shr 2490 31]
def bytes2448 : Bytes := ("    let r000009bb: u32 = r000009ba >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2448 : bytes2448=statementBytes 2491 (op2448.map lower) ∧ bytes2448.length=54 := by core033_kernel_decide
def op2449 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2449 : Bytes := ("    let r000009bc: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2449 : bytes2449=statementBytes 2492 (op2449.map lower) ∧ bytes2449.length=41 := by core033_kernel_decide
def op2450 : List WordIR.Op := [.bxor 2491 2492]
def bytes2450 : Bytes := ("    let r000009bd: u32 = r000009bb ^ r000009bc;\n" : String).toByteArray.data.toList
theorem checked2450 : bytes2450=statementBytes 2493 (op2450.map lower) ∧ bytes2450.length=48 := by core033_kernel_decide
def op2451 : List WordIR.Op := [.bnot 2493]
def bytes2451 : Bytes := ("    let r000009be: u32 = !r000009bd;\n" : String).toByteArray.data.toList
theorem checked2451 : bytes2451=statementBytes 2494 (op2451.map lower) ∧ bytes2451.length=37 := by core033_kernel_decide
def op2452 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2452 : Bytes := ("    let r000009bf: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2452 : bytes2452=statementBytes 2495 (op2452.map lower) ∧ bytes2452.length=41 := by core033_kernel_decide
def op2453 : List WordIR.Op := [.badd 2494 2495]
def bytes2453 : Bytes := ("    let r000009c0: u32 = r000009be.wrapping_add(r000009bf);\n" : String).toByteArray.data.toList
theorem checked2453 : bytes2453=statementBytes 2496 (op2453.map lower) ∧ bytes2453.length=60 := by core033_kernel_decide
def op2454 : List WordIR.Op := [.bnot 2496]
def bytes2454 : Bytes := ("    let r000009c1: u32 = !r000009c0;\n" : String).toByteArray.data.toList
theorem checked2454 : bytes2454=statementBytes 2497 (op2454.map lower) ∧ bytes2454.length=37 := by core033_kernel_decide
def op2455 : List WordIR.Op := [.band 2497 839]
def bytes2455 : Bytes := ("    let r000009c2: u32 = r000009c1 & r00000347;\n" : String).toByteArray.data.toList
theorem checked2455 : bytes2455=statementBytes 2498 (op2455.map lower) ∧ bytes2455.length=48 := by core033_kernel_decide
def op2456 : List WordIR.Op := [.bxor 2472 2498]
def bytes2456 : Bytes := ("    let r000009c3: u32 = r000009a8 ^ r000009c2;\n" : String).toByteArray.data.toList
theorem checked2456 : bytes2456=statementBytes 2499 (op2456.map lower) ∧ bytes2456.length=48 := by core033_kernel_decide
def op2457 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2457 : Bytes := ("    let r000009c4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2457 : bytes2457=statementBytes 2500 (op2457.map lower) ∧ bytes2457.length=41 := by core033_kernel_decide
def op2458 : List WordIR.Op := [.bxor 0 2500]
def bytes2458 : Bytes := ("    let r000009c5: u32 = r00000000 ^ r000009c4;\n" : String).toByteArray.data.toList
theorem checked2458 : bytes2458=statementBytes 2501 (op2458.map lower) ∧ bytes2458.length=48 := by core033_kernel_decide
def op2459 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2459 : Bytes := ("    let r000009c6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2459 : bytes2459=statementBytes 2502 (op2459.map lower) ∧ bytes2459.length=41 := by core033_kernel_decide
def op2460 : List WordIR.Op := [.bnot 2502]
def bytes2460 : Bytes := ("    let r000009c7: u32 = !r000009c6;\n" : String).toByteArray.data.toList
theorem checked2460 : bytes2460=statementBytes 2503 (op2460.map lower) ∧ bytes2460.length=37 := by core033_kernel_decide
def op2461 : List WordIR.Op := [.band 2501 2503]
def bytes2461 : Bytes := ("    let r000009c8: u32 = r000009c5 & r000009c7;\n" : String).toByteArray.data.toList
theorem checked2461 : bytes2461=statementBytes 2504 (op2461.map lower) ∧ bytes2461.length=48 := by core033_kernel_decide
def op2462 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2462 : Bytes := ("    let r000009c9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2462 : bytes2462=statementBytes 2505 (op2462.map lower) ∧ bytes2462.length=41 := by core033_kernel_decide
def op2463 : List WordIR.Op := [.bxor 0 2505]
def bytes2463 : Bytes := ("    let r000009ca: u32 = r00000000 ^ r000009c9;\n" : String).toByteArray.data.toList
theorem checked2463 : bytes2463=statementBytes 2506 (op2463.map lower) ∧ bytes2463.length=48 := by core033_kernel_decide
def op2464 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2464 : Bytes := ("    let r000009cb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2464 : bytes2464=statementBytes 2507 (op2464.map lower) ∧ bytes2464.length=41 := by core033_kernel_decide
def op2465 : List WordIR.Op := [.bnot 2507]
def bytes2465 : Bytes := ("    let r000009cc: u32 = !r000009cb;\n" : String).toByteArray.data.toList
theorem checked2465 : bytes2465=statementBytes 2508 (op2465.map lower) ∧ bytes2465.length=37 := by core033_kernel_decide
def op2466 : List WordIR.Op := [.bxor 2506 2508]
def bytes2466 : Bytes := ("    let r000009cd: u32 = r000009ca ^ r000009cc;\n" : String).toByteArray.data.toList
theorem checked2466 : bytes2466=statementBytes 2509 (op2466.map lower) ∧ bytes2466.length=48 := by core033_kernel_decide
def op2467 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2467 : Bytes := ("    let r000009ce: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2467 : bytes2467=statementBytes 2510 (op2467.map lower) ∧ bytes2467.length=41 := by core033_kernel_decide
def op2468 : List WordIR.Op := [.bxor 0 2510]
def bytes2468 : Bytes := ("    let r000009cf: u32 = r00000000 ^ r000009ce;\n" : String).toByteArray.data.toList
theorem checked2468 : bytes2468=statementBytes 2511 (op2468.map lower) ∧ bytes2468.length=48 := by core033_kernel_decide
def op2469 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2469 : Bytes := ("    let r000009d0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2469 : bytes2469=statementBytes 2512 (op2469.map lower) ∧ bytes2469.length=41 := by core033_kernel_decide
def op2470 : List WordIR.Op := [.bnot 2512]
def bytes2470 : Bytes := ("    let r000009d1: u32 = !r000009d0;\n" : String).toByteArray.data.toList
theorem checked2470 : bytes2470=statementBytes 2513 (op2470.map lower) ∧ bytes2470.length=37 := by core033_kernel_decide
def op2471 : List WordIR.Op := [.badd 2511 2513]
def bytes2471 : Bytes := ("    let r000009d2: u32 = r000009cf.wrapping_add(r000009d1);\n" : String).toByteArray.data.toList
theorem checked2471 : bytes2471=statementBytes 2514 (op2471.map lower) ∧ bytes2471.length=60 := by core033_kernel_decide
def op2472 : List WordIR.Op := [.bnot 2514]
def bytes2472 : Bytes := ("    let r000009d3: u32 = !r000009d2;\n" : String).toByteArray.data.toList
theorem checked2472 : bytes2472=statementBytes 2515 (op2472.map lower) ∧ bytes2472.length=37 := by core033_kernel_decide
def op2473 : List WordIR.Op := [.band 2509 2515]
def bytes2473 : Bytes := ("    let r000009d4: u32 = r000009cd & r000009d3;\n" : String).toByteArray.data.toList
theorem checked2473 : bytes2473=statementBytes 2516 (op2473.map lower) ∧ bytes2473.length=48 := by core033_kernel_decide
def op2474 : List WordIR.Op := [.bxor 2504 2516]
def bytes2474 : Bytes := ("    let r000009d5: u32 = r000009c8 ^ r000009d4;\n" : String).toByteArray.data.toList
theorem checked2474 : bytes2474=statementBytes 2517 (op2474.map lower) ∧ bytes2474.length=48 := by core033_kernel_decide
def op2475 : List WordIR.Op := [.shr 2517 31]
def bytes2475 : Bytes := ("    let r000009d6: u32 = r000009d5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked2475 : bytes2475=statementBytes 2518 (op2475.map lower) ∧ bytes2475.length=54 := by core033_kernel_decide
def op2476 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2476 : Bytes := ("    let r000009d7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2476 : bytes2476=statementBytes 2519 (op2476.map lower) ∧ bytes2476.length=41 := by core033_kernel_decide
def op2477 : List WordIR.Op := [.bxor 2518 2519]
def bytes2477 : Bytes := ("    let r000009d8: u32 = r000009d6 ^ r000009d7;\n" : String).toByteArray.data.toList
theorem checked2477 : bytes2477=statementBytes 2520 (op2477.map lower) ∧ bytes2477.length=48 := by core033_kernel_decide
def op2478 : List WordIR.Op := [.bnot 2520]
def bytes2478 : Bytes := ("    let r000009d9: u32 = !r000009d8;\n" : String).toByteArray.data.toList
theorem checked2478 : bytes2478=statementBytes 2521 (op2478.map lower) ∧ bytes2478.length=37 := by core033_kernel_decide
def op2479 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes2479 : Bytes := ("    let r000009da: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked2479 : bytes2479=statementBytes 2522 (op2479.map lower) ∧ bytes2479.length=41 := by core033_kernel_decide
def op2480 : List WordIR.Op := [.badd 2521 2522]
def bytes2480 : Bytes := ("    let r000009db: u32 = r000009d9.wrapping_add(r000009da);\n" : String).toByteArray.data.toList
theorem checked2480 : bytes2480=statementBytes 2523 (op2480.map lower) ∧ bytes2480.length=60 := by core033_kernel_decide
def op2481 : List WordIR.Op := [.band 2523 1016]
def bytes2481 : Bytes := ("    let r000009dc: u32 = r000009db & r000003f8;\n" : String).toByteArray.data.toList
theorem checked2481 : bytes2481=statementBytes 2524 (op2481.map lower) ∧ bytes2481.length=48 := by core033_kernel_decide
def op2482 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2482 : Bytes := ("    let r000009dd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2482 : bytes2482=statementBytes 2525 (op2482.map lower) ∧ bytes2482.length=41 := by core033_kernel_decide
def op2483 : List WordIR.Op := [.bxor 0 2525]
def bytes2483 : Bytes := ("    let r000009de: u32 = r00000000 ^ r000009dd;\n" : String).toByteArray.data.toList
theorem checked2483 : bytes2483=statementBytes 2526 (op2483.map lower) ∧ bytes2483.length=48 := by core033_kernel_decide
def op2484 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2484 : Bytes := ("    let r000009df: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2484 : bytes2484=statementBytes 2527 (op2484.map lower) ∧ bytes2484.length=41 := by core033_kernel_decide
def op2485 : List WordIR.Op := [.bnot 2527]
def bytes2485 : Bytes := ("    let r000009e0: u32 = !r000009df;\n" : String).toByteArray.data.toList
theorem checked2485 : bytes2485=statementBytes 2528 (op2485.map lower) ∧ bytes2485.length=37 := by core033_kernel_decide
def op2486 : List WordIR.Op := [.band 2526 2528]
def bytes2486 : Bytes := ("    let r000009e1: u32 = r000009de & r000009e0;\n" : String).toByteArray.data.toList
theorem checked2486 : bytes2486=statementBytes 2529 (op2486.map lower) ∧ bytes2486.length=48 := by core033_kernel_decide
def op2487 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2487 : Bytes := ("    let r000009e2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2487 : bytes2487=statementBytes 2530 (op2487.map lower) ∧ bytes2487.length=41 := by core033_kernel_decide
def op2488 : List WordIR.Op := [.bxor 0 2530]
def bytes2488 : Bytes := ("    let r000009e3: u32 = r00000000 ^ r000009e2;\n" : String).toByteArray.data.toList
theorem checked2488 : bytes2488=statementBytes 2531 (op2488.map lower) ∧ bytes2488.length=48 := by core033_kernel_decide
def op2489 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2489 : Bytes := ("    let r000009e4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2489 : bytes2489=statementBytes 2532 (op2489.map lower) ∧ bytes2489.length=41 := by core033_kernel_decide
def op2490 : List WordIR.Op := [.bnot 2532]
def bytes2490 : Bytes := ("    let r000009e5: u32 = !r000009e4;\n" : String).toByteArray.data.toList
theorem checked2490 : bytes2490=statementBytes 2533 (op2490.map lower) ∧ bytes2490.length=37 := by core033_kernel_decide
def op2491 : List WordIR.Op := [.bxor 2531 2533]
def bytes2491 : Bytes := ("    let r000009e6: u32 = r000009e3 ^ r000009e5;\n" : String).toByteArray.data.toList
theorem checked2491 : bytes2491=statementBytes 2534 (op2491.map lower) ∧ bytes2491.length=48 := by core033_kernel_decide
def op2492 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes2492 : Bytes := ("    let r000009e7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked2492 : bytes2492=statementBytes 2535 (op2492.map lower) ∧ bytes2492.length=41 := by core033_kernel_decide
def op2493 : List WordIR.Op := [.bxor 0 2535]
def bytes2493 : Bytes := ("    let r000009e8: u32 = r00000000 ^ r000009e7;\n" : String).toByteArray.data.toList
theorem checked2493 : bytes2493=statementBytes 2536 (op2493.map lower) ∧ bytes2493.length=48 := by core033_kernel_decide
def op2494 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes2494 : Bytes := ("    let r000009e9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked2494 : bytes2494=statementBytes 2537 (op2494.map lower) ∧ bytes2494.length=41 := by core033_kernel_decide
def op2495 : List WordIR.Op := [.bnot 2537]
def bytes2495 : Bytes := ("    let r000009ea: u32 = !r000009e9;\n" : String).toByteArray.data.toList
theorem checked2495 : bytes2495=statementBytes 2538 (op2495.map lower) ∧ bytes2495.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2432,op2433,op2434,op2435,op2436,op2437,op2438,op2439,op2440,op2441,op2442,op2443,op2444,op2445,op2446,op2447,op2448,op2449,op2450,op2451,op2452,op2453,op2454,op2455,op2456,op2457,op2458,op2459,op2460,op2461,op2462,op2463,op2464,op2465,op2466,op2467,op2468,op2469,op2470,op2471,op2472,op2473,op2474,op2475,op2476,op2477,op2478,op2479,op2480,op2481,op2482,op2483,op2484,op2485,op2486,op2487,op2488,op2489,op2490,op2491,op2492,op2493,op2494,op2495]
def chunks : List Bytes := [bytes2432,bytes2433,bytes2434,bytes2435,bytes2436,bytes2437,bytes2438,bytes2439,bytes2440,bytes2441,bytes2442,bytes2443,bytes2444,bytes2445,bytes2446,bytes2447,bytes2448,bytes2449,bytes2450,bytes2451,bytes2452,bytes2453,bytes2454,bytes2455,bytes2456,bytes2457,bytes2458,bytes2459,bytes2460,bytes2461,bytes2462,bytes2463,bytes2464,bytes2465,bytes2466,bytes2467,bytes2468,bytes2469,bytes2470,bytes2471,bytes2472,bytes2473,bytes2474,bytes2475,bytes2476,bytes2477,bytes2478,bytes2479,bytes2480,bytes2481,bytes2482,bytes2483,bytes2484,bytes2485,bytes2486,bytes2487,bytes2488,bytes2489,bytes2490,bytes2491,bytes2492,bytes2493,bytes2494,bytes2495]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2475 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2432.1 (.cons _ _ _ _ _ checked2433.1 (.cons _ _ _ _ _ checked2434.1 (.cons _ _ _ _ _ checked2435.1 (.cons _ _ _ _ _ checked2436.1 (.cons _ _ _ _ _ checked2437.1 (.cons _ _ _ _ _ checked2438.1 (.cons _ _ _ _ _ checked2439.1 (.cons _ _ _ _ _ checked2440.1 (.cons _ _ _ _ _ checked2441.1 (.cons _ _ _ _ _ checked2442.1 (.cons _ _ _ _ _ checked2443.1 (.cons _ _ _ _ _ checked2444.1 (.cons _ _ _ _ _ checked2445.1 (.cons _ _ _ _ _ checked2446.1 (.cons _ _ _ _ _ checked2447.1 (.cons _ _ _ _ _ checked2448.1 (.cons _ _ _ _ _ checked2449.1 (.cons _ _ _ _ _ checked2450.1 (.cons _ _ _ _ _ checked2451.1 (.cons _ _ _ _ _ checked2452.1 (.cons _ _ _ _ _ checked2453.1 (.cons _ _ _ _ _ checked2454.1 (.cons _ _ _ _ _ checked2455.1 (.cons _ _ _ _ _ checked2456.1 (.cons _ _ _ _ _ checked2457.1 (.cons _ _ _ _ _ checked2458.1 (.cons _ _ _ _ _ checked2459.1 (.cons _ _ _ _ _ checked2460.1 (.cons _ _ _ _ _ checked2461.1 (.cons _ _ _ _ _ checked2462.1 (.cons _ _ _ _ _ checked2463.1 (.cons _ _ _ _ _ checked2464.1 (.cons _ _ _ _ _ checked2465.1 (.cons _ _ _ _ _ checked2466.1 (.cons _ _ _ _ _ checked2467.1 (.cons _ _ _ _ _ checked2468.1 (.cons _ _ _ _ _ checked2469.1 (.cons _ _ _ _ _ checked2470.1 (.cons _ _ _ _ _ checked2471.1 (.cons _ _ _ _ _ checked2472.1 (.cons _ _ _ _ _ checked2473.1 (.cons _ _ _ _ _ checked2474.1 (.cons _ _ _ _ _ checked2475.1 (.cons _ _ _ _ _ checked2476.1 (.cons _ _ _ _ _ checked2477.1 (.cons _ _ _ _ _ checked2478.1 (.cons _ _ _ _ _ checked2479.1 (.cons _ _ _ _ _ checked2480.1 (.cons _ _ _ _ _ checked2481.1 (.cons _ _ _ _ _ checked2482.1 (.cons _ _ _ _ _ checked2483.1 (.cons _ _ _ _ _ checked2484.1 (.cons _ _ _ _ _ checked2485.1 (.cons _ _ _ _ _ checked2486.1 (.cons _ _ _ _ _ checked2487.1 (.cons _ _ _ _ _ checked2488.1 (.cons _ _ _ _ _ checked2489.1 (.cons _ _ _ _ _ checked2490.1 (.cons _ _ _ _ _ checked2491.1 (.cons _ _ _ _ _ checked2492.1 (.cons _ _ _ _ _ checked2493.1 (.cons _ _ _ _ _ checked2494.1 (.cons _ _ _ _ _ checked2495.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2475 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2831 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2432.2,checked2433.2,checked2434.2,checked2435.2,checked2436.2,checked2437.2,checked2438.2,checked2439.2,checked2440.2,checked2441.2,checked2442.2,checked2443.2,checked2444.2,checked2445.2,checked2446.2,checked2447.2,checked2448.2,checked2449.2,checked2450.2,checked2451.2,checked2452.2,checked2453.2,checked2454.2,checked2455.2,checked2456.2,checked2457.2,checked2458.2,checked2459.2,checked2460.2,checked2461.2,checked2462.2,checked2463.2,checked2464.2,checked2465.2,checked2466.2,checked2467.2,checked2468.2,checked2469.2,checked2470.2,checked2471.2,checked2472.2,checked2473.2,checked2474.2,checked2475.2,checked2476.2,checked2477.2,checked2478.2,checked2479.2,checked2480.2,checked2481.2,checked2482.2,checked2483.2,checked2484.2,checked2485.2,checked2486.2,checked2487.2,checked2488.2,checked2489.2,checked2490.2,checked2491.2,checked2492.2,checked2493.2,checked2494.2,checked2495.2]
  decide
end ArtifactFrameHashControllerGroup38
