import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup147
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9408 : List WordIR.Op := [.bnot 9406]
def bytes9408 : Bytes := ("    let r000024eb: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9408 : bytes9408=statementBytes 9451 (op9408.map lower) ∧ bytes9408.length=37 := by core033_kernel_decide
def op9409 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9409 : Bytes := ("    let r000024ec: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9409 : bytes9409=statementBytes 9452 (op9409.map lower) ∧ bytes9409.length=41 := by core033_kernel_decide
def op9410 : List WordIR.Op := [.badd 9451 9452]
def bytes9410 : Bytes := ("    let r000024ed: u32 = r000024eb.wrapping_add(r000024ec);\n" : String).toByteArray.data.toList
theorem checked9410 : bytes9410=statementBytes 9453 (op9410.map lower) ∧ bytes9410.length=60 := by core033_kernel_decide
def op9411 : List WordIR.Op := [.band 9453 4]
def bytes9411 : Bytes := ("    let r000024ee: u32 = r000024ed & r00000004;\n" : String).toByteArray.data.toList
theorem checked9411 : bytes9411=statementBytes 9454 (op9411.map lower) ∧ bytes9411.length=48 := by core033_kernel_decide
def op9412 : List WordIR.Op := [.bnot 9406]
def bytes9412 : Bytes := ("    let r000024ef: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9412 : bytes9412=statementBytes 9455 (op9412.map lower) ∧ bytes9412.length=37 := by core033_kernel_decide
def op9413 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9413 : Bytes := ("    let r000024f0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9413 : bytes9413=statementBytes 9456 (op9413.map lower) ∧ bytes9413.length=41 := by core033_kernel_decide
def op9414 : List WordIR.Op := [.badd 9455 9456]
def bytes9414 : Bytes := ("    let r000024f1: u32 = r000024ef.wrapping_add(r000024f0);\n" : String).toByteArray.data.toList
theorem checked9414 : bytes9414=statementBytes 9457 (op9414.map lower) ∧ bytes9414.length=60 := by core033_kernel_decide
def op9415 : List WordIR.Op := [.bnot 9457]
def bytes9415 : Bytes := ("    let r000024f2: u32 = !r000024f1;\n" : String).toByteArray.data.toList
theorem checked9415 : bytes9415=statementBytes 9458 (op9415.map lower) ∧ bytes9415.length=37 := by core033_kernel_decide
def op9416 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9416 : Bytes := ("    let r000024f3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9416 : bytes9416=statementBytes 9459 (op9416.map lower) ∧ bytes9416.length=41 := by core033_kernel_decide
def op9417 : List WordIR.Op := [.band 9458 9459]
def bytes9417 : Bytes := ("    let r000024f4: u32 = r000024f2 & r000024f3;\n" : String).toByteArray.data.toList
theorem checked9417 : bytes9417=statementBytes 9460 (op9417.map lower) ∧ bytes9417.length=48 := by core033_kernel_decide
def op9418 : List WordIR.Op := [.bxor 9454 9460]
def bytes9418 : Bytes := ("    let r000024f5: u32 = r000024ee ^ r000024f4;\n" : String).toByteArray.data.toList
theorem checked9418 : bytes9418=statementBytes 9461 (op9418.map lower) ∧ bytes9418.length=48 := by core033_kernel_decide
def op9419 : List WordIR.Op := [.bnot 9406]
def bytes9419 : Bytes := ("    let r000024f6: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9419 : bytes9419=statementBytes 9462 (op9419.map lower) ∧ bytes9419.length=37 := by core033_kernel_decide
def op9420 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9420 : Bytes := ("    let r000024f7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9420 : bytes9420=statementBytes 9463 (op9420.map lower) ∧ bytes9420.length=41 := by core033_kernel_decide
def op9421 : List WordIR.Op := [.badd 9462 9463]
def bytes9421 : Bytes := ("    let r000024f8: u32 = r000024f6.wrapping_add(r000024f7);\n" : String).toByteArray.data.toList
theorem checked9421 : bytes9421=statementBytes 9464 (op9421.map lower) ∧ bytes9421.length=60 := by core033_kernel_decide
def op9422 : List WordIR.Op := [.band 9464 5]
def bytes9422 : Bytes := ("    let r000024f9: u32 = r000024f8 & r00000005;\n" : String).toByteArray.data.toList
theorem checked9422 : bytes9422=statementBytes 9465 (op9422.map lower) ∧ bytes9422.length=48 := by core033_kernel_decide
def op9423 : List WordIR.Op := [.bnot 9406]
def bytes9423 : Bytes := ("    let r000024fa: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9423 : bytes9423=statementBytes 9466 (op9423.map lower) ∧ bytes9423.length=37 := by core033_kernel_decide
def op9424 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9424 : Bytes := ("    let r000024fb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9424 : bytes9424=statementBytes 9467 (op9424.map lower) ∧ bytes9424.length=41 := by core033_kernel_decide
def op9425 : List WordIR.Op := [.badd 9466 9467]
def bytes9425 : Bytes := ("    let r000024fc: u32 = r000024fa.wrapping_add(r000024fb);\n" : String).toByteArray.data.toList
theorem checked9425 : bytes9425=statementBytes 9468 (op9425.map lower) ∧ bytes9425.length=60 := by core033_kernel_decide
def op9426 : List WordIR.Op := [.bnot 9468]
def bytes9426 : Bytes := ("    let r000024fd: u32 = !r000024fc;\n" : String).toByteArray.data.toList
theorem checked9426 : bytes9426=statementBytes 9469 (op9426.map lower) ∧ bytes9426.length=37 := by core033_kernel_decide
def op9427 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9427 : Bytes := ("    let r000024fe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9427 : bytes9427=statementBytes 9470 (op9427.map lower) ∧ bytes9427.length=41 := by core033_kernel_decide
def op9428 : List WordIR.Op := [.band 9469 9470]
def bytes9428 : Bytes := ("    let r000024ff: u32 = r000024fd & r000024fe;\n" : String).toByteArray.data.toList
theorem checked9428 : bytes9428=statementBytes 9471 (op9428.map lower) ∧ bytes9428.length=48 := by core033_kernel_decide
def op9429 : List WordIR.Op := [.bxor 9465 9471]
def bytes9429 : Bytes := ("    let r00002500: u32 = r000024f9 ^ r000024ff;\n" : String).toByteArray.data.toList
theorem checked9429 : bytes9429=statementBytes 9472 (op9429.map lower) ∧ bytes9429.length=48 := by core033_kernel_decide
def op9430 : List WordIR.Op := [.bnot 9406]
def bytes9430 : Bytes := ("    let r00002501: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9430 : bytes9430=statementBytes 9473 (op9430.map lower) ∧ bytes9430.length=37 := by core033_kernel_decide
def op9431 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9431 : Bytes := ("    let r00002502: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9431 : bytes9431=statementBytes 9474 (op9431.map lower) ∧ bytes9431.length=41 := by core033_kernel_decide
def op9432 : List WordIR.Op := [.badd 9473 9474]
def bytes9432 : Bytes := ("    let r00002503: u32 = r00002501.wrapping_add(r00002502);\n" : String).toByteArray.data.toList
theorem checked9432 : bytes9432=statementBytes 9475 (op9432.map lower) ∧ bytes9432.length=60 := by core033_kernel_decide
def op9433 : List WordIR.Op := [.band 9475 6]
def bytes9433 : Bytes := ("    let r00002504: u32 = r00002503 & r00000006;\n" : String).toByteArray.data.toList
theorem checked9433 : bytes9433=statementBytes 9476 (op9433.map lower) ∧ bytes9433.length=48 := by core033_kernel_decide
def op9434 : List WordIR.Op := [.bnot 9406]
def bytes9434 : Bytes := ("    let r00002505: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9434 : bytes9434=statementBytes 9477 (op9434.map lower) ∧ bytes9434.length=37 := by core033_kernel_decide
def op9435 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9435 : Bytes := ("    let r00002506: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9435 : bytes9435=statementBytes 9478 (op9435.map lower) ∧ bytes9435.length=41 := by core033_kernel_decide
def op9436 : List WordIR.Op := [.badd 9477 9478]
def bytes9436 : Bytes := ("    let r00002507: u32 = r00002505.wrapping_add(r00002506);\n" : String).toByteArray.data.toList
theorem checked9436 : bytes9436=statementBytes 9479 (op9436.map lower) ∧ bytes9436.length=60 := by core033_kernel_decide
def op9437 : List WordIR.Op := [.bnot 9479]
def bytes9437 : Bytes := ("    let r00002508: u32 = !r00002507;\n" : String).toByteArray.data.toList
theorem checked9437 : bytes9437=statementBytes 9480 (op9437.map lower) ∧ bytes9437.length=37 := by core033_kernel_decide
def op9438 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9438 : Bytes := ("    let r00002509: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9438 : bytes9438=statementBytes 9481 (op9438.map lower) ∧ bytes9438.length=41 := by core033_kernel_decide
def op9439 : List WordIR.Op := [.band 9480 9481]
def bytes9439 : Bytes := ("    let r0000250a: u32 = r00002508 & r00002509;\n" : String).toByteArray.data.toList
theorem checked9439 : bytes9439=statementBytes 9482 (op9439.map lower) ∧ bytes9439.length=48 := by core033_kernel_decide
def op9440 : List WordIR.Op := [.bxor 9476 9482]
def bytes9440 : Bytes := ("    let r0000250b: u32 = r00002504 ^ r0000250a;\n" : String).toByteArray.data.toList
theorem checked9440 : bytes9440=statementBytes 9483 (op9440.map lower) ∧ bytes9440.length=48 := by core033_kernel_decide
def op9441 : List WordIR.Op := [.bnot 9406]
def bytes9441 : Bytes := ("    let r0000250c: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9441 : bytes9441=statementBytes 9484 (op9441.map lower) ∧ bytes9441.length=37 := by core033_kernel_decide
def op9442 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9442 : Bytes := ("    let r0000250d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9442 : bytes9442=statementBytes 9485 (op9442.map lower) ∧ bytes9442.length=41 := by core033_kernel_decide
def op9443 : List WordIR.Op := [.badd 9484 9485]
def bytes9443 : Bytes := ("    let r0000250e: u32 = r0000250c.wrapping_add(r0000250d);\n" : String).toByteArray.data.toList
theorem checked9443 : bytes9443=statementBytes 9486 (op9443.map lower) ∧ bytes9443.length=60 := by core033_kernel_decide
def op9444 : List WordIR.Op := [.band 9486 7]
def bytes9444 : Bytes := ("    let r0000250f: u32 = r0000250e & r00000007;\n" : String).toByteArray.data.toList
theorem checked9444 : bytes9444=statementBytes 9487 (op9444.map lower) ∧ bytes9444.length=48 := by core033_kernel_decide
def op9445 : List WordIR.Op := [.bnot 9406]
def bytes9445 : Bytes := ("    let r00002510: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9445 : bytes9445=statementBytes 9488 (op9445.map lower) ∧ bytes9445.length=37 := by core033_kernel_decide
def op9446 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9446 : Bytes := ("    let r00002511: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9446 : bytes9446=statementBytes 9489 (op9446.map lower) ∧ bytes9446.length=41 := by core033_kernel_decide
def op9447 : List WordIR.Op := [.badd 9488 9489]
def bytes9447 : Bytes := ("    let r00002512: u32 = r00002510.wrapping_add(r00002511);\n" : String).toByteArray.data.toList
theorem checked9447 : bytes9447=statementBytes 9490 (op9447.map lower) ∧ bytes9447.length=60 := by core033_kernel_decide
def op9448 : List WordIR.Op := [.bnot 9490]
def bytes9448 : Bytes := ("    let r00002513: u32 = !r00002512;\n" : String).toByteArray.data.toList
theorem checked9448 : bytes9448=statementBytes 9491 (op9448.map lower) ∧ bytes9448.length=37 := by core033_kernel_decide
def op9449 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9449 : Bytes := ("    let r00002514: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9449 : bytes9449=statementBytes 9492 (op9449.map lower) ∧ bytes9449.length=41 := by core033_kernel_decide
def op9450 : List WordIR.Op := [.band 9491 9492]
def bytes9450 : Bytes := ("    let r00002515: u32 = r00002513 & r00002514;\n" : String).toByteArray.data.toList
theorem checked9450 : bytes9450=statementBytes 9493 (op9450.map lower) ∧ bytes9450.length=48 := by core033_kernel_decide
def op9451 : List WordIR.Op := [.bxor 9487 9493]
def bytes9451 : Bytes := ("    let r00002516: u32 = r0000250f ^ r00002515;\n" : String).toByteArray.data.toList
theorem checked9451 : bytes9451=statementBytes 9494 (op9451.map lower) ∧ bytes9451.length=48 := by core033_kernel_decide
def op9452 : List WordIR.Op := [.bnot 9406]
def bytes9452 : Bytes := ("    let r00002517: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9452 : bytes9452=statementBytes 9495 (op9452.map lower) ∧ bytes9452.length=37 := by core033_kernel_decide
def op9453 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9453 : Bytes := ("    let r00002518: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9453 : bytes9453=statementBytes 9496 (op9453.map lower) ∧ bytes9453.length=41 := by core033_kernel_decide
def op9454 : List WordIR.Op := [.badd 9495 9496]
def bytes9454 : Bytes := ("    let r00002519: u32 = r00002517.wrapping_add(r00002518);\n" : String).toByteArray.data.toList
theorem checked9454 : bytes9454=statementBytes 9497 (op9454.map lower) ∧ bytes9454.length=60 := by core033_kernel_decide
def op9455 : List WordIR.Op := [.band 9497 8]
def bytes9455 : Bytes := ("    let r0000251a: u32 = r00002519 & r00000008;\n" : String).toByteArray.data.toList
theorem checked9455 : bytes9455=statementBytes 9498 (op9455.map lower) ∧ bytes9455.length=48 := by core033_kernel_decide
def op9456 : List WordIR.Op := [.bnot 9406]
def bytes9456 : Bytes := ("    let r0000251b: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9456 : bytes9456=statementBytes 9499 (op9456.map lower) ∧ bytes9456.length=37 := by core033_kernel_decide
def op9457 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9457 : Bytes := ("    let r0000251c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9457 : bytes9457=statementBytes 9500 (op9457.map lower) ∧ bytes9457.length=41 := by core033_kernel_decide
def op9458 : List WordIR.Op := [.badd 9499 9500]
def bytes9458 : Bytes := ("    let r0000251d: u32 = r0000251b.wrapping_add(r0000251c);\n" : String).toByteArray.data.toList
theorem checked9458 : bytes9458=statementBytes 9501 (op9458.map lower) ∧ bytes9458.length=60 := by core033_kernel_decide
def op9459 : List WordIR.Op := [.bnot 9501]
def bytes9459 : Bytes := ("    let r0000251e: u32 = !r0000251d;\n" : String).toByteArray.data.toList
theorem checked9459 : bytes9459=statementBytes 9502 (op9459.map lower) ∧ bytes9459.length=37 := by core033_kernel_decide
def op9460 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9460 : Bytes := ("    let r0000251f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9460 : bytes9460=statementBytes 9503 (op9460.map lower) ∧ bytes9460.length=41 := by core033_kernel_decide
def op9461 : List WordIR.Op := [.band 9502 9503]
def bytes9461 : Bytes := ("    let r00002520: u32 = r0000251e & r0000251f;\n" : String).toByteArray.data.toList
theorem checked9461 : bytes9461=statementBytes 9504 (op9461.map lower) ∧ bytes9461.length=48 := by core033_kernel_decide
def op9462 : List WordIR.Op := [.bxor 9498 9504]
def bytes9462 : Bytes := ("    let r00002521: u32 = r0000251a ^ r00002520;\n" : String).toByteArray.data.toList
theorem checked9462 : bytes9462=statementBytes 9505 (op9462.map lower) ∧ bytes9462.length=48 := by core033_kernel_decide
def op9463 : List WordIR.Op := [.bnot 9406]
def bytes9463 : Bytes := ("    let r00002522: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9463 : bytes9463=statementBytes 9506 (op9463.map lower) ∧ bytes9463.length=37 := by core033_kernel_decide
def op9464 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9464 : Bytes := ("    let r00002523: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9464 : bytes9464=statementBytes 9507 (op9464.map lower) ∧ bytes9464.length=41 := by core033_kernel_decide
def op9465 : List WordIR.Op := [.badd 9506 9507]
def bytes9465 : Bytes := ("    let r00002524: u32 = r00002522.wrapping_add(r00002523);\n" : String).toByteArray.data.toList
theorem checked9465 : bytes9465=statementBytes 9508 (op9465.map lower) ∧ bytes9465.length=60 := by core033_kernel_decide
def op9466 : List WordIR.Op := [.band 9508 9]
def bytes9466 : Bytes := ("    let r00002525: u32 = r00002524 & r00000009;\n" : String).toByteArray.data.toList
theorem checked9466 : bytes9466=statementBytes 9509 (op9466.map lower) ∧ bytes9466.length=48 := by core033_kernel_decide
def op9467 : List WordIR.Op := [.bnot 9406]
def bytes9467 : Bytes := ("    let r00002526: u32 = !r000024be;\n" : String).toByteArray.data.toList
theorem checked9467 : bytes9467=statementBytes 9510 (op9467.map lower) ∧ bytes9467.length=37 := by core033_kernel_decide
def op9468 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes9468 : Bytes := ("    let r00002527: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked9468 : bytes9468=statementBytes 9511 (op9468.map lower) ∧ bytes9468.length=41 := by core033_kernel_decide
def op9469 : List WordIR.Op := [.badd 9510 9511]
def bytes9469 : Bytes := ("    let r00002528: u32 = r00002526.wrapping_add(r00002527);\n" : String).toByteArray.data.toList
theorem checked9469 : bytes9469=statementBytes 9512 (op9469.map lower) ∧ bytes9469.length=60 := by core033_kernel_decide
def op9470 : List WordIR.Op := [.bnot 9512]
def bytes9470 : Bytes := ("    let r00002529: u32 = !r00002528;\n" : String).toByteArray.data.toList
theorem checked9470 : bytes9470=statementBytes 9513 (op9470.map lower) ∧ bytes9470.length=37 := by core033_kernel_decide
def op9471 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes9471 : Bytes := ("    let r0000252a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked9471 : bytes9471=statementBytes 9514 (op9471.map lower) ∧ bytes9471.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9408,op9409,op9410,op9411,op9412,op9413,op9414,op9415,op9416,op9417,op9418,op9419,op9420,op9421,op9422,op9423,op9424,op9425,op9426,op9427,op9428,op9429,op9430,op9431,op9432,op9433,op9434,op9435,op9436,op9437,op9438,op9439,op9440,op9441,op9442,op9443,op9444,op9445,op9446,op9447,op9448,op9449,op9450,op9451,op9452,op9453,op9454,op9455,op9456,op9457,op9458,op9459,op9460,op9461,op9462,op9463,op9464,op9465,op9466,op9467,op9468,op9469,op9470,op9471]
def chunks : List Bytes := [bytes9408,bytes9409,bytes9410,bytes9411,bytes9412,bytes9413,bytes9414,bytes9415,bytes9416,bytes9417,bytes9418,bytes9419,bytes9420,bytes9421,bytes9422,bytes9423,bytes9424,bytes9425,bytes9426,bytes9427,bytes9428,bytes9429,bytes9430,bytes9431,bytes9432,bytes9433,bytes9434,bytes9435,bytes9436,bytes9437,bytes9438,bytes9439,bytes9440,bytes9441,bytes9442,bytes9443,bytes9444,bytes9445,bytes9446,bytes9447,bytes9448,bytes9449,bytes9450,bytes9451,bytes9452,bytes9453,bytes9454,bytes9455,bytes9456,bytes9457,bytes9458,bytes9459,bytes9460,bytes9461,bytes9462,bytes9463,bytes9464,bytes9465,bytes9466,bytes9467,bytes9468,bytes9469,bytes9470,bytes9471]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9451 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9408.1 (.cons _ _ _ _ _ checked9409.1 (.cons _ _ _ _ _ checked9410.1 (.cons _ _ _ _ _ checked9411.1 (.cons _ _ _ _ _ checked9412.1 (.cons _ _ _ _ _ checked9413.1 (.cons _ _ _ _ _ checked9414.1 (.cons _ _ _ _ _ checked9415.1 (.cons _ _ _ _ _ checked9416.1 (.cons _ _ _ _ _ checked9417.1 (.cons _ _ _ _ _ checked9418.1 (.cons _ _ _ _ _ checked9419.1 (.cons _ _ _ _ _ checked9420.1 (.cons _ _ _ _ _ checked9421.1 (.cons _ _ _ _ _ checked9422.1 (.cons _ _ _ _ _ checked9423.1 (.cons _ _ _ _ _ checked9424.1 (.cons _ _ _ _ _ checked9425.1 (.cons _ _ _ _ _ checked9426.1 (.cons _ _ _ _ _ checked9427.1 (.cons _ _ _ _ _ checked9428.1 (.cons _ _ _ _ _ checked9429.1 (.cons _ _ _ _ _ checked9430.1 (.cons _ _ _ _ _ checked9431.1 (.cons _ _ _ _ _ checked9432.1 (.cons _ _ _ _ _ checked9433.1 (.cons _ _ _ _ _ checked9434.1 (.cons _ _ _ _ _ checked9435.1 (.cons _ _ _ _ _ checked9436.1 (.cons _ _ _ _ _ checked9437.1 (.cons _ _ _ _ _ checked9438.1 (.cons _ _ _ _ _ checked9439.1 (.cons _ _ _ _ _ checked9440.1 (.cons _ _ _ _ _ checked9441.1 (.cons _ _ _ _ _ checked9442.1 (.cons _ _ _ _ _ checked9443.1 (.cons _ _ _ _ _ checked9444.1 (.cons _ _ _ _ _ checked9445.1 (.cons _ _ _ _ _ checked9446.1 (.cons _ _ _ _ _ checked9447.1 (.cons _ _ _ _ _ checked9448.1 (.cons _ _ _ _ _ checked9449.1 (.cons _ _ _ _ _ checked9450.1 (.cons _ _ _ _ _ checked9451.1 (.cons _ _ _ _ _ checked9452.1 (.cons _ _ _ _ _ checked9453.1 (.cons _ _ _ _ _ checked9454.1 (.cons _ _ _ _ _ checked9455.1 (.cons _ _ _ _ _ checked9456.1 (.cons _ _ _ _ _ checked9457.1 (.cons _ _ _ _ _ checked9458.1 (.cons _ _ _ _ _ checked9459.1 (.cons _ _ _ _ _ checked9460.1 (.cons _ _ _ _ _ checked9461.1 (.cons _ _ _ _ _ checked9462.1 (.cons _ _ _ _ _ checked9463.1 (.cons _ _ _ _ _ checked9464.1 (.cons _ _ _ _ _ checked9465.1 (.cons _ _ _ _ _ checked9466.1 (.cons _ _ _ _ _ checked9467.1 (.cons _ _ _ _ _ checked9468.1 (.cons _ _ _ _ _ checked9469.1 (.cons _ _ _ _ _ checked9470.1 (.cons _ _ _ _ _ checked9471.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9451 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2892 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9408.2,checked9409.2,checked9410.2,checked9411.2,checked9412.2,checked9413.2,checked9414.2,checked9415.2,checked9416.2,checked9417.2,checked9418.2,checked9419.2,checked9420.2,checked9421.2,checked9422.2,checked9423.2,checked9424.2,checked9425.2,checked9426.2,checked9427.2,checked9428.2,checked9429.2,checked9430.2,checked9431.2,checked9432.2,checked9433.2,checked9434.2,checked9435.2,checked9436.2,checked9437.2,checked9438.2,checked9439.2,checked9440.2,checked9441.2,checked9442.2,checked9443.2,checked9444.2,checked9445.2,checked9446.2,checked9447.2,checked9448.2,checked9449.2,checked9450.2,checked9451.2,checked9452.2,checked9453.2,checked9454.2,checked9455.2,checked9456.2,checked9457.2,checked9458.2,checked9459.2,checked9460.2,checked9461.2,checked9462.2,checked9463.2,checked9464.2,checked9465.2,checked9466.2,checked9467.2,checked9468.2,checked9469.2,checked9470.2,checked9471.2]
  decide
end ArtifactPathRoundDispatchGroup147
