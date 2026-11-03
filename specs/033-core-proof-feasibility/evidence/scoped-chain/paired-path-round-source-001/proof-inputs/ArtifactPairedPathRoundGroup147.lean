import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup147
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9408 : List WordIR.Op := [.rotr 9503 6]
def bytes9408 : Bytes := ("    let r00002520: u32 = r0000251f.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9408 : bytes9408=statementBytes 9504 (op9408.map lower) ∧ bytes9408.length=65 := by core033_kernel_decide
def op9409 : List WordIR.Op := [.rotr 9503 11]
def bytes9409 : Bytes := ("    let r00002521: u32 = r0000251f.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9409 : bytes9409=statementBytes 9505 (op9409.map lower) ∧ bytes9409.length=65 := by core033_kernel_decide
def op9410 : List WordIR.Op := [.bxor 9504 9505]
def bytes9410 : Bytes := ("    let r00002522: u32 = r00002520 ^ r00002521;\n" : String).toByteArray.data.toList
theorem checked9410 : bytes9410=statementBytes 9506 (op9410.map lower) ∧ bytes9410.length=48 := by core033_kernel_decide
def op9411 : List WordIR.Op := [.rotr 9503 25]
def bytes9411 : Bytes := ("    let r00002523: u32 = r0000251f.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9411 : bytes9411=statementBytes 9507 (op9411.map lower) ∧ bytes9411.length=65 := by core033_kernel_decide
def op9412 : List WordIR.Op := [.bxor 9506 9507]
def bytes9412 : Bytes := ("    let r00002524: u32 = r00002522 ^ r00002523;\n" : String).toByteArray.data.toList
theorem checked9412 : bytes9412=statementBytes 9508 (op9412.map lower) ∧ bytes9412.length=48 := by core033_kernel_decide
def op9413 : List WordIR.Op := [.badd 9422 9508]
def bytes9413 : Bytes := ("    let r00002525: u32 = r000024ce.wrapping_add(r00002524);\n" : String).toByteArray.data.toList
theorem checked9413 : bytes9413=statementBytes 9509 (op9413.map lower) ∧ bytes9413.length=60 := by core033_kernel_decide
def op9414 : List WordIR.Op := [.band 9503 9476]
def bytes9414 : Bytes := ("    let r00002526: u32 = r0000251f & r00002504;\n" : String).toByteArray.data.toList
theorem checked9414 : bytes9414=statementBytes 9510 (op9414.map lower) ∧ bytes9414.length=48 := by core033_kernel_decide
def op9415 : List WordIR.Op := [.bnot 9503]
def bytes9415 : Bytes := ("    let r00002527: u32 = !r0000251f;\n" : String).toByteArray.data.toList
theorem checked9415 : bytes9415=statementBytes 9511 (op9415.map lower) ∧ bytes9415.length=37 := by core033_kernel_decide
def op9416 : List WordIR.Op := [.band 9511 9449]
def bytes9416 : Bytes := ("    let r00002528: u32 = r00002527 & r000024e9;\n" : String).toByteArray.data.toList
theorem checked9416 : bytes9416=statementBytes 9512 (op9416.map lower) ∧ bytes9416.length=48 := by core033_kernel_decide
def op9417 : List WordIR.Op := [.bxor 9510 9512]
def bytes9417 : Bytes := ("    let r00002529: u32 = r00002526 ^ r00002528;\n" : String).toByteArray.data.toList
theorem checked9417 : bytes9417=statementBytes 9513 (op9417.map lower) ∧ bytes9417.length=48 := by core033_kernel_decide
def op9418 : List WordIR.Op := [.badd 9509 9513]
def bytes9418 : Bytes := ("    let r0000252a: u32 = r00002525.wrapping_add(r00002529);\n" : String).toByteArray.data.toList
theorem checked9418 : bytes9418=statementBytes 9514 (op9418.map lower) ∧ bytes9418.length=60 := by core033_kernel_decide
def op9419 : List WordIR.Op := [.literal (BitVec.ofNat 32 1322822218)]
def bytes9419 : Bytes := ("    let r0000252b: u32 = 0x4ed8aa4a_u32;\n" : String).toByteArray.data.toList
theorem checked9419 : bytes9419=statementBytes 9515 (op9419.map lower) ∧ bytes9419.length=41 := by core033_kernel_decide
def op9420 : List WordIR.Op := [.badd 9514 9515]
def bytes9420 : Bytes := ("    let r0000252c: u32 = r0000252a.wrapping_add(r0000252b);\n" : String).toByteArray.data.toList
theorem checked9420 : bytes9420=statementBytes 9516 (op9420.map lower) ∧ bytes9420.length=60 := by core033_kernel_decide
def op9421 : List WordIR.Op := [.badd 9516 7942]
def bytes9421 : Bytes := ("    let r0000252d: u32 = r0000252c.wrapping_add(r00001f06);\n" : String).toByteArray.data.toList
theorem checked9421 : bytes9421=statementBytes 9517 (op9421.map lower) ∧ bytes9421.length=60 := by core033_kernel_decide
def op9422 : List WordIR.Op := [.rotr 9502 2]
def bytes9422 : Bytes := ("    let r0000252e: u32 = r0000251e.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9422 : bytes9422=statementBytes 9518 (op9422.map lower) ∧ bytes9422.length=65 := by core033_kernel_decide
def op9423 : List WordIR.Op := [.rotr 9502 13]
def bytes9423 : Bytes := ("    let r0000252f: u32 = r0000251e.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9423 : bytes9423=statementBytes 9519 (op9423.map lower) ∧ bytes9423.length=65 := by core033_kernel_decide
def op9424 : List WordIR.Op := [.bxor 9518 9519]
def bytes9424 : Bytes := ("    let r00002530: u32 = r0000252e ^ r0000252f;\n" : String).toByteArray.data.toList
theorem checked9424 : bytes9424=statementBytes 9520 (op9424.map lower) ∧ bytes9424.length=48 := by core033_kernel_decide
def op9425 : List WordIR.Op := [.rotr 9502 22]
def bytes9425 : Bytes := ("    let r00002531: u32 = r0000251e.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9425 : bytes9425=statementBytes 9521 (op9425.map lower) ∧ bytes9425.length=65 := by core033_kernel_decide
def op9426 : List WordIR.Op := [.bxor 9520 9521]
def bytes9426 : Bytes := ("    let r00002532: u32 = r00002530 ^ r00002531;\n" : String).toByteArray.data.toList
theorem checked9426 : bytes9426=statementBytes 9522 (op9426.map lower) ∧ bytes9426.length=48 := by core033_kernel_decide
def op9427 : List WordIR.Op := [.band 9502 9475]
def bytes9427 : Bytes := ("    let r00002533: u32 = r0000251e & r00002503;\n" : String).toByteArray.data.toList
theorem checked9427 : bytes9427=statementBytes 9523 (op9427.map lower) ∧ bytes9427.length=48 := by core033_kernel_decide
def op9428 : List WordIR.Op := [.band 9502 9448]
def bytes9428 : Bytes := ("    let r00002534: u32 = r0000251e & r000024e8;\n" : String).toByteArray.data.toList
theorem checked9428 : bytes9428=statementBytes 9524 (op9428.map lower) ∧ bytes9428.length=48 := by core033_kernel_decide
def op9429 : List WordIR.Op := [.bxor 9523 9524]
def bytes9429 : Bytes := ("    let r00002535: u32 = r00002533 ^ r00002534;\n" : String).toByteArray.data.toList
theorem checked9429 : bytes9429=statementBytes 9525 (op9429.map lower) ∧ bytes9429.length=48 := by core033_kernel_decide
def op9430 : List WordIR.Op := [.band 9475 9448]
def bytes9430 : Bytes := ("    let r00002536: u32 = r00002503 & r000024e8;\n" : String).toByteArray.data.toList
theorem checked9430 : bytes9430=statementBytes 9526 (op9430.map lower) ∧ bytes9430.length=48 := by core033_kernel_decide
def op9431 : List WordIR.Op := [.bxor 9525 9526]
def bytes9431 : Bytes := ("    let r00002537: u32 = r00002535 ^ r00002536;\n" : String).toByteArray.data.toList
theorem checked9431 : bytes9431=statementBytes 9527 (op9431.map lower) ∧ bytes9431.length=48 := by core033_kernel_decide
def op9432 : List WordIR.Op := [.badd 9522 9527]
def bytes9432 : Bytes := ("    let r00002538: u32 = r00002532.wrapping_add(r00002537);\n" : String).toByteArray.data.toList
theorem checked9432 : bytes9432=statementBytes 9528 (op9432.map lower) ∧ bytes9432.length=60 := by core033_kernel_decide
def op9433 : List WordIR.Op := [.badd 9517 9528]
def bytes9433 : Bytes := ("    let r00002539: u32 = r0000252d.wrapping_add(r00002538);\n" : String).toByteArray.data.toList
theorem checked9433 : bytes9433=statementBytes 9529 (op9433.map lower) ∧ bytes9433.length=60 := by core033_kernel_decide
def op9434 : List WordIR.Op := [.badd 9421 9517]
def bytes9434 : Bytes := ("    let r0000253a: u32 = r000024cd.wrapping_add(r0000252d);\n" : String).toByteArray.data.toList
theorem checked9434 : bytes9434=statementBytes 9530 (op9434.map lower) ∧ bytes9434.length=60 := by core033_kernel_decide
def op9435 : List WordIR.Op := [.rotr 9530 6]
def bytes9435 : Bytes := ("    let r0000253b: u32 = r0000253a.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9435 : bytes9435=statementBytes 9531 (op9435.map lower) ∧ bytes9435.length=65 := by core033_kernel_decide
def op9436 : List WordIR.Op := [.rotr 9530 11]
def bytes9436 : Bytes := ("    let r0000253c: u32 = r0000253a.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9436 : bytes9436=statementBytes 9532 (op9436.map lower) ∧ bytes9436.length=65 := by core033_kernel_decide
def op9437 : List WordIR.Op := [.bxor 9531 9532]
def bytes9437 : Bytes := ("    let r0000253d: u32 = r0000253b ^ r0000253c;\n" : String).toByteArray.data.toList
theorem checked9437 : bytes9437=statementBytes 9533 (op9437.map lower) ∧ bytes9437.length=48 := by core033_kernel_decide
def op9438 : List WordIR.Op := [.rotr 9530 25]
def bytes9438 : Bytes := ("    let r0000253e: u32 = r0000253a.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9438 : bytes9438=statementBytes 9534 (op9438.map lower) ∧ bytes9438.length=65 := by core033_kernel_decide
def op9439 : List WordIR.Op := [.bxor 9533 9534]
def bytes9439 : Bytes := ("    let r0000253f: u32 = r0000253d ^ r0000253e;\n" : String).toByteArray.data.toList
theorem checked9439 : bytes9439=statementBytes 9535 (op9439.map lower) ∧ bytes9439.length=48 := by core033_kernel_decide
def op9440 : List WordIR.Op := [.badd 9449 9535]
def bytes9440 : Bytes := ("    let r00002540: u32 = r000024e9.wrapping_add(r0000253f);\n" : String).toByteArray.data.toList
theorem checked9440 : bytes9440=statementBytes 9536 (op9440.map lower) ∧ bytes9440.length=60 := by core033_kernel_decide
def op9441 : List WordIR.Op := [.band 9530 9503]
def bytes9441 : Bytes := ("    let r00002541: u32 = r0000253a & r0000251f;\n" : String).toByteArray.data.toList
theorem checked9441 : bytes9441=statementBytes 9537 (op9441.map lower) ∧ bytes9441.length=48 := by core033_kernel_decide
def op9442 : List WordIR.Op := [.bnot 9530]
def bytes9442 : Bytes := ("    let r00002542: u32 = !r0000253a;\n" : String).toByteArray.data.toList
theorem checked9442 : bytes9442=statementBytes 9538 (op9442.map lower) ∧ bytes9442.length=37 := by core033_kernel_decide
def op9443 : List WordIR.Op := [.band 9538 9476]
def bytes9443 : Bytes := ("    let r00002543: u32 = r00002542 & r00002504;\n" : String).toByteArray.data.toList
theorem checked9443 : bytes9443=statementBytes 9539 (op9443.map lower) ∧ bytes9443.length=48 := by core033_kernel_decide
def op9444 : List WordIR.Op := [.bxor 9537 9539]
def bytes9444 : Bytes := ("    let r00002544: u32 = r00002541 ^ r00002543;\n" : String).toByteArray.data.toList
theorem checked9444 : bytes9444=statementBytes 9540 (op9444.map lower) ∧ bytes9444.length=48 := by core033_kernel_decide
def op9445 : List WordIR.Op := [.badd 9536 9540]
def bytes9445 : Bytes := ("    let r00002545: u32 = r00002540.wrapping_add(r00002544);\n" : String).toByteArray.data.toList
theorem checked9445 : bytes9445=statementBytes 9541 (op9445.map lower) ∧ bytes9445.length=60 := by core033_kernel_decide
def op9446 : List WordIR.Op := [.literal (BitVec.ofNat 32 1537002063)]
def bytes9446 : Bytes := ("    let r00002546: u32 = 0x5b9cca4f_u32;\n" : String).toByteArray.data.toList
theorem checked9446 : bytes9446=statementBytes 9542 (op9446.map lower) ∧ bytes9446.length=41 := by core033_kernel_decide
def op9447 : List WordIR.Op := [.badd 9541 9542]
def bytes9447 : Bytes := ("    let r00002547: u32 = r00002545.wrapping_add(r00002546);\n" : String).toByteArray.data.toList
theorem checked9447 : bytes9447=statementBytes 9543 (op9447.map lower) ∧ bytes9447.length=60 := by core033_kernel_decide
def op9448 : List WordIR.Op := [.badd 9543 7955]
def bytes9448 : Bytes := ("    let r00002548: u32 = r00002547.wrapping_add(r00001f13);\n" : String).toByteArray.data.toList
theorem checked9448 : bytes9448=statementBytes 9544 (op9448.map lower) ∧ bytes9448.length=60 := by core033_kernel_decide
def op9449 : List WordIR.Op := [.rotr 9529 2]
def bytes9449 : Bytes := ("    let r00002549: u32 = r00002539.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9449 : bytes9449=statementBytes 9545 (op9449.map lower) ∧ bytes9449.length=65 := by core033_kernel_decide
def op9450 : List WordIR.Op := [.rotr 9529 13]
def bytes9450 : Bytes := ("    let r0000254a: u32 = r00002539.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9450 : bytes9450=statementBytes 9546 (op9450.map lower) ∧ bytes9450.length=65 := by core033_kernel_decide
def op9451 : List WordIR.Op := [.bxor 9545 9546]
def bytes9451 : Bytes := ("    let r0000254b: u32 = r00002549 ^ r0000254a;\n" : String).toByteArray.data.toList
theorem checked9451 : bytes9451=statementBytes 9547 (op9451.map lower) ∧ bytes9451.length=48 := by core033_kernel_decide
def op9452 : List WordIR.Op := [.rotr 9529 22]
def bytes9452 : Bytes := ("    let r0000254c: u32 = r00002539.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9452 : bytes9452=statementBytes 9548 (op9452.map lower) ∧ bytes9452.length=65 := by core033_kernel_decide
def op9453 : List WordIR.Op := [.bxor 9547 9548]
def bytes9453 : Bytes := ("    let r0000254d: u32 = r0000254b ^ r0000254c;\n" : String).toByteArray.data.toList
theorem checked9453 : bytes9453=statementBytes 9549 (op9453.map lower) ∧ bytes9453.length=48 := by core033_kernel_decide
def op9454 : List WordIR.Op := [.band 9529 9502]
def bytes9454 : Bytes := ("    let r0000254e: u32 = r00002539 & r0000251e;\n" : String).toByteArray.data.toList
theorem checked9454 : bytes9454=statementBytes 9550 (op9454.map lower) ∧ bytes9454.length=48 := by core033_kernel_decide
def op9455 : List WordIR.Op := [.band 9529 9475]
def bytes9455 : Bytes := ("    let r0000254f: u32 = r00002539 & r00002503;\n" : String).toByteArray.data.toList
theorem checked9455 : bytes9455=statementBytes 9551 (op9455.map lower) ∧ bytes9455.length=48 := by core033_kernel_decide
def op9456 : List WordIR.Op := [.bxor 9550 9551]
def bytes9456 : Bytes := ("    let r00002550: u32 = r0000254e ^ r0000254f;\n" : String).toByteArray.data.toList
theorem checked9456 : bytes9456=statementBytes 9552 (op9456.map lower) ∧ bytes9456.length=48 := by core033_kernel_decide
def op9457 : List WordIR.Op := [.band 9502 9475]
def bytes9457 : Bytes := ("    let r00002551: u32 = r0000251e & r00002503;\n" : String).toByteArray.data.toList
theorem checked9457 : bytes9457=statementBytes 9553 (op9457.map lower) ∧ bytes9457.length=48 := by core033_kernel_decide
def op9458 : List WordIR.Op := [.bxor 9552 9553]
def bytes9458 : Bytes := ("    let r00002552: u32 = r00002550 ^ r00002551;\n" : String).toByteArray.data.toList
theorem checked9458 : bytes9458=statementBytes 9554 (op9458.map lower) ∧ bytes9458.length=48 := by core033_kernel_decide
def op9459 : List WordIR.Op := [.badd 9549 9554]
def bytes9459 : Bytes := ("    let r00002553: u32 = r0000254d.wrapping_add(r00002552);\n" : String).toByteArray.data.toList
theorem checked9459 : bytes9459=statementBytes 9555 (op9459.map lower) ∧ bytes9459.length=60 := by core033_kernel_decide
def op9460 : List WordIR.Op := [.badd 9544 9555]
def bytes9460 : Bytes := ("    let r00002554: u32 = r00002548.wrapping_add(r00002553);\n" : String).toByteArray.data.toList
theorem checked9460 : bytes9460=statementBytes 9556 (op9460.map lower) ∧ bytes9460.length=60 := by core033_kernel_decide
def op9461 : List WordIR.Op := [.badd 9448 9544]
def bytes9461 : Bytes := ("    let r00002555: u32 = r000024e8.wrapping_add(r00002548);\n" : String).toByteArray.data.toList
theorem checked9461 : bytes9461=statementBytes 9557 (op9461.map lower) ∧ bytes9461.length=60 := by core033_kernel_decide
def op9462 : List WordIR.Op := [.rotr 9557 6]
def bytes9462 : Bytes := ("    let r00002556: u32 = r00002555.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9462 : bytes9462=statementBytes 9558 (op9462.map lower) ∧ bytes9462.length=65 := by core033_kernel_decide
def op9463 : List WordIR.Op := [.rotr 9557 11]
def bytes9463 : Bytes := ("    let r00002557: u32 = r00002555.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9463 : bytes9463=statementBytes 9559 (op9463.map lower) ∧ bytes9463.length=65 := by core033_kernel_decide
def op9464 : List WordIR.Op := [.bxor 9558 9559]
def bytes9464 : Bytes := ("    let r00002558: u32 = r00002556 ^ r00002557;\n" : String).toByteArray.data.toList
theorem checked9464 : bytes9464=statementBytes 9560 (op9464.map lower) ∧ bytes9464.length=48 := by core033_kernel_decide
def op9465 : List WordIR.Op := [.rotr 9557 25]
def bytes9465 : Bytes := ("    let r00002559: u32 = r00002555.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9465 : bytes9465=statementBytes 9561 (op9465.map lower) ∧ bytes9465.length=65 := by core033_kernel_decide
def op9466 : List WordIR.Op := [.bxor 9560 9561]
def bytes9466 : Bytes := ("    let r0000255a: u32 = r00002558 ^ r00002559;\n" : String).toByteArray.data.toList
theorem checked9466 : bytes9466=statementBytes 9562 (op9466.map lower) ∧ bytes9466.length=48 := by core033_kernel_decide
def op9467 : List WordIR.Op := [.badd 9476 9562]
def bytes9467 : Bytes := ("    let r0000255b: u32 = r00002504.wrapping_add(r0000255a);\n" : String).toByteArray.data.toList
theorem checked9467 : bytes9467=statementBytes 9563 (op9467.map lower) ∧ bytes9467.length=60 := by core033_kernel_decide
def op9468 : List WordIR.Op := [.band 9557 9530]
def bytes9468 : Bytes := ("    let r0000255c: u32 = r00002555 & r0000253a;\n" : String).toByteArray.data.toList
theorem checked9468 : bytes9468=statementBytes 9564 (op9468.map lower) ∧ bytes9468.length=48 := by core033_kernel_decide
def op9469 : List WordIR.Op := [.bnot 9557]
def bytes9469 : Bytes := ("    let r0000255d: u32 = !r00002555;\n" : String).toByteArray.data.toList
theorem checked9469 : bytes9469=statementBytes 9565 (op9469.map lower) ∧ bytes9469.length=37 := by core033_kernel_decide
def op9470 : List WordIR.Op := [.band 9565 9503]
def bytes9470 : Bytes := ("    let r0000255e: u32 = r0000255d & r0000251f;\n" : String).toByteArray.data.toList
theorem checked9470 : bytes9470=statementBytes 9566 (op9470.map lower) ∧ bytes9470.length=48 := by core033_kernel_decide
def op9471 : List WordIR.Op := [.bxor 9564 9566]
def bytes9471 : Bytes := ("    let r0000255f: u32 = r0000255c ^ r0000255e;\n" : String).toByteArray.data.toList
theorem checked9471 : bytes9471=statementBytes 9567 (op9471.map lower) ∧ bytes9471.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9408,op9409,op9410,op9411,op9412,op9413,op9414,op9415,op9416,op9417,op9418,op9419,op9420,op9421,op9422,op9423,op9424,op9425,op9426,op9427,op9428,op9429,op9430,op9431,op9432,op9433,op9434,op9435,op9436,op9437,op9438,op9439,op9440,op9441,op9442,op9443,op9444,op9445,op9446,op9447,op9448,op9449,op9450,op9451,op9452,op9453,op9454,op9455,op9456,op9457,op9458,op9459,op9460,op9461,op9462,op9463,op9464,op9465,op9466,op9467,op9468,op9469,op9470,op9471]
def chunks : List Bytes := [bytes9408,bytes9409,bytes9410,bytes9411,bytes9412,bytes9413,bytes9414,bytes9415,bytes9416,bytes9417,bytes9418,bytes9419,bytes9420,bytes9421,bytes9422,bytes9423,bytes9424,bytes9425,bytes9426,bytes9427,bytes9428,bytes9429,bytes9430,bytes9431,bytes9432,bytes9433,bytes9434,bytes9435,bytes9436,bytes9437,bytes9438,bytes9439,bytes9440,bytes9441,bytes9442,bytes9443,bytes9444,bytes9445,bytes9446,bytes9447,bytes9448,bytes9449,bytes9450,bytes9451,bytes9452,bytes9453,bytes9454,bytes9455,bytes9456,bytes9457,bytes9458,bytes9459,bytes9460,bytes9461,bytes9462,bytes9463,bytes9464,bytes9465,bytes9466,bytes9467,bytes9468,bytes9469,bytes9470,bytes9471]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9504 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9408.1 (.cons _ _ _ _ _ checked9409.1 (.cons _ _ _ _ _ checked9410.1 (.cons _ _ _ _ _ checked9411.1 (.cons _ _ _ _ _ checked9412.1 (.cons _ _ _ _ _ checked9413.1 (.cons _ _ _ _ _ checked9414.1 (.cons _ _ _ _ _ checked9415.1 (.cons _ _ _ _ _ checked9416.1 (.cons _ _ _ _ _ checked9417.1 (.cons _ _ _ _ _ checked9418.1 (.cons _ _ _ _ _ checked9419.1 (.cons _ _ _ _ _ checked9420.1 (.cons _ _ _ _ _ checked9421.1 (.cons _ _ _ _ _ checked9422.1 (.cons _ _ _ _ _ checked9423.1 (.cons _ _ _ _ _ checked9424.1 (.cons _ _ _ _ _ checked9425.1 (.cons _ _ _ _ _ checked9426.1 (.cons _ _ _ _ _ checked9427.1 (.cons _ _ _ _ _ checked9428.1 (.cons _ _ _ _ _ checked9429.1 (.cons _ _ _ _ _ checked9430.1 (.cons _ _ _ _ _ checked9431.1 (.cons _ _ _ _ _ checked9432.1 (.cons _ _ _ _ _ checked9433.1 (.cons _ _ _ _ _ checked9434.1 (.cons _ _ _ _ _ checked9435.1 (.cons _ _ _ _ _ checked9436.1 (.cons _ _ _ _ _ checked9437.1 (.cons _ _ _ _ _ checked9438.1 (.cons _ _ _ _ _ checked9439.1 (.cons _ _ _ _ _ checked9440.1 (.cons _ _ _ _ _ checked9441.1 (.cons _ _ _ _ _ checked9442.1 (.cons _ _ _ _ _ checked9443.1 (.cons _ _ _ _ _ checked9444.1 (.cons _ _ _ _ _ checked9445.1 (.cons _ _ _ _ _ checked9446.1 (.cons _ _ _ _ _ checked9447.1 (.cons _ _ _ _ _ checked9448.1 (.cons _ _ _ _ _ checked9449.1 (.cons _ _ _ _ _ checked9450.1 (.cons _ _ _ _ _ checked9451.1 (.cons _ _ _ _ _ checked9452.1 (.cons _ _ _ _ _ checked9453.1 (.cons _ _ _ _ _ checked9454.1 (.cons _ _ _ _ _ checked9455.1 (.cons _ _ _ _ _ checked9456.1 (.cons _ _ _ _ _ checked9457.1 (.cons _ _ _ _ _ checked9458.1 (.cons _ _ _ _ _ checked9459.1 (.cons _ _ _ _ _ checked9460.1 (.cons _ _ _ _ _ checked9461.1 (.cons _ _ _ _ _ checked9462.1 (.cons _ _ _ _ _ checked9463.1 (.cons _ _ _ _ _ checked9464.1 (.cons _ _ _ _ _ checked9465.1 (.cons _ _ _ _ _ checked9466.1 (.cons _ _ _ _ _ checked9467.1 (.cons _ _ _ _ _ checked9468.1 (.cons _ _ _ _ _ checked9469.1 (.cons _ _ _ _ _ checked9470.1 (.cons _ _ _ _ _ checked9471.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9504 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3460 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9408.2,checked9409.2,checked9410.2,checked9411.2,checked9412.2,checked9413.2,checked9414.2,checked9415.2,checked9416.2,checked9417.2,checked9418.2,checked9419.2,checked9420.2,checked9421.2,checked9422.2,checked9423.2,checked9424.2,checked9425.2,checked9426.2,checked9427.2,checked9428.2,checked9429.2,checked9430.2,checked9431.2,checked9432.2,checked9433.2,checked9434.2,checked9435.2,checked9436.2,checked9437.2,checked9438.2,checked9439.2,checked9440.2,checked9441.2,checked9442.2,checked9443.2,checked9444.2,checked9445.2,checked9446.2,checked9447.2,checked9448.2,checked9449.2,checked9450.2,checked9451.2,checked9452.2,checked9453.2,checked9454.2,checked9455.2,checked9456.2,checked9457.2,checked9458.2,checked9459.2,checked9460.2,checked9461.2,checked9462.2,checked9463.2,checked9464.2,checked9465.2,checked9466.2,checked9467.2,checked9468.2,checked9469.2,checked9470.2,checked9471.2]
  decide
end ArtifactPairedPathRoundGroup147
