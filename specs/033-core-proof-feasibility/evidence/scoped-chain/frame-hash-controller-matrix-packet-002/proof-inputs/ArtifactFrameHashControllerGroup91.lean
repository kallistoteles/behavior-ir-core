import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup91
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5824 : List WordIR.Op := [.bnot 5866]
def bytes5824 : Bytes := ("    let r000016eb: u32 = !r000016ea;\n" : String).toByteArray.data.toList
theorem checked5824 : bytes5824=statementBytes 5867 (op5824.map lower) ∧ bytes5824.length=37 := by core033_kernel_decide
def op5825 : List WordIR.Op := [.band 5862 5867]
def bytes5825 : Bytes := ("    let r000016ec: u32 = r000016e6 & r000016eb;\n" : String).toByteArray.data.toList
theorem checked5825 : bytes5825=statementBytes 5868 (op5825.map lower) ∧ bytes5825.length=48 := by core033_kernel_decide
def op5826 : List WordIR.Op := [.bxor 5858 5868]
def bytes5826 : Bytes := ("    let r000016ed: u32 = r000016e2 ^ r000016ec;\n" : String).toByteArray.data.toList
theorem checked5826 : bytes5826=statementBytes 5869 (op5826.map lower) ∧ bytes5826.length=48 := by core033_kernel_decide
def op5827 : List WordIR.Op := [.shr 5869 31]
def bytes5827 : Bytes := ("    let r000016ee: u32 = r000016ed >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5827 : bytes5827=statementBytes 5870 (op5827.map lower) ∧ bytes5827.length=54 := by core033_kernel_decide
def op5828 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5828 : Bytes := ("    let r000016ef: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5828 : bytes5828=statementBytes 5871 (op5828.map lower) ∧ bytes5828.length=41 := by core033_kernel_decide
def op5829 : List WordIR.Op := [.bxor 5870 5871]
def bytes5829 : Bytes := ("    let r000016f0: u32 = r000016ee ^ r000016ef;\n" : String).toByteArray.data.toList
theorem checked5829 : bytes5829=statementBytes 5872 (op5829.map lower) ∧ bytes5829.length=48 := by core033_kernel_decide
def op5830 : List WordIR.Op := [.shr 3643 8]
def bytes5830 : Bytes := ("    let r000016f1: u32 = r00000e3b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5830 : bytes5830=statementBytes 5873 (op5830.map lower) ∧ bytes5830.length=54 := by core033_kernel_decide
def op5831 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5831 : Bytes := ("    let r000016f2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5831 : bytes5831=statementBytes 5874 (op5831.map lower) ∧ bytes5831.length=41 := by core033_kernel_decide
def op5832 : List WordIR.Op := [.bnot 5874]
def bytes5832 : Bytes := ("    let r000016f3: u32 = !r000016f2;\n" : String).toByteArray.data.toList
theorem checked5832 : bytes5832=statementBytes 5875 (op5832.map lower) ∧ bytes5832.length=37 := by core033_kernel_decide
def op5833 : List WordIR.Op := [.band 5873 5875]
def bytes5833 : Bytes := ("    let r000016f4: u32 = r000016f1 & r000016f3;\n" : String).toByteArray.data.toList
theorem checked5833 : bytes5833=statementBytes 5876 (op5833.map lower) ∧ bytes5833.length=48 := by core033_kernel_decide
def op5834 : List WordIR.Op := [.shr 3643 8]
def bytes5834 : Bytes := ("    let r000016f5: u32 = r00000e3b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5834 : bytes5834=statementBytes 5877 (op5834.map lower) ∧ bytes5834.length=54 := by core033_kernel_decide
def op5835 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5835 : Bytes := ("    let r000016f6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5835 : bytes5835=statementBytes 5878 (op5835.map lower) ∧ bytes5835.length=41 := by core033_kernel_decide
def op5836 : List WordIR.Op := [.bnot 5878]
def bytes5836 : Bytes := ("    let r000016f7: u32 = !r000016f6;\n" : String).toByteArray.data.toList
theorem checked5836 : bytes5836=statementBytes 5879 (op5836.map lower) ∧ bytes5836.length=37 := by core033_kernel_decide
def op5837 : List WordIR.Op := [.bxor 5877 5879]
def bytes5837 : Bytes := ("    let r000016f8: u32 = r000016f5 ^ r000016f7;\n" : String).toByteArray.data.toList
theorem checked5837 : bytes5837=statementBytes 5880 (op5837.map lower) ∧ bytes5837.length=48 := by core033_kernel_decide
def op5838 : List WordIR.Op := [.shr 3643 8]
def bytes5838 : Bytes := ("    let r000016f9: u32 = r00000e3b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5838 : bytes5838=statementBytes 5881 (op5838.map lower) ∧ bytes5838.length=54 := by core033_kernel_decide
def op5839 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5839 : Bytes := ("    let r000016fa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5839 : bytes5839=statementBytes 5882 (op5839.map lower) ∧ bytes5839.length=41 := by core033_kernel_decide
def op5840 : List WordIR.Op := [.bnot 5882]
def bytes5840 : Bytes := ("    let r000016fb: u32 = !r000016fa;\n" : String).toByteArray.data.toList
theorem checked5840 : bytes5840=statementBytes 5883 (op5840.map lower) ∧ bytes5840.length=37 := by core033_kernel_decide
def op5841 : List WordIR.Op := [.badd 5881 5883]
def bytes5841 : Bytes := ("    let r000016fc: u32 = r000016f9.wrapping_add(r000016fb);\n" : String).toByteArray.data.toList
theorem checked5841 : bytes5841=statementBytes 5884 (op5841.map lower) ∧ bytes5841.length=60 := by core033_kernel_decide
def op5842 : List WordIR.Op := [.bnot 5884]
def bytes5842 : Bytes := ("    let r000016fd: u32 = !r000016fc;\n" : String).toByteArray.data.toList
theorem checked5842 : bytes5842=statementBytes 5885 (op5842.map lower) ∧ bytes5842.length=37 := by core033_kernel_decide
def op5843 : List WordIR.Op := [.band 5880 5885]
def bytes5843 : Bytes := ("    let r000016fe: u32 = r000016f8 & r000016fd;\n" : String).toByteArray.data.toList
theorem checked5843 : bytes5843=statementBytes 5886 (op5843.map lower) ∧ bytes5843.length=48 := by core033_kernel_decide
def op5844 : List WordIR.Op := [.bxor 5876 5886]
def bytes5844 : Bytes := ("    let r000016ff: u32 = r000016f4 ^ r000016fe;\n" : String).toByteArray.data.toList
theorem checked5844 : bytes5844=statementBytes 5887 (op5844.map lower) ∧ bytes5844.length=48 := by core033_kernel_decide
def op5845 : List WordIR.Op := [.shr 5887 31]
def bytes5845 : Bytes := ("    let r00001700: u32 = r000016ff >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5845 : bytes5845=statementBytes 5888 (op5845.map lower) ∧ bytes5845.length=54 := by core033_kernel_decide
def op5846 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5846 : Bytes := ("    let r00001701: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5846 : bytes5846=statementBytes 5889 (op5846.map lower) ∧ bytes5846.length=41 := by core033_kernel_decide
def op5847 : List WordIR.Op := [.bxor 5888 5889]
def bytes5847 : Bytes := ("    let r00001702: u32 = r00001700 ^ r00001701;\n" : String).toByteArray.data.toList
theorem checked5847 : bytes5847=statementBytes 5890 (op5847.map lower) ∧ bytes5847.length=48 := by core033_kernel_decide
def op5848 : List WordIR.Op := [.shr 3695 8]
def bytes5848 : Bytes := ("    let r00001703: u32 = r00000e6f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5848 : bytes5848=statementBytes 5891 (op5848.map lower) ∧ bytes5848.length=54 := by core033_kernel_decide
def op5849 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5849 : Bytes := ("    let r00001704: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5849 : bytes5849=statementBytes 5892 (op5849.map lower) ∧ bytes5849.length=41 := by core033_kernel_decide
def op5850 : List WordIR.Op := [.bnot 5892]
def bytes5850 : Bytes := ("    let r00001705: u32 = !r00001704;\n" : String).toByteArray.data.toList
theorem checked5850 : bytes5850=statementBytes 5893 (op5850.map lower) ∧ bytes5850.length=37 := by core033_kernel_decide
def op5851 : List WordIR.Op := [.band 5891 5893]
def bytes5851 : Bytes := ("    let r00001706: u32 = r00001703 & r00001705;\n" : String).toByteArray.data.toList
theorem checked5851 : bytes5851=statementBytes 5894 (op5851.map lower) ∧ bytes5851.length=48 := by core033_kernel_decide
def op5852 : List WordIR.Op := [.shr 3695 8]
def bytes5852 : Bytes := ("    let r00001707: u32 = r00000e6f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5852 : bytes5852=statementBytes 5895 (op5852.map lower) ∧ bytes5852.length=54 := by core033_kernel_decide
def op5853 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5853 : Bytes := ("    let r00001708: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5853 : bytes5853=statementBytes 5896 (op5853.map lower) ∧ bytes5853.length=41 := by core033_kernel_decide
def op5854 : List WordIR.Op := [.bnot 5896]
def bytes5854 : Bytes := ("    let r00001709: u32 = !r00001708;\n" : String).toByteArray.data.toList
theorem checked5854 : bytes5854=statementBytes 5897 (op5854.map lower) ∧ bytes5854.length=37 := by core033_kernel_decide
def op5855 : List WordIR.Op := [.bxor 5895 5897]
def bytes5855 : Bytes := ("    let r0000170a: u32 = r00001707 ^ r00001709;\n" : String).toByteArray.data.toList
theorem checked5855 : bytes5855=statementBytes 5898 (op5855.map lower) ∧ bytes5855.length=48 := by core033_kernel_decide
def op5856 : List WordIR.Op := [.shr 3695 8]
def bytes5856 : Bytes := ("    let r0000170b: u32 = r00000e6f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5856 : bytes5856=statementBytes 5899 (op5856.map lower) ∧ bytes5856.length=54 := by core033_kernel_decide
def op5857 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5857 : Bytes := ("    let r0000170c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5857 : bytes5857=statementBytes 5900 (op5857.map lower) ∧ bytes5857.length=41 := by core033_kernel_decide
def op5858 : List WordIR.Op := [.bnot 5900]
def bytes5858 : Bytes := ("    let r0000170d: u32 = !r0000170c;\n" : String).toByteArray.data.toList
theorem checked5858 : bytes5858=statementBytes 5901 (op5858.map lower) ∧ bytes5858.length=37 := by core033_kernel_decide
def op5859 : List WordIR.Op := [.badd 5899 5901]
def bytes5859 : Bytes := ("    let r0000170e: u32 = r0000170b.wrapping_add(r0000170d);\n" : String).toByteArray.data.toList
theorem checked5859 : bytes5859=statementBytes 5902 (op5859.map lower) ∧ bytes5859.length=60 := by core033_kernel_decide
def op5860 : List WordIR.Op := [.bnot 5902]
def bytes5860 : Bytes := ("    let r0000170f: u32 = !r0000170e;\n" : String).toByteArray.data.toList
theorem checked5860 : bytes5860=statementBytes 5903 (op5860.map lower) ∧ bytes5860.length=37 := by core033_kernel_decide
def op5861 : List WordIR.Op := [.band 5898 5903]
def bytes5861 : Bytes := ("    let r00001710: u32 = r0000170a & r0000170f;\n" : String).toByteArray.data.toList
theorem checked5861 : bytes5861=statementBytes 5904 (op5861.map lower) ∧ bytes5861.length=48 := by core033_kernel_decide
def op5862 : List WordIR.Op := [.bxor 5894 5904]
def bytes5862 : Bytes := ("    let r00001711: u32 = r00001706 ^ r00001710;\n" : String).toByteArray.data.toList
theorem checked5862 : bytes5862=statementBytes 5905 (op5862.map lower) ∧ bytes5862.length=48 := by core033_kernel_decide
def op5863 : List WordIR.Op := [.shr 5905 31]
def bytes5863 : Bytes := ("    let r00001712: u32 = r00001711 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5863 : bytes5863=statementBytes 5906 (op5863.map lower) ∧ bytes5863.length=54 := by core033_kernel_decide
def op5864 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5864 : Bytes := ("    let r00001713: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5864 : bytes5864=statementBytes 5907 (op5864.map lower) ∧ bytes5864.length=41 := by core033_kernel_decide
def op5865 : List WordIR.Op := [.bxor 5906 5907]
def bytes5865 : Bytes := ("    let r00001714: u32 = r00001712 ^ r00001713;\n" : String).toByteArray.data.toList
theorem checked5865 : bytes5865=statementBytes 5908 (op5865.map lower) ∧ bytes5865.length=48 := by core033_kernel_decide
def op5866 : List WordIR.Op := [.shr 3747 8]
def bytes5866 : Bytes := ("    let r00001715: u32 = r00000ea3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5866 : bytes5866=statementBytes 5909 (op5866.map lower) ∧ bytes5866.length=54 := by core033_kernel_decide
def op5867 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5867 : Bytes := ("    let r00001716: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5867 : bytes5867=statementBytes 5910 (op5867.map lower) ∧ bytes5867.length=41 := by core033_kernel_decide
def op5868 : List WordIR.Op := [.bnot 5910]
def bytes5868 : Bytes := ("    let r00001717: u32 = !r00001716;\n" : String).toByteArray.data.toList
theorem checked5868 : bytes5868=statementBytes 5911 (op5868.map lower) ∧ bytes5868.length=37 := by core033_kernel_decide
def op5869 : List WordIR.Op := [.band 5909 5911]
def bytes5869 : Bytes := ("    let r00001718: u32 = r00001715 & r00001717;\n" : String).toByteArray.data.toList
theorem checked5869 : bytes5869=statementBytes 5912 (op5869.map lower) ∧ bytes5869.length=48 := by core033_kernel_decide
def op5870 : List WordIR.Op := [.shr 3747 8]
def bytes5870 : Bytes := ("    let r00001719: u32 = r00000ea3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5870 : bytes5870=statementBytes 5913 (op5870.map lower) ∧ bytes5870.length=54 := by core033_kernel_decide
def op5871 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5871 : Bytes := ("    let r0000171a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5871 : bytes5871=statementBytes 5914 (op5871.map lower) ∧ bytes5871.length=41 := by core033_kernel_decide
def op5872 : List WordIR.Op := [.bnot 5914]
def bytes5872 : Bytes := ("    let r0000171b: u32 = !r0000171a;\n" : String).toByteArray.data.toList
theorem checked5872 : bytes5872=statementBytes 5915 (op5872.map lower) ∧ bytes5872.length=37 := by core033_kernel_decide
def op5873 : List WordIR.Op := [.bxor 5913 5915]
def bytes5873 : Bytes := ("    let r0000171c: u32 = r00001719 ^ r0000171b;\n" : String).toByteArray.data.toList
theorem checked5873 : bytes5873=statementBytes 5916 (op5873.map lower) ∧ bytes5873.length=48 := by core033_kernel_decide
def op5874 : List WordIR.Op := [.shr 3747 8]
def bytes5874 : Bytes := ("    let r0000171d: u32 = r00000ea3 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5874 : bytes5874=statementBytes 5917 (op5874.map lower) ∧ bytes5874.length=54 := by core033_kernel_decide
def op5875 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5875 : Bytes := ("    let r0000171e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5875 : bytes5875=statementBytes 5918 (op5875.map lower) ∧ bytes5875.length=41 := by core033_kernel_decide
def op5876 : List WordIR.Op := [.bnot 5918]
def bytes5876 : Bytes := ("    let r0000171f: u32 = !r0000171e;\n" : String).toByteArray.data.toList
theorem checked5876 : bytes5876=statementBytes 5919 (op5876.map lower) ∧ bytes5876.length=37 := by core033_kernel_decide
def op5877 : List WordIR.Op := [.badd 5917 5919]
def bytes5877 : Bytes := ("    let r00001720: u32 = r0000171d.wrapping_add(r0000171f);\n" : String).toByteArray.data.toList
theorem checked5877 : bytes5877=statementBytes 5920 (op5877.map lower) ∧ bytes5877.length=60 := by core033_kernel_decide
def op5878 : List WordIR.Op := [.bnot 5920]
def bytes5878 : Bytes := ("    let r00001721: u32 = !r00001720;\n" : String).toByteArray.data.toList
theorem checked5878 : bytes5878=statementBytes 5921 (op5878.map lower) ∧ bytes5878.length=37 := by core033_kernel_decide
def op5879 : List WordIR.Op := [.band 5916 5921]
def bytes5879 : Bytes := ("    let r00001722: u32 = r0000171c & r00001721;\n" : String).toByteArray.data.toList
theorem checked5879 : bytes5879=statementBytes 5922 (op5879.map lower) ∧ bytes5879.length=48 := by core033_kernel_decide
def op5880 : List WordIR.Op := [.bxor 5912 5922]
def bytes5880 : Bytes := ("    let r00001723: u32 = r00001718 ^ r00001722;\n" : String).toByteArray.data.toList
theorem checked5880 : bytes5880=statementBytes 5923 (op5880.map lower) ∧ bytes5880.length=48 := by core033_kernel_decide
def op5881 : List WordIR.Op := [.shr 5923 31]
def bytes5881 : Bytes := ("    let r00001724: u32 = r00001723 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5881 : bytes5881=statementBytes 5924 (op5881.map lower) ∧ bytes5881.length=54 := by core033_kernel_decide
def op5882 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5882 : Bytes := ("    let r00001725: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5882 : bytes5882=statementBytes 5925 (op5882.map lower) ∧ bytes5882.length=41 := by core033_kernel_decide
def op5883 : List WordIR.Op := [.bxor 5924 5925]
def bytes5883 : Bytes := ("    let r00001726: u32 = r00001724 ^ r00001725;\n" : String).toByteArray.data.toList
theorem checked5883 : bytes5883=statementBytes 5926 (op5883.map lower) ∧ bytes5883.length=48 := by core033_kernel_decide
def op5884 : List WordIR.Op := [.shr 3799 8]
def bytes5884 : Bytes := ("    let r00001727: u32 = r00000ed7 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked5884 : bytes5884=statementBytes 5927 (op5884.map lower) ∧ bytes5884.length=54 := by core033_kernel_decide
def op5885 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5885 : Bytes := ("    let r00001728: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5885 : bytes5885=statementBytes 5928 (op5885.map lower) ∧ bytes5885.length=41 := by core033_kernel_decide
def op5886 : List WordIR.Op := [.bnot 5928]
def bytes5886 : Bytes := ("    let r00001729: u32 = !r00001728;\n" : String).toByteArray.data.toList
theorem checked5886 : bytes5886=statementBytes 5929 (op5886.map lower) ∧ bytes5886.length=37 := by core033_kernel_decide
def op5887 : List WordIR.Op := [.band 5927 5929]
def bytes5887 : Bytes := ("    let r0000172a: u32 = r00001727 & r00001729;\n" : String).toByteArray.data.toList
theorem checked5887 : bytes5887=statementBytes 5930 (op5887.map lower) ∧ bytes5887.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5824,op5825,op5826,op5827,op5828,op5829,op5830,op5831,op5832,op5833,op5834,op5835,op5836,op5837,op5838,op5839,op5840,op5841,op5842,op5843,op5844,op5845,op5846,op5847,op5848,op5849,op5850,op5851,op5852,op5853,op5854,op5855,op5856,op5857,op5858,op5859,op5860,op5861,op5862,op5863,op5864,op5865,op5866,op5867,op5868,op5869,op5870,op5871,op5872,op5873,op5874,op5875,op5876,op5877,op5878,op5879,op5880,op5881,op5882,op5883,op5884,op5885,op5886,op5887]
def chunks : List Bytes := [bytes5824,bytes5825,bytes5826,bytes5827,bytes5828,bytes5829,bytes5830,bytes5831,bytes5832,bytes5833,bytes5834,bytes5835,bytes5836,bytes5837,bytes5838,bytes5839,bytes5840,bytes5841,bytes5842,bytes5843,bytes5844,bytes5845,bytes5846,bytes5847,bytes5848,bytes5849,bytes5850,bytes5851,bytes5852,bytes5853,bytes5854,bytes5855,bytes5856,bytes5857,bytes5858,bytes5859,bytes5860,bytes5861,bytes5862,bytes5863,bytes5864,bytes5865,bytes5866,bytes5867,bytes5868,bytes5869,bytes5870,bytes5871,bytes5872,bytes5873,bytes5874,bytes5875,bytes5876,bytes5877,bytes5878,bytes5879,bytes5880,bytes5881,bytes5882,bytes5883,bytes5884,bytes5885,bytes5886,bytes5887]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5867 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5824.1 (.cons _ _ _ _ _ checked5825.1 (.cons _ _ _ _ _ checked5826.1 (.cons _ _ _ _ _ checked5827.1 (.cons _ _ _ _ _ checked5828.1 (.cons _ _ _ _ _ checked5829.1 (.cons _ _ _ _ _ checked5830.1 (.cons _ _ _ _ _ checked5831.1 (.cons _ _ _ _ _ checked5832.1 (.cons _ _ _ _ _ checked5833.1 (.cons _ _ _ _ _ checked5834.1 (.cons _ _ _ _ _ checked5835.1 (.cons _ _ _ _ _ checked5836.1 (.cons _ _ _ _ _ checked5837.1 (.cons _ _ _ _ _ checked5838.1 (.cons _ _ _ _ _ checked5839.1 (.cons _ _ _ _ _ checked5840.1 (.cons _ _ _ _ _ checked5841.1 (.cons _ _ _ _ _ checked5842.1 (.cons _ _ _ _ _ checked5843.1 (.cons _ _ _ _ _ checked5844.1 (.cons _ _ _ _ _ checked5845.1 (.cons _ _ _ _ _ checked5846.1 (.cons _ _ _ _ _ checked5847.1 (.cons _ _ _ _ _ checked5848.1 (.cons _ _ _ _ _ checked5849.1 (.cons _ _ _ _ _ checked5850.1 (.cons _ _ _ _ _ checked5851.1 (.cons _ _ _ _ _ checked5852.1 (.cons _ _ _ _ _ checked5853.1 (.cons _ _ _ _ _ checked5854.1 (.cons _ _ _ _ _ checked5855.1 (.cons _ _ _ _ _ checked5856.1 (.cons _ _ _ _ _ checked5857.1 (.cons _ _ _ _ _ checked5858.1 (.cons _ _ _ _ _ checked5859.1 (.cons _ _ _ _ _ checked5860.1 (.cons _ _ _ _ _ checked5861.1 (.cons _ _ _ _ _ checked5862.1 (.cons _ _ _ _ _ checked5863.1 (.cons _ _ _ _ _ checked5864.1 (.cons _ _ _ _ _ checked5865.1 (.cons _ _ _ _ _ checked5866.1 (.cons _ _ _ _ _ checked5867.1 (.cons _ _ _ _ _ checked5868.1 (.cons _ _ _ _ _ checked5869.1 (.cons _ _ _ _ _ checked5870.1 (.cons _ _ _ _ _ checked5871.1 (.cons _ _ _ _ _ checked5872.1 (.cons _ _ _ _ _ checked5873.1 (.cons _ _ _ _ _ checked5874.1 (.cons _ _ _ _ _ checked5875.1 (.cons _ _ _ _ _ checked5876.1 (.cons _ _ _ _ _ checked5877.1 (.cons _ _ _ _ _ checked5878.1 (.cons _ _ _ _ _ checked5879.1 (.cons _ _ _ _ _ checked5880.1 (.cons _ _ _ _ _ checked5881.1 (.cons _ _ _ _ _ checked5882.1 (.cons _ _ _ _ _ checked5883.1 (.cons _ _ _ _ _ checked5884.1 (.cons _ _ _ _ _ checked5885.1 (.cons _ _ _ _ _ checked5886.1 (.cons _ _ _ _ _ checked5887.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5867 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2940 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5824.2,checked5825.2,checked5826.2,checked5827.2,checked5828.2,checked5829.2,checked5830.2,checked5831.2,checked5832.2,checked5833.2,checked5834.2,checked5835.2,checked5836.2,checked5837.2,checked5838.2,checked5839.2,checked5840.2,checked5841.2,checked5842.2,checked5843.2,checked5844.2,checked5845.2,checked5846.2,checked5847.2,checked5848.2,checked5849.2,checked5850.2,checked5851.2,checked5852.2,checked5853.2,checked5854.2,checked5855.2,checked5856.2,checked5857.2,checked5858.2,checked5859.2,checked5860.2,checked5861.2,checked5862.2,checked5863.2,checked5864.2,checked5865.2,checked5866.2,checked5867.2,checked5868.2,checked5869.2,checked5870.2,checked5871.2,checked5872.2,checked5873.2,checked5874.2,checked5875.2,checked5876.2,checked5877.2,checked5878.2,checked5879.2,checked5880.2,checked5881.2,checked5882.2,checked5883.2,checked5884.2,checked5885.2,checked5886.2,checked5887.2]
  decide
end ArtifactFrameHashControllerGroup91
