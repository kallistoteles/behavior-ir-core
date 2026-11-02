import ActualCheckedBranchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactCheckedBranchGroup8
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op512 : List WordIR.Op := [.band 18 20]
def bytes512 : Bytes := ("    let r0000021a: u32 = r00000012 & r00000014;\n" : String).toByteArray.data.toList
theorem checked512 : bytes512=statementBytes 538 (op512.map lower) ∧ bytes512.length=48 := by core033_kernel_decide
def op513 : List WordIR.Op := [.bxor 18 20]
def bytes513 : Bytes := ("    let r0000021b: u32 = r00000012 ^ r00000014;\n" : String).toByteArray.data.toList
theorem checked513 : bytes513=statementBytes 539 (op513.map lower) ∧ bytes513.length=48 := by core033_kernel_decide
def op514 : List WordIR.Op := [.badd 18 20]
def bytes514 : Bytes := ("    let r0000021c: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked514 : bytes514=statementBytes 540 (op514.map lower) ∧ bytes514.length=60 := by core033_kernel_decide
def op515 : List WordIR.Op := [.bnot 540]
def bytes515 : Bytes := ("    let r0000021d: u32 = !r0000021c;\n" : String).toByteArray.data.toList
theorem checked515 : bytes515=statementBytes 541 (op515.map lower) ∧ bytes515.length=37 := by core033_kernel_decide
def op516 : List WordIR.Op := [.band 539 541]
def bytes516 : Bytes := ("    let r0000021e: u32 = r0000021b & r0000021d;\n" : String).toByteArray.data.toList
theorem checked516 : bytes516=statementBytes 542 (op516.map lower) ∧ bytes516.length=48 := by core033_kernel_decide
def op517 : List WordIR.Op := [.bxor 538 542]
def bytes517 : Bytes := ("    let r0000021f: u32 = r0000021a ^ r0000021e;\n" : String).toByteArray.data.toList
theorem checked517 : bytes517=statementBytes 543 (op517.map lower) ∧ bytes517.length=48 := by core033_kernel_decide
def op518 : List WordIR.Op := [.shr 543 31]
def bytes518 : Bytes := ("    let r00000220: u32 = r0000021f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked518 : bytes518=statementBytes 544 (op518.map lower) ∧ bytes518.length=54 := by core033_kernel_decide
def op519 : List WordIR.Op := [.badd 537 544]
def bytes519 : Bytes := ("    let r00000221: u32 = r00000219.wrapping_add(r00000220);\n" : String).toByteArray.data.toList
theorem checked519 : bytes519=statementBytes 545 (op519.map lower) ∧ bytes519.length=60 := by core033_kernel_decide
def op520 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes520 : Bytes := ("    let r00000222: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked520 : bytes520=statementBytes 546 (op520.map lower) ∧ bytes520.length=41 := by core033_kernel_decide
def op521 : List WordIR.Op := [.bnot 546]
def bytes521 : Bytes := ("    let r00000223: u32 = !r00000222;\n" : String).toByteArray.data.toList
theorem checked521 : bytes521=statementBytes 547 (op521.map lower) ∧ bytes521.length=37 := by core033_kernel_decide
def op522 : List WordIR.Op := [.band 545 547]
def bytes522 : Bytes := ("    let r00000224: u32 = r00000221 & r00000223;\n" : String).toByteArray.data.toList
theorem checked522 : bytes522=statementBytes 548 (op522.map lower) ∧ bytes522.length=48 := by core033_kernel_decide
def op523 : List WordIR.Op := [.badd 19 21]
def bytes523 : Bytes := ("    let r00000225: u32 = r00000013.wrapping_add(r00000015);\n" : String).toByteArray.data.toList
theorem checked523 : bytes523=statementBytes 549 (op523.map lower) ∧ bytes523.length=60 := by core033_kernel_decide
def op524 : List WordIR.Op := [.band 18 20]
def bytes524 : Bytes := ("    let r00000226: u32 = r00000012 & r00000014;\n" : String).toByteArray.data.toList
theorem checked524 : bytes524=statementBytes 550 (op524.map lower) ∧ bytes524.length=48 := by core033_kernel_decide
def op525 : List WordIR.Op := [.bxor 18 20]
def bytes525 : Bytes := ("    let r00000227: u32 = r00000012 ^ r00000014;\n" : String).toByteArray.data.toList
theorem checked525 : bytes525=statementBytes 551 (op525.map lower) ∧ bytes525.length=48 := by core033_kernel_decide
def op526 : List WordIR.Op := [.badd 18 20]
def bytes526 : Bytes := ("    let r00000228: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked526 : bytes526=statementBytes 552 (op526.map lower) ∧ bytes526.length=60 := by core033_kernel_decide
def op527 : List WordIR.Op := [.bnot 552]
def bytes527 : Bytes := ("    let r00000229: u32 = !r00000228;\n" : String).toByteArray.data.toList
theorem checked527 : bytes527=statementBytes 553 (op527.map lower) ∧ bytes527.length=37 := by core033_kernel_decide
def op528 : List WordIR.Op := [.band 551 553]
def bytes528 : Bytes := ("    let r0000022a: u32 = r00000227 & r00000229;\n" : String).toByteArray.data.toList
theorem checked528 : bytes528=statementBytes 554 (op528.map lower) ∧ bytes528.length=48 := by core033_kernel_decide
def op529 : List WordIR.Op := [.bxor 550 554]
def bytes529 : Bytes := ("    let r0000022b: u32 = r00000226 ^ r0000022a;\n" : String).toByteArray.data.toList
theorem checked529 : bytes529=statementBytes 555 (op529.map lower) ∧ bytes529.length=48 := by core033_kernel_decide
def op530 : List WordIR.Op := [.shr 555 31]
def bytes530 : Bytes := ("    let r0000022c: u32 = r0000022b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked530 : bytes530=statementBytes 556 (op530.map lower) ∧ bytes530.length=54 := by core033_kernel_decide
def op531 : List WordIR.Op := [.badd 549 556]
def bytes531 : Bytes := ("    let r0000022d: u32 = r00000225.wrapping_add(r0000022c);\n" : String).toByteArray.data.toList
theorem checked531 : bytes531=statementBytes 557 (op531.map lower) ∧ bytes531.length=60 := by core033_kernel_decide
def op532 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes532 : Bytes := ("    let r0000022e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked532 : bytes532=statementBytes 558 (op532.map lower) ∧ bytes532.length=41 := by core033_kernel_decide
def op533 : List WordIR.Op := [.bnot 558]
def bytes533 : Bytes := ("    let r0000022f: u32 = !r0000022e;\n" : String).toByteArray.data.toList
theorem checked533 : bytes533=statementBytes 559 (op533.map lower) ∧ bytes533.length=37 := by core033_kernel_decide
def op534 : List WordIR.Op := [.bxor 557 559]
def bytes534 : Bytes := ("    let r00000230: u32 = r0000022d ^ r0000022f;\n" : String).toByteArray.data.toList
theorem checked534 : bytes534=statementBytes 560 (op534.map lower) ∧ bytes534.length=48 := by core033_kernel_decide
def op535 : List WordIR.Op := [.badd 19 21]
def bytes535 : Bytes := ("    let r00000231: u32 = r00000013.wrapping_add(r00000015);\n" : String).toByteArray.data.toList
theorem checked535 : bytes535=statementBytes 561 (op535.map lower) ∧ bytes535.length=60 := by core033_kernel_decide
def op536 : List WordIR.Op := [.band 18 20]
def bytes536 : Bytes := ("    let r00000232: u32 = r00000012 & r00000014;\n" : String).toByteArray.data.toList
theorem checked536 : bytes536=statementBytes 562 (op536.map lower) ∧ bytes536.length=48 := by core033_kernel_decide
def op537 : List WordIR.Op := [.bxor 18 20]
def bytes537 : Bytes := ("    let r00000233: u32 = r00000012 ^ r00000014;\n" : String).toByteArray.data.toList
theorem checked537 : bytes537=statementBytes 563 (op537.map lower) ∧ bytes537.length=48 := by core033_kernel_decide
def op538 : List WordIR.Op := [.badd 18 20]
def bytes538 : Bytes := ("    let r00000234: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked538 : bytes538=statementBytes 564 (op538.map lower) ∧ bytes538.length=60 := by core033_kernel_decide
def op539 : List WordIR.Op := [.bnot 564]
def bytes539 : Bytes := ("    let r00000235: u32 = !r00000234;\n" : String).toByteArray.data.toList
theorem checked539 : bytes539=statementBytes 565 (op539.map lower) ∧ bytes539.length=37 := by core033_kernel_decide
def op540 : List WordIR.Op := [.band 563 565]
def bytes540 : Bytes := ("    let r00000236: u32 = r00000233 & r00000235;\n" : String).toByteArray.data.toList
theorem checked540 : bytes540=statementBytes 566 (op540.map lower) ∧ bytes540.length=48 := by core033_kernel_decide
def op541 : List WordIR.Op := [.bxor 562 566]
def bytes541 : Bytes := ("    let r00000237: u32 = r00000232 ^ r00000236;\n" : String).toByteArray.data.toList
theorem checked541 : bytes541=statementBytes 567 (op541.map lower) ∧ bytes541.length=48 := by core033_kernel_decide
def op542 : List WordIR.Op := [.shr 567 31]
def bytes542 : Bytes := ("    let r00000238: u32 = r00000237 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked542 : bytes542=statementBytes 568 (op542.map lower) ∧ bytes542.length=54 := by core033_kernel_decide
def op543 : List WordIR.Op := [.badd 561 568]
def bytes543 : Bytes := ("    let r00000239: u32 = r00000231.wrapping_add(r00000238);\n" : String).toByteArray.data.toList
theorem checked543 : bytes543=statementBytes 569 (op543.map lower) ∧ bytes543.length=60 := by core033_kernel_decide
def op544 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes544 : Bytes := ("    let r0000023a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked544 : bytes544=statementBytes 570 (op544.map lower) ∧ bytes544.length=41 := by core033_kernel_decide
def op545 : List WordIR.Op := [.bnot 570]
def bytes545 : Bytes := ("    let r0000023b: u32 = !r0000023a;\n" : String).toByteArray.data.toList
theorem checked545 : bytes545=statementBytes 571 (op545.map lower) ∧ bytes545.length=37 := by core033_kernel_decide
def op546 : List WordIR.Op := [.badd 569 571]
def bytes546 : Bytes := ("    let r0000023c: u32 = r00000239.wrapping_add(r0000023b);\n" : String).toByteArray.data.toList
theorem checked546 : bytes546=statementBytes 572 (op546.map lower) ∧ bytes546.length=60 := by core033_kernel_decide
def op547 : List WordIR.Op := [.bnot 572]
def bytes547 : Bytes := ("    let r0000023d: u32 = !r0000023c;\n" : String).toByteArray.data.toList
theorem checked547 : bytes547=statementBytes 573 (op547.map lower) ∧ bytes547.length=37 := by core033_kernel_decide
def op548 : List WordIR.Op := [.band 560 573]
def bytes548 : Bytes := ("    let r0000023e: u32 = r00000230 & r0000023d;\n" : String).toByteArray.data.toList
theorem checked548 : bytes548=statementBytes 574 (op548.map lower) ∧ bytes548.length=48 := by core033_kernel_decide
def op549 : List WordIR.Op := [.bxor 548 574]
def bytes549 : Bytes := ("    let r0000023f: u32 = r00000224 ^ r0000023e;\n" : String).toByteArray.data.toList
theorem checked549 : bytes549=statementBytes 575 (op549.map lower) ∧ bytes549.length=48 := by core033_kernel_decide
def op550 : List WordIR.Op := [.shr 575 31]
def bytes550 : Bytes := ("    let r00000240: u32 = r0000023f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked550 : bytes550=statementBytes 576 (op550.map lower) ∧ bytes550.length=54 := by core033_kernel_decide
def op551 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes551 : Bytes := ("    let r00000241: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked551 : bytes551=statementBytes 577 (op551.map lower) ∧ bytes551.length=41 := by core033_kernel_decide
def op552 : List WordIR.Op := [.bxor 576 577]
def bytes552 : Bytes := ("    let r00000242: u32 = r00000240 ^ r00000241;\n" : String).toByteArray.data.toList
theorem checked552 : bytes552=statementBytes 578 (op552.map lower) ∧ bytes552.length=48 := by core033_kernel_decide
def op553 : List WordIR.Op := [.badd 18 20]
def bytes553 : Bytes := ("    let r00000243: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked553 : bytes553=statementBytes 579 (op553.map lower) ∧ bytes553.length=60 := by core033_kernel_decide
def op554 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes554 : Bytes := ("    let r00000244: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked554 : bytes554=statementBytes 580 (op554.map lower) ∧ bytes554.length=41 := by core033_kernel_decide
def op555 : List WordIR.Op := [.bnot 580]
def bytes555 : Bytes := ("    let r00000245: u32 = !r00000244;\n" : String).toByteArray.data.toList
theorem checked555 : bytes555=statementBytes 581 (op555.map lower) ∧ bytes555.length=37 := by core033_kernel_decide
def op556 : List WordIR.Op := [.band 579 581]
def bytes556 : Bytes := ("    let r00000246: u32 = r00000243 & r00000245;\n" : String).toByteArray.data.toList
theorem checked556 : bytes556=statementBytes 582 (op556.map lower) ∧ bytes556.length=48 := by core033_kernel_decide
def op557 : List WordIR.Op := [.badd 18 20]
def bytes557 : Bytes := ("    let r00000247: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked557 : bytes557=statementBytes 583 (op557.map lower) ∧ bytes557.length=60 := by core033_kernel_decide
def op558 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes558 : Bytes := ("    let r00000248: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked558 : bytes558=statementBytes 584 (op558.map lower) ∧ bytes558.length=41 := by core033_kernel_decide
def op559 : List WordIR.Op := [.bnot 584]
def bytes559 : Bytes := ("    let r00000249: u32 = !r00000248;\n" : String).toByteArray.data.toList
theorem checked559 : bytes559=statementBytes 585 (op559.map lower) ∧ bytes559.length=37 := by core033_kernel_decide
def op560 : List WordIR.Op := [.bxor 583 585]
def bytes560 : Bytes := ("    let r0000024a: u32 = r00000247 ^ r00000249;\n" : String).toByteArray.data.toList
theorem checked560 : bytes560=statementBytes 586 (op560.map lower) ∧ bytes560.length=48 := by core033_kernel_decide
def op561 : List WordIR.Op := [.badd 18 20]
def bytes561 : Bytes := ("    let r0000024b: u32 = r00000012.wrapping_add(r00000014);\n" : String).toByteArray.data.toList
theorem checked561 : bytes561=statementBytes 587 (op561.map lower) ∧ bytes561.length=60 := by core033_kernel_decide
def op562 : List WordIR.Op := [.literal (BitVec.ofNat 32 1048576)]
def bytes562 : Bytes := ("    let r0000024c: u32 = 0x00100000_u32;\n" : String).toByteArray.data.toList
theorem checked562 : bytes562=statementBytes 588 (op562.map lower) ∧ bytes562.length=41 := by core033_kernel_decide
def op563 : List WordIR.Op := [.bnot 588]
def bytes563 : Bytes := ("    let r0000024d: u32 = !r0000024c;\n" : String).toByteArray.data.toList
theorem checked563 : bytes563=statementBytes 589 (op563.map lower) ∧ bytes563.length=37 := by core033_kernel_decide
def op564 : List WordIR.Op := [.badd 587 589]
def bytes564 : Bytes := ("    let r0000024e: u32 = r0000024b.wrapping_add(r0000024d);\n" : String).toByteArray.data.toList
theorem checked564 : bytes564=statementBytes 590 (op564.map lower) ∧ bytes564.length=60 := by core033_kernel_decide
def op565 : List WordIR.Op := [.bnot 590]
def bytes565 : Bytes := ("    let r0000024f: u32 = !r0000024e;\n" : String).toByteArray.data.toList
theorem checked565 : bytes565=statementBytes 591 (op565.map lower) ∧ bytes565.length=37 := by core033_kernel_decide
def op566 : List WordIR.Op := [.band 586 591]
def bytes566 : Bytes := ("    let r00000250: u32 = r0000024a & r0000024f;\n" : String).toByteArray.data.toList
theorem checked566 : bytes566=statementBytes 592 (op566.map lower) ∧ bytes566.length=48 := by core033_kernel_decide
def op567 : List WordIR.Op := [.bxor 582 592]
def bytes567 : Bytes := ("    let r00000251: u32 = r00000246 ^ r00000250;\n" : String).toByteArray.data.toList
theorem checked567 : bytes567=statementBytes 593 (op567.map lower) ∧ bytes567.length=48 := by core033_kernel_decide
def op568 : List WordIR.Op := [.shr 593 31]
def bytes568 : Bytes := ("    let r00000252: u32 = r00000251 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked568 : bytes568=statementBytes 594 (op568.map lower) ∧ bytes568.length=54 := by core033_kernel_decide
def op569 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes569 : Bytes := ("    let r00000253: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked569 : bytes569=statementBytes 595 (op569.map lower) ∧ bytes569.length=41 := by core033_kernel_decide
def op570 : List WordIR.Op := [.bxor 594 595]
def bytes570 : Bytes := ("    let r00000254: u32 = r00000252 ^ r00000253;\n" : String).toByteArray.data.toList
theorem checked570 : bytes570=statementBytes 596 (op570.map lower) ∧ bytes570.length=48 := by core033_kernel_decide
def op571 : List WordIR.Op := [.band 578 596]
def bytes571 : Bytes := ("    let r00000255: u32 = r00000242 & r00000254;\n" : String).toByteArray.data.toList
theorem checked571 : bytes571=statementBytes 597 (op571.map lower) ∧ bytes571.length=48 := by core033_kernel_decide
def op572 : List WordIR.Op := [.band 536 597]
def bytes572 : Bytes := ("    let r00000256: u32 = r00000218 & r00000255;\n" : String).toByteArray.data.toList
theorem checked572 : bytes572=statementBytes 598 (op572.map lower) ∧ bytes572.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op512,op513,op514,op515,op516,op517,op518,op519,op520,op521,op522,op523,op524,op525,op526,op527,op528,op529,op530,op531,op532,op533,op534,op535,op536,op537,op538,op539,op540,op541,op542,op543,op544,op545,op546,op547,op548,op549,op550,op551,op552,op553,op554,op555,op556,op557,op558,op559,op560,op561,op562,op563,op564,op565,op566,op567,op568,op569,op570,op571,op572]
def chunks : List Bytes := [bytes512,bytes513,bytes514,bytes515,bytes516,bytes517,bytes518,bytes519,bytes520,bytes521,bytes522,bytes523,bytes524,bytes525,bytes526,bytes527,bytes528,bytes529,bytes530,bytes531,bytes532,bytes533,bytes534,bytes535,bytes536,bytes537,bytes538,bytes539,bytes540,bytes541,bytes542,bytes543,bytes544,bytes545,bytes546,bytes547,bytes548,bytes549,bytes550,bytes551,bytes552,bytes553,bytes554,bytes555,bytes556,bytes557,bytes558,bytes559,bytes560,bytes561,bytes562,bytes563,bytes564,bytes565,bytes566,bytes567,bytes568,bytes569,bytes570,bytes571,bytes572]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 538 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked512.1 (.cons _ _ _ _ _ checked513.1 (.cons _ _ _ _ _ checked514.1 (.cons _ _ _ _ _ checked515.1 (.cons _ _ _ _ _ checked516.1 (.cons _ _ _ _ _ checked517.1 (.cons _ _ _ _ _ checked518.1 (.cons _ _ _ _ _ checked519.1 (.cons _ _ _ _ _ checked520.1 (.cons _ _ _ _ _ checked521.1 (.cons _ _ _ _ _ checked522.1 (.cons _ _ _ _ _ checked523.1 (.cons _ _ _ _ _ checked524.1 (.cons _ _ _ _ _ checked525.1 (.cons _ _ _ _ _ checked526.1 (.cons _ _ _ _ _ checked527.1 (.cons _ _ _ _ _ checked528.1 (.cons _ _ _ _ _ checked529.1 (.cons _ _ _ _ _ checked530.1 (.cons _ _ _ _ _ checked531.1 (.cons _ _ _ _ _ checked532.1 (.cons _ _ _ _ _ checked533.1 (.cons _ _ _ _ _ checked534.1 (.cons _ _ _ _ _ checked535.1 (.cons _ _ _ _ _ checked536.1 (.cons _ _ _ _ _ checked537.1 (.cons _ _ _ _ _ checked538.1 (.cons _ _ _ _ _ checked539.1 (.cons _ _ _ _ _ checked540.1 (.cons _ _ _ _ _ checked541.1 (.cons _ _ _ _ _ checked542.1 (.cons _ _ _ _ _ checked543.1 (.cons _ _ _ _ _ checked544.1 (.cons _ _ _ _ _ checked545.1 (.cons _ _ _ _ _ checked546.1 (.cons _ _ _ _ _ checked547.1 (.cons _ _ _ _ _ checked548.1 (.cons _ _ _ _ _ checked549.1 (.cons _ _ _ _ _ checked550.1 (.cons _ _ _ _ _ checked551.1 (.cons _ _ _ _ _ checked552.1 (.cons _ _ _ _ _ checked553.1 (.cons _ _ _ _ _ checked554.1 (.cons _ _ _ _ _ checked555.1 (.cons _ _ _ _ _ checked556.1 (.cons _ _ _ _ _ checked557.1 (.cons _ _ _ _ _ checked558.1 (.cons _ _ _ _ _ checked559.1 (.cons _ _ _ _ _ checked560.1 (.cons _ _ _ _ _ checked561.1 (.cons _ _ _ _ _ checked562.1 (.cons _ _ _ _ _ checked563.1 (.cons _ _ _ _ _ checked564.1 (.cons _ _ _ _ _ checked565.1 (.cons _ _ _ _ _ checked566.1 (.cons _ _ _ _ _ checked567.1 (.cons _ _ _ _ _ checked568.1 (.cons _ _ _ _ _ checked569.1 (.cons _ _ _ _ _ checked570.1 (.cons _ _ _ _ _ checked571.1 (.cons _ _ _ _ _ checked572.1 (.empty _))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 538 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=61 := rfl
theorem partSize : partBytes.length=2937 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked512.2,checked513.2,checked514.2,checked515.2,checked516.2,checked517.2,checked518.2,checked519.2,checked520.2,checked521.2,checked522.2,checked523.2,checked524.2,checked525.2,checked526.2,checked527.2,checked528.2,checked529.2,checked530.2,checked531.2,checked532.2,checked533.2,checked534.2,checked535.2,checked536.2,checked537.2,checked538.2,checked539.2,checked540.2,checked541.2,checked542.2,checked543.2,checked544.2,checked545.2,checked546.2,checked547.2,checked548.2,checked549.2,checked550.2,checked551.2,checked552.2,checked553.2,checked554.2,checked555.2,checked556.2,checked557.2,checked558.2,checked559.2,checked560.2,checked561.2,checked562.2,checked563.2,checked564.2,checked565.2,checked566.2,checked567.2,checked568.2,checked569.2,checked570.2,checked571.2,checked572.2]
  decide
end ArtifactCheckedBranchGroup8
