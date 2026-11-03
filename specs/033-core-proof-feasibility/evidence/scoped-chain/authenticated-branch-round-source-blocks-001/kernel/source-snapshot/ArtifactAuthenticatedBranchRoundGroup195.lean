import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup195
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op12480 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12480 : Bytes := ("    let r00003136: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12480 : bytes12480=statementBytes 12598 (op12480.map lower) ∧ bytes12480.length=41 := by core033_kernel_decide
def op12481 : List WordIR.Op := [.bxor 693 12598]
def bytes12481 : Bytes := ("    let r00003137: u32 = r000002b5 ^ r00003136;\n" : String).toByteArray.data.toList
theorem checked12481 : bytes12481=statementBytes 12599 (op12481.map lower) ∧ bytes12481.length=48 := by core033_kernel_decide
def op12482 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12482 : Bytes := ("    let r00003138: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12482 : bytes12482=statementBytes 12600 (op12482.map lower) ∧ bytes12482.length=41 := by core033_kernel_decide
def op12483 : List WordIR.Op := [.bnot 12600]
def bytes12483 : Bytes := ("    let r00003139: u32 = !r00003138;\n" : String).toByteArray.data.toList
theorem checked12483 : bytes12483=statementBytes 12601 (op12483.map lower) ∧ bytes12483.length=37 := by core033_kernel_decide
def op12484 : List WordIR.Op := [.band 12599 12601]
def bytes12484 : Bytes := ("    let r0000313a: u32 = r00003137 & r00003139;\n" : String).toByteArray.data.toList
theorem checked12484 : bytes12484=statementBytes 12602 (op12484.map lower) ∧ bytes12484.length=48 := by core033_kernel_decide
def op12485 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12485 : Bytes := ("    let r0000313b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12485 : bytes12485=statementBytes 12603 (op12485.map lower) ∧ bytes12485.length=41 := by core033_kernel_decide
def op12486 : List WordIR.Op := [.bxor 693 12603]
def bytes12486 : Bytes := ("    let r0000313c: u32 = r000002b5 ^ r0000313b;\n" : String).toByteArray.data.toList
theorem checked12486 : bytes12486=statementBytes 12604 (op12486.map lower) ∧ bytes12486.length=48 := by core033_kernel_decide
def op12487 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12487 : Bytes := ("    let r0000313d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12487 : bytes12487=statementBytes 12605 (op12487.map lower) ∧ bytes12487.length=41 := by core033_kernel_decide
def op12488 : List WordIR.Op := [.bnot 12605]
def bytes12488 : Bytes := ("    let r0000313e: u32 = !r0000313d;\n" : String).toByteArray.data.toList
theorem checked12488 : bytes12488=statementBytes 12606 (op12488.map lower) ∧ bytes12488.length=37 := by core033_kernel_decide
def op12489 : List WordIR.Op := [.bxor 12604 12606]
def bytes12489 : Bytes := ("    let r0000313f: u32 = r0000313c ^ r0000313e;\n" : String).toByteArray.data.toList
theorem checked12489 : bytes12489=statementBytes 12607 (op12489.map lower) ∧ bytes12489.length=48 := by core033_kernel_decide
def op12490 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12490 : Bytes := ("    let r00003140: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12490 : bytes12490=statementBytes 12608 (op12490.map lower) ∧ bytes12490.length=41 := by core033_kernel_decide
def op12491 : List WordIR.Op := [.bxor 693 12608]
def bytes12491 : Bytes := ("    let r00003141: u32 = r000002b5 ^ r00003140;\n" : String).toByteArray.data.toList
theorem checked12491 : bytes12491=statementBytes 12609 (op12491.map lower) ∧ bytes12491.length=48 := by core033_kernel_decide
def op12492 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12492 : Bytes := ("    let r00003142: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12492 : bytes12492=statementBytes 12610 (op12492.map lower) ∧ bytes12492.length=41 := by core033_kernel_decide
def op12493 : List WordIR.Op := [.bnot 12610]
def bytes12493 : Bytes := ("    let r00003143: u32 = !r00003142;\n" : String).toByteArray.data.toList
theorem checked12493 : bytes12493=statementBytes 12611 (op12493.map lower) ∧ bytes12493.length=37 := by core033_kernel_decide
def op12494 : List WordIR.Op := [.badd 12609 12611]
def bytes12494 : Bytes := ("    let r00003144: u32 = r00003141.wrapping_add(r00003143);\n" : String).toByteArray.data.toList
theorem checked12494 : bytes12494=statementBytes 12612 (op12494.map lower) ∧ bytes12494.length=60 := by core033_kernel_decide
def op12495 : List WordIR.Op := [.bnot 12612]
def bytes12495 : Bytes := ("    let r00003145: u32 = !r00003144;\n" : String).toByteArray.data.toList
theorem checked12495 : bytes12495=statementBytes 12613 (op12495.map lower) ∧ bytes12495.length=37 := by core033_kernel_decide
def op12496 : List WordIR.Op := [.band 12607 12613]
def bytes12496 : Bytes := ("    let r00003146: u32 = r0000313f & r00003145;\n" : String).toByteArray.data.toList
theorem checked12496 : bytes12496=statementBytes 12614 (op12496.map lower) ∧ bytes12496.length=48 := by core033_kernel_decide
def op12497 : List WordIR.Op := [.bxor 12602 12614]
def bytes12497 : Bytes := ("    let r00003147: u32 = r0000313a ^ r00003146;\n" : String).toByteArray.data.toList
theorem checked12497 : bytes12497=statementBytes 12615 (op12497.map lower) ∧ bytes12497.length=48 := by core033_kernel_decide
def op12498 : List WordIR.Op := [.shr 12615 31]
def bytes12498 : Bytes := ("    let r00003148: u32 = r00003147 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12498 : bytes12498=statementBytes 12616 (op12498.map lower) ∧ bytes12498.length=54 := by core033_kernel_decide
def op12499 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12499 : Bytes := ("    let r00003149: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12499 : bytes12499=statementBytes 12617 (op12499.map lower) ∧ bytes12499.length=41 := by core033_kernel_decide
def op12500 : List WordIR.Op := [.bxor 12616 12617]
def bytes12500 : Bytes := ("    let r0000314a: u32 = r00003148 ^ r00003149;\n" : String).toByteArray.data.toList
theorem checked12500 : bytes12500=statementBytes 12618 (op12500.map lower) ∧ bytes12500.length=48 := by core033_kernel_decide
def op12501 : List WordIR.Op := [.bnot 12618]
def bytes12501 : Bytes := ("    let r0000314b: u32 = !r0000314a;\n" : String).toByteArray.data.toList
theorem checked12501 : bytes12501=statementBytes 12619 (op12501.map lower) ∧ bytes12501.length=37 := by core033_kernel_decide
def op12502 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12502 : Bytes := ("    let r0000314c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12502 : bytes12502=statementBytes 12620 (op12502.map lower) ∧ bytes12502.length=41 := by core033_kernel_decide
def op12503 : List WordIR.Op := [.badd 12619 12620]
def bytes12503 : Bytes := ("    let r0000314d: u32 = r0000314b.wrapping_add(r0000314c);\n" : String).toByteArray.data.toList
theorem checked12503 : bytes12503=statementBytes 12621 (op12503.map lower) ∧ bytes12503.length=60 := by core033_kernel_decide
def op12504 : List WordIR.Op := [.bnot 12621]
def bytes12504 : Bytes := ("    let r0000314e: u32 = !r0000314d;\n" : String).toByteArray.data.toList
theorem checked12504 : bytes12504=statementBytes 12622 (op12504.map lower) ∧ bytes12504.length=37 := by core033_kernel_decide
def op12505 : List WordIR.Op := [.band 12622 1541]
def bytes12505 : Bytes := ("    let r0000314f: u32 = r0000314e & r00000605;\n" : String).toByteArray.data.toList
theorem checked12505 : bytes12505=statementBytes 12623 (op12505.map lower) ∧ bytes12505.length=48 := by core033_kernel_decide
def op12506 : List WordIR.Op := [.bxor 12597 12623]
def bytes12506 : Bytes := ("    let r00003150: u32 = r00003135 ^ r0000314f;\n" : String).toByteArray.data.toList
theorem checked12506 : bytes12506=statementBytes 12624 (op12506.map lower) ∧ bytes12506.length=48 := by core033_kernel_decide
def op12507 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12507 : Bytes := ("    let r00003151: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12507 : bytes12507=statementBytes 12625 (op12507.map lower) ∧ bytes12507.length=41 := by core033_kernel_decide
def op12508 : List WordIR.Op := [.bxor 693 12625]
def bytes12508 : Bytes := ("    let r00003152: u32 = r000002b5 ^ r00003151;\n" : String).toByteArray.data.toList
theorem checked12508 : bytes12508=statementBytes 12626 (op12508.map lower) ∧ bytes12508.length=48 := by core033_kernel_decide
def op12509 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12509 : Bytes := ("    let r00003153: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12509 : bytes12509=statementBytes 12627 (op12509.map lower) ∧ bytes12509.length=41 := by core033_kernel_decide
def op12510 : List WordIR.Op := [.bnot 12627]
def bytes12510 : Bytes := ("    let r00003154: u32 = !r00003153;\n" : String).toByteArray.data.toList
theorem checked12510 : bytes12510=statementBytes 12628 (op12510.map lower) ∧ bytes12510.length=37 := by core033_kernel_decide
def op12511 : List WordIR.Op := [.band 12626 12628]
def bytes12511 : Bytes := ("    let r00003155: u32 = r00003152 & r00003154;\n" : String).toByteArray.data.toList
theorem checked12511 : bytes12511=statementBytes 12629 (op12511.map lower) ∧ bytes12511.length=48 := by core033_kernel_decide
def op12512 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12512 : Bytes := ("    let r00003156: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12512 : bytes12512=statementBytes 12630 (op12512.map lower) ∧ bytes12512.length=41 := by core033_kernel_decide
def op12513 : List WordIR.Op := [.bxor 693 12630]
def bytes12513 : Bytes := ("    let r00003157: u32 = r000002b5 ^ r00003156;\n" : String).toByteArray.data.toList
theorem checked12513 : bytes12513=statementBytes 12631 (op12513.map lower) ∧ bytes12513.length=48 := by core033_kernel_decide
def op12514 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12514 : Bytes := ("    let r00003158: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12514 : bytes12514=statementBytes 12632 (op12514.map lower) ∧ bytes12514.length=41 := by core033_kernel_decide
def op12515 : List WordIR.Op := [.bnot 12632]
def bytes12515 : Bytes := ("    let r00003159: u32 = !r00003158;\n" : String).toByteArray.data.toList
theorem checked12515 : bytes12515=statementBytes 12633 (op12515.map lower) ∧ bytes12515.length=37 := by core033_kernel_decide
def op12516 : List WordIR.Op := [.bxor 12631 12633]
def bytes12516 : Bytes := ("    let r0000315a: u32 = r00003157 ^ r00003159;\n" : String).toByteArray.data.toList
theorem checked12516 : bytes12516=statementBytes 12634 (op12516.map lower) ∧ bytes12516.length=48 := by core033_kernel_decide
def op12517 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12517 : Bytes := ("    let r0000315b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12517 : bytes12517=statementBytes 12635 (op12517.map lower) ∧ bytes12517.length=41 := by core033_kernel_decide
def op12518 : List WordIR.Op := [.bxor 693 12635]
def bytes12518 : Bytes := ("    let r0000315c: u32 = r000002b5 ^ r0000315b;\n" : String).toByteArray.data.toList
theorem checked12518 : bytes12518=statementBytes 12636 (op12518.map lower) ∧ bytes12518.length=48 := by core033_kernel_decide
def op12519 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12519 : Bytes := ("    let r0000315d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12519 : bytes12519=statementBytes 12637 (op12519.map lower) ∧ bytes12519.length=41 := by core033_kernel_decide
def op12520 : List WordIR.Op := [.bnot 12637]
def bytes12520 : Bytes := ("    let r0000315e: u32 = !r0000315d;\n" : String).toByteArray.data.toList
theorem checked12520 : bytes12520=statementBytes 12638 (op12520.map lower) ∧ bytes12520.length=37 := by core033_kernel_decide
def op12521 : List WordIR.Op := [.badd 12636 12638]
def bytes12521 : Bytes := ("    let r0000315f: u32 = r0000315c.wrapping_add(r0000315e);\n" : String).toByteArray.data.toList
theorem checked12521 : bytes12521=statementBytes 12639 (op12521.map lower) ∧ bytes12521.length=60 := by core033_kernel_decide
def op12522 : List WordIR.Op := [.bnot 12639]
def bytes12522 : Bytes := ("    let r00003160: u32 = !r0000315f;\n" : String).toByteArray.data.toList
theorem checked12522 : bytes12522=statementBytes 12640 (op12522.map lower) ∧ bytes12522.length=37 := by core033_kernel_decide
def op12523 : List WordIR.Op := [.band 12634 12640]
def bytes12523 : Bytes := ("    let r00003161: u32 = r0000315a & r00003160;\n" : String).toByteArray.data.toList
theorem checked12523 : bytes12523=statementBytes 12641 (op12523.map lower) ∧ bytes12523.length=48 := by core033_kernel_decide
def op12524 : List WordIR.Op := [.bxor 12629 12641]
def bytes12524 : Bytes := ("    let r00003162: u32 = r00003155 ^ r00003161;\n" : String).toByteArray.data.toList
theorem checked12524 : bytes12524=statementBytes 12642 (op12524.map lower) ∧ bytes12524.length=48 := by core033_kernel_decide
def op12525 : List WordIR.Op := [.shr 12642 31]
def bytes12525 : Bytes := ("    let r00003163: u32 = r00003162 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked12525 : bytes12525=statementBytes 12643 (op12525.map lower) ∧ bytes12525.length=54 := by core033_kernel_decide
def op12526 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12526 : Bytes := ("    let r00003164: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12526 : bytes12526=statementBytes 12644 (op12526.map lower) ∧ bytes12526.length=41 := by core033_kernel_decide
def op12527 : List WordIR.Op := [.bxor 12643 12644]
def bytes12527 : Bytes := ("    let r00003165: u32 = r00003163 ^ r00003164;\n" : String).toByteArray.data.toList
theorem checked12527 : bytes12527=statementBytes 12645 (op12527.map lower) ∧ bytes12527.length=48 := by core033_kernel_decide
def op12528 : List WordIR.Op := [.bnot 12645]
def bytes12528 : Bytes := ("    let r00003166: u32 = !r00003165;\n" : String).toByteArray.data.toList
theorem checked12528 : bytes12528=statementBytes 12646 (op12528.map lower) ∧ bytes12528.length=37 := by core033_kernel_decide
def op12529 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes12529 : Bytes := ("    let r00003167: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked12529 : bytes12529=statementBytes 12647 (op12529.map lower) ∧ bytes12529.length=41 := by core033_kernel_decide
def op12530 : List WordIR.Op := [.badd 12646 12647]
def bytes12530 : Bytes := ("    let r00003168: u32 = r00003166.wrapping_add(r00003167);\n" : String).toByteArray.data.toList
theorem checked12530 : bytes12530=statementBytes 12648 (op12530.map lower) ∧ bytes12530.length=60 := by core033_kernel_decide
def op12531 : List WordIR.Op := [.band 12648 10873]
def bytes12531 : Bytes := ("    let r00003169: u32 = r00003168 & r00002a79;\n" : String).toByteArray.data.toList
theorem checked12531 : bytes12531=statementBytes 12649 (op12531.map lower) ∧ bytes12531.length=48 := by core033_kernel_decide
def op12532 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12532 : Bytes := ("    let r0000316a: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12532 : bytes12532=statementBytes 12650 (op12532.map lower) ∧ bytes12532.length=41 := by core033_kernel_decide
def op12533 : List WordIR.Op := [.bxor 693 12650]
def bytes12533 : Bytes := ("    let r0000316b: u32 = r000002b5 ^ r0000316a;\n" : String).toByteArray.data.toList
theorem checked12533 : bytes12533=statementBytes 12651 (op12533.map lower) ∧ bytes12533.length=48 := by core033_kernel_decide
def op12534 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12534 : Bytes := ("    let r0000316c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12534 : bytes12534=statementBytes 12652 (op12534.map lower) ∧ bytes12534.length=41 := by core033_kernel_decide
def op12535 : List WordIR.Op := [.bnot 12652]
def bytes12535 : Bytes := ("    let r0000316d: u32 = !r0000316c;\n" : String).toByteArray.data.toList
theorem checked12535 : bytes12535=statementBytes 12653 (op12535.map lower) ∧ bytes12535.length=37 := by core033_kernel_decide
def op12536 : List WordIR.Op := [.band 12651 12653]
def bytes12536 : Bytes := ("    let r0000316e: u32 = r0000316b & r0000316d;\n" : String).toByteArray.data.toList
theorem checked12536 : bytes12536=statementBytes 12654 (op12536.map lower) ∧ bytes12536.length=48 := by core033_kernel_decide
def op12537 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12537 : Bytes := ("    let r0000316f: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12537 : bytes12537=statementBytes 12655 (op12537.map lower) ∧ bytes12537.length=41 := by core033_kernel_decide
def op12538 : List WordIR.Op := [.bxor 693 12655]
def bytes12538 : Bytes := ("    let r00003170: u32 = r000002b5 ^ r0000316f;\n" : String).toByteArray.data.toList
theorem checked12538 : bytes12538=statementBytes 12656 (op12538.map lower) ∧ bytes12538.length=48 := by core033_kernel_decide
def op12539 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes12539 : Bytes := ("    let r00003171: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked12539 : bytes12539=statementBytes 12657 (op12539.map lower) ∧ bytes12539.length=41 := by core033_kernel_decide
def op12540 : List WordIR.Op := [.bnot 12657]
def bytes12540 : Bytes := ("    let r00003172: u32 = !r00003171;\n" : String).toByteArray.data.toList
theorem checked12540 : bytes12540=statementBytes 12658 (op12540.map lower) ∧ bytes12540.length=37 := by core033_kernel_decide
def op12541 : List WordIR.Op := [.bxor 12656 12658]
def bytes12541 : Bytes := ("    let r00003173: u32 = r00003170 ^ r00003172;\n" : String).toByteArray.data.toList
theorem checked12541 : bytes12541=statementBytes 12659 (op12541.map lower) ∧ bytes12541.length=48 := by core033_kernel_decide
def op12542 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes12542 : Bytes := ("    let r00003174: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked12542 : bytes12542=statementBytes 12660 (op12542.map lower) ∧ bytes12542.length=41 := by core033_kernel_decide
def op12543 : List WordIR.Op := [.bxor 693 12660]
def bytes12543 : Bytes := ("    let r00003175: u32 = r000002b5 ^ r00003174;\n" : String).toByteArray.data.toList
theorem checked12543 : bytes12543=statementBytes 12661 (op12543.map lower) ∧ bytes12543.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op12480,op12481,op12482,op12483,op12484,op12485,op12486,op12487,op12488,op12489,op12490,op12491,op12492,op12493,op12494,op12495,op12496,op12497,op12498,op12499,op12500,op12501,op12502,op12503,op12504,op12505,op12506,op12507,op12508,op12509,op12510,op12511,op12512,op12513,op12514,op12515,op12516,op12517,op12518,op12519,op12520,op12521,op12522,op12523,op12524,op12525,op12526,op12527,op12528,op12529,op12530,op12531,op12532,op12533,op12534,op12535,op12536,op12537,op12538,op12539,op12540,op12541,op12542,op12543]
def chunks : List Bytes := [bytes12480,bytes12481,bytes12482,bytes12483,bytes12484,bytes12485,bytes12486,bytes12487,bytes12488,bytes12489,bytes12490,bytes12491,bytes12492,bytes12493,bytes12494,bytes12495,bytes12496,bytes12497,bytes12498,bytes12499,bytes12500,bytes12501,bytes12502,bytes12503,bytes12504,bytes12505,bytes12506,bytes12507,bytes12508,bytes12509,bytes12510,bytes12511,bytes12512,bytes12513,bytes12514,bytes12515,bytes12516,bytes12517,bytes12518,bytes12519,bytes12520,bytes12521,bytes12522,bytes12523,bytes12524,bytes12525,bytes12526,bytes12527,bytes12528,bytes12529,bytes12530,bytes12531,bytes12532,bytes12533,bytes12534,bytes12535,bytes12536,bytes12537,bytes12538,bytes12539,bytes12540,bytes12541,bytes12542,bytes12543]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 12598 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked12480.1 (.cons _ _ _ _ _ checked12481.1 (.cons _ _ _ _ _ checked12482.1 (.cons _ _ _ _ _ checked12483.1 (.cons _ _ _ _ _ checked12484.1 (.cons _ _ _ _ _ checked12485.1 (.cons _ _ _ _ _ checked12486.1 (.cons _ _ _ _ _ checked12487.1 (.cons _ _ _ _ _ checked12488.1 (.cons _ _ _ _ _ checked12489.1 (.cons _ _ _ _ _ checked12490.1 (.cons _ _ _ _ _ checked12491.1 (.cons _ _ _ _ _ checked12492.1 (.cons _ _ _ _ _ checked12493.1 (.cons _ _ _ _ _ checked12494.1 (.cons _ _ _ _ _ checked12495.1 (.cons _ _ _ _ _ checked12496.1 (.cons _ _ _ _ _ checked12497.1 (.cons _ _ _ _ _ checked12498.1 (.cons _ _ _ _ _ checked12499.1 (.cons _ _ _ _ _ checked12500.1 (.cons _ _ _ _ _ checked12501.1 (.cons _ _ _ _ _ checked12502.1 (.cons _ _ _ _ _ checked12503.1 (.cons _ _ _ _ _ checked12504.1 (.cons _ _ _ _ _ checked12505.1 (.cons _ _ _ _ _ checked12506.1 (.cons _ _ _ _ _ checked12507.1 (.cons _ _ _ _ _ checked12508.1 (.cons _ _ _ _ _ checked12509.1 (.cons _ _ _ _ _ checked12510.1 (.cons _ _ _ _ _ checked12511.1 (.cons _ _ _ _ _ checked12512.1 (.cons _ _ _ _ _ checked12513.1 (.cons _ _ _ _ _ checked12514.1 (.cons _ _ _ _ _ checked12515.1 (.cons _ _ _ _ _ checked12516.1 (.cons _ _ _ _ _ checked12517.1 (.cons _ _ _ _ _ checked12518.1 (.cons _ _ _ _ _ checked12519.1 (.cons _ _ _ _ _ checked12520.1 (.cons _ _ _ _ _ checked12521.1 (.cons _ _ _ _ _ checked12522.1 (.cons _ _ _ _ _ checked12523.1 (.cons _ _ _ _ _ checked12524.1 (.cons _ _ _ _ _ checked12525.1 (.cons _ _ _ _ _ checked12526.1 (.cons _ _ _ _ _ checked12527.1 (.cons _ _ _ _ _ checked12528.1 (.cons _ _ _ _ _ checked12529.1 (.cons _ _ _ _ _ checked12530.1 (.cons _ _ _ _ _ checked12531.1 (.cons _ _ _ _ _ checked12532.1 (.cons _ _ _ _ _ checked12533.1 (.cons _ _ _ _ _ checked12534.1 (.cons _ _ _ _ _ checked12535.1 (.cons _ _ _ _ _ checked12536.1 (.cons _ _ _ _ _ checked12537.1 (.cons _ _ _ _ _ checked12538.1 (.cons _ _ _ _ _ checked12539.1 (.cons _ _ _ _ _ checked12540.1 (.cons _ _ _ _ _ checked12541.1 (.cons _ _ _ _ _ checked12542.1 (.cons _ _ _ _ _ checked12543.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 12598 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2842 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked12480.2,checked12481.2,checked12482.2,checked12483.2,checked12484.2,checked12485.2,checked12486.2,checked12487.2,checked12488.2,checked12489.2,checked12490.2,checked12491.2,checked12492.2,checked12493.2,checked12494.2,checked12495.2,checked12496.2,checked12497.2,checked12498.2,checked12499.2,checked12500.2,checked12501.2,checked12502.2,checked12503.2,checked12504.2,checked12505.2,checked12506.2,checked12507.2,checked12508.2,checked12509.2,checked12510.2,checked12511.2,checked12512.2,checked12513.2,checked12514.2,checked12515.2,checked12516.2,checked12517.2,checked12518.2,checked12519.2,checked12520.2,checked12521.2,checked12522.2,checked12523.2,checked12524.2,checked12525.2,checked12526.2,checked12527.2,checked12528.2,checked12529.2,checked12530.2,checked12531.2,checked12532.2,checked12533.2,checked12534.2,checked12535.2,checked12536.2,checked12537.2,checked12538.2,checked12539.2,checked12540.2,checked12541.2,checked12542.2,checked12543.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup195
