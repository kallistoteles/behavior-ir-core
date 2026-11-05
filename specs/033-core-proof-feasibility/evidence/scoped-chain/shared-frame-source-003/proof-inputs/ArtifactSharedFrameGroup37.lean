import Core033.SourceLiteralBytes
import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup37
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op2368 : List WordIR.Op := [.badd 2406 2410]
def bytes2368 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000096b: u32 = r00000966.wrapping_add(r0000096a);\n" : String)
theorem checked2368 : bytes2368=statementBytes 2411 (op2368.map lower) ∧ bytes2368.length=60 := by core033_kernel_decide
def op2369 : List WordIR.Op := [.badd 2401 2411]
def bytes2369 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000096c: u32 = r00000961.wrapping_add(r0000096b);\n" : String)
theorem checked2369 : bytes2369=statementBytes 2412 (op2369.map lower) ∧ bytes2369.length=60 := by core033_kernel_decide
def op2370 : List WordIR.Op := [.badd 2308 2401]
def bytes2370 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000096d: u32 = r00000904.wrapping_add(r00000961);\n" : String)
theorem checked2370 : bytes2370=statementBytes 2413 (op2370.map lower) ∧ bytes2370.length=60 := by core033_kernel_decide
def op2371 : List WordIR.Op := [.rotr 2413 6]
def bytes2371 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000096e: u32 = r0000096d.rotate_right(0x00000006_u32);\n" : String)
theorem checked2371 : bytes2371=statementBytes 2414 (op2371.map lower) ∧ bytes2371.length=65 := by core033_kernel_decide
def op2372 : List WordIR.Op := [.rotr 2413 11]
def bytes2372 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000096f: u32 = r0000096d.rotate_right(0x0000000b_u32);\n" : String)
theorem checked2372 : bytes2372=statementBytes 2415 (op2372.map lower) ∧ bytes2372.length=65 := by core033_kernel_decide
def op2373 : List WordIR.Op := [.bxor 2414 2415]
def bytes2373 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000970: u32 = r0000096e ^ r0000096f;\n" : String)
theorem checked2373 : bytes2373=statementBytes 2416 (op2373.map lower) ∧ bytes2373.length=48 := by core033_kernel_decide
def op2374 : List WordIR.Op := [.rotr 2413 25]
def bytes2374 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000971: u32 = r0000096d.rotate_right(0x00000019_u32);\n" : String)
theorem checked2374 : bytes2374=statementBytes 2417 (op2374.map lower) ∧ bytes2374.length=65 := by core033_kernel_decide
def op2375 : List WordIR.Op := [.bxor 2416 2417]
def bytes2375 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000972: u32 = r00000970 ^ r00000971;\n" : String)
theorem checked2375 : bytes2375=statementBytes 2418 (op2375.map lower) ∧ bytes2375.length=48 := by core033_kernel_decide
def op2376 : List WordIR.Op := [.badd 2335 2418]
def bytes2376 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000973: u32 = r0000091f.wrapping_add(r00000972);\n" : String)
theorem checked2376 : bytes2376=statementBytes 2419 (op2376.map lower) ∧ bytes2376.length=60 := by core033_kernel_decide
def op2377 : List WordIR.Op := [.band 2413 2387]
def bytes2377 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000974: u32 = r0000096d & r00000953;\n" : String)
theorem checked2377 : bytes2377=statementBytes 2420 (op2377.map lower) ∧ bytes2377.length=48 := by core033_kernel_decide
def op2378 : List WordIR.Op := [.bnot 2413]
def bytes2378 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000975: u32 = !r0000096d;\n" : String)
theorem checked2378 : bytes2378=statementBytes 2421 (op2378.map lower) ∧ bytes2378.length=37 := by core033_kernel_decide
def op2379 : List WordIR.Op := [.band 2421 2361]
def bytes2379 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000976: u32 = r00000975 & r00000939;\n" : String)
theorem checked2379 : bytes2379=statementBytes 2422 (op2379.map lower) ∧ bytes2379.length=48 := by core033_kernel_decide
def op2380 : List WordIR.Op := [.bxor 2420 2422]
def bytes2380 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000977: u32 = r00000974 ^ r00000976;\n" : String)
theorem checked2380 : bytes2380=statementBytes 2423 (op2380.map lower) ∧ bytes2380.length=48 := by core033_kernel_decide
def op2381 : List WordIR.Op := [.badd 2419 2423]
def bytes2381 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000978: u32 = r00000973.wrapping_add(r00000977);\n" : String)
theorem checked2381 : bytes2381=statementBytes 2424 (op2381.map lower) ∧ bytes2381.length=60 := by core033_kernel_decide
def op2382 : List WordIR.Op := [.literal (BitVec.ofNat 32 607225278)]
def bytes2382 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000979: u32 = 0x243185be_u32;\n" : String)
theorem checked2382 : bytes2382=statementBytes 2425 (op2382.map lower) ∧ bytes2382.length=41 := by core033_kernel_decide
def op2383 : List WordIR.Op := [.badd 2424 2425]
def bytes2383 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000097a: u32 = r00000978.wrapping_add(r00000979);\n" : String)
theorem checked2383 : bytes2383=statementBytes 2426 (op2383.map lower) ∧ bytes2383.length=60 := by core033_kernel_decide
def op2384 : List WordIR.Op := [.badd 2426 922]
def bytes2384 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000097b: u32 = r0000097a.wrapping_add(r0000039a);\n" : String)
theorem checked2384 : bytes2384=statementBytes 2427 (op2384.map lower) ∧ bytes2384.length=60 := by core033_kernel_decide
def op2385 : List WordIR.Op := [.rotr 2412 2]
def bytes2385 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000097c: u32 = r0000096c.rotate_right(0x00000002_u32);\n" : String)
theorem checked2385 : bytes2385=statementBytes 2428 (op2385.map lower) ∧ bytes2385.length=65 := by core033_kernel_decide
def op2386 : List WordIR.Op := [.rotr 2412 13]
def bytes2386 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000097d: u32 = r0000096c.rotate_right(0x0000000d_u32);\n" : String)
theorem checked2386 : bytes2386=statementBytes 2429 (op2386.map lower) ∧ bytes2386.length=65 := by core033_kernel_decide
def op2387 : List WordIR.Op := [.bxor 2428 2429]
def bytes2387 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000097e: u32 = r0000097c ^ r0000097d;\n" : String)
theorem checked2387 : bytes2387=statementBytes 2430 (op2387.map lower) ∧ bytes2387.length=48 := by core033_kernel_decide
def op2388 : List WordIR.Op := [.rotr 2412 22]
def bytes2388 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000097f: u32 = r0000096c.rotate_right(0x00000016_u32);\n" : String)
theorem checked2388 : bytes2388=statementBytes 2431 (op2388.map lower) ∧ bytes2388.length=65 := by core033_kernel_decide
def op2389 : List WordIR.Op := [.bxor 2430 2431]
def bytes2389 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000980: u32 = r0000097e ^ r0000097f;\n" : String)
theorem checked2389 : bytes2389=statementBytes 2432 (op2389.map lower) ∧ bytes2389.length=48 := by core033_kernel_decide
def op2390 : List WordIR.Op := [.band 2412 2386]
def bytes2390 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000981: u32 = r0000096c & r00000952;\n" : String)
theorem checked2390 : bytes2390=statementBytes 2433 (op2390.map lower) ∧ bytes2390.length=48 := by core033_kernel_decide
def op2391 : List WordIR.Op := [.band 2412 2360]
def bytes2391 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000982: u32 = r0000096c & r00000938;\n" : String)
theorem checked2391 : bytes2391=statementBytes 2434 (op2391.map lower) ∧ bytes2391.length=48 := by core033_kernel_decide
def op2392 : List WordIR.Op := [.bxor 2433 2434]
def bytes2392 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000983: u32 = r00000981 ^ r00000982;\n" : String)
theorem checked2392 : bytes2392=statementBytes 2435 (op2392.map lower) ∧ bytes2392.length=48 := by core033_kernel_decide
def op2393 : List WordIR.Op := [.bxor 2435 2407]
def bytes2393 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000984: u32 = r00000983 ^ r00000967;\n" : String)
theorem checked2393 : bytes2393=statementBytes 2436 (op2393.map lower) ∧ bytes2393.length=48 := by core033_kernel_decide
def op2394 : List WordIR.Op := [.badd 2432 2436]
def bytes2394 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000985: u32 = r00000980.wrapping_add(r00000984);\n" : String)
theorem checked2394 : bytes2394=statementBytes 2437 (op2394.map lower) ∧ bytes2394.length=60 := by core033_kernel_decide
def op2395 : List WordIR.Op := [.badd 2427 2437]
def bytes2395 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000986: u32 = r0000097b.wrapping_add(r00000985);\n" : String)
theorem checked2395 : bytes2395=statementBytes 2438 (op2395.map lower) ∧ bytes2395.length=60 := by core033_kernel_decide
def op2396 : List WordIR.Op := [.badd 2334 2427]
def bytes2396 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000987: u32 = r0000091e.wrapping_add(r0000097b);\n" : String)
theorem checked2396 : bytes2396=statementBytes 2439 (op2396.map lower) ∧ bytes2396.length=60 := by core033_kernel_decide
def op2397 : List WordIR.Op := [.rotr 2439 6]
def bytes2397 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000988: u32 = r00000987.rotate_right(0x00000006_u32);\n" : String)
theorem checked2397 : bytes2397=statementBytes 2440 (op2397.map lower) ∧ bytes2397.length=65 := by core033_kernel_decide
def op2398 : List WordIR.Op := [.rotr 2439 11]
def bytes2398 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000989: u32 = r00000987.rotate_right(0x0000000b_u32);\n" : String)
theorem checked2398 : bytes2398=statementBytes 2441 (op2398.map lower) ∧ bytes2398.length=65 := by core033_kernel_decide
def op2399 : List WordIR.Op := [.bxor 2440 2441]
def bytes2399 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000098a: u32 = r00000988 ^ r00000989;\n" : String)
theorem checked2399 : bytes2399=statementBytes 2442 (op2399.map lower) ∧ bytes2399.length=48 := by core033_kernel_decide
def op2400 : List WordIR.Op := [.rotr 2439 25]
def bytes2400 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000098b: u32 = r00000987.rotate_right(0x00000019_u32);\n" : String)
theorem checked2400 : bytes2400=statementBytes 2443 (op2400.map lower) ∧ bytes2400.length=65 := by core033_kernel_decide
def op2401 : List WordIR.Op := [.bxor 2442 2443]
def bytes2401 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000098c: u32 = r0000098a ^ r0000098b;\n" : String)
theorem checked2401 : bytes2401=statementBytes 2444 (op2401.map lower) ∧ bytes2401.length=48 := by core033_kernel_decide
def op2402 : List WordIR.Op := [.badd 2361 2444]
def bytes2402 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000098d: u32 = r00000939.wrapping_add(r0000098c);\n" : String)
theorem checked2402 : bytes2402=statementBytes 2445 (op2402.map lower) ∧ bytes2402.length=60 := by core033_kernel_decide
def op2403 : List WordIR.Op := [.band 2439 2413]
def bytes2403 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000098e: u32 = r00000987 & r0000096d;\n" : String)
theorem checked2403 : bytes2403=statementBytes 2446 (op2403.map lower) ∧ bytes2403.length=48 := by core033_kernel_decide
def op2404 : List WordIR.Op := [.bnot 2439]
def bytes2404 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000098f: u32 = !r00000987;\n" : String)
theorem checked2404 : bytes2404=statementBytes 2447 (op2404.map lower) ∧ bytes2404.length=37 := by core033_kernel_decide
def op2405 : List WordIR.Op := [.band 2447 2387]
def bytes2405 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000990: u32 = r0000098f & r00000953;\n" : String)
theorem checked2405 : bytes2405=statementBytes 2448 (op2405.map lower) ∧ bytes2405.length=48 := by core033_kernel_decide
def op2406 : List WordIR.Op := [.bxor 2446 2448]
def bytes2406 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000991: u32 = r0000098e ^ r00000990;\n" : String)
theorem checked2406 : bytes2406=statementBytes 2449 (op2406.map lower) ∧ bytes2406.length=48 := by core033_kernel_decide
def op2407 : List WordIR.Op := [.badd 2445 2449]
def bytes2407 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000992: u32 = r0000098d.wrapping_add(r00000991);\n" : String)
theorem checked2407 : bytes2407=statementBytes 2450 (op2407.map lower) ∧ bytes2407.length=60 := by core033_kernel_decide
def op2408 : List WordIR.Op := [.literal (BitVec.ofNat 32 1426881987)]
def bytes2408 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000993: u32 = 0x550c7dc3_u32;\n" : String)
theorem checked2408 : bytes2408=statementBytes 2451 (op2408.map lower) ∧ bytes2408.length=41 := by core033_kernel_decide
def op2409 : List WordIR.Op := [.badd 2450 2451]
def bytes2409 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000994: u32 = r00000992.wrapping_add(r00000993);\n" : String)
theorem checked2409 : bytes2409=statementBytes 2452 (op2409.map lower) ∧ bytes2409.length=60 := by core033_kernel_decide
def op2410 : List WordIR.Op := [.badd 2452 928]
def bytes2410 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000995: u32 = r00000994.wrapping_add(r000003a0);\n" : String)
theorem checked2410 : bytes2410=statementBytes 2453 (op2410.map lower) ∧ bytes2410.length=60 := by core033_kernel_decide
def op2411 : List WordIR.Op := [.rotr 2438 2]
def bytes2411 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000996: u32 = r00000986.rotate_right(0x00000002_u32);\n" : String)
theorem checked2411 : bytes2411=statementBytes 2454 (op2411.map lower) ∧ bytes2411.length=65 := by core033_kernel_decide
def op2412 : List WordIR.Op := [.rotr 2438 13]
def bytes2412 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000997: u32 = r00000986.rotate_right(0x0000000d_u32);\n" : String)
theorem checked2412 : bytes2412=statementBytes 2455 (op2412.map lower) ∧ bytes2412.length=65 := by core033_kernel_decide
def op2413 : List WordIR.Op := [.bxor 2454 2455]
def bytes2413 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000998: u32 = r00000996 ^ r00000997;\n" : String)
theorem checked2413 : bytes2413=statementBytes 2456 (op2413.map lower) ∧ bytes2413.length=48 := by core033_kernel_decide
def op2414 : List WordIR.Op := [.rotr 2438 22]
def bytes2414 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000999: u32 = r00000986.rotate_right(0x00000016_u32);\n" : String)
theorem checked2414 : bytes2414=statementBytes 2457 (op2414.map lower) ∧ bytes2414.length=65 := by core033_kernel_decide
def op2415 : List WordIR.Op := [.bxor 2456 2457]
def bytes2415 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000099a: u32 = r00000998 ^ r00000999;\n" : String)
theorem checked2415 : bytes2415=statementBytes 2458 (op2415.map lower) ∧ bytes2415.length=48 := by core033_kernel_decide
def op2416 : List WordIR.Op := [.band 2438 2412]
def bytes2416 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000099b: u32 = r00000986 & r0000096c;\n" : String)
theorem checked2416 : bytes2416=statementBytes 2459 (op2416.map lower) ∧ bytes2416.length=48 := by core033_kernel_decide
def op2417 : List WordIR.Op := [.band 2438 2386]
def bytes2417 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000099c: u32 = r00000986 & r00000952;\n" : String)
theorem checked2417 : bytes2417=statementBytes 2460 (op2417.map lower) ∧ bytes2417.length=48 := by core033_kernel_decide
def op2418 : List WordIR.Op := [.bxor 2459 2460]
def bytes2418 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000099d: u32 = r0000099b ^ r0000099c;\n" : String)
theorem checked2418 : bytes2418=statementBytes 2461 (op2418.map lower) ∧ bytes2418.length=48 := by core033_kernel_decide
def op2419 : List WordIR.Op := [.bxor 2461 2433]
def bytes2419 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000099e: u32 = r0000099d ^ r00000981;\n" : String)
theorem checked2419 : bytes2419=statementBytes 2462 (op2419.map lower) ∧ bytes2419.length=48 := by core033_kernel_decide
def op2420 : List WordIR.Op := [.badd 2458 2462]
def bytes2420 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000099f: u32 = r0000099a.wrapping_add(r0000099e);\n" : String)
theorem checked2420 : bytes2420=statementBytes 2463 (op2420.map lower) ∧ bytes2420.length=60 := by core033_kernel_decide
def op2421 : List WordIR.Op := [.badd 2453 2463]
def bytes2421 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009a0: u32 = r00000995.wrapping_add(r0000099f);\n" : String)
theorem checked2421 : bytes2421=statementBytes 2464 (op2421.map lower) ∧ bytes2421.length=60 := by core033_kernel_decide
def op2422 : List WordIR.Op := [.badd 2360 2453]
def bytes2422 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009a1: u32 = r00000938.wrapping_add(r00000995);\n" : String)
theorem checked2422 : bytes2422=statementBytes 2465 (op2422.map lower) ∧ bytes2422.length=60 := by core033_kernel_decide
def op2423 : List WordIR.Op := [.rotr 2465 6]
def bytes2423 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009a2: u32 = r000009a1.rotate_right(0x00000006_u32);\n" : String)
theorem checked2423 : bytes2423=statementBytes 2466 (op2423.map lower) ∧ bytes2423.length=65 := by core033_kernel_decide
def op2424 : List WordIR.Op := [.rotr 2465 11]
def bytes2424 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009a3: u32 = r000009a1.rotate_right(0x0000000b_u32);\n" : String)
theorem checked2424 : bytes2424=statementBytes 2467 (op2424.map lower) ∧ bytes2424.length=65 := by core033_kernel_decide
def op2425 : List WordIR.Op := [.bxor 2466 2467]
def bytes2425 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009a4: u32 = r000009a2 ^ r000009a3;\n" : String)
theorem checked2425 : bytes2425=statementBytes 2468 (op2425.map lower) ∧ bytes2425.length=48 := by core033_kernel_decide
def op2426 : List WordIR.Op := [.rotr 2465 25]
def bytes2426 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009a5: u32 = r000009a1.rotate_right(0x00000019_u32);\n" : String)
theorem checked2426 : bytes2426=statementBytes 2469 (op2426.map lower) ∧ bytes2426.length=65 := by core033_kernel_decide
def op2427 : List WordIR.Op := [.bxor 2468 2469]
def bytes2427 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009a6: u32 = r000009a4 ^ r000009a5;\n" : String)
theorem checked2427 : bytes2427=statementBytes 2470 (op2427.map lower) ∧ bytes2427.length=48 := by core033_kernel_decide
def op2428 : List WordIR.Op := [.badd 2387 2470]
def bytes2428 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009a7: u32 = r00000953.wrapping_add(r000009a6);\n" : String)
theorem checked2428 : bytes2428=statementBytes 2471 (op2428.map lower) ∧ bytes2428.length=60 := by core033_kernel_decide
def op2429 : List WordIR.Op := [.band 2465 2439]
def bytes2429 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009a8: u32 = r000009a1 & r00000987;\n" : String)
theorem checked2429 : bytes2429=statementBytes 2472 (op2429.map lower) ∧ bytes2429.length=48 := by core033_kernel_decide
def op2430 : List WordIR.Op := [.bnot 2465]
def bytes2430 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009a9: u32 = !r000009a1;\n" : String)
theorem checked2430 : bytes2430=statementBytes 2473 (op2430.map lower) ∧ bytes2430.length=37 := by core033_kernel_decide
def op2431 : List WordIR.Op := [.band 2473 2413]
def bytes2431 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000009aa: u32 = r000009a9 & r0000096d;\n" : String)
theorem checked2431 : bytes2431=statementBytes 2474 (op2431.map lower) ∧ bytes2431.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op2368,op2369,op2370,op2371,op2372,op2373,op2374,op2375,op2376,op2377,op2378,op2379,op2380,op2381,op2382,op2383,op2384,op2385,op2386,op2387,op2388,op2389,op2390,op2391,op2392,op2393,op2394,op2395,op2396,op2397,op2398,op2399,op2400,op2401,op2402,op2403,op2404,op2405,op2406,op2407,op2408,op2409,op2410,op2411,op2412,op2413,op2414,op2415,op2416,op2417,op2418,op2419,op2420,op2421,op2422,op2423,op2424,op2425,op2426,op2427,op2428,op2429,op2430,op2431]
def chunks : List Bytes := [bytes2368,bytes2369,bytes2370,bytes2371,bytes2372,bytes2373,bytes2374,bytes2375,bytes2376,bytes2377,bytes2378,bytes2379,bytes2380,bytes2381,bytes2382,bytes2383,bytes2384,bytes2385,bytes2386,bytes2387,bytes2388,bytes2389,bytes2390,bytes2391,bytes2392,bytes2393,bytes2394,bytes2395,bytes2396,bytes2397,bytes2398,bytes2399,bytes2400,bytes2401,bytes2402,bytes2403,bytes2404,bytes2405,bytes2406,bytes2407,bytes2408,bytes2409,bytes2410,bytes2411,bytes2412,bytes2413,bytes2414,bytes2415,bytes2416,bytes2417,bytes2418,bytes2419,bytes2420,bytes2421,bytes2422,bytes2423,bytes2424,bytes2425,bytes2426,bytes2427,bytes2428,bytes2429,bytes2430,bytes2431]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 2411 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked2368.1 (.cons _ _ _ _ _ checked2369.1 (.cons _ _ _ _ _ checked2370.1 (.cons _ _ _ _ _ checked2371.1 (.cons _ _ _ _ _ checked2372.1 (.cons _ _ _ _ _ checked2373.1 (.cons _ _ _ _ _ checked2374.1 (.cons _ _ _ _ _ checked2375.1 (.cons _ _ _ _ _ checked2376.1 (.cons _ _ _ _ _ checked2377.1 (.cons _ _ _ _ _ checked2378.1 (.cons _ _ _ _ _ checked2379.1 (.cons _ _ _ _ _ checked2380.1 (.cons _ _ _ _ _ checked2381.1 (.cons _ _ _ _ _ checked2382.1 (.cons _ _ _ _ _ checked2383.1 (.cons _ _ _ _ _ checked2384.1 (.cons _ _ _ _ _ checked2385.1 (.cons _ _ _ _ _ checked2386.1 (.cons _ _ _ _ _ checked2387.1 (.cons _ _ _ _ _ checked2388.1 (.cons _ _ _ _ _ checked2389.1 (.cons _ _ _ _ _ checked2390.1 (.cons _ _ _ _ _ checked2391.1 (.cons _ _ _ _ _ checked2392.1 (.cons _ _ _ _ _ checked2393.1 (.cons _ _ _ _ _ checked2394.1 (.cons _ _ _ _ _ checked2395.1 (.cons _ _ _ _ _ checked2396.1 (.cons _ _ _ _ _ checked2397.1 (.cons _ _ _ _ _ checked2398.1 (.cons _ _ _ _ _ checked2399.1 (.cons _ _ _ _ _ checked2400.1 (.cons _ _ _ _ _ checked2401.1 (.cons _ _ _ _ _ checked2402.1 (.cons _ _ _ _ _ checked2403.1 (.cons _ _ _ _ _ checked2404.1 (.cons _ _ _ _ _ checked2405.1 (.cons _ _ _ _ _ checked2406.1 (.cons _ _ _ _ _ checked2407.1 (.cons _ _ _ _ _ checked2408.1 (.cons _ _ _ _ _ checked2409.1 (.cons _ _ _ _ _ checked2410.1 (.cons _ _ _ _ _ checked2411.1 (.cons _ _ _ _ _ checked2412.1 (.cons _ _ _ _ _ checked2413.1 (.cons _ _ _ _ _ checked2414.1 (.cons _ _ _ _ _ checked2415.1 (.cons _ _ _ _ _ checked2416.1 (.cons _ _ _ _ _ checked2417.1 (.cons _ _ _ _ _ checked2418.1 (.cons _ _ _ _ _ checked2419.1 (.cons _ _ _ _ _ checked2420.1 (.cons _ _ _ _ _ checked2421.1 (.cons _ _ _ _ _ checked2422.1 (.cons _ _ _ _ _ checked2423.1 (.cons _ _ _ _ _ checked2424.1 (.cons _ _ _ _ _ checked2425.1 (.cons _ _ _ _ _ checked2426.1 (.cons _ _ _ _ _ checked2427.1 (.cons _ _ _ _ _ checked2428.1 (.cons _ _ _ _ _ checked2429.1 (.cons _ _ _ _ _ checked2430.1 (.cons _ _ _ _ _ checked2431.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 2411 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3496 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked2368.2,checked2369.2,checked2370.2,checked2371.2,checked2372.2,checked2373.2,checked2374.2,checked2375.2,checked2376.2,checked2377.2,checked2378.2,checked2379.2,checked2380.2,checked2381.2,checked2382.2,checked2383.2,checked2384.2,checked2385.2,checked2386.2,checked2387.2,checked2388.2,checked2389.2,checked2390.2,checked2391.2,checked2392.2,checked2393.2,checked2394.2,checked2395.2,checked2396.2,checked2397.2,checked2398.2,checked2399.2,checked2400.2,checked2401.2,checked2402.2,checked2403.2,checked2404.2,checked2405.2,checked2406.2,checked2407.2,checked2408.2,checked2409.2,checked2410.2,checked2411.2,checked2412.2,checked2413.2,checked2414.2,checked2415.2,checked2416.2,checked2417.2,checked2418.2,checked2419.2,checked2420.2,checked2421.2,checked2422.2,checked2423.2,checked2424.2,checked2425.2,checked2426.2,checked2427.2,checked2428.2,checked2429.2,checked2430.2,checked2431.2]
  decide
end ArtifactSharedFrameGroup37
