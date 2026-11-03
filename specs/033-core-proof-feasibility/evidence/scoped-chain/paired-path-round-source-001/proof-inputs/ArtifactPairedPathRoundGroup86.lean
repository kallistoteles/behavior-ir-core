import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup86
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5504 : List WordIR.Op := [.bxor 5597 5599]
def bytes5504 : Bytes := ("    let r000015e0: u32 = r000015dd ^ r000015df;\n" : String).toByteArray.data.toList
theorem checked5504 : bytes5504=statementBytes 5600 (op5504.map lower) ∧ bytes5504.length=48 := by core033_kernel_decide
def op5505 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5505 : Bytes := ("    let r000015e1: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5505 : bytes5505=statementBytes 5601 (op5505.map lower) ∧ bytes5505.length=41 := by core033_kernel_decide
def op5506 : List WordIR.Op := [.bxor 616 5601]
def bytes5506 : Bytes := ("    let r000015e2: u32 = r00000268 ^ r000015e1;\n" : String).toByteArray.data.toList
theorem checked5506 : bytes5506=statementBytes 5602 (op5506.map lower) ∧ bytes5506.length=48 := by core033_kernel_decide
def op5507 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5507 : Bytes := ("    let r000015e3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5507 : bytes5507=statementBytes 5603 (op5507.map lower) ∧ bytes5507.length=41 := by core033_kernel_decide
def op5508 : List WordIR.Op := [.bnot 5603]
def bytes5508 : Bytes := ("    let r000015e4: u32 = !r000015e3;\n" : String).toByteArray.data.toList
theorem checked5508 : bytes5508=statementBytes 5604 (op5508.map lower) ∧ bytes5508.length=37 := by core033_kernel_decide
def op5509 : List WordIR.Op := [.badd 5602 5604]
def bytes5509 : Bytes := ("    let r000015e5: u32 = r000015e2.wrapping_add(r000015e4);\n" : String).toByteArray.data.toList
theorem checked5509 : bytes5509=statementBytes 5605 (op5509.map lower) ∧ bytes5509.length=60 := by core033_kernel_decide
def op5510 : List WordIR.Op := [.bnot 5605]
def bytes5510 : Bytes := ("    let r000015e6: u32 = !r000015e5;\n" : String).toByteArray.data.toList
theorem checked5510 : bytes5510=statementBytes 5606 (op5510.map lower) ∧ bytes5510.length=37 := by core033_kernel_decide
def op5511 : List WordIR.Op := [.band 5600 5606]
def bytes5511 : Bytes := ("    let r000015e7: u32 = r000015e0 & r000015e6;\n" : String).toByteArray.data.toList
theorem checked5511 : bytes5511=statementBytes 5607 (op5511.map lower) ∧ bytes5511.length=48 := by core033_kernel_decide
def op5512 : List WordIR.Op := [.bxor 5595 5607]
def bytes5512 : Bytes := ("    let r000015e8: u32 = r000015db ^ r000015e7;\n" : String).toByteArray.data.toList
theorem checked5512 : bytes5512=statementBytes 5608 (op5512.map lower) ∧ bytes5512.length=48 := by core033_kernel_decide
def op5513 : List WordIR.Op := [.shr 5608 31]
def bytes5513 : Bytes := ("    let r000015e9: u32 = r000015e8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5513 : bytes5513=statementBytes 5609 (op5513.map lower) ∧ bytes5513.length=54 := by core033_kernel_decide
def op5514 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5514 : Bytes := ("    let r000015ea: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5514 : bytes5514=statementBytes 5610 (op5514.map lower) ∧ bytes5514.length=41 := by core033_kernel_decide
def op5515 : List WordIR.Op := [.bxor 5609 5610]
def bytes5515 : Bytes := ("    let r000015eb: u32 = r000015e9 ^ r000015ea;\n" : String).toByteArray.data.toList
theorem checked5515 : bytes5515=statementBytes 5611 (op5515.map lower) ∧ bytes5515.length=48 := by core033_kernel_decide
def op5516 : List WordIR.Op := [.bnot 5611]
def bytes5516 : Bytes := ("    let r000015ec: u32 = !r000015eb;\n" : String).toByteArray.data.toList
theorem checked5516 : bytes5516=statementBytes 5612 (op5516.map lower) ∧ bytes5516.length=37 := by core033_kernel_decide
def op5517 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5517 : Bytes := ("    let r000015ed: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5517 : bytes5517=statementBytes 5613 (op5517.map lower) ∧ bytes5517.length=41 := by core033_kernel_decide
def op5518 : List WordIR.Op := [.badd 5612 5613]
def bytes5518 : Bytes := ("    let r000015ee: u32 = r000015ec.wrapping_add(r000015ed);\n" : String).toByteArray.data.toList
theorem checked5518 : bytes5518=statementBytes 5614 (op5518.map lower) ∧ bytes5518.length=60 := by core033_kernel_decide
def op5519 : List WordIR.Op := [.bnot 5614]
def bytes5519 : Bytes := ("    let r000015ef: u32 = !r000015ee;\n" : String).toByteArray.data.toList
theorem checked5519 : bytes5519=statementBytes 5615 (op5519.map lower) ∧ bytes5519.length=37 := by core033_kernel_decide
def op5520 : List WordIR.Op := [.band 5615 1977]
def bytes5520 : Bytes := ("    let r000015f0: u32 = r000015ef & r000007b9;\n" : String).toByteArray.data.toList
theorem checked5520 : bytes5520=statementBytes 5616 (op5520.map lower) ∧ bytes5520.length=48 := by core033_kernel_decide
def op5521 : List WordIR.Op := [.bxor 5590 5616]
def bytes5521 : Bytes := ("    let r000015f1: u32 = r000015d6 ^ r000015f0;\n" : String).toByteArray.data.toList
theorem checked5521 : bytes5521=statementBytes 5617 (op5521.map lower) ∧ bytes5521.length=48 := by core033_kernel_decide
def op5522 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5522 : Bytes := ("    let r000015f2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5522 : bytes5522=statementBytes 5618 (op5522.map lower) ∧ bytes5522.length=41 := by core033_kernel_decide
def op5523 : List WordIR.Op := [.bxor 616 5618]
def bytes5523 : Bytes := ("    let r000015f3: u32 = r00000268 ^ r000015f2;\n" : String).toByteArray.data.toList
theorem checked5523 : bytes5523=statementBytes 5619 (op5523.map lower) ∧ bytes5523.length=48 := by core033_kernel_decide
def op5524 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5524 : Bytes := ("    let r000015f4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5524 : bytes5524=statementBytes 5620 (op5524.map lower) ∧ bytes5524.length=41 := by core033_kernel_decide
def op5525 : List WordIR.Op := [.bnot 5620]
def bytes5525 : Bytes := ("    let r000015f5: u32 = !r000015f4;\n" : String).toByteArray.data.toList
theorem checked5525 : bytes5525=statementBytes 5621 (op5525.map lower) ∧ bytes5525.length=37 := by core033_kernel_decide
def op5526 : List WordIR.Op := [.band 5619 5621]
def bytes5526 : Bytes := ("    let r000015f6: u32 = r000015f3 & r000015f5;\n" : String).toByteArray.data.toList
theorem checked5526 : bytes5526=statementBytes 5622 (op5526.map lower) ∧ bytes5526.length=48 := by core033_kernel_decide
def op5527 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5527 : Bytes := ("    let r000015f7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5527 : bytes5527=statementBytes 5623 (op5527.map lower) ∧ bytes5527.length=41 := by core033_kernel_decide
def op5528 : List WordIR.Op := [.bxor 616 5623]
def bytes5528 : Bytes := ("    let r000015f8: u32 = r00000268 ^ r000015f7;\n" : String).toByteArray.data.toList
theorem checked5528 : bytes5528=statementBytes 5624 (op5528.map lower) ∧ bytes5528.length=48 := by core033_kernel_decide
def op5529 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5529 : Bytes := ("    let r000015f9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5529 : bytes5529=statementBytes 5625 (op5529.map lower) ∧ bytes5529.length=41 := by core033_kernel_decide
def op5530 : List WordIR.Op := [.bnot 5625]
def bytes5530 : Bytes := ("    let r000015fa: u32 = !r000015f9;\n" : String).toByteArray.data.toList
theorem checked5530 : bytes5530=statementBytes 5626 (op5530.map lower) ∧ bytes5530.length=37 := by core033_kernel_decide
def op5531 : List WordIR.Op := [.bxor 5624 5626]
def bytes5531 : Bytes := ("    let r000015fb: u32 = r000015f8 ^ r000015fa;\n" : String).toByteArray.data.toList
theorem checked5531 : bytes5531=statementBytes 5627 (op5531.map lower) ∧ bytes5531.length=48 := by core033_kernel_decide
def op5532 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5532 : Bytes := ("    let r000015fc: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5532 : bytes5532=statementBytes 5628 (op5532.map lower) ∧ bytes5532.length=41 := by core033_kernel_decide
def op5533 : List WordIR.Op := [.bxor 616 5628]
def bytes5533 : Bytes := ("    let r000015fd: u32 = r00000268 ^ r000015fc;\n" : String).toByteArray.data.toList
theorem checked5533 : bytes5533=statementBytes 5629 (op5533.map lower) ∧ bytes5533.length=48 := by core033_kernel_decide
def op5534 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5534 : Bytes := ("    let r000015fe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5534 : bytes5534=statementBytes 5630 (op5534.map lower) ∧ bytes5534.length=41 := by core033_kernel_decide
def op5535 : List WordIR.Op := [.bnot 5630]
def bytes5535 : Bytes := ("    let r000015ff: u32 = !r000015fe;\n" : String).toByteArray.data.toList
theorem checked5535 : bytes5535=statementBytes 5631 (op5535.map lower) ∧ bytes5535.length=37 := by core033_kernel_decide
def op5536 : List WordIR.Op := [.badd 5629 5631]
def bytes5536 : Bytes := ("    let r00001600: u32 = r000015fd.wrapping_add(r000015ff);\n" : String).toByteArray.data.toList
theorem checked5536 : bytes5536=statementBytes 5632 (op5536.map lower) ∧ bytes5536.length=60 := by core033_kernel_decide
def op5537 : List WordIR.Op := [.bnot 5632]
def bytes5537 : Bytes := ("    let r00001601: u32 = !r00001600;\n" : String).toByteArray.data.toList
theorem checked5537 : bytes5537=statementBytes 5633 (op5537.map lower) ∧ bytes5537.length=37 := by core033_kernel_decide
def op5538 : List WordIR.Op := [.band 5627 5633]
def bytes5538 : Bytes := ("    let r00001602: u32 = r000015fb & r00001601;\n" : String).toByteArray.data.toList
theorem checked5538 : bytes5538=statementBytes 5634 (op5538.map lower) ∧ bytes5538.length=48 := by core033_kernel_decide
def op5539 : List WordIR.Op := [.bxor 5622 5634]
def bytes5539 : Bytes := ("    let r00001603: u32 = r000015f6 ^ r00001602;\n" : String).toByteArray.data.toList
theorem checked5539 : bytes5539=statementBytes 5635 (op5539.map lower) ∧ bytes5539.length=48 := by core033_kernel_decide
def op5540 : List WordIR.Op := [.shr 5635 31]
def bytes5540 : Bytes := ("    let r00001604: u32 = r00001603 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5540 : bytes5540=statementBytes 5636 (op5540.map lower) ∧ bytes5540.length=54 := by core033_kernel_decide
def op5541 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5541 : Bytes := ("    let r00001605: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5541 : bytes5541=statementBytes 5637 (op5541.map lower) ∧ bytes5541.length=41 := by core033_kernel_decide
def op5542 : List WordIR.Op := [.bxor 5636 5637]
def bytes5542 : Bytes := ("    let r00001606: u32 = r00001604 ^ r00001605;\n" : String).toByteArray.data.toList
theorem checked5542 : bytes5542=statementBytes 5638 (op5542.map lower) ∧ bytes5542.length=48 := by core033_kernel_decide
def op5543 : List WordIR.Op := [.bnot 5638]
def bytes5543 : Bytes := ("    let r00001607: u32 = !r00001606;\n" : String).toByteArray.data.toList
theorem checked5543 : bytes5543=statementBytes 5639 (op5543.map lower) ∧ bytes5543.length=37 := by core033_kernel_decide
def op5544 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5544 : Bytes := ("    let r00001608: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5544 : bytes5544=statementBytes 5640 (op5544.map lower) ∧ bytes5544.length=41 := by core033_kernel_decide
def op5545 : List WordIR.Op := [.badd 5639 5640]
def bytes5545 : Bytes := ("    let r00001609: u32 = r00001607.wrapping_add(r00001608);\n" : String).toByteArray.data.toList
theorem checked5545 : bytes5545=statementBytes 5641 (op5545.map lower) ∧ bytes5545.length=60 := by core033_kernel_decide
def op5546 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5546 : Bytes := ("    let r0000160a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5546 : bytes5546=statementBytes 5642 (op5546.map lower) ∧ bytes5546.length=41 := by core033_kernel_decide
def op5547 : List WordIR.Op := [.band 5641 5642]
def bytes5547 : Bytes := ("    let r0000160b: u32 = r00001609 & r0000160a;\n" : String).toByteArray.data.toList
theorem checked5547 : bytes5547=statementBytes 5643 (op5547.map lower) ∧ bytes5547.length=48 := by core033_kernel_decide
def op5548 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5548 : Bytes := ("    let r0000160c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5548 : bytes5548=statementBytes 5644 (op5548.map lower) ∧ bytes5548.length=41 := by core033_kernel_decide
def op5549 : List WordIR.Op := [.bxor 616 5644]
def bytes5549 : Bytes := ("    let r0000160d: u32 = r00000268 ^ r0000160c;\n" : String).toByteArray.data.toList
theorem checked5549 : bytes5549=statementBytes 5645 (op5549.map lower) ∧ bytes5549.length=48 := by core033_kernel_decide
def op5550 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5550 : Bytes := ("    let r0000160e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5550 : bytes5550=statementBytes 5646 (op5550.map lower) ∧ bytes5550.length=41 := by core033_kernel_decide
def op5551 : List WordIR.Op := [.bnot 5646]
def bytes5551 : Bytes := ("    let r0000160f: u32 = !r0000160e;\n" : String).toByteArray.data.toList
theorem checked5551 : bytes5551=statementBytes 5647 (op5551.map lower) ∧ bytes5551.length=37 := by core033_kernel_decide
def op5552 : List WordIR.Op := [.band 5645 5647]
def bytes5552 : Bytes := ("    let r00001610: u32 = r0000160d & r0000160f;\n" : String).toByteArray.data.toList
theorem checked5552 : bytes5552=statementBytes 5648 (op5552.map lower) ∧ bytes5552.length=48 := by core033_kernel_decide
def op5553 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5553 : Bytes := ("    let r00001611: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5553 : bytes5553=statementBytes 5649 (op5553.map lower) ∧ bytes5553.length=41 := by core033_kernel_decide
def op5554 : List WordIR.Op := [.bxor 616 5649]
def bytes5554 : Bytes := ("    let r00001612: u32 = r00000268 ^ r00001611;\n" : String).toByteArray.data.toList
theorem checked5554 : bytes5554=statementBytes 5650 (op5554.map lower) ∧ bytes5554.length=48 := by core033_kernel_decide
def op5555 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5555 : Bytes := ("    let r00001613: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5555 : bytes5555=statementBytes 5651 (op5555.map lower) ∧ bytes5555.length=41 := by core033_kernel_decide
def op5556 : List WordIR.Op := [.bnot 5651]
def bytes5556 : Bytes := ("    let r00001614: u32 = !r00001613;\n" : String).toByteArray.data.toList
theorem checked5556 : bytes5556=statementBytes 5652 (op5556.map lower) ∧ bytes5556.length=37 := by core033_kernel_decide
def op5557 : List WordIR.Op := [.bxor 5650 5652]
def bytes5557 : Bytes := ("    let r00001615: u32 = r00001612 ^ r00001614;\n" : String).toByteArray.data.toList
theorem checked5557 : bytes5557=statementBytes 5653 (op5557.map lower) ∧ bytes5557.length=48 := by core033_kernel_decide
def op5558 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5558 : Bytes := ("    let r00001616: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5558 : bytes5558=statementBytes 5654 (op5558.map lower) ∧ bytes5558.length=41 := by core033_kernel_decide
def op5559 : List WordIR.Op := [.bxor 616 5654]
def bytes5559 : Bytes := ("    let r00001617: u32 = r00000268 ^ r00001616;\n" : String).toByteArray.data.toList
theorem checked5559 : bytes5559=statementBytes 5655 (op5559.map lower) ∧ bytes5559.length=48 := by core033_kernel_decide
def op5560 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5560 : Bytes := ("    let r00001618: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5560 : bytes5560=statementBytes 5656 (op5560.map lower) ∧ bytes5560.length=41 := by core033_kernel_decide
def op5561 : List WordIR.Op := [.bnot 5656]
def bytes5561 : Bytes := ("    let r00001619: u32 = !r00001618;\n" : String).toByteArray.data.toList
theorem checked5561 : bytes5561=statementBytes 5657 (op5561.map lower) ∧ bytes5561.length=37 := by core033_kernel_decide
def op5562 : List WordIR.Op := [.badd 5655 5657]
def bytes5562 : Bytes := ("    let r0000161a: u32 = r00001617.wrapping_add(r00001619);\n" : String).toByteArray.data.toList
theorem checked5562 : bytes5562=statementBytes 5658 (op5562.map lower) ∧ bytes5562.length=60 := by core033_kernel_decide
def op5563 : List WordIR.Op := [.bnot 5658]
def bytes5563 : Bytes := ("    let r0000161b: u32 = !r0000161a;\n" : String).toByteArray.data.toList
theorem checked5563 : bytes5563=statementBytes 5659 (op5563.map lower) ∧ bytes5563.length=37 := by core033_kernel_decide
def op5564 : List WordIR.Op := [.band 5653 5659]
def bytes5564 : Bytes := ("    let r0000161c: u32 = r00001615 & r0000161b;\n" : String).toByteArray.data.toList
theorem checked5564 : bytes5564=statementBytes 5660 (op5564.map lower) ∧ bytes5564.length=48 := by core033_kernel_decide
def op5565 : List WordIR.Op := [.bxor 5648 5660]
def bytes5565 : Bytes := ("    let r0000161d: u32 = r00001610 ^ r0000161c;\n" : String).toByteArray.data.toList
theorem checked5565 : bytes5565=statementBytes 5661 (op5565.map lower) ∧ bytes5565.length=48 := by core033_kernel_decide
def op5566 : List WordIR.Op := [.shr 5661 31]
def bytes5566 : Bytes := ("    let r0000161e: u32 = r0000161d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5566 : bytes5566=statementBytes 5662 (op5566.map lower) ∧ bytes5566.length=54 := by core033_kernel_decide
def op5567 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5567 : Bytes := ("    let r0000161f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5567 : bytes5567=statementBytes 5663 (op5567.map lower) ∧ bytes5567.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5504,op5505,op5506,op5507,op5508,op5509,op5510,op5511,op5512,op5513,op5514,op5515,op5516,op5517,op5518,op5519,op5520,op5521,op5522,op5523,op5524,op5525,op5526,op5527,op5528,op5529,op5530,op5531,op5532,op5533,op5534,op5535,op5536,op5537,op5538,op5539,op5540,op5541,op5542,op5543,op5544,op5545,op5546,op5547,op5548,op5549,op5550,op5551,op5552,op5553,op5554,op5555,op5556,op5557,op5558,op5559,op5560,op5561,op5562,op5563,op5564,op5565,op5566,op5567]
def chunks : List Bytes := [bytes5504,bytes5505,bytes5506,bytes5507,bytes5508,bytes5509,bytes5510,bytes5511,bytes5512,bytes5513,bytes5514,bytes5515,bytes5516,bytes5517,bytes5518,bytes5519,bytes5520,bytes5521,bytes5522,bytes5523,bytes5524,bytes5525,bytes5526,bytes5527,bytes5528,bytes5529,bytes5530,bytes5531,bytes5532,bytes5533,bytes5534,bytes5535,bytes5536,bytes5537,bytes5538,bytes5539,bytes5540,bytes5541,bytes5542,bytes5543,bytes5544,bytes5545,bytes5546,bytes5547,bytes5548,bytes5549,bytes5550,bytes5551,bytes5552,bytes5553,bytes5554,bytes5555,bytes5556,bytes5557,bytes5558,bytes5559,bytes5560,bytes5561,bytes5562,bytes5563,bytes5564,bytes5565,bytes5566,bytes5567]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5600 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5504.1 (.cons _ _ _ _ _ checked5505.1 (.cons _ _ _ _ _ checked5506.1 (.cons _ _ _ _ _ checked5507.1 (.cons _ _ _ _ _ checked5508.1 (.cons _ _ _ _ _ checked5509.1 (.cons _ _ _ _ _ checked5510.1 (.cons _ _ _ _ _ checked5511.1 (.cons _ _ _ _ _ checked5512.1 (.cons _ _ _ _ _ checked5513.1 (.cons _ _ _ _ _ checked5514.1 (.cons _ _ _ _ _ checked5515.1 (.cons _ _ _ _ _ checked5516.1 (.cons _ _ _ _ _ checked5517.1 (.cons _ _ _ _ _ checked5518.1 (.cons _ _ _ _ _ checked5519.1 (.cons _ _ _ _ _ checked5520.1 (.cons _ _ _ _ _ checked5521.1 (.cons _ _ _ _ _ checked5522.1 (.cons _ _ _ _ _ checked5523.1 (.cons _ _ _ _ _ checked5524.1 (.cons _ _ _ _ _ checked5525.1 (.cons _ _ _ _ _ checked5526.1 (.cons _ _ _ _ _ checked5527.1 (.cons _ _ _ _ _ checked5528.1 (.cons _ _ _ _ _ checked5529.1 (.cons _ _ _ _ _ checked5530.1 (.cons _ _ _ _ _ checked5531.1 (.cons _ _ _ _ _ checked5532.1 (.cons _ _ _ _ _ checked5533.1 (.cons _ _ _ _ _ checked5534.1 (.cons _ _ _ _ _ checked5535.1 (.cons _ _ _ _ _ checked5536.1 (.cons _ _ _ _ _ checked5537.1 (.cons _ _ _ _ _ checked5538.1 (.cons _ _ _ _ _ checked5539.1 (.cons _ _ _ _ _ checked5540.1 (.cons _ _ _ _ _ checked5541.1 (.cons _ _ _ _ _ checked5542.1 (.cons _ _ _ _ _ checked5543.1 (.cons _ _ _ _ _ checked5544.1 (.cons _ _ _ _ _ checked5545.1 (.cons _ _ _ _ _ checked5546.1 (.cons _ _ _ _ _ checked5547.1 (.cons _ _ _ _ _ checked5548.1 (.cons _ _ _ _ _ checked5549.1 (.cons _ _ _ _ _ checked5550.1 (.cons _ _ _ _ _ checked5551.1 (.cons _ _ _ _ _ checked5552.1 (.cons _ _ _ _ _ checked5553.1 (.cons _ _ _ _ _ checked5554.1 (.cons _ _ _ _ _ checked5555.1 (.cons _ _ _ _ _ checked5556.1 (.cons _ _ _ _ _ checked5557.1 (.cons _ _ _ _ _ checked5558.1 (.cons _ _ _ _ _ checked5559.1 (.cons _ _ _ _ _ checked5560.1 (.cons _ _ _ _ _ checked5561.1 (.cons _ _ _ _ _ checked5562.1 (.cons _ _ _ _ _ checked5563.1 (.cons _ _ _ _ _ checked5564.1 (.cons _ _ _ _ _ checked5565.1 (.cons _ _ _ _ _ checked5566.1 (.cons _ _ _ _ _ checked5567.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5600 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2867 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5504.2,checked5505.2,checked5506.2,checked5507.2,checked5508.2,checked5509.2,checked5510.2,checked5511.2,checked5512.2,checked5513.2,checked5514.2,checked5515.2,checked5516.2,checked5517.2,checked5518.2,checked5519.2,checked5520.2,checked5521.2,checked5522.2,checked5523.2,checked5524.2,checked5525.2,checked5526.2,checked5527.2,checked5528.2,checked5529.2,checked5530.2,checked5531.2,checked5532.2,checked5533.2,checked5534.2,checked5535.2,checked5536.2,checked5537.2,checked5538.2,checked5539.2,checked5540.2,checked5541.2,checked5542.2,checked5543.2,checked5544.2,checked5545.2,checked5546.2,checked5547.2,checked5548.2,checked5549.2,checked5550.2,checked5551.2,checked5552.2,checked5553.2,checked5554.2,checked5555.2,checked5556.2,checked5557.2,checked5558.2,checked5559.2,checked5560.2,checked5561.2,checked5562.2,checked5563.2,checked5564.2,checked5565.2,checked5566.2,checked5567.2]
  decide
end ArtifactPairedPathRoundGroup86
