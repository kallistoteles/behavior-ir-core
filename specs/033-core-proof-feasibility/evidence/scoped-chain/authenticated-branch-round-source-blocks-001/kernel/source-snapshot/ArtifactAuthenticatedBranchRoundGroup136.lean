import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup136
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8704 : List WordIR.Op := [.badd 8820 8821]
def bytes8704 : Bytes := ("    let r00002276: u32 = r00002274.wrapping_add(r00002275);\n" : String).toByteArray.data.toList
theorem checked8704 : bytes8704=statementBytes 8822 (op8704.map lower) ∧ bytes8704.length=60 := by core033_kernel_decide
def op8705 : List WordIR.Op := [.badd 8822 6901]
def bytes8705 : Bytes := ("    let r00002277: u32 = r00002276.wrapping_add(r00001af5);\n" : String).toByteArray.data.toList
theorem checked8705 : bytes8705=statementBytes 8823 (op8705.map lower) ∧ bytes8705.length=60 := by core033_kernel_decide
def op8706 : List WordIR.Op := [.rotr 8808 2]
def bytes8706 : Bytes := ("    let r00002278: u32 = r00002268.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8706 : bytes8706=statementBytes 8824 (op8706.map lower) ∧ bytes8706.length=65 := by core033_kernel_decide
def op8707 : List WordIR.Op := [.rotr 8808 13]
def bytes8707 : Bytes := ("    let r00002279: u32 = r00002268.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8707 : bytes8707=statementBytes 8825 (op8707.map lower) ∧ bytes8707.length=65 := by core033_kernel_decide
def op8708 : List WordIR.Op := [.bxor 8824 8825]
def bytes8708 : Bytes := ("    let r0000227a: u32 = r00002278 ^ r00002279;\n" : String).toByteArray.data.toList
theorem checked8708 : bytes8708=statementBytes 8826 (op8708.map lower) ∧ bytes8708.length=48 := by core033_kernel_decide
def op8709 : List WordIR.Op := [.rotr 8808 22]
def bytes8709 : Bytes := ("    let r0000227b: u32 = r00002268.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8709 : bytes8709=statementBytes 8827 (op8709.map lower) ∧ bytes8709.length=65 := by core033_kernel_decide
def op8710 : List WordIR.Op := [.bxor 8826 8827]
def bytes8710 : Bytes := ("    let r0000227c: u32 = r0000227a ^ r0000227b;\n" : String).toByteArray.data.toList
theorem checked8710 : bytes8710=statementBytes 8828 (op8710.map lower) ∧ bytes8710.length=48 := by core033_kernel_decide
def op8711 : List WordIR.Op := [.band 8808 8781]
def bytes8711 : Bytes := ("    let r0000227d: u32 = r00002268 & r0000224d;\n" : String).toByteArray.data.toList
theorem checked8711 : bytes8711=statementBytes 8829 (op8711.map lower) ∧ bytes8711.length=48 := by core033_kernel_decide
def op8712 : List WordIR.Op := [.band 8808 3171]
def bytes8712 : Bytes := ("    let r0000227e: u32 = r00002268 & r00000c63;\n" : String).toByteArray.data.toList
theorem checked8712 : bytes8712=statementBytes 8830 (op8712.map lower) ∧ bytes8712.length=48 := by core033_kernel_decide
def op8713 : List WordIR.Op := [.bxor 8829 8830]
def bytes8713 : Bytes := ("    let r0000227f: u32 = r0000227d ^ r0000227e;\n" : String).toByteArray.data.toList
theorem checked8713 : bytes8713=statementBytes 8831 (op8713.map lower) ∧ bytes8713.length=48 := by core033_kernel_decide
def op8714 : List WordIR.Op := [.band 8781 3171]
def bytes8714 : Bytes := ("    let r00002280: u32 = r0000224d & r00000c63;\n" : String).toByteArray.data.toList
theorem checked8714 : bytes8714=statementBytes 8832 (op8714.map lower) ∧ bytes8714.length=48 := by core033_kernel_decide
def op8715 : List WordIR.Op := [.bxor 8831 8832]
def bytes8715 : Bytes := ("    let r00002281: u32 = r0000227f ^ r00002280;\n" : String).toByteArray.data.toList
theorem checked8715 : bytes8715=statementBytes 8833 (op8715.map lower) ∧ bytes8715.length=48 := by core033_kernel_decide
def op8716 : List WordIR.Op := [.badd 8828 8833]
def bytes8716 : Bytes := ("    let r00002282: u32 = r0000227c.wrapping_add(r00002281);\n" : String).toByteArray.data.toList
theorem checked8716 : bytes8716=statementBytes 8834 (op8716.map lower) ∧ bytes8716.length=60 := by core033_kernel_decide
def op8717 : List WordIR.Op := [.badd 8823 8834]
def bytes8717 : Bytes := ("    let r00002283: u32 = r00002277.wrapping_add(r00002282);\n" : String).toByteArray.data.toList
theorem checked8717 : bytes8717=statementBytes 8835 (op8717.map lower) ∧ bytes8717.length=60 := by core033_kernel_decide
def op8718 : List WordIR.Op := [.badd 3224 8823]
def bytes8718 : Bytes := ("    let r00002284: u32 = r00000c98.wrapping_add(r00002277);\n" : String).toByteArray.data.toList
theorem checked8718 : bytes8718=statementBytes 8836 (op8718.map lower) ∧ bytes8718.length=60 := by core033_kernel_decide
def op8719 : List WordIR.Op := [.rotr 8836 6]
def bytes8719 : Bytes := ("    let r00002285: u32 = r00002284.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8719 : bytes8719=statementBytes 8837 (op8719.map lower) ∧ bytes8719.length=65 := by core033_kernel_decide
def op8720 : List WordIR.Op := [.rotr 8836 11]
def bytes8720 : Bytes := ("    let r00002286: u32 = r00002284.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8720 : bytes8720=statementBytes 8838 (op8720.map lower) ∧ bytes8720.length=65 := by core033_kernel_decide
def op8721 : List WordIR.Op := [.bxor 8837 8838]
def bytes8721 : Bytes := ("    let r00002287: u32 = r00002285 ^ r00002286;\n" : String).toByteArray.data.toList
theorem checked8721 : bytes8721=statementBytes 8839 (op8721.map lower) ∧ bytes8721.length=48 := by core033_kernel_decide
def op8722 : List WordIR.Op := [.rotr 8836 25]
def bytes8722 : Bytes := ("    let r00002288: u32 = r00002284.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8722 : bytes8722=statementBytes 8840 (op8722.map lower) ∧ bytes8722.length=65 := by core033_kernel_decide
def op8723 : List WordIR.Op := [.bxor 8839 8840]
def bytes8723 : Bytes := ("    let r00002289: u32 = r00002287 ^ r00002288;\n" : String).toByteArray.data.toList
theorem checked8723 : bytes8723=statementBytes 8841 (op8723.map lower) ∧ bytes8723.length=48 := by core033_kernel_decide
def op8724 : List WordIR.Op := [.badd 3383 8841]
def bytes8724 : Bytes := ("    let r0000228a: u32 = r00000d37.wrapping_add(r00002289);\n" : String).toByteArray.data.toList
theorem checked8724 : bytes8724=statementBytes 8842 (op8724.map lower) ∧ bytes8724.length=60 := by core033_kernel_decide
def op8725 : List WordIR.Op := [.band 8836 8809]
def bytes8725 : Bytes := ("    let r0000228b: u32 = r00002284 & r00002269;\n" : String).toByteArray.data.toList
theorem checked8725 : bytes8725=statementBytes 8843 (op8725.map lower) ∧ bytes8725.length=48 := by core033_kernel_decide
def op8726 : List WordIR.Op := [.bnot 8836]
def bytes8726 : Bytes := ("    let r0000228c: u32 = !r00002284;\n" : String).toByteArray.data.toList
theorem checked8726 : bytes8726=statementBytes 8844 (op8726.map lower) ∧ bytes8726.length=37 := by core033_kernel_decide
def op8727 : List WordIR.Op := [.band 8844 8782]
def bytes8727 : Bytes := ("    let r0000228d: u32 = r0000228c & r0000224e;\n" : String).toByteArray.data.toList
theorem checked8727 : bytes8727=statementBytes 8845 (op8727.map lower) ∧ bytes8727.length=48 := by core033_kernel_decide
def op8728 : List WordIR.Op := [.bxor 8843 8845]
def bytes8728 : Bytes := ("    let r0000228e: u32 = r0000228b ^ r0000228d;\n" : String).toByteArray.data.toList
theorem checked8728 : bytes8728=statementBytes 8846 (op8728.map lower) ∧ bytes8728.length=48 := by core033_kernel_decide
def op8729 : List WordIR.Op := [.badd 8842 8846]
def bytes8729 : Bytes := ("    let r0000228f: u32 = r0000228a.wrapping_add(r0000228e);\n" : String).toByteArray.data.toList
theorem checked8729 : bytes8729=statementBytes 8847 (op8729.map lower) ∧ bytes8729.length=60 := by core033_kernel_decide
def op8730 : List WordIR.Op := [.literal (BitVec.ofNat 32 3921009573)]
def bytes8730 : Bytes := ("    let r00002290: u32 = 0xe9b5dba5_u32;\n" : String).toByteArray.data.toList
theorem checked8730 : bytes8730=statementBytes 8848 (op8730.map lower) ∧ bytes8730.length=41 := by core033_kernel_decide
def op8731 : List WordIR.Op := [.badd 8847 8848]
def bytes8731 : Bytes := ("    let r00002291: u32 = r0000228f.wrapping_add(r00002290);\n" : String).toByteArray.data.toList
theorem checked8731 : bytes8731=statementBytes 8849 (op8731.map lower) ∧ bytes8731.length=60 := by core033_kernel_decide
def op8732 : List WordIR.Op := [.badd 8849 6907]
def bytes8732 : Bytes := ("    let r00002292: u32 = r00002291.wrapping_add(r00001afb);\n" : String).toByteArray.data.toList
theorem checked8732 : bytes8732=statementBytes 8850 (op8732.map lower) ∧ bytes8732.length=60 := by core033_kernel_decide
def op8733 : List WordIR.Op := [.rotr 8835 2]
def bytes8733 : Bytes := ("    let r00002293: u32 = r00002283.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8733 : bytes8733=statementBytes 8851 (op8733.map lower) ∧ bytes8733.length=65 := by core033_kernel_decide
def op8734 : List WordIR.Op := [.rotr 8835 13]
def bytes8734 : Bytes := ("    let r00002294: u32 = r00002283.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8734 : bytes8734=statementBytes 8852 (op8734.map lower) ∧ bytes8734.length=65 := by core033_kernel_decide
def op8735 : List WordIR.Op := [.bxor 8851 8852]
def bytes8735 : Bytes := ("    let r00002295: u32 = r00002293 ^ r00002294;\n" : String).toByteArray.data.toList
theorem checked8735 : bytes8735=statementBytes 8853 (op8735.map lower) ∧ bytes8735.length=48 := by core033_kernel_decide
def op8736 : List WordIR.Op := [.rotr 8835 22]
def bytes8736 : Bytes := ("    let r00002296: u32 = r00002283.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8736 : bytes8736=statementBytes 8854 (op8736.map lower) ∧ bytes8736.length=65 := by core033_kernel_decide
def op8737 : List WordIR.Op := [.bxor 8853 8854]
def bytes8737 : Bytes := ("    let r00002297: u32 = r00002295 ^ r00002296;\n" : String).toByteArray.data.toList
theorem checked8737 : bytes8737=statementBytes 8855 (op8737.map lower) ∧ bytes8737.length=48 := by core033_kernel_decide
def op8738 : List WordIR.Op := [.band 8835 8808]
def bytes8738 : Bytes := ("    let r00002298: u32 = r00002283 & r00002268;\n" : String).toByteArray.data.toList
theorem checked8738 : bytes8738=statementBytes 8856 (op8738.map lower) ∧ bytes8738.length=48 := by core033_kernel_decide
def op8739 : List WordIR.Op := [.band 8835 8781]
def bytes8739 : Bytes := ("    let r00002299: u32 = r00002283 & r0000224d;\n" : String).toByteArray.data.toList
theorem checked8739 : bytes8739=statementBytes 8857 (op8739.map lower) ∧ bytes8739.length=48 := by core033_kernel_decide
def op8740 : List WordIR.Op := [.bxor 8856 8857]
def bytes8740 : Bytes := ("    let r0000229a: u32 = r00002298 ^ r00002299;\n" : String).toByteArray.data.toList
theorem checked8740 : bytes8740=statementBytes 8858 (op8740.map lower) ∧ bytes8740.length=48 := by core033_kernel_decide
def op8741 : List WordIR.Op := [.band 8808 8781]
def bytes8741 : Bytes := ("    let r0000229b: u32 = r00002268 & r0000224d;\n" : String).toByteArray.data.toList
theorem checked8741 : bytes8741=statementBytes 8859 (op8741.map lower) ∧ bytes8741.length=48 := by core033_kernel_decide
def op8742 : List WordIR.Op := [.bxor 8858 8859]
def bytes8742 : Bytes := ("    let r0000229c: u32 = r0000229a ^ r0000229b;\n" : String).toByteArray.data.toList
theorem checked8742 : bytes8742=statementBytes 8860 (op8742.map lower) ∧ bytes8742.length=48 := by core033_kernel_decide
def op8743 : List WordIR.Op := [.badd 8855 8860]
def bytes8743 : Bytes := ("    let r0000229d: u32 = r00002297.wrapping_add(r0000229c);\n" : String).toByteArray.data.toList
theorem checked8743 : bytes8743=statementBytes 8861 (op8743.map lower) ∧ bytes8743.length=60 := by core033_kernel_decide
def op8744 : List WordIR.Op := [.badd 8850 8861]
def bytes8744 : Bytes := ("    let r0000229e: u32 = r00002292.wrapping_add(r0000229d);\n" : String).toByteArray.data.toList
theorem checked8744 : bytes8744=statementBytes 8862 (op8744.map lower) ∧ bytes8744.length=60 := by core033_kernel_decide
def op8745 : List WordIR.Op := [.badd 3171 8850]
def bytes8745 : Bytes := ("    let r0000229f: u32 = r00000c63.wrapping_add(r00002292);\n" : String).toByteArray.data.toList
theorem checked8745 : bytes8745=statementBytes 8863 (op8745.map lower) ∧ bytes8745.length=60 := by core033_kernel_decide
def op8746 : List WordIR.Op := [.rotr 8863 6]
def bytes8746 : Bytes := ("    let r000022a0: u32 = r0000229f.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8746 : bytes8746=statementBytes 8864 (op8746.map lower) ∧ bytes8746.length=65 := by core033_kernel_decide
def op8747 : List WordIR.Op := [.rotr 8863 11]
def bytes8747 : Bytes := ("    let r000022a1: u32 = r0000229f.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8747 : bytes8747=statementBytes 8865 (op8747.map lower) ∧ bytes8747.length=65 := by core033_kernel_decide
def op8748 : List WordIR.Op := [.bxor 8864 8865]
def bytes8748 : Bytes := ("    let r000022a2: u32 = r000022a0 ^ r000022a1;\n" : String).toByteArray.data.toList
theorem checked8748 : bytes8748=statementBytes 8866 (op8748.map lower) ∧ bytes8748.length=48 := by core033_kernel_decide
def op8749 : List WordIR.Op := [.rotr 8863 25]
def bytes8749 : Bytes := ("    let r000022a3: u32 = r0000229f.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8749 : bytes8749=statementBytes 8867 (op8749.map lower) ∧ bytes8749.length=65 := by core033_kernel_decide
def op8750 : List WordIR.Op := [.bxor 8866 8867]
def bytes8750 : Bytes := ("    let r000022a4: u32 = r000022a2 ^ r000022a3;\n" : String).toByteArray.data.toList
theorem checked8750 : bytes8750=statementBytes 8868 (op8750.map lower) ∧ bytes8750.length=48 := by core033_kernel_decide
def op8751 : List WordIR.Op := [.badd 8782 8868]
def bytes8751 : Bytes := ("    let r000022a5: u32 = r0000224e.wrapping_add(r000022a4);\n" : String).toByteArray.data.toList
theorem checked8751 : bytes8751=statementBytes 8869 (op8751.map lower) ∧ bytes8751.length=60 := by core033_kernel_decide
def op8752 : List WordIR.Op := [.band 8863 8836]
def bytes8752 : Bytes := ("    let r000022a6: u32 = r0000229f & r00002284;\n" : String).toByteArray.data.toList
theorem checked8752 : bytes8752=statementBytes 8870 (op8752.map lower) ∧ bytes8752.length=48 := by core033_kernel_decide
def op8753 : List WordIR.Op := [.bnot 8863]
def bytes8753 : Bytes := ("    let r000022a7: u32 = !r0000229f;\n" : String).toByteArray.data.toList
theorem checked8753 : bytes8753=statementBytes 8871 (op8753.map lower) ∧ bytes8753.length=37 := by core033_kernel_decide
def op8754 : List WordIR.Op := [.band 8871 8809]
def bytes8754 : Bytes := ("    let r000022a8: u32 = r000022a7 & r00002269;\n" : String).toByteArray.data.toList
theorem checked8754 : bytes8754=statementBytes 8872 (op8754.map lower) ∧ bytes8754.length=48 := by core033_kernel_decide
def op8755 : List WordIR.Op := [.bxor 8870 8872]
def bytes8755 : Bytes := ("    let r000022a9: u32 = r000022a6 ^ r000022a8;\n" : String).toByteArray.data.toList
theorem checked8755 : bytes8755=statementBytes 8873 (op8755.map lower) ∧ bytes8755.length=48 := by core033_kernel_decide
def op8756 : List WordIR.Op := [.badd 8869 8873]
def bytes8756 : Bytes := ("    let r000022aa: u32 = r000022a5.wrapping_add(r000022a9);\n" : String).toByteArray.data.toList
theorem checked8756 : bytes8756=statementBytes 8874 (op8756.map lower) ∧ bytes8756.length=60 := by core033_kernel_decide
def op8757 : List WordIR.Op := [.literal (BitVec.ofNat 32 961987163)]
def bytes8757 : Bytes := ("    let r000022ab: u32 = 0x3956c25b_u32;\n" : String).toByteArray.data.toList
theorem checked8757 : bytes8757=statementBytes 8875 (op8757.map lower) ∧ bytes8757.length=41 := by core033_kernel_decide
def op8758 : List WordIR.Op := [.badd 8874 8875]
def bytes8758 : Bytes := ("    let r000022ac: u32 = r000022aa.wrapping_add(r000022ab);\n" : String).toByteArray.data.toList
theorem checked8758 : bytes8758=statementBytes 8876 (op8758.map lower) ∧ bytes8758.length=60 := by core033_kernel_decide
def op8759 : List WordIR.Op := [.badd 8876 6913]
def bytes8759 : Bytes := ("    let r000022ad: u32 = r000022ac.wrapping_add(r00001b01);\n" : String).toByteArray.data.toList
theorem checked8759 : bytes8759=statementBytes 8877 (op8759.map lower) ∧ bytes8759.length=60 := by core033_kernel_decide
def op8760 : List WordIR.Op := [.rotr 8862 2]
def bytes8760 : Bytes := ("    let r000022ae: u32 = r0000229e.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8760 : bytes8760=statementBytes 8878 (op8760.map lower) ∧ bytes8760.length=65 := by core033_kernel_decide
def op8761 : List WordIR.Op := [.rotr 8862 13]
def bytes8761 : Bytes := ("    let r000022af: u32 = r0000229e.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8761 : bytes8761=statementBytes 8879 (op8761.map lower) ∧ bytes8761.length=65 := by core033_kernel_decide
def op8762 : List WordIR.Op := [.bxor 8878 8879]
def bytes8762 : Bytes := ("    let r000022b0: u32 = r000022ae ^ r000022af;\n" : String).toByteArray.data.toList
theorem checked8762 : bytes8762=statementBytes 8880 (op8762.map lower) ∧ bytes8762.length=48 := by core033_kernel_decide
def op8763 : List WordIR.Op := [.rotr 8862 22]
def bytes8763 : Bytes := ("    let r000022b1: u32 = r0000229e.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8763 : bytes8763=statementBytes 8881 (op8763.map lower) ∧ bytes8763.length=65 := by core033_kernel_decide
def op8764 : List WordIR.Op := [.bxor 8880 8881]
def bytes8764 : Bytes := ("    let r000022b2: u32 = r000022b0 ^ r000022b1;\n" : String).toByteArray.data.toList
theorem checked8764 : bytes8764=statementBytes 8882 (op8764.map lower) ∧ bytes8764.length=48 := by core033_kernel_decide
def op8765 : List WordIR.Op := [.band 8862 8835]
def bytes8765 : Bytes := ("    let r000022b3: u32 = r0000229e & r00002283;\n" : String).toByteArray.data.toList
theorem checked8765 : bytes8765=statementBytes 8883 (op8765.map lower) ∧ bytes8765.length=48 := by core033_kernel_decide
def op8766 : List WordIR.Op := [.band 8862 8808]
def bytes8766 : Bytes := ("    let r000022b4: u32 = r0000229e & r00002268;\n" : String).toByteArray.data.toList
theorem checked8766 : bytes8766=statementBytes 8884 (op8766.map lower) ∧ bytes8766.length=48 := by core033_kernel_decide
def op8767 : List WordIR.Op := [.bxor 8883 8884]
def bytes8767 : Bytes := ("    let r000022b5: u32 = r000022b3 ^ r000022b4;\n" : String).toByteArray.data.toList
theorem checked8767 : bytes8767=statementBytes 8885 (op8767.map lower) ∧ bytes8767.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8704,op8705,op8706,op8707,op8708,op8709,op8710,op8711,op8712,op8713,op8714,op8715,op8716,op8717,op8718,op8719,op8720,op8721,op8722,op8723,op8724,op8725,op8726,op8727,op8728,op8729,op8730,op8731,op8732,op8733,op8734,op8735,op8736,op8737,op8738,op8739,op8740,op8741,op8742,op8743,op8744,op8745,op8746,op8747,op8748,op8749,op8750,op8751,op8752,op8753,op8754,op8755,op8756,op8757,op8758,op8759,op8760,op8761,op8762,op8763,op8764,op8765,op8766,op8767]
def chunks : List Bytes := [bytes8704,bytes8705,bytes8706,bytes8707,bytes8708,bytes8709,bytes8710,bytes8711,bytes8712,bytes8713,bytes8714,bytes8715,bytes8716,bytes8717,bytes8718,bytes8719,bytes8720,bytes8721,bytes8722,bytes8723,bytes8724,bytes8725,bytes8726,bytes8727,bytes8728,bytes8729,bytes8730,bytes8731,bytes8732,bytes8733,bytes8734,bytes8735,bytes8736,bytes8737,bytes8738,bytes8739,bytes8740,bytes8741,bytes8742,bytes8743,bytes8744,bytes8745,bytes8746,bytes8747,bytes8748,bytes8749,bytes8750,bytes8751,bytes8752,bytes8753,bytes8754,bytes8755,bytes8756,bytes8757,bytes8758,bytes8759,bytes8760,bytes8761,bytes8762,bytes8763,bytes8764,bytes8765,bytes8766,bytes8767]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8822 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8704.1 (.cons _ _ _ _ _ checked8705.1 (.cons _ _ _ _ _ checked8706.1 (.cons _ _ _ _ _ checked8707.1 (.cons _ _ _ _ _ checked8708.1 (.cons _ _ _ _ _ checked8709.1 (.cons _ _ _ _ _ checked8710.1 (.cons _ _ _ _ _ checked8711.1 (.cons _ _ _ _ _ checked8712.1 (.cons _ _ _ _ _ checked8713.1 (.cons _ _ _ _ _ checked8714.1 (.cons _ _ _ _ _ checked8715.1 (.cons _ _ _ _ _ checked8716.1 (.cons _ _ _ _ _ checked8717.1 (.cons _ _ _ _ _ checked8718.1 (.cons _ _ _ _ _ checked8719.1 (.cons _ _ _ _ _ checked8720.1 (.cons _ _ _ _ _ checked8721.1 (.cons _ _ _ _ _ checked8722.1 (.cons _ _ _ _ _ checked8723.1 (.cons _ _ _ _ _ checked8724.1 (.cons _ _ _ _ _ checked8725.1 (.cons _ _ _ _ _ checked8726.1 (.cons _ _ _ _ _ checked8727.1 (.cons _ _ _ _ _ checked8728.1 (.cons _ _ _ _ _ checked8729.1 (.cons _ _ _ _ _ checked8730.1 (.cons _ _ _ _ _ checked8731.1 (.cons _ _ _ _ _ checked8732.1 (.cons _ _ _ _ _ checked8733.1 (.cons _ _ _ _ _ checked8734.1 (.cons _ _ _ _ _ checked8735.1 (.cons _ _ _ _ _ checked8736.1 (.cons _ _ _ _ _ checked8737.1 (.cons _ _ _ _ _ checked8738.1 (.cons _ _ _ _ _ checked8739.1 (.cons _ _ _ _ _ checked8740.1 (.cons _ _ _ _ _ checked8741.1 (.cons _ _ _ _ _ checked8742.1 (.cons _ _ _ _ _ checked8743.1 (.cons _ _ _ _ _ checked8744.1 (.cons _ _ _ _ _ checked8745.1 (.cons _ _ _ _ _ checked8746.1 (.cons _ _ _ _ _ checked8747.1 (.cons _ _ _ _ _ checked8748.1 (.cons _ _ _ _ _ checked8749.1 (.cons _ _ _ _ _ checked8750.1 (.cons _ _ _ _ _ checked8751.1 (.cons _ _ _ _ _ checked8752.1 (.cons _ _ _ _ _ checked8753.1 (.cons _ _ _ _ _ checked8754.1 (.cons _ _ _ _ _ checked8755.1 (.cons _ _ _ _ _ checked8756.1 (.cons _ _ _ _ _ checked8757.1 (.cons _ _ _ _ _ checked8758.1 (.cons _ _ _ _ _ checked8759.1 (.cons _ _ _ _ _ checked8760.1 (.cons _ _ _ _ _ checked8761.1 (.cons _ _ _ _ _ checked8762.1 (.cons _ _ _ _ _ checked8763.1 (.cons _ _ _ _ _ checked8764.1 (.cons _ _ _ _ _ checked8765.1 (.cons _ _ _ _ _ checked8766.1 (.cons _ _ _ _ _ checked8767.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8822 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3483 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8704.2,checked8705.2,checked8706.2,checked8707.2,checked8708.2,checked8709.2,checked8710.2,checked8711.2,checked8712.2,checked8713.2,checked8714.2,checked8715.2,checked8716.2,checked8717.2,checked8718.2,checked8719.2,checked8720.2,checked8721.2,checked8722.2,checked8723.2,checked8724.2,checked8725.2,checked8726.2,checked8727.2,checked8728.2,checked8729.2,checked8730.2,checked8731.2,checked8732.2,checked8733.2,checked8734.2,checked8735.2,checked8736.2,checked8737.2,checked8738.2,checked8739.2,checked8740.2,checked8741.2,checked8742.2,checked8743.2,checked8744.2,checked8745.2,checked8746.2,checked8747.2,checked8748.2,checked8749.2,checked8750.2,checked8751.2,checked8752.2,checked8753.2,checked8754.2,checked8755.2,checked8756.2,checked8757.2,checked8758.2,checked8759.2,checked8760.2,checked8761.2,checked8762.2,checked8763.2,checked8764.2,checked8765.2,checked8766.2,checked8767.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup136
