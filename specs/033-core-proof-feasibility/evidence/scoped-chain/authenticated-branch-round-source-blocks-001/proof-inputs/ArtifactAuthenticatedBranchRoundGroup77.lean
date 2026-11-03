import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup77
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4928 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4928 : Bytes := ("    let r000013b6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4928 : bytes4928=statementBytes 5046 (op4928.map lower) ∧ bytes4928.length=41 := by core033_kernel_decide
def op4929 : List WordIR.Op := [.badd 5045 5046]
def bytes4929 : Bytes := ("    let r000013b7: u32 = r000013b5.wrapping_add(r000013b6);\n" : String).toByteArray.data.toList
theorem checked4929 : bytes4929=statementBytes 5047 (op4929.map lower) ∧ bytes4929.length=60 := by core033_kernel_decide
def op4930 : List WordIR.Op := [.bnot 5047]
def bytes4930 : Bytes := ("    let r000013b8: u32 = !r000013b7;\n" : String).toByteArray.data.toList
theorem checked4930 : bytes4930=statementBytes 5048 (op4930.map lower) ∧ bytes4930.length=37 := by core033_kernel_decide
def op4931 : List WordIR.Op := [.band 5048 2588]
def bytes4931 : Bytes := ("    let r000013b9: u32 = r000013b8 & r00000a1c;\n" : String).toByteArray.data.toList
theorem checked4931 : bytes4931=statementBytes 5049 (op4931.map lower) ∧ bytes4931.length=48 := by core033_kernel_decide
def op4932 : List WordIR.Op := [.bxor 5023 5049]
def bytes4932 : Bytes := ("    let r000013ba: u32 = r0000139f ^ r000013b9;\n" : String).toByteArray.data.toList
theorem checked4932 : bytes4932=statementBytes 5050 (op4932.map lower) ∧ bytes4932.length=48 := by core033_kernel_decide
def op4933 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4933 : Bytes := ("    let r000013bb: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4933 : bytes4933=statementBytes 5051 (op4933.map lower) ∧ bytes4933.length=41 := by core033_kernel_decide
def op4934 : List WordIR.Op := [.bxor 1299 5051]
def bytes4934 : Bytes := ("    let r000013bc: u32 = r00000513 ^ r000013bb;\n" : String).toByteArray.data.toList
theorem checked4934 : bytes4934=statementBytes 5052 (op4934.map lower) ∧ bytes4934.length=48 := by core033_kernel_decide
def op4935 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4935 : Bytes := ("    let r000013bd: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4935 : bytes4935=statementBytes 5053 (op4935.map lower) ∧ bytes4935.length=41 := by core033_kernel_decide
def op4936 : List WordIR.Op := [.bnot 5053]
def bytes4936 : Bytes := ("    let r000013be: u32 = !r000013bd;\n" : String).toByteArray.data.toList
theorem checked4936 : bytes4936=statementBytes 5054 (op4936.map lower) ∧ bytes4936.length=37 := by core033_kernel_decide
def op4937 : List WordIR.Op := [.band 5052 5054]
def bytes4937 : Bytes := ("    let r000013bf: u32 = r000013bc & r000013be;\n" : String).toByteArray.data.toList
theorem checked4937 : bytes4937=statementBytes 5055 (op4937.map lower) ∧ bytes4937.length=48 := by core033_kernel_decide
def op4938 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4938 : Bytes := ("    let r000013c0: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4938 : bytes4938=statementBytes 5056 (op4938.map lower) ∧ bytes4938.length=41 := by core033_kernel_decide
def op4939 : List WordIR.Op := [.bxor 1299 5056]
def bytes4939 : Bytes := ("    let r000013c1: u32 = r00000513 ^ r000013c0;\n" : String).toByteArray.data.toList
theorem checked4939 : bytes4939=statementBytes 5057 (op4939.map lower) ∧ bytes4939.length=48 := by core033_kernel_decide
def op4940 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4940 : Bytes := ("    let r000013c2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4940 : bytes4940=statementBytes 5058 (op4940.map lower) ∧ bytes4940.length=41 := by core033_kernel_decide
def op4941 : List WordIR.Op := [.bnot 5058]
def bytes4941 : Bytes := ("    let r000013c3: u32 = !r000013c2;\n" : String).toByteArray.data.toList
theorem checked4941 : bytes4941=statementBytes 5059 (op4941.map lower) ∧ bytes4941.length=37 := by core033_kernel_decide
def op4942 : List WordIR.Op := [.bxor 5057 5059]
def bytes4942 : Bytes := ("    let r000013c4: u32 = r000013c1 ^ r000013c3;\n" : String).toByteArray.data.toList
theorem checked4942 : bytes4942=statementBytes 5060 (op4942.map lower) ∧ bytes4942.length=48 := by core033_kernel_decide
def op4943 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4943 : Bytes := ("    let r000013c5: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4943 : bytes4943=statementBytes 5061 (op4943.map lower) ∧ bytes4943.length=41 := by core033_kernel_decide
def op4944 : List WordIR.Op := [.bxor 1299 5061]
def bytes4944 : Bytes := ("    let r000013c6: u32 = r00000513 ^ r000013c5;\n" : String).toByteArray.data.toList
theorem checked4944 : bytes4944=statementBytes 5062 (op4944.map lower) ∧ bytes4944.length=48 := by core033_kernel_decide
def op4945 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4945 : Bytes := ("    let r000013c7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4945 : bytes4945=statementBytes 5063 (op4945.map lower) ∧ bytes4945.length=41 := by core033_kernel_decide
def op4946 : List WordIR.Op := [.bnot 5063]
def bytes4946 : Bytes := ("    let r000013c8: u32 = !r000013c7;\n" : String).toByteArray.data.toList
theorem checked4946 : bytes4946=statementBytes 5064 (op4946.map lower) ∧ bytes4946.length=37 := by core033_kernel_decide
def op4947 : List WordIR.Op := [.badd 5062 5064]
def bytes4947 : Bytes := ("    let r000013c9: u32 = r000013c6.wrapping_add(r000013c8);\n" : String).toByteArray.data.toList
theorem checked4947 : bytes4947=statementBytes 5065 (op4947.map lower) ∧ bytes4947.length=60 := by core033_kernel_decide
def op4948 : List WordIR.Op := [.bnot 5065]
def bytes4948 : Bytes := ("    let r000013ca: u32 = !r000013c9;\n" : String).toByteArray.data.toList
theorem checked4948 : bytes4948=statementBytes 5066 (op4948.map lower) ∧ bytes4948.length=37 := by core033_kernel_decide
def op4949 : List WordIR.Op := [.band 5060 5066]
def bytes4949 : Bytes := ("    let r000013cb: u32 = r000013c4 & r000013ca;\n" : String).toByteArray.data.toList
theorem checked4949 : bytes4949=statementBytes 5067 (op4949.map lower) ∧ bytes4949.length=48 := by core033_kernel_decide
def op4950 : List WordIR.Op := [.bxor 5055 5067]
def bytes4950 : Bytes := ("    let r000013cc: u32 = r000013bf ^ r000013cb;\n" : String).toByteArray.data.toList
theorem checked4950 : bytes4950=statementBytes 5068 (op4950.map lower) ∧ bytes4950.length=48 := by core033_kernel_decide
def op4951 : List WordIR.Op := [.shr 5068 31]
def bytes4951 : Bytes := ("    let r000013cd: u32 = r000013cc >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4951 : bytes4951=statementBytes 5069 (op4951.map lower) ∧ bytes4951.length=54 := by core033_kernel_decide
def op4952 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4952 : Bytes := ("    let r000013ce: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4952 : bytes4952=statementBytes 5070 (op4952.map lower) ∧ bytes4952.length=41 := by core033_kernel_decide
def op4953 : List WordIR.Op := [.bxor 5069 5070]
def bytes4953 : Bytes := ("    let r000013cf: u32 = r000013cd ^ r000013ce;\n" : String).toByteArray.data.toList
theorem checked4953 : bytes4953=statementBytes 5071 (op4953.map lower) ∧ bytes4953.length=48 := by core033_kernel_decide
def op4954 : List WordIR.Op := [.bnot 5071]
def bytes4954 : Bytes := ("    let r000013d0: u32 = !r000013cf;\n" : String).toByteArray.data.toList
theorem checked4954 : bytes4954=statementBytes 5072 (op4954.map lower) ∧ bytes4954.length=37 := by core033_kernel_decide
def op4955 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4955 : Bytes := ("    let r000013d1: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4955 : bytes4955=statementBytes 5073 (op4955.map lower) ∧ bytes4955.length=41 := by core033_kernel_decide
def op4956 : List WordIR.Op := [.badd 5072 5073]
def bytes4956 : Bytes := ("    let r000013d2: u32 = r000013d0.wrapping_add(r000013d1);\n" : String).toByteArray.data.toList
theorem checked4956 : bytes4956=statementBytes 5074 (op4956.map lower) ∧ bytes4956.length=60 := by core033_kernel_decide
def op4957 : List WordIR.Op := [.band 5074 2783]
def bytes4957 : Bytes := ("    let r000013d3: u32 = r000013d2 & r00000adf;\n" : String).toByteArray.data.toList
theorem checked4957 : bytes4957=statementBytes 5075 (op4957.map lower) ∧ bytes4957.length=48 := by core033_kernel_decide
def op4958 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4958 : Bytes := ("    let r000013d4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4958 : bytes4958=statementBytes 5076 (op4958.map lower) ∧ bytes4958.length=41 := by core033_kernel_decide
def op4959 : List WordIR.Op := [.bxor 1299 5076]
def bytes4959 : Bytes := ("    let r000013d5: u32 = r00000513 ^ r000013d4;\n" : String).toByteArray.data.toList
theorem checked4959 : bytes4959=statementBytes 5077 (op4959.map lower) ∧ bytes4959.length=48 := by core033_kernel_decide
def op4960 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4960 : Bytes := ("    let r000013d6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4960 : bytes4960=statementBytes 5078 (op4960.map lower) ∧ bytes4960.length=41 := by core033_kernel_decide
def op4961 : List WordIR.Op := [.bnot 5078]
def bytes4961 : Bytes := ("    let r000013d7: u32 = !r000013d6;\n" : String).toByteArray.data.toList
theorem checked4961 : bytes4961=statementBytes 5079 (op4961.map lower) ∧ bytes4961.length=37 := by core033_kernel_decide
def op4962 : List WordIR.Op := [.band 5077 5079]
def bytes4962 : Bytes := ("    let r000013d8: u32 = r000013d5 & r000013d7;\n" : String).toByteArray.data.toList
theorem checked4962 : bytes4962=statementBytes 5080 (op4962.map lower) ∧ bytes4962.length=48 := by core033_kernel_decide
def op4963 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4963 : Bytes := ("    let r000013d9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4963 : bytes4963=statementBytes 5081 (op4963.map lower) ∧ bytes4963.length=41 := by core033_kernel_decide
def op4964 : List WordIR.Op := [.bxor 1299 5081]
def bytes4964 : Bytes := ("    let r000013da: u32 = r00000513 ^ r000013d9;\n" : String).toByteArray.data.toList
theorem checked4964 : bytes4964=statementBytes 5082 (op4964.map lower) ∧ bytes4964.length=48 := by core033_kernel_decide
def op4965 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4965 : Bytes := ("    let r000013db: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4965 : bytes4965=statementBytes 5083 (op4965.map lower) ∧ bytes4965.length=41 := by core033_kernel_decide
def op4966 : List WordIR.Op := [.bnot 5083]
def bytes4966 : Bytes := ("    let r000013dc: u32 = !r000013db;\n" : String).toByteArray.data.toList
theorem checked4966 : bytes4966=statementBytes 5084 (op4966.map lower) ∧ bytes4966.length=37 := by core033_kernel_decide
def op4967 : List WordIR.Op := [.bxor 5082 5084]
def bytes4967 : Bytes := ("    let r000013dd: u32 = r000013da ^ r000013dc;\n" : String).toByteArray.data.toList
theorem checked4967 : bytes4967=statementBytes 5085 (op4967.map lower) ∧ bytes4967.length=48 := by core033_kernel_decide
def op4968 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4968 : Bytes := ("    let r000013de: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4968 : bytes4968=statementBytes 5086 (op4968.map lower) ∧ bytes4968.length=41 := by core033_kernel_decide
def op4969 : List WordIR.Op := [.bxor 1299 5086]
def bytes4969 : Bytes := ("    let r000013df: u32 = r00000513 ^ r000013de;\n" : String).toByteArray.data.toList
theorem checked4969 : bytes4969=statementBytes 5087 (op4969.map lower) ∧ bytes4969.length=48 := by core033_kernel_decide
def op4970 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4970 : Bytes := ("    let r000013e0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4970 : bytes4970=statementBytes 5088 (op4970.map lower) ∧ bytes4970.length=41 := by core033_kernel_decide
def op4971 : List WordIR.Op := [.bnot 5088]
def bytes4971 : Bytes := ("    let r000013e1: u32 = !r000013e0;\n" : String).toByteArray.data.toList
theorem checked4971 : bytes4971=statementBytes 5089 (op4971.map lower) ∧ bytes4971.length=37 := by core033_kernel_decide
def op4972 : List WordIR.Op := [.badd 5087 5089]
def bytes4972 : Bytes := ("    let r000013e2: u32 = r000013df.wrapping_add(r000013e1);\n" : String).toByteArray.data.toList
theorem checked4972 : bytes4972=statementBytes 5090 (op4972.map lower) ∧ bytes4972.length=60 := by core033_kernel_decide
def op4973 : List WordIR.Op := [.bnot 5090]
def bytes4973 : Bytes := ("    let r000013e3: u32 = !r000013e2;\n" : String).toByteArray.data.toList
theorem checked4973 : bytes4973=statementBytes 5091 (op4973.map lower) ∧ bytes4973.length=37 := by core033_kernel_decide
def op4974 : List WordIR.Op := [.band 5085 5091]
def bytes4974 : Bytes := ("    let r000013e4: u32 = r000013dd & r000013e3;\n" : String).toByteArray.data.toList
theorem checked4974 : bytes4974=statementBytes 5092 (op4974.map lower) ∧ bytes4974.length=48 := by core033_kernel_decide
def op4975 : List WordIR.Op := [.bxor 5080 5092]
def bytes4975 : Bytes := ("    let r000013e5: u32 = r000013d8 ^ r000013e4;\n" : String).toByteArray.data.toList
theorem checked4975 : bytes4975=statementBytes 5093 (op4975.map lower) ∧ bytes4975.length=48 := by core033_kernel_decide
def op4976 : List WordIR.Op := [.shr 5093 31]
def bytes4976 : Bytes := ("    let r000013e6: u32 = r000013e5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4976 : bytes4976=statementBytes 5094 (op4976.map lower) ∧ bytes4976.length=54 := by core033_kernel_decide
def op4977 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4977 : Bytes := ("    let r000013e7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4977 : bytes4977=statementBytes 5095 (op4977.map lower) ∧ bytes4977.length=41 := by core033_kernel_decide
def op4978 : List WordIR.Op := [.bxor 5094 5095]
def bytes4978 : Bytes := ("    let r000013e8: u32 = r000013e6 ^ r000013e7;\n" : String).toByteArray.data.toList
theorem checked4978 : bytes4978=statementBytes 5096 (op4978.map lower) ∧ bytes4978.length=48 := by core033_kernel_decide
def op4979 : List WordIR.Op := [.bnot 5096]
def bytes4979 : Bytes := ("    let r000013e9: u32 = !r000013e8;\n" : String).toByteArray.data.toList
theorem checked4979 : bytes4979=statementBytes 5097 (op4979.map lower) ∧ bytes4979.length=37 := by core033_kernel_decide
def op4980 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4980 : Bytes := ("    let r000013ea: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4980 : bytes4980=statementBytes 5098 (op4980.map lower) ∧ bytes4980.length=41 := by core033_kernel_decide
def op4981 : List WordIR.Op := [.badd 5097 5098]
def bytes4981 : Bytes := ("    let r000013eb: u32 = r000013e9.wrapping_add(r000013ea);\n" : String).toByteArray.data.toList
theorem checked4981 : bytes4981=statementBytes 5099 (op4981.map lower) ∧ bytes4981.length=60 := by core033_kernel_decide
def op4982 : List WordIR.Op := [.bnot 5099]
def bytes4982 : Bytes := ("    let r000013ec: u32 = !r000013eb;\n" : String).toByteArray.data.toList
theorem checked4982 : bytes4982=statementBytes 5100 (op4982.map lower) ∧ bytes4982.length=37 := by core033_kernel_decide
def op4983 : List WordIR.Op := [.band 5100 2591]
def bytes4983 : Bytes := ("    let r000013ed: u32 = r000013ec & r00000a1f;\n" : String).toByteArray.data.toList
theorem checked4983 : bytes4983=statementBytes 5101 (op4983.map lower) ∧ bytes4983.length=48 := by core033_kernel_decide
def op4984 : List WordIR.Op := [.bxor 5075 5101]
def bytes4984 : Bytes := ("    let r000013ee: u32 = r000013d3 ^ r000013ed;\n" : String).toByteArray.data.toList
theorem checked4984 : bytes4984=statementBytes 5102 (op4984.map lower) ∧ bytes4984.length=48 := by core033_kernel_decide
def op4985 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4985 : Bytes := ("    let r000013ef: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4985 : bytes4985=statementBytes 5103 (op4985.map lower) ∧ bytes4985.length=41 := by core033_kernel_decide
def op4986 : List WordIR.Op := [.bxor 1299 5103]
def bytes4986 : Bytes := ("    let r000013f0: u32 = r00000513 ^ r000013ef;\n" : String).toByteArray.data.toList
theorem checked4986 : bytes4986=statementBytes 5104 (op4986.map lower) ∧ bytes4986.length=48 := by core033_kernel_decide
def op4987 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4987 : Bytes := ("    let r000013f1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4987 : bytes4987=statementBytes 5105 (op4987.map lower) ∧ bytes4987.length=41 := by core033_kernel_decide
def op4988 : List WordIR.Op := [.bnot 5105]
def bytes4988 : Bytes := ("    let r000013f2: u32 = !r000013f1;\n" : String).toByteArray.data.toList
theorem checked4988 : bytes4988=statementBytes 5106 (op4988.map lower) ∧ bytes4988.length=37 := by core033_kernel_decide
def op4989 : List WordIR.Op := [.band 5104 5106]
def bytes4989 : Bytes := ("    let r000013f3: u32 = r000013f0 & r000013f2;\n" : String).toByteArray.data.toList
theorem checked4989 : bytes4989=statementBytes 5107 (op4989.map lower) ∧ bytes4989.length=48 := by core033_kernel_decide
def op4990 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4990 : Bytes := ("    let r000013f4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4990 : bytes4990=statementBytes 5108 (op4990.map lower) ∧ bytes4990.length=41 := by core033_kernel_decide
def op4991 : List WordIR.Op := [.bxor 1299 5108]
def bytes4991 : Bytes := ("    let r000013f5: u32 = r00000513 ^ r000013f4;\n" : String).toByteArray.data.toList
theorem checked4991 : bytes4991=statementBytes 5109 (op4991.map lower) ∧ bytes4991.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4928,op4929,op4930,op4931,op4932,op4933,op4934,op4935,op4936,op4937,op4938,op4939,op4940,op4941,op4942,op4943,op4944,op4945,op4946,op4947,op4948,op4949,op4950,op4951,op4952,op4953,op4954,op4955,op4956,op4957,op4958,op4959,op4960,op4961,op4962,op4963,op4964,op4965,op4966,op4967,op4968,op4969,op4970,op4971,op4972,op4973,op4974,op4975,op4976,op4977,op4978,op4979,op4980,op4981,op4982,op4983,op4984,op4985,op4986,op4987,op4988,op4989,op4990,op4991]
def chunks : List Bytes := [bytes4928,bytes4929,bytes4930,bytes4931,bytes4932,bytes4933,bytes4934,bytes4935,bytes4936,bytes4937,bytes4938,bytes4939,bytes4940,bytes4941,bytes4942,bytes4943,bytes4944,bytes4945,bytes4946,bytes4947,bytes4948,bytes4949,bytes4950,bytes4951,bytes4952,bytes4953,bytes4954,bytes4955,bytes4956,bytes4957,bytes4958,bytes4959,bytes4960,bytes4961,bytes4962,bytes4963,bytes4964,bytes4965,bytes4966,bytes4967,bytes4968,bytes4969,bytes4970,bytes4971,bytes4972,bytes4973,bytes4974,bytes4975,bytes4976,bytes4977,bytes4978,bytes4979,bytes4980,bytes4981,bytes4982,bytes4983,bytes4984,bytes4985,bytes4986,bytes4987,bytes4988,bytes4989,bytes4990,bytes4991]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5046 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4928.1 (.cons _ _ _ _ _ checked4929.1 (.cons _ _ _ _ _ checked4930.1 (.cons _ _ _ _ _ checked4931.1 (.cons _ _ _ _ _ checked4932.1 (.cons _ _ _ _ _ checked4933.1 (.cons _ _ _ _ _ checked4934.1 (.cons _ _ _ _ _ checked4935.1 (.cons _ _ _ _ _ checked4936.1 (.cons _ _ _ _ _ checked4937.1 (.cons _ _ _ _ _ checked4938.1 (.cons _ _ _ _ _ checked4939.1 (.cons _ _ _ _ _ checked4940.1 (.cons _ _ _ _ _ checked4941.1 (.cons _ _ _ _ _ checked4942.1 (.cons _ _ _ _ _ checked4943.1 (.cons _ _ _ _ _ checked4944.1 (.cons _ _ _ _ _ checked4945.1 (.cons _ _ _ _ _ checked4946.1 (.cons _ _ _ _ _ checked4947.1 (.cons _ _ _ _ _ checked4948.1 (.cons _ _ _ _ _ checked4949.1 (.cons _ _ _ _ _ checked4950.1 (.cons _ _ _ _ _ checked4951.1 (.cons _ _ _ _ _ checked4952.1 (.cons _ _ _ _ _ checked4953.1 (.cons _ _ _ _ _ checked4954.1 (.cons _ _ _ _ _ checked4955.1 (.cons _ _ _ _ _ checked4956.1 (.cons _ _ _ _ _ checked4957.1 (.cons _ _ _ _ _ checked4958.1 (.cons _ _ _ _ _ checked4959.1 (.cons _ _ _ _ _ checked4960.1 (.cons _ _ _ _ _ checked4961.1 (.cons _ _ _ _ _ checked4962.1 (.cons _ _ _ _ _ checked4963.1 (.cons _ _ _ _ _ checked4964.1 (.cons _ _ _ _ _ checked4965.1 (.cons _ _ _ _ _ checked4966.1 (.cons _ _ _ _ _ checked4967.1 (.cons _ _ _ _ _ checked4968.1 (.cons _ _ _ _ _ checked4969.1 (.cons _ _ _ _ _ checked4970.1 (.cons _ _ _ _ _ checked4971.1 (.cons _ _ _ _ _ checked4972.1 (.cons _ _ _ _ _ checked4973.1 (.cons _ _ _ _ _ checked4974.1 (.cons _ _ _ _ _ checked4975.1 (.cons _ _ _ _ _ checked4976.1 (.cons _ _ _ _ _ checked4977.1 (.cons _ _ _ _ _ checked4978.1 (.cons _ _ _ _ _ checked4979.1 (.cons _ _ _ _ _ checked4980.1 (.cons _ _ _ _ _ checked4981.1 (.cons _ _ _ _ _ checked4982.1 (.cons _ _ _ _ _ checked4983.1 (.cons _ _ _ _ _ checked4984.1 (.cons _ _ _ _ _ checked4985.1 (.cons _ _ _ _ _ checked4986.1 (.cons _ _ _ _ _ checked4987.1 (.cons _ _ _ _ _ checked4988.1 (.cons _ _ _ _ _ checked4989.1 (.cons _ _ _ _ _ checked4990.1 (.cons _ _ _ _ _ checked4991.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5046 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2861 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4928.2,checked4929.2,checked4930.2,checked4931.2,checked4932.2,checked4933.2,checked4934.2,checked4935.2,checked4936.2,checked4937.2,checked4938.2,checked4939.2,checked4940.2,checked4941.2,checked4942.2,checked4943.2,checked4944.2,checked4945.2,checked4946.2,checked4947.2,checked4948.2,checked4949.2,checked4950.2,checked4951.2,checked4952.2,checked4953.2,checked4954.2,checked4955.2,checked4956.2,checked4957.2,checked4958.2,checked4959.2,checked4960.2,checked4961.2,checked4962.2,checked4963.2,checked4964.2,checked4965.2,checked4966.2,checked4967.2,checked4968.2,checked4969.2,checked4970.2,checked4971.2,checked4972.2,checked4973.2,checked4974.2,checked4975.2,checked4976.2,checked4977.2,checked4978.2,checked4979.2,checked4980.2,checked4981.2,checked4982.2,checked4983.2,checked4984.2,checked4985.2,checked4986.2,checked4987.2,checked4988.2,checked4989.2,checked4990.2,checked4991.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup77
