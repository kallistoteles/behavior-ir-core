import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup76
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4864 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4864 : Bytes := ("    let r00001376: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4864 : bytes4864=statementBytes 4982 (op4864.map lower) ∧ bytes4864.length=41 := by core033_kernel_decide
def op4865 : List WordIR.Op := [.bxor 1299 4982]
def bytes4865 : Bytes := ("    let r00001377: u32 = r00000513 ^ r00001376;\n" : String).toByteArray.data.toList
theorem checked4865 : bytes4865=statementBytes 4983 (op4865.map lower) ∧ bytes4865.length=48 := by core033_kernel_decide
def op4866 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4866 : Bytes := ("    let r00001378: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4866 : bytes4866=statementBytes 4984 (op4866.map lower) ∧ bytes4866.length=41 := by core033_kernel_decide
def op4867 : List WordIR.Op := [.bnot 4984]
def bytes4867 : Bytes := ("    let r00001379: u32 = !r00001378;\n" : String).toByteArray.data.toList
theorem checked4867 : bytes4867=statementBytes 4985 (op4867.map lower) ∧ bytes4867.length=37 := by core033_kernel_decide
def op4868 : List WordIR.Op := [.badd 4983 4985]
def bytes4868 : Bytes := ("    let r0000137a: u32 = r00001377.wrapping_add(r00001379);\n" : String).toByteArray.data.toList
theorem checked4868 : bytes4868=statementBytes 4986 (op4868.map lower) ∧ bytes4868.length=60 := by core033_kernel_decide
def op4869 : List WordIR.Op := [.bnot 4986]
def bytes4869 : Bytes := ("    let r0000137b: u32 = !r0000137a;\n" : String).toByteArray.data.toList
theorem checked4869 : bytes4869=statementBytes 4987 (op4869.map lower) ∧ bytes4869.length=37 := by core033_kernel_decide
def op4870 : List WordIR.Op := [.band 4981 4987]
def bytes4870 : Bytes := ("    let r0000137c: u32 = r00001375 & r0000137b;\n" : String).toByteArray.data.toList
theorem checked4870 : bytes4870=statementBytes 4988 (op4870.map lower) ∧ bytes4870.length=48 := by core033_kernel_decide
def op4871 : List WordIR.Op := [.bxor 4976 4988]
def bytes4871 : Bytes := ("    let r0000137d: u32 = r00001370 ^ r0000137c;\n" : String).toByteArray.data.toList
theorem checked4871 : bytes4871=statementBytes 4989 (op4871.map lower) ∧ bytes4871.length=48 := by core033_kernel_decide
def op4872 : List WordIR.Op := [.shr 4989 31]
def bytes4872 : Bytes := ("    let r0000137e: u32 = r0000137d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4872 : bytes4872=statementBytes 4990 (op4872.map lower) ∧ bytes4872.length=54 := by core033_kernel_decide
def op4873 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4873 : Bytes := ("    let r0000137f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4873 : bytes4873=statementBytes 4991 (op4873.map lower) ∧ bytes4873.length=41 := by core033_kernel_decide
def op4874 : List WordIR.Op := [.bxor 4990 4991]
def bytes4874 : Bytes := ("    let r00001380: u32 = r0000137e ^ r0000137f;\n" : String).toByteArray.data.toList
theorem checked4874 : bytes4874=statementBytes 4992 (op4874.map lower) ∧ bytes4874.length=48 := by core033_kernel_decide
def op4875 : List WordIR.Op := [.bnot 4992]
def bytes4875 : Bytes := ("    let r00001381: u32 = !r00001380;\n" : String).toByteArray.data.toList
theorem checked4875 : bytes4875=statementBytes 4993 (op4875.map lower) ∧ bytes4875.length=37 := by core033_kernel_decide
def op4876 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4876 : Bytes := ("    let r00001382: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4876 : bytes4876=statementBytes 4994 (op4876.map lower) ∧ bytes4876.length=41 := by core033_kernel_decide
def op4877 : List WordIR.Op := [.badd 4993 4994]
def bytes4877 : Bytes := ("    let r00001383: u32 = r00001381.wrapping_add(r00001382);\n" : String).toByteArray.data.toList
theorem checked4877 : bytes4877=statementBytes 4995 (op4877.map lower) ∧ bytes4877.length=60 := by core033_kernel_decide
def op4878 : List WordIR.Op := [.bnot 4995]
def bytes4878 : Bytes := ("    let r00001384: u32 = !r00001383;\n" : String).toByteArray.data.toList
theorem checked4878 : bytes4878=statementBytes 4996 (op4878.map lower) ∧ bytes4878.length=37 := by core033_kernel_decide
def op4879 : List WordIR.Op := [.band 4996 2585]
def bytes4879 : Bytes := ("    let r00001385: u32 = r00001384 & r00000a19;\n" : String).toByteArray.data.toList
theorem checked4879 : bytes4879=statementBytes 4997 (op4879.map lower) ∧ bytes4879.length=48 := by core033_kernel_decide
def op4880 : List WordIR.Op := [.bxor 4971 4997]
def bytes4880 : Bytes := ("    let r00001386: u32 = r0000136b ^ r00001385;\n" : String).toByteArray.data.toList
theorem checked4880 : bytes4880=statementBytes 4998 (op4880.map lower) ∧ bytes4880.length=48 := by core033_kernel_decide
def op4881 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4881 : Bytes := ("    let r00001387: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4881 : bytes4881=statementBytes 4999 (op4881.map lower) ∧ bytes4881.length=41 := by core033_kernel_decide
def op4882 : List WordIR.Op := [.bxor 1299 4999]
def bytes4882 : Bytes := ("    let r00001388: u32 = r00000513 ^ r00001387;\n" : String).toByteArray.data.toList
theorem checked4882 : bytes4882=statementBytes 5000 (op4882.map lower) ∧ bytes4882.length=48 := by core033_kernel_decide
def op4883 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4883 : Bytes := ("    let r00001389: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4883 : bytes4883=statementBytes 5001 (op4883.map lower) ∧ bytes4883.length=41 := by core033_kernel_decide
def op4884 : List WordIR.Op := [.bnot 5001]
def bytes4884 : Bytes := ("    let r0000138a: u32 = !r00001389;\n" : String).toByteArray.data.toList
theorem checked4884 : bytes4884=statementBytes 5002 (op4884.map lower) ∧ bytes4884.length=37 := by core033_kernel_decide
def op4885 : List WordIR.Op := [.band 5000 5002]
def bytes4885 : Bytes := ("    let r0000138b: u32 = r00001388 & r0000138a;\n" : String).toByteArray.data.toList
theorem checked4885 : bytes4885=statementBytes 5003 (op4885.map lower) ∧ bytes4885.length=48 := by core033_kernel_decide
def op4886 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4886 : Bytes := ("    let r0000138c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4886 : bytes4886=statementBytes 5004 (op4886.map lower) ∧ bytes4886.length=41 := by core033_kernel_decide
def op4887 : List WordIR.Op := [.bxor 1299 5004]
def bytes4887 : Bytes := ("    let r0000138d: u32 = r00000513 ^ r0000138c;\n" : String).toByteArray.data.toList
theorem checked4887 : bytes4887=statementBytes 5005 (op4887.map lower) ∧ bytes4887.length=48 := by core033_kernel_decide
def op4888 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4888 : Bytes := ("    let r0000138e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4888 : bytes4888=statementBytes 5006 (op4888.map lower) ∧ bytes4888.length=41 := by core033_kernel_decide
def op4889 : List WordIR.Op := [.bnot 5006]
def bytes4889 : Bytes := ("    let r0000138f: u32 = !r0000138e;\n" : String).toByteArray.data.toList
theorem checked4889 : bytes4889=statementBytes 5007 (op4889.map lower) ∧ bytes4889.length=37 := by core033_kernel_decide
def op4890 : List WordIR.Op := [.bxor 5005 5007]
def bytes4890 : Bytes := ("    let r00001390: u32 = r0000138d ^ r0000138f;\n" : String).toByteArray.data.toList
theorem checked4890 : bytes4890=statementBytes 5008 (op4890.map lower) ∧ bytes4890.length=48 := by core033_kernel_decide
def op4891 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4891 : Bytes := ("    let r00001391: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4891 : bytes4891=statementBytes 5009 (op4891.map lower) ∧ bytes4891.length=41 := by core033_kernel_decide
def op4892 : List WordIR.Op := [.bxor 1299 5009]
def bytes4892 : Bytes := ("    let r00001392: u32 = r00000513 ^ r00001391;\n" : String).toByteArray.data.toList
theorem checked4892 : bytes4892=statementBytes 5010 (op4892.map lower) ∧ bytes4892.length=48 := by core033_kernel_decide
def op4893 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4893 : Bytes := ("    let r00001393: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4893 : bytes4893=statementBytes 5011 (op4893.map lower) ∧ bytes4893.length=41 := by core033_kernel_decide
def op4894 : List WordIR.Op := [.bnot 5011]
def bytes4894 : Bytes := ("    let r00001394: u32 = !r00001393;\n" : String).toByteArray.data.toList
theorem checked4894 : bytes4894=statementBytes 5012 (op4894.map lower) ∧ bytes4894.length=37 := by core033_kernel_decide
def op4895 : List WordIR.Op := [.badd 5010 5012]
def bytes4895 : Bytes := ("    let r00001395: u32 = r00001392.wrapping_add(r00001394);\n" : String).toByteArray.data.toList
theorem checked4895 : bytes4895=statementBytes 5013 (op4895.map lower) ∧ bytes4895.length=60 := by core033_kernel_decide
def op4896 : List WordIR.Op := [.bnot 5013]
def bytes4896 : Bytes := ("    let r00001396: u32 = !r00001395;\n" : String).toByteArray.data.toList
theorem checked4896 : bytes4896=statementBytes 5014 (op4896.map lower) ∧ bytes4896.length=37 := by core033_kernel_decide
def op4897 : List WordIR.Op := [.band 5008 5014]
def bytes4897 : Bytes := ("    let r00001397: u32 = r00001390 & r00001396;\n" : String).toByteArray.data.toList
theorem checked4897 : bytes4897=statementBytes 5015 (op4897.map lower) ∧ bytes4897.length=48 := by core033_kernel_decide
def op4898 : List WordIR.Op := [.bxor 5003 5015]
def bytes4898 : Bytes := ("    let r00001398: u32 = r0000138b ^ r00001397;\n" : String).toByteArray.data.toList
theorem checked4898 : bytes4898=statementBytes 5016 (op4898.map lower) ∧ bytes4898.length=48 := by core033_kernel_decide
def op4899 : List WordIR.Op := [.shr 5016 31]
def bytes4899 : Bytes := ("    let r00001399: u32 = r00001398 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4899 : bytes4899=statementBytes 5017 (op4899.map lower) ∧ bytes4899.length=54 := by core033_kernel_decide
def op4900 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4900 : Bytes := ("    let r0000139a: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4900 : bytes4900=statementBytes 5018 (op4900.map lower) ∧ bytes4900.length=41 := by core033_kernel_decide
def op4901 : List WordIR.Op := [.bxor 5017 5018]
def bytes4901 : Bytes := ("    let r0000139b: u32 = r00001399 ^ r0000139a;\n" : String).toByteArray.data.toList
theorem checked4901 : bytes4901=statementBytes 5019 (op4901.map lower) ∧ bytes4901.length=48 := by core033_kernel_decide
def op4902 : List WordIR.Op := [.bnot 5019]
def bytes4902 : Bytes := ("    let r0000139c: u32 = !r0000139b;\n" : String).toByteArray.data.toList
theorem checked4902 : bytes4902=statementBytes 5020 (op4902.map lower) ∧ bytes4902.length=37 := by core033_kernel_decide
def op4903 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4903 : Bytes := ("    let r0000139d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4903 : bytes4903=statementBytes 5021 (op4903.map lower) ∧ bytes4903.length=41 := by core033_kernel_decide
def op4904 : List WordIR.Op := [.badd 5020 5021]
def bytes4904 : Bytes := ("    let r0000139e: u32 = r0000139c.wrapping_add(r0000139d);\n" : String).toByteArray.data.toList
theorem checked4904 : bytes4904=statementBytes 5022 (op4904.map lower) ∧ bytes4904.length=60 := by core033_kernel_decide
def op4905 : List WordIR.Op := [.band 5022 2780]
def bytes4905 : Bytes := ("    let r0000139f: u32 = r0000139e & r00000adc;\n" : String).toByteArray.data.toList
theorem checked4905 : bytes4905=statementBytes 5023 (op4905.map lower) ∧ bytes4905.length=48 := by core033_kernel_decide
def op4906 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4906 : Bytes := ("    let r000013a0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4906 : bytes4906=statementBytes 5024 (op4906.map lower) ∧ bytes4906.length=41 := by core033_kernel_decide
def op4907 : List WordIR.Op := [.bxor 1299 5024]
def bytes4907 : Bytes := ("    let r000013a1: u32 = r00000513 ^ r000013a0;\n" : String).toByteArray.data.toList
theorem checked4907 : bytes4907=statementBytes 5025 (op4907.map lower) ∧ bytes4907.length=48 := by core033_kernel_decide
def op4908 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4908 : Bytes := ("    let r000013a2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4908 : bytes4908=statementBytes 5026 (op4908.map lower) ∧ bytes4908.length=41 := by core033_kernel_decide
def op4909 : List WordIR.Op := [.bnot 5026]
def bytes4909 : Bytes := ("    let r000013a3: u32 = !r000013a2;\n" : String).toByteArray.data.toList
theorem checked4909 : bytes4909=statementBytes 5027 (op4909.map lower) ∧ bytes4909.length=37 := by core033_kernel_decide
def op4910 : List WordIR.Op := [.band 5025 5027]
def bytes4910 : Bytes := ("    let r000013a4: u32 = r000013a1 & r000013a3;\n" : String).toByteArray.data.toList
theorem checked4910 : bytes4910=statementBytes 5028 (op4910.map lower) ∧ bytes4910.length=48 := by core033_kernel_decide
def op4911 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4911 : Bytes := ("    let r000013a5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4911 : bytes4911=statementBytes 5029 (op4911.map lower) ∧ bytes4911.length=41 := by core033_kernel_decide
def op4912 : List WordIR.Op := [.bxor 1299 5029]
def bytes4912 : Bytes := ("    let r000013a6: u32 = r00000513 ^ r000013a5;\n" : String).toByteArray.data.toList
theorem checked4912 : bytes4912=statementBytes 5030 (op4912.map lower) ∧ bytes4912.length=48 := by core033_kernel_decide
def op4913 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4913 : Bytes := ("    let r000013a7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4913 : bytes4913=statementBytes 5031 (op4913.map lower) ∧ bytes4913.length=41 := by core033_kernel_decide
def op4914 : List WordIR.Op := [.bnot 5031]
def bytes4914 : Bytes := ("    let r000013a8: u32 = !r000013a7;\n" : String).toByteArray.data.toList
theorem checked4914 : bytes4914=statementBytes 5032 (op4914.map lower) ∧ bytes4914.length=37 := by core033_kernel_decide
def op4915 : List WordIR.Op := [.bxor 5030 5032]
def bytes4915 : Bytes := ("    let r000013a9: u32 = r000013a6 ^ r000013a8;\n" : String).toByteArray.data.toList
theorem checked4915 : bytes4915=statementBytes 5033 (op4915.map lower) ∧ bytes4915.length=48 := by core033_kernel_decide
def op4916 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4916 : Bytes := ("    let r000013aa: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4916 : bytes4916=statementBytes 5034 (op4916.map lower) ∧ bytes4916.length=41 := by core033_kernel_decide
def op4917 : List WordIR.Op := [.bxor 1299 5034]
def bytes4917 : Bytes := ("    let r000013ab: u32 = r00000513 ^ r000013aa;\n" : String).toByteArray.data.toList
theorem checked4917 : bytes4917=statementBytes 5035 (op4917.map lower) ∧ bytes4917.length=48 := by core033_kernel_decide
def op4918 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4918 : Bytes := ("    let r000013ac: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4918 : bytes4918=statementBytes 5036 (op4918.map lower) ∧ bytes4918.length=41 := by core033_kernel_decide
def op4919 : List WordIR.Op := [.bnot 5036]
def bytes4919 : Bytes := ("    let r000013ad: u32 = !r000013ac;\n" : String).toByteArray.data.toList
theorem checked4919 : bytes4919=statementBytes 5037 (op4919.map lower) ∧ bytes4919.length=37 := by core033_kernel_decide
def op4920 : List WordIR.Op := [.badd 5035 5037]
def bytes4920 : Bytes := ("    let r000013ae: u32 = r000013ab.wrapping_add(r000013ad);\n" : String).toByteArray.data.toList
theorem checked4920 : bytes4920=statementBytes 5038 (op4920.map lower) ∧ bytes4920.length=60 := by core033_kernel_decide
def op4921 : List WordIR.Op := [.bnot 5038]
def bytes4921 : Bytes := ("    let r000013af: u32 = !r000013ae;\n" : String).toByteArray.data.toList
theorem checked4921 : bytes4921=statementBytes 5039 (op4921.map lower) ∧ bytes4921.length=37 := by core033_kernel_decide
def op4922 : List WordIR.Op := [.band 5033 5039]
def bytes4922 : Bytes := ("    let r000013b0: u32 = r000013a9 & r000013af;\n" : String).toByteArray.data.toList
theorem checked4922 : bytes4922=statementBytes 5040 (op4922.map lower) ∧ bytes4922.length=48 := by core033_kernel_decide
def op4923 : List WordIR.Op := [.bxor 5028 5040]
def bytes4923 : Bytes := ("    let r000013b1: u32 = r000013a4 ^ r000013b0;\n" : String).toByteArray.data.toList
theorem checked4923 : bytes4923=statementBytes 5041 (op4923.map lower) ∧ bytes4923.length=48 := by core033_kernel_decide
def op4924 : List WordIR.Op := [.shr 5041 31]
def bytes4924 : Bytes := ("    let r000013b2: u32 = r000013b1 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4924 : bytes4924=statementBytes 5042 (op4924.map lower) ∧ bytes4924.length=54 := by core033_kernel_decide
def op4925 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4925 : Bytes := ("    let r000013b3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4925 : bytes4925=statementBytes 5043 (op4925.map lower) ∧ bytes4925.length=41 := by core033_kernel_decide
def op4926 : List WordIR.Op := [.bxor 5042 5043]
def bytes4926 : Bytes := ("    let r000013b4: u32 = r000013b2 ^ r000013b3;\n" : String).toByteArray.data.toList
theorem checked4926 : bytes4926=statementBytes 5044 (op4926.map lower) ∧ bytes4926.length=48 := by core033_kernel_decide
def op4927 : List WordIR.Op := [.bnot 5044]
def bytes4927 : Bytes := ("    let r000013b5: u32 = !r000013b4;\n" : String).toByteArray.data.toList
theorem checked4927 : bytes4927=statementBytes 5045 (op4927.map lower) ∧ bytes4927.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4864,op4865,op4866,op4867,op4868,op4869,op4870,op4871,op4872,op4873,op4874,op4875,op4876,op4877,op4878,op4879,op4880,op4881,op4882,op4883,op4884,op4885,op4886,op4887,op4888,op4889,op4890,op4891,op4892,op4893,op4894,op4895,op4896,op4897,op4898,op4899,op4900,op4901,op4902,op4903,op4904,op4905,op4906,op4907,op4908,op4909,op4910,op4911,op4912,op4913,op4914,op4915,op4916,op4917,op4918,op4919,op4920,op4921,op4922,op4923,op4924,op4925,op4926,op4927]
def chunks : List Bytes := [bytes4864,bytes4865,bytes4866,bytes4867,bytes4868,bytes4869,bytes4870,bytes4871,bytes4872,bytes4873,bytes4874,bytes4875,bytes4876,bytes4877,bytes4878,bytes4879,bytes4880,bytes4881,bytes4882,bytes4883,bytes4884,bytes4885,bytes4886,bytes4887,bytes4888,bytes4889,bytes4890,bytes4891,bytes4892,bytes4893,bytes4894,bytes4895,bytes4896,bytes4897,bytes4898,bytes4899,bytes4900,bytes4901,bytes4902,bytes4903,bytes4904,bytes4905,bytes4906,bytes4907,bytes4908,bytes4909,bytes4910,bytes4911,bytes4912,bytes4913,bytes4914,bytes4915,bytes4916,bytes4917,bytes4918,bytes4919,bytes4920,bytes4921,bytes4922,bytes4923,bytes4924,bytes4925,bytes4926,bytes4927]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4982 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4864.1 (.cons _ _ _ _ _ checked4865.1 (.cons _ _ _ _ _ checked4866.1 (.cons _ _ _ _ _ checked4867.1 (.cons _ _ _ _ _ checked4868.1 (.cons _ _ _ _ _ checked4869.1 (.cons _ _ _ _ _ checked4870.1 (.cons _ _ _ _ _ checked4871.1 (.cons _ _ _ _ _ checked4872.1 (.cons _ _ _ _ _ checked4873.1 (.cons _ _ _ _ _ checked4874.1 (.cons _ _ _ _ _ checked4875.1 (.cons _ _ _ _ _ checked4876.1 (.cons _ _ _ _ _ checked4877.1 (.cons _ _ _ _ _ checked4878.1 (.cons _ _ _ _ _ checked4879.1 (.cons _ _ _ _ _ checked4880.1 (.cons _ _ _ _ _ checked4881.1 (.cons _ _ _ _ _ checked4882.1 (.cons _ _ _ _ _ checked4883.1 (.cons _ _ _ _ _ checked4884.1 (.cons _ _ _ _ _ checked4885.1 (.cons _ _ _ _ _ checked4886.1 (.cons _ _ _ _ _ checked4887.1 (.cons _ _ _ _ _ checked4888.1 (.cons _ _ _ _ _ checked4889.1 (.cons _ _ _ _ _ checked4890.1 (.cons _ _ _ _ _ checked4891.1 (.cons _ _ _ _ _ checked4892.1 (.cons _ _ _ _ _ checked4893.1 (.cons _ _ _ _ _ checked4894.1 (.cons _ _ _ _ _ checked4895.1 (.cons _ _ _ _ _ checked4896.1 (.cons _ _ _ _ _ checked4897.1 (.cons _ _ _ _ _ checked4898.1 (.cons _ _ _ _ _ checked4899.1 (.cons _ _ _ _ _ checked4900.1 (.cons _ _ _ _ _ checked4901.1 (.cons _ _ _ _ _ checked4902.1 (.cons _ _ _ _ _ checked4903.1 (.cons _ _ _ _ _ checked4904.1 (.cons _ _ _ _ _ checked4905.1 (.cons _ _ _ _ _ checked4906.1 (.cons _ _ _ _ _ checked4907.1 (.cons _ _ _ _ _ checked4908.1 (.cons _ _ _ _ _ checked4909.1 (.cons _ _ _ _ _ checked4910.1 (.cons _ _ _ _ _ checked4911.1 (.cons _ _ _ _ _ checked4912.1 (.cons _ _ _ _ _ checked4913.1 (.cons _ _ _ _ _ checked4914.1 (.cons _ _ _ _ _ checked4915.1 (.cons _ _ _ _ _ checked4916.1 (.cons _ _ _ _ _ checked4917.1 (.cons _ _ _ _ _ checked4918.1 (.cons _ _ _ _ _ checked4919.1 (.cons _ _ _ _ _ checked4920.1 (.cons _ _ _ _ _ checked4921.1 (.cons _ _ _ _ _ checked4922.1 (.cons _ _ _ _ _ checked4923.1 (.cons _ _ _ _ _ checked4924.1 (.cons _ _ _ _ _ checked4925.1 (.cons _ _ _ _ _ checked4926.1 (.cons _ _ _ _ _ checked4927.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4982 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4864.2,checked4865.2,checked4866.2,checked4867.2,checked4868.2,checked4869.2,checked4870.2,checked4871.2,checked4872.2,checked4873.2,checked4874.2,checked4875.2,checked4876.2,checked4877.2,checked4878.2,checked4879.2,checked4880.2,checked4881.2,checked4882.2,checked4883.2,checked4884.2,checked4885.2,checked4886.2,checked4887.2,checked4888.2,checked4889.2,checked4890.2,checked4891.2,checked4892.2,checked4893.2,checked4894.2,checked4895.2,checked4896.2,checked4897.2,checked4898.2,checked4899.2,checked4900.2,checked4901.2,checked4902.2,checked4903.2,checked4904.2,checked4905.2,checked4906.2,checked4907.2,checked4908.2,checked4909.2,checked4910.2,checked4911.2,checked4912.2,checked4913.2,checked4914.2,checked4915.2,checked4916.2,checked4917.2,checked4918.2,checked4919.2,checked4920.2,checked4921.2,checked4922.2,checked4923.2,checked4924.2,checked4925.2,checked4926.2,checked4927.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup76
