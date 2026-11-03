import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup118
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7552 : List WordIR.Op := [.bxor 7593 7594]
def bytes7552 : Bytes := ("    let r00001dab: u32 = r00001da9 ^ r00001daa;\n" : String).toByteArray.data.toList
theorem checked7552 : bytes7552=statementBytes 7595 (op7552.map lower) ∧ bytes7552.length=48 := by core033_kernel_decide
def op7553 : List WordIR.Op := [.band 7575 7548]
def bytes7553 : Bytes := ("    let r00001dac: u32 = r00001d97 & r00001d7c;\n" : String).toByteArray.data.toList
theorem checked7553 : bytes7553=statementBytes 7596 (op7553.map lower) ∧ bytes7553.length=48 := by core033_kernel_decide
def op7554 : List WordIR.Op := [.band 7575 7521]
def bytes7554 : Bytes := ("    let r00001dad: u32 = r00001d97 & r00001d61;\n" : String).toByteArray.data.toList
theorem checked7554 : bytes7554=statementBytes 7597 (op7554.map lower) ∧ bytes7554.length=48 := by core033_kernel_decide
def op7555 : List WordIR.Op := [.bxor 7596 7597]
def bytes7555 : Bytes := ("    let r00001dae: u32 = r00001dac ^ r00001dad;\n" : String).toByteArray.data.toList
theorem checked7555 : bytes7555=statementBytes 7598 (op7555.map lower) ∧ bytes7555.length=48 := by core033_kernel_decide
def op7556 : List WordIR.Op := [.band 7548 7521]
def bytes7556 : Bytes := ("    let r00001daf: u32 = r00001d7c & r00001d61;\n" : String).toByteArray.data.toList
theorem checked7556 : bytes7556=statementBytes 7599 (op7556.map lower) ∧ bytes7556.length=48 := by core033_kernel_decide
def op7557 : List WordIR.Op := [.bxor 7598 7599]
def bytes7557 : Bytes := ("    let r00001db0: u32 = r00001dae ^ r00001daf;\n" : String).toByteArray.data.toList
theorem checked7557 : bytes7557=statementBytes 7600 (op7557.map lower) ∧ bytes7557.length=48 := by core033_kernel_decide
def op7558 : List WordIR.Op := [.badd 7595 7600]
def bytes7558 : Bytes := ("    let r00001db1: u32 = r00001dab.wrapping_add(r00001db0);\n" : String).toByteArray.data.toList
theorem checked7558 : bytes7558=statementBytes 7601 (op7558.map lower) ∧ bytes7558.length=60 := by core033_kernel_decide
def op7559 : List WordIR.Op := [.badd 7590 7601]
def bytes7559 : Bytes := ("    let r00001db2: u32 = r00001da6.wrapping_add(r00001db1);\n" : String).toByteArray.data.toList
theorem checked7559 : bytes7559=statementBytes 7602 (op7559.map lower) ∧ bytes7559.length=60 := by core033_kernel_decide
def op7560 : List WordIR.Op := [.badd 7494 7590]
def bytes7560 : Bytes := ("    let r00001db3: u32 = r00001d46.wrapping_add(r00001da6);\n" : String).toByteArray.data.toList
theorem checked7560 : bytes7560=statementBytes 7603 (op7560.map lower) ∧ bytes7560.length=60 := by core033_kernel_decide
def op7561 : List WordIR.Op := [.rotr 7603 6]
def bytes7561 : Bytes := ("    let r00001db4: u32 = r00001db3.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7561 : bytes7561=statementBytes 7604 (op7561.map lower) ∧ bytes7561.length=65 := by core033_kernel_decide
def op7562 : List WordIR.Op := [.rotr 7603 11]
def bytes7562 : Bytes := ("    let r00001db5: u32 = r00001db3.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7562 : bytes7562=statementBytes 7605 (op7562.map lower) ∧ bytes7562.length=65 := by core033_kernel_decide
def op7563 : List WordIR.Op := [.bxor 7604 7605]
def bytes7563 : Bytes := ("    let r00001db6: u32 = r00001db4 ^ r00001db5;\n" : String).toByteArray.data.toList
theorem checked7563 : bytes7563=statementBytes 7606 (op7563.map lower) ∧ bytes7563.length=48 := by core033_kernel_decide
def op7564 : List WordIR.Op := [.rotr 7603 25]
def bytes7564 : Bytes := ("    let r00001db7: u32 = r00001db3.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7564 : bytes7564=statementBytes 7607 (op7564.map lower) ∧ bytes7564.length=65 := by core033_kernel_decide
def op7565 : List WordIR.Op := [.bxor 7606 7607]
def bytes7565 : Bytes := ("    let r00001db8: u32 = r00001db6 ^ r00001db7;\n" : String).toByteArray.data.toList
theorem checked7565 : bytes7565=statementBytes 7608 (op7565.map lower) ∧ bytes7565.length=48 := by core033_kernel_decide
def op7566 : List WordIR.Op := [.badd 7522 7608]
def bytes7566 : Bytes := ("    let r00001db9: u32 = r00001d62.wrapping_add(r00001db8);\n" : String).toByteArray.data.toList
theorem checked7566 : bytes7566=statementBytes 7609 (op7566.map lower) ∧ bytes7566.length=60 := by core033_kernel_decide
def op7567 : List WordIR.Op := [.band 7603 7576]
def bytes7567 : Bytes := ("    let r00001dba: u32 = r00001db3 & r00001d98;\n" : String).toByteArray.data.toList
theorem checked7567 : bytes7567=statementBytes 7610 (op7567.map lower) ∧ bytes7567.length=48 := by core033_kernel_decide
def op7568 : List WordIR.Op := [.bnot 7603]
def bytes7568 : Bytes := ("    let r00001dbb: u32 = !r00001db3;\n" : String).toByteArray.data.toList
theorem checked7568 : bytes7568=statementBytes 7611 (op7568.map lower) ∧ bytes7568.length=37 := by core033_kernel_decide
def op7569 : List WordIR.Op := [.band 7611 7549]
def bytes7569 : Bytes := ("    let r00001dbc: u32 = r00001dbb & r00001d7d;\n" : String).toByteArray.data.toList
theorem checked7569 : bytes7569=statementBytes 7612 (op7569.map lower) ∧ bytes7569.length=48 := by core033_kernel_decide
def op7570 : List WordIR.Op := [.bxor 7610 7612]
def bytes7570 : Bytes := ("    let r00001dbd: u32 = r00001dba ^ r00001dbc;\n" : String).toByteArray.data.toList
theorem checked7570 : bytes7570=statementBytes 7613 (op7570.map lower) ∧ bytes7570.length=48 := by core033_kernel_decide
def op7571 : List WordIR.Op := [.badd 7609 7613]
def bytes7571 : Bytes := ("    let r00001dbe: u32 = r00001db9.wrapping_add(r00001dbd);\n" : String).toByteArray.data.toList
theorem checked7571 : bytes7571=statementBytes 7614 (op7571.map lower) ∧ bytes7571.length=60 := by core033_kernel_decide
def op7572 : List WordIR.Op := [.literal (BitVec.ofNat 32 1249150122)]
def bytes7572 : Bytes := ("    let r00001dbf: u32 = 0x4a7484aa_u32;\n" : String).toByteArray.data.toList
theorem checked7572 : bytes7572=statementBytes 7615 (op7572.map lower) ∧ bytes7572.length=41 := by core033_kernel_decide
def op7573 : List WordIR.Op := [.badd 7614 7615]
def bytes7573 : Bytes := ("    let r00001dc0: u32 = r00001dbe.wrapping_add(r00001dbf);\n" : String).toByteArray.data.toList
theorem checked7573 : bytes7573=statementBytes 7616 (op7573.map lower) ∧ bytes7573.length=60 := by core033_kernel_decide
def op7574 : List WordIR.Op := [.badd 7616 6490]
def bytes7574 : Bytes := ("    let r00001dc1: u32 = r00001dc0.wrapping_add(r0000195a);\n" : String).toByteArray.data.toList
theorem checked7574 : bytes7574=statementBytes 7617 (op7574.map lower) ∧ bytes7574.length=60 := by core033_kernel_decide
def op7575 : List WordIR.Op := [.rotr 7602 2]
def bytes7575 : Bytes := ("    let r00001dc2: u32 = r00001db2.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7575 : bytes7575=statementBytes 7618 (op7575.map lower) ∧ bytes7575.length=65 := by core033_kernel_decide
def op7576 : List WordIR.Op := [.rotr 7602 13]
def bytes7576 : Bytes := ("    let r00001dc3: u32 = r00001db2.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7576 : bytes7576=statementBytes 7619 (op7576.map lower) ∧ bytes7576.length=65 := by core033_kernel_decide
def op7577 : List WordIR.Op := [.bxor 7618 7619]
def bytes7577 : Bytes := ("    let r00001dc4: u32 = r00001dc2 ^ r00001dc3;\n" : String).toByteArray.data.toList
theorem checked7577 : bytes7577=statementBytes 7620 (op7577.map lower) ∧ bytes7577.length=48 := by core033_kernel_decide
def op7578 : List WordIR.Op := [.rotr 7602 22]
def bytes7578 : Bytes := ("    let r00001dc5: u32 = r00001db2.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7578 : bytes7578=statementBytes 7621 (op7578.map lower) ∧ bytes7578.length=65 := by core033_kernel_decide
def op7579 : List WordIR.Op := [.bxor 7620 7621]
def bytes7579 : Bytes := ("    let r00001dc6: u32 = r00001dc4 ^ r00001dc5;\n" : String).toByteArray.data.toList
theorem checked7579 : bytes7579=statementBytes 7622 (op7579.map lower) ∧ bytes7579.length=48 := by core033_kernel_decide
def op7580 : List WordIR.Op := [.band 7602 7575]
def bytes7580 : Bytes := ("    let r00001dc7: u32 = r00001db2 & r00001d97;\n" : String).toByteArray.data.toList
theorem checked7580 : bytes7580=statementBytes 7623 (op7580.map lower) ∧ bytes7580.length=48 := by core033_kernel_decide
def op7581 : List WordIR.Op := [.band 7602 7548]
def bytes7581 : Bytes := ("    let r00001dc8: u32 = r00001db2 & r00001d7c;\n" : String).toByteArray.data.toList
theorem checked7581 : bytes7581=statementBytes 7624 (op7581.map lower) ∧ bytes7581.length=48 := by core033_kernel_decide
def op7582 : List WordIR.Op := [.bxor 7623 7624]
def bytes7582 : Bytes := ("    let r00001dc9: u32 = r00001dc7 ^ r00001dc8;\n" : String).toByteArray.data.toList
theorem checked7582 : bytes7582=statementBytes 7625 (op7582.map lower) ∧ bytes7582.length=48 := by core033_kernel_decide
def op7583 : List WordIR.Op := [.band 7575 7548]
def bytes7583 : Bytes := ("    let r00001dca: u32 = r00001d97 & r00001d7c;\n" : String).toByteArray.data.toList
theorem checked7583 : bytes7583=statementBytes 7626 (op7583.map lower) ∧ bytes7583.length=48 := by core033_kernel_decide
def op7584 : List WordIR.Op := [.bxor 7625 7626]
def bytes7584 : Bytes := ("    let r00001dcb: u32 = r00001dc9 ^ r00001dca;\n" : String).toByteArray.data.toList
theorem checked7584 : bytes7584=statementBytes 7627 (op7584.map lower) ∧ bytes7584.length=48 := by core033_kernel_decide
def op7585 : List WordIR.Op := [.badd 7622 7627]
def bytes7585 : Bytes := ("    let r00001dcc: u32 = r00001dc6.wrapping_add(r00001dcb);\n" : String).toByteArray.data.toList
theorem checked7585 : bytes7585=statementBytes 7628 (op7585.map lower) ∧ bytes7585.length=60 := by core033_kernel_decide
def op7586 : List WordIR.Op := [.badd 7617 7628]
def bytes7586 : Bytes := ("    let r00001dcd: u32 = r00001dc1.wrapping_add(r00001dcc);\n" : String).toByteArray.data.toList
theorem checked7586 : bytes7586=statementBytes 7629 (op7586.map lower) ∧ bytes7586.length=60 := by core033_kernel_decide
def op7587 : List WordIR.Op := [.badd 7521 7617]
def bytes7587 : Bytes := ("    let r00001dce: u32 = r00001d61.wrapping_add(r00001dc1);\n" : String).toByteArray.data.toList
theorem checked7587 : bytes7587=statementBytes 7630 (op7587.map lower) ∧ bytes7587.length=60 := by core033_kernel_decide
def op7588 : List WordIR.Op := [.rotr 7630 6]
def bytes7588 : Bytes := ("    let r00001dcf: u32 = r00001dce.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7588 : bytes7588=statementBytes 7631 (op7588.map lower) ∧ bytes7588.length=65 := by core033_kernel_decide
def op7589 : List WordIR.Op := [.rotr 7630 11]
def bytes7589 : Bytes := ("    let r00001dd0: u32 = r00001dce.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked7589 : bytes7589=statementBytes 7632 (op7589.map lower) ∧ bytes7589.length=65 := by core033_kernel_decide
def op7590 : List WordIR.Op := [.bxor 7631 7632]
def bytes7590 : Bytes := ("    let r00001dd1: u32 = r00001dcf ^ r00001dd0;\n" : String).toByteArray.data.toList
theorem checked7590 : bytes7590=statementBytes 7633 (op7590.map lower) ∧ bytes7590.length=48 := by core033_kernel_decide
def op7591 : List WordIR.Op := [.rotr 7630 25]
def bytes7591 : Bytes := ("    let r00001dd2: u32 = r00001dce.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked7591 : bytes7591=statementBytes 7634 (op7591.map lower) ∧ bytes7591.length=65 := by core033_kernel_decide
def op7592 : List WordIR.Op := [.bxor 7633 7634]
def bytes7592 : Bytes := ("    let r00001dd3: u32 = r00001dd1 ^ r00001dd2;\n" : String).toByteArray.data.toList
theorem checked7592 : bytes7592=statementBytes 7635 (op7592.map lower) ∧ bytes7592.length=48 := by core033_kernel_decide
def op7593 : List WordIR.Op := [.badd 7549 7635]
def bytes7593 : Bytes := ("    let r00001dd4: u32 = r00001d7d.wrapping_add(r00001dd3);\n" : String).toByteArray.data.toList
theorem checked7593 : bytes7593=statementBytes 7636 (op7593.map lower) ∧ bytes7593.length=60 := by core033_kernel_decide
def op7594 : List WordIR.Op := [.band 7630 7603]
def bytes7594 : Bytes := ("    let r00001dd5: u32 = r00001dce & r00001db3;\n" : String).toByteArray.data.toList
theorem checked7594 : bytes7594=statementBytes 7637 (op7594.map lower) ∧ bytes7594.length=48 := by core033_kernel_decide
def op7595 : List WordIR.Op := [.bnot 7630]
def bytes7595 : Bytes := ("    let r00001dd6: u32 = !r00001dce;\n" : String).toByteArray.data.toList
theorem checked7595 : bytes7595=statementBytes 7638 (op7595.map lower) ∧ bytes7595.length=37 := by core033_kernel_decide
def op7596 : List WordIR.Op := [.band 7638 7576]
def bytes7596 : Bytes := ("    let r00001dd7: u32 = r00001dd6 & r00001d98;\n" : String).toByteArray.data.toList
theorem checked7596 : bytes7596=statementBytes 7639 (op7596.map lower) ∧ bytes7596.length=48 := by core033_kernel_decide
def op7597 : List WordIR.Op := [.bxor 7637 7639]
def bytes7597 : Bytes := ("    let r00001dd8: u32 = r00001dd5 ^ r00001dd7;\n" : String).toByteArray.data.toList
theorem checked7597 : bytes7597=statementBytes 7640 (op7597.map lower) ∧ bytes7597.length=48 := by core033_kernel_decide
def op7598 : List WordIR.Op := [.badd 7636 7640]
def bytes7598 : Bytes := ("    let r00001dd9: u32 = r00001dd4.wrapping_add(r00001dd8);\n" : String).toByteArray.data.toList
theorem checked7598 : bytes7598=statementBytes 7641 (op7598.map lower) ∧ bytes7598.length=60 := by core033_kernel_decide
def op7599 : List WordIR.Op := [.literal (BitVec.ofNat 32 1555081692)]
def bytes7599 : Bytes := ("    let r00001dda: u32 = 0x5cb0a9dc_u32;\n" : String).toByteArray.data.toList
theorem checked7599 : bytes7599=statementBytes 7642 (op7599.map lower) ∧ bytes7599.length=41 := by core033_kernel_decide
def op7600 : List WordIR.Op := [.badd 7641 7642]
def bytes7600 : Bytes := ("    let r00001ddb: u32 = r00001dd9.wrapping_add(r00001dda);\n" : String).toByteArray.data.toList
theorem checked7600 : bytes7600=statementBytes 7643 (op7600.map lower) ∧ bytes7600.length=60 := by core033_kernel_decide
def op7601 : List WordIR.Op := [.badd 7643 6503]
def bytes7601 : Bytes := ("    let r00001ddc: u32 = r00001ddb.wrapping_add(r00001967);\n" : String).toByteArray.data.toList
theorem checked7601 : bytes7601=statementBytes 7644 (op7601.map lower) ∧ bytes7601.length=60 := by core033_kernel_decide
def op7602 : List WordIR.Op := [.rotr 7629 2]
def bytes7602 : Bytes := ("    let r00001ddd: u32 = r00001dcd.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked7602 : bytes7602=statementBytes 7645 (op7602.map lower) ∧ bytes7602.length=65 := by core033_kernel_decide
def op7603 : List WordIR.Op := [.rotr 7629 13]
def bytes7603 : Bytes := ("    let r00001dde: u32 = r00001dcd.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked7603 : bytes7603=statementBytes 7646 (op7603.map lower) ∧ bytes7603.length=65 := by core033_kernel_decide
def op7604 : List WordIR.Op := [.bxor 7645 7646]
def bytes7604 : Bytes := ("    let r00001ddf: u32 = r00001ddd ^ r00001dde;\n" : String).toByteArray.data.toList
theorem checked7604 : bytes7604=statementBytes 7647 (op7604.map lower) ∧ bytes7604.length=48 := by core033_kernel_decide
def op7605 : List WordIR.Op := [.rotr 7629 22]
def bytes7605 : Bytes := ("    let r00001de0: u32 = r00001dcd.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked7605 : bytes7605=statementBytes 7648 (op7605.map lower) ∧ bytes7605.length=65 := by core033_kernel_decide
def op7606 : List WordIR.Op := [.bxor 7647 7648]
def bytes7606 : Bytes := ("    let r00001de1: u32 = r00001ddf ^ r00001de0;\n" : String).toByteArray.data.toList
theorem checked7606 : bytes7606=statementBytes 7649 (op7606.map lower) ∧ bytes7606.length=48 := by core033_kernel_decide
def op7607 : List WordIR.Op := [.band 7629 7602]
def bytes7607 : Bytes := ("    let r00001de2: u32 = r00001dcd & r00001db2;\n" : String).toByteArray.data.toList
theorem checked7607 : bytes7607=statementBytes 7650 (op7607.map lower) ∧ bytes7607.length=48 := by core033_kernel_decide
def op7608 : List WordIR.Op := [.band 7629 7575]
def bytes7608 : Bytes := ("    let r00001de3: u32 = r00001dcd & r00001d97;\n" : String).toByteArray.data.toList
theorem checked7608 : bytes7608=statementBytes 7651 (op7608.map lower) ∧ bytes7608.length=48 := by core033_kernel_decide
def op7609 : List WordIR.Op := [.bxor 7650 7651]
def bytes7609 : Bytes := ("    let r00001de4: u32 = r00001de2 ^ r00001de3;\n" : String).toByteArray.data.toList
theorem checked7609 : bytes7609=statementBytes 7652 (op7609.map lower) ∧ bytes7609.length=48 := by core033_kernel_decide
def op7610 : List WordIR.Op := [.band 7602 7575]
def bytes7610 : Bytes := ("    let r00001de5: u32 = r00001db2 & r00001d97;\n" : String).toByteArray.data.toList
theorem checked7610 : bytes7610=statementBytes 7653 (op7610.map lower) ∧ bytes7610.length=48 := by core033_kernel_decide
def op7611 : List WordIR.Op := [.bxor 7652 7653]
def bytes7611 : Bytes := ("    let r00001de6: u32 = r00001de4 ^ r00001de5;\n" : String).toByteArray.data.toList
theorem checked7611 : bytes7611=statementBytes 7654 (op7611.map lower) ∧ bytes7611.length=48 := by core033_kernel_decide
def op7612 : List WordIR.Op := [.badd 7649 7654]
def bytes7612 : Bytes := ("    let r00001de7: u32 = r00001de1.wrapping_add(r00001de6);\n" : String).toByteArray.data.toList
theorem checked7612 : bytes7612=statementBytes 7655 (op7612.map lower) ∧ bytes7612.length=60 := by core033_kernel_decide
def op7613 : List WordIR.Op := [.badd 7644 7655]
def bytes7613 : Bytes := ("    let r00001de8: u32 = r00001ddc.wrapping_add(r00001de7);\n" : String).toByteArray.data.toList
theorem checked7613 : bytes7613=statementBytes 7656 (op7613.map lower) ∧ bytes7613.length=60 := by core033_kernel_decide
def op7614 : List WordIR.Op := [.badd 7548 7644]
def bytes7614 : Bytes := ("    let r00001de9: u32 = r00001d7c.wrapping_add(r00001ddc);\n" : String).toByteArray.data.toList
theorem checked7614 : bytes7614=statementBytes 7657 (op7614.map lower) ∧ bytes7614.length=60 := by core033_kernel_decide
def op7615 : List WordIR.Op := [.rotr 7657 6]
def bytes7615 : Bytes := ("    let r00001dea: u32 = r00001de9.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked7615 : bytes7615=statementBytes 7658 (op7615.map lower) ∧ bytes7615.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7552,op7553,op7554,op7555,op7556,op7557,op7558,op7559,op7560,op7561,op7562,op7563,op7564,op7565,op7566,op7567,op7568,op7569,op7570,op7571,op7572,op7573,op7574,op7575,op7576,op7577,op7578,op7579,op7580,op7581,op7582,op7583,op7584,op7585,op7586,op7587,op7588,op7589,op7590,op7591,op7592,op7593,op7594,op7595,op7596,op7597,op7598,op7599,op7600,op7601,op7602,op7603,op7604,op7605,op7606,op7607,op7608,op7609,op7610,op7611,op7612,op7613,op7614,op7615]
def chunks : List Bytes := [bytes7552,bytes7553,bytes7554,bytes7555,bytes7556,bytes7557,bytes7558,bytes7559,bytes7560,bytes7561,bytes7562,bytes7563,bytes7564,bytes7565,bytes7566,bytes7567,bytes7568,bytes7569,bytes7570,bytes7571,bytes7572,bytes7573,bytes7574,bytes7575,bytes7576,bytes7577,bytes7578,bytes7579,bytes7580,bytes7581,bytes7582,bytes7583,bytes7584,bytes7585,bytes7586,bytes7587,bytes7588,bytes7589,bytes7590,bytes7591,bytes7592,bytes7593,bytes7594,bytes7595,bytes7596,bytes7597,bytes7598,bytes7599,bytes7600,bytes7601,bytes7602,bytes7603,bytes7604,bytes7605,bytes7606,bytes7607,bytes7608,bytes7609,bytes7610,bytes7611,bytes7612,bytes7613,bytes7614,bytes7615]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7595 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7552.1 (.cons _ _ _ _ _ checked7553.1 (.cons _ _ _ _ _ checked7554.1 (.cons _ _ _ _ _ checked7555.1 (.cons _ _ _ _ _ checked7556.1 (.cons _ _ _ _ _ checked7557.1 (.cons _ _ _ _ _ checked7558.1 (.cons _ _ _ _ _ checked7559.1 (.cons _ _ _ _ _ checked7560.1 (.cons _ _ _ _ _ checked7561.1 (.cons _ _ _ _ _ checked7562.1 (.cons _ _ _ _ _ checked7563.1 (.cons _ _ _ _ _ checked7564.1 (.cons _ _ _ _ _ checked7565.1 (.cons _ _ _ _ _ checked7566.1 (.cons _ _ _ _ _ checked7567.1 (.cons _ _ _ _ _ checked7568.1 (.cons _ _ _ _ _ checked7569.1 (.cons _ _ _ _ _ checked7570.1 (.cons _ _ _ _ _ checked7571.1 (.cons _ _ _ _ _ checked7572.1 (.cons _ _ _ _ _ checked7573.1 (.cons _ _ _ _ _ checked7574.1 (.cons _ _ _ _ _ checked7575.1 (.cons _ _ _ _ _ checked7576.1 (.cons _ _ _ _ _ checked7577.1 (.cons _ _ _ _ _ checked7578.1 (.cons _ _ _ _ _ checked7579.1 (.cons _ _ _ _ _ checked7580.1 (.cons _ _ _ _ _ checked7581.1 (.cons _ _ _ _ _ checked7582.1 (.cons _ _ _ _ _ checked7583.1 (.cons _ _ _ _ _ checked7584.1 (.cons _ _ _ _ _ checked7585.1 (.cons _ _ _ _ _ checked7586.1 (.cons _ _ _ _ _ checked7587.1 (.cons _ _ _ _ _ checked7588.1 (.cons _ _ _ _ _ checked7589.1 (.cons _ _ _ _ _ checked7590.1 (.cons _ _ _ _ _ checked7591.1 (.cons _ _ _ _ _ checked7592.1 (.cons _ _ _ _ _ checked7593.1 (.cons _ _ _ _ _ checked7594.1 (.cons _ _ _ _ _ checked7595.1 (.cons _ _ _ _ _ checked7596.1 (.cons _ _ _ _ _ checked7597.1 (.cons _ _ _ _ _ checked7598.1 (.cons _ _ _ _ _ checked7599.1 (.cons _ _ _ _ _ checked7600.1 (.cons _ _ _ _ _ checked7601.1 (.cons _ _ _ _ _ checked7602.1 (.cons _ _ _ _ _ checked7603.1 (.cons _ _ _ _ _ checked7604.1 (.cons _ _ _ _ _ checked7605.1 (.cons _ _ _ _ _ checked7606.1 (.cons _ _ _ _ _ checked7607.1 (.cons _ _ _ _ _ checked7608.1 (.cons _ _ _ _ _ checked7609.1 (.cons _ _ _ _ _ checked7610.1 (.cons _ _ _ _ _ checked7611.1 (.cons _ _ _ _ _ checked7612.1 (.cons _ _ _ _ _ checked7613.1 (.cons _ _ _ _ _ checked7614.1 (.cons _ _ _ _ _ checked7615.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7595 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3461 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7552.2,checked7553.2,checked7554.2,checked7555.2,checked7556.2,checked7557.2,checked7558.2,checked7559.2,checked7560.2,checked7561.2,checked7562.2,checked7563.2,checked7564.2,checked7565.2,checked7566.2,checked7567.2,checked7568.2,checked7569.2,checked7570.2,checked7571.2,checked7572.2,checked7573.2,checked7574.2,checked7575.2,checked7576.2,checked7577.2,checked7578.2,checked7579.2,checked7580.2,checked7581.2,checked7582.2,checked7583.2,checked7584.2,checked7585.2,checked7586.2,checked7587.2,checked7588.2,checked7589.2,checked7590.2,checked7591.2,checked7592.2,checked7593.2,checked7594.2,checked7595.2,checked7596.2,checked7597.2,checked7598.2,checked7599.2,checked7600.2,checked7601.2,checked7602.2,checked7603.2,checked7604.2,checked7605.2,checked7606.2,checked7607.2,checked7608.2,checked7609.2,checked7610.2,checked7611.2,checked7612.2,checked7613.2,checked7614.2,checked7615.2]
  decide
end ArtifactFrameHashControllerGroup118
