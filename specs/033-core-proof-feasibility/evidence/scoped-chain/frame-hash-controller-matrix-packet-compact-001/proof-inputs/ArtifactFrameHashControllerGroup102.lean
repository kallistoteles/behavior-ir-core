import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup102
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6528 : List WordIR.Op := [.bxor 6569 6570]
def bytes6528 : Bytes := ("    let r000019ab: u32 = r000019a9 ^ r000019aa;\n" : String).toByteArray.data.toList
theorem checked6528 : bytes6528=statementBytes 6571 (op6528.map lower) ∧ bytes6528.length=48 := by core033_kernel_decide
def op6529 : List WordIR.Op := [.shr 6555 10]
def bytes6529 : Bytes := ("    let r000019ac: u32 = r0000199b >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6529 : bytes6529=statementBytes 6572 (op6529.map lower) ∧ bytes6529.length=54 := by core033_kernel_decide
def op6530 : List WordIR.Op := [.bxor 6571 6572]
def bytes6530 : Bytes := ("    let r000019ad: u32 = r000019ab ^ r000019ac;\n" : String).toByteArray.data.toList
theorem checked6530 : bytes6530=statementBytes 6573 (op6530.map lower) ∧ bytes6530.length=48 := by core033_kernel_decide
def op6531 : List WordIR.Op := [.badd 6573 6490]
def bytes6531 : Bytes := ("    let r000019ae: u32 = r000019ad.wrapping_add(r0000195a);\n" : String).toByteArray.data.toList
theorem checked6531 : bytes6531=statementBytes 6574 (op6531.map lower) ∧ bytes6531.length=60 := by core033_kernel_decide
def op6532 : List WordIR.Op := [.rotr 5248 7]
def bytes6532 : Bytes := ("    let r000019af: u32 = r00001480.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6532 : bytes6532=statementBytes 6575 (op6532.map lower) ∧ bytes6532.length=65 := by core033_kernel_decide
def op6533 : List WordIR.Op := [.rotr 5248 18]
def bytes6533 : Bytes := ("    let r000019b0: u32 = r00001480.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6533 : bytes6533=statementBytes 6576 (op6533.map lower) ∧ bytes6533.length=65 := by core033_kernel_decide
def op6534 : List WordIR.Op := [.bxor 6575 6576]
def bytes6534 : Bytes := ("    let r000019b1: u32 = r000019af ^ r000019b0;\n" : String).toByteArray.data.toList
theorem checked6534 : bytes6534=statementBytes 6577 (op6534.map lower) ∧ bytes6534.length=48 := by core033_kernel_decide
def op6535 : List WordIR.Op := [.shr 5248 3]
def bytes6535 : Bytes := ("    let r000019b2: u32 = r00001480 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6535 : bytes6535=statementBytes 6578 (op6535.map lower) ∧ bytes6535.length=54 := by core033_kernel_decide
def op6536 : List WordIR.Op := [.bxor 6577 6578]
def bytes6536 : Bytes := ("    let r000019b3: u32 = r000019b1 ^ r000019b2;\n" : String).toByteArray.data.toList
theorem checked6536 : bytes6536=statementBytes 6579 (op6536.map lower) ∧ bytes6536.length=48 := by core033_kernel_decide
def op6537 : List WordIR.Op := [.badd 6574 6579]
def bytes6537 : Bytes := ("    let r000019b4: u32 = r000019ae.wrapping_add(r000019b3);\n" : String).toByteArray.data.toList
theorem checked6537 : bytes6537=statementBytes 6580 (op6537.map lower) ∧ bytes6537.length=60 := by core033_kernel_decide
def op6538 : List WordIR.Op := [.badd 6580 5242]
def bytes6538 : Bytes := ("    let r000019b5: u32 = r000019b4.wrapping_add(r0000147a);\n" : String).toByteArray.data.toList
theorem checked6538 : bytes6538=statementBytes 6581 (op6538.map lower) ∧ bytes6538.length=60 := by core033_kernel_decide
def op6539 : List WordIR.Op := [.rotr 6568 17]
def bytes6539 : Bytes := ("    let r000019b6: u32 = r000019a8.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6539 : bytes6539=statementBytes 6582 (op6539.map lower) ∧ bytes6539.length=65 := by core033_kernel_decide
def op6540 : List WordIR.Op := [.rotr 6568 19]
def bytes6540 : Bytes := ("    let r000019b7: u32 = r000019a8.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6540 : bytes6540=statementBytes 6583 (op6540.map lower) ∧ bytes6540.length=65 := by core033_kernel_decide
def op6541 : List WordIR.Op := [.bxor 6582 6583]
def bytes6541 : Bytes := ("    let r000019b8: u32 = r000019b6 ^ r000019b7;\n" : String).toByteArray.data.toList
theorem checked6541 : bytes6541=statementBytes 6584 (op6541.map lower) ∧ bytes6541.length=48 := by core033_kernel_decide
def op6542 : List WordIR.Op := [.shr 6568 10]
def bytes6542 : Bytes := ("    let r000019b9: u32 = r000019a8 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6542 : bytes6542=statementBytes 6585 (op6542.map lower) ∧ bytes6542.length=54 := by core033_kernel_decide
def op6543 : List WordIR.Op := [.bxor 6584 6585]
def bytes6543 : Bytes := ("    let r000019ba: u32 = r000019b8 ^ r000019b9;\n" : String).toByteArray.data.toList
theorem checked6543 : bytes6543=statementBytes 6586 (op6543.map lower) ∧ bytes6543.length=48 := by core033_kernel_decide
def op6544 : List WordIR.Op := [.badd 6586 6503]
def bytes6544 : Bytes := ("    let r000019bb: u32 = r000019ba.wrapping_add(r00001967);\n" : String).toByteArray.data.toList
theorem checked6544 : bytes6544=statementBytes 6587 (op6544.map lower) ∧ bytes6544.length=60 := by core033_kernel_decide
def op6545 : List WordIR.Op := [.rotr 5254 7]
def bytes6545 : Bytes := ("    let r000019bc: u32 = r00001486.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6545 : bytes6545=statementBytes 6588 (op6545.map lower) ∧ bytes6545.length=65 := by core033_kernel_decide
def op6546 : List WordIR.Op := [.rotr 5254 18]
def bytes6546 : Bytes := ("    let r000019bd: u32 = r00001486.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6546 : bytes6546=statementBytes 6589 (op6546.map lower) ∧ bytes6546.length=65 := by core033_kernel_decide
def op6547 : List WordIR.Op := [.bxor 6588 6589]
def bytes6547 : Bytes := ("    let r000019be: u32 = r000019bc ^ r000019bd;\n" : String).toByteArray.data.toList
theorem checked6547 : bytes6547=statementBytes 6590 (op6547.map lower) ∧ bytes6547.length=48 := by core033_kernel_decide
def op6548 : List WordIR.Op := [.shr 5254 3]
def bytes6548 : Bytes := ("    let r000019bf: u32 = r00001486 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6548 : bytes6548=statementBytes 6591 (op6548.map lower) ∧ bytes6548.length=54 := by core033_kernel_decide
def op6549 : List WordIR.Op := [.bxor 6590 6591]
def bytes6549 : Bytes := ("    let r000019c0: u32 = r000019be ^ r000019bf;\n" : String).toByteArray.data.toList
theorem checked6549 : bytes6549=statementBytes 6592 (op6549.map lower) ∧ bytes6549.length=48 := by core033_kernel_decide
def op6550 : List WordIR.Op := [.badd 6587 6592]
def bytes6550 : Bytes := ("    let r000019c1: u32 = r000019bb.wrapping_add(r000019c0);\n" : String).toByteArray.data.toList
theorem checked6550 : bytes6550=statementBytes 6593 (op6550.map lower) ∧ bytes6550.length=60 := by core033_kernel_decide
def op6551 : List WordIR.Op := [.badd 6593 5248]
def bytes6551 : Bytes := ("    let r000019c2: u32 = r000019c1.wrapping_add(r00001480);\n" : String).toByteArray.data.toList
theorem checked6551 : bytes6551=statementBytes 6594 (op6551.map lower) ∧ bytes6551.length=60 := by core033_kernel_decide
def op6552 : List WordIR.Op := [.rotr 6581 17]
def bytes6552 : Bytes := ("    let r000019c3: u32 = r000019b5.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6552 : bytes6552=statementBytes 6595 (op6552.map lower) ∧ bytes6552.length=65 := by core033_kernel_decide
def op6553 : List WordIR.Op := [.rotr 6581 19]
def bytes6553 : Bytes := ("    let r000019c4: u32 = r000019b5.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6553 : bytes6553=statementBytes 6596 (op6553.map lower) ∧ bytes6553.length=65 := by core033_kernel_decide
def op6554 : List WordIR.Op := [.bxor 6595 6596]
def bytes6554 : Bytes := ("    let r000019c5: u32 = r000019c3 ^ r000019c4;\n" : String).toByteArray.data.toList
theorem checked6554 : bytes6554=statementBytes 6597 (op6554.map lower) ∧ bytes6554.length=48 := by core033_kernel_decide
def op6555 : List WordIR.Op := [.shr 6581 10]
def bytes6555 : Bytes := ("    let r000019c6: u32 = r000019b5 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6555 : bytes6555=statementBytes 6598 (op6555.map lower) ∧ bytes6555.length=54 := by core033_kernel_decide
def op6556 : List WordIR.Op := [.bxor 6597 6598]
def bytes6556 : Bytes := ("    let r000019c7: u32 = r000019c5 ^ r000019c6;\n" : String).toByteArray.data.toList
theorem checked6556 : bytes6556=statementBytes 6599 (op6556.map lower) ∧ bytes6556.length=48 := by core033_kernel_decide
def op6557 : List WordIR.Op := [.badd 6599 6516]
def bytes6557 : Bytes := ("    let r000019c8: u32 = r000019c7.wrapping_add(r00001974);\n" : String).toByteArray.data.toList
theorem checked6557 : bytes6557=statementBytes 6600 (op6557.map lower) ∧ bytes6557.length=60 := by core033_kernel_decide
def op6558 : List WordIR.Op := [.rotr 5260 7]
def bytes6558 : Bytes := ("    let r000019c9: u32 = r0000148c.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6558 : bytes6558=statementBytes 6601 (op6558.map lower) ∧ bytes6558.length=65 := by core033_kernel_decide
def op6559 : List WordIR.Op := [.rotr 5260 18]
def bytes6559 : Bytes := ("    let r000019ca: u32 = r0000148c.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6559 : bytes6559=statementBytes 6602 (op6559.map lower) ∧ bytes6559.length=65 := by core033_kernel_decide
def op6560 : List WordIR.Op := [.bxor 6601 6602]
def bytes6560 : Bytes := ("    let r000019cb: u32 = r000019c9 ^ r000019ca;\n" : String).toByteArray.data.toList
theorem checked6560 : bytes6560=statementBytes 6603 (op6560.map lower) ∧ bytes6560.length=48 := by core033_kernel_decide
def op6561 : List WordIR.Op := [.shr 5260 3]
def bytes6561 : Bytes := ("    let r000019cc: u32 = r0000148c >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6561 : bytes6561=statementBytes 6604 (op6561.map lower) ∧ bytes6561.length=54 := by core033_kernel_decide
def op6562 : List WordIR.Op := [.bxor 6603 6604]
def bytes6562 : Bytes := ("    let r000019cd: u32 = r000019cb ^ r000019cc;\n" : String).toByteArray.data.toList
theorem checked6562 : bytes6562=statementBytes 6605 (op6562.map lower) ∧ bytes6562.length=48 := by core033_kernel_decide
def op6563 : List WordIR.Op := [.badd 6600 6605]
def bytes6563 : Bytes := ("    let r000019ce: u32 = r000019c8.wrapping_add(r000019cd);\n" : String).toByteArray.data.toList
theorem checked6563 : bytes6563=statementBytes 6606 (op6563.map lower) ∧ bytes6563.length=60 := by core033_kernel_decide
def op6564 : List WordIR.Op := [.badd 6606 5254]
def bytes6564 : Bytes := ("    let r000019cf: u32 = r000019ce.wrapping_add(r00001486);\n" : String).toByteArray.data.toList
theorem checked6564 : bytes6564=statementBytes 6607 (op6564.map lower) ∧ bytes6564.length=60 := by core033_kernel_decide
def op6565 : List WordIR.Op := [.rotr 6594 17]
def bytes6565 : Bytes := ("    let r000019d0: u32 = r000019c2.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6565 : bytes6565=statementBytes 6608 (op6565.map lower) ∧ bytes6565.length=65 := by core033_kernel_decide
def op6566 : List WordIR.Op := [.rotr 6594 19]
def bytes6566 : Bytes := ("    let r000019d1: u32 = r000019c2.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6566 : bytes6566=statementBytes 6609 (op6566.map lower) ∧ bytes6566.length=65 := by core033_kernel_decide
def op6567 : List WordIR.Op := [.bxor 6608 6609]
def bytes6567 : Bytes := ("    let r000019d2: u32 = r000019d0 ^ r000019d1;\n" : String).toByteArray.data.toList
theorem checked6567 : bytes6567=statementBytes 6610 (op6567.map lower) ∧ bytes6567.length=48 := by core033_kernel_decide
def op6568 : List WordIR.Op := [.shr 6594 10]
def bytes6568 : Bytes := ("    let r000019d3: u32 = r000019c2 >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6568 : bytes6568=statementBytes 6611 (op6568.map lower) ∧ bytes6568.length=54 := by core033_kernel_decide
def op6569 : List WordIR.Op := [.bxor 6610 6611]
def bytes6569 : Bytes := ("    let r000019d4: u32 = r000019d2 ^ r000019d3;\n" : String).toByteArray.data.toList
theorem checked6569 : bytes6569=statementBytes 6612 (op6569.map lower) ∧ bytes6569.length=48 := by core033_kernel_decide
def op6570 : List WordIR.Op := [.badd 6612 6529]
def bytes6570 : Bytes := ("    let r000019d5: u32 = r000019d4.wrapping_add(r00001981);\n" : String).toByteArray.data.toList
theorem checked6570 : bytes6570=statementBytes 6613 (op6570.map lower) ∧ bytes6570.length=60 := by core033_kernel_decide
def op6571 : List WordIR.Op := [.rotr 6425 7]
def bytes6571 : Bytes := ("    let r000019d6: u32 = r00001919.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6571 : bytes6571=statementBytes 6614 (op6571.map lower) ∧ bytes6571.length=65 := by core033_kernel_decide
def op6572 : List WordIR.Op := [.rotr 6425 18]
def bytes6572 : Bytes := ("    let r000019d7: u32 = r00001919.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6572 : bytes6572=statementBytes 6615 (op6572.map lower) ∧ bytes6572.length=65 := by core033_kernel_decide
def op6573 : List WordIR.Op := [.bxor 6614 6615]
def bytes6573 : Bytes := ("    let r000019d8: u32 = r000019d6 ^ r000019d7;\n" : String).toByteArray.data.toList
theorem checked6573 : bytes6573=statementBytes 6616 (op6573.map lower) ∧ bytes6573.length=48 := by core033_kernel_decide
def op6574 : List WordIR.Op := [.shr 6425 3]
def bytes6574 : Bytes := ("    let r000019d9: u32 = r00001919 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6574 : bytes6574=statementBytes 6617 (op6574.map lower) ∧ bytes6574.length=54 := by core033_kernel_decide
def op6575 : List WordIR.Op := [.bxor 6616 6617]
def bytes6575 : Bytes := ("    let r000019da: u32 = r000019d8 ^ r000019d9;\n" : String).toByteArray.data.toList
theorem checked6575 : bytes6575=statementBytes 6618 (op6575.map lower) ∧ bytes6575.length=48 := by core033_kernel_decide
def op6576 : List WordIR.Op := [.badd 6613 6618]
def bytes6576 : Bytes := ("    let r000019db: u32 = r000019d5.wrapping_add(r000019da);\n" : String).toByteArray.data.toList
theorem checked6576 : bytes6576=statementBytes 6619 (op6576.map lower) ∧ bytes6576.length=60 := by core033_kernel_decide
def op6577 : List WordIR.Op := [.badd 6619 5260]
def bytes6577 : Bytes := ("    let r000019dc: u32 = r000019db.wrapping_add(r0000148c);\n" : String).toByteArray.data.toList
theorem checked6577 : bytes6577=statementBytes 6620 (op6577.map lower) ∧ bytes6577.length=60 := by core033_kernel_decide
def op6578 : List WordIR.Op := [.rotr 6607 17]
def bytes6578 : Bytes := ("    let r000019dd: u32 = r000019cf.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6578 : bytes6578=statementBytes 6621 (op6578.map lower) ∧ bytes6578.length=65 := by core033_kernel_decide
def op6579 : List WordIR.Op := [.rotr 6607 19]
def bytes6579 : Bytes := ("    let r000019de: u32 = r000019cf.rotate_right(0x00000013_u32);\n" : String).toByteArray.data.toList
theorem checked6579 : bytes6579=statementBytes 6622 (op6579.map lower) ∧ bytes6579.length=65 := by core033_kernel_decide
def op6580 : List WordIR.Op := [.bxor 6621 6622]
def bytes6580 : Bytes := ("    let r000019df: u32 = r000019dd ^ r000019de;\n" : String).toByteArray.data.toList
theorem checked6580 : bytes6580=statementBytes 6623 (op6580.map lower) ∧ bytes6580.length=48 := by core033_kernel_decide
def op6581 : List WordIR.Op := [.shr 6607 10]
def bytes6581 : Bytes := ("    let r000019e0: u32 = r000019cf >> 0x0000000a_u32;\n" : String).toByteArray.data.toList
theorem checked6581 : bytes6581=statementBytes 6624 (op6581.map lower) ∧ bytes6581.length=54 := by core033_kernel_decide
def op6582 : List WordIR.Op := [.bxor 6623 6624]
def bytes6582 : Bytes := ("    let r000019e1: u32 = r000019df ^ r000019e0;\n" : String).toByteArray.data.toList
theorem checked6582 : bytes6582=statementBytes 6625 (op6582.map lower) ∧ bytes6582.length=48 := by core033_kernel_decide
def op6583 : List WordIR.Op := [.badd 6625 6542]
def bytes6583 : Bytes := ("    let r000019e2: u32 = r000019e1.wrapping_add(r0000198e);\n" : String).toByteArray.data.toList
theorem checked6583 : bytes6583=statementBytes 6626 (op6583.map lower) ∧ bytes6583.length=60 := by core033_kernel_decide
def op6584 : List WordIR.Op := [.rotr 6438 7]
def bytes6584 : Bytes := ("    let r000019e3: u32 = r00001926.rotate_right(0x00000007_u32);\n" : String).toByteArray.data.toList
theorem checked6584 : bytes6584=statementBytes 6627 (op6584.map lower) ∧ bytes6584.length=65 := by core033_kernel_decide
def op6585 : List WordIR.Op := [.rotr 6438 18]
def bytes6585 : Bytes := ("    let r000019e4: u32 = r00001926.rotate_right(0x00000012_u32);\n" : String).toByteArray.data.toList
theorem checked6585 : bytes6585=statementBytes 6628 (op6585.map lower) ∧ bytes6585.length=65 := by core033_kernel_decide
def op6586 : List WordIR.Op := [.bxor 6627 6628]
def bytes6586 : Bytes := ("    let r000019e5: u32 = r000019e3 ^ r000019e4;\n" : String).toByteArray.data.toList
theorem checked6586 : bytes6586=statementBytes 6629 (op6586.map lower) ∧ bytes6586.length=48 := by core033_kernel_decide
def op6587 : List WordIR.Op := [.shr 6438 3]
def bytes6587 : Bytes := ("    let r000019e6: u32 = r00001926 >> 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked6587 : bytes6587=statementBytes 6630 (op6587.map lower) ∧ bytes6587.length=54 := by core033_kernel_decide
def op6588 : List WordIR.Op := [.bxor 6629 6630]
def bytes6588 : Bytes := ("    let r000019e7: u32 = r000019e5 ^ r000019e6;\n" : String).toByteArray.data.toList
theorem checked6588 : bytes6588=statementBytes 6631 (op6588.map lower) ∧ bytes6588.length=48 := by core033_kernel_decide
def op6589 : List WordIR.Op := [.badd 6626 6631]
def bytes6589 : Bytes := ("    let r000019e8: u32 = r000019e2.wrapping_add(r000019e7);\n" : String).toByteArray.data.toList
theorem checked6589 : bytes6589=statementBytes 6632 (op6589.map lower) ∧ bytes6589.length=60 := by core033_kernel_decide
def op6590 : List WordIR.Op := [.badd 6632 6425]
def bytes6590 : Bytes := ("    let r000019e9: u32 = r000019e8.wrapping_add(r00001919);\n" : String).toByteArray.data.toList
theorem checked6590 : bytes6590=statementBytes 6633 (op6590.map lower) ∧ bytes6590.length=60 := by core033_kernel_decide
def op6591 : List WordIR.Op := [.rotr 6620 17]
def bytes6591 : Bytes := ("    let r000019ea: u32 = r000019dc.rotate_right(0x00000011_u32);\n" : String).toByteArray.data.toList
theorem checked6591 : bytes6591=statementBytes 6634 (op6591.map lower) ∧ bytes6591.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6528,op6529,op6530,op6531,op6532,op6533,op6534,op6535,op6536,op6537,op6538,op6539,op6540,op6541,op6542,op6543,op6544,op6545,op6546,op6547,op6548,op6549,op6550,op6551,op6552,op6553,op6554,op6555,op6556,op6557,op6558,op6559,op6560,op6561,op6562,op6563,op6564,op6565,op6566,op6567,op6568,op6569,op6570,op6571,op6572,op6573,op6574,op6575,op6576,op6577,op6578,op6579,op6580,op6581,op6582,op6583,op6584,op6585,op6586,op6587,op6588,op6589,op6590,op6591]
def chunks : List Bytes := [bytes6528,bytes6529,bytes6530,bytes6531,bytes6532,bytes6533,bytes6534,bytes6535,bytes6536,bytes6537,bytes6538,bytes6539,bytes6540,bytes6541,bytes6542,bytes6543,bytes6544,bytes6545,bytes6546,bytes6547,bytes6548,bytes6549,bytes6550,bytes6551,bytes6552,bytes6553,bytes6554,bytes6555,bytes6556,bytes6557,bytes6558,bytes6559,bytes6560,bytes6561,bytes6562,bytes6563,bytes6564,bytes6565,bytes6566,bytes6567,bytes6568,bytes6569,bytes6570,bytes6571,bytes6572,bytes6573,bytes6574,bytes6575,bytes6576,bytes6577,bytes6578,bytes6579,bytes6580,bytes6581,bytes6582,bytes6583,bytes6584,bytes6585,bytes6586,bytes6587,bytes6588,bytes6589,bytes6590,bytes6591]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6571 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6528.1 (.cons _ _ _ _ _ checked6529.1 (.cons _ _ _ _ _ checked6530.1 (.cons _ _ _ _ _ checked6531.1 (.cons _ _ _ _ _ checked6532.1 (.cons _ _ _ _ _ checked6533.1 (.cons _ _ _ _ _ checked6534.1 (.cons _ _ _ _ _ checked6535.1 (.cons _ _ _ _ _ checked6536.1 (.cons _ _ _ _ _ checked6537.1 (.cons _ _ _ _ _ checked6538.1 (.cons _ _ _ _ _ checked6539.1 (.cons _ _ _ _ _ checked6540.1 (.cons _ _ _ _ _ checked6541.1 (.cons _ _ _ _ _ checked6542.1 (.cons _ _ _ _ _ checked6543.1 (.cons _ _ _ _ _ checked6544.1 (.cons _ _ _ _ _ checked6545.1 (.cons _ _ _ _ _ checked6546.1 (.cons _ _ _ _ _ checked6547.1 (.cons _ _ _ _ _ checked6548.1 (.cons _ _ _ _ _ checked6549.1 (.cons _ _ _ _ _ checked6550.1 (.cons _ _ _ _ _ checked6551.1 (.cons _ _ _ _ _ checked6552.1 (.cons _ _ _ _ _ checked6553.1 (.cons _ _ _ _ _ checked6554.1 (.cons _ _ _ _ _ checked6555.1 (.cons _ _ _ _ _ checked6556.1 (.cons _ _ _ _ _ checked6557.1 (.cons _ _ _ _ _ checked6558.1 (.cons _ _ _ _ _ checked6559.1 (.cons _ _ _ _ _ checked6560.1 (.cons _ _ _ _ _ checked6561.1 (.cons _ _ _ _ _ checked6562.1 (.cons _ _ _ _ _ checked6563.1 (.cons _ _ _ _ _ checked6564.1 (.cons _ _ _ _ _ checked6565.1 (.cons _ _ _ _ _ checked6566.1 (.cons _ _ _ _ _ checked6567.1 (.cons _ _ _ _ _ checked6568.1 (.cons _ _ _ _ _ checked6569.1 (.cons _ _ _ _ _ checked6570.1 (.cons _ _ _ _ _ checked6571.1 (.cons _ _ _ _ _ checked6572.1 (.cons _ _ _ _ _ checked6573.1 (.cons _ _ _ _ _ checked6574.1 (.cons _ _ _ _ _ checked6575.1 (.cons _ _ _ _ _ checked6576.1 (.cons _ _ _ _ _ checked6577.1 (.cons _ _ _ _ _ checked6578.1 (.cons _ _ _ _ _ checked6579.1 (.cons _ _ _ _ _ checked6580.1 (.cons _ _ _ _ _ checked6581.1 (.cons _ _ _ _ _ checked6582.1 (.cons _ _ _ _ _ checked6583.1 (.cons _ _ _ _ _ checked6584.1 (.cons _ _ _ _ _ checked6585.1 (.cons _ _ _ _ _ checked6586.1 (.cons _ _ _ _ _ checked6587.1 (.cons _ _ _ _ _ checked6588.1 (.cons _ _ _ _ _ checked6589.1 (.cons _ _ _ _ _ checked6590.1 (.cons _ _ _ _ _ checked6591.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6571 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3635 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6528.2,checked6529.2,checked6530.2,checked6531.2,checked6532.2,checked6533.2,checked6534.2,checked6535.2,checked6536.2,checked6537.2,checked6538.2,checked6539.2,checked6540.2,checked6541.2,checked6542.2,checked6543.2,checked6544.2,checked6545.2,checked6546.2,checked6547.2,checked6548.2,checked6549.2,checked6550.2,checked6551.2,checked6552.2,checked6553.2,checked6554.2,checked6555.2,checked6556.2,checked6557.2,checked6558.2,checked6559.2,checked6560.2,checked6561.2,checked6562.2,checked6563.2,checked6564.2,checked6565.2,checked6566.2,checked6567.2,checked6568.2,checked6569.2,checked6570.2,checked6571.2,checked6572.2,checked6573.2,checked6574.2,checked6575.2,checked6576.2,checked6577.2,checked6578.2,checked6579.2,checked6580.2,checked6581.2,checked6582.2,checked6583.2,checked6584.2,checked6585.2,checked6586.2,checked6587.2,checked6588.2,checked6589.2,checked6590.2,checked6591.2]
  decide
end ArtifactFrameHashControllerGroup102
