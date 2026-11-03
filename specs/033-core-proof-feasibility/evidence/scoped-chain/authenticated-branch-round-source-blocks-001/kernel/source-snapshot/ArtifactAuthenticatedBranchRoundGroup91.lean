import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup91
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op5824 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5824 : Bytes := ("    let r00001736: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5824 : bytes5824=statementBytes 5942 (op5824.map lower) ∧ bytes5824.length=41 := by core033_kernel_decide
def op5825 : List WordIR.Op := [.bnot 5942]
def bytes5825 : Bytes := ("    let r00001737: u32 = !r00001736;\n" : String).toByteArray.data.toList
theorem checked5825 : bytes5825=statementBytes 5943 (op5825.map lower) ∧ bytes5825.length=37 := by core033_kernel_decide
def op5826 : List WordIR.Op := [.bxor 5941 5943]
def bytes5826 : Bytes := ("    let r00001738: u32 = r00001735 ^ r00001737;\n" : String).toByteArray.data.toList
theorem checked5826 : bytes5826=statementBytes 5944 (op5826.map lower) ∧ bytes5826.length=48 := by core033_kernel_decide
def op5827 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5827 : Bytes := ("    let r00001739: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5827 : bytes5827=statementBytes 5945 (op5827.map lower) ∧ bytes5827.length=41 := by core033_kernel_decide
def op5828 : List WordIR.Op := [.bxor 1299 5945]
def bytes5828 : Bytes := ("    let r0000173a: u32 = r00000513 ^ r00001739;\n" : String).toByteArray.data.toList
theorem checked5828 : bytes5828=statementBytes 5946 (op5828.map lower) ∧ bytes5828.length=48 := by core033_kernel_decide
def op5829 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5829 : Bytes := ("    let r0000173b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5829 : bytes5829=statementBytes 5947 (op5829.map lower) ∧ bytes5829.length=41 := by core033_kernel_decide
def op5830 : List WordIR.Op := [.bnot 5947]
def bytes5830 : Bytes := ("    let r0000173c: u32 = !r0000173b;\n" : String).toByteArray.data.toList
theorem checked5830 : bytes5830=statementBytes 5948 (op5830.map lower) ∧ bytes5830.length=37 := by core033_kernel_decide
def op5831 : List WordIR.Op := [.badd 5946 5948]
def bytes5831 : Bytes := ("    let r0000173d: u32 = r0000173a.wrapping_add(r0000173c);\n" : String).toByteArray.data.toList
theorem checked5831 : bytes5831=statementBytes 5949 (op5831.map lower) ∧ bytes5831.length=60 := by core033_kernel_decide
def op5832 : List WordIR.Op := [.bnot 5949]
def bytes5832 : Bytes := ("    let r0000173e: u32 = !r0000173d;\n" : String).toByteArray.data.toList
theorem checked5832 : bytes5832=statementBytes 5950 (op5832.map lower) ∧ bytes5832.length=37 := by core033_kernel_decide
def op5833 : List WordIR.Op := [.band 5944 5950]
def bytes5833 : Bytes := ("    let r0000173f: u32 = r00001738 & r0000173e;\n" : String).toByteArray.data.toList
theorem checked5833 : bytes5833=statementBytes 5951 (op5833.map lower) ∧ bytes5833.length=48 := by core033_kernel_decide
def op5834 : List WordIR.Op := [.bxor 5939 5951]
def bytes5834 : Bytes := ("    let r00001740: u32 = r00001733 ^ r0000173f;\n" : String).toByteArray.data.toList
theorem checked5834 : bytes5834=statementBytes 5952 (op5834.map lower) ∧ bytes5834.length=48 := by core033_kernel_decide
def op5835 : List WordIR.Op := [.shr 5952 31]
def bytes5835 : Bytes := ("    let r00001741: u32 = r00001740 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5835 : bytes5835=statementBytes 5953 (op5835.map lower) ∧ bytes5835.length=54 := by core033_kernel_decide
def op5836 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5836 : Bytes := ("    let r00001742: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5836 : bytes5836=statementBytes 5954 (op5836.map lower) ∧ bytes5836.length=41 := by core033_kernel_decide
def op5837 : List WordIR.Op := [.bxor 5953 5954]
def bytes5837 : Bytes := ("    let r00001743: u32 = r00001741 ^ r00001742;\n" : String).toByteArray.data.toList
theorem checked5837 : bytes5837=statementBytes 5955 (op5837.map lower) ∧ bytes5837.length=48 := by core033_kernel_decide
def op5838 : List WordIR.Op := [.bnot 5955]
def bytes5838 : Bytes := ("    let r00001744: u32 = !r00001743;\n" : String).toByteArray.data.toList
theorem checked5838 : bytes5838=statementBytes 5956 (op5838.map lower) ∧ bytes5838.length=37 := by core033_kernel_decide
def op5839 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5839 : Bytes := ("    let r00001745: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5839 : bytes5839=statementBytes 5957 (op5839.map lower) ∧ bytes5839.length=41 := by core033_kernel_decide
def op5840 : List WordIR.Op := [.badd 5956 5957]
def bytes5840 : Bytes := ("    let r00001746: u32 = r00001744.wrapping_add(r00001745);\n" : String).toByteArray.data.toList
theorem checked5840 : bytes5840=statementBytes 5958 (op5840.map lower) ∧ bytes5840.length=60 := by core033_kernel_decide
def op5841 : List WordIR.Op := [.band 5958 2834]
def bytes5841 : Bytes := ("    let r00001747: u32 = r00001746 & r00000b12;\n" : String).toByteArray.data.toList
theorem checked5841 : bytes5841=statementBytes 5959 (op5841.map lower) ∧ bytes5841.length=48 := by core033_kernel_decide
def op5842 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5842 : Bytes := ("    let r00001748: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5842 : bytes5842=statementBytes 5960 (op5842.map lower) ∧ bytes5842.length=41 := by core033_kernel_decide
def op5843 : List WordIR.Op := [.bxor 1299 5960]
def bytes5843 : Bytes := ("    let r00001749: u32 = r00000513 ^ r00001748;\n" : String).toByteArray.data.toList
theorem checked5843 : bytes5843=statementBytes 5961 (op5843.map lower) ∧ bytes5843.length=48 := by core033_kernel_decide
def op5844 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5844 : Bytes := ("    let r0000174a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5844 : bytes5844=statementBytes 5962 (op5844.map lower) ∧ bytes5844.length=41 := by core033_kernel_decide
def op5845 : List WordIR.Op := [.bnot 5962]
def bytes5845 : Bytes := ("    let r0000174b: u32 = !r0000174a;\n" : String).toByteArray.data.toList
theorem checked5845 : bytes5845=statementBytes 5963 (op5845.map lower) ∧ bytes5845.length=37 := by core033_kernel_decide
def op5846 : List WordIR.Op := [.band 5961 5963]
def bytes5846 : Bytes := ("    let r0000174c: u32 = r00001749 & r0000174b;\n" : String).toByteArray.data.toList
theorem checked5846 : bytes5846=statementBytes 5964 (op5846.map lower) ∧ bytes5846.length=48 := by core033_kernel_decide
def op5847 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5847 : Bytes := ("    let r0000174d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5847 : bytes5847=statementBytes 5965 (op5847.map lower) ∧ bytes5847.length=41 := by core033_kernel_decide
def op5848 : List WordIR.Op := [.bxor 1299 5965]
def bytes5848 : Bytes := ("    let r0000174e: u32 = r00000513 ^ r0000174d;\n" : String).toByteArray.data.toList
theorem checked5848 : bytes5848=statementBytes 5966 (op5848.map lower) ∧ bytes5848.length=48 := by core033_kernel_decide
def op5849 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5849 : Bytes := ("    let r0000174f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5849 : bytes5849=statementBytes 5967 (op5849.map lower) ∧ bytes5849.length=41 := by core033_kernel_decide
def op5850 : List WordIR.Op := [.bnot 5967]
def bytes5850 : Bytes := ("    let r00001750: u32 = !r0000174f;\n" : String).toByteArray.data.toList
theorem checked5850 : bytes5850=statementBytes 5968 (op5850.map lower) ∧ bytes5850.length=37 := by core033_kernel_decide
def op5851 : List WordIR.Op := [.bxor 5966 5968]
def bytes5851 : Bytes := ("    let r00001751: u32 = r0000174e ^ r00001750;\n" : String).toByteArray.data.toList
theorem checked5851 : bytes5851=statementBytes 5969 (op5851.map lower) ∧ bytes5851.length=48 := by core033_kernel_decide
def op5852 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5852 : Bytes := ("    let r00001752: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5852 : bytes5852=statementBytes 5970 (op5852.map lower) ∧ bytes5852.length=41 := by core033_kernel_decide
def op5853 : List WordIR.Op := [.bxor 1299 5970]
def bytes5853 : Bytes := ("    let r00001753: u32 = r00000513 ^ r00001752;\n" : String).toByteArray.data.toList
theorem checked5853 : bytes5853=statementBytes 5971 (op5853.map lower) ∧ bytes5853.length=48 := by core033_kernel_decide
def op5854 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5854 : Bytes := ("    let r00001754: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5854 : bytes5854=statementBytes 5972 (op5854.map lower) ∧ bytes5854.length=41 := by core033_kernel_decide
def op5855 : List WordIR.Op := [.bnot 5972]
def bytes5855 : Bytes := ("    let r00001755: u32 = !r00001754;\n" : String).toByteArray.data.toList
theorem checked5855 : bytes5855=statementBytes 5973 (op5855.map lower) ∧ bytes5855.length=37 := by core033_kernel_decide
def op5856 : List WordIR.Op := [.badd 5971 5973]
def bytes5856 : Bytes := ("    let r00001756: u32 = r00001753.wrapping_add(r00001755);\n" : String).toByteArray.data.toList
theorem checked5856 : bytes5856=statementBytes 5974 (op5856.map lower) ∧ bytes5856.length=60 := by core033_kernel_decide
def op5857 : List WordIR.Op := [.bnot 5974]
def bytes5857 : Bytes := ("    let r00001757: u32 = !r00001756;\n" : String).toByteArray.data.toList
theorem checked5857 : bytes5857=statementBytes 5975 (op5857.map lower) ∧ bytes5857.length=37 := by core033_kernel_decide
def op5858 : List WordIR.Op := [.band 5969 5975]
def bytes5858 : Bytes := ("    let r00001758: u32 = r00001751 & r00001757;\n" : String).toByteArray.data.toList
theorem checked5858 : bytes5858=statementBytes 5976 (op5858.map lower) ∧ bytes5858.length=48 := by core033_kernel_decide
def op5859 : List WordIR.Op := [.bxor 5964 5976]
def bytes5859 : Bytes := ("    let r00001759: u32 = r0000174c ^ r00001758;\n" : String).toByteArray.data.toList
theorem checked5859 : bytes5859=statementBytes 5977 (op5859.map lower) ∧ bytes5859.length=48 := by core033_kernel_decide
def op5860 : List WordIR.Op := [.shr 5977 31]
def bytes5860 : Bytes := ("    let r0000175a: u32 = r00001759 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5860 : bytes5860=statementBytes 5978 (op5860.map lower) ∧ bytes5860.length=54 := by core033_kernel_decide
def op5861 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5861 : Bytes := ("    let r0000175b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5861 : bytes5861=statementBytes 5979 (op5861.map lower) ∧ bytes5861.length=41 := by core033_kernel_decide
def op5862 : List WordIR.Op := [.bxor 5978 5979]
def bytes5862 : Bytes := ("    let r0000175c: u32 = r0000175a ^ r0000175b;\n" : String).toByteArray.data.toList
theorem checked5862 : bytes5862=statementBytes 5980 (op5862.map lower) ∧ bytes5862.length=48 := by core033_kernel_decide
def op5863 : List WordIR.Op := [.bnot 5980]
def bytes5863 : Bytes := ("    let r0000175d: u32 = !r0000175c;\n" : String).toByteArray.data.toList
theorem checked5863 : bytes5863=statementBytes 5981 (op5863.map lower) ∧ bytes5863.length=37 := by core033_kernel_decide
def op5864 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5864 : Bytes := ("    let r0000175e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5864 : bytes5864=statementBytes 5982 (op5864.map lower) ∧ bytes5864.length=41 := by core033_kernel_decide
def op5865 : List WordIR.Op := [.badd 5981 5982]
def bytes5865 : Bytes := ("    let r0000175f: u32 = r0000175d.wrapping_add(r0000175e);\n" : String).toByteArray.data.toList
theorem checked5865 : bytes5865=statementBytes 5983 (op5865.map lower) ∧ bytes5865.length=60 := by core033_kernel_decide
def op5866 : List WordIR.Op := [.bnot 5983]
def bytes5866 : Bytes := ("    let r00001760: u32 = !r0000175f;\n" : String).toByteArray.data.toList
theorem checked5866 : bytes5866=statementBytes 5984 (op5866.map lower) ∧ bytes5866.length=37 := by core033_kernel_decide
def op5867 : List WordIR.Op := [.band 5984 2642]
def bytes5867 : Bytes := ("    let r00001761: u32 = r00001760 & r00000a52;\n" : String).toByteArray.data.toList
theorem checked5867 : bytes5867=statementBytes 5985 (op5867.map lower) ∧ bytes5867.length=48 := by core033_kernel_decide
def op5868 : List WordIR.Op := [.bxor 5959 5985]
def bytes5868 : Bytes := ("    let r00001762: u32 = r00001747 ^ r00001761;\n" : String).toByteArray.data.toList
theorem checked5868 : bytes5868=statementBytes 5986 (op5868.map lower) ∧ bytes5868.length=48 := by core033_kernel_decide
def op5869 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5869 : Bytes := ("    let r00001763: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5869 : bytes5869=statementBytes 5987 (op5869.map lower) ∧ bytes5869.length=41 := by core033_kernel_decide
def op5870 : List WordIR.Op := [.bxor 1299 5987]
def bytes5870 : Bytes := ("    let r00001764: u32 = r00000513 ^ r00001763;\n" : String).toByteArray.data.toList
theorem checked5870 : bytes5870=statementBytes 5988 (op5870.map lower) ∧ bytes5870.length=48 := by core033_kernel_decide
def op5871 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5871 : Bytes := ("    let r00001765: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5871 : bytes5871=statementBytes 5989 (op5871.map lower) ∧ bytes5871.length=41 := by core033_kernel_decide
def op5872 : List WordIR.Op := [.bnot 5989]
def bytes5872 : Bytes := ("    let r00001766: u32 = !r00001765;\n" : String).toByteArray.data.toList
theorem checked5872 : bytes5872=statementBytes 5990 (op5872.map lower) ∧ bytes5872.length=37 := by core033_kernel_decide
def op5873 : List WordIR.Op := [.band 5988 5990]
def bytes5873 : Bytes := ("    let r00001767: u32 = r00001764 & r00001766;\n" : String).toByteArray.data.toList
theorem checked5873 : bytes5873=statementBytes 5991 (op5873.map lower) ∧ bytes5873.length=48 := by core033_kernel_decide
def op5874 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5874 : Bytes := ("    let r00001768: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5874 : bytes5874=statementBytes 5992 (op5874.map lower) ∧ bytes5874.length=41 := by core033_kernel_decide
def op5875 : List WordIR.Op := [.bxor 1299 5992]
def bytes5875 : Bytes := ("    let r00001769: u32 = r00000513 ^ r00001768;\n" : String).toByteArray.data.toList
theorem checked5875 : bytes5875=statementBytes 5993 (op5875.map lower) ∧ bytes5875.length=48 := by core033_kernel_decide
def op5876 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5876 : Bytes := ("    let r0000176a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5876 : bytes5876=statementBytes 5994 (op5876.map lower) ∧ bytes5876.length=41 := by core033_kernel_decide
def op5877 : List WordIR.Op := [.bnot 5994]
def bytes5877 : Bytes := ("    let r0000176b: u32 = !r0000176a;\n" : String).toByteArray.data.toList
theorem checked5877 : bytes5877=statementBytes 5995 (op5877.map lower) ∧ bytes5877.length=37 := by core033_kernel_decide
def op5878 : List WordIR.Op := [.bxor 5993 5995]
def bytes5878 : Bytes := ("    let r0000176c: u32 = r00001769 ^ r0000176b;\n" : String).toByteArray.data.toList
theorem checked5878 : bytes5878=statementBytes 5996 (op5878.map lower) ∧ bytes5878.length=48 := by core033_kernel_decide
def op5879 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5879 : Bytes := ("    let r0000176d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5879 : bytes5879=statementBytes 5997 (op5879.map lower) ∧ bytes5879.length=41 := by core033_kernel_decide
def op5880 : List WordIR.Op := [.bxor 1299 5997]
def bytes5880 : Bytes := ("    let r0000176e: u32 = r00000513 ^ r0000176d;\n" : String).toByteArray.data.toList
theorem checked5880 : bytes5880=statementBytes 5998 (op5880.map lower) ∧ bytes5880.length=48 := by core033_kernel_decide
def op5881 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5881 : Bytes := ("    let r0000176f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5881 : bytes5881=statementBytes 5999 (op5881.map lower) ∧ bytes5881.length=41 := by core033_kernel_decide
def op5882 : List WordIR.Op := [.bnot 5999]
def bytes5882 : Bytes := ("    let r00001770: u32 = !r0000176f;\n" : String).toByteArray.data.toList
theorem checked5882 : bytes5882=statementBytes 6000 (op5882.map lower) ∧ bytes5882.length=37 := by core033_kernel_decide
def op5883 : List WordIR.Op := [.badd 5998 6000]
def bytes5883 : Bytes := ("    let r00001771: u32 = r0000176e.wrapping_add(r00001770);\n" : String).toByteArray.data.toList
theorem checked5883 : bytes5883=statementBytes 6001 (op5883.map lower) ∧ bytes5883.length=60 := by core033_kernel_decide
def op5884 : List WordIR.Op := [.bnot 6001]
def bytes5884 : Bytes := ("    let r00001772: u32 = !r00001771;\n" : String).toByteArray.data.toList
theorem checked5884 : bytes5884=statementBytes 6002 (op5884.map lower) ∧ bytes5884.length=37 := by core033_kernel_decide
def op5885 : List WordIR.Op := [.band 5996 6002]
def bytes5885 : Bytes := ("    let r00001773: u32 = r0000176c & r00001772;\n" : String).toByteArray.data.toList
theorem checked5885 : bytes5885=statementBytes 6003 (op5885.map lower) ∧ bytes5885.length=48 := by core033_kernel_decide
def op5886 : List WordIR.Op := [.bxor 5991 6003]
def bytes5886 : Bytes := ("    let r00001774: u32 = r00001767 ^ r00001773;\n" : String).toByteArray.data.toList
theorem checked5886 : bytes5886=statementBytes 6004 (op5886.map lower) ∧ bytes5886.length=48 := by core033_kernel_decide
def op5887 : List WordIR.Op := [.shr 6004 31]
def bytes5887 : Bytes := ("    let r00001775: u32 = r00001774 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5887 : bytes5887=statementBytes 6005 (op5887.map lower) ∧ bytes5887.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op5824,op5825,op5826,op5827,op5828,op5829,op5830,op5831,op5832,op5833,op5834,op5835,op5836,op5837,op5838,op5839,op5840,op5841,op5842,op5843,op5844,op5845,op5846,op5847,op5848,op5849,op5850,op5851,op5852,op5853,op5854,op5855,op5856,op5857,op5858,op5859,op5860,op5861,op5862,op5863,op5864,op5865,op5866,op5867,op5868,op5869,op5870,op5871,op5872,op5873,op5874,op5875,op5876,op5877,op5878,op5879,op5880,op5881,op5882,op5883,op5884,op5885,op5886,op5887]
def chunks : List Bytes := [bytes5824,bytes5825,bytes5826,bytes5827,bytes5828,bytes5829,bytes5830,bytes5831,bytes5832,bytes5833,bytes5834,bytes5835,bytes5836,bytes5837,bytes5838,bytes5839,bytes5840,bytes5841,bytes5842,bytes5843,bytes5844,bytes5845,bytes5846,bytes5847,bytes5848,bytes5849,bytes5850,bytes5851,bytes5852,bytes5853,bytes5854,bytes5855,bytes5856,bytes5857,bytes5858,bytes5859,bytes5860,bytes5861,bytes5862,bytes5863,bytes5864,bytes5865,bytes5866,bytes5867,bytes5868,bytes5869,bytes5870,bytes5871,bytes5872,bytes5873,bytes5874,bytes5875,bytes5876,bytes5877,bytes5878,bytes5879,bytes5880,bytes5881,bytes5882,bytes5883,bytes5884,bytes5885,bytes5886,bytes5887]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5942 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked5824.1 (.cons _ _ _ _ _ checked5825.1 (.cons _ _ _ _ _ checked5826.1 (.cons _ _ _ _ _ checked5827.1 (.cons _ _ _ _ _ checked5828.1 (.cons _ _ _ _ _ checked5829.1 (.cons _ _ _ _ _ checked5830.1 (.cons _ _ _ _ _ checked5831.1 (.cons _ _ _ _ _ checked5832.1 (.cons _ _ _ _ _ checked5833.1 (.cons _ _ _ _ _ checked5834.1 (.cons _ _ _ _ _ checked5835.1 (.cons _ _ _ _ _ checked5836.1 (.cons _ _ _ _ _ checked5837.1 (.cons _ _ _ _ _ checked5838.1 (.cons _ _ _ _ _ checked5839.1 (.cons _ _ _ _ _ checked5840.1 (.cons _ _ _ _ _ checked5841.1 (.cons _ _ _ _ _ checked5842.1 (.cons _ _ _ _ _ checked5843.1 (.cons _ _ _ _ _ checked5844.1 (.cons _ _ _ _ _ checked5845.1 (.cons _ _ _ _ _ checked5846.1 (.cons _ _ _ _ _ checked5847.1 (.cons _ _ _ _ _ checked5848.1 (.cons _ _ _ _ _ checked5849.1 (.cons _ _ _ _ _ checked5850.1 (.cons _ _ _ _ _ checked5851.1 (.cons _ _ _ _ _ checked5852.1 (.cons _ _ _ _ _ checked5853.1 (.cons _ _ _ _ _ checked5854.1 (.cons _ _ _ _ _ checked5855.1 (.cons _ _ _ _ _ checked5856.1 (.cons _ _ _ _ _ checked5857.1 (.cons _ _ _ _ _ checked5858.1 (.cons _ _ _ _ _ checked5859.1 (.cons _ _ _ _ _ checked5860.1 (.cons _ _ _ _ _ checked5861.1 (.cons _ _ _ _ _ checked5862.1 (.cons _ _ _ _ _ checked5863.1 (.cons _ _ _ _ _ checked5864.1 (.cons _ _ _ _ _ checked5865.1 (.cons _ _ _ _ _ checked5866.1 (.cons _ _ _ _ _ checked5867.1 (.cons _ _ _ _ _ checked5868.1 (.cons _ _ _ _ _ checked5869.1 (.cons _ _ _ _ _ checked5870.1 (.cons _ _ _ _ _ checked5871.1 (.cons _ _ _ _ _ checked5872.1 (.cons _ _ _ _ _ checked5873.1 (.cons _ _ _ _ _ checked5874.1 (.cons _ _ _ _ _ checked5875.1 (.cons _ _ _ _ _ checked5876.1 (.cons _ _ _ _ _ checked5877.1 (.cons _ _ _ _ _ checked5878.1 (.cons _ _ _ _ _ checked5879.1 (.cons _ _ _ _ _ checked5880.1 (.cons _ _ _ _ _ checked5881.1 (.cons _ _ _ _ _ checked5882.1 (.cons _ _ _ _ _ checked5883.1 (.cons _ _ _ _ _ checked5884.1 (.cons _ _ _ _ _ checked5885.1 (.cons _ _ _ _ _ checked5886.1 (.cons _ _ _ _ _ checked5887.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5942 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked5824.2,checked5825.2,checked5826.2,checked5827.2,checked5828.2,checked5829.2,checked5830.2,checked5831.2,checked5832.2,checked5833.2,checked5834.2,checked5835.2,checked5836.2,checked5837.2,checked5838.2,checked5839.2,checked5840.2,checked5841.2,checked5842.2,checked5843.2,checked5844.2,checked5845.2,checked5846.2,checked5847.2,checked5848.2,checked5849.2,checked5850.2,checked5851.2,checked5852.2,checked5853.2,checked5854.2,checked5855.2,checked5856.2,checked5857.2,checked5858.2,checked5859.2,checked5860.2,checked5861.2,checked5862.2,checked5863.2,checked5864.2,checked5865.2,checked5866.2,checked5867.2,checked5868.2,checked5869.2,checked5870.2,checked5871.2,checked5872.2,checked5873.2,checked5874.2,checked5875.2,checked5876.2,checked5877.2,checked5878.2,checked5879.2,checked5880.2,checked5881.2,checked5882.2,checked5883.2,checked5884.2,checked5885.2,checked5886.2,checked5887.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup91
