import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup136
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8704 : List WordIR.Op := [.badd 8788 8799]
def bytes8704 : Bytes := ("    let r00002260: u32 = r00002254.wrapping_add(r0000225f);\n" : String).toByteArray.data.toList
theorem checked8704 : bytes8704=statementBytes 8800 (op8704.map lower) ∧ bytes8704.length=60 := by core033_kernel_decide
def op8705 : List WordIR.Op := [.badd 8692 8788]
def bytes8705 : Bytes := ("    let r00002261: u32 = r000021f4.wrapping_add(r00002254);\n" : String).toByteArray.data.toList
theorem checked8705 : bytes8705=statementBytes 8801 (op8705.map lower) ∧ bytes8705.length=60 := by core033_kernel_decide
def op8706 : List WordIR.Op := [.rotr 8801 6]
def bytes8706 : Bytes := ("    let r00002262: u32 = r00002261.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8706 : bytes8706=statementBytes 8802 (op8706.map lower) ∧ bytes8706.length=65 := by core033_kernel_decide
def op8707 : List WordIR.Op := [.rotr 8801 11]
def bytes8707 : Bytes := ("    let r00002263: u32 = r00002261.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8707 : bytes8707=statementBytes 8803 (op8707.map lower) ∧ bytes8707.length=65 := by core033_kernel_decide
def op8708 : List WordIR.Op := [.bxor 8802 8803]
def bytes8708 : Bytes := ("    let r00002264: u32 = r00002262 ^ r00002263;\n" : String).toByteArray.data.toList
theorem checked8708 : bytes8708=statementBytes 8804 (op8708.map lower) ∧ bytes8708.length=48 := by core033_kernel_decide
def op8709 : List WordIR.Op := [.rotr 8801 25]
def bytes8709 : Bytes := ("    let r00002265: u32 = r00002261.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8709 : bytes8709=statementBytes 8805 (op8709.map lower) ∧ bytes8709.length=65 := by core033_kernel_decide
def op8710 : List WordIR.Op := [.bxor 8804 8805]
def bytes8710 : Bytes := ("    let r00002266: u32 = r00002264 ^ r00002265;\n" : String).toByteArray.data.toList
theorem checked8710 : bytes8710=statementBytes 8806 (op8710.map lower) ∧ bytes8710.length=48 := by core033_kernel_decide
def op8711 : List WordIR.Op := [.badd 8720 8806]
def bytes8711 : Bytes := ("    let r00002267: u32 = r00002210.wrapping_add(r00002266);\n" : String).toByteArray.data.toList
theorem checked8711 : bytes8711=statementBytes 8807 (op8711.map lower) ∧ bytes8711.length=60 := by core033_kernel_decide
def op8712 : List WordIR.Op := [.band 8801 8774]
def bytes8712 : Bytes := ("    let r00002268: u32 = r00002261 & r00002246;\n" : String).toByteArray.data.toList
theorem checked8712 : bytes8712=statementBytes 8808 (op8712.map lower) ∧ bytes8712.length=48 := by core033_kernel_decide
def op8713 : List WordIR.Op := [.bnot 8801]
def bytes8713 : Bytes := ("    let r00002269: u32 = !r00002261;\n" : String).toByteArray.data.toList
theorem checked8713 : bytes8713=statementBytes 8809 (op8713.map lower) ∧ bytes8713.length=37 := by core033_kernel_decide
def op8714 : List WordIR.Op := [.band 8809 8747]
def bytes8714 : Bytes := ("    let r0000226a: u32 = r00002269 & r0000222b;\n" : String).toByteArray.data.toList
theorem checked8714 : bytes8714=statementBytes 8810 (op8714.map lower) ∧ bytes8714.length=48 := by core033_kernel_decide
def op8715 : List WordIR.Op := [.bxor 8808 8810]
def bytes8715 : Bytes := ("    let r0000226b: u32 = r00002268 ^ r0000226a;\n" : String).toByteArray.data.toList
theorem checked8715 : bytes8715=statementBytes 8811 (op8715.map lower) ∧ bytes8715.length=48 := by core033_kernel_decide
def op8716 : List WordIR.Op := [.badd 8807 8811]
def bytes8716 : Bytes := ("    let r0000226c: u32 = r00002267.wrapping_add(r0000226b);\n" : String).toByteArray.data.toList
theorem checked8716 : bytes8716=statementBytes 8812 (op8716.map lower) ∧ bytes8716.length=60 := by core033_kernel_decide
def op8717 : List WordIR.Op := [.literal (BitVec.ofNat 32 3210313671)]
def bytes8717 : Bytes := ("    let r0000226d: u32 = 0xbf597fc7_u32;\n" : String).toByteArray.data.toList
theorem checked8717 : bytes8717=statementBytes 8813 (op8717.map lower) ∧ bytes8717.length=41 := by core033_kernel_decide
def op8718 : List WordIR.Op := [.badd 8812 8813]
def bytes8718 : Bytes := ("    let r0000226e: u32 = r0000226c.wrapping_add(r0000226d);\n" : String).toByteArray.data.toList
theorem checked8718 : bytes8718=statementBytes 8814 (op8718.map lower) ∧ bytes8718.length=60 := by core033_kernel_decide
def op8719 : List WordIR.Op := [.badd 8814 7604]
def bytes8719 : Bytes := ("    let r0000226f: u32 = r0000226e.wrapping_add(r00001db4);\n" : String).toByteArray.data.toList
theorem checked8719 : bytes8719=statementBytes 8815 (op8719.map lower) ∧ bytes8719.length=60 := by core033_kernel_decide
def op8720 : List WordIR.Op := [.rotr 8800 2]
def bytes8720 : Bytes := ("    let r00002270: u32 = r00002260.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8720 : bytes8720=statementBytes 8816 (op8720.map lower) ∧ bytes8720.length=65 := by core033_kernel_decide
def op8721 : List WordIR.Op := [.rotr 8800 13]
def bytes8721 : Bytes := ("    let r00002271: u32 = r00002260.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8721 : bytes8721=statementBytes 8817 (op8721.map lower) ∧ bytes8721.length=65 := by core033_kernel_decide
def op8722 : List WordIR.Op := [.bxor 8816 8817]
def bytes8722 : Bytes := ("    let r00002272: u32 = r00002270 ^ r00002271;\n" : String).toByteArray.data.toList
theorem checked8722 : bytes8722=statementBytes 8818 (op8722.map lower) ∧ bytes8722.length=48 := by core033_kernel_decide
def op8723 : List WordIR.Op := [.rotr 8800 22]
def bytes8723 : Bytes := ("    let r00002273: u32 = r00002260.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8723 : bytes8723=statementBytes 8819 (op8723.map lower) ∧ bytes8723.length=65 := by core033_kernel_decide
def op8724 : List WordIR.Op := [.bxor 8818 8819]
def bytes8724 : Bytes := ("    let r00002274: u32 = r00002272 ^ r00002273;\n" : String).toByteArray.data.toList
theorem checked8724 : bytes8724=statementBytes 8820 (op8724.map lower) ∧ bytes8724.length=48 := by core033_kernel_decide
def op8725 : List WordIR.Op := [.band 8800 8773]
def bytes8725 : Bytes := ("    let r00002275: u32 = r00002260 & r00002245;\n" : String).toByteArray.data.toList
theorem checked8725 : bytes8725=statementBytes 8821 (op8725.map lower) ∧ bytes8725.length=48 := by core033_kernel_decide
def op8726 : List WordIR.Op := [.band 8800 8746]
def bytes8726 : Bytes := ("    let r00002276: u32 = r00002260 & r0000222a;\n" : String).toByteArray.data.toList
theorem checked8726 : bytes8726=statementBytes 8822 (op8726.map lower) ∧ bytes8726.length=48 := by core033_kernel_decide
def op8727 : List WordIR.Op := [.bxor 8821 8822]
def bytes8727 : Bytes := ("    let r00002277: u32 = r00002275 ^ r00002276;\n" : String).toByteArray.data.toList
theorem checked8727 : bytes8727=statementBytes 8823 (op8727.map lower) ∧ bytes8727.length=48 := by core033_kernel_decide
def op8728 : List WordIR.Op := [.band 8773 8746]
def bytes8728 : Bytes := ("    let r00002278: u32 = r00002245 & r0000222a;\n" : String).toByteArray.data.toList
theorem checked8728 : bytes8728=statementBytes 8824 (op8728.map lower) ∧ bytes8728.length=48 := by core033_kernel_decide
def op8729 : List WordIR.Op := [.bxor 8823 8824]
def bytes8729 : Bytes := ("    let r00002279: u32 = r00002277 ^ r00002278;\n" : String).toByteArray.data.toList
theorem checked8729 : bytes8729=statementBytes 8825 (op8729.map lower) ∧ bytes8729.length=48 := by core033_kernel_decide
def op8730 : List WordIR.Op := [.badd 8820 8825]
def bytes8730 : Bytes := ("    let r0000227a: u32 = r00002274.wrapping_add(r00002279);\n" : String).toByteArray.data.toList
theorem checked8730 : bytes8730=statementBytes 8826 (op8730.map lower) ∧ bytes8730.length=60 := by core033_kernel_decide
def op8731 : List WordIR.Op := [.badd 8815 8826]
def bytes8731 : Bytes := ("    let r0000227b: u32 = r0000226f.wrapping_add(r0000227a);\n" : String).toByteArray.data.toList
theorem checked8731 : bytes8731=statementBytes 8827 (op8731.map lower) ∧ bytes8731.length=60 := by core033_kernel_decide
def op8732 : List WordIR.Op := [.badd 8719 8815]
def bytes8732 : Bytes := ("    let r0000227c: u32 = r0000220f.wrapping_add(r0000226f);\n" : String).toByteArray.data.toList
theorem checked8732 : bytes8732=statementBytes 8828 (op8732.map lower) ∧ bytes8732.length=60 := by core033_kernel_decide
def op8733 : List WordIR.Op := [.rotr 8828 6]
def bytes8733 : Bytes := ("    let r0000227d: u32 = r0000227c.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8733 : bytes8733=statementBytes 8829 (op8733.map lower) ∧ bytes8733.length=65 := by core033_kernel_decide
def op8734 : List WordIR.Op := [.rotr 8828 11]
def bytes8734 : Bytes := ("    let r0000227e: u32 = r0000227c.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8734 : bytes8734=statementBytes 8830 (op8734.map lower) ∧ bytes8734.length=65 := by core033_kernel_decide
def op8735 : List WordIR.Op := [.bxor 8829 8830]
def bytes8735 : Bytes := ("    let r0000227f: u32 = r0000227d ^ r0000227e;\n" : String).toByteArray.data.toList
theorem checked8735 : bytes8735=statementBytes 8831 (op8735.map lower) ∧ bytes8735.length=48 := by core033_kernel_decide
def op8736 : List WordIR.Op := [.rotr 8828 25]
def bytes8736 : Bytes := ("    let r00002280: u32 = r0000227c.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8736 : bytes8736=statementBytes 8832 (op8736.map lower) ∧ bytes8736.length=65 := by core033_kernel_decide
def op8737 : List WordIR.Op := [.bxor 8831 8832]
def bytes8737 : Bytes := ("    let r00002281: u32 = r0000227f ^ r00002280;\n" : String).toByteArray.data.toList
theorem checked8737 : bytes8737=statementBytes 8833 (op8737.map lower) ∧ bytes8737.length=48 := by core033_kernel_decide
def op8738 : List WordIR.Op := [.badd 8747 8833]
def bytes8738 : Bytes := ("    let r00002282: u32 = r0000222b.wrapping_add(r00002281);\n" : String).toByteArray.data.toList
theorem checked8738 : bytes8738=statementBytes 8834 (op8738.map lower) ∧ bytes8738.length=60 := by core033_kernel_decide
def op8739 : List WordIR.Op := [.band 8828 8801]
def bytes8739 : Bytes := ("    let r00002283: u32 = r0000227c & r00002261;\n" : String).toByteArray.data.toList
theorem checked8739 : bytes8739=statementBytes 8835 (op8739.map lower) ∧ bytes8739.length=48 := by core033_kernel_decide
def op8740 : List WordIR.Op := [.bnot 8828]
def bytes8740 : Bytes := ("    let r00002284: u32 = !r0000227c;\n" : String).toByteArray.data.toList
theorem checked8740 : bytes8740=statementBytes 8836 (op8740.map lower) ∧ bytes8740.length=37 := by core033_kernel_decide
def op8741 : List WordIR.Op := [.band 8836 8774]
def bytes8741 : Bytes := ("    let r00002285: u32 = r00002284 & r00002246;\n" : String).toByteArray.data.toList
theorem checked8741 : bytes8741=statementBytes 8837 (op8741.map lower) ∧ bytes8741.length=48 := by core033_kernel_decide
def op8742 : List WordIR.Op := [.bxor 8835 8837]
def bytes8742 : Bytes := ("    let r00002286: u32 = r00002283 ^ r00002285;\n" : String).toByteArray.data.toList
theorem checked8742 : bytes8742=statementBytes 8838 (op8742.map lower) ∧ bytes8742.length=48 := by core033_kernel_decide
def op8743 : List WordIR.Op := [.badd 8834 8838]
def bytes8743 : Bytes := ("    let r00002287: u32 = r00002282.wrapping_add(r00002286);\n" : String).toByteArray.data.toList
theorem checked8743 : bytes8743=statementBytes 8839 (op8743.map lower) ∧ bytes8743.length=60 := by core033_kernel_decide
def op8744 : List WordIR.Op := [.literal (BitVec.ofNat 32 3336571891)]
def bytes8744 : Bytes := ("    let r00002288: u32 = 0xc6e00bf3_u32;\n" : String).toByteArray.data.toList
theorem checked8744 : bytes8744=statementBytes 8840 (op8744.map lower) ∧ bytes8744.length=41 := by core033_kernel_decide
def op8745 : List WordIR.Op := [.badd 8839 8840]
def bytes8745 : Bytes := ("    let r00002289: u32 = r00002287.wrapping_add(r00002288);\n" : String).toByteArray.data.toList
theorem checked8745 : bytes8745=statementBytes 8841 (op8745.map lower) ∧ bytes8745.length=60 := by core033_kernel_decide
def op8746 : List WordIR.Op := [.badd 8841 7617]
def bytes8746 : Bytes := ("    let r0000228a: u32 = r00002289.wrapping_add(r00001dc1);\n" : String).toByteArray.data.toList
theorem checked8746 : bytes8746=statementBytes 8842 (op8746.map lower) ∧ bytes8746.length=60 := by core033_kernel_decide
def op8747 : List WordIR.Op := [.rotr 8827 2]
def bytes8747 : Bytes := ("    let r0000228b: u32 = r0000227b.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8747 : bytes8747=statementBytes 8843 (op8747.map lower) ∧ bytes8747.length=65 := by core033_kernel_decide
def op8748 : List WordIR.Op := [.rotr 8827 13]
def bytes8748 : Bytes := ("    let r0000228c: u32 = r0000227b.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8748 : bytes8748=statementBytes 8844 (op8748.map lower) ∧ bytes8748.length=65 := by core033_kernel_decide
def op8749 : List WordIR.Op := [.bxor 8843 8844]
def bytes8749 : Bytes := ("    let r0000228d: u32 = r0000228b ^ r0000228c;\n" : String).toByteArray.data.toList
theorem checked8749 : bytes8749=statementBytes 8845 (op8749.map lower) ∧ bytes8749.length=48 := by core033_kernel_decide
def op8750 : List WordIR.Op := [.rotr 8827 22]
def bytes8750 : Bytes := ("    let r0000228e: u32 = r0000227b.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8750 : bytes8750=statementBytes 8846 (op8750.map lower) ∧ bytes8750.length=65 := by core033_kernel_decide
def op8751 : List WordIR.Op := [.bxor 8845 8846]
def bytes8751 : Bytes := ("    let r0000228f: u32 = r0000228d ^ r0000228e;\n" : String).toByteArray.data.toList
theorem checked8751 : bytes8751=statementBytes 8847 (op8751.map lower) ∧ bytes8751.length=48 := by core033_kernel_decide
def op8752 : List WordIR.Op := [.band 8827 8800]
def bytes8752 : Bytes := ("    let r00002290: u32 = r0000227b & r00002260;\n" : String).toByteArray.data.toList
theorem checked8752 : bytes8752=statementBytes 8848 (op8752.map lower) ∧ bytes8752.length=48 := by core033_kernel_decide
def op8753 : List WordIR.Op := [.band 8827 8773]
def bytes8753 : Bytes := ("    let r00002291: u32 = r0000227b & r00002245;\n" : String).toByteArray.data.toList
theorem checked8753 : bytes8753=statementBytes 8849 (op8753.map lower) ∧ bytes8753.length=48 := by core033_kernel_decide
def op8754 : List WordIR.Op := [.bxor 8848 8849]
def bytes8754 : Bytes := ("    let r00002292: u32 = r00002290 ^ r00002291;\n" : String).toByteArray.data.toList
theorem checked8754 : bytes8754=statementBytes 8850 (op8754.map lower) ∧ bytes8754.length=48 := by core033_kernel_decide
def op8755 : List WordIR.Op := [.band 8800 8773]
def bytes8755 : Bytes := ("    let r00002293: u32 = r00002260 & r00002245;\n" : String).toByteArray.data.toList
theorem checked8755 : bytes8755=statementBytes 8851 (op8755.map lower) ∧ bytes8755.length=48 := by core033_kernel_decide
def op8756 : List WordIR.Op := [.bxor 8850 8851]
def bytes8756 : Bytes := ("    let r00002294: u32 = r00002292 ^ r00002293;\n" : String).toByteArray.data.toList
theorem checked8756 : bytes8756=statementBytes 8852 (op8756.map lower) ∧ bytes8756.length=48 := by core033_kernel_decide
def op8757 : List WordIR.Op := [.badd 8847 8852]
def bytes8757 : Bytes := ("    let r00002295: u32 = r0000228f.wrapping_add(r00002294);\n" : String).toByteArray.data.toList
theorem checked8757 : bytes8757=statementBytes 8853 (op8757.map lower) ∧ bytes8757.length=60 := by core033_kernel_decide
def op8758 : List WordIR.Op := [.badd 8842 8853]
def bytes8758 : Bytes := ("    let r00002296: u32 = r0000228a.wrapping_add(r00002295);\n" : String).toByteArray.data.toList
theorem checked8758 : bytes8758=statementBytes 8854 (op8758.map lower) ∧ bytes8758.length=60 := by core033_kernel_decide
def op8759 : List WordIR.Op := [.badd 8746 8842]
def bytes8759 : Bytes := ("    let r00002297: u32 = r0000222a.wrapping_add(r0000228a);\n" : String).toByteArray.data.toList
theorem checked8759 : bytes8759=statementBytes 8855 (op8759.map lower) ∧ bytes8759.length=60 := by core033_kernel_decide
def op8760 : List WordIR.Op := [.rotr 8855 6]
def bytes8760 : Bytes := ("    let r00002298: u32 = r00002297.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8760 : bytes8760=statementBytes 8856 (op8760.map lower) ∧ bytes8760.length=65 := by core033_kernel_decide
def op8761 : List WordIR.Op := [.rotr 8855 11]
def bytes8761 : Bytes := ("    let r00002299: u32 = r00002297.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8761 : bytes8761=statementBytes 8857 (op8761.map lower) ∧ bytes8761.length=65 := by core033_kernel_decide
def op8762 : List WordIR.Op := [.bxor 8856 8857]
def bytes8762 : Bytes := ("    let r0000229a: u32 = r00002298 ^ r00002299;\n" : String).toByteArray.data.toList
theorem checked8762 : bytes8762=statementBytes 8858 (op8762.map lower) ∧ bytes8762.length=48 := by core033_kernel_decide
def op8763 : List WordIR.Op := [.rotr 8855 25]
def bytes8763 : Bytes := ("    let r0000229b: u32 = r00002297.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8763 : bytes8763=statementBytes 8859 (op8763.map lower) ∧ bytes8763.length=65 := by core033_kernel_decide
def op8764 : List WordIR.Op := [.bxor 8858 8859]
def bytes8764 : Bytes := ("    let r0000229c: u32 = r0000229a ^ r0000229b;\n" : String).toByteArray.data.toList
theorem checked8764 : bytes8764=statementBytes 8860 (op8764.map lower) ∧ bytes8764.length=48 := by core033_kernel_decide
def op8765 : List WordIR.Op := [.badd 8774 8860]
def bytes8765 : Bytes := ("    let r0000229d: u32 = r00002246.wrapping_add(r0000229c);\n" : String).toByteArray.data.toList
theorem checked8765 : bytes8765=statementBytes 8861 (op8765.map lower) ∧ bytes8765.length=60 := by core033_kernel_decide
def op8766 : List WordIR.Op := [.band 8855 8828]
def bytes8766 : Bytes := ("    let r0000229e: u32 = r00002297 & r0000227c;\n" : String).toByteArray.data.toList
theorem checked8766 : bytes8766=statementBytes 8862 (op8766.map lower) ∧ bytes8766.length=48 := by core033_kernel_decide
def op8767 : List WordIR.Op := [.bnot 8855]
def bytes8767 : Bytes := ("    let r0000229f: u32 = !r00002297;\n" : String).toByteArray.data.toList
theorem checked8767 : bytes8767=statementBytes 8863 (op8767.map lower) ∧ bytes8767.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8704,op8705,op8706,op8707,op8708,op8709,op8710,op8711,op8712,op8713,op8714,op8715,op8716,op8717,op8718,op8719,op8720,op8721,op8722,op8723,op8724,op8725,op8726,op8727,op8728,op8729,op8730,op8731,op8732,op8733,op8734,op8735,op8736,op8737,op8738,op8739,op8740,op8741,op8742,op8743,op8744,op8745,op8746,op8747,op8748,op8749,op8750,op8751,op8752,op8753,op8754,op8755,op8756,op8757,op8758,op8759,op8760,op8761,op8762,op8763,op8764,op8765,op8766,op8767]
def chunks : List Bytes := [bytes8704,bytes8705,bytes8706,bytes8707,bytes8708,bytes8709,bytes8710,bytes8711,bytes8712,bytes8713,bytes8714,bytes8715,bytes8716,bytes8717,bytes8718,bytes8719,bytes8720,bytes8721,bytes8722,bytes8723,bytes8724,bytes8725,bytes8726,bytes8727,bytes8728,bytes8729,bytes8730,bytes8731,bytes8732,bytes8733,bytes8734,bytes8735,bytes8736,bytes8737,bytes8738,bytes8739,bytes8740,bytes8741,bytes8742,bytes8743,bytes8744,bytes8745,bytes8746,bytes8747,bytes8748,bytes8749,bytes8750,bytes8751,bytes8752,bytes8753,bytes8754,bytes8755,bytes8756,bytes8757,bytes8758,bytes8759,bytes8760,bytes8761,bytes8762,bytes8763,bytes8764,bytes8765,bytes8766,bytes8767]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8800 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8704.1 (.cons _ _ _ _ _ checked8705.1 (.cons _ _ _ _ _ checked8706.1 (.cons _ _ _ _ _ checked8707.1 (.cons _ _ _ _ _ checked8708.1 (.cons _ _ _ _ _ checked8709.1 (.cons _ _ _ _ _ checked8710.1 (.cons _ _ _ _ _ checked8711.1 (.cons _ _ _ _ _ checked8712.1 (.cons _ _ _ _ _ checked8713.1 (.cons _ _ _ _ _ checked8714.1 (.cons _ _ _ _ _ checked8715.1 (.cons _ _ _ _ _ checked8716.1 (.cons _ _ _ _ _ checked8717.1 (.cons _ _ _ _ _ checked8718.1 (.cons _ _ _ _ _ checked8719.1 (.cons _ _ _ _ _ checked8720.1 (.cons _ _ _ _ _ checked8721.1 (.cons _ _ _ _ _ checked8722.1 (.cons _ _ _ _ _ checked8723.1 (.cons _ _ _ _ _ checked8724.1 (.cons _ _ _ _ _ checked8725.1 (.cons _ _ _ _ _ checked8726.1 (.cons _ _ _ _ _ checked8727.1 (.cons _ _ _ _ _ checked8728.1 (.cons _ _ _ _ _ checked8729.1 (.cons _ _ _ _ _ checked8730.1 (.cons _ _ _ _ _ checked8731.1 (.cons _ _ _ _ _ checked8732.1 (.cons _ _ _ _ _ checked8733.1 (.cons _ _ _ _ _ checked8734.1 (.cons _ _ _ _ _ checked8735.1 (.cons _ _ _ _ _ checked8736.1 (.cons _ _ _ _ _ checked8737.1 (.cons _ _ _ _ _ checked8738.1 (.cons _ _ _ _ _ checked8739.1 (.cons _ _ _ _ _ checked8740.1 (.cons _ _ _ _ _ checked8741.1 (.cons _ _ _ _ _ checked8742.1 (.cons _ _ _ _ _ checked8743.1 (.cons _ _ _ _ _ checked8744.1 (.cons _ _ _ _ _ checked8745.1 (.cons _ _ _ _ _ checked8746.1 (.cons _ _ _ _ _ checked8747.1 (.cons _ _ _ _ _ checked8748.1 (.cons _ _ _ _ _ checked8749.1 (.cons _ _ _ _ _ checked8750.1 (.cons _ _ _ _ _ checked8751.1 (.cons _ _ _ _ _ checked8752.1 (.cons _ _ _ _ _ checked8753.1 (.cons _ _ _ _ _ checked8754.1 (.cons _ _ _ _ _ checked8755.1 (.cons _ _ _ _ _ checked8756.1 (.cons _ _ _ _ _ checked8757.1 (.cons _ _ _ _ _ checked8758.1 (.cons _ _ _ _ _ checked8759.1 (.cons _ _ _ _ _ checked8760.1 (.cons _ _ _ _ _ checked8761.1 (.cons _ _ _ _ _ checked8762.1 (.cons _ _ _ _ _ checked8763.1 (.cons _ _ _ _ _ checked8764.1 (.cons _ _ _ _ _ checked8765.1 (.cons _ _ _ _ _ checked8766.1 (.cons _ _ _ _ _ checked8767.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8800 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3484 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8704.2,checked8705.2,checked8706.2,checked8707.2,checked8708.2,checked8709.2,checked8710.2,checked8711.2,checked8712.2,checked8713.2,checked8714.2,checked8715.2,checked8716.2,checked8717.2,checked8718.2,checked8719.2,checked8720.2,checked8721.2,checked8722.2,checked8723.2,checked8724.2,checked8725.2,checked8726.2,checked8727.2,checked8728.2,checked8729.2,checked8730.2,checked8731.2,checked8732.2,checked8733.2,checked8734.2,checked8735.2,checked8736.2,checked8737.2,checked8738.2,checked8739.2,checked8740.2,checked8741.2,checked8742.2,checked8743.2,checked8744.2,checked8745.2,checked8746.2,checked8747.2,checked8748.2,checked8749.2,checked8750.2,checked8751.2,checked8752.2,checked8753.2,checked8754.2,checked8755.2,checked8756.2,checked8757.2,checked8758.2,checked8759.2,checked8760.2,checked8761.2,checked8762.2,checked8763.2,checked8764.2,checked8765.2,checked8766.2,checked8767.2]
  decide
end ArtifactPairedPathRoundGroup136
