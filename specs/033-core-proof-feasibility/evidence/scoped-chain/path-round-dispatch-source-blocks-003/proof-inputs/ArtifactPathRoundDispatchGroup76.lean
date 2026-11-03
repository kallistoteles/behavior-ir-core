import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup76
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4864 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4864 : Bytes := ("    let r0000132b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4864 : bytes4864=statementBytes 4907 (op4864.map lower) ∧ bytes4864.length=41 := by core033_kernel_decide
def op4865 : List WordIR.Op := [.bxor 4906 4907]
def bytes4865 : Bytes := ("    let r0000132c: u32 = r0000132a ^ r0000132b;\n" : String).toByteArray.data.toList
theorem checked4865 : bytes4865=statementBytes 4908 (op4865.map lower) ∧ bytes4865.length=48 := by core033_kernel_decide
def op4866 : List WordIR.Op := [.bnot 4908]
def bytes4866 : Bytes := ("    let r0000132d: u32 = !r0000132c;\n" : String).toByteArray.data.toList
theorem checked4866 : bytes4866=statementBytes 4909 (op4866.map lower) ∧ bytes4866.length=37 := by core033_kernel_decide
def op4867 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4867 : Bytes := ("    let r0000132e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4867 : bytes4867=statementBytes 4910 (op4867.map lower) ∧ bytes4867.length=41 := by core033_kernel_decide
def op4868 : List WordIR.Op := [.badd 4909 4910]
def bytes4868 : Bytes := ("    let r0000132f: u32 = r0000132d.wrapping_add(r0000132e);\n" : String).toByteArray.data.toList
theorem checked4868 : bytes4868=statementBytes 4911 (op4868.map lower) ∧ bytes4868.length=60 := by core033_kernel_decide
def op4869 : List WordIR.Op := [.band 4911 1640]
def bytes4869 : Bytes := ("    let r00001330: u32 = r0000132f & r00000668;\n" : String).toByteArray.data.toList
theorem checked4869 : bytes4869=statementBytes 4912 (op4869.map lower) ∧ bytes4869.length=48 := by core033_kernel_decide
def op4870 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4870 : Bytes := ("    let r00001331: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4870 : bytes4870=statementBytes 4913 (op4870.map lower) ∧ bytes4870.length=41 := by core033_kernel_decide
def op4871 : List WordIR.Op := [.bxor 96 4913]
def bytes4871 : Bytes := ("    let r00001332: u32 = r00000060 ^ r00001331;\n" : String).toByteArray.data.toList
theorem checked4871 : bytes4871=statementBytes 4914 (op4871.map lower) ∧ bytes4871.length=48 := by core033_kernel_decide
def op4872 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4872 : Bytes := ("    let r00001333: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4872 : bytes4872=statementBytes 4915 (op4872.map lower) ∧ bytes4872.length=41 := by core033_kernel_decide
def op4873 : List WordIR.Op := [.bnot 4915]
def bytes4873 : Bytes := ("    let r00001334: u32 = !r00001333;\n" : String).toByteArray.data.toList
theorem checked4873 : bytes4873=statementBytes 4916 (op4873.map lower) ∧ bytes4873.length=37 := by core033_kernel_decide
def op4874 : List WordIR.Op := [.band 4914 4916]
def bytes4874 : Bytes := ("    let r00001335: u32 = r00001332 & r00001334;\n" : String).toByteArray.data.toList
theorem checked4874 : bytes4874=statementBytes 4917 (op4874.map lower) ∧ bytes4874.length=48 := by core033_kernel_decide
def op4875 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4875 : Bytes := ("    let r00001336: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4875 : bytes4875=statementBytes 4918 (op4875.map lower) ∧ bytes4875.length=41 := by core033_kernel_decide
def op4876 : List WordIR.Op := [.bxor 96 4918]
def bytes4876 : Bytes := ("    let r00001337: u32 = r00000060 ^ r00001336;\n" : String).toByteArray.data.toList
theorem checked4876 : bytes4876=statementBytes 4919 (op4876.map lower) ∧ bytes4876.length=48 := by core033_kernel_decide
def op4877 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4877 : Bytes := ("    let r00001338: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4877 : bytes4877=statementBytes 4920 (op4877.map lower) ∧ bytes4877.length=41 := by core033_kernel_decide
def op4878 : List WordIR.Op := [.bnot 4920]
def bytes4878 : Bytes := ("    let r00001339: u32 = !r00001338;\n" : String).toByteArray.data.toList
theorem checked4878 : bytes4878=statementBytes 4921 (op4878.map lower) ∧ bytes4878.length=37 := by core033_kernel_decide
def op4879 : List WordIR.Op := [.bxor 4919 4921]
def bytes4879 : Bytes := ("    let r0000133a: u32 = r00001337 ^ r00001339;\n" : String).toByteArray.data.toList
theorem checked4879 : bytes4879=statementBytes 4922 (op4879.map lower) ∧ bytes4879.length=48 := by core033_kernel_decide
def op4880 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4880 : Bytes := ("    let r0000133b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4880 : bytes4880=statementBytes 4923 (op4880.map lower) ∧ bytes4880.length=41 := by core033_kernel_decide
def op4881 : List WordIR.Op := [.bxor 96 4923]
def bytes4881 : Bytes := ("    let r0000133c: u32 = r00000060 ^ r0000133b;\n" : String).toByteArray.data.toList
theorem checked4881 : bytes4881=statementBytes 4924 (op4881.map lower) ∧ bytes4881.length=48 := by core033_kernel_decide
def op4882 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4882 : Bytes := ("    let r0000133d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4882 : bytes4882=statementBytes 4925 (op4882.map lower) ∧ bytes4882.length=41 := by core033_kernel_decide
def op4883 : List WordIR.Op := [.bnot 4925]
def bytes4883 : Bytes := ("    let r0000133e: u32 = !r0000133d;\n" : String).toByteArray.data.toList
theorem checked4883 : bytes4883=statementBytes 4926 (op4883.map lower) ∧ bytes4883.length=37 := by core033_kernel_decide
def op4884 : List WordIR.Op := [.badd 4924 4926]
def bytes4884 : Bytes := ("    let r0000133f: u32 = r0000133c.wrapping_add(r0000133e);\n" : String).toByteArray.data.toList
theorem checked4884 : bytes4884=statementBytes 4927 (op4884.map lower) ∧ bytes4884.length=60 := by core033_kernel_decide
def op4885 : List WordIR.Op := [.bnot 4927]
def bytes4885 : Bytes := ("    let r00001340: u32 = !r0000133f;\n" : String).toByteArray.data.toList
theorem checked4885 : bytes4885=statementBytes 4928 (op4885.map lower) ∧ bytes4885.length=37 := by core033_kernel_decide
def op4886 : List WordIR.Op := [.band 4922 4928]
def bytes4886 : Bytes := ("    let r00001341: u32 = r0000133a & r00001340;\n" : String).toByteArray.data.toList
theorem checked4886 : bytes4886=statementBytes 4929 (op4886.map lower) ∧ bytes4886.length=48 := by core033_kernel_decide
def op4887 : List WordIR.Op := [.bxor 4917 4929]
def bytes4887 : Bytes := ("    let r00001342: u32 = r00001335 ^ r00001341;\n" : String).toByteArray.data.toList
theorem checked4887 : bytes4887=statementBytes 4930 (op4887.map lower) ∧ bytes4887.length=48 := by core033_kernel_decide
def op4888 : List WordIR.Op := [.shr 4930 31]
def bytes4888 : Bytes := ("    let r00001343: u32 = r00001342 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4888 : bytes4888=statementBytes 4931 (op4888.map lower) ∧ bytes4888.length=54 := by core033_kernel_decide
def op4889 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4889 : Bytes := ("    let r00001344: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4889 : bytes4889=statementBytes 4932 (op4889.map lower) ∧ bytes4889.length=41 := by core033_kernel_decide
def op4890 : List WordIR.Op := [.bxor 4931 4932]
def bytes4890 : Bytes := ("    let r00001345: u32 = r00001343 ^ r00001344;\n" : String).toByteArray.data.toList
theorem checked4890 : bytes4890=statementBytes 4933 (op4890.map lower) ∧ bytes4890.length=48 := by core033_kernel_decide
def op4891 : List WordIR.Op := [.bnot 4933]
def bytes4891 : Bytes := ("    let r00001346: u32 = !r00001345;\n" : String).toByteArray.data.toList
theorem checked4891 : bytes4891=statementBytes 4934 (op4891.map lower) ∧ bytes4891.length=37 := by core033_kernel_decide
def op4892 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4892 : Bytes := ("    let r00001347: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4892 : bytes4892=statementBytes 4935 (op4892.map lower) ∧ bytes4892.length=41 := by core033_kernel_decide
def op4893 : List WordIR.Op := [.badd 4934 4935]
def bytes4893 : Bytes := ("    let r00001348: u32 = r00001346.wrapping_add(r00001347);\n" : String).toByteArray.data.toList
theorem checked4893 : bytes4893=statementBytes 4936 (op4893.map lower) ∧ bytes4893.length=60 := by core033_kernel_decide
def op4894 : List WordIR.Op := [.bnot 4936]
def bytes4894 : Bytes := ("    let r00001349: u32 = !r00001348;\n" : String).toByteArray.data.toList
theorem checked4894 : bytes4894=statementBytes 4937 (op4894.map lower) ∧ bytes4894.length=37 := by core033_kernel_decide
def op4895 : List WordIR.Op := [.band 4937 1448]
def bytes4895 : Bytes := ("    let r0000134a: u32 = r00001349 & r000005a8;\n" : String).toByteArray.data.toList
theorem checked4895 : bytes4895=statementBytes 4938 (op4895.map lower) ∧ bytes4895.length=48 := by core033_kernel_decide
def op4896 : List WordIR.Op := [.bxor 4912 4938]
def bytes4896 : Bytes := ("    let r0000134b: u32 = r00001330 ^ r0000134a;\n" : String).toByteArray.data.toList
theorem checked4896 : bytes4896=statementBytes 4939 (op4896.map lower) ∧ bytes4896.length=48 := by core033_kernel_decide
def op4897 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4897 : Bytes := ("    let r0000134c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4897 : bytes4897=statementBytes 4940 (op4897.map lower) ∧ bytes4897.length=41 := by core033_kernel_decide
def op4898 : List WordIR.Op := [.bxor 96 4940]
def bytes4898 : Bytes := ("    let r0000134d: u32 = r00000060 ^ r0000134c;\n" : String).toByteArray.data.toList
theorem checked4898 : bytes4898=statementBytes 4941 (op4898.map lower) ∧ bytes4898.length=48 := by core033_kernel_decide
def op4899 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4899 : Bytes := ("    let r0000134e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4899 : bytes4899=statementBytes 4942 (op4899.map lower) ∧ bytes4899.length=41 := by core033_kernel_decide
def op4900 : List WordIR.Op := [.bnot 4942]
def bytes4900 : Bytes := ("    let r0000134f: u32 = !r0000134e;\n" : String).toByteArray.data.toList
theorem checked4900 : bytes4900=statementBytes 4943 (op4900.map lower) ∧ bytes4900.length=37 := by core033_kernel_decide
def op4901 : List WordIR.Op := [.band 4941 4943]
def bytes4901 : Bytes := ("    let r00001350: u32 = r0000134d & r0000134f;\n" : String).toByteArray.data.toList
theorem checked4901 : bytes4901=statementBytes 4944 (op4901.map lower) ∧ bytes4901.length=48 := by core033_kernel_decide
def op4902 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4902 : Bytes := ("    let r00001351: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4902 : bytes4902=statementBytes 4945 (op4902.map lower) ∧ bytes4902.length=41 := by core033_kernel_decide
def op4903 : List WordIR.Op := [.bxor 96 4945]
def bytes4903 : Bytes := ("    let r00001352: u32 = r00000060 ^ r00001351;\n" : String).toByteArray.data.toList
theorem checked4903 : bytes4903=statementBytes 4946 (op4903.map lower) ∧ bytes4903.length=48 := by core033_kernel_decide
def op4904 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4904 : Bytes := ("    let r00001353: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4904 : bytes4904=statementBytes 4947 (op4904.map lower) ∧ bytes4904.length=41 := by core033_kernel_decide
def op4905 : List WordIR.Op := [.bnot 4947]
def bytes4905 : Bytes := ("    let r00001354: u32 = !r00001353;\n" : String).toByteArray.data.toList
theorem checked4905 : bytes4905=statementBytes 4948 (op4905.map lower) ∧ bytes4905.length=37 := by core033_kernel_decide
def op4906 : List WordIR.Op := [.bxor 4946 4948]
def bytes4906 : Bytes := ("    let r00001355: u32 = r00001352 ^ r00001354;\n" : String).toByteArray.data.toList
theorem checked4906 : bytes4906=statementBytes 4949 (op4906.map lower) ∧ bytes4906.length=48 := by core033_kernel_decide
def op4907 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4907 : Bytes := ("    let r00001356: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4907 : bytes4907=statementBytes 4950 (op4907.map lower) ∧ bytes4907.length=41 := by core033_kernel_decide
def op4908 : List WordIR.Op := [.bxor 96 4950]
def bytes4908 : Bytes := ("    let r00001357: u32 = r00000060 ^ r00001356;\n" : String).toByteArray.data.toList
theorem checked4908 : bytes4908=statementBytes 4951 (op4908.map lower) ∧ bytes4908.length=48 := by core033_kernel_decide
def op4909 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4909 : Bytes := ("    let r00001358: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4909 : bytes4909=statementBytes 4952 (op4909.map lower) ∧ bytes4909.length=41 := by core033_kernel_decide
def op4910 : List WordIR.Op := [.bnot 4952]
def bytes4910 : Bytes := ("    let r00001359: u32 = !r00001358;\n" : String).toByteArray.data.toList
theorem checked4910 : bytes4910=statementBytes 4953 (op4910.map lower) ∧ bytes4910.length=37 := by core033_kernel_decide
def op4911 : List WordIR.Op := [.badd 4951 4953]
def bytes4911 : Bytes := ("    let r0000135a: u32 = r00001357.wrapping_add(r00001359);\n" : String).toByteArray.data.toList
theorem checked4911 : bytes4911=statementBytes 4954 (op4911.map lower) ∧ bytes4911.length=60 := by core033_kernel_decide
def op4912 : List WordIR.Op := [.bnot 4954]
def bytes4912 : Bytes := ("    let r0000135b: u32 = !r0000135a;\n" : String).toByteArray.data.toList
theorem checked4912 : bytes4912=statementBytes 4955 (op4912.map lower) ∧ bytes4912.length=37 := by core033_kernel_decide
def op4913 : List WordIR.Op := [.band 4949 4955]
def bytes4913 : Bytes := ("    let r0000135c: u32 = r00001355 & r0000135b;\n" : String).toByteArray.data.toList
theorem checked4913 : bytes4913=statementBytes 4956 (op4913.map lower) ∧ bytes4913.length=48 := by core033_kernel_decide
def op4914 : List WordIR.Op := [.bxor 4944 4956]
def bytes4914 : Bytes := ("    let r0000135d: u32 = r00001350 ^ r0000135c;\n" : String).toByteArray.data.toList
theorem checked4914 : bytes4914=statementBytes 4957 (op4914.map lower) ∧ bytes4914.length=48 := by core033_kernel_decide
def op4915 : List WordIR.Op := [.shr 4957 31]
def bytes4915 : Bytes := ("    let r0000135e: u32 = r0000135d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4915 : bytes4915=statementBytes 4958 (op4915.map lower) ∧ bytes4915.length=54 := by core033_kernel_decide
def op4916 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4916 : Bytes := ("    let r0000135f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4916 : bytes4916=statementBytes 4959 (op4916.map lower) ∧ bytes4916.length=41 := by core033_kernel_decide
def op4917 : List WordIR.Op := [.bxor 4958 4959]
def bytes4917 : Bytes := ("    let r00001360: u32 = r0000135e ^ r0000135f;\n" : String).toByteArray.data.toList
theorem checked4917 : bytes4917=statementBytes 4960 (op4917.map lower) ∧ bytes4917.length=48 := by core033_kernel_decide
def op4918 : List WordIR.Op := [.bnot 4960]
def bytes4918 : Bytes := ("    let r00001361: u32 = !r00001360;\n" : String).toByteArray.data.toList
theorem checked4918 : bytes4918=statementBytes 4961 (op4918.map lower) ∧ bytes4918.length=37 := by core033_kernel_decide
def op4919 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4919 : Bytes := ("    let r00001362: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4919 : bytes4919=statementBytes 4962 (op4919.map lower) ∧ bytes4919.length=41 := by core033_kernel_decide
def op4920 : List WordIR.Op := [.badd 4961 4962]
def bytes4920 : Bytes := ("    let r00001363: u32 = r00001361.wrapping_add(r00001362);\n" : String).toByteArray.data.toList
theorem checked4920 : bytes4920=statementBytes 4963 (op4920.map lower) ∧ bytes4920.length=60 := by core033_kernel_decide
def op4921 : List WordIR.Op := [.band 4963 1643]
def bytes4921 : Bytes := ("    let r00001364: u32 = r00001363 & r0000066b;\n" : String).toByteArray.data.toList
theorem checked4921 : bytes4921=statementBytes 4964 (op4921.map lower) ∧ bytes4921.length=48 := by core033_kernel_decide
def op4922 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4922 : Bytes := ("    let r00001365: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4922 : bytes4922=statementBytes 4965 (op4922.map lower) ∧ bytes4922.length=41 := by core033_kernel_decide
def op4923 : List WordIR.Op := [.bxor 96 4965]
def bytes4923 : Bytes := ("    let r00001366: u32 = r00000060 ^ r00001365;\n" : String).toByteArray.data.toList
theorem checked4923 : bytes4923=statementBytes 4966 (op4923.map lower) ∧ bytes4923.length=48 := by core033_kernel_decide
def op4924 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4924 : Bytes := ("    let r00001367: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4924 : bytes4924=statementBytes 4967 (op4924.map lower) ∧ bytes4924.length=41 := by core033_kernel_decide
def op4925 : List WordIR.Op := [.bnot 4967]
def bytes4925 : Bytes := ("    let r00001368: u32 = !r00001367;\n" : String).toByteArray.data.toList
theorem checked4925 : bytes4925=statementBytes 4968 (op4925.map lower) ∧ bytes4925.length=37 := by core033_kernel_decide
def op4926 : List WordIR.Op := [.band 4966 4968]
def bytes4926 : Bytes := ("    let r00001369: u32 = r00001366 & r00001368;\n" : String).toByteArray.data.toList
theorem checked4926 : bytes4926=statementBytes 4969 (op4926.map lower) ∧ bytes4926.length=48 := by core033_kernel_decide
def op4927 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4927 : Bytes := ("    let r0000136a: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4927 : bytes4927=statementBytes 4970 (op4927.map lower) ∧ bytes4927.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4864,op4865,op4866,op4867,op4868,op4869,op4870,op4871,op4872,op4873,op4874,op4875,op4876,op4877,op4878,op4879,op4880,op4881,op4882,op4883,op4884,op4885,op4886,op4887,op4888,op4889,op4890,op4891,op4892,op4893,op4894,op4895,op4896,op4897,op4898,op4899,op4900,op4901,op4902,op4903,op4904,op4905,op4906,op4907,op4908,op4909,op4910,op4911,op4912,op4913,op4914,op4915,op4916,op4917,op4918,op4919,op4920,op4921,op4922,op4923,op4924,op4925,op4926,op4927]
def chunks : List Bytes := [bytes4864,bytes4865,bytes4866,bytes4867,bytes4868,bytes4869,bytes4870,bytes4871,bytes4872,bytes4873,bytes4874,bytes4875,bytes4876,bytes4877,bytes4878,bytes4879,bytes4880,bytes4881,bytes4882,bytes4883,bytes4884,bytes4885,bytes4886,bytes4887,bytes4888,bytes4889,bytes4890,bytes4891,bytes4892,bytes4893,bytes4894,bytes4895,bytes4896,bytes4897,bytes4898,bytes4899,bytes4900,bytes4901,bytes4902,bytes4903,bytes4904,bytes4905,bytes4906,bytes4907,bytes4908,bytes4909,bytes4910,bytes4911,bytes4912,bytes4913,bytes4914,bytes4915,bytes4916,bytes4917,bytes4918,bytes4919,bytes4920,bytes4921,bytes4922,bytes4923,bytes4924,bytes4925,bytes4926,bytes4927]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 4907 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4864.1 (.cons _ _ _ _ _ checked4865.1 (.cons _ _ _ _ _ checked4866.1 (.cons _ _ _ _ _ checked4867.1 (.cons _ _ _ _ _ checked4868.1 (.cons _ _ _ _ _ checked4869.1 (.cons _ _ _ _ _ checked4870.1 (.cons _ _ _ _ _ checked4871.1 (.cons _ _ _ _ _ checked4872.1 (.cons _ _ _ _ _ checked4873.1 (.cons _ _ _ _ _ checked4874.1 (.cons _ _ _ _ _ checked4875.1 (.cons _ _ _ _ _ checked4876.1 (.cons _ _ _ _ _ checked4877.1 (.cons _ _ _ _ _ checked4878.1 (.cons _ _ _ _ _ checked4879.1 (.cons _ _ _ _ _ checked4880.1 (.cons _ _ _ _ _ checked4881.1 (.cons _ _ _ _ _ checked4882.1 (.cons _ _ _ _ _ checked4883.1 (.cons _ _ _ _ _ checked4884.1 (.cons _ _ _ _ _ checked4885.1 (.cons _ _ _ _ _ checked4886.1 (.cons _ _ _ _ _ checked4887.1 (.cons _ _ _ _ _ checked4888.1 (.cons _ _ _ _ _ checked4889.1 (.cons _ _ _ _ _ checked4890.1 (.cons _ _ _ _ _ checked4891.1 (.cons _ _ _ _ _ checked4892.1 (.cons _ _ _ _ _ checked4893.1 (.cons _ _ _ _ _ checked4894.1 (.cons _ _ _ _ _ checked4895.1 (.cons _ _ _ _ _ checked4896.1 (.cons _ _ _ _ _ checked4897.1 (.cons _ _ _ _ _ checked4898.1 (.cons _ _ _ _ _ checked4899.1 (.cons _ _ _ _ _ checked4900.1 (.cons _ _ _ _ _ checked4901.1 (.cons _ _ _ _ _ checked4902.1 (.cons _ _ _ _ _ checked4903.1 (.cons _ _ _ _ _ checked4904.1 (.cons _ _ _ _ _ checked4905.1 (.cons _ _ _ _ _ checked4906.1 (.cons _ _ _ _ _ checked4907.1 (.cons _ _ _ _ _ checked4908.1 (.cons _ _ _ _ _ checked4909.1 (.cons _ _ _ _ _ checked4910.1 (.cons _ _ _ _ _ checked4911.1 (.cons _ _ _ _ _ checked4912.1 (.cons _ _ _ _ _ checked4913.1 (.cons _ _ _ _ _ checked4914.1 (.cons _ _ _ _ _ checked4915.1 (.cons _ _ _ _ _ checked4916.1 (.cons _ _ _ _ _ checked4917.1 (.cons _ _ _ _ _ checked4918.1 (.cons _ _ _ _ _ checked4919.1 (.cons _ _ _ _ _ checked4920.1 (.cons _ _ _ _ _ checked4921.1 (.cons _ _ _ _ _ checked4922.1 (.cons _ _ _ _ _ checked4923.1 (.cons _ _ _ _ _ checked4924.1 (.cons _ _ _ _ _ checked4925.1 (.cons _ _ _ _ _ checked4926.1 (.cons _ _ _ _ _ checked4927.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 4907 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2854 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4864.2,checked4865.2,checked4866.2,checked4867.2,checked4868.2,checked4869.2,checked4870.2,checked4871.2,checked4872.2,checked4873.2,checked4874.2,checked4875.2,checked4876.2,checked4877.2,checked4878.2,checked4879.2,checked4880.2,checked4881.2,checked4882.2,checked4883.2,checked4884.2,checked4885.2,checked4886.2,checked4887.2,checked4888.2,checked4889.2,checked4890.2,checked4891.2,checked4892.2,checked4893.2,checked4894.2,checked4895.2,checked4896.2,checked4897.2,checked4898.2,checked4899.2,checked4900.2,checked4901.2,checked4902.2,checked4903.2,checked4904.2,checked4905.2,checked4906.2,checked4907.2,checked4908.2,checked4909.2,checked4910.2,checked4911.2,checked4912.2,checked4913.2,checked4914.2,checked4915.2,checked4916.2,checked4917.2,checked4918.2,checked4919.2,checked4920.2,checked4921.2,checked4922.2,checked4923.2,checked4924.2,checked4925.2,checked4926.2,checked4927.2]
  decide
end ArtifactPathRoundDispatchGroup76
