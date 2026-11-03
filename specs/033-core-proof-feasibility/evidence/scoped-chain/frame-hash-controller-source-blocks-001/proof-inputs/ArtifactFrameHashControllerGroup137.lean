import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup137
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8768 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8768 : Bytes := ("    let r0000226b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8768 : bytes8768=statementBytes 8811 (op8768.map lower) ∧ bytes8768.length=41 := by core033_kernel_decide
def op8769 : List WordIR.Op := [.bnot 8811]
def bytes8769 : Bytes := ("    let r0000226c: u32 = !r0000226b;\n" : String).toByteArray.data.toList
theorem checked8769 : bytes8769=statementBytes 8812 (op8769.map lower) ∧ bytes8769.length=37 := by core033_kernel_decide
def op8770 : List WordIR.Op := [.badd 8810 8812]
def bytes8770 : Bytes := ("    let r0000226d: u32 = r0000226a.wrapping_add(r0000226c);\n" : String).toByteArray.data.toList
theorem checked8770 : bytes8770=statementBytes 8813 (op8770.map lower) ∧ bytes8770.length=60 := by core033_kernel_decide
def op8771 : List WordIR.Op := [.bnot 8813]
def bytes8771 : Bytes := ("    let r0000226e: u32 = !r0000226d;\n" : String).toByteArray.data.toList
theorem checked8771 : bytes8771=statementBytes 8814 (op8771.map lower) ∧ bytes8771.length=37 := by core033_kernel_decide
def op8772 : List WordIR.Op := [.band 8808 8814]
def bytes8772 : Bytes := ("    let r0000226f: u32 = r00002268 & r0000226e;\n" : String).toByteArray.data.toList
theorem checked8772 : bytes8772=statementBytes 8815 (op8772.map lower) ∧ bytes8772.length=48 := by core033_kernel_decide
def op8773 : List WordIR.Op := [.bxor 8803 8815]
def bytes8773 : Bytes := ("    let r00002270: u32 = r00002263 ^ r0000226f;\n" : String).toByteArray.data.toList
theorem checked8773 : bytes8773=statementBytes 8816 (op8773.map lower) ∧ bytes8773.length=48 := by core033_kernel_decide
def op8774 : List WordIR.Op := [.shr 8816 31]
def bytes8774 : Bytes := ("    let r00002271: u32 = r00002270 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked8774 : bytes8774=statementBytes 8817 (op8774.map lower) ∧ bytes8774.length=54 := by core033_kernel_decide
def op8775 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes8775 : Bytes := ("    let r00002272: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked8775 : bytes8775=statementBytes 8818 (op8775.map lower) ∧ bytes8775.length=41 := by core033_kernel_decide
def op8776 : List WordIR.Op := [.bxor 8817 8818]
def bytes8776 : Bytes := ("    let r00002273: u32 = r00002271 ^ r00002272;\n" : String).toByteArray.data.toList
theorem checked8776 : bytes8776=statementBytes 8819 (op8776.map lower) ∧ bytes8776.length=48 := by core033_kernel_decide
def op8777 : List WordIR.Op := [.bnot 8819]
def bytes8777 : Bytes := ("    let r00002274: u32 = !r00002273;\n" : String).toByteArray.data.toList
theorem checked8777 : bytes8777=statementBytes 8820 (op8777.map lower) ∧ bytes8777.length=37 := by core033_kernel_decide
def op8778 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes8778 : Bytes := ("    let r00002275: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked8778 : bytes8778=statementBytes 8821 (op8778.map lower) ∧ bytes8778.length=41 := by core033_kernel_decide
def op8779 : List WordIR.Op := [.badd 8820 8821]
def bytes8779 : Bytes := ("    let r00002276: u32 = r00002274.wrapping_add(r00002275);\n" : String).toByteArray.data.toList
theorem checked8779 : bytes8779=statementBytes 8822 (op8779.map lower) ∧ bytes8779.length=60 := by core033_kernel_decide
def op8780 : List WordIR.Op := [.bnot 8822]
def bytes8780 : Bytes := ("    let r00002277: u32 = !r00002276;\n" : String).toByteArray.data.toList
theorem checked8780 : bytes8780=statementBytes 8823 (op8780.map lower) ∧ bytes8780.length=37 := by core033_kernel_decide
def op8781 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes8781 : Bytes := ("    let r00002278: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked8781 : bytes8781=statementBytes 8824 (op8781.map lower) ∧ bytes8781.length=41 := by core033_kernel_decide
def op8782 : List WordIR.Op := [.band 8823 8824]
def bytes8782 : Bytes := ("    let r00002279: u32 = r00002277 & r00002278;\n" : String).toByteArray.data.toList
theorem checked8782 : bytes8782=statementBytes 8825 (op8782.map lower) ∧ bytes8782.length=48 := by core033_kernel_decide
def op8783 : List WordIR.Op := [.bxor 8798 8825]
def bytes8783 : Bytes := ("    let r0000227a: u32 = r0000225e ^ r00002279;\n" : String).toByteArray.data.toList
theorem checked8783 : bytes8783=statementBytes 8826 (op8783.map lower) ∧ bytes8783.length=48 := by core033_kernel_decide
def op8784 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes8784 : Bytes := ("    let r0000227b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked8784 : bytes8784=statementBytes 8827 (op8784.map lower) ∧ bytes8784.length=41 := by core033_kernel_decide
def op8785 : List WordIR.Op := [.bxor 0 8827]
def bytes8785 : Bytes := ("    let r0000227c: u32 = r00000000 ^ r0000227b;\n" : String).toByteArray.data.toList
theorem checked8785 : bytes8785=statementBytes 8828 (op8785.map lower) ∧ bytes8785.length=48 := by core033_kernel_decide
def op8786 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8786 : Bytes := ("    let r0000227d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8786 : bytes8786=statementBytes 8829 (op8786.map lower) ∧ bytes8786.length=41 := by core033_kernel_decide
def op8787 : List WordIR.Op := [.bnot 8829]
def bytes8787 : Bytes := ("    let r0000227e: u32 = !r0000227d;\n" : String).toByteArray.data.toList
theorem checked8787 : bytes8787=statementBytes 8830 (op8787.map lower) ∧ bytes8787.length=37 := by core033_kernel_decide
def op8788 : List WordIR.Op := [.band 8828 8830]
def bytes8788 : Bytes := ("    let r0000227f: u32 = r0000227c & r0000227e;\n" : String).toByteArray.data.toList
theorem checked8788 : bytes8788=statementBytes 8831 (op8788.map lower) ∧ bytes8788.length=48 := by core033_kernel_decide
def op8789 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes8789 : Bytes := ("    let r00002280: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked8789 : bytes8789=statementBytes 8832 (op8789.map lower) ∧ bytes8789.length=41 := by core033_kernel_decide
def op8790 : List WordIR.Op := [.bxor 0 8832]
def bytes8790 : Bytes := ("    let r00002281: u32 = r00000000 ^ r00002280;\n" : String).toByteArray.data.toList
theorem checked8790 : bytes8790=statementBytes 8833 (op8790.map lower) ∧ bytes8790.length=48 := by core033_kernel_decide
def op8791 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8791 : Bytes := ("    let r00002282: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8791 : bytes8791=statementBytes 8834 (op8791.map lower) ∧ bytes8791.length=41 := by core033_kernel_decide
def op8792 : List WordIR.Op := [.bnot 8834]
def bytes8792 : Bytes := ("    let r00002283: u32 = !r00002282;\n" : String).toByteArray.data.toList
theorem checked8792 : bytes8792=statementBytes 8835 (op8792.map lower) ∧ bytes8792.length=37 := by core033_kernel_decide
def op8793 : List WordIR.Op := [.bxor 8833 8835]
def bytes8793 : Bytes := ("    let r00002284: u32 = r00002281 ^ r00002283;\n" : String).toByteArray.data.toList
theorem checked8793 : bytes8793=statementBytes 8836 (op8793.map lower) ∧ bytes8793.length=48 := by core033_kernel_decide
def op8794 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes8794 : Bytes := ("    let r00002285: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked8794 : bytes8794=statementBytes 8837 (op8794.map lower) ∧ bytes8794.length=41 := by core033_kernel_decide
def op8795 : List WordIR.Op := [.bxor 0 8837]
def bytes8795 : Bytes := ("    let r00002286: u32 = r00000000 ^ r00002285;\n" : String).toByteArray.data.toList
theorem checked8795 : bytes8795=statementBytes 8838 (op8795.map lower) ∧ bytes8795.length=48 := by core033_kernel_decide
def op8796 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8796 : Bytes := ("    let r00002287: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8796 : bytes8796=statementBytes 8839 (op8796.map lower) ∧ bytes8796.length=41 := by core033_kernel_decide
def op8797 : List WordIR.Op := [.bnot 8839]
def bytes8797 : Bytes := ("    let r00002288: u32 = !r00002287;\n" : String).toByteArray.data.toList
theorem checked8797 : bytes8797=statementBytes 8840 (op8797.map lower) ∧ bytes8797.length=37 := by core033_kernel_decide
def op8798 : List WordIR.Op := [.badd 8838 8840]
def bytes8798 : Bytes := ("    let r00002289: u32 = r00002286.wrapping_add(r00002288);\n" : String).toByteArray.data.toList
theorem checked8798 : bytes8798=statementBytes 8841 (op8798.map lower) ∧ bytes8798.length=60 := by core033_kernel_decide
def op8799 : List WordIR.Op := [.bnot 8841]
def bytes8799 : Bytes := ("    let r0000228a: u32 = !r00002289;\n" : String).toByteArray.data.toList
theorem checked8799 : bytes8799=statementBytes 8842 (op8799.map lower) ∧ bytes8799.length=37 := by core033_kernel_decide
def op8800 : List WordIR.Op := [.band 8836 8842]
def bytes8800 : Bytes := ("    let r0000228b: u32 = r00002284 & r0000228a;\n" : String).toByteArray.data.toList
theorem checked8800 : bytes8800=statementBytes 8843 (op8800.map lower) ∧ bytes8800.length=48 := by core033_kernel_decide
def op8801 : List WordIR.Op := [.bxor 8831 8843]
def bytes8801 : Bytes := ("    let r0000228c: u32 = r0000227f ^ r0000228b;\n" : String).toByteArray.data.toList
theorem checked8801 : bytes8801=statementBytes 8844 (op8801.map lower) ∧ bytes8801.length=48 := by core033_kernel_decide
def op8802 : List WordIR.Op := [.shr 8844 31]
def bytes8802 : Bytes := ("    let r0000228d: u32 = r0000228c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked8802 : bytes8802=statementBytes 8845 (op8802.map lower) ∧ bytes8802.length=54 := by core033_kernel_decide
def op8803 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes8803 : Bytes := ("    let r0000228e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked8803 : bytes8803=statementBytes 8846 (op8803.map lower) ∧ bytes8803.length=41 := by core033_kernel_decide
def op8804 : List WordIR.Op := [.bxor 8845 8846]
def bytes8804 : Bytes := ("    let r0000228f: u32 = r0000228d ^ r0000228e;\n" : String).toByteArray.data.toList
theorem checked8804 : bytes8804=statementBytes 8847 (op8804.map lower) ∧ bytes8804.length=48 := by core033_kernel_decide
def op8805 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes8805 : Bytes := ("    let r00002290: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked8805 : bytes8805=statementBytes 8848 (op8805.map lower) ∧ bytes8805.length=41 := by core033_kernel_decide
def op8806 : List WordIR.Op := [.bxor 0 8848]
def bytes8806 : Bytes := ("    let r00002291: u32 = r00000000 ^ r00002290;\n" : String).toByteArray.data.toList
theorem checked8806 : bytes8806=statementBytes 8849 (op8806.map lower) ∧ bytes8806.length=48 := by core033_kernel_decide
def op8807 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8807 : Bytes := ("    let r00002292: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8807 : bytes8807=statementBytes 8850 (op8807.map lower) ∧ bytes8807.length=41 := by core033_kernel_decide
def op8808 : List WordIR.Op := [.bnot 8850]
def bytes8808 : Bytes := ("    let r00002293: u32 = !r00002292;\n" : String).toByteArray.data.toList
theorem checked8808 : bytes8808=statementBytes 8851 (op8808.map lower) ∧ bytes8808.length=37 := by core033_kernel_decide
def op8809 : List WordIR.Op := [.band 8849 8851]
def bytes8809 : Bytes := ("    let r00002294: u32 = r00002291 & r00002293;\n" : String).toByteArray.data.toList
theorem checked8809 : bytes8809=statementBytes 8852 (op8809.map lower) ∧ bytes8809.length=48 := by core033_kernel_decide
def op8810 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes8810 : Bytes := ("    let r00002295: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked8810 : bytes8810=statementBytes 8853 (op8810.map lower) ∧ bytes8810.length=41 := by core033_kernel_decide
def op8811 : List WordIR.Op := [.bxor 0 8853]
def bytes8811 : Bytes := ("    let r00002296: u32 = r00000000 ^ r00002295;\n" : String).toByteArray.data.toList
theorem checked8811 : bytes8811=statementBytes 8854 (op8811.map lower) ∧ bytes8811.length=48 := by core033_kernel_decide
def op8812 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8812 : Bytes := ("    let r00002297: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8812 : bytes8812=statementBytes 8855 (op8812.map lower) ∧ bytes8812.length=41 := by core033_kernel_decide
def op8813 : List WordIR.Op := [.bnot 8855]
def bytes8813 : Bytes := ("    let r00002298: u32 = !r00002297;\n" : String).toByteArray.data.toList
theorem checked8813 : bytes8813=statementBytes 8856 (op8813.map lower) ∧ bytes8813.length=37 := by core033_kernel_decide
def op8814 : List WordIR.Op := [.bxor 8854 8856]
def bytes8814 : Bytes := ("    let r00002299: u32 = r00002296 ^ r00002298;\n" : String).toByteArray.data.toList
theorem checked8814 : bytes8814=statementBytes 8857 (op8814.map lower) ∧ bytes8814.length=48 := by core033_kernel_decide
def op8815 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes8815 : Bytes := ("    let r0000229a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked8815 : bytes8815=statementBytes 8858 (op8815.map lower) ∧ bytes8815.length=41 := by core033_kernel_decide
def op8816 : List WordIR.Op := [.bxor 0 8858]
def bytes8816 : Bytes := ("    let r0000229b: u32 = r00000000 ^ r0000229a;\n" : String).toByteArray.data.toList
theorem checked8816 : bytes8816=statementBytes 8859 (op8816.map lower) ∧ bytes8816.length=48 := by core033_kernel_decide
def op8817 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes8817 : Bytes := ("    let r0000229c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked8817 : bytes8817=statementBytes 8860 (op8817.map lower) ∧ bytes8817.length=41 := by core033_kernel_decide
def op8818 : List WordIR.Op := [.bnot 8860]
def bytes8818 : Bytes := ("    let r0000229d: u32 = !r0000229c;\n" : String).toByteArray.data.toList
theorem checked8818 : bytes8818=statementBytes 8861 (op8818.map lower) ∧ bytes8818.length=37 := by core033_kernel_decide
def op8819 : List WordIR.Op := [.badd 8859 8861]
def bytes8819 : Bytes := ("    let r0000229e: u32 = r0000229b.wrapping_add(r0000229d);\n" : String).toByteArray.data.toList
theorem checked8819 : bytes8819=statementBytes 8862 (op8819.map lower) ∧ bytes8819.length=60 := by core033_kernel_decide
def op8820 : List WordIR.Op := [.bnot 8862]
def bytes8820 : Bytes := ("    let r0000229f: u32 = !r0000229e;\n" : String).toByteArray.data.toList
theorem checked8820 : bytes8820=statementBytes 8863 (op8820.map lower) ∧ bytes8820.length=37 := by core033_kernel_decide
def op8821 : List WordIR.Op := [.band 8857 8863]
def bytes8821 : Bytes := ("    let r000022a0: u32 = r00002299 & r0000229f;\n" : String).toByteArray.data.toList
theorem checked8821 : bytes8821=statementBytes 8864 (op8821.map lower) ∧ bytes8821.length=48 := by core033_kernel_decide
def op8822 : List WordIR.Op := [.bxor 8852 8864]
def bytes8822 : Bytes := ("    let r000022a1: u32 = r00002294 ^ r000022a0;\n" : String).toByteArray.data.toList
theorem checked8822 : bytes8822=statementBytes 8865 (op8822.map lower) ∧ bytes8822.length=48 := by core033_kernel_decide
def op8823 : List WordIR.Op := [.shr 8865 31]
def bytes8823 : Bytes := ("    let r000022a2: u32 = r000022a1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked8823 : bytes8823=statementBytes 8866 (op8823.map lower) ∧ bytes8823.length=54 := by core033_kernel_decide
def op8824 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes8824 : Bytes := ("    let r000022a3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked8824 : bytes8824=statementBytes 8867 (op8824.map lower) ∧ bytes8824.length=41 := by core033_kernel_decide
def op8825 : List WordIR.Op := [.bxor 8866 8867]
def bytes8825 : Bytes := ("    let r000022a4: u32 = r000022a2 ^ r000022a3;\n" : String).toByteArray.data.toList
theorem checked8825 : bytes8825=statementBytes 8868 (op8825.map lower) ∧ bytes8825.length=48 := by core033_kernel_decide
def op8826 : List WordIR.Op := [.bxor 8847 8868]
def bytes8826 : Bytes := ("    let r000022a5: u32 = r0000228f ^ r000022a4;\n" : String).toByteArray.data.toList
theorem checked8826 : bytes8826=statementBytes 8869 (op8826.map lower) ∧ bytes8826.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8768,op8769,op8770,op8771,op8772,op8773,op8774,op8775,op8776,op8777,op8778,op8779,op8780,op8781,op8782,op8783,op8784,op8785,op8786,op8787,op8788,op8789,op8790,op8791,op8792,op8793,op8794,op8795,op8796,op8797,op8798,op8799,op8800,op8801,op8802,op8803,op8804,op8805,op8806,op8807,op8808,op8809,op8810,op8811,op8812,op8813,op8814,op8815,op8816,op8817,op8818,op8819,op8820,op8821,op8822,op8823,op8824,op8825,op8826]
def chunks : List Bytes := [bytes8768,bytes8769,bytes8770,bytes8771,bytes8772,bytes8773,bytes8774,bytes8775,bytes8776,bytes8777,bytes8778,bytes8779,bytes8780,bytes8781,bytes8782,bytes8783,bytes8784,bytes8785,bytes8786,bytes8787,bytes8788,bytes8789,bytes8790,bytes8791,bytes8792,bytes8793,bytes8794,bytes8795,bytes8796,bytes8797,bytes8798,bytes8799,bytes8800,bytes8801,bytes8802,bytes8803,bytes8804,bytes8805,bytes8806,bytes8807,bytes8808,bytes8809,bytes8810,bytes8811,bytes8812,bytes8813,bytes8814,bytes8815,bytes8816,bytes8817,bytes8818,bytes8819,bytes8820,bytes8821,bytes8822,bytes8823,bytes8824,bytes8825,bytes8826]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8811 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8768.1 (.cons _ _ _ _ _ checked8769.1 (.cons _ _ _ _ _ checked8770.1 (.cons _ _ _ _ _ checked8771.1 (.cons _ _ _ _ _ checked8772.1 (.cons _ _ _ _ _ checked8773.1 (.cons _ _ _ _ _ checked8774.1 (.cons _ _ _ _ _ checked8775.1 (.cons _ _ _ _ _ checked8776.1 (.cons _ _ _ _ _ checked8777.1 (.cons _ _ _ _ _ checked8778.1 (.cons _ _ _ _ _ checked8779.1 (.cons _ _ _ _ _ checked8780.1 (.cons _ _ _ _ _ checked8781.1 (.cons _ _ _ _ _ checked8782.1 (.cons _ _ _ _ _ checked8783.1 (.cons _ _ _ _ _ checked8784.1 (.cons _ _ _ _ _ checked8785.1 (.cons _ _ _ _ _ checked8786.1 (.cons _ _ _ _ _ checked8787.1 (.cons _ _ _ _ _ checked8788.1 (.cons _ _ _ _ _ checked8789.1 (.cons _ _ _ _ _ checked8790.1 (.cons _ _ _ _ _ checked8791.1 (.cons _ _ _ _ _ checked8792.1 (.cons _ _ _ _ _ checked8793.1 (.cons _ _ _ _ _ checked8794.1 (.cons _ _ _ _ _ checked8795.1 (.cons _ _ _ _ _ checked8796.1 (.cons _ _ _ _ _ checked8797.1 (.cons _ _ _ _ _ checked8798.1 (.cons _ _ _ _ _ checked8799.1 (.cons _ _ _ _ _ checked8800.1 (.cons _ _ _ _ _ checked8801.1 (.cons _ _ _ _ _ checked8802.1 (.cons _ _ _ _ _ checked8803.1 (.cons _ _ _ _ _ checked8804.1 (.cons _ _ _ _ _ checked8805.1 (.cons _ _ _ _ _ checked8806.1 (.cons _ _ _ _ _ checked8807.1 (.cons _ _ _ _ _ checked8808.1 (.cons _ _ _ _ _ checked8809.1 (.cons _ _ _ _ _ checked8810.1 (.cons _ _ _ _ _ checked8811.1 (.cons _ _ _ _ _ checked8812.1 (.cons _ _ _ _ _ checked8813.1 (.cons _ _ _ _ _ checked8814.1 (.cons _ _ _ _ _ checked8815.1 (.cons _ _ _ _ _ checked8816.1 (.cons _ _ _ _ _ checked8817.1 (.cons _ _ _ _ _ checked8818.1 (.cons _ _ _ _ _ checked8819.1 (.cons _ _ _ _ _ checked8820.1 (.cons _ _ _ _ _ checked8821.1 (.cons _ _ _ _ _ checked8822.1 (.cons _ _ _ _ _ checked8823.1 (.cons _ _ _ _ _ checked8824.1 (.cons _ _ _ _ _ checked8825.1 (.cons _ _ _ _ _ checked8826.1 (.empty _))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8811 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=59 := rfl
theorem partSize : partBytes.length=2640 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8768.2,checked8769.2,checked8770.2,checked8771.2,checked8772.2,checked8773.2,checked8774.2,checked8775.2,checked8776.2,checked8777.2,checked8778.2,checked8779.2,checked8780.2,checked8781.2,checked8782.2,checked8783.2,checked8784.2,checked8785.2,checked8786.2,checked8787.2,checked8788.2,checked8789.2,checked8790.2,checked8791.2,checked8792.2,checked8793.2,checked8794.2,checked8795.2,checked8796.2,checked8797.2,checked8798.2,checked8799.2,checked8800.2,checked8801.2,checked8802.2,checked8803.2,checked8804.2,checked8805.2,checked8806.2,checked8807.2,checked8808.2,checked8809.2,checked8810.2,checked8811.2,checked8812.2,checked8813.2,checked8814.2,checked8815.2,checked8816.2,checked8817.2,checked8818.2,checked8819.2,checked8820.2,checked8821.2,checked8822.2,checked8823.2,checked8824.2,checked8825.2,checked8826.2]
  decide
end ArtifactFrameHashControllerGroup137
