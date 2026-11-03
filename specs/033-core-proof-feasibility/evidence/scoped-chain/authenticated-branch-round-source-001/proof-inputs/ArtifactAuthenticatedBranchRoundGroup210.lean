import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup210
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op13440 : List WordIR.Op := [.bnot 13557]
def bytes13440 : Bytes := ("    let r000034f6: u32 = !r000034f5;\n" : String).toByteArray.data.toList
theorem checked13440 : bytes13440=statementBytes 13558 (op13440.map lower) ∧ bytes13440.length=37 := by core033_kernel_decide
def op13441 : List WordIR.Op := [.band 13558 10489]
def bytes13441 : Bytes := ("    let r000034f7: u32 = r000034f6 & r000028f9;\n" : String).toByteArray.data.toList
theorem checked13441 : bytes13441=statementBytes 13559 (op13441.map lower) ∧ bytes13441.length=48 := by core033_kernel_decide
def op13442 : List WordIR.Op := [.bxor 13533 13559]
def bytes13442 : Bytes := ("    let r000034f8: u32 = r000034dd ^ r000034f7;\n" : String).toByteArray.data.toList
theorem checked13442 : bytes13442=statementBytes 13560 (op13442.map lower) ∧ bytes13442.length=48 := by core033_kernel_decide
def op13443 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13443 : Bytes := ("    let r000034f9: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13443 : bytes13443=statementBytes 13561 (op13443.map lower) ∧ bytes13443.length=41 := by core033_kernel_decide
def op13444 : List WordIR.Op := [.bxor 693 13561]
def bytes13444 : Bytes := ("    let r000034fa: u32 = r000002b5 ^ r000034f9;\n" : String).toByteArray.data.toList
theorem checked13444 : bytes13444=statementBytes 13562 (op13444.map lower) ∧ bytes13444.length=48 := by core033_kernel_decide
def op13445 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13445 : Bytes := ("    let r000034fb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13445 : bytes13445=statementBytes 13563 (op13445.map lower) ∧ bytes13445.length=41 := by core033_kernel_decide
def op13446 : List WordIR.Op := [.bnot 13563]
def bytes13446 : Bytes := ("    let r000034fc: u32 = !r000034fb;\n" : String).toByteArray.data.toList
theorem checked13446 : bytes13446=statementBytes 13564 (op13446.map lower) ∧ bytes13446.length=37 := by core033_kernel_decide
def op13447 : List WordIR.Op := [.band 13562 13564]
def bytes13447 : Bytes := ("    let r000034fd: u32 = r000034fa & r000034fc;\n" : String).toByteArray.data.toList
theorem checked13447 : bytes13447=statementBytes 13565 (op13447.map lower) ∧ bytes13447.length=48 := by core033_kernel_decide
def op13448 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13448 : Bytes := ("    let r000034fe: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13448 : bytes13448=statementBytes 13566 (op13448.map lower) ∧ bytes13448.length=41 := by core033_kernel_decide
def op13449 : List WordIR.Op := [.bxor 693 13566]
def bytes13449 : Bytes := ("    let r000034ff: u32 = r000002b5 ^ r000034fe;\n" : String).toByteArray.data.toList
theorem checked13449 : bytes13449=statementBytes 13567 (op13449.map lower) ∧ bytes13449.length=48 := by core033_kernel_decide
def op13450 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13450 : Bytes := ("    let r00003500: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13450 : bytes13450=statementBytes 13568 (op13450.map lower) ∧ bytes13450.length=41 := by core033_kernel_decide
def op13451 : List WordIR.Op := [.bnot 13568]
def bytes13451 : Bytes := ("    let r00003501: u32 = !r00003500;\n" : String).toByteArray.data.toList
theorem checked13451 : bytes13451=statementBytes 13569 (op13451.map lower) ∧ bytes13451.length=37 := by core033_kernel_decide
def op13452 : List WordIR.Op := [.bxor 13567 13569]
def bytes13452 : Bytes := ("    let r00003502: u32 = r000034ff ^ r00003501;\n" : String).toByteArray.data.toList
theorem checked13452 : bytes13452=statementBytes 13570 (op13452.map lower) ∧ bytes13452.length=48 := by core033_kernel_decide
def op13453 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13453 : Bytes := ("    let r00003503: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13453 : bytes13453=statementBytes 13571 (op13453.map lower) ∧ bytes13453.length=41 := by core033_kernel_decide
def op13454 : List WordIR.Op := [.bxor 693 13571]
def bytes13454 : Bytes := ("    let r00003504: u32 = r000002b5 ^ r00003503;\n" : String).toByteArray.data.toList
theorem checked13454 : bytes13454=statementBytes 13572 (op13454.map lower) ∧ bytes13454.length=48 := by core033_kernel_decide
def op13455 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13455 : Bytes := ("    let r00003505: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13455 : bytes13455=statementBytes 13573 (op13455.map lower) ∧ bytes13455.length=41 := by core033_kernel_decide
def op13456 : List WordIR.Op := [.bnot 13573]
def bytes13456 : Bytes := ("    let r00003506: u32 = !r00003505;\n" : String).toByteArray.data.toList
theorem checked13456 : bytes13456=statementBytes 13574 (op13456.map lower) ∧ bytes13456.length=37 := by core033_kernel_decide
def op13457 : List WordIR.Op := [.badd 13572 13574]
def bytes13457 : Bytes := ("    let r00003507: u32 = r00003504.wrapping_add(r00003506);\n" : String).toByteArray.data.toList
theorem checked13457 : bytes13457=statementBytes 13575 (op13457.map lower) ∧ bytes13457.length=60 := by core033_kernel_decide
def op13458 : List WordIR.Op := [.bnot 13575]
def bytes13458 : Bytes := ("    let r00003508: u32 = !r00003507;\n" : String).toByteArray.data.toList
theorem checked13458 : bytes13458=statementBytes 13576 (op13458.map lower) ∧ bytes13458.length=37 := by core033_kernel_decide
def op13459 : List WordIR.Op := [.band 13570 13576]
def bytes13459 : Bytes := ("    let r00003509: u32 = r00003502 & r00003508;\n" : String).toByteArray.data.toList
theorem checked13459 : bytes13459=statementBytes 13577 (op13459.map lower) ∧ bytes13459.length=48 := by core033_kernel_decide
def op13460 : List WordIR.Op := [.bxor 13565 13577]
def bytes13460 : Bytes := ("    let r0000350a: u32 = r000034fd ^ r00003509;\n" : String).toByteArray.data.toList
theorem checked13460 : bytes13460=statementBytes 13578 (op13460.map lower) ∧ bytes13460.length=48 := by core033_kernel_decide
def op13461 : List WordIR.Op := [.shr 13578 31]
def bytes13461 : Bytes := ("    let r0000350b: u32 = r0000350a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13461 : bytes13461=statementBytes 13579 (op13461.map lower) ∧ bytes13461.length=54 := by core033_kernel_decide
def op13462 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13462 : Bytes := ("    let r0000350c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13462 : bytes13462=statementBytes 13580 (op13462.map lower) ∧ bytes13462.length=41 := by core033_kernel_decide
def op13463 : List WordIR.Op := [.bxor 13579 13580]
def bytes13463 : Bytes := ("    let r0000350d: u32 = r0000350b ^ r0000350c;\n" : String).toByteArray.data.toList
theorem checked13463 : bytes13463=statementBytes 13581 (op13463.map lower) ∧ bytes13463.length=48 := by core033_kernel_decide
def op13464 : List WordIR.Op := [.bnot 13581]
def bytes13464 : Bytes := ("    let r0000350e: u32 = !r0000350d;\n" : String).toByteArray.data.toList
theorem checked13464 : bytes13464=statementBytes 13582 (op13464.map lower) ∧ bytes13464.length=37 := by core033_kernel_decide
def op13465 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13465 : Bytes := ("    let r0000350f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13465 : bytes13465=statementBytes 13583 (op13465.map lower) ∧ bytes13465.length=41 := by core033_kernel_decide
def op13466 : List WordIR.Op := [.badd 13582 13583]
def bytes13466 : Bytes := ("    let r00003510: u32 = r0000350e.wrapping_add(r0000350f);\n" : String).toByteArray.data.toList
theorem checked13466 : bytes13466=statementBytes 13584 (op13466.map lower) ∧ bytes13466.length=60 := by core033_kernel_decide
def op13467 : List WordIR.Op := [.band 13584 11071]
def bytes13467 : Bytes := ("    let r00003511: u32 = r00003510 & r00002b3f;\n" : String).toByteArray.data.toList
theorem checked13467 : bytes13467=statementBytes 13585 (op13467.map lower) ∧ bytes13467.length=48 := by core033_kernel_decide
def op13468 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13468 : Bytes := ("    let r00003512: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13468 : bytes13468=statementBytes 13586 (op13468.map lower) ∧ bytes13468.length=41 := by core033_kernel_decide
def op13469 : List WordIR.Op := [.bxor 693 13586]
def bytes13469 : Bytes := ("    let r00003513: u32 = r000002b5 ^ r00003512;\n" : String).toByteArray.data.toList
theorem checked13469 : bytes13469=statementBytes 13587 (op13469.map lower) ∧ bytes13469.length=48 := by core033_kernel_decide
def op13470 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13470 : Bytes := ("    let r00003514: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13470 : bytes13470=statementBytes 13588 (op13470.map lower) ∧ bytes13470.length=41 := by core033_kernel_decide
def op13471 : List WordIR.Op := [.bnot 13588]
def bytes13471 : Bytes := ("    let r00003515: u32 = !r00003514;\n" : String).toByteArray.data.toList
theorem checked13471 : bytes13471=statementBytes 13589 (op13471.map lower) ∧ bytes13471.length=37 := by core033_kernel_decide
def op13472 : List WordIR.Op := [.band 13587 13589]
def bytes13472 : Bytes := ("    let r00003516: u32 = r00003513 & r00003515;\n" : String).toByteArray.data.toList
theorem checked13472 : bytes13472=statementBytes 13590 (op13472.map lower) ∧ bytes13472.length=48 := by core033_kernel_decide
def op13473 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13473 : Bytes := ("    let r00003517: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13473 : bytes13473=statementBytes 13591 (op13473.map lower) ∧ bytes13473.length=41 := by core033_kernel_decide
def op13474 : List WordIR.Op := [.bxor 693 13591]
def bytes13474 : Bytes := ("    let r00003518: u32 = r000002b5 ^ r00003517;\n" : String).toByteArray.data.toList
theorem checked13474 : bytes13474=statementBytes 13592 (op13474.map lower) ∧ bytes13474.length=48 := by core033_kernel_decide
def op13475 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13475 : Bytes := ("    let r00003519: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13475 : bytes13475=statementBytes 13593 (op13475.map lower) ∧ bytes13475.length=41 := by core033_kernel_decide
def op13476 : List WordIR.Op := [.bnot 13593]
def bytes13476 : Bytes := ("    let r0000351a: u32 = !r00003519;\n" : String).toByteArray.data.toList
theorem checked13476 : bytes13476=statementBytes 13594 (op13476.map lower) ∧ bytes13476.length=37 := by core033_kernel_decide
def op13477 : List WordIR.Op := [.bxor 13592 13594]
def bytes13477 : Bytes := ("    let r0000351b: u32 = r00003518 ^ r0000351a;\n" : String).toByteArray.data.toList
theorem checked13477 : bytes13477=statementBytes 13595 (op13477.map lower) ∧ bytes13477.length=48 := by core033_kernel_decide
def op13478 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13478 : Bytes := ("    let r0000351c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13478 : bytes13478=statementBytes 13596 (op13478.map lower) ∧ bytes13478.length=41 := by core033_kernel_decide
def op13479 : List WordIR.Op := [.bxor 693 13596]
def bytes13479 : Bytes := ("    let r0000351d: u32 = r000002b5 ^ r0000351c;\n" : String).toByteArray.data.toList
theorem checked13479 : bytes13479=statementBytes 13597 (op13479.map lower) ∧ bytes13479.length=48 := by core033_kernel_decide
def op13480 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13480 : Bytes := ("    let r0000351e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13480 : bytes13480=statementBytes 13598 (op13480.map lower) ∧ bytes13480.length=41 := by core033_kernel_decide
def op13481 : List WordIR.Op := [.bnot 13598]
def bytes13481 : Bytes := ("    let r0000351f: u32 = !r0000351e;\n" : String).toByteArray.data.toList
theorem checked13481 : bytes13481=statementBytes 13599 (op13481.map lower) ∧ bytes13481.length=37 := by core033_kernel_decide
def op13482 : List WordIR.Op := [.badd 13597 13599]
def bytes13482 : Bytes := ("    let r00003520: u32 = r0000351d.wrapping_add(r0000351f);\n" : String).toByteArray.data.toList
theorem checked13482 : bytes13482=statementBytes 13600 (op13482.map lower) ∧ bytes13482.length=60 := by core033_kernel_decide
def op13483 : List WordIR.Op := [.bnot 13600]
def bytes13483 : Bytes := ("    let r00003521: u32 = !r00003520;\n" : String).toByteArray.data.toList
theorem checked13483 : bytes13483=statementBytes 13601 (op13483.map lower) ∧ bytes13483.length=37 := by core033_kernel_decide
def op13484 : List WordIR.Op := [.band 13595 13601]
def bytes13484 : Bytes := ("    let r00003522: u32 = r0000351b & r00003521;\n" : String).toByteArray.data.toList
theorem checked13484 : bytes13484=statementBytes 13602 (op13484.map lower) ∧ bytes13484.length=48 := by core033_kernel_decide
def op13485 : List WordIR.Op := [.bxor 13590 13602]
def bytes13485 : Bytes := ("    let r00003523: u32 = r00003516 ^ r00003522;\n" : String).toByteArray.data.toList
theorem checked13485 : bytes13485=statementBytes 13603 (op13485.map lower) ∧ bytes13485.length=48 := by core033_kernel_decide
def op13486 : List WordIR.Op := [.shr 13603 31]
def bytes13486 : Bytes := ("    let r00003524: u32 = r00003523 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked13486 : bytes13486=statementBytes 13604 (op13486.map lower) ∧ bytes13486.length=54 := by core033_kernel_decide
def op13487 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13487 : Bytes := ("    let r00003525: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13487 : bytes13487=statementBytes 13605 (op13487.map lower) ∧ bytes13487.length=41 := by core033_kernel_decide
def op13488 : List WordIR.Op := [.bxor 13604 13605]
def bytes13488 : Bytes := ("    let r00003526: u32 = r00003524 ^ r00003525;\n" : String).toByteArray.data.toList
theorem checked13488 : bytes13488=statementBytes 13606 (op13488.map lower) ∧ bytes13488.length=48 := by core033_kernel_decide
def op13489 : List WordIR.Op := [.bnot 13606]
def bytes13489 : Bytes := ("    let r00003527: u32 = !r00003526;\n" : String).toByteArray.data.toList
theorem checked13489 : bytes13489=statementBytes 13607 (op13489.map lower) ∧ bytes13489.length=37 := by core033_kernel_decide
def op13490 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes13490 : Bytes := ("    let r00003528: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked13490 : bytes13490=statementBytes 13608 (op13490.map lower) ∧ bytes13490.length=41 := by core033_kernel_decide
def op13491 : List WordIR.Op := [.badd 13607 13608]
def bytes13491 : Bytes := ("    let r00003529: u32 = r00003527.wrapping_add(r00003528);\n" : String).toByteArray.data.toList
theorem checked13491 : bytes13491=statementBytes 13609 (op13491.map lower) ∧ bytes13491.length=60 := by core033_kernel_decide
def op13492 : List WordIR.Op := [.bnot 13609]
def bytes13492 : Bytes := ("    let r0000352a: u32 = !r00003529;\n" : String).toByteArray.data.toList
theorem checked13492 : bytes13492=statementBytes 13610 (op13492.map lower) ∧ bytes13492.length=37 := by core033_kernel_decide
def op13493 : List WordIR.Op := [.band 13610 10490]
def bytes13493 : Bytes := ("    let r0000352b: u32 = r0000352a & r000028fa;\n" : String).toByteArray.data.toList
theorem checked13493 : bytes13493=statementBytes 13611 (op13493.map lower) ∧ bytes13493.length=48 := by core033_kernel_decide
def op13494 : List WordIR.Op := [.bxor 13585 13611]
def bytes13494 : Bytes := ("    let r0000352c: u32 = r00003511 ^ r0000352b;\n" : String).toByteArray.data.toList
theorem checked13494 : bytes13494=statementBytes 13612 (op13494.map lower) ∧ bytes13494.length=48 := by core033_kernel_decide
def op13495 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13495 : Bytes := ("    let r0000352d: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13495 : bytes13495=statementBytes 13613 (op13495.map lower) ∧ bytes13495.length=41 := by core033_kernel_decide
def op13496 : List WordIR.Op := [.bxor 693 13613]
def bytes13496 : Bytes := ("    let r0000352e: u32 = r000002b5 ^ r0000352d;\n" : String).toByteArray.data.toList
theorem checked13496 : bytes13496=statementBytes 13614 (op13496.map lower) ∧ bytes13496.length=48 := by core033_kernel_decide
def op13497 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13497 : Bytes := ("    let r0000352f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13497 : bytes13497=statementBytes 13615 (op13497.map lower) ∧ bytes13497.length=41 := by core033_kernel_decide
def op13498 : List WordIR.Op := [.bnot 13615]
def bytes13498 : Bytes := ("    let r00003530: u32 = !r0000352f;\n" : String).toByteArray.data.toList
theorem checked13498 : bytes13498=statementBytes 13616 (op13498.map lower) ∧ bytes13498.length=37 := by core033_kernel_decide
def op13499 : List WordIR.Op := [.band 13614 13616]
def bytes13499 : Bytes := ("    let r00003531: u32 = r0000352e & r00003530;\n" : String).toByteArray.data.toList
theorem checked13499 : bytes13499=statementBytes 13617 (op13499.map lower) ∧ bytes13499.length=48 := by core033_kernel_decide
def op13500 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes13500 : Bytes := ("    let r00003532: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked13500 : bytes13500=statementBytes 13618 (op13500.map lower) ∧ bytes13500.length=41 := by core033_kernel_decide
def op13501 : List WordIR.Op := [.bxor 693 13618]
def bytes13501 : Bytes := ("    let r00003533: u32 = r000002b5 ^ r00003532;\n" : String).toByteArray.data.toList
theorem checked13501 : bytes13501=statementBytes 13619 (op13501.map lower) ∧ bytes13501.length=48 := by core033_kernel_decide
def op13502 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes13502 : Bytes := ("    let r00003534: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked13502 : bytes13502=statementBytes 13620 (op13502.map lower) ∧ bytes13502.length=41 := by core033_kernel_decide
def op13503 : List WordIR.Op := [.bnot 13620]
def bytes13503 : Bytes := ("    let r00003535: u32 = !r00003534;\n" : String).toByteArray.data.toList
theorem checked13503 : bytes13503=statementBytes 13621 (op13503.map lower) ∧ bytes13503.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op13440,op13441,op13442,op13443,op13444,op13445,op13446,op13447,op13448,op13449,op13450,op13451,op13452,op13453,op13454,op13455,op13456,op13457,op13458,op13459,op13460,op13461,op13462,op13463,op13464,op13465,op13466,op13467,op13468,op13469,op13470,op13471,op13472,op13473,op13474,op13475,op13476,op13477,op13478,op13479,op13480,op13481,op13482,op13483,op13484,op13485,op13486,op13487,op13488,op13489,op13490,op13491,op13492,op13493,op13494,op13495,op13496,op13497,op13498,op13499,op13500,op13501,op13502,op13503]
def chunks : List Bytes := [bytes13440,bytes13441,bytes13442,bytes13443,bytes13444,bytes13445,bytes13446,bytes13447,bytes13448,bytes13449,bytes13450,bytes13451,bytes13452,bytes13453,bytes13454,bytes13455,bytes13456,bytes13457,bytes13458,bytes13459,bytes13460,bytes13461,bytes13462,bytes13463,bytes13464,bytes13465,bytes13466,bytes13467,bytes13468,bytes13469,bytes13470,bytes13471,bytes13472,bytes13473,bytes13474,bytes13475,bytes13476,bytes13477,bytes13478,bytes13479,bytes13480,bytes13481,bytes13482,bytes13483,bytes13484,bytes13485,bytes13486,bytes13487,bytes13488,bytes13489,bytes13490,bytes13491,bytes13492,bytes13493,bytes13494,bytes13495,bytes13496,bytes13497,bytes13498,bytes13499,bytes13500,bytes13501,bytes13502,bytes13503]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 13558 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked13440.1 (.cons _ _ _ _ _ checked13441.1 (.cons _ _ _ _ _ checked13442.1 (.cons _ _ _ _ _ checked13443.1 (.cons _ _ _ _ _ checked13444.1 (.cons _ _ _ _ _ checked13445.1 (.cons _ _ _ _ _ checked13446.1 (.cons _ _ _ _ _ checked13447.1 (.cons _ _ _ _ _ checked13448.1 (.cons _ _ _ _ _ checked13449.1 (.cons _ _ _ _ _ checked13450.1 (.cons _ _ _ _ _ checked13451.1 (.cons _ _ _ _ _ checked13452.1 (.cons _ _ _ _ _ checked13453.1 (.cons _ _ _ _ _ checked13454.1 (.cons _ _ _ _ _ checked13455.1 (.cons _ _ _ _ _ checked13456.1 (.cons _ _ _ _ _ checked13457.1 (.cons _ _ _ _ _ checked13458.1 (.cons _ _ _ _ _ checked13459.1 (.cons _ _ _ _ _ checked13460.1 (.cons _ _ _ _ _ checked13461.1 (.cons _ _ _ _ _ checked13462.1 (.cons _ _ _ _ _ checked13463.1 (.cons _ _ _ _ _ checked13464.1 (.cons _ _ _ _ _ checked13465.1 (.cons _ _ _ _ _ checked13466.1 (.cons _ _ _ _ _ checked13467.1 (.cons _ _ _ _ _ checked13468.1 (.cons _ _ _ _ _ checked13469.1 (.cons _ _ _ _ _ checked13470.1 (.cons _ _ _ _ _ checked13471.1 (.cons _ _ _ _ _ checked13472.1 (.cons _ _ _ _ _ checked13473.1 (.cons _ _ _ _ _ checked13474.1 (.cons _ _ _ _ _ checked13475.1 (.cons _ _ _ _ _ checked13476.1 (.cons _ _ _ _ _ checked13477.1 (.cons _ _ _ _ _ checked13478.1 (.cons _ _ _ _ _ checked13479.1 (.cons _ _ _ _ _ checked13480.1 (.cons _ _ _ _ _ checked13481.1 (.cons _ _ _ _ _ checked13482.1 (.cons _ _ _ _ _ checked13483.1 (.cons _ _ _ _ _ checked13484.1 (.cons _ _ _ _ _ checked13485.1 (.cons _ _ _ _ _ checked13486.1 (.cons _ _ _ _ _ checked13487.1 (.cons _ _ _ _ _ checked13488.1 (.cons _ _ _ _ _ checked13489.1 (.cons _ _ _ _ _ checked13490.1 (.cons _ _ _ _ _ checked13491.1 (.cons _ _ _ _ _ checked13492.1 (.cons _ _ _ _ _ checked13493.1 (.cons _ _ _ _ _ checked13494.1 (.cons _ _ _ _ _ checked13495.1 (.cons _ _ _ _ _ checked13496.1 (.cons _ _ _ _ _ checked13497.1 (.cons _ _ _ _ _ checked13498.1 (.cons _ _ _ _ _ checked13499.1 (.cons _ _ _ _ _ checked13500.1 (.cons _ _ _ _ _ checked13501.1 (.cons _ _ _ _ _ checked13502.1 (.cons _ _ _ _ _ checked13503.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 13558 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2838 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked13440.2,checked13441.2,checked13442.2,checked13443.2,checked13444.2,checked13445.2,checked13446.2,checked13447.2,checked13448.2,checked13449.2,checked13450.2,checked13451.2,checked13452.2,checked13453.2,checked13454.2,checked13455.2,checked13456.2,checked13457.2,checked13458.2,checked13459.2,checked13460.2,checked13461.2,checked13462.2,checked13463.2,checked13464.2,checked13465.2,checked13466.2,checked13467.2,checked13468.2,checked13469.2,checked13470.2,checked13471.2,checked13472.2,checked13473.2,checked13474.2,checked13475.2,checked13476.2,checked13477.2,checked13478.2,checked13479.2,checked13480.2,checked13481.2,checked13482.2,checked13483.2,checked13484.2,checked13485.2,checked13486.2,checked13487.2,checked13488.2,checked13489.2,checked13490.2,checked13491.2,checked13492.2,checked13493.2,checked13494.2,checked13495.2,checked13496.2,checked13497.2,checked13498.2,checked13499.2,checked13500.2,checked13501.2,checked13502.2,checked13503.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup210
