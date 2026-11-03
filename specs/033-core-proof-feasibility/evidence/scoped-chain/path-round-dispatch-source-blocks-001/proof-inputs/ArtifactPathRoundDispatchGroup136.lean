import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup136
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8704 : List WordIR.Op := [.band 8740 8713]
def bytes8704 : Bytes := ("    let r0000222b: u32 = r00002224 & r00002209;\n" : String).toByteArray.data.toList
theorem checked8704 : bytes8704=statementBytes 8747 (op8704.map lower) ∧ bytes8704.length=48 := by core033_kernel_decide
def op8705 : List WordIR.Op := [.bnot 8740]
def bytes8705 : Bytes := ("    let r0000222c: u32 = !r00002224;\n" : String).toByteArray.data.toList
theorem checked8705 : bytes8705=statementBytes 8748 (op8705.map lower) ∧ bytes8705.length=37 := by core033_kernel_decide
def op8706 : List WordIR.Op := [.band 8748 8686]
def bytes8706 : Bytes := ("    let r0000222d: u32 = r0000222c & r000021ee;\n" : String).toByteArray.data.toList
theorem checked8706 : bytes8706=statementBytes 8749 (op8706.map lower) ∧ bytes8706.length=48 := by core033_kernel_decide
def op8707 : List WordIR.Op := [.bxor 8747 8749]
def bytes8707 : Bytes := ("    let r0000222e: u32 = r0000222b ^ r0000222d;\n" : String).toByteArray.data.toList
theorem checked8707 : bytes8707=statementBytes 8750 (op8707.map lower) ∧ bytes8707.length=48 := by core033_kernel_decide
def op8708 : List WordIR.Op := [.badd 8746 8750]
def bytes8708 : Bytes := ("    let r0000222f: u32 = r0000222a.wrapping_add(r0000222e);\n" : String).toByteArray.data.toList
theorem checked8708 : bytes8708=statementBytes 8751 (op8708.map lower) ∧ bytes8708.length=60 := by core033_kernel_decide
def op8709 : List WordIR.Op := [.literal (BitVec.ofNat 32 3516065817)]
def bytes8709 : Bytes := ("    let r00002230: u32 = 0xd192e819_u32;\n" : String).toByteArray.data.toList
theorem checked8709 : bytes8709=statementBytes 8752 (op8709.map lower) ∧ bytes8709.length=41 := by core033_kernel_decide
def op8710 : List WordIR.Op := [.badd 8751 8752]
def bytes8710 : Bytes := ("    let r00002231: u32 = r0000222f.wrapping_add(r00002230);\n" : String).toByteArray.data.toList
theorem checked8710 : bytes8710=statementBytes 8753 (op8710.map lower) ∧ bytes8710.length=60 := by core033_kernel_decide
def op8711 : List WordIR.Op := [.badd 8753 7305]
def bytes8711 : Bytes := ("    let r00002232: u32 = r00002231.wrapping_add(r00001c89);\n" : String).toByteArray.data.toList
theorem checked8711 : bytes8711=statementBytes 8754 (op8711.map lower) ∧ bytes8711.length=60 := by core033_kernel_decide
def op8712 : List WordIR.Op := [.rotr 8739 2]
def bytes8712 : Bytes := ("    let r00002233: u32 = r00002223.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8712 : bytes8712=statementBytes 8755 (op8712.map lower) ∧ bytes8712.length=65 := by core033_kernel_decide
def op8713 : List WordIR.Op := [.rotr 8739 13]
def bytes8713 : Bytes := ("    let r00002234: u32 = r00002223.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8713 : bytes8713=statementBytes 8756 (op8713.map lower) ∧ bytes8713.length=65 := by core033_kernel_decide
def op8714 : List WordIR.Op := [.bxor 8755 8756]
def bytes8714 : Bytes := ("    let r00002235: u32 = r00002233 ^ r00002234;\n" : String).toByteArray.data.toList
theorem checked8714 : bytes8714=statementBytes 8757 (op8714.map lower) ∧ bytes8714.length=48 := by core033_kernel_decide
def op8715 : List WordIR.Op := [.rotr 8739 22]
def bytes8715 : Bytes := ("    let r00002236: u32 = r00002223.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8715 : bytes8715=statementBytes 8758 (op8715.map lower) ∧ bytes8715.length=65 := by core033_kernel_decide
def op8716 : List WordIR.Op := [.bxor 8757 8758]
def bytes8716 : Bytes := ("    let r00002237: u32 = r00002235 ^ r00002236;\n" : String).toByteArray.data.toList
theorem checked8716 : bytes8716=statementBytes 8759 (op8716.map lower) ∧ bytes8716.length=48 := by core033_kernel_decide
def op8717 : List WordIR.Op := [.band 8739 8712]
def bytes8717 : Bytes := ("    let r00002238: u32 = r00002223 & r00002208;\n" : String).toByteArray.data.toList
theorem checked8717 : bytes8717=statementBytes 8760 (op8717.map lower) ∧ bytes8717.length=48 := by core033_kernel_decide
def op8718 : List WordIR.Op := [.band 8739 8685]
def bytes8718 : Bytes := ("    let r00002239: u32 = r00002223 & r000021ed;\n" : String).toByteArray.data.toList
theorem checked8718 : bytes8718=statementBytes 8761 (op8718.map lower) ∧ bytes8718.length=48 := by core033_kernel_decide
def op8719 : List WordIR.Op := [.bxor 8760 8761]
def bytes8719 : Bytes := ("    let r0000223a: u32 = r00002238 ^ r00002239;\n" : String).toByteArray.data.toList
theorem checked8719 : bytes8719=statementBytes 8762 (op8719.map lower) ∧ bytes8719.length=48 := by core033_kernel_decide
def op8720 : List WordIR.Op := [.band 8712 8685]
def bytes8720 : Bytes := ("    let r0000223b: u32 = r00002208 & r000021ed;\n" : String).toByteArray.data.toList
theorem checked8720 : bytes8720=statementBytes 8763 (op8720.map lower) ∧ bytes8720.length=48 := by core033_kernel_decide
def op8721 : List WordIR.Op := [.bxor 8762 8763]
def bytes8721 : Bytes := ("    let r0000223c: u32 = r0000223a ^ r0000223b;\n" : String).toByteArray.data.toList
theorem checked8721 : bytes8721=statementBytes 8764 (op8721.map lower) ∧ bytes8721.length=48 := by core033_kernel_decide
def op8722 : List WordIR.Op := [.badd 8759 8764]
def bytes8722 : Bytes := ("    let r0000223d: u32 = r00002237.wrapping_add(r0000223c);\n" : String).toByteArray.data.toList
theorem checked8722 : bytes8722=statementBytes 8765 (op8722.map lower) ∧ bytes8722.length=60 := by core033_kernel_decide
def op8723 : List WordIR.Op := [.badd 8754 8765]
def bytes8723 : Bytes := ("    let r0000223e: u32 = r00002232.wrapping_add(r0000223d);\n" : String).toByteArray.data.toList
theorem checked8723 : bytes8723=statementBytes 8766 (op8723.map lower) ∧ bytes8723.length=60 := by core033_kernel_decide
def op8724 : List WordIR.Op := [.badd 8658 8754]
def bytes8724 : Bytes := ("    let r0000223f: u32 = r000021d2.wrapping_add(r00002232);\n" : String).toByteArray.data.toList
theorem checked8724 : bytes8724=statementBytes 8767 (op8724.map lower) ∧ bytes8724.length=60 := by core033_kernel_decide
def op8725 : List WordIR.Op := [.rotr 8767 6]
def bytes8725 : Bytes := ("    let r00002240: u32 = r0000223f.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8725 : bytes8725=statementBytes 8768 (op8725.map lower) ∧ bytes8725.length=65 := by core033_kernel_decide
def op8726 : List WordIR.Op := [.rotr 8767 11]
def bytes8726 : Bytes := ("    let r00002241: u32 = r0000223f.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8726 : bytes8726=statementBytes 8769 (op8726.map lower) ∧ bytes8726.length=65 := by core033_kernel_decide
def op8727 : List WordIR.Op := [.bxor 8768 8769]
def bytes8727 : Bytes := ("    let r00002242: u32 = r00002240 ^ r00002241;\n" : String).toByteArray.data.toList
theorem checked8727 : bytes8727=statementBytes 8770 (op8727.map lower) ∧ bytes8727.length=48 := by core033_kernel_decide
def op8728 : List WordIR.Op := [.rotr 8767 25]
def bytes8728 : Bytes := ("    let r00002243: u32 = r0000223f.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8728 : bytes8728=statementBytes 8771 (op8728.map lower) ∧ bytes8728.length=65 := by core033_kernel_decide
def op8729 : List WordIR.Op := [.bxor 8770 8771]
def bytes8729 : Bytes := ("    let r00002244: u32 = r00002242 ^ r00002243;\n" : String).toByteArray.data.toList
theorem checked8729 : bytes8729=statementBytes 8772 (op8729.map lower) ∧ bytes8729.length=48 := by core033_kernel_decide
def op8730 : List WordIR.Op := [.badd 8686 8772]
def bytes8730 : Bytes := ("    let r00002245: u32 = r000021ee.wrapping_add(r00002244);\n" : String).toByteArray.data.toList
theorem checked8730 : bytes8730=statementBytes 8773 (op8730.map lower) ∧ bytes8730.length=60 := by core033_kernel_decide
def op8731 : List WordIR.Op := [.band 8767 8740]
def bytes8731 : Bytes := ("    let r00002246: u32 = r0000223f & r00002224;\n" : String).toByteArray.data.toList
theorem checked8731 : bytes8731=statementBytes 8774 (op8731.map lower) ∧ bytes8731.length=48 := by core033_kernel_decide
def op8732 : List WordIR.Op := [.bnot 8767]
def bytes8732 : Bytes := ("    let r00002247: u32 = !r0000223f;\n" : String).toByteArray.data.toList
theorem checked8732 : bytes8732=statementBytes 8775 (op8732.map lower) ∧ bytes8732.length=37 := by core033_kernel_decide
def op8733 : List WordIR.Op := [.band 8775 8713]
def bytes8733 : Bytes := ("    let r00002248: u32 = r00002247 & r00002209;\n" : String).toByteArray.data.toList
theorem checked8733 : bytes8733=statementBytes 8776 (op8733.map lower) ∧ bytes8733.length=48 := by core033_kernel_decide
def op8734 : List WordIR.Op := [.bxor 8774 8776]
def bytes8734 : Bytes := ("    let r00002249: u32 = r00002246 ^ r00002248;\n" : String).toByteArray.data.toList
theorem checked8734 : bytes8734=statementBytes 8777 (op8734.map lower) ∧ bytes8734.length=48 := by core033_kernel_decide
def op8735 : List WordIR.Op := [.badd 8773 8777]
def bytes8735 : Bytes := ("    let r0000224a: u32 = r00002245.wrapping_add(r00002249);\n" : String).toByteArray.data.toList
theorem checked8735 : bytes8735=statementBytes 8778 (op8735.map lower) ∧ bytes8735.length=60 := by core033_kernel_decide
def op8736 : List WordIR.Op := [.literal (BitVec.ofNat 32 3600352804)]
def bytes8736 : Bytes := ("    let r0000224b: u32 = 0xd6990624_u32;\n" : String).toByteArray.data.toList
theorem checked8736 : bytes8736=statementBytes 8779 (op8736.map lower) ∧ bytes8736.length=41 := by core033_kernel_decide
def op8737 : List WordIR.Op := [.badd 8778 8779]
def bytes8737 : Bytes := ("    let r0000224c: u32 = r0000224a.wrapping_add(r0000224b);\n" : String).toByteArray.data.toList
theorem checked8737 : bytes8737=statementBytes 8780 (op8737.map lower) ∧ bytes8737.length=60 := by core033_kernel_decide
def op8738 : List WordIR.Op := [.badd 8780 7318]
def bytes8738 : Bytes := ("    let r0000224d: u32 = r0000224c.wrapping_add(r00001c96);\n" : String).toByteArray.data.toList
theorem checked8738 : bytes8738=statementBytes 8781 (op8738.map lower) ∧ bytes8738.length=60 := by core033_kernel_decide
def op8739 : List WordIR.Op := [.rotr 8766 2]
def bytes8739 : Bytes := ("    let r0000224e: u32 = r0000223e.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8739 : bytes8739=statementBytes 8782 (op8739.map lower) ∧ bytes8739.length=65 := by core033_kernel_decide
def op8740 : List WordIR.Op := [.rotr 8766 13]
def bytes8740 : Bytes := ("    let r0000224f: u32 = r0000223e.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8740 : bytes8740=statementBytes 8783 (op8740.map lower) ∧ bytes8740.length=65 := by core033_kernel_decide
def op8741 : List WordIR.Op := [.bxor 8782 8783]
def bytes8741 : Bytes := ("    let r00002250: u32 = r0000224e ^ r0000224f;\n" : String).toByteArray.data.toList
theorem checked8741 : bytes8741=statementBytes 8784 (op8741.map lower) ∧ bytes8741.length=48 := by core033_kernel_decide
def op8742 : List WordIR.Op := [.rotr 8766 22]
def bytes8742 : Bytes := ("    let r00002251: u32 = r0000223e.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8742 : bytes8742=statementBytes 8785 (op8742.map lower) ∧ bytes8742.length=65 := by core033_kernel_decide
def op8743 : List WordIR.Op := [.bxor 8784 8785]
def bytes8743 : Bytes := ("    let r00002252: u32 = r00002250 ^ r00002251;\n" : String).toByteArray.data.toList
theorem checked8743 : bytes8743=statementBytes 8786 (op8743.map lower) ∧ bytes8743.length=48 := by core033_kernel_decide
def op8744 : List WordIR.Op := [.band 8766 8739]
def bytes8744 : Bytes := ("    let r00002253: u32 = r0000223e & r00002223;\n" : String).toByteArray.data.toList
theorem checked8744 : bytes8744=statementBytes 8787 (op8744.map lower) ∧ bytes8744.length=48 := by core033_kernel_decide
def op8745 : List WordIR.Op := [.band 8766 8712]
def bytes8745 : Bytes := ("    let r00002254: u32 = r0000223e & r00002208;\n" : String).toByteArray.data.toList
theorem checked8745 : bytes8745=statementBytes 8788 (op8745.map lower) ∧ bytes8745.length=48 := by core033_kernel_decide
def op8746 : List WordIR.Op := [.bxor 8787 8788]
def bytes8746 : Bytes := ("    let r00002255: u32 = r00002253 ^ r00002254;\n" : String).toByteArray.data.toList
theorem checked8746 : bytes8746=statementBytes 8789 (op8746.map lower) ∧ bytes8746.length=48 := by core033_kernel_decide
def op8747 : List WordIR.Op := [.band 8739 8712]
def bytes8747 : Bytes := ("    let r00002256: u32 = r00002223 & r00002208;\n" : String).toByteArray.data.toList
theorem checked8747 : bytes8747=statementBytes 8790 (op8747.map lower) ∧ bytes8747.length=48 := by core033_kernel_decide
def op8748 : List WordIR.Op := [.bxor 8789 8790]
def bytes8748 : Bytes := ("    let r00002257: u32 = r00002255 ^ r00002256;\n" : String).toByteArray.data.toList
theorem checked8748 : bytes8748=statementBytes 8791 (op8748.map lower) ∧ bytes8748.length=48 := by core033_kernel_decide
def op8749 : List WordIR.Op := [.badd 8786 8791]
def bytes8749 : Bytes := ("    let r00002258: u32 = r00002252.wrapping_add(r00002257);\n" : String).toByteArray.data.toList
theorem checked8749 : bytes8749=statementBytes 8792 (op8749.map lower) ∧ bytes8749.length=60 := by core033_kernel_decide
def op8750 : List WordIR.Op := [.badd 8781 8792]
def bytes8750 : Bytes := ("    let r00002259: u32 = r0000224d.wrapping_add(r00002258);\n" : String).toByteArray.data.toList
theorem checked8750 : bytes8750=statementBytes 8793 (op8750.map lower) ∧ bytes8750.length=60 := by core033_kernel_decide
def op8751 : List WordIR.Op := [.badd 8685 8781]
def bytes8751 : Bytes := ("    let r0000225a: u32 = r000021ed.wrapping_add(r0000224d);\n" : String).toByteArray.data.toList
theorem checked8751 : bytes8751=statementBytes 8794 (op8751.map lower) ∧ bytes8751.length=60 := by core033_kernel_decide
def op8752 : List WordIR.Op := [.rotr 8794 6]
def bytes8752 : Bytes := ("    let r0000225b: u32 = r0000225a.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8752 : bytes8752=statementBytes 8795 (op8752.map lower) ∧ bytes8752.length=65 := by core033_kernel_decide
def op8753 : List WordIR.Op := [.rotr 8794 11]
def bytes8753 : Bytes := ("    let r0000225c: u32 = r0000225a.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8753 : bytes8753=statementBytes 8796 (op8753.map lower) ∧ bytes8753.length=65 := by core033_kernel_decide
def op8754 : List WordIR.Op := [.bxor 8795 8796]
def bytes8754 : Bytes := ("    let r0000225d: u32 = r0000225b ^ r0000225c;\n" : String).toByteArray.data.toList
theorem checked8754 : bytes8754=statementBytes 8797 (op8754.map lower) ∧ bytes8754.length=48 := by core033_kernel_decide
def op8755 : List WordIR.Op := [.rotr 8794 25]
def bytes8755 : Bytes := ("    let r0000225e: u32 = r0000225a.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8755 : bytes8755=statementBytes 8798 (op8755.map lower) ∧ bytes8755.length=65 := by core033_kernel_decide
def op8756 : List WordIR.Op := [.bxor 8797 8798]
def bytes8756 : Bytes := ("    let r0000225f: u32 = r0000225d ^ r0000225e;\n" : String).toByteArray.data.toList
theorem checked8756 : bytes8756=statementBytes 8799 (op8756.map lower) ∧ bytes8756.length=48 := by core033_kernel_decide
def op8757 : List WordIR.Op := [.badd 8713 8799]
def bytes8757 : Bytes := ("    let r00002260: u32 = r00002209.wrapping_add(r0000225f);\n" : String).toByteArray.data.toList
theorem checked8757 : bytes8757=statementBytes 8800 (op8757.map lower) ∧ bytes8757.length=60 := by core033_kernel_decide
def op8758 : List WordIR.Op := [.band 8794 8767]
def bytes8758 : Bytes := ("    let r00002261: u32 = r0000225a & r0000223f;\n" : String).toByteArray.data.toList
theorem checked8758 : bytes8758=statementBytes 8801 (op8758.map lower) ∧ bytes8758.length=48 := by core033_kernel_decide
def op8759 : List WordIR.Op := [.bnot 8794]
def bytes8759 : Bytes := ("    let r00002262: u32 = !r0000225a;\n" : String).toByteArray.data.toList
theorem checked8759 : bytes8759=statementBytes 8802 (op8759.map lower) ∧ bytes8759.length=37 := by core033_kernel_decide
def op8760 : List WordIR.Op := [.band 8802 8740]
def bytes8760 : Bytes := ("    let r00002263: u32 = r00002262 & r00002224;\n" : String).toByteArray.data.toList
theorem checked8760 : bytes8760=statementBytes 8803 (op8760.map lower) ∧ bytes8760.length=48 := by core033_kernel_decide
def op8761 : List WordIR.Op := [.bxor 8801 8803]
def bytes8761 : Bytes := ("    let r00002264: u32 = r00002261 ^ r00002263;\n" : String).toByteArray.data.toList
theorem checked8761 : bytes8761=statementBytes 8804 (op8761.map lower) ∧ bytes8761.length=48 := by core033_kernel_decide
def op8762 : List WordIR.Op := [.badd 8800 8804]
def bytes8762 : Bytes := ("    let r00002265: u32 = r00002260.wrapping_add(r00002264);\n" : String).toByteArray.data.toList
theorem checked8762 : bytes8762=statementBytes 8805 (op8762.map lower) ∧ bytes8762.length=60 := by core033_kernel_decide
def op8763 : List WordIR.Op := [.literal (BitVec.ofNat 32 4094571909)]
def bytes8763 : Bytes := ("    let r00002266: u32 = 0xf40e3585_u32;\n" : String).toByteArray.data.toList
theorem checked8763 : bytes8763=statementBytes 8806 (op8763.map lower) ∧ bytes8763.length=41 := by core033_kernel_decide
def op8764 : List WordIR.Op := [.badd 8805 8806]
def bytes8764 : Bytes := ("    let r00002267: u32 = r00002265.wrapping_add(r00002266);\n" : String).toByteArray.data.toList
theorem checked8764 : bytes8764=statementBytes 8807 (op8764.map lower) ∧ bytes8764.length=60 := by core033_kernel_decide
def op8765 : List WordIR.Op := [.badd 8807 7331]
def bytes8765 : Bytes := ("    let r00002268: u32 = r00002267.wrapping_add(r00001ca3);\n" : String).toByteArray.data.toList
theorem checked8765 : bytes8765=statementBytes 8808 (op8765.map lower) ∧ bytes8765.length=60 := by core033_kernel_decide
def op8766 : List WordIR.Op := [.rotr 8793 2]
def bytes8766 : Bytes := ("    let r00002269: u32 = r00002259.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8766 : bytes8766=statementBytes 8809 (op8766.map lower) ∧ bytes8766.length=65 := by core033_kernel_decide
def op8767 : List WordIR.Op := [.rotr 8793 13]
def bytes8767 : Bytes := ("    let r0000226a: u32 = r00002259.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8767 : bytes8767=statementBytes 8810 (op8767.map lower) ∧ bytes8767.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8704,op8705,op8706,op8707,op8708,op8709,op8710,op8711,op8712,op8713,op8714,op8715,op8716,op8717,op8718,op8719,op8720,op8721,op8722,op8723,op8724,op8725,op8726,op8727,op8728,op8729,op8730,op8731,op8732,op8733,op8734,op8735,op8736,op8737,op8738,op8739,op8740,op8741,op8742,op8743,op8744,op8745,op8746,op8747,op8748,op8749,op8750,op8751,op8752,op8753,op8754,op8755,op8756,op8757,op8758,op8759,op8760,op8761,op8762,op8763,op8764,op8765,op8766,op8767]
def chunks : List Bytes := [bytes8704,bytes8705,bytes8706,bytes8707,bytes8708,bytes8709,bytes8710,bytes8711,bytes8712,bytes8713,bytes8714,bytes8715,bytes8716,bytes8717,bytes8718,bytes8719,bytes8720,bytes8721,bytes8722,bytes8723,bytes8724,bytes8725,bytes8726,bytes8727,bytes8728,bytes8729,bytes8730,bytes8731,bytes8732,bytes8733,bytes8734,bytes8735,bytes8736,bytes8737,bytes8738,bytes8739,bytes8740,bytes8741,bytes8742,bytes8743,bytes8744,bytes8745,bytes8746,bytes8747,bytes8748,bytes8749,bytes8750,bytes8751,bytes8752,bytes8753,bytes8754,bytes8755,bytes8756,bytes8757,bytes8758,bytes8759,bytes8760,bytes8761,bytes8762,bytes8763,bytes8764,bytes8765,bytes8766,bytes8767]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8747 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8704.1 (.cons _ _ _ _ _ checked8705.1 (.cons _ _ _ _ _ checked8706.1 (.cons _ _ _ _ _ checked8707.1 (.cons _ _ _ _ _ checked8708.1 (.cons _ _ _ _ _ checked8709.1 (.cons _ _ _ _ _ checked8710.1 (.cons _ _ _ _ _ checked8711.1 (.cons _ _ _ _ _ checked8712.1 (.cons _ _ _ _ _ checked8713.1 (.cons _ _ _ _ _ checked8714.1 (.cons _ _ _ _ _ checked8715.1 (.cons _ _ _ _ _ checked8716.1 (.cons _ _ _ _ _ checked8717.1 (.cons _ _ _ _ _ checked8718.1 (.cons _ _ _ _ _ checked8719.1 (.cons _ _ _ _ _ checked8720.1 (.cons _ _ _ _ _ checked8721.1 (.cons _ _ _ _ _ checked8722.1 (.cons _ _ _ _ _ checked8723.1 (.cons _ _ _ _ _ checked8724.1 (.cons _ _ _ _ _ checked8725.1 (.cons _ _ _ _ _ checked8726.1 (.cons _ _ _ _ _ checked8727.1 (.cons _ _ _ _ _ checked8728.1 (.cons _ _ _ _ _ checked8729.1 (.cons _ _ _ _ _ checked8730.1 (.cons _ _ _ _ _ checked8731.1 (.cons _ _ _ _ _ checked8732.1 (.cons _ _ _ _ _ checked8733.1 (.cons _ _ _ _ _ checked8734.1 (.cons _ _ _ _ _ checked8735.1 (.cons _ _ _ _ _ checked8736.1 (.cons _ _ _ _ _ checked8737.1 (.cons _ _ _ _ _ checked8738.1 (.cons _ _ _ _ _ checked8739.1 (.cons _ _ _ _ _ checked8740.1 (.cons _ _ _ _ _ checked8741.1 (.cons _ _ _ _ _ checked8742.1 (.cons _ _ _ _ _ checked8743.1 (.cons _ _ _ _ _ checked8744.1 (.cons _ _ _ _ _ checked8745.1 (.cons _ _ _ _ _ checked8746.1 (.cons _ _ _ _ _ checked8747.1 (.cons _ _ _ _ _ checked8748.1 (.cons _ _ _ _ _ checked8749.1 (.cons _ _ _ _ _ checked8750.1 (.cons _ _ _ _ _ checked8751.1 (.cons _ _ _ _ _ checked8752.1 (.cons _ _ _ _ _ checked8753.1 (.cons _ _ _ _ _ checked8754.1 (.cons _ _ _ _ _ checked8755.1 (.cons _ _ _ _ _ checked8756.1 (.cons _ _ _ _ _ checked8757.1 (.cons _ _ _ _ _ checked8758.1 (.cons _ _ _ _ _ checked8759.1 (.cons _ _ _ _ _ checked8760.1 (.cons _ _ _ _ _ checked8761.1 (.cons _ _ _ _ _ checked8762.1 (.cons _ _ _ _ _ checked8763.1 (.cons _ _ _ _ _ checked8764.1 (.cons _ _ _ _ _ checked8765.1 (.cons _ _ _ _ _ checked8766.1 (.cons _ _ _ _ _ checked8767.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8747 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3460 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8704.2,checked8705.2,checked8706.2,checked8707.2,checked8708.2,checked8709.2,checked8710.2,checked8711.2,checked8712.2,checked8713.2,checked8714.2,checked8715.2,checked8716.2,checked8717.2,checked8718.2,checked8719.2,checked8720.2,checked8721.2,checked8722.2,checked8723.2,checked8724.2,checked8725.2,checked8726.2,checked8727.2,checked8728.2,checked8729.2,checked8730.2,checked8731.2,checked8732.2,checked8733.2,checked8734.2,checked8735.2,checked8736.2,checked8737.2,checked8738.2,checked8739.2,checked8740.2,checked8741.2,checked8742.2,checked8743.2,checked8744.2,checked8745.2,checked8746.2,checked8747.2,checked8748.2,checked8749.2,checked8750.2,checked8751.2,checked8752.2,checked8753.2,checked8754.2,checked8755.2,checked8756.2,checked8757.2,checked8758.2,checked8759.2,checked8760.2,checked8761.2,checked8762.2,checked8763.2,checked8764.2,checked8765.2,checked8766.2,checked8767.2]
  decide
end ArtifactPathRoundDispatchGroup136
