import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup8
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op512 : List WordIR.Op := [.badd 606 607]
def bytes512 : Bytes := ("    let r00000260: u32 = r0000025e.wrapping_add(r0000025f);\n" : String).toByteArray.data.toList
theorem checked512 : bytes512=statementBytes 608 (op512.map lower) ∧ bytes512.length=60 := by core033_kernel_decide
def op513 : List WordIR.Op := [.band 608 442]
def bytes513 : Bytes := ("    let r00000261: u32 = r00000260 & r000001ba;\n" : String).toByteArray.data.toList
theorem checked513 : bytes513=statementBytes 609 (op513.map lower) ∧ bytes513.length=48 := by core033_kernel_decide
def op514 : List WordIR.Op := [.bnot 605]
def bytes514 : Bytes := ("    let r00000262: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked514 : bytes514=statementBytes 610 (op514.map lower) ∧ bytes514.length=37 := by core033_kernel_decide
def op515 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes515 : Bytes := ("    let r00000263: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked515 : bytes515=statementBytes 611 (op515.map lower) ∧ bytes515.length=41 := by core033_kernel_decide
def op516 : List WordIR.Op := [.badd 610 611]
def bytes516 : Bytes := ("    let r00000264: u32 = r00000262.wrapping_add(r00000263);\n" : String).toByteArray.data.toList
theorem checked516 : bytes516=statementBytes 612 (op516.map lower) ∧ bytes516.length=60 := by core033_kernel_decide
def op517 : List WordIR.Op := [.bnot 612]
def bytes517 : Bytes := ("    let r00000265: u32 = !r00000264;\n" : String).toByteArray.data.toList
theorem checked517 : bytes517=statementBytes 613 (op517.map lower) ∧ bytes517.length=37 := by core033_kernel_decide
def op518 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes518 : Bytes := ("    let r00000266: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked518 : bytes518=statementBytes 614 (op518.map lower) ∧ bytes518.length=41 := by core033_kernel_decide
def op519 : List WordIR.Op := [.band 613 614]
def bytes519 : Bytes := ("    let r00000267: u32 = r00000265 & r00000266;\n" : String).toByteArray.data.toList
theorem checked519 : bytes519=statementBytes 615 (op519.map lower) ∧ bytes519.length=48 := by core033_kernel_decide
def op520 : List WordIR.Op := [.bxor 609 615]
def bytes520 : Bytes := ("    let r00000268: u32 = r00000261 ^ r00000267;\n" : String).toByteArray.data.toList
theorem checked520 : bytes520=statementBytes 616 (op520.map lower) ∧ bytes520.length=48 := by core033_kernel_decide
def op521 : List WordIR.Op := [.bnot 605]
def bytes521 : Bytes := ("    let r00000269: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked521 : bytes521=statementBytes 617 (op521.map lower) ∧ bytes521.length=37 := by core033_kernel_decide
def op522 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes522 : Bytes := ("    let r0000026a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked522 : bytes522=statementBytes 618 (op522.map lower) ∧ bytes522.length=41 := by core033_kernel_decide
def op523 : List WordIR.Op := [.badd 617 618]
def bytes523 : Bytes := ("    let r0000026b: u32 = r00000269.wrapping_add(r0000026a);\n" : String).toByteArray.data.toList
theorem checked523 : bytes523=statementBytes 619 (op523.map lower) ∧ bytes523.length=60 := by core033_kernel_decide
def op524 : List WordIR.Op := [.band 619 1]
def bytes524 : Bytes := ("    let r0000026c: u32 = r0000026b & r00000001;\n" : String).toByteArray.data.toList
theorem checked524 : bytes524=statementBytes 620 (op524.map lower) ∧ bytes524.length=48 := by core033_kernel_decide
def op525 : List WordIR.Op := [.bnot 605]
def bytes525 : Bytes := ("    let r0000026d: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked525 : bytes525=statementBytes 621 (op525.map lower) ∧ bytes525.length=37 := by core033_kernel_decide
def op526 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes526 : Bytes := ("    let r0000026e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked526 : bytes526=statementBytes 622 (op526.map lower) ∧ bytes526.length=41 := by core033_kernel_decide
def op527 : List WordIR.Op := [.badd 621 622]
def bytes527 : Bytes := ("    let r0000026f: u32 = r0000026d.wrapping_add(r0000026e);\n" : String).toByteArray.data.toList
theorem checked527 : bytes527=statementBytes 623 (op527.map lower) ∧ bytes527.length=60 := by core033_kernel_decide
def op528 : List WordIR.Op := [.bnot 623]
def bytes528 : Bytes := ("    let r00000270: u32 = !r0000026f;\n" : String).toByteArray.data.toList
theorem checked528 : bytes528=statementBytes 624 (op528.map lower) ∧ bytes528.length=37 := by core033_kernel_decide
def op529 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes529 : Bytes := ("    let r00000271: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked529 : bytes529=statementBytes 625 (op529.map lower) ∧ bytes529.length=41 := by core033_kernel_decide
def op530 : List WordIR.Op := [.band 624 625]
def bytes530 : Bytes := ("    let r00000272: u32 = r00000270 & r00000271;\n" : String).toByteArray.data.toList
theorem checked530 : bytes530=statementBytes 626 (op530.map lower) ∧ bytes530.length=48 := by core033_kernel_decide
def op531 : List WordIR.Op := [.bxor 620 626]
def bytes531 : Bytes := ("    let r00000273: u32 = r0000026c ^ r00000272;\n" : String).toByteArray.data.toList
theorem checked531 : bytes531=statementBytes 627 (op531.map lower) ∧ bytes531.length=48 := by core033_kernel_decide
def op532 : List WordIR.Op := [.bnot 605]
def bytes532 : Bytes := ("    let r00000274: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked532 : bytes532=statementBytes 628 (op532.map lower) ∧ bytes532.length=37 := by core033_kernel_decide
def op533 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes533 : Bytes := ("    let r00000275: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked533 : bytes533=statementBytes 629 (op533.map lower) ∧ bytes533.length=41 := by core033_kernel_decide
def op534 : List WordIR.Op := [.badd 628 629]
def bytes534 : Bytes := ("    let r00000276: u32 = r00000274.wrapping_add(r00000275);\n" : String).toByteArray.data.toList
theorem checked534 : bytes534=statementBytes 630 (op534.map lower) ∧ bytes534.length=60 := by core033_kernel_decide
def op535 : List WordIR.Op := [.band 630 2]
def bytes535 : Bytes := ("    let r00000277: u32 = r00000276 & r00000002;\n" : String).toByteArray.data.toList
theorem checked535 : bytes535=statementBytes 631 (op535.map lower) ∧ bytes535.length=48 := by core033_kernel_decide
def op536 : List WordIR.Op := [.bnot 605]
def bytes536 : Bytes := ("    let r00000278: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked536 : bytes536=statementBytes 632 (op536.map lower) ∧ bytes536.length=37 := by core033_kernel_decide
def op537 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes537 : Bytes := ("    let r00000279: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked537 : bytes537=statementBytes 633 (op537.map lower) ∧ bytes537.length=41 := by core033_kernel_decide
def op538 : List WordIR.Op := [.badd 632 633]
def bytes538 : Bytes := ("    let r0000027a: u32 = r00000278.wrapping_add(r00000279);\n" : String).toByteArray.data.toList
theorem checked538 : bytes538=statementBytes 634 (op538.map lower) ∧ bytes538.length=60 := by core033_kernel_decide
def op539 : List WordIR.Op := [.bnot 634]
def bytes539 : Bytes := ("    let r0000027b: u32 = !r0000027a;\n" : String).toByteArray.data.toList
theorem checked539 : bytes539=statementBytes 635 (op539.map lower) ∧ bytes539.length=37 := by core033_kernel_decide
def op540 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes540 : Bytes := ("    let r0000027c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked540 : bytes540=statementBytes 636 (op540.map lower) ∧ bytes540.length=41 := by core033_kernel_decide
def op541 : List WordIR.Op := [.band 635 636]
def bytes541 : Bytes := ("    let r0000027d: u32 = r0000027b & r0000027c;\n" : String).toByteArray.data.toList
theorem checked541 : bytes541=statementBytes 637 (op541.map lower) ∧ bytes541.length=48 := by core033_kernel_decide
def op542 : List WordIR.Op := [.bxor 631 637]
def bytes542 : Bytes := ("    let r0000027e: u32 = r00000277 ^ r0000027d;\n" : String).toByteArray.data.toList
theorem checked542 : bytes542=statementBytes 638 (op542.map lower) ∧ bytes542.length=48 := by core033_kernel_decide
def op543 : List WordIR.Op := [.bnot 605]
def bytes543 : Bytes := ("    let r0000027f: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked543 : bytes543=statementBytes 639 (op543.map lower) ∧ bytes543.length=37 := by core033_kernel_decide
def op544 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes544 : Bytes := ("    let r00000280: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked544 : bytes544=statementBytes 640 (op544.map lower) ∧ bytes544.length=41 := by core033_kernel_decide
def op545 : List WordIR.Op := [.badd 639 640]
def bytes545 : Bytes := ("    let r00000281: u32 = r0000027f.wrapping_add(r00000280);\n" : String).toByteArray.data.toList
theorem checked545 : bytes545=statementBytes 641 (op545.map lower) ∧ bytes545.length=60 := by core033_kernel_decide
def op546 : List WordIR.Op := [.band 641 3]
def bytes546 : Bytes := ("    let r00000282: u32 = r00000281 & r00000003;\n" : String).toByteArray.data.toList
theorem checked546 : bytes546=statementBytes 642 (op546.map lower) ∧ bytes546.length=48 := by core033_kernel_decide
def op547 : List WordIR.Op := [.bnot 605]
def bytes547 : Bytes := ("    let r00000283: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked547 : bytes547=statementBytes 643 (op547.map lower) ∧ bytes547.length=37 := by core033_kernel_decide
def op548 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes548 : Bytes := ("    let r00000284: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked548 : bytes548=statementBytes 644 (op548.map lower) ∧ bytes548.length=41 := by core033_kernel_decide
def op549 : List WordIR.Op := [.badd 643 644]
def bytes549 : Bytes := ("    let r00000285: u32 = r00000283.wrapping_add(r00000284);\n" : String).toByteArray.data.toList
theorem checked549 : bytes549=statementBytes 645 (op549.map lower) ∧ bytes549.length=60 := by core033_kernel_decide
def op550 : List WordIR.Op := [.bnot 645]
def bytes550 : Bytes := ("    let r00000286: u32 = !r00000285;\n" : String).toByteArray.data.toList
theorem checked550 : bytes550=statementBytes 646 (op550.map lower) ∧ bytes550.length=37 := by core033_kernel_decide
def op551 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes551 : Bytes := ("    let r00000287: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked551 : bytes551=statementBytes 647 (op551.map lower) ∧ bytes551.length=41 := by core033_kernel_decide
def op552 : List WordIR.Op := [.band 646 647]
def bytes552 : Bytes := ("    let r00000288: u32 = r00000286 & r00000287;\n" : String).toByteArray.data.toList
theorem checked552 : bytes552=statementBytes 648 (op552.map lower) ∧ bytes552.length=48 := by core033_kernel_decide
def op553 : List WordIR.Op := [.bxor 642 648]
def bytes553 : Bytes := ("    let r00000289: u32 = r00000282 ^ r00000288;\n" : String).toByteArray.data.toList
theorem checked553 : bytes553=statementBytes 649 (op553.map lower) ∧ bytes553.length=48 := by core033_kernel_decide
def op554 : List WordIR.Op := [.bnot 605]
def bytes554 : Bytes := ("    let r0000028a: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked554 : bytes554=statementBytes 650 (op554.map lower) ∧ bytes554.length=37 := by core033_kernel_decide
def op555 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes555 : Bytes := ("    let r0000028b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked555 : bytes555=statementBytes 651 (op555.map lower) ∧ bytes555.length=41 := by core033_kernel_decide
def op556 : List WordIR.Op := [.badd 650 651]
def bytes556 : Bytes := ("    let r0000028c: u32 = r0000028a.wrapping_add(r0000028b);\n" : String).toByteArray.data.toList
theorem checked556 : bytes556=statementBytes 652 (op556.map lower) ∧ bytes556.length=60 := by core033_kernel_decide
def op557 : List WordIR.Op := [.band 652 4]
def bytes557 : Bytes := ("    let r0000028d: u32 = r0000028c & r00000004;\n" : String).toByteArray.data.toList
theorem checked557 : bytes557=statementBytes 653 (op557.map lower) ∧ bytes557.length=48 := by core033_kernel_decide
def op558 : List WordIR.Op := [.bnot 605]
def bytes558 : Bytes := ("    let r0000028e: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked558 : bytes558=statementBytes 654 (op558.map lower) ∧ bytes558.length=37 := by core033_kernel_decide
def op559 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes559 : Bytes := ("    let r0000028f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked559 : bytes559=statementBytes 655 (op559.map lower) ∧ bytes559.length=41 := by core033_kernel_decide
def op560 : List WordIR.Op := [.badd 654 655]
def bytes560 : Bytes := ("    let r00000290: u32 = r0000028e.wrapping_add(r0000028f);\n" : String).toByteArray.data.toList
theorem checked560 : bytes560=statementBytes 656 (op560.map lower) ∧ bytes560.length=60 := by core033_kernel_decide
def op561 : List WordIR.Op := [.bnot 656]
def bytes561 : Bytes := ("    let r00000291: u32 = !r00000290;\n" : String).toByteArray.data.toList
theorem checked561 : bytes561=statementBytes 657 (op561.map lower) ∧ bytes561.length=37 := by core033_kernel_decide
def op562 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes562 : Bytes := ("    let r00000292: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked562 : bytes562=statementBytes 658 (op562.map lower) ∧ bytes562.length=41 := by core033_kernel_decide
def op563 : List WordIR.Op := [.band 657 658]
def bytes563 : Bytes := ("    let r00000293: u32 = r00000291 & r00000292;\n" : String).toByteArray.data.toList
theorem checked563 : bytes563=statementBytes 659 (op563.map lower) ∧ bytes563.length=48 := by core033_kernel_decide
def op564 : List WordIR.Op := [.bxor 653 659]
def bytes564 : Bytes := ("    let r00000294: u32 = r0000028d ^ r00000293;\n" : String).toByteArray.data.toList
theorem checked564 : bytes564=statementBytes 660 (op564.map lower) ∧ bytes564.length=48 := by core033_kernel_decide
def op565 : List WordIR.Op := [.bnot 605]
def bytes565 : Bytes := ("    let r00000295: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked565 : bytes565=statementBytes 661 (op565.map lower) ∧ bytes565.length=37 := by core033_kernel_decide
def op566 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes566 : Bytes := ("    let r00000296: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked566 : bytes566=statementBytes 662 (op566.map lower) ∧ bytes566.length=41 := by core033_kernel_decide
def op567 : List WordIR.Op := [.badd 661 662]
def bytes567 : Bytes := ("    let r00000297: u32 = r00000295.wrapping_add(r00000296);\n" : String).toByteArray.data.toList
theorem checked567 : bytes567=statementBytes 663 (op567.map lower) ∧ bytes567.length=60 := by core033_kernel_decide
def op568 : List WordIR.Op := [.band 663 5]
def bytes568 : Bytes := ("    let r00000298: u32 = r00000297 & r00000005;\n" : String).toByteArray.data.toList
theorem checked568 : bytes568=statementBytes 664 (op568.map lower) ∧ bytes568.length=48 := by core033_kernel_decide
def op569 : List WordIR.Op := [.bnot 605]
def bytes569 : Bytes := ("    let r00000299: u32 = !r0000025d;\n" : String).toByteArray.data.toList
theorem checked569 : bytes569=statementBytes 665 (op569.map lower) ∧ bytes569.length=37 := by core033_kernel_decide
def op570 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes570 : Bytes := ("    let r0000029a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked570 : bytes570=statementBytes 666 (op570.map lower) ∧ bytes570.length=41 := by core033_kernel_decide
def op571 : List WordIR.Op := [.badd 665 666]
def bytes571 : Bytes := ("    let r0000029b: u32 = r00000299.wrapping_add(r0000029a);\n" : String).toByteArray.data.toList
theorem checked571 : bytes571=statementBytes 667 (op571.map lower) ∧ bytes571.length=60 := by core033_kernel_decide
def op572 : List WordIR.Op := [.bnot 667]
def bytes572 : Bytes := ("    let r0000029c: u32 = !r0000029b;\n" : String).toByteArray.data.toList
theorem checked572 : bytes572=statementBytes 668 (op572.map lower) ∧ bytes572.length=37 := by core033_kernel_decide
def op573 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes573 : Bytes := ("    let r0000029d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked573 : bytes573=statementBytes 669 (op573.map lower) ∧ bytes573.length=41 := by core033_kernel_decide
def op574 : List WordIR.Op := [.band 668 669]
def bytes574 : Bytes := ("    let r0000029e: u32 = r0000029c & r0000029d;\n" : String).toByteArray.data.toList
theorem checked574 : bytes574=statementBytes 670 (op574.map lower) ∧ bytes574.length=48 := by core033_kernel_decide
def op575 : List WordIR.Op := [.bxor 664 670]
def bytes575 : Bytes := ("    let r0000029f: u32 = r00000298 ^ r0000029e;\n" : String).toByteArray.data.toList
theorem checked575 : bytes575=statementBytes 671 (op575.map lower) ∧ bytes575.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op512,op513,op514,op515,op516,op517,op518,op519,op520,op521,op522,op523,op524,op525,op526,op527,op528,op529,op530,op531,op532,op533,op534,op535,op536,op537,op538,op539,op540,op541,op542,op543,op544,op545,op546,op547,op548,op549,op550,op551,op552,op553,op554,op555,op556,op557,op558,op559,op560,op561,op562,op563,op564,op565,op566,op567,op568,op569,op570,op571,op572,op573,op574,op575]
def chunks : List Bytes := [bytes512,bytes513,bytes514,bytes515,bytes516,bytes517,bytes518,bytes519,bytes520,bytes521,bytes522,bytes523,bytes524,bytes525,bytes526,bytes527,bytes528,bytes529,bytes530,bytes531,bytes532,bytes533,bytes534,bytes535,bytes536,bytes537,bytes538,bytes539,bytes540,bytes541,bytes542,bytes543,bytes544,bytes545,bytes546,bytes547,bytes548,bytes549,bytes550,bytes551,bytes552,bytes553,bytes554,bytes555,bytes556,bytes557,bytes558,bytes559,bytes560,bytes561,bytes562,bytes563,bytes564,bytes565,bytes566,bytes567,bytes568,bytes569,bytes570,bytes571,bytes572,bytes573,bytes574,bytes575]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 608 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked512.1 (.cons _ _ _ _ _ checked513.1 (.cons _ _ _ _ _ checked514.1 (.cons _ _ _ _ _ checked515.1 (.cons _ _ _ _ _ checked516.1 (.cons _ _ _ _ _ checked517.1 (.cons _ _ _ _ _ checked518.1 (.cons _ _ _ _ _ checked519.1 (.cons _ _ _ _ _ checked520.1 (.cons _ _ _ _ _ checked521.1 (.cons _ _ _ _ _ checked522.1 (.cons _ _ _ _ _ checked523.1 (.cons _ _ _ _ _ checked524.1 (.cons _ _ _ _ _ checked525.1 (.cons _ _ _ _ _ checked526.1 (.cons _ _ _ _ _ checked527.1 (.cons _ _ _ _ _ checked528.1 (.cons _ _ _ _ _ checked529.1 (.cons _ _ _ _ _ checked530.1 (.cons _ _ _ _ _ checked531.1 (.cons _ _ _ _ _ checked532.1 (.cons _ _ _ _ _ checked533.1 (.cons _ _ _ _ _ checked534.1 (.cons _ _ _ _ _ checked535.1 (.cons _ _ _ _ _ checked536.1 (.cons _ _ _ _ _ checked537.1 (.cons _ _ _ _ _ checked538.1 (.cons _ _ _ _ _ checked539.1 (.cons _ _ _ _ _ checked540.1 (.cons _ _ _ _ _ checked541.1 (.cons _ _ _ _ _ checked542.1 (.cons _ _ _ _ _ checked543.1 (.cons _ _ _ _ _ checked544.1 (.cons _ _ _ _ _ checked545.1 (.cons _ _ _ _ _ checked546.1 (.cons _ _ _ _ _ checked547.1 (.cons _ _ _ _ _ checked548.1 (.cons _ _ _ _ _ checked549.1 (.cons _ _ _ _ _ checked550.1 (.cons _ _ _ _ _ checked551.1 (.cons _ _ _ _ _ checked552.1 (.cons _ _ _ _ _ checked553.1 (.cons _ _ _ _ _ checked554.1 (.cons _ _ _ _ _ checked555.1 (.cons _ _ _ _ _ checked556.1 (.cons _ _ _ _ _ checked557.1 (.cons _ _ _ _ _ checked558.1 (.cons _ _ _ _ _ checked559.1 (.cons _ _ _ _ _ checked560.1 (.cons _ _ _ _ _ checked561.1 (.cons _ _ _ _ _ checked562.1 (.cons _ _ _ _ _ checked563.1 (.cons _ _ _ _ _ checked564.1 (.cons _ _ _ _ _ checked565.1 (.cons _ _ _ _ _ checked566.1 (.cons _ _ _ _ _ checked567.1 (.cons _ _ _ _ _ checked568.1 (.cons _ _ _ _ _ checked569.1 (.cons _ _ _ _ _ checked570.1 (.cons _ _ _ _ _ checked571.1 (.cons _ _ _ _ _ checked572.1 (.cons _ _ _ _ _ checked573.1 (.cons _ _ _ _ _ checked574.1 (.cons _ _ _ _ _ checked575.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 608 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2910 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked512.2,checked513.2,checked514.2,checked515.2,checked516.2,checked517.2,checked518.2,checked519.2,checked520.2,checked521.2,checked522.2,checked523.2,checked524.2,checked525.2,checked526.2,checked527.2,checked528.2,checked529.2,checked530.2,checked531.2,checked532.2,checked533.2,checked534.2,checked535.2,checked536.2,checked537.2,checked538.2,checked539.2,checked540.2,checked541.2,checked542.2,checked543.2,checked544.2,checked545.2,checked546.2,checked547.2,checked548.2,checked549.2,checked550.2,checked551.2,checked552.2,checked553.2,checked554.2,checked555.2,checked556.2,checked557.2,checked558.2,checked559.2,checked560.2,checked561.2,checked562.2,checked563.2,checked564.2,checked565.2,checked566.2,checked567.2,checked568.2,checked569.2,checked570.2,checked571.2,checked572.2,checked573.2,checked574.2,checked575.2]
  decide
end ArtifactPairedPathRoundGroup8
