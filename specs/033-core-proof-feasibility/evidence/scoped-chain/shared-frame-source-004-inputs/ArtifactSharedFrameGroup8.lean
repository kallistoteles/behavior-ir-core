import Core033.SourceLiteralBytes
import SharedFrameProgram
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactSharedFrameGroup8
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op512 : List WordIR.Op := [.shr 260 16]
def bytes512 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000022b: u32 = r00000104 >> 0x00000010_u32;\n" : String)
theorem checked512 : bytes512=statementBytes 555 (op512.map lower) ∧ bytes512.length=54 := by core033_kernel_decide
def op513 : List WordIR.Op := [.band 555 46]
def bytes513 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000022c: u32 = r0000022b & r0000002e;\n" : String)
theorem checked513 : bytes513=statementBytes 556 (op513.map lower) ∧ bytes513.length=48 := by core033_kernel_decide
def op514 : List WordIR.Op := [.shr 260 24]
def bytes514 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000022d: u32 = r00000104 >> 0x00000018_u32;\n" : String)
theorem checked514 : bytes514=statementBytes 557 (op514.map lower) ∧ bytes514.length=54 := by core033_kernel_decide
def op515 : List WordIR.Op := [.band 557 46]
def bytes515 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000022e: u32 = r0000022d & r0000002e;\n" : String)
theorem checked515 : bytes515=statementBytes 558 (op515.map lower) ∧ bytes515.length=48 := by core033_kernel_decide
def op516 : List WordIR.Op := [.shr 276 0]
def bytes516 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000022f: u32 = r00000114 >> 0x00000000_u32;\n" : String)
theorem checked516 : bytes516=statementBytes 559 (op516.map lower) ∧ bytes516.length=54 := by core033_kernel_decide
def op517 : List WordIR.Op := [.band 559 46]
def bytes517 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000230: u32 = r0000022f & r0000002e;\n" : String)
theorem checked517 : bytes517=statementBytes 560 (op517.map lower) ∧ bytes517.length=48 := by core033_kernel_decide
def op518 : List WordIR.Op := [.shr 276 8]
def bytes518 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000231: u32 = r00000114 >> 0x00000008_u32;\n" : String)
theorem checked518 : bytes518=statementBytes 561 (op518.map lower) ∧ bytes518.length=54 := by core033_kernel_decide
def op519 : List WordIR.Op := [.band 561 46]
def bytes519 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000232: u32 = r00000231 & r0000002e;\n" : String)
theorem checked519 : bytes519=statementBytes 562 (op519.map lower) ∧ bytes519.length=48 := by core033_kernel_decide
def op520 : List WordIR.Op := [.shr 276 16]
def bytes520 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000233: u32 = r00000114 >> 0x00000010_u32;\n" : String)
theorem checked520 : bytes520=statementBytes 563 (op520.map lower) ∧ bytes520.length=54 := by core033_kernel_decide
def op521 : List WordIR.Op := [.band 563 46]
def bytes521 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000234: u32 = r00000233 & r0000002e;\n" : String)
theorem checked521 : bytes521=statementBytes 564 (op521.map lower) ∧ bytes521.length=48 := by core033_kernel_decide
def op522 : List WordIR.Op := [.shr 276 24]
def bytes522 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000235: u32 = r00000114 >> 0x00000018_u32;\n" : String)
theorem checked522 : bytes522=statementBytes 565 (op522.map lower) ∧ bytes522.length=54 := by core033_kernel_decide
def op523 : List WordIR.Op := [.band 565 46]
def bytes523 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000236: u32 = r00000235 & r0000002e;\n" : String)
theorem checked523 : bytes523=statementBytes 566 (op523.map lower) ∧ bytes523.length=48 := by core033_kernel_decide
def op524 : List WordIR.Op := [.shr 284 0]
def bytes524 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000237: u32 = r0000011c >> 0x00000000_u32;\n" : String)
theorem checked524 : bytes524=statementBytes 567 (op524.map lower) ∧ bytes524.length=54 := by core033_kernel_decide
def op525 : List WordIR.Op := [.band 567 46]
def bytes525 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000238: u32 = r00000237 & r0000002e;\n" : String)
theorem checked525 : bytes525=statementBytes 568 (op525.map lower) ∧ bytes525.length=48 := by core033_kernel_decide
def op526 : List WordIR.Op := [.shr 284 8]
def bytes526 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000239: u32 = r0000011c >> 0x00000008_u32;\n" : String)
theorem checked526 : bytes526=statementBytes 569 (op526.map lower) ∧ bytes526.length=54 := by core033_kernel_decide
def op527 : List WordIR.Op := [.band 569 46]
def bytes527 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000023a: u32 = r00000239 & r0000002e;\n" : String)
theorem checked527 : bytes527=statementBytes 570 (op527.map lower) ∧ bytes527.length=48 := by core033_kernel_decide
def op528 : List WordIR.Op := [.shr 284 16]
def bytes528 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000023b: u32 = r0000011c >> 0x00000010_u32;\n" : String)
theorem checked528 : bytes528=statementBytes 571 (op528.map lower) ∧ bytes528.length=54 := by core033_kernel_decide
def op529 : List WordIR.Op := [.band 571 46]
def bytes529 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000023c: u32 = r0000023b & r0000002e;\n" : String)
theorem checked529 : bytes529=statementBytes 572 (op529.map lower) ∧ bytes529.length=48 := by core033_kernel_decide
def op530 : List WordIR.Op := [.shr 284 24]
def bytes530 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000023d: u32 = r0000011c >> 0x00000018_u32;\n" : String)
theorem checked530 : bytes530=statementBytes 573 (op530.map lower) ∧ bytes530.length=54 := by core033_kernel_decide
def op531 : List WordIR.Op := [.band 573 46]
def bytes531 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000023e: u32 = r0000023d & r0000002e;\n" : String)
theorem checked531 : bytes531=statementBytes 574 (op531.map lower) ∧ bytes531.length=48 := by core033_kernel_decide
def op532 : List WordIR.Op := [.shr 340 0]
def bytes532 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000023f: u32 = r00000154 >> 0x00000000_u32;\n" : String)
theorem checked532 : bytes532=statementBytes 575 (op532.map lower) ∧ bytes532.length=54 := by core033_kernel_decide
def op533 : List WordIR.Op := [.band 575 46]
def bytes533 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000240: u32 = r0000023f & r0000002e;\n" : String)
theorem checked533 : bytes533=statementBytes 576 (op533.map lower) ∧ bytes533.length=48 := by core033_kernel_decide
def op534 : List WordIR.Op := [.shr 341 0]
def bytes534 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000241: u32 = r00000155 >> 0x00000000_u32;\n" : String)
theorem checked534 : bytes534=statementBytes 577 (op534.map lower) ∧ bytes534.length=54 := by core033_kernel_decide
def op535 : List WordIR.Op := [.band 577 46]
def bytes535 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000242: u32 = r00000241 & r0000002e;\n" : String)
theorem checked535 : bytes535=statementBytes 578 (op535.map lower) ∧ bytes535.length=48 := by core033_kernel_decide
def op536 : List WordIR.Op := [.band 1 50]
def bytes536 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000243: u32 = r00000001 & r00000032;\n" : String)
theorem checked536 : bytes536=statementBytes 579 (op536.map lower) ∧ bytes536.length=48 := by core033_kernel_decide
def op537 : List WordIR.Op := [.bxor 1 50]
def bytes537 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000244: u32 = r00000001 ^ r00000032;\n" : String)
theorem checked537 : bytes537=statementBytes 580 (op537.map lower) ∧ bytes537.length=48 := by core033_kernel_decide
def op538 : List WordIR.Op := [.badd 1 50]
def bytes538 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000245: u32 = r00000001.wrapping_add(r00000032);\n" : String)
theorem checked538 : bytes538=statementBytes 581 (op538.map lower) ∧ bytes538.length=60 := by core033_kernel_decide
def op539 : List WordIR.Op := [.bnot 581]
def bytes539 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000246: u32 = !r00000245;\n" : String)
theorem checked539 : bytes539=statementBytes 582 (op539.map lower) ∧ bytes539.length=37 := by core033_kernel_decide
def op540 : List WordIR.Op := [.band 580 582]
def bytes540 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000247: u32 = r00000244 & r00000246;\n" : String)
theorem checked540 : bytes540=statementBytes 583 (op540.map lower) ∧ bytes540.length=48 := by core033_kernel_decide
def op541 : List WordIR.Op := [.bxor 579 583]
def bytes541 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000248: u32 = r00000243 ^ r00000247;\n" : String)
theorem checked541 : bytes541=statementBytes 584 (op541.map lower) ∧ bytes541.length=48 := by core033_kernel_decide
def op542 : List WordIR.Op := [.shr 584 31]
def bytes542 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000249: u32 = r00000248 >> 0x0000001f_u32;\n" : String)
theorem checked542 : bytes542=statementBytes 585 (op542.map lower) ∧ bytes542.length=54 := by core033_kernel_decide
def op543 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes543 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000024a: u32 = 0x00000003_u32;\n" : String)
theorem checked543 : bytes543=statementBytes 586 (op543.map lower) ∧ bytes543.length=41 := by core033_kernel_decide
def op544 : List WordIR.Op := [.bnot 1]
def bytes544 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000024b: u32 = !r00000001;\n" : String)
theorem checked544 : bytes544=statementBytes 587 (op544.map lower) ∧ bytes544.length=37 := by core033_kernel_decide
def op545 : List WordIR.Op := [.band 586 587]
def bytes545 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000024c: u32 = r0000024a & r0000024b;\n" : String)
theorem checked545 : bytes545=statementBytes 588 (op545.map lower) ∧ bytes545.length=48 := by core033_kernel_decide
def op546 : List WordIR.Op := [.bxor 586 587]
def bytes546 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000024d: u32 = r0000024a ^ r0000024b;\n" : String)
theorem checked546 : bytes546=statementBytes 589 (op546.map lower) ∧ bytes546.length=48 := by core033_kernel_decide
def op547 : List WordIR.Op := [.badd 586 587]
def bytes547 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000024e: u32 = r0000024a.wrapping_add(r0000024b);\n" : String)
theorem checked547 : bytes547=statementBytes 590 (op547.map lower) ∧ bytes547.length=60 := by core033_kernel_decide
def op548 : List WordIR.Op := [.bnot 590]
def bytes548 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000024f: u32 = !r0000024e;\n" : String)
theorem checked548 : bytes548=statementBytes 591 (op548.map lower) ∧ bytes548.length=37 := by core033_kernel_decide
def op549 : List WordIR.Op := [.band 589 591]
def bytes549 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000250: u32 = r0000024d & r0000024f;\n" : String)
theorem checked549 : bytes549=statementBytes 592 (op549.map lower) ∧ bytes549.length=48 := by core033_kernel_decide
def op550 : List WordIR.Op := [.bxor 588 592]
def bytes550 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000251: u32 = r0000024c ^ r00000250;\n" : String)
theorem checked550 : bytes550=statementBytes 593 (op550.map lower) ∧ bytes550.length=48 := by core033_kernel_decide
def op551 : List WordIR.Op := [.shr 593 31]
def bytes551 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000252: u32 = r00000251 >> 0x0000001f_u32;\n" : String)
theorem checked551 : bytes551=statementBytes 594 (op551.map lower) ∧ bytes551.length=54 := by core033_kernel_decide
def op552 : List WordIR.Op := [.band 585 594]
def bytes552 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000253: u32 = r00000249 & r00000252;\n" : String)
theorem checked552 : bytes552=statementBytes 595 (op552.map lower) ∧ bytes552.length=48 := by core033_kernel_decide
def op553 : List WordIR.Op := [.shr 340 1]
def bytes553 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000254: u32 = r00000154 >> 0x00000001_u32;\n" : String)
theorem checked553 : bytes553=statementBytes 596 (op553.map lower) ∧ bytes553.length=54 := by core033_kernel_decide
def op554 : List WordIR.Op := [.band 596 50]
def bytes554 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000255: u32 = r00000254 & r00000032;\n" : String)
theorem checked554 : bytes554=statementBytes 597 (op554.map lower) ∧ bytes554.length=48 := by core033_kernel_decide
def op555 : List WordIR.Op := [.bxor 596 50]
def bytes555 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000256: u32 = r00000254 ^ r00000032;\n" : String)
theorem checked555 : bytes555=statementBytes 598 (op555.map lower) ∧ bytes555.length=48 := by core033_kernel_decide
def op556 : List WordIR.Op := [.badd 596 50]
def bytes556 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000257: u32 = r00000254.wrapping_add(r00000032);\n" : String)
theorem checked556 : bytes556=statementBytes 599 (op556.map lower) ∧ bytes556.length=60 := by core033_kernel_decide
def op557 : List WordIR.Op := [.bnot 599]
def bytes557 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000258: u32 = !r00000257;\n" : String)
theorem checked557 : bytes557=statementBytes 600 (op557.map lower) ∧ bytes557.length=37 := by core033_kernel_decide
def op558 : List WordIR.Op := [.band 598 600]
def bytes558 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000259: u32 = r00000256 & r00000258;\n" : String)
theorem checked558 : bytes558=statementBytes 601 (op558.map lower) ∧ bytes558.length=48 := by core033_kernel_decide
def op559 : List WordIR.Op := [.bxor 597 601]
def bytes559 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000025a: u32 = r00000255 ^ r00000259;\n" : String)
theorem checked559 : bytes559=statementBytes 602 (op559.map lower) ∧ bytes559.length=48 := by core033_kernel_decide
def op560 : List WordIR.Op := [.shr 602 31]
def bytes560 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000025b: u32 = r0000025a >> 0x0000001f_u32;\n" : String)
theorem checked560 : bytes560=statementBytes 603 (op560.map lower) ∧ bytes560.length=54 := by core033_kernel_decide
def op561 : List WordIR.Op := [.bxor 603 43]
def bytes561 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000025c: u32 = r0000025b ^ r0000002b;\n" : String)
theorem checked561 : bytes561=statementBytes 604 (op561.map lower) ∧ bytes561.length=48 := by core033_kernel_decide
def op562 : List WordIR.Op := [.shr 341 1]
def bytes562 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000025d: u32 = r00000155 >> 0x00000001_u32;\n" : String)
theorem checked562 : bytes562=statementBytes 605 (op562.map lower) ∧ bytes562.length=54 := by core033_kernel_decide
def op563 : List WordIR.Op := [.band 605 50]
def bytes563 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000025e: u32 = r0000025d & r00000032;\n" : String)
theorem checked563 : bytes563=statementBytes 606 (op563.map lower) ∧ bytes563.length=48 := by core033_kernel_decide
def op564 : List WordIR.Op := [.bxor 605 50]
def bytes564 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000025f: u32 = r0000025d ^ r00000032;\n" : String)
theorem checked564 : bytes564=statementBytes 607 (op564.map lower) ∧ bytes564.length=48 := by core033_kernel_decide
def op565 : List WordIR.Op := [.badd 605 50]
def bytes565 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000260: u32 = r0000025d.wrapping_add(r00000032);\n" : String)
theorem checked565 : bytes565=statementBytes 608 (op565.map lower) ∧ bytes565.length=60 := by core033_kernel_decide
def op566 : List WordIR.Op := [.bnot 608]
def bytes566 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000261: u32 = !r00000260;\n" : String)
theorem checked566 : bytes566=statementBytes 609 (op566.map lower) ∧ bytes566.length=37 := by core033_kernel_decide
def op567 : List WordIR.Op := [.band 607 609]
def bytes567 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000262: u32 = r0000025f & r00000261;\n" : String)
theorem checked567 : bytes567=statementBytes 610 (op567.map lower) ∧ bytes567.length=48 := by core033_kernel_decide
def op568 : List WordIR.Op := [.bxor 606 610]
def bytes568 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000263: u32 = r0000025e ^ r00000262;\n" : String)
theorem checked568 : bytes568=statementBytes 611 (op568.map lower) ∧ bytes568.length=48 := by core033_kernel_decide
def op569 : List WordIR.Op := [.shr 611 31]
def bytes569 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000264: u32 = r00000263 >> 0x0000001f_u32;\n" : String)
theorem checked569 : bytes569=statementBytes 612 (op569.map lower) ∧ bytes569.length=54 := by core033_kernel_decide
def op570 : List WordIR.Op := [.bxor 612 43]
def bytes570 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000265: u32 = r00000264 ^ r0000002b;\n" : String)
theorem checked570 : bytes570=statementBytes 613 (op570.map lower) ∧ bytes570.length=48 := by core033_kernel_decide
def op571 : List WordIR.Op := [.bxor 276 276]
def bytes571 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000266: u32 = r00000114 ^ r00000114;\n" : String)
theorem checked571 : bytes571=statementBytes 614 (op571.map lower) ∧ bytes571.length=48 := by core033_kernel_decide
def op572 : List WordIR.Op := [.band 614 50]
def bytes572 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000267: u32 = r00000266 & r00000032;\n" : String)
theorem checked572 : bytes572=statementBytes 615 (op572.map lower) ∧ bytes572.length=48 := by core033_kernel_decide
def op573 : List WordIR.Op := [.bxor 614 50]
def bytes573 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000268: u32 = r00000266 ^ r00000032;\n" : String)
theorem checked573 : bytes573=statementBytes 616 (op573.map lower) ∧ bytes573.length=48 := by core033_kernel_decide
def op574 : List WordIR.Op := [.badd 614 50]
def bytes574 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r00000269: u32 = r00000266.wrapping_add(r00000032);\n" : String)
theorem checked574 : bytes574=statementBytes 617 (op574.map lower) ∧ bytes574.length=60 := by core033_kernel_decide
def op575 : List WordIR.Op := [.bnot 617]
def bytes575 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r0000026a: u32 = !r00000269;\n" : String)
theorem checked575 : bytes575=statementBytes 618 (op575.map lower) ∧ bytes575.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op512,op513,op514,op515,op516,op517,op518,op519,op520,op521,op522,op523,op524,op525,op526,op527,op528,op529,op530,op531,op532,op533,op534,op535,op536,op537,op538,op539,op540,op541,op542,op543,op544,op545,op546,op547,op548,op549,op550,op551,op552,op553,op554,op555,op556,op557,op558,op559,op560,op561,op562,op563,op564,op565,op566,op567,op568,op569,op570,op571,op572,op573,op574,op575]
def chunks : List Bytes := [bytes512,bytes513,bytes514,bytes515,bytes516,bytes517,bytes518,bytes519,bytes520,bytes521,bytes522,bytes523,bytes524,bytes525,bytes526,bytes527,bytes528,bytes529,bytes530,bytes531,bytes532,bytes533,bytes534,bytes535,bytes536,bytes537,bytes538,bytes539,bytes540,bytes541,bytes542,bytes543,bytes544,bytes545,bytes546,bytes547,bytes548,bytes549,bytes550,bytes551,bytes552,bytes553,bytes554,bytes555,bytes556,bytes557,bytes558,bytes559,bytes560,bytes561,bytes562,bytes563,bytes564,bytes565,bytes566,bytes567,bytes568,bytes569,bytes570,bytes571,bytes572,bytes573,bytes574,bytes575]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 555 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked512.1 (.cons _ _ _ _ _ checked513.1 (.cons _ _ _ _ _ checked514.1 (.cons _ _ _ _ _ checked515.1 (.cons _ _ _ _ _ checked516.1 (.cons _ _ _ _ _ checked517.1 (.cons _ _ _ _ _ checked518.1 (.cons _ _ _ _ _ checked519.1 (.cons _ _ _ _ _ checked520.1 (.cons _ _ _ _ _ checked521.1 (.cons _ _ _ _ _ checked522.1 (.cons _ _ _ _ _ checked523.1 (.cons _ _ _ _ _ checked524.1 (.cons _ _ _ _ _ checked525.1 (.cons _ _ _ _ _ checked526.1 (.cons _ _ _ _ _ checked527.1 (.cons _ _ _ _ _ checked528.1 (.cons _ _ _ _ _ checked529.1 (.cons _ _ _ _ _ checked530.1 (.cons _ _ _ _ _ checked531.1 (.cons _ _ _ _ _ checked532.1 (.cons _ _ _ _ _ checked533.1 (.cons _ _ _ _ _ checked534.1 (.cons _ _ _ _ _ checked535.1 (.cons _ _ _ _ _ checked536.1 (.cons _ _ _ _ _ checked537.1 (.cons _ _ _ _ _ checked538.1 (.cons _ _ _ _ _ checked539.1 (.cons _ _ _ _ _ checked540.1 (.cons _ _ _ _ _ checked541.1 (.cons _ _ _ _ _ checked542.1 (.cons _ _ _ _ _ checked543.1 (.cons _ _ _ _ _ checked544.1 (.cons _ _ _ _ _ checked545.1 (.cons _ _ _ _ _ checked546.1 (.cons _ _ _ _ _ checked547.1 (.cons _ _ _ _ _ checked548.1 (.cons _ _ _ _ _ checked549.1 (.cons _ _ _ _ _ checked550.1 (.cons _ _ _ _ _ checked551.1 (.cons _ _ _ _ _ checked552.1 (.cons _ _ _ _ _ checked553.1 (.cons _ _ _ _ _ checked554.1 (.cons _ _ _ _ _ checked555.1 (.cons _ _ _ _ _ checked556.1 (.cons _ _ _ _ _ checked557.1 (.cons _ _ _ _ _ checked558.1 (.cons _ _ _ _ _ checked559.1 (.cons _ _ _ _ _ checked560.1 (.cons _ _ _ _ _ checked561.1 (.cons _ _ _ _ _ checked562.1 (.cons _ _ _ _ _ checked563.1 (.cons _ _ _ _ _ checked564.1 (.cons _ _ _ _ _ checked565.1 (.cons _ _ _ _ _ checked566.1 (.cons _ _ _ _ _ checked567.1 (.cons _ _ _ _ _ checked568.1 (.cons _ _ _ _ _ checked569.1 (.cons _ _ _ _ _ checked570.1 (.cons _ _ _ _ _ checked571.1 (.cons _ _ _ _ _ checked572.1 (.cons _ _ _ _ _ checked573.1 (.cons _ _ _ _ _ checked574.1 (.cons _ _ _ _ _ checked575.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 555 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3167 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked512.2,checked513.2,checked514.2,checked515.2,checked516.2,checked517.2,checked518.2,checked519.2,checked520.2,checked521.2,checked522.2,checked523.2,checked524.2,checked525.2,checked526.2,checked527.2,checked528.2,checked529.2,checked530.2,checked531.2,checked532.2,checked533.2,checked534.2,checked535.2,checked536.2,checked537.2,checked538.2,checked539.2,checked540.2,checked541.2,checked542.2,checked543.2,checked544.2,checked545.2,checked546.2,checked547.2,checked548.2,checked549.2,checked550.2,checked551.2,checked552.2,checked553.2,checked554.2,checked555.2,checked556.2,checked557.2,checked558.2,checked559.2,checked560.2,checked561.2,checked562.2,checked563.2,checked564.2,checked565.2,checked566.2,checked567.2,checked568.2,checked569.2,checked570.2,checked571.2,checked572.2,checked573.2,checked574.2,checked575.2]
  decide
end ArtifactSharedFrameGroup8
