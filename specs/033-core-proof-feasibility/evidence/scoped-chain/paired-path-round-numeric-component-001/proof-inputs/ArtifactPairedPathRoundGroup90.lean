import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup90
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5760 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5760 : Bytes := ("    let r000016e0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5760 : bytes5760=statementBytes 5856 (op5760.map lower) ∧ bytes5760.length=41 := by core033_kernel_decide
def op5761 : List WordIR.Op := [.bxor 616 5856]
def bytes5761 : Bytes := ("    let r000016e1: u32 = r00000268 ^ r000016e0;\n" : String).toByteArray.data.toList
theorem checked5761 : bytes5761=statementBytes 5857 (op5761.map lower) ∧ bytes5761.length=48 := by core033_kernel_decide
def op5762 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5762 : Bytes := ("    let r000016e2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5762 : bytes5762=statementBytes 5858 (op5762.map lower) ∧ bytes5762.length=41 := by core033_kernel_decide
def op5763 : List WordIR.Op := [.bnot 5858]
def bytes5763 : Bytes := ("    let r000016e3: u32 = !r000016e2;\n" : String).toByteArray.data.toList
theorem checked5763 : bytes5763=statementBytes 5859 (op5763.map lower) ∧ bytes5763.length=37 := by core033_kernel_decide
def op5764 : List WordIR.Op := [.band 5857 5859]
def bytes5764 : Bytes := ("    let r000016e4: u32 = r000016e1 & r000016e3;\n" : String).toByteArray.data.toList
theorem checked5764 : bytes5764=statementBytes 5860 (op5764.map lower) ∧ bytes5764.length=48 := by core033_kernel_decide
def op5765 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5765 : Bytes := ("    let r000016e5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5765 : bytes5765=statementBytes 5861 (op5765.map lower) ∧ bytes5765.length=41 := by core033_kernel_decide
def op5766 : List WordIR.Op := [.bxor 616 5861]
def bytes5766 : Bytes := ("    let r000016e6: u32 = r00000268 ^ r000016e5;\n" : String).toByteArray.data.toList
theorem checked5766 : bytes5766=statementBytes 5862 (op5766.map lower) ∧ bytes5766.length=48 := by core033_kernel_decide
def op5767 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5767 : Bytes := ("    let r000016e7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5767 : bytes5767=statementBytes 5863 (op5767.map lower) ∧ bytes5767.length=41 := by core033_kernel_decide
def op5768 : List WordIR.Op := [.bnot 5863]
def bytes5768 : Bytes := ("    let r000016e8: u32 = !r000016e7;\n" : String).toByteArray.data.toList
theorem checked5768 : bytes5768=statementBytes 5864 (op5768.map lower) ∧ bytes5768.length=37 := by core033_kernel_decide
def op5769 : List WordIR.Op := [.bxor 5862 5864]
def bytes5769 : Bytes := ("    let r000016e9: u32 = r000016e6 ^ r000016e8;\n" : String).toByteArray.data.toList
theorem checked5769 : bytes5769=statementBytes 5865 (op5769.map lower) ∧ bytes5769.length=48 := by core033_kernel_decide
def op5770 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5770 : Bytes := ("    let r000016ea: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5770 : bytes5770=statementBytes 5866 (op5770.map lower) ∧ bytes5770.length=41 := by core033_kernel_decide
def op5771 : List WordIR.Op := [.bxor 616 5866]
def bytes5771 : Bytes := ("    let r000016eb: u32 = r00000268 ^ r000016ea;\n" : String).toByteArray.data.toList
theorem checked5771 : bytes5771=statementBytes 5867 (op5771.map lower) ∧ bytes5771.length=48 := by core033_kernel_decide
def op5772 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5772 : Bytes := ("    let r000016ec: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5772 : bytes5772=statementBytes 5868 (op5772.map lower) ∧ bytes5772.length=41 := by core033_kernel_decide
def op5773 : List WordIR.Op := [.bnot 5868]
def bytes5773 : Bytes := ("    let r000016ed: u32 = !r000016ec;\n" : String).toByteArray.data.toList
theorem checked5773 : bytes5773=statementBytes 5869 (op5773.map lower) ∧ bytes5773.length=37 := by core033_kernel_decide
def op5774 : List WordIR.Op := [.badd 5867 5869]
def bytes5774 : Bytes := ("    let r000016ee: u32 = r000016eb.wrapping_add(r000016ed);\n" : String).toByteArray.data.toList
theorem checked5774 : bytes5774=statementBytes 5870 (op5774.map lower) ∧ bytes5774.length=60 := by core033_kernel_decide
def op5775 : List WordIR.Op := [.bnot 5870]
def bytes5775 : Bytes := ("    let r000016ef: u32 = !r000016ee;\n" : String).toByteArray.data.toList
theorem checked5775 : bytes5775=statementBytes 5871 (op5775.map lower) ∧ bytes5775.length=37 := by core033_kernel_decide
def op5776 : List WordIR.Op := [.band 5865 5871]
def bytes5776 : Bytes := ("    let r000016f0: u32 = r000016e9 & r000016ef;\n" : String).toByteArray.data.toList
theorem checked5776 : bytes5776=statementBytes 5872 (op5776.map lower) ∧ bytes5776.length=48 := by core033_kernel_decide
def op5777 : List WordIR.Op := [.bxor 5860 5872]
def bytes5777 : Bytes := ("    let r000016f1: u32 = r000016e4 ^ r000016f0;\n" : String).toByteArray.data.toList
theorem checked5777 : bytes5777=statementBytes 5873 (op5777.map lower) ∧ bytes5777.length=48 := by core033_kernel_decide
def op5778 : List WordIR.Op := [.shr 5873 31]
def bytes5778 : Bytes := ("    let r000016f2: u32 = r000016f1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5778 : bytes5778=statementBytes 5874 (op5778.map lower) ∧ bytes5778.length=54 := by core033_kernel_decide
def op5779 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5779 : Bytes := ("    let r000016f3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5779 : bytes5779=statementBytes 5875 (op5779.map lower) ∧ bytes5779.length=41 := by core033_kernel_decide
def op5780 : List WordIR.Op := [.bxor 5874 5875]
def bytes5780 : Bytes := ("    let r000016f4: u32 = r000016f2 ^ r000016f3;\n" : String).toByteArray.data.toList
theorem checked5780 : bytes5780=statementBytes 5876 (op5780.map lower) ∧ bytes5780.length=48 := by core033_kernel_decide
def op5781 : List WordIR.Op := [.bnot 5876]
def bytes5781 : Bytes := ("    let r000016f5: u32 = !r000016f4;\n" : String).toByteArray.data.toList
theorem checked5781 : bytes5781=statementBytes 5877 (op5781.map lower) ∧ bytes5781.length=37 := by core033_kernel_decide
def op5782 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5782 : Bytes := ("    let r000016f6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5782 : bytes5782=statementBytes 5878 (op5782.map lower) ∧ bytes5782.length=41 := by core033_kernel_decide
def op5783 : List WordIR.Op := [.badd 5877 5878]
def bytes5783 : Bytes := ("    let r000016f7: u32 = r000016f5.wrapping_add(r000016f6);\n" : String).toByteArray.data.toList
theorem checked5783 : bytes5783=statementBytes 5879 (op5783.map lower) ∧ bytes5783.length=60 := by core033_kernel_decide
def op5784 : List WordIR.Op := [.bnot 5879]
def bytes5784 : Bytes := ("    let r000016f8: u32 = !r000016f7;\n" : String).toByteArray.data.toList
theorem checked5784 : bytes5784=statementBytes 5880 (op5784.map lower) ∧ bytes5784.length=37 := by core033_kernel_decide
def op5785 : List WordIR.Op := [.band 5880 1992]
def bytes5785 : Bytes := ("    let r000016f9: u32 = r000016f8 & r000007c8;\n" : String).toByteArray.data.toList
theorem checked5785 : bytes5785=statementBytes 5881 (op5785.map lower) ∧ bytes5785.length=48 := by core033_kernel_decide
def op5786 : List WordIR.Op := [.bxor 5855 5881]
def bytes5786 : Bytes := ("    let r000016fa: u32 = r000016df ^ r000016f9;\n" : String).toByteArray.data.toList
theorem checked5786 : bytes5786=statementBytes 5882 (op5786.map lower) ∧ bytes5786.length=48 := by core033_kernel_decide
def op5787 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5787 : Bytes := ("    let r000016fb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5787 : bytes5787=statementBytes 5883 (op5787.map lower) ∧ bytes5787.length=41 := by core033_kernel_decide
def op5788 : List WordIR.Op := [.bxor 616 5883]
def bytes5788 : Bytes := ("    let r000016fc: u32 = r00000268 ^ r000016fb;\n" : String).toByteArray.data.toList
theorem checked5788 : bytes5788=statementBytes 5884 (op5788.map lower) ∧ bytes5788.length=48 := by core033_kernel_decide
def op5789 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5789 : Bytes := ("    let r000016fd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5789 : bytes5789=statementBytes 5885 (op5789.map lower) ∧ bytes5789.length=41 := by core033_kernel_decide
def op5790 : List WordIR.Op := [.bnot 5885]
def bytes5790 : Bytes := ("    let r000016fe: u32 = !r000016fd;\n" : String).toByteArray.data.toList
theorem checked5790 : bytes5790=statementBytes 5886 (op5790.map lower) ∧ bytes5790.length=37 := by core033_kernel_decide
def op5791 : List WordIR.Op := [.band 5884 5886]
def bytes5791 : Bytes := ("    let r000016ff: u32 = r000016fc & r000016fe;\n" : String).toByteArray.data.toList
theorem checked5791 : bytes5791=statementBytes 5887 (op5791.map lower) ∧ bytes5791.length=48 := by core033_kernel_decide
def op5792 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5792 : Bytes := ("    let r00001700: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5792 : bytes5792=statementBytes 5888 (op5792.map lower) ∧ bytes5792.length=41 := by core033_kernel_decide
def op5793 : List WordIR.Op := [.bxor 616 5888]
def bytes5793 : Bytes := ("    let r00001701: u32 = r00000268 ^ r00001700;\n" : String).toByteArray.data.toList
theorem checked5793 : bytes5793=statementBytes 5889 (op5793.map lower) ∧ bytes5793.length=48 := by core033_kernel_decide
def op5794 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5794 : Bytes := ("    let r00001702: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5794 : bytes5794=statementBytes 5890 (op5794.map lower) ∧ bytes5794.length=41 := by core033_kernel_decide
def op5795 : List WordIR.Op := [.bnot 5890]
def bytes5795 : Bytes := ("    let r00001703: u32 = !r00001702;\n" : String).toByteArray.data.toList
theorem checked5795 : bytes5795=statementBytes 5891 (op5795.map lower) ∧ bytes5795.length=37 := by core033_kernel_decide
def op5796 : List WordIR.Op := [.bxor 5889 5891]
def bytes5796 : Bytes := ("    let r00001704: u32 = r00001701 ^ r00001703;\n" : String).toByteArray.data.toList
theorem checked5796 : bytes5796=statementBytes 5892 (op5796.map lower) ∧ bytes5796.length=48 := by core033_kernel_decide
def op5797 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5797 : Bytes := ("    let r00001705: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5797 : bytes5797=statementBytes 5893 (op5797.map lower) ∧ bytes5797.length=41 := by core033_kernel_decide
def op5798 : List WordIR.Op := [.bxor 616 5893]
def bytes5798 : Bytes := ("    let r00001706: u32 = r00000268 ^ r00001705;\n" : String).toByteArray.data.toList
theorem checked5798 : bytes5798=statementBytes 5894 (op5798.map lower) ∧ bytes5798.length=48 := by core033_kernel_decide
def op5799 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5799 : Bytes := ("    let r00001707: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5799 : bytes5799=statementBytes 5895 (op5799.map lower) ∧ bytes5799.length=41 := by core033_kernel_decide
def op5800 : List WordIR.Op := [.bnot 5895]
def bytes5800 : Bytes := ("    let r00001708: u32 = !r00001707;\n" : String).toByteArray.data.toList
theorem checked5800 : bytes5800=statementBytes 5896 (op5800.map lower) ∧ bytes5800.length=37 := by core033_kernel_decide
def op5801 : List WordIR.Op := [.badd 5894 5896]
def bytes5801 : Bytes := ("    let r00001709: u32 = r00001706.wrapping_add(r00001708);\n" : String).toByteArray.data.toList
theorem checked5801 : bytes5801=statementBytes 5897 (op5801.map lower) ∧ bytes5801.length=60 := by core033_kernel_decide
def op5802 : List WordIR.Op := [.bnot 5897]
def bytes5802 : Bytes := ("    let r0000170a: u32 = !r00001709;\n" : String).toByteArray.data.toList
theorem checked5802 : bytes5802=statementBytes 5898 (op5802.map lower) ∧ bytes5802.length=37 := by core033_kernel_decide
def op5803 : List WordIR.Op := [.band 5892 5898]
def bytes5803 : Bytes := ("    let r0000170b: u32 = r00001704 & r0000170a;\n" : String).toByteArray.data.toList
theorem checked5803 : bytes5803=statementBytes 5899 (op5803.map lower) ∧ bytes5803.length=48 := by core033_kernel_decide
def op5804 : List WordIR.Op := [.bxor 5887 5899]
def bytes5804 : Bytes := ("    let r0000170c: u32 = r000016ff ^ r0000170b;\n" : String).toByteArray.data.toList
theorem checked5804 : bytes5804=statementBytes 5900 (op5804.map lower) ∧ bytes5804.length=48 := by core033_kernel_decide
def op5805 : List WordIR.Op := [.shr 5900 31]
def bytes5805 : Bytes := ("    let r0000170d: u32 = r0000170c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5805 : bytes5805=statementBytes 5901 (op5805.map lower) ∧ bytes5805.length=54 := by core033_kernel_decide
def op5806 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5806 : Bytes := ("    let r0000170e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5806 : bytes5806=statementBytes 5902 (op5806.map lower) ∧ bytes5806.length=41 := by core033_kernel_decide
def op5807 : List WordIR.Op := [.bxor 5901 5902]
def bytes5807 : Bytes := ("    let r0000170f: u32 = r0000170d ^ r0000170e;\n" : String).toByteArray.data.toList
theorem checked5807 : bytes5807=statementBytes 5903 (op5807.map lower) ∧ bytes5807.length=48 := by core033_kernel_decide
def op5808 : List WordIR.Op := [.bnot 5903]
def bytes5808 : Bytes := ("    let r00001710: u32 = !r0000170f;\n" : String).toByteArray.data.toList
theorem checked5808 : bytes5808=statementBytes 5904 (op5808.map lower) ∧ bytes5808.length=37 := by core033_kernel_decide
def op5809 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5809 : Bytes := ("    let r00001711: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5809 : bytes5809=statementBytes 5905 (op5809.map lower) ∧ bytes5809.length=41 := by core033_kernel_decide
def op5810 : List WordIR.Op := [.badd 5904 5905]
def bytes5810 : Bytes := ("    let r00001712: u32 = r00001710.wrapping_add(r00001711);\n" : String).toByteArray.data.toList
theorem checked5810 : bytes5810=statementBytes 5906 (op5810.map lower) ∧ bytes5810.length=60 := by core033_kernel_decide
def op5811 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5811 : Bytes := ("    let r00001713: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5811 : bytes5811=statementBytes 5907 (op5811.map lower) ∧ bytes5811.length=41 := by core033_kernel_decide
def op5812 : List WordIR.Op := [.band 5906 5907]
def bytes5812 : Bytes := ("    let r00001714: u32 = r00001712 & r00001713;\n" : String).toByteArray.data.toList
theorem checked5812 : bytes5812=statementBytes 5908 (op5812.map lower) ∧ bytes5812.length=48 := by core033_kernel_decide
def op5813 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5813 : Bytes := ("    let r00001715: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5813 : bytes5813=statementBytes 5909 (op5813.map lower) ∧ bytes5813.length=41 := by core033_kernel_decide
def op5814 : List WordIR.Op := [.bxor 616 5909]
def bytes5814 : Bytes := ("    let r00001716: u32 = r00000268 ^ r00001715;\n" : String).toByteArray.data.toList
theorem checked5814 : bytes5814=statementBytes 5910 (op5814.map lower) ∧ bytes5814.length=48 := by core033_kernel_decide
def op5815 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5815 : Bytes := ("    let r00001717: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5815 : bytes5815=statementBytes 5911 (op5815.map lower) ∧ bytes5815.length=41 := by core033_kernel_decide
def op5816 : List WordIR.Op := [.bnot 5911]
def bytes5816 : Bytes := ("    let r00001718: u32 = !r00001717;\n" : String).toByteArray.data.toList
theorem checked5816 : bytes5816=statementBytes 5912 (op5816.map lower) ∧ bytes5816.length=37 := by core033_kernel_decide
def op5817 : List WordIR.Op := [.band 5910 5912]
def bytes5817 : Bytes := ("    let r00001719: u32 = r00001716 & r00001718;\n" : String).toByteArray.data.toList
theorem checked5817 : bytes5817=statementBytes 5913 (op5817.map lower) ∧ bytes5817.length=48 := by core033_kernel_decide
def op5818 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5818 : Bytes := ("    let r0000171a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5818 : bytes5818=statementBytes 5914 (op5818.map lower) ∧ bytes5818.length=41 := by core033_kernel_decide
def op5819 : List WordIR.Op := [.bxor 616 5914]
def bytes5819 : Bytes := ("    let r0000171b: u32 = r00000268 ^ r0000171a;\n" : String).toByteArray.data.toList
theorem checked5819 : bytes5819=statementBytes 5915 (op5819.map lower) ∧ bytes5819.length=48 := by core033_kernel_decide
def op5820 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5820 : Bytes := ("    let r0000171c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5820 : bytes5820=statementBytes 5916 (op5820.map lower) ∧ bytes5820.length=41 := by core033_kernel_decide
def op5821 : List WordIR.Op := [.bnot 5916]
def bytes5821 : Bytes := ("    let r0000171d: u32 = !r0000171c;\n" : String).toByteArray.data.toList
theorem checked5821 : bytes5821=statementBytes 5917 (op5821.map lower) ∧ bytes5821.length=37 := by core033_kernel_decide
def op5822 : List WordIR.Op := [.bxor 5915 5917]
def bytes5822 : Bytes := ("    let r0000171e: u32 = r0000171b ^ r0000171d;\n" : String).toByteArray.data.toList
theorem checked5822 : bytes5822=statementBytes 5918 (op5822.map lower) ∧ bytes5822.length=48 := by core033_kernel_decide
def op5823 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5823 : Bytes := ("    let r0000171f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5823 : bytes5823=statementBytes 5919 (op5823.map lower) ∧ bytes5823.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5760,op5761,op5762,op5763,op5764,op5765,op5766,op5767,op5768,op5769,op5770,op5771,op5772,op5773,op5774,op5775,op5776,op5777,op5778,op5779,op5780,op5781,op5782,op5783,op5784,op5785,op5786,op5787,op5788,op5789,op5790,op5791,op5792,op5793,op5794,op5795,op5796,op5797,op5798,op5799,op5800,op5801,op5802,op5803,op5804,op5805,op5806,op5807,op5808,op5809,op5810,op5811,op5812,op5813,op5814,op5815,op5816,op5817,op5818,op5819,op5820,op5821,op5822,op5823]
def chunks : List Bytes := [bytes5760,bytes5761,bytes5762,bytes5763,bytes5764,bytes5765,bytes5766,bytes5767,bytes5768,bytes5769,bytes5770,bytes5771,bytes5772,bytes5773,bytes5774,bytes5775,bytes5776,bytes5777,bytes5778,bytes5779,bytes5780,bytes5781,bytes5782,bytes5783,bytes5784,bytes5785,bytes5786,bytes5787,bytes5788,bytes5789,bytes5790,bytes5791,bytes5792,bytes5793,bytes5794,bytes5795,bytes5796,bytes5797,bytes5798,bytes5799,bytes5800,bytes5801,bytes5802,bytes5803,bytes5804,bytes5805,bytes5806,bytes5807,bytes5808,bytes5809,bytes5810,bytes5811,bytes5812,bytes5813,bytes5814,bytes5815,bytes5816,bytes5817,bytes5818,bytes5819,bytes5820,bytes5821,bytes5822,bytes5823]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5856 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5760.1 (.cons _ _ _ _ _ checked5761.1 (.cons _ _ _ _ _ checked5762.1 (.cons _ _ _ _ _ checked5763.1 (.cons _ _ _ _ _ checked5764.1 (.cons _ _ _ _ _ checked5765.1 (.cons _ _ _ _ _ checked5766.1 (.cons _ _ _ _ _ checked5767.1 (.cons _ _ _ _ _ checked5768.1 (.cons _ _ _ _ _ checked5769.1 (.cons _ _ _ _ _ checked5770.1 (.cons _ _ _ _ _ checked5771.1 (.cons _ _ _ _ _ checked5772.1 (.cons _ _ _ _ _ checked5773.1 (.cons _ _ _ _ _ checked5774.1 (.cons _ _ _ _ _ checked5775.1 (.cons _ _ _ _ _ checked5776.1 (.cons _ _ _ _ _ checked5777.1 (.cons _ _ _ _ _ checked5778.1 (.cons _ _ _ _ _ checked5779.1 (.cons _ _ _ _ _ checked5780.1 (.cons _ _ _ _ _ checked5781.1 (.cons _ _ _ _ _ checked5782.1 (.cons _ _ _ _ _ checked5783.1 (.cons _ _ _ _ _ checked5784.1 (.cons _ _ _ _ _ checked5785.1 (.cons _ _ _ _ _ checked5786.1 (.cons _ _ _ _ _ checked5787.1 (.cons _ _ _ _ _ checked5788.1 (.cons _ _ _ _ _ checked5789.1 (.cons _ _ _ _ _ checked5790.1 (.cons _ _ _ _ _ checked5791.1 (.cons _ _ _ _ _ checked5792.1 (.cons _ _ _ _ _ checked5793.1 (.cons _ _ _ _ _ checked5794.1 (.cons _ _ _ _ _ checked5795.1 (.cons _ _ _ _ _ checked5796.1 (.cons _ _ _ _ _ checked5797.1 (.cons _ _ _ _ _ checked5798.1 (.cons _ _ _ _ _ checked5799.1 (.cons _ _ _ _ _ checked5800.1 (.cons _ _ _ _ _ checked5801.1 (.cons _ _ _ _ _ checked5802.1 (.cons _ _ _ _ _ checked5803.1 (.cons _ _ _ _ _ checked5804.1 (.cons _ _ _ _ _ checked5805.1 (.cons _ _ _ _ _ checked5806.1 (.cons _ _ _ _ _ checked5807.1 (.cons _ _ _ _ _ checked5808.1 (.cons _ _ _ _ _ checked5809.1 (.cons _ _ _ _ _ checked5810.1 (.cons _ _ _ _ _ checked5811.1 (.cons _ _ _ _ _ checked5812.1 (.cons _ _ _ _ _ checked5813.1 (.cons _ _ _ _ _ checked5814.1 (.cons _ _ _ _ _ checked5815.1 (.cons _ _ _ _ _ checked5816.1 (.cons _ _ _ _ _ checked5817.1 (.cons _ _ _ _ _ checked5818.1 (.cons _ _ _ _ _ checked5819.1 (.cons _ _ _ _ _ checked5820.1 (.cons _ _ _ _ _ checked5821.1 (.cons _ _ _ _ _ checked5822.1 (.cons _ _ _ _ _ checked5823.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5856 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2835 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5760.2,checked5761.2,checked5762.2,checked5763.2,checked5764.2,checked5765.2,checked5766.2,checked5767.2,checked5768.2,checked5769.2,checked5770.2,checked5771.2,checked5772.2,checked5773.2,checked5774.2,checked5775.2,checked5776.2,checked5777.2,checked5778.2,checked5779.2,checked5780.2,checked5781.2,checked5782.2,checked5783.2,checked5784.2,checked5785.2,checked5786.2,checked5787.2,checked5788.2,checked5789.2,checked5790.2,checked5791.2,checked5792.2,checked5793.2,checked5794.2,checked5795.2,checked5796.2,checked5797.2,checked5798.2,checked5799.2,checked5800.2,checked5801.2,checked5802.2,checked5803.2,checked5804.2,checked5805.2,checked5806.2,checked5807.2,checked5808.2,checked5809.2,checked5810.2,checked5811.2,checked5812.2,checked5813.2,checked5814.2,checked5815.2,checked5816.2,checked5817.2,checked5818.2,checked5819.2,checked5820.2,checked5821.2,checked5822.2,checked5823.2]
  decide
end ArtifactPairedPathRoundGroup90
