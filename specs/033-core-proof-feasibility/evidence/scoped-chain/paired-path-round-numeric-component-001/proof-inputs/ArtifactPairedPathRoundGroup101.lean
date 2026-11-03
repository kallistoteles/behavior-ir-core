import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup101
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6464 : List WordIR.Op := [.badd 6557 6559]
def bytes6464 : Bytes := ("    let r000019a0: u32 = r0000199d.wrapping_add(r0000199f);\n" : String).toByteArray.data.toList
theorem checked6464 : bytes6464=statementBytes 6560 (op6464.map lower) ∧ bytes6464.length=60 := by core033_kernel_decide
def op6465 : List WordIR.Op := [.bnot 6560]
def bytes6465 : Bytes := ("    let r000019a1: u32 = !r000019a0;\n" : String).toByteArray.data.toList
theorem checked6465 : bytes6465=statementBytes 6561 (op6465.map lower) ∧ bytes6465.length=37 := by core033_kernel_decide
def op6466 : List WordIR.Op := [.band 6556 6561]
def bytes6466 : Bytes := ("    let r000019a2: u32 = r0000199c & r000019a1;\n" : String).toByteArray.data.toList
theorem checked6466 : bytes6466=statementBytes 6562 (op6466.map lower) ∧ bytes6466.length=48 := by core033_kernel_decide
def op6467 : List WordIR.Op := [.bxor 6552 6562]
def bytes6467 : Bytes := ("    let r000019a3: u32 = r00001998 ^ r000019a2;\n" : String).toByteArray.data.toList
theorem checked6467 : bytes6467=statementBytes 6563 (op6467.map lower) ∧ bytes6467.length=48 := by core033_kernel_decide
def op6468 : List WordIR.Op := [.shr 6563 31]
def bytes6468 : Bytes := ("    let r000019a4: u32 = r000019a3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6468 : bytes6468=statementBytes 6564 (op6468.map lower) ∧ bytes6468.length=54 := by core033_kernel_decide
def op6469 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6469 : Bytes := ("    let r000019a5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6469 : bytes6469=statementBytes 6565 (op6469.map lower) ∧ bytes6469.length=41 := by core033_kernel_decide
def op6470 : List WordIR.Op := [.bxor 6564 6565]
def bytes6470 : Bytes := ("    let r000019a6: u32 = r000019a4 ^ r000019a5;\n" : String).toByteArray.data.toList
theorem checked6470 : bytes6470=statementBytes 6566 (op6470.map lower) ∧ bytes6470.length=48 := by core033_kernel_decide
def op6471 : List WordIR.Op := [.shr 3691 8]
def bytes6471 : Bytes := ("    let r000019a7: u32 = r00000e6b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6471 : bytes6471=statementBytes 6567 (op6471.map lower) ∧ bytes6471.length=54 := by core033_kernel_decide
def op6472 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6472 : Bytes := ("    let r000019a8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6472 : bytes6472=statementBytes 6568 (op6472.map lower) ∧ bytes6472.length=41 := by core033_kernel_decide
def op6473 : List WordIR.Op := [.bnot 6568]
def bytes6473 : Bytes := ("    let r000019a9: u32 = !r000019a8;\n" : String).toByteArray.data.toList
theorem checked6473 : bytes6473=statementBytes 6569 (op6473.map lower) ∧ bytes6473.length=37 := by core033_kernel_decide
def op6474 : List WordIR.Op := [.band 6567 6569]
def bytes6474 : Bytes := ("    let r000019aa: u32 = r000019a7 & r000019a9;\n" : String).toByteArray.data.toList
theorem checked6474 : bytes6474=statementBytes 6570 (op6474.map lower) ∧ bytes6474.length=48 := by core033_kernel_decide
def op6475 : List WordIR.Op := [.shr 3691 8]
def bytes6475 : Bytes := ("    let r000019ab: u32 = r00000e6b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6475 : bytes6475=statementBytes 6571 (op6475.map lower) ∧ bytes6475.length=54 := by core033_kernel_decide
def op6476 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6476 : Bytes := ("    let r000019ac: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6476 : bytes6476=statementBytes 6572 (op6476.map lower) ∧ bytes6476.length=41 := by core033_kernel_decide
def op6477 : List WordIR.Op := [.bnot 6572]
def bytes6477 : Bytes := ("    let r000019ad: u32 = !r000019ac;\n" : String).toByteArray.data.toList
theorem checked6477 : bytes6477=statementBytes 6573 (op6477.map lower) ∧ bytes6477.length=37 := by core033_kernel_decide
def op6478 : List WordIR.Op := [.bxor 6571 6573]
def bytes6478 : Bytes := ("    let r000019ae: u32 = r000019ab ^ r000019ad;\n" : String).toByteArray.data.toList
theorem checked6478 : bytes6478=statementBytes 6574 (op6478.map lower) ∧ bytes6478.length=48 := by core033_kernel_decide
def op6479 : List WordIR.Op := [.shr 3691 8]
def bytes6479 : Bytes := ("    let r000019af: u32 = r00000e6b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6479 : bytes6479=statementBytes 6575 (op6479.map lower) ∧ bytes6479.length=54 := by core033_kernel_decide
def op6480 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6480 : Bytes := ("    let r000019b0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6480 : bytes6480=statementBytes 6576 (op6480.map lower) ∧ bytes6480.length=41 := by core033_kernel_decide
def op6481 : List WordIR.Op := [.bnot 6576]
def bytes6481 : Bytes := ("    let r000019b1: u32 = !r000019b0;\n" : String).toByteArray.data.toList
theorem checked6481 : bytes6481=statementBytes 6577 (op6481.map lower) ∧ bytes6481.length=37 := by core033_kernel_decide
def op6482 : List WordIR.Op := [.badd 6575 6577]
def bytes6482 : Bytes := ("    let r000019b2: u32 = r000019af.wrapping_add(r000019b1);\n" : String).toByteArray.data.toList
theorem checked6482 : bytes6482=statementBytes 6578 (op6482.map lower) ∧ bytes6482.length=60 := by core033_kernel_decide
def op6483 : List WordIR.Op := [.bnot 6578]
def bytes6483 : Bytes := ("    let r000019b3: u32 = !r000019b2;\n" : String).toByteArray.data.toList
theorem checked6483 : bytes6483=statementBytes 6579 (op6483.map lower) ∧ bytes6483.length=37 := by core033_kernel_decide
def op6484 : List WordIR.Op := [.band 6574 6579]
def bytes6484 : Bytes := ("    let r000019b4: u32 = r000019ae & r000019b3;\n" : String).toByteArray.data.toList
theorem checked6484 : bytes6484=statementBytes 6580 (op6484.map lower) ∧ bytes6484.length=48 := by core033_kernel_decide
def op6485 : List WordIR.Op := [.bxor 6570 6580]
def bytes6485 : Bytes := ("    let r000019b5: u32 = r000019aa ^ r000019b4;\n" : String).toByteArray.data.toList
theorem checked6485 : bytes6485=statementBytes 6581 (op6485.map lower) ∧ bytes6485.length=48 := by core033_kernel_decide
def op6486 : List WordIR.Op := [.shr 6581 31]
def bytes6486 : Bytes := ("    let r000019b6: u32 = r000019b5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6486 : bytes6486=statementBytes 6582 (op6486.map lower) ∧ bytes6486.length=54 := by core033_kernel_decide
def op6487 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6487 : Bytes := ("    let r000019b7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6487 : bytes6487=statementBytes 6583 (op6487.map lower) ∧ bytes6487.length=41 := by core033_kernel_decide
def op6488 : List WordIR.Op := [.bxor 6582 6583]
def bytes6488 : Bytes := ("    let r000019b8: u32 = r000019b6 ^ r000019b7;\n" : String).toByteArray.data.toList
theorem checked6488 : bytes6488=statementBytes 6584 (op6488.map lower) ∧ bytes6488.length=48 := by core033_kernel_decide
def op6489 : List WordIR.Op := [.shr 3743 8]
def bytes6489 : Bytes := ("    let r000019b9: u32 = r00000e9f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6489 : bytes6489=statementBytes 6585 (op6489.map lower) ∧ bytes6489.length=54 := by core033_kernel_decide
def op6490 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6490 : Bytes := ("    let r000019ba: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6490 : bytes6490=statementBytes 6586 (op6490.map lower) ∧ bytes6490.length=41 := by core033_kernel_decide
def op6491 : List WordIR.Op := [.bnot 6586]
def bytes6491 : Bytes := ("    let r000019bb: u32 = !r000019ba;\n" : String).toByteArray.data.toList
theorem checked6491 : bytes6491=statementBytes 6587 (op6491.map lower) ∧ bytes6491.length=37 := by core033_kernel_decide
def op6492 : List WordIR.Op := [.band 6585 6587]
def bytes6492 : Bytes := ("    let r000019bc: u32 = r000019b9 & r000019bb;\n" : String).toByteArray.data.toList
theorem checked6492 : bytes6492=statementBytes 6588 (op6492.map lower) ∧ bytes6492.length=48 := by core033_kernel_decide
def op6493 : List WordIR.Op := [.shr 3743 8]
def bytes6493 : Bytes := ("    let r000019bd: u32 = r00000e9f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6493 : bytes6493=statementBytes 6589 (op6493.map lower) ∧ bytes6493.length=54 := by core033_kernel_decide
def op6494 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6494 : Bytes := ("    let r000019be: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6494 : bytes6494=statementBytes 6590 (op6494.map lower) ∧ bytes6494.length=41 := by core033_kernel_decide
def op6495 : List WordIR.Op := [.bnot 6590]
def bytes6495 : Bytes := ("    let r000019bf: u32 = !r000019be;\n" : String).toByteArray.data.toList
theorem checked6495 : bytes6495=statementBytes 6591 (op6495.map lower) ∧ bytes6495.length=37 := by core033_kernel_decide
def op6496 : List WordIR.Op := [.bxor 6589 6591]
def bytes6496 : Bytes := ("    let r000019c0: u32 = r000019bd ^ r000019bf;\n" : String).toByteArray.data.toList
theorem checked6496 : bytes6496=statementBytes 6592 (op6496.map lower) ∧ bytes6496.length=48 := by core033_kernel_decide
def op6497 : List WordIR.Op := [.shr 3743 8]
def bytes6497 : Bytes := ("    let r000019c1: u32 = r00000e9f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6497 : bytes6497=statementBytes 6593 (op6497.map lower) ∧ bytes6497.length=54 := by core033_kernel_decide
def op6498 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6498 : Bytes := ("    let r000019c2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6498 : bytes6498=statementBytes 6594 (op6498.map lower) ∧ bytes6498.length=41 := by core033_kernel_decide
def op6499 : List WordIR.Op := [.bnot 6594]
def bytes6499 : Bytes := ("    let r000019c3: u32 = !r000019c2;\n" : String).toByteArray.data.toList
theorem checked6499 : bytes6499=statementBytes 6595 (op6499.map lower) ∧ bytes6499.length=37 := by core033_kernel_decide
def op6500 : List WordIR.Op := [.badd 6593 6595]
def bytes6500 : Bytes := ("    let r000019c4: u32 = r000019c1.wrapping_add(r000019c3);\n" : String).toByteArray.data.toList
theorem checked6500 : bytes6500=statementBytes 6596 (op6500.map lower) ∧ bytes6500.length=60 := by core033_kernel_decide
def op6501 : List WordIR.Op := [.bnot 6596]
def bytes6501 : Bytes := ("    let r000019c5: u32 = !r000019c4;\n" : String).toByteArray.data.toList
theorem checked6501 : bytes6501=statementBytes 6597 (op6501.map lower) ∧ bytes6501.length=37 := by core033_kernel_decide
def op6502 : List WordIR.Op := [.band 6592 6597]
def bytes6502 : Bytes := ("    let r000019c6: u32 = r000019c0 & r000019c5;\n" : String).toByteArray.data.toList
theorem checked6502 : bytes6502=statementBytes 6598 (op6502.map lower) ∧ bytes6502.length=48 := by core033_kernel_decide
def op6503 : List WordIR.Op := [.bxor 6588 6598]
def bytes6503 : Bytes := ("    let r000019c7: u32 = r000019bc ^ r000019c6;\n" : String).toByteArray.data.toList
theorem checked6503 : bytes6503=statementBytes 6599 (op6503.map lower) ∧ bytes6503.length=48 := by core033_kernel_decide
def op6504 : List WordIR.Op := [.shr 6599 31]
def bytes6504 : Bytes := ("    let r000019c8: u32 = r000019c7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6504 : bytes6504=statementBytes 6600 (op6504.map lower) ∧ bytes6504.length=54 := by core033_kernel_decide
def op6505 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6505 : Bytes := ("    let r000019c9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6505 : bytes6505=statementBytes 6601 (op6505.map lower) ∧ bytes6505.length=41 := by core033_kernel_decide
def op6506 : List WordIR.Op := [.bxor 6600 6601]
def bytes6506 : Bytes := ("    let r000019ca: u32 = r000019c8 ^ r000019c9;\n" : String).toByteArray.data.toList
theorem checked6506 : bytes6506=statementBytes 6602 (op6506.map lower) ∧ bytes6506.length=48 := by core033_kernel_decide
def op6507 : List WordIR.Op := [.shr 3795 8]
def bytes6507 : Bytes := ("    let r000019cb: u32 = r00000ed3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6507 : bytes6507=statementBytes 6603 (op6507.map lower) ∧ bytes6507.length=54 := by core033_kernel_decide
def op6508 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6508 : Bytes := ("    let r000019cc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6508 : bytes6508=statementBytes 6604 (op6508.map lower) ∧ bytes6508.length=41 := by core033_kernel_decide
def op6509 : List WordIR.Op := [.bnot 6604]
def bytes6509 : Bytes := ("    let r000019cd: u32 = !r000019cc;\n" : String).toByteArray.data.toList
theorem checked6509 : bytes6509=statementBytes 6605 (op6509.map lower) ∧ bytes6509.length=37 := by core033_kernel_decide
def op6510 : List WordIR.Op := [.band 6603 6605]
def bytes6510 : Bytes := ("    let r000019ce: u32 = r000019cb & r000019cd;\n" : String).toByteArray.data.toList
theorem checked6510 : bytes6510=statementBytes 6606 (op6510.map lower) ∧ bytes6510.length=48 := by core033_kernel_decide
def op6511 : List WordIR.Op := [.shr 3795 8]
def bytes6511 : Bytes := ("    let r000019cf: u32 = r00000ed3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6511 : bytes6511=statementBytes 6607 (op6511.map lower) ∧ bytes6511.length=54 := by core033_kernel_decide
def op6512 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6512 : Bytes := ("    let r000019d0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6512 : bytes6512=statementBytes 6608 (op6512.map lower) ∧ bytes6512.length=41 := by core033_kernel_decide
def op6513 : List WordIR.Op := [.bnot 6608]
def bytes6513 : Bytes := ("    let r000019d1: u32 = !r000019d0;\n" : String).toByteArray.data.toList
theorem checked6513 : bytes6513=statementBytes 6609 (op6513.map lower) ∧ bytes6513.length=37 := by core033_kernel_decide
def op6514 : List WordIR.Op := [.bxor 6607 6609]
def bytes6514 : Bytes := ("    let r000019d2: u32 = r000019cf ^ r000019d1;\n" : String).toByteArray.data.toList
theorem checked6514 : bytes6514=statementBytes 6610 (op6514.map lower) ∧ bytes6514.length=48 := by core033_kernel_decide
def op6515 : List WordIR.Op := [.shr 3795 8]
def bytes6515 : Bytes := ("    let r000019d3: u32 = r00000ed3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6515 : bytes6515=statementBytes 6611 (op6515.map lower) ∧ bytes6515.length=54 := by core033_kernel_decide
def op6516 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6516 : Bytes := ("    let r000019d4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6516 : bytes6516=statementBytes 6612 (op6516.map lower) ∧ bytes6516.length=41 := by core033_kernel_decide
def op6517 : List WordIR.Op := [.bnot 6612]
def bytes6517 : Bytes := ("    let r000019d5: u32 = !r000019d4;\n" : String).toByteArray.data.toList
theorem checked6517 : bytes6517=statementBytes 6613 (op6517.map lower) ∧ bytes6517.length=37 := by core033_kernel_decide
def op6518 : List WordIR.Op := [.badd 6611 6613]
def bytes6518 : Bytes := ("    let r000019d6: u32 = r000019d3.wrapping_add(r000019d5);\n" : String).toByteArray.data.toList
theorem checked6518 : bytes6518=statementBytes 6614 (op6518.map lower) ∧ bytes6518.length=60 := by core033_kernel_decide
def op6519 : List WordIR.Op := [.bnot 6614]
def bytes6519 : Bytes := ("    let r000019d7: u32 = !r000019d6;\n" : String).toByteArray.data.toList
theorem checked6519 : bytes6519=statementBytes 6615 (op6519.map lower) ∧ bytes6519.length=37 := by core033_kernel_decide
def op6520 : List WordIR.Op := [.band 6610 6615]
def bytes6520 : Bytes := ("    let r000019d8: u32 = r000019d2 & r000019d7;\n" : String).toByteArray.data.toList
theorem checked6520 : bytes6520=statementBytes 6616 (op6520.map lower) ∧ bytes6520.length=48 := by core033_kernel_decide
def op6521 : List WordIR.Op := [.bxor 6606 6616]
def bytes6521 : Bytes := ("    let r000019d9: u32 = r000019ce ^ r000019d8;\n" : String).toByteArray.data.toList
theorem checked6521 : bytes6521=statementBytes 6617 (op6521.map lower) ∧ bytes6521.length=48 := by core033_kernel_decide
def op6522 : List WordIR.Op := [.shr 6617 31]
def bytes6522 : Bytes := ("    let r000019da: u32 = r000019d9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6522 : bytes6522=statementBytes 6618 (op6522.map lower) ∧ bytes6522.length=54 := by core033_kernel_decide
def op6523 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6523 : Bytes := ("    let r000019db: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6523 : bytes6523=statementBytes 6619 (op6523.map lower) ∧ bytes6523.length=41 := by core033_kernel_decide
def op6524 : List WordIR.Op := [.bxor 6618 6619]
def bytes6524 : Bytes := ("    let r000019dc: u32 = r000019da ^ r000019db;\n" : String).toByteArray.data.toList
theorem checked6524 : bytes6524=statementBytes 6620 (op6524.map lower) ∧ bytes6524.length=48 := by core033_kernel_decide
def op6525 : List WordIR.Op := [.shr 3847 8]
def bytes6525 : Bytes := ("    let r000019dd: u32 = r00000f07 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6525 : bytes6525=statementBytes 6621 (op6525.map lower) ∧ bytes6525.length=54 := by core033_kernel_decide
def op6526 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6526 : Bytes := ("    let r000019de: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6526 : bytes6526=statementBytes 6622 (op6526.map lower) ∧ bytes6526.length=41 := by core033_kernel_decide
def op6527 : List WordIR.Op := [.bnot 6622]
def bytes6527 : Bytes := ("    let r000019df: u32 = !r000019de;\n" : String).toByteArray.data.toList
theorem checked6527 : bytes6527=statementBytes 6623 (op6527.map lower) ∧ bytes6527.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6464,op6465,op6466,op6467,op6468,op6469,op6470,op6471,op6472,op6473,op6474,op6475,op6476,op6477,op6478,op6479,op6480,op6481,op6482,op6483,op6484,op6485,op6486,op6487,op6488,op6489,op6490,op6491,op6492,op6493,op6494,op6495,op6496,op6497,op6498,op6499,op6500,op6501,op6502,op6503,op6504,op6505,op6506,op6507,op6508,op6509,op6510,op6511,op6512,op6513,op6514,op6515,op6516,op6517,op6518,op6519,op6520,op6521,op6522,op6523,op6524,op6525,op6526,op6527]
def chunks : List Bytes := [bytes6464,bytes6465,bytes6466,bytes6467,bytes6468,bytes6469,bytes6470,bytes6471,bytes6472,bytes6473,bytes6474,bytes6475,bytes6476,bytes6477,bytes6478,bytes6479,bytes6480,bytes6481,bytes6482,bytes6483,bytes6484,bytes6485,bytes6486,bytes6487,bytes6488,bytes6489,bytes6490,bytes6491,bytes6492,bytes6493,bytes6494,bytes6495,bytes6496,bytes6497,bytes6498,bytes6499,bytes6500,bytes6501,bytes6502,bytes6503,bytes6504,bytes6505,bytes6506,bytes6507,bytes6508,bytes6509,bytes6510,bytes6511,bytes6512,bytes6513,bytes6514,bytes6515,bytes6516,bytes6517,bytes6518,bytes6519,bytes6520,bytes6521,bytes6522,bytes6523,bytes6524,bytes6525,bytes6526,bytes6527]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6560 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6464.1 (.cons _ _ _ _ _ checked6465.1 (.cons _ _ _ _ _ checked6466.1 (.cons _ _ _ _ _ checked6467.1 (.cons _ _ _ _ _ checked6468.1 (.cons _ _ _ _ _ checked6469.1 (.cons _ _ _ _ _ checked6470.1 (.cons _ _ _ _ _ checked6471.1 (.cons _ _ _ _ _ checked6472.1 (.cons _ _ _ _ _ checked6473.1 (.cons _ _ _ _ _ checked6474.1 (.cons _ _ _ _ _ checked6475.1 (.cons _ _ _ _ _ checked6476.1 (.cons _ _ _ _ _ checked6477.1 (.cons _ _ _ _ _ checked6478.1 (.cons _ _ _ _ _ checked6479.1 (.cons _ _ _ _ _ checked6480.1 (.cons _ _ _ _ _ checked6481.1 (.cons _ _ _ _ _ checked6482.1 (.cons _ _ _ _ _ checked6483.1 (.cons _ _ _ _ _ checked6484.1 (.cons _ _ _ _ _ checked6485.1 (.cons _ _ _ _ _ checked6486.1 (.cons _ _ _ _ _ checked6487.1 (.cons _ _ _ _ _ checked6488.1 (.cons _ _ _ _ _ checked6489.1 (.cons _ _ _ _ _ checked6490.1 (.cons _ _ _ _ _ checked6491.1 (.cons _ _ _ _ _ checked6492.1 (.cons _ _ _ _ _ checked6493.1 (.cons _ _ _ _ _ checked6494.1 (.cons _ _ _ _ _ checked6495.1 (.cons _ _ _ _ _ checked6496.1 (.cons _ _ _ _ _ checked6497.1 (.cons _ _ _ _ _ checked6498.1 (.cons _ _ _ _ _ checked6499.1 (.cons _ _ _ _ _ checked6500.1 (.cons _ _ _ _ _ checked6501.1 (.cons _ _ _ _ _ checked6502.1 (.cons _ _ _ _ _ checked6503.1 (.cons _ _ _ _ _ checked6504.1 (.cons _ _ _ _ _ checked6505.1 (.cons _ _ _ _ _ checked6506.1 (.cons _ _ _ _ _ checked6507.1 (.cons _ _ _ _ _ checked6508.1 (.cons _ _ _ _ _ checked6509.1 (.cons _ _ _ _ _ checked6510.1 (.cons _ _ _ _ _ checked6511.1 (.cons _ _ _ _ _ checked6512.1 (.cons _ _ _ _ _ checked6513.1 (.cons _ _ _ _ _ checked6514.1 (.cons _ _ _ _ _ checked6515.1 (.cons _ _ _ _ _ checked6516.1 (.cons _ _ _ _ _ checked6517.1 (.cons _ _ _ _ _ checked6518.1 (.cons _ _ _ _ _ checked6519.1 (.cons _ _ _ _ _ checked6520.1 (.cons _ _ _ _ _ checked6521.1 (.cons _ _ _ _ _ checked6522.1 (.cons _ _ _ _ _ checked6523.1 (.cons _ _ _ _ _ checked6524.1 (.cons _ _ _ _ _ checked6525.1 (.cons _ _ _ _ _ checked6526.1 (.cons _ _ _ _ _ checked6527.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6560 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2952 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6464.2,checked6465.2,checked6466.2,checked6467.2,checked6468.2,checked6469.2,checked6470.2,checked6471.2,checked6472.2,checked6473.2,checked6474.2,checked6475.2,checked6476.2,checked6477.2,checked6478.2,checked6479.2,checked6480.2,checked6481.2,checked6482.2,checked6483.2,checked6484.2,checked6485.2,checked6486.2,checked6487.2,checked6488.2,checked6489.2,checked6490.2,checked6491.2,checked6492.2,checked6493.2,checked6494.2,checked6495.2,checked6496.2,checked6497.2,checked6498.2,checked6499.2,checked6500.2,checked6501.2,checked6502.2,checked6503.2,checked6504.2,checked6505.2,checked6506.2,checked6507.2,checked6508.2,checked6509.2,checked6510.2,checked6511.2,checked6512.2,checked6513.2,checked6514.2,checked6515.2,checked6516.2,checked6517.2,checked6518.2,checked6519.2,checked6520.2,checked6521.2,checked6522.2,checked6523.2,checked6524.2,checked6525.2,checked6526.2,checked6527.2]
  decide
end ArtifactPairedPathRoundGroup101
