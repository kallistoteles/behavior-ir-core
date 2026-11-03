import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup76
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4864 : List WordIR.Op := [.bxor 4958 4959]
def bytes4864 : Bytes := ("    let r00001360: u32 = r0000135e ^ r0000135f;\n" : String).toByteArray.data.toList
theorem checked4864 : bytes4864=statementBytes 4960 (op4864.map lower) ∧ bytes4864.length=48 := by core033_kernel_decide
def op4865 : List WordIR.Op := [.bnot 4960]
def bytes4865 : Bytes := ("    let r00001361: u32 = !r00001360;\n" : String).toByteArray.data.toList
theorem checked4865 : bytes4865=statementBytes 4961 (op4865.map lower) ∧ bytes4865.length=37 := by core033_kernel_decide
def op4866 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4866 : Bytes := ("    let r00001362: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4866 : bytes4866=statementBytes 4962 (op4866.map lower) ∧ bytes4866.length=41 := by core033_kernel_decide
def op4867 : List WordIR.Op := [.badd 4961 4962]
def bytes4867 : Bytes := ("    let r00001363: u32 = r00001361.wrapping_add(r00001362);\n" : String).toByteArray.data.toList
theorem checked4867 : bytes4867=statementBytes 4963 (op4867.map lower) ∧ bytes4867.length=60 := by core033_kernel_decide
def op4868 : List WordIR.Op := [.band 4963 2133]
def bytes4868 : Bytes := ("    let r00001364: u32 = r00001363 & r00000855;\n" : String).toByteArray.data.toList
theorem checked4868 : bytes4868=statementBytes 4964 (op4868.map lower) ∧ bytes4868.length=48 := by core033_kernel_decide
def op4869 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4869 : Bytes := ("    let r00001365: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4869 : bytes4869=statementBytes 4965 (op4869.map lower) ∧ bytes4869.length=41 := by core033_kernel_decide
def op4870 : List WordIR.Op := [.bxor 616 4965]
def bytes4870 : Bytes := ("    let r00001366: u32 = r00000268 ^ r00001365;\n" : String).toByteArray.data.toList
theorem checked4870 : bytes4870=statementBytes 4966 (op4870.map lower) ∧ bytes4870.length=48 := by core033_kernel_decide
def op4871 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4871 : Bytes := ("    let r00001367: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4871 : bytes4871=statementBytes 4967 (op4871.map lower) ∧ bytes4871.length=41 := by core033_kernel_decide
def op4872 : List WordIR.Op := [.bnot 4967]
def bytes4872 : Bytes := ("    let r00001368: u32 = !r00001367;\n" : String).toByteArray.data.toList
theorem checked4872 : bytes4872=statementBytes 4968 (op4872.map lower) ∧ bytes4872.length=37 := by core033_kernel_decide
def op4873 : List WordIR.Op := [.band 4966 4968]
def bytes4873 : Bytes := ("    let r00001369: u32 = r00001366 & r00001368;\n" : String).toByteArray.data.toList
theorem checked4873 : bytes4873=statementBytes 4969 (op4873.map lower) ∧ bytes4873.length=48 := by core033_kernel_decide
def op4874 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4874 : Bytes := ("    let r0000136a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4874 : bytes4874=statementBytes 4970 (op4874.map lower) ∧ bytes4874.length=41 := by core033_kernel_decide
def op4875 : List WordIR.Op := [.bxor 616 4970]
def bytes4875 : Bytes := ("    let r0000136b: u32 = r00000268 ^ r0000136a;\n" : String).toByteArray.data.toList
theorem checked4875 : bytes4875=statementBytes 4971 (op4875.map lower) ∧ bytes4875.length=48 := by core033_kernel_decide
def op4876 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4876 : Bytes := ("    let r0000136c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4876 : bytes4876=statementBytes 4972 (op4876.map lower) ∧ bytes4876.length=41 := by core033_kernel_decide
def op4877 : List WordIR.Op := [.bnot 4972]
def bytes4877 : Bytes := ("    let r0000136d: u32 = !r0000136c;\n" : String).toByteArray.data.toList
theorem checked4877 : bytes4877=statementBytes 4973 (op4877.map lower) ∧ bytes4877.length=37 := by core033_kernel_decide
def op4878 : List WordIR.Op := [.bxor 4971 4973]
def bytes4878 : Bytes := ("    let r0000136e: u32 = r0000136b ^ r0000136d;\n" : String).toByteArray.data.toList
theorem checked4878 : bytes4878=statementBytes 4974 (op4878.map lower) ∧ bytes4878.length=48 := by core033_kernel_decide
def op4879 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4879 : Bytes := ("    let r0000136f: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4879 : bytes4879=statementBytes 4975 (op4879.map lower) ∧ bytes4879.length=41 := by core033_kernel_decide
def op4880 : List WordIR.Op := [.bxor 616 4975]
def bytes4880 : Bytes := ("    let r00001370: u32 = r00000268 ^ r0000136f;\n" : String).toByteArray.data.toList
theorem checked4880 : bytes4880=statementBytes 4976 (op4880.map lower) ∧ bytes4880.length=48 := by core033_kernel_decide
def op4881 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4881 : Bytes := ("    let r00001371: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4881 : bytes4881=statementBytes 4977 (op4881.map lower) ∧ bytes4881.length=41 := by core033_kernel_decide
def op4882 : List WordIR.Op := [.bnot 4977]
def bytes4882 : Bytes := ("    let r00001372: u32 = !r00001371;\n" : String).toByteArray.data.toList
theorem checked4882 : bytes4882=statementBytes 4978 (op4882.map lower) ∧ bytes4882.length=37 := by core033_kernel_decide
def op4883 : List WordIR.Op := [.badd 4976 4978]
def bytes4883 : Bytes := ("    let r00001373: u32 = r00001370.wrapping_add(r00001372);\n" : String).toByteArray.data.toList
theorem checked4883 : bytes4883=statementBytes 4979 (op4883.map lower) ∧ bytes4883.length=60 := by core033_kernel_decide
def op4884 : List WordIR.Op := [.bnot 4979]
def bytes4884 : Bytes := ("    let r00001374: u32 = !r00001373;\n" : String).toByteArray.data.toList
theorem checked4884 : bytes4884=statementBytes 4980 (op4884.map lower) ∧ bytes4884.length=37 := by core033_kernel_decide
def op4885 : List WordIR.Op := [.band 4974 4980]
def bytes4885 : Bytes := ("    let r00001375: u32 = r0000136e & r00001374;\n" : String).toByteArray.data.toList
theorem checked4885 : bytes4885=statementBytes 4981 (op4885.map lower) ∧ bytes4885.length=48 := by core033_kernel_decide
def op4886 : List WordIR.Op := [.bxor 4969 4981]
def bytes4886 : Bytes := ("    let r00001376: u32 = r00001369 ^ r00001375;\n" : String).toByteArray.data.toList
theorem checked4886 : bytes4886=statementBytes 4982 (op4886.map lower) ∧ bytes4886.length=48 := by core033_kernel_decide
def op4887 : List WordIR.Op := [.shr 4982 31]
def bytes4887 : Bytes := ("    let r00001377: u32 = r00001376 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4887 : bytes4887=statementBytes 4983 (op4887.map lower) ∧ bytes4887.length=54 := by core033_kernel_decide
def op4888 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4888 : Bytes := ("    let r00001378: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4888 : bytes4888=statementBytes 4984 (op4888.map lower) ∧ bytes4888.length=41 := by core033_kernel_decide
def op4889 : List WordIR.Op := [.bxor 4983 4984]
def bytes4889 : Bytes := ("    let r00001379: u32 = r00001377 ^ r00001378;\n" : String).toByteArray.data.toList
theorem checked4889 : bytes4889=statementBytes 4985 (op4889.map lower) ∧ bytes4889.length=48 := by core033_kernel_decide
def op4890 : List WordIR.Op := [.bnot 4985]
def bytes4890 : Bytes := ("    let r0000137a: u32 = !r00001379;\n" : String).toByteArray.data.toList
theorem checked4890 : bytes4890=statementBytes 4986 (op4890.map lower) ∧ bytes4890.length=37 := by core033_kernel_decide
def op4891 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4891 : Bytes := ("    let r0000137b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4891 : bytes4891=statementBytes 4987 (op4891.map lower) ∧ bytes4891.length=41 := by core033_kernel_decide
def op4892 : List WordIR.Op := [.badd 4986 4987]
def bytes4892 : Bytes := ("    let r0000137c: u32 = r0000137a.wrapping_add(r0000137b);\n" : String).toByteArray.data.toList
theorem checked4892 : bytes4892=statementBytes 4988 (op4892.map lower) ∧ bytes4892.length=60 := by core033_kernel_decide
def op4893 : List WordIR.Op := [.bnot 4988]
def bytes4893 : Bytes := ("    let r0000137d: u32 = !r0000137c;\n" : String).toByteArray.data.toList
theorem checked4893 : bytes4893=statementBytes 4989 (op4893.map lower) ∧ bytes4893.length=37 := by core033_kernel_decide
def op4894 : List WordIR.Op := [.band 4989 1941]
def bytes4894 : Bytes := ("    let r0000137e: u32 = r0000137d & r00000795;\n" : String).toByteArray.data.toList
theorem checked4894 : bytes4894=statementBytes 4990 (op4894.map lower) ∧ bytes4894.length=48 := by core033_kernel_decide
def op4895 : List WordIR.Op := [.bxor 4964 4990]
def bytes4895 : Bytes := ("    let r0000137f: u32 = r00001364 ^ r0000137e;\n" : String).toByteArray.data.toList
theorem checked4895 : bytes4895=statementBytes 4991 (op4895.map lower) ∧ bytes4895.length=48 := by core033_kernel_decide
def op4896 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4896 : Bytes := ("    let r00001380: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4896 : bytes4896=statementBytes 4992 (op4896.map lower) ∧ bytes4896.length=41 := by core033_kernel_decide
def op4897 : List WordIR.Op := [.bxor 616 4992]
def bytes4897 : Bytes := ("    let r00001381: u32 = r00000268 ^ r00001380;\n" : String).toByteArray.data.toList
theorem checked4897 : bytes4897=statementBytes 4993 (op4897.map lower) ∧ bytes4897.length=48 := by core033_kernel_decide
def op4898 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4898 : Bytes := ("    let r00001382: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4898 : bytes4898=statementBytes 4994 (op4898.map lower) ∧ bytes4898.length=41 := by core033_kernel_decide
def op4899 : List WordIR.Op := [.bnot 4994]
def bytes4899 : Bytes := ("    let r00001383: u32 = !r00001382;\n" : String).toByteArray.data.toList
theorem checked4899 : bytes4899=statementBytes 4995 (op4899.map lower) ∧ bytes4899.length=37 := by core033_kernel_decide
def op4900 : List WordIR.Op := [.band 4993 4995]
def bytes4900 : Bytes := ("    let r00001384: u32 = r00001381 & r00001383;\n" : String).toByteArray.data.toList
theorem checked4900 : bytes4900=statementBytes 4996 (op4900.map lower) ∧ bytes4900.length=48 := by core033_kernel_decide
def op4901 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4901 : Bytes := ("    let r00001385: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4901 : bytes4901=statementBytes 4997 (op4901.map lower) ∧ bytes4901.length=41 := by core033_kernel_decide
def op4902 : List WordIR.Op := [.bxor 616 4997]
def bytes4902 : Bytes := ("    let r00001386: u32 = r00000268 ^ r00001385;\n" : String).toByteArray.data.toList
theorem checked4902 : bytes4902=statementBytes 4998 (op4902.map lower) ∧ bytes4902.length=48 := by core033_kernel_decide
def op4903 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4903 : Bytes := ("    let r00001387: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4903 : bytes4903=statementBytes 4999 (op4903.map lower) ∧ bytes4903.length=41 := by core033_kernel_decide
def op4904 : List WordIR.Op := [.bnot 4999]
def bytes4904 : Bytes := ("    let r00001388: u32 = !r00001387;\n" : String).toByteArray.data.toList
theorem checked4904 : bytes4904=statementBytes 5000 (op4904.map lower) ∧ bytes4904.length=37 := by core033_kernel_decide
def op4905 : List WordIR.Op := [.bxor 4998 5000]
def bytes4905 : Bytes := ("    let r00001389: u32 = r00001386 ^ r00001388;\n" : String).toByteArray.data.toList
theorem checked4905 : bytes4905=statementBytes 5001 (op4905.map lower) ∧ bytes4905.length=48 := by core033_kernel_decide
def op4906 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4906 : Bytes := ("    let r0000138a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4906 : bytes4906=statementBytes 5002 (op4906.map lower) ∧ bytes4906.length=41 := by core033_kernel_decide
def op4907 : List WordIR.Op := [.bxor 616 5002]
def bytes4907 : Bytes := ("    let r0000138b: u32 = r00000268 ^ r0000138a;\n" : String).toByteArray.data.toList
theorem checked4907 : bytes4907=statementBytes 5003 (op4907.map lower) ∧ bytes4907.length=48 := by core033_kernel_decide
def op4908 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4908 : Bytes := ("    let r0000138c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4908 : bytes4908=statementBytes 5004 (op4908.map lower) ∧ bytes4908.length=41 := by core033_kernel_decide
def op4909 : List WordIR.Op := [.bnot 5004]
def bytes4909 : Bytes := ("    let r0000138d: u32 = !r0000138c;\n" : String).toByteArray.data.toList
theorem checked4909 : bytes4909=statementBytes 5005 (op4909.map lower) ∧ bytes4909.length=37 := by core033_kernel_decide
def op4910 : List WordIR.Op := [.badd 5003 5005]
def bytes4910 : Bytes := ("    let r0000138e: u32 = r0000138b.wrapping_add(r0000138d);\n" : String).toByteArray.data.toList
theorem checked4910 : bytes4910=statementBytes 5006 (op4910.map lower) ∧ bytes4910.length=60 := by core033_kernel_decide
def op4911 : List WordIR.Op := [.bnot 5006]
def bytes4911 : Bytes := ("    let r0000138f: u32 = !r0000138e;\n" : String).toByteArray.data.toList
theorem checked4911 : bytes4911=statementBytes 5007 (op4911.map lower) ∧ bytes4911.length=37 := by core033_kernel_decide
def op4912 : List WordIR.Op := [.band 5001 5007]
def bytes4912 : Bytes := ("    let r00001390: u32 = r00001389 & r0000138f;\n" : String).toByteArray.data.toList
theorem checked4912 : bytes4912=statementBytes 5008 (op4912.map lower) ∧ bytes4912.length=48 := by core033_kernel_decide
def op4913 : List WordIR.Op := [.bxor 4996 5008]
def bytes4913 : Bytes := ("    let r00001391: u32 = r00001384 ^ r00001390;\n" : String).toByteArray.data.toList
theorem checked4913 : bytes4913=statementBytes 5009 (op4913.map lower) ∧ bytes4913.length=48 := by core033_kernel_decide
def op4914 : List WordIR.Op := [.shr 5009 31]
def bytes4914 : Bytes := ("    let r00001392: u32 = r00001391 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4914 : bytes4914=statementBytes 5010 (op4914.map lower) ∧ bytes4914.length=54 := by core033_kernel_decide
def op4915 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4915 : Bytes := ("    let r00001393: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4915 : bytes4915=statementBytes 5011 (op4915.map lower) ∧ bytes4915.length=41 := by core033_kernel_decide
def op4916 : List WordIR.Op := [.bxor 5010 5011]
def bytes4916 : Bytes := ("    let r00001394: u32 = r00001392 ^ r00001393;\n" : String).toByteArray.data.toList
theorem checked4916 : bytes4916=statementBytes 5012 (op4916.map lower) ∧ bytes4916.length=48 := by core033_kernel_decide
def op4917 : List WordIR.Op := [.bnot 5012]
def bytes4917 : Bytes := ("    let r00001395: u32 = !r00001394;\n" : String).toByteArray.data.toList
theorem checked4917 : bytes4917=statementBytes 5013 (op4917.map lower) ∧ bytes4917.length=37 := by core033_kernel_decide
def op4918 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4918 : Bytes := ("    let r00001396: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4918 : bytes4918=statementBytes 5014 (op4918.map lower) ∧ bytes4918.length=41 := by core033_kernel_decide
def op4919 : List WordIR.Op := [.badd 5013 5014]
def bytes4919 : Bytes := ("    let r00001397: u32 = r00001395.wrapping_add(r00001396);\n" : String).toByteArray.data.toList
theorem checked4919 : bytes4919=statementBytes 5015 (op4919.map lower) ∧ bytes4919.length=60 := by core033_kernel_decide
def op4920 : List WordIR.Op := [.band 5015 2136]
def bytes4920 : Bytes := ("    let r00001398: u32 = r00001397 & r00000858;\n" : String).toByteArray.data.toList
theorem checked4920 : bytes4920=statementBytes 5016 (op4920.map lower) ∧ bytes4920.length=48 := by core033_kernel_decide
def op4921 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4921 : Bytes := ("    let r00001399: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4921 : bytes4921=statementBytes 5017 (op4921.map lower) ∧ bytes4921.length=41 := by core033_kernel_decide
def op4922 : List WordIR.Op := [.bxor 616 5017]
def bytes4922 : Bytes := ("    let r0000139a: u32 = r00000268 ^ r00001399;\n" : String).toByteArray.data.toList
theorem checked4922 : bytes4922=statementBytes 5018 (op4922.map lower) ∧ bytes4922.length=48 := by core033_kernel_decide
def op4923 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4923 : Bytes := ("    let r0000139b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4923 : bytes4923=statementBytes 5019 (op4923.map lower) ∧ bytes4923.length=41 := by core033_kernel_decide
def op4924 : List WordIR.Op := [.bnot 5019]
def bytes4924 : Bytes := ("    let r0000139c: u32 = !r0000139b;\n" : String).toByteArray.data.toList
theorem checked4924 : bytes4924=statementBytes 5020 (op4924.map lower) ∧ bytes4924.length=37 := by core033_kernel_decide
def op4925 : List WordIR.Op := [.band 5018 5020]
def bytes4925 : Bytes := ("    let r0000139d: u32 = r0000139a & r0000139c;\n" : String).toByteArray.data.toList
theorem checked4925 : bytes4925=statementBytes 5021 (op4925.map lower) ∧ bytes4925.length=48 := by core033_kernel_decide
def op4926 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4926 : Bytes := ("    let r0000139e: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4926 : bytes4926=statementBytes 5022 (op4926.map lower) ∧ bytes4926.length=41 := by core033_kernel_decide
def op4927 : List WordIR.Op := [.bxor 616 5022]
def bytes4927 : Bytes := ("    let r0000139f: u32 = r00000268 ^ r0000139e;\n" : String).toByteArray.data.toList
theorem checked4927 : bytes4927=statementBytes 5023 (op4927.map lower) ∧ bytes4927.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4864,op4865,op4866,op4867,op4868,op4869,op4870,op4871,op4872,op4873,op4874,op4875,op4876,op4877,op4878,op4879,op4880,op4881,op4882,op4883,op4884,op4885,op4886,op4887,op4888,op4889,op4890,op4891,op4892,op4893,op4894,op4895,op4896,op4897,op4898,op4899,op4900,op4901,op4902,op4903,op4904,op4905,op4906,op4907,op4908,op4909,op4910,op4911,op4912,op4913,op4914,op4915,op4916,op4917,op4918,op4919,op4920,op4921,op4922,op4923,op4924,op4925,op4926,op4927]
def chunks : List Bytes := [bytes4864,bytes4865,bytes4866,bytes4867,bytes4868,bytes4869,bytes4870,bytes4871,bytes4872,bytes4873,bytes4874,bytes4875,bytes4876,bytes4877,bytes4878,bytes4879,bytes4880,bytes4881,bytes4882,bytes4883,bytes4884,bytes4885,bytes4886,bytes4887,bytes4888,bytes4889,bytes4890,bytes4891,bytes4892,bytes4893,bytes4894,bytes4895,bytes4896,bytes4897,bytes4898,bytes4899,bytes4900,bytes4901,bytes4902,bytes4903,bytes4904,bytes4905,bytes4906,bytes4907,bytes4908,bytes4909,bytes4910,bytes4911,bytes4912,bytes4913,bytes4914,bytes4915,bytes4916,bytes4917,bytes4918,bytes4919,bytes4920,bytes4921,bytes4922,bytes4923,bytes4924,bytes4925,bytes4926,bytes4927]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4960 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4864.1 (.cons _ _ _ _ _ checked4865.1 (.cons _ _ _ _ _ checked4866.1 (.cons _ _ _ _ _ checked4867.1 (.cons _ _ _ _ _ checked4868.1 (.cons _ _ _ _ _ checked4869.1 (.cons _ _ _ _ _ checked4870.1 (.cons _ _ _ _ _ checked4871.1 (.cons _ _ _ _ _ checked4872.1 (.cons _ _ _ _ _ checked4873.1 (.cons _ _ _ _ _ checked4874.1 (.cons _ _ _ _ _ checked4875.1 (.cons _ _ _ _ _ checked4876.1 (.cons _ _ _ _ _ checked4877.1 (.cons _ _ _ _ _ checked4878.1 (.cons _ _ _ _ _ checked4879.1 (.cons _ _ _ _ _ checked4880.1 (.cons _ _ _ _ _ checked4881.1 (.cons _ _ _ _ _ checked4882.1 (.cons _ _ _ _ _ checked4883.1 (.cons _ _ _ _ _ checked4884.1 (.cons _ _ _ _ _ checked4885.1 (.cons _ _ _ _ _ checked4886.1 (.cons _ _ _ _ _ checked4887.1 (.cons _ _ _ _ _ checked4888.1 (.cons _ _ _ _ _ checked4889.1 (.cons _ _ _ _ _ checked4890.1 (.cons _ _ _ _ _ checked4891.1 (.cons _ _ _ _ _ checked4892.1 (.cons _ _ _ _ _ checked4893.1 (.cons _ _ _ _ _ checked4894.1 (.cons _ _ _ _ _ checked4895.1 (.cons _ _ _ _ _ checked4896.1 (.cons _ _ _ _ _ checked4897.1 (.cons _ _ _ _ _ checked4898.1 (.cons _ _ _ _ _ checked4899.1 (.cons _ _ _ _ _ checked4900.1 (.cons _ _ _ _ _ checked4901.1 (.cons _ _ _ _ _ checked4902.1 (.cons _ _ _ _ _ checked4903.1 (.cons _ _ _ _ _ checked4904.1 (.cons _ _ _ _ _ checked4905.1 (.cons _ _ _ _ _ checked4906.1 (.cons _ _ _ _ _ checked4907.1 (.cons _ _ _ _ _ checked4908.1 (.cons _ _ _ _ _ checked4909.1 (.cons _ _ _ _ _ checked4910.1 (.cons _ _ _ _ _ checked4911.1 (.cons _ _ _ _ _ checked4912.1 (.cons _ _ _ _ _ checked4913.1 (.cons _ _ _ _ _ checked4914.1 (.cons _ _ _ _ _ checked4915.1 (.cons _ _ _ _ _ checked4916.1 (.cons _ _ _ _ _ checked4917.1 (.cons _ _ _ _ _ checked4918.1 (.cons _ _ _ _ _ checked4919.1 (.cons _ _ _ _ _ checked4920.1 (.cons _ _ _ _ _ checked4921.1 (.cons _ _ _ _ _ checked4922.1 (.cons _ _ _ _ _ checked4923.1 (.cons _ _ _ _ _ checked4924.1 (.cons _ _ _ _ _ checked4925.1 (.cons _ _ _ _ _ checked4926.1 (.cons _ _ _ _ _ checked4927.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4960 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2861 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4864.2,checked4865.2,checked4866.2,checked4867.2,checked4868.2,checked4869.2,checked4870.2,checked4871.2,checked4872.2,checked4873.2,checked4874.2,checked4875.2,checked4876.2,checked4877.2,checked4878.2,checked4879.2,checked4880.2,checked4881.2,checked4882.2,checked4883.2,checked4884.2,checked4885.2,checked4886.2,checked4887.2,checked4888.2,checked4889.2,checked4890.2,checked4891.2,checked4892.2,checked4893.2,checked4894.2,checked4895.2,checked4896.2,checked4897.2,checked4898.2,checked4899.2,checked4900.2,checked4901.2,checked4902.2,checked4903.2,checked4904.2,checked4905.2,checked4906.2,checked4907.2,checked4908.2,checked4909.2,checked4910.2,checked4911.2,checked4912.2,checked4913.2,checked4914.2,checked4915.2,checked4916.2,checked4917.2,checked4918.2,checked4919.2,checked4920.2,checked4921.2,checked4922.2,checked4923.2,checked4924.2,checked4925.2,checked4926.2,checked4927.2]
  decide
end ArtifactPairedPathRoundGroup76
