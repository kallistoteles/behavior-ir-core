import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup180
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op11520 : List WordIR.Op := [.bnot 11615]
def bytes11520 : Bytes := ("    let r00002d60: u32 = !r00002d5f;\n" : String).toByteArray.data.toList
theorem checked11520 : bytes11520=statementBytes 11616 (op11520.map lower) ∧ bytes11520.length=37 := by core033_kernel_decide
def op11521 : List WordIR.Op := [.badd 11614 11616]
def bytes11521 : Bytes := ("    let r00002d61: u32 = r00002d5e.wrapping_add(r00002d60);\n" : String).toByteArray.data.toList
theorem checked11521 : bytes11521=statementBytes 11617 (op11521.map lower) ∧ bytes11521.length=60 := by core033_kernel_decide
def op11522 : List WordIR.Op := [.bnot 11617]
def bytes11522 : Bytes := ("    let r00002d62: u32 = !r00002d61;\n" : String).toByteArray.data.toList
theorem checked11522 : bytes11522=statementBytes 11618 (op11522.map lower) ∧ bytes11522.length=37 := by core033_kernel_decide
def op11523 : List WordIR.Op := [.band 11612 11618]
def bytes11523 : Bytes := ("    let r00002d63: u32 = r00002d5c & r00002d62;\n" : String).toByteArray.data.toList
theorem checked11523 : bytes11523=statementBytes 11619 (op11523.map lower) ∧ bytes11523.length=48 := by core033_kernel_decide
def op11524 : List WordIR.Op := [.bxor 11607 11619]
def bytes11524 : Bytes := ("    let r00002d64: u32 = r00002d57 ^ r00002d63;\n" : String).toByteArray.data.toList
theorem checked11524 : bytes11524=statementBytes 11620 (op11524.map lower) ∧ bytes11524.length=48 := by core033_kernel_decide
def op11525 : List WordIR.Op := [.shr 11620 31]
def bytes11525 : Bytes := ("    let r00002d65: u32 = r00002d64 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11525 : bytes11525=statementBytes 11621 (op11525.map lower) ∧ bytes11525.length=54 := by core033_kernel_decide
def op11526 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11526 : Bytes := ("    let r00002d66: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11526 : bytes11526=statementBytes 11622 (op11526.map lower) ∧ bytes11526.length=41 := by core033_kernel_decide
def op11527 : List WordIR.Op := [.bxor 11621 11622]
def bytes11527 : Bytes := ("    let r00002d67: u32 = r00002d65 ^ r00002d66;\n" : String).toByteArray.data.toList
theorem checked11527 : bytes11527=statementBytes 11623 (op11527.map lower) ∧ bytes11527.length=48 := by core033_kernel_decide
def op11528 : List WordIR.Op := [.bnot 11623]
def bytes11528 : Bytes := ("    let r00002d68: u32 = !r00002d67;\n" : String).toByteArray.data.toList
theorem checked11528 : bytes11528=statementBytes 11624 (op11528.map lower) ∧ bytes11528.length=37 := by core033_kernel_decide
def op11529 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11529 : Bytes := ("    let r00002d69: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11529 : bytes11529=statementBytes 11625 (op11529.map lower) ∧ bytes11529.length=41 := by core033_kernel_decide
def op11530 : List WordIR.Op := [.badd 11624 11625]
def bytes11530 : Bytes := ("    let r00002d6a: u32 = r00002d68.wrapping_add(r00002d69);\n" : String).toByteArray.data.toList
theorem checked11530 : bytes11530=statementBytes 11626 (op11530.map lower) ∧ bytes11530.length=60 := by core033_kernel_decide
def op11531 : List WordIR.Op := [.bnot 11626]
def bytes11531 : Bytes := ("    let r00002d6b: u32 = !r00002d6a;\n" : String).toByteArray.data.toList
theorem checked11531 : bytes11531=statementBytes 11627 (op11531.map lower) ∧ bytes11531.length=37 := by core033_kernel_decide
def op11532 : List WordIR.Op := [.band 11627 792]
def bytes11532 : Bytes := ("    let r00002d6c: u32 = r00002d6b & r00000318;\n" : String).toByteArray.data.toList
theorem checked11532 : bytes11532=statementBytes 11628 (op11532.map lower) ∧ bytes11532.length=48 := by core033_kernel_decide
def op11533 : List WordIR.Op := [.bxor 11602 11628]
def bytes11533 : Bytes := ("    let r00002d6d: u32 = r00002d52 ^ r00002d6c;\n" : String).toByteArray.data.toList
theorem checked11533 : bytes11533=statementBytes 11629 (op11533.map lower) ∧ bytes11533.length=48 := by core033_kernel_decide
def op11534 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11534 : Bytes := ("    let r00002d6e: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11534 : bytes11534=statementBytes 11630 (op11534.map lower) ∧ bytes11534.length=41 := by core033_kernel_decide
def op11535 : List WordIR.Op := [.bxor 442 11630]
def bytes11535 : Bytes := ("    let r00002d6f: u32 = r000001ba ^ r00002d6e;\n" : String).toByteArray.data.toList
theorem checked11535 : bytes11535=statementBytes 11631 (op11535.map lower) ∧ bytes11535.length=48 := by core033_kernel_decide
def op11536 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11536 : Bytes := ("    let r00002d70: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11536 : bytes11536=statementBytes 11632 (op11536.map lower) ∧ bytes11536.length=41 := by core033_kernel_decide
def op11537 : List WordIR.Op := [.bnot 11632]
def bytes11537 : Bytes := ("    let r00002d71: u32 = !r00002d70;\n" : String).toByteArray.data.toList
theorem checked11537 : bytes11537=statementBytes 11633 (op11537.map lower) ∧ bytes11537.length=37 := by core033_kernel_decide
def op11538 : List WordIR.Op := [.band 11631 11633]
def bytes11538 : Bytes := ("    let r00002d72: u32 = r00002d6f & r00002d71;\n" : String).toByteArray.data.toList
theorem checked11538 : bytes11538=statementBytes 11634 (op11538.map lower) ∧ bytes11538.length=48 := by core033_kernel_decide
def op11539 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11539 : Bytes := ("    let r00002d73: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11539 : bytes11539=statementBytes 11635 (op11539.map lower) ∧ bytes11539.length=41 := by core033_kernel_decide
def op11540 : List WordIR.Op := [.bxor 442 11635]
def bytes11540 : Bytes := ("    let r00002d74: u32 = r000001ba ^ r00002d73;\n" : String).toByteArray.data.toList
theorem checked11540 : bytes11540=statementBytes 11636 (op11540.map lower) ∧ bytes11540.length=48 := by core033_kernel_decide
def op11541 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11541 : Bytes := ("    let r00002d75: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11541 : bytes11541=statementBytes 11637 (op11541.map lower) ∧ bytes11541.length=41 := by core033_kernel_decide
def op11542 : List WordIR.Op := [.bnot 11637]
def bytes11542 : Bytes := ("    let r00002d76: u32 = !r00002d75;\n" : String).toByteArray.data.toList
theorem checked11542 : bytes11542=statementBytes 11638 (op11542.map lower) ∧ bytes11542.length=37 := by core033_kernel_decide
def op11543 : List WordIR.Op := [.bxor 11636 11638]
def bytes11543 : Bytes := ("    let r00002d77: u32 = r00002d74 ^ r00002d76;\n" : String).toByteArray.data.toList
theorem checked11543 : bytes11543=statementBytes 11639 (op11543.map lower) ∧ bytes11543.length=48 := by core033_kernel_decide
def op11544 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11544 : Bytes := ("    let r00002d78: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11544 : bytes11544=statementBytes 11640 (op11544.map lower) ∧ bytes11544.length=41 := by core033_kernel_decide
def op11545 : List WordIR.Op := [.bxor 442 11640]
def bytes11545 : Bytes := ("    let r00002d79: u32 = r000001ba ^ r00002d78;\n" : String).toByteArray.data.toList
theorem checked11545 : bytes11545=statementBytes 11641 (op11545.map lower) ∧ bytes11545.length=48 := by core033_kernel_decide
def op11546 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11546 : Bytes := ("    let r00002d7a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11546 : bytes11546=statementBytes 11642 (op11546.map lower) ∧ bytes11546.length=41 := by core033_kernel_decide
def op11547 : List WordIR.Op := [.bnot 11642]
def bytes11547 : Bytes := ("    let r00002d7b: u32 = !r00002d7a;\n" : String).toByteArray.data.toList
theorem checked11547 : bytes11547=statementBytes 11643 (op11547.map lower) ∧ bytes11547.length=37 := by core033_kernel_decide
def op11548 : List WordIR.Op := [.badd 11641 11643]
def bytes11548 : Bytes := ("    let r00002d7c: u32 = r00002d79.wrapping_add(r00002d7b);\n" : String).toByteArray.data.toList
theorem checked11548 : bytes11548=statementBytes 11644 (op11548.map lower) ∧ bytes11548.length=60 := by core033_kernel_decide
def op11549 : List WordIR.Op := [.bnot 11644]
def bytes11549 : Bytes := ("    let r00002d7d: u32 = !r00002d7c;\n" : String).toByteArray.data.toList
theorem checked11549 : bytes11549=statementBytes 11645 (op11549.map lower) ∧ bytes11549.length=37 := by core033_kernel_decide
def op11550 : List WordIR.Op := [.band 11639 11645]
def bytes11550 : Bytes := ("    let r00002d7e: u32 = r00002d77 & r00002d7d;\n" : String).toByteArray.data.toList
theorem checked11550 : bytes11550=statementBytes 11646 (op11550.map lower) ∧ bytes11550.length=48 := by core033_kernel_decide
def op11551 : List WordIR.Op := [.bxor 11634 11646]
def bytes11551 : Bytes := ("    let r00002d7f: u32 = r00002d72 ^ r00002d7e;\n" : String).toByteArray.data.toList
theorem checked11551 : bytes11551=statementBytes 11647 (op11551.map lower) ∧ bytes11551.length=48 := by core033_kernel_decide
def op11552 : List WordIR.Op := [.shr 11647 31]
def bytes11552 : Bytes := ("    let r00002d80: u32 = r00002d7f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11552 : bytes11552=statementBytes 11648 (op11552.map lower) ∧ bytes11552.length=54 := by core033_kernel_decide
def op11553 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11553 : Bytes := ("    let r00002d81: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11553 : bytes11553=statementBytes 11649 (op11553.map lower) ∧ bytes11553.length=41 := by core033_kernel_decide
def op11554 : List WordIR.Op := [.bxor 11648 11649]
def bytes11554 : Bytes := ("    let r00002d82: u32 = r00002d80 ^ r00002d81;\n" : String).toByteArray.data.toList
theorem checked11554 : bytes11554=statementBytes 11650 (op11554.map lower) ∧ bytes11554.length=48 := by core033_kernel_decide
def op11555 : List WordIR.Op := [.bnot 11650]
def bytes11555 : Bytes := ("    let r00002d83: u32 = !r00002d82;\n" : String).toByteArray.data.toList
theorem checked11555 : bytes11555=statementBytes 11651 (op11555.map lower) ∧ bytes11555.length=37 := by core033_kernel_decide
def op11556 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11556 : Bytes := ("    let r00002d84: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11556 : bytes11556=statementBytes 11652 (op11556.map lower) ∧ bytes11556.length=41 := by core033_kernel_decide
def op11557 : List WordIR.Op := [.badd 11651 11652]
def bytes11557 : Bytes := ("    let r00002d85: u32 = r00002d83.wrapping_add(r00002d84);\n" : String).toByteArray.data.toList
theorem checked11557 : bytes11557=statementBytes 11653 (op11557.map lower) ∧ bytes11557.length=60 := by core033_kernel_decide
def op11558 : List WordIR.Op := [.band 11653 10448]
def bytes11558 : Bytes := ("    let r00002d86: u32 = r00002d85 & r000028d0;\n" : String).toByteArray.data.toList
theorem checked11558 : bytes11558=statementBytes 11654 (op11558.map lower) ∧ bytes11558.length=48 := by core033_kernel_decide
def op11559 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11559 : Bytes := ("    let r00002d87: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11559 : bytes11559=statementBytes 11655 (op11559.map lower) ∧ bytes11559.length=41 := by core033_kernel_decide
def op11560 : List WordIR.Op := [.bxor 442 11655]
def bytes11560 : Bytes := ("    let r00002d88: u32 = r000001ba ^ r00002d87;\n" : String).toByteArray.data.toList
theorem checked11560 : bytes11560=statementBytes 11656 (op11560.map lower) ∧ bytes11560.length=48 := by core033_kernel_decide
def op11561 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11561 : Bytes := ("    let r00002d89: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11561 : bytes11561=statementBytes 11657 (op11561.map lower) ∧ bytes11561.length=41 := by core033_kernel_decide
def op11562 : List WordIR.Op := [.bnot 11657]
def bytes11562 : Bytes := ("    let r00002d8a: u32 = !r00002d89;\n" : String).toByteArray.data.toList
theorem checked11562 : bytes11562=statementBytes 11658 (op11562.map lower) ∧ bytes11562.length=37 := by core033_kernel_decide
def op11563 : List WordIR.Op := [.band 11656 11658]
def bytes11563 : Bytes := ("    let r00002d8b: u32 = r00002d88 & r00002d8a;\n" : String).toByteArray.data.toList
theorem checked11563 : bytes11563=statementBytes 11659 (op11563.map lower) ∧ bytes11563.length=48 := by core033_kernel_decide
def op11564 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11564 : Bytes := ("    let r00002d8c: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11564 : bytes11564=statementBytes 11660 (op11564.map lower) ∧ bytes11564.length=41 := by core033_kernel_decide
def op11565 : List WordIR.Op := [.bxor 442 11660]
def bytes11565 : Bytes := ("    let r00002d8d: u32 = r000001ba ^ r00002d8c;\n" : String).toByteArray.data.toList
theorem checked11565 : bytes11565=statementBytes 11661 (op11565.map lower) ∧ bytes11565.length=48 := by core033_kernel_decide
def op11566 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11566 : Bytes := ("    let r00002d8e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11566 : bytes11566=statementBytes 11662 (op11566.map lower) ∧ bytes11566.length=41 := by core033_kernel_decide
def op11567 : List WordIR.Op := [.bnot 11662]
def bytes11567 : Bytes := ("    let r00002d8f: u32 = !r00002d8e;\n" : String).toByteArray.data.toList
theorem checked11567 : bytes11567=statementBytes 11663 (op11567.map lower) ∧ bytes11567.length=37 := by core033_kernel_decide
def op11568 : List WordIR.Op := [.bxor 11661 11663]
def bytes11568 : Bytes := ("    let r00002d90: u32 = r00002d8d ^ r00002d8f;\n" : String).toByteArray.data.toList
theorem checked11568 : bytes11568=statementBytes 11664 (op11568.map lower) ∧ bytes11568.length=48 := by core033_kernel_decide
def op11569 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes11569 : Bytes := ("    let r00002d91: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked11569 : bytes11569=statementBytes 11665 (op11569.map lower) ∧ bytes11569.length=41 := by core033_kernel_decide
def op11570 : List WordIR.Op := [.bxor 442 11665]
def bytes11570 : Bytes := ("    let r00002d92: u32 = r000001ba ^ r00002d91;\n" : String).toByteArray.data.toList
theorem checked11570 : bytes11570=statementBytes 11666 (op11570.map lower) ∧ bytes11570.length=48 := by core033_kernel_decide
def op11571 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes11571 : Bytes := ("    let r00002d93: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked11571 : bytes11571=statementBytes 11667 (op11571.map lower) ∧ bytes11571.length=41 := by core033_kernel_decide
def op11572 : List WordIR.Op := [.bnot 11667]
def bytes11572 : Bytes := ("    let r00002d94: u32 = !r00002d93;\n" : String).toByteArray.data.toList
theorem checked11572 : bytes11572=statementBytes 11668 (op11572.map lower) ∧ bytes11572.length=37 := by core033_kernel_decide
def op11573 : List WordIR.Op := [.badd 11666 11668]
def bytes11573 : Bytes := ("    let r00002d95: u32 = r00002d92.wrapping_add(r00002d94);\n" : String).toByteArray.data.toList
theorem checked11573 : bytes11573=statementBytes 11669 (op11573.map lower) ∧ bytes11573.length=60 := by core033_kernel_decide
def op11574 : List WordIR.Op := [.bnot 11669]
def bytes11574 : Bytes := ("    let r00002d96: u32 = !r00002d95;\n" : String).toByteArray.data.toList
theorem checked11574 : bytes11574=statementBytes 11670 (op11574.map lower) ∧ bytes11574.length=37 := by core033_kernel_decide
def op11575 : List WordIR.Op := [.band 11664 11670]
def bytes11575 : Bytes := ("    let r00002d97: u32 = r00002d90 & r00002d96;\n" : String).toByteArray.data.toList
theorem checked11575 : bytes11575=statementBytes 11671 (op11575.map lower) ∧ bytes11575.length=48 := by core033_kernel_decide
def op11576 : List WordIR.Op := [.bxor 11659 11671]
def bytes11576 : Bytes := ("    let r00002d98: u32 = r00002d8b ^ r00002d97;\n" : String).toByteArray.data.toList
theorem checked11576 : bytes11576=statementBytes 11672 (op11576.map lower) ∧ bytes11576.length=48 := by core033_kernel_decide
def op11577 : List WordIR.Op := [.shr 11672 31]
def bytes11577 : Bytes := ("    let r00002d99: u32 = r00002d98 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked11577 : bytes11577=statementBytes 11673 (op11577.map lower) ∧ bytes11577.length=54 := by core033_kernel_decide
def op11578 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11578 : Bytes := ("    let r00002d9a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11578 : bytes11578=statementBytes 11674 (op11578.map lower) ∧ bytes11578.length=41 := by core033_kernel_decide
def op11579 : List WordIR.Op := [.bxor 11673 11674]
def bytes11579 : Bytes := ("    let r00002d9b: u32 = r00002d99 ^ r00002d9a;\n" : String).toByteArray.data.toList
theorem checked11579 : bytes11579=statementBytes 11675 (op11579.map lower) ∧ bytes11579.length=48 := by core033_kernel_decide
def op11580 : List WordIR.Op := [.bnot 11675]
def bytes11580 : Bytes := ("    let r00002d9c: u32 = !r00002d9b;\n" : String).toByteArray.data.toList
theorem checked11580 : bytes11580=statementBytes 11676 (op11580.map lower) ∧ bytes11580.length=37 := by core033_kernel_decide
def op11581 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes11581 : Bytes := ("    let r00002d9d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked11581 : bytes11581=statementBytes 11677 (op11581.map lower) ∧ bytes11581.length=41 := by core033_kernel_decide
def op11582 : List WordIR.Op := [.badd 11676 11677]
def bytes11582 : Bytes := ("    let r00002d9e: u32 = r00002d9c.wrapping_add(r00002d9d);\n" : String).toByteArray.data.toList
theorem checked11582 : bytes11582=statementBytes 11678 (op11582.map lower) ∧ bytes11582.length=60 := by core033_kernel_decide
def op11583 : List WordIR.Op := [.bnot 11678]
def bytes11583 : Bytes := ("    let r00002d9f: u32 = !r00002d9e;\n" : String).toByteArray.data.toList
theorem checked11583 : bytes11583=statementBytes 11679 (op11583.map lower) ∧ bytes11583.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op11520,op11521,op11522,op11523,op11524,op11525,op11526,op11527,op11528,op11529,op11530,op11531,op11532,op11533,op11534,op11535,op11536,op11537,op11538,op11539,op11540,op11541,op11542,op11543,op11544,op11545,op11546,op11547,op11548,op11549,op11550,op11551,op11552,op11553,op11554,op11555,op11556,op11557,op11558,op11559,op11560,op11561,op11562,op11563,op11564,op11565,op11566,op11567,op11568,op11569,op11570,op11571,op11572,op11573,op11574,op11575,op11576,op11577,op11578,op11579,op11580,op11581,op11582,op11583]
def chunks : List Bytes := [bytes11520,bytes11521,bytes11522,bytes11523,bytes11524,bytes11525,bytes11526,bytes11527,bytes11528,bytes11529,bytes11530,bytes11531,bytes11532,bytes11533,bytes11534,bytes11535,bytes11536,bytes11537,bytes11538,bytes11539,bytes11540,bytes11541,bytes11542,bytes11543,bytes11544,bytes11545,bytes11546,bytes11547,bytes11548,bytes11549,bytes11550,bytes11551,bytes11552,bytes11553,bytes11554,bytes11555,bytes11556,bytes11557,bytes11558,bytes11559,bytes11560,bytes11561,bytes11562,bytes11563,bytes11564,bytes11565,bytes11566,bytes11567,bytes11568,bytes11569,bytes11570,bytes11571,bytes11572,bytes11573,bytes11574,bytes11575,bytes11576,bytes11577,bytes11578,bytes11579,bytes11580,bytes11581,bytes11582,bytes11583]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 11616 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked11520.1 (.cons _ _ _ _ _ checked11521.1 (.cons _ _ _ _ _ checked11522.1 (.cons _ _ _ _ _ checked11523.1 (.cons _ _ _ _ _ checked11524.1 (.cons _ _ _ _ _ checked11525.1 (.cons _ _ _ _ _ checked11526.1 (.cons _ _ _ _ _ checked11527.1 (.cons _ _ _ _ _ checked11528.1 (.cons _ _ _ _ _ checked11529.1 (.cons _ _ _ _ _ checked11530.1 (.cons _ _ _ _ _ checked11531.1 (.cons _ _ _ _ _ checked11532.1 (.cons _ _ _ _ _ checked11533.1 (.cons _ _ _ _ _ checked11534.1 (.cons _ _ _ _ _ checked11535.1 (.cons _ _ _ _ _ checked11536.1 (.cons _ _ _ _ _ checked11537.1 (.cons _ _ _ _ _ checked11538.1 (.cons _ _ _ _ _ checked11539.1 (.cons _ _ _ _ _ checked11540.1 (.cons _ _ _ _ _ checked11541.1 (.cons _ _ _ _ _ checked11542.1 (.cons _ _ _ _ _ checked11543.1 (.cons _ _ _ _ _ checked11544.1 (.cons _ _ _ _ _ checked11545.1 (.cons _ _ _ _ _ checked11546.1 (.cons _ _ _ _ _ checked11547.1 (.cons _ _ _ _ _ checked11548.1 (.cons _ _ _ _ _ checked11549.1 (.cons _ _ _ _ _ checked11550.1 (.cons _ _ _ _ _ checked11551.1 (.cons _ _ _ _ _ checked11552.1 (.cons _ _ _ _ _ checked11553.1 (.cons _ _ _ _ _ checked11554.1 (.cons _ _ _ _ _ checked11555.1 (.cons _ _ _ _ _ checked11556.1 (.cons _ _ _ _ _ checked11557.1 (.cons _ _ _ _ _ checked11558.1 (.cons _ _ _ _ _ checked11559.1 (.cons _ _ _ _ _ checked11560.1 (.cons _ _ _ _ _ checked11561.1 (.cons _ _ _ _ _ checked11562.1 (.cons _ _ _ _ _ checked11563.1 (.cons _ _ _ _ _ checked11564.1 (.cons _ _ _ _ _ checked11565.1 (.cons _ _ _ _ _ checked11566.1 (.cons _ _ _ _ _ checked11567.1 (.cons _ _ _ _ _ checked11568.1 (.cons _ _ _ _ _ checked11569.1 (.cons _ _ _ _ _ checked11570.1 (.cons _ _ _ _ _ checked11571.1 (.cons _ _ _ _ _ checked11572.1 (.cons _ _ _ _ _ checked11573.1 (.cons _ _ _ _ _ checked11574.1 (.cons _ _ _ _ _ checked11575.1 (.cons _ _ _ _ _ checked11576.1 (.cons _ _ _ _ _ checked11577.1 (.cons _ _ _ _ _ checked11578.1 (.cons _ _ _ _ _ checked11579.1 (.cons _ _ _ _ _ checked11580.1 (.cons _ _ _ _ _ checked11581.1 (.cons _ _ _ _ _ checked11582.1 (.cons _ _ _ _ _ checked11583.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 11616 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2871 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked11520.2,checked11521.2,checked11522.2,checked11523.2,checked11524.2,checked11525.2,checked11526.2,checked11527.2,checked11528.2,checked11529.2,checked11530.2,checked11531.2,checked11532.2,checked11533.2,checked11534.2,checked11535.2,checked11536.2,checked11537.2,checked11538.2,checked11539.2,checked11540.2,checked11541.2,checked11542.2,checked11543.2,checked11544.2,checked11545.2,checked11546.2,checked11547.2,checked11548.2,checked11549.2,checked11550.2,checked11551.2,checked11552.2,checked11553.2,checked11554.2,checked11555.2,checked11556.2,checked11557.2,checked11558.2,checked11559.2,checked11560.2,checked11561.2,checked11562.2,checked11563.2,checked11564.2,checked11565.2,checked11566.2,checked11567.2,checked11568.2,checked11569.2,checked11570.2,checked11571.2,checked11572.2,checked11573.2,checked11574.2,checked11575.2,checked11576.2,checked11577.2,checked11578.2,checked11579.2,checked11580.2,checked11581.2,checked11582.2,checked11583.2]
  decide
end ArtifactPairedPathRoundGroup180
