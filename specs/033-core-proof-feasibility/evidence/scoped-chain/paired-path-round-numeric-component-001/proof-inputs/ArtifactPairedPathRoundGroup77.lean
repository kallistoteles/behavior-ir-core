import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup77
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4928 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4928 : Bytes := ("    let r000013a0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4928 : bytes4928=statementBytes 5024 (op4928.map lower) ∧ bytes4928.length=41 := by core033_kernel_decide
def op4929 : List WordIR.Op := [.bnot 5024]
def bytes4929 : Bytes := ("    let r000013a1: u32 = !r000013a0;\n" : String).toByteArray.data.toList
theorem checked4929 : bytes4929=statementBytes 5025 (op4929.map lower) ∧ bytes4929.length=37 := by core033_kernel_decide
def op4930 : List WordIR.Op := [.bxor 5023 5025]
def bytes4930 : Bytes := ("    let r000013a2: u32 = r0000139f ^ r000013a1;\n" : String).toByteArray.data.toList
theorem checked4930 : bytes4930=statementBytes 5026 (op4930.map lower) ∧ bytes4930.length=48 := by core033_kernel_decide
def op4931 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4931 : Bytes := ("    let r000013a3: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4931 : bytes4931=statementBytes 5027 (op4931.map lower) ∧ bytes4931.length=41 := by core033_kernel_decide
def op4932 : List WordIR.Op := [.bxor 616 5027]
def bytes4932 : Bytes := ("    let r000013a4: u32 = r00000268 ^ r000013a3;\n" : String).toByteArray.data.toList
theorem checked4932 : bytes4932=statementBytes 5028 (op4932.map lower) ∧ bytes4932.length=48 := by core033_kernel_decide
def op4933 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4933 : Bytes := ("    let r000013a5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4933 : bytes4933=statementBytes 5029 (op4933.map lower) ∧ bytes4933.length=41 := by core033_kernel_decide
def op4934 : List WordIR.Op := [.bnot 5029]
def bytes4934 : Bytes := ("    let r000013a6: u32 = !r000013a5;\n" : String).toByteArray.data.toList
theorem checked4934 : bytes4934=statementBytes 5030 (op4934.map lower) ∧ bytes4934.length=37 := by core033_kernel_decide
def op4935 : List WordIR.Op := [.badd 5028 5030]
def bytes4935 : Bytes := ("    let r000013a7: u32 = r000013a4.wrapping_add(r000013a6);\n" : String).toByteArray.data.toList
theorem checked4935 : bytes4935=statementBytes 5031 (op4935.map lower) ∧ bytes4935.length=60 := by core033_kernel_decide
def op4936 : List WordIR.Op := [.bnot 5031]
def bytes4936 : Bytes := ("    let r000013a8: u32 = !r000013a7;\n" : String).toByteArray.data.toList
theorem checked4936 : bytes4936=statementBytes 5032 (op4936.map lower) ∧ bytes4936.length=37 := by core033_kernel_decide
def op4937 : List WordIR.Op := [.band 5026 5032]
def bytes4937 : Bytes := ("    let r000013a9: u32 = r000013a2 & r000013a8;\n" : String).toByteArray.data.toList
theorem checked4937 : bytes4937=statementBytes 5033 (op4937.map lower) ∧ bytes4937.length=48 := by core033_kernel_decide
def op4938 : List WordIR.Op := [.bxor 5021 5033]
def bytes4938 : Bytes := ("    let r000013aa: u32 = r0000139d ^ r000013a9;\n" : String).toByteArray.data.toList
theorem checked4938 : bytes4938=statementBytes 5034 (op4938.map lower) ∧ bytes4938.length=48 := by core033_kernel_decide
def op4939 : List WordIR.Op := [.shr 5034 31]
def bytes4939 : Bytes := ("    let r000013ab: u32 = r000013aa >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4939 : bytes4939=statementBytes 5035 (op4939.map lower) ∧ bytes4939.length=54 := by core033_kernel_decide
def op4940 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4940 : Bytes := ("    let r000013ac: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4940 : bytes4940=statementBytes 5036 (op4940.map lower) ∧ bytes4940.length=41 := by core033_kernel_decide
def op4941 : List WordIR.Op := [.bxor 5035 5036]
def bytes4941 : Bytes := ("    let r000013ad: u32 = r000013ab ^ r000013ac;\n" : String).toByteArray.data.toList
theorem checked4941 : bytes4941=statementBytes 5037 (op4941.map lower) ∧ bytes4941.length=48 := by core033_kernel_decide
def op4942 : List WordIR.Op := [.bnot 5037]
def bytes4942 : Bytes := ("    let r000013ae: u32 = !r000013ad;\n" : String).toByteArray.data.toList
theorem checked4942 : bytes4942=statementBytes 5038 (op4942.map lower) ∧ bytes4942.length=37 := by core033_kernel_decide
def op4943 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4943 : Bytes := ("    let r000013af: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4943 : bytes4943=statementBytes 5039 (op4943.map lower) ∧ bytes4943.length=41 := by core033_kernel_decide
def op4944 : List WordIR.Op := [.badd 5038 5039]
def bytes4944 : Bytes := ("    let r000013b0: u32 = r000013ae.wrapping_add(r000013af);\n" : String).toByteArray.data.toList
theorem checked4944 : bytes4944=statementBytes 5040 (op4944.map lower) ∧ bytes4944.length=60 := by core033_kernel_decide
def op4945 : List WordIR.Op := [.bnot 5040]
def bytes4945 : Bytes := ("    let r000013b1: u32 = !r000013b0;\n" : String).toByteArray.data.toList
theorem checked4945 : bytes4945=statementBytes 5041 (op4945.map lower) ∧ bytes4945.length=37 := by core033_kernel_decide
def op4946 : List WordIR.Op := [.band 5041 1944]
def bytes4946 : Bytes := ("    let r000013b2: u32 = r000013b1 & r00000798;\n" : String).toByteArray.data.toList
theorem checked4946 : bytes4946=statementBytes 5042 (op4946.map lower) ∧ bytes4946.length=48 := by core033_kernel_decide
def op4947 : List WordIR.Op := [.bxor 5016 5042]
def bytes4947 : Bytes := ("    let r000013b3: u32 = r00001398 ^ r000013b2;\n" : String).toByteArray.data.toList
theorem checked4947 : bytes4947=statementBytes 5043 (op4947.map lower) ∧ bytes4947.length=48 := by core033_kernel_decide
def op4948 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4948 : Bytes := ("    let r000013b4: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4948 : bytes4948=statementBytes 5044 (op4948.map lower) ∧ bytes4948.length=41 := by core033_kernel_decide
def op4949 : List WordIR.Op := [.bxor 616 5044]
def bytes4949 : Bytes := ("    let r000013b5: u32 = r00000268 ^ r000013b4;\n" : String).toByteArray.data.toList
theorem checked4949 : bytes4949=statementBytes 5045 (op4949.map lower) ∧ bytes4949.length=48 := by core033_kernel_decide
def op4950 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4950 : Bytes := ("    let r000013b6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4950 : bytes4950=statementBytes 5046 (op4950.map lower) ∧ bytes4950.length=41 := by core033_kernel_decide
def op4951 : List WordIR.Op := [.bnot 5046]
def bytes4951 : Bytes := ("    let r000013b7: u32 = !r000013b6;\n" : String).toByteArray.data.toList
theorem checked4951 : bytes4951=statementBytes 5047 (op4951.map lower) ∧ bytes4951.length=37 := by core033_kernel_decide
def op4952 : List WordIR.Op := [.band 5045 5047]
def bytes4952 : Bytes := ("    let r000013b8: u32 = r000013b5 & r000013b7;\n" : String).toByteArray.data.toList
theorem checked4952 : bytes4952=statementBytes 5048 (op4952.map lower) ∧ bytes4952.length=48 := by core033_kernel_decide
def op4953 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4953 : Bytes := ("    let r000013b9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4953 : bytes4953=statementBytes 5049 (op4953.map lower) ∧ bytes4953.length=41 := by core033_kernel_decide
def op4954 : List WordIR.Op := [.bxor 616 5049]
def bytes4954 : Bytes := ("    let r000013ba: u32 = r00000268 ^ r000013b9;\n" : String).toByteArray.data.toList
theorem checked4954 : bytes4954=statementBytes 5050 (op4954.map lower) ∧ bytes4954.length=48 := by core033_kernel_decide
def op4955 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4955 : Bytes := ("    let r000013bb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4955 : bytes4955=statementBytes 5051 (op4955.map lower) ∧ bytes4955.length=41 := by core033_kernel_decide
def op4956 : List WordIR.Op := [.bnot 5051]
def bytes4956 : Bytes := ("    let r000013bc: u32 = !r000013bb;\n" : String).toByteArray.data.toList
theorem checked4956 : bytes4956=statementBytes 5052 (op4956.map lower) ∧ bytes4956.length=37 := by core033_kernel_decide
def op4957 : List WordIR.Op := [.bxor 5050 5052]
def bytes4957 : Bytes := ("    let r000013bd: u32 = r000013ba ^ r000013bc;\n" : String).toByteArray.data.toList
theorem checked4957 : bytes4957=statementBytes 5053 (op4957.map lower) ∧ bytes4957.length=48 := by core033_kernel_decide
def op4958 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4958 : Bytes := ("    let r000013be: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4958 : bytes4958=statementBytes 5054 (op4958.map lower) ∧ bytes4958.length=41 := by core033_kernel_decide
def op4959 : List WordIR.Op := [.bxor 616 5054]
def bytes4959 : Bytes := ("    let r000013bf: u32 = r00000268 ^ r000013be;\n" : String).toByteArray.data.toList
theorem checked4959 : bytes4959=statementBytes 5055 (op4959.map lower) ∧ bytes4959.length=48 := by core033_kernel_decide
def op4960 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4960 : Bytes := ("    let r000013c0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4960 : bytes4960=statementBytes 5056 (op4960.map lower) ∧ bytes4960.length=41 := by core033_kernel_decide
def op4961 : List WordIR.Op := [.bnot 5056]
def bytes4961 : Bytes := ("    let r000013c1: u32 = !r000013c0;\n" : String).toByteArray.data.toList
theorem checked4961 : bytes4961=statementBytes 5057 (op4961.map lower) ∧ bytes4961.length=37 := by core033_kernel_decide
def op4962 : List WordIR.Op := [.badd 5055 5057]
def bytes4962 : Bytes := ("    let r000013c2: u32 = r000013bf.wrapping_add(r000013c1);\n" : String).toByteArray.data.toList
theorem checked4962 : bytes4962=statementBytes 5058 (op4962.map lower) ∧ bytes4962.length=60 := by core033_kernel_decide
def op4963 : List WordIR.Op := [.bnot 5058]
def bytes4963 : Bytes := ("    let r000013c3: u32 = !r000013c2;\n" : String).toByteArray.data.toList
theorem checked4963 : bytes4963=statementBytes 5059 (op4963.map lower) ∧ bytes4963.length=37 := by core033_kernel_decide
def op4964 : List WordIR.Op := [.band 5053 5059]
def bytes4964 : Bytes := ("    let r000013c4: u32 = r000013bd & r000013c3;\n" : String).toByteArray.data.toList
theorem checked4964 : bytes4964=statementBytes 5060 (op4964.map lower) ∧ bytes4964.length=48 := by core033_kernel_decide
def op4965 : List WordIR.Op := [.bxor 5048 5060]
def bytes4965 : Bytes := ("    let r000013c5: u32 = r000013b8 ^ r000013c4;\n" : String).toByteArray.data.toList
theorem checked4965 : bytes4965=statementBytes 5061 (op4965.map lower) ∧ bytes4965.length=48 := by core033_kernel_decide
def op4966 : List WordIR.Op := [.shr 5061 31]
def bytes4966 : Bytes := ("    let r000013c6: u32 = r000013c5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4966 : bytes4966=statementBytes 5062 (op4966.map lower) ∧ bytes4966.length=54 := by core033_kernel_decide
def op4967 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4967 : Bytes := ("    let r000013c7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4967 : bytes4967=statementBytes 5063 (op4967.map lower) ∧ bytes4967.length=41 := by core033_kernel_decide
def op4968 : List WordIR.Op := [.bxor 5062 5063]
def bytes4968 : Bytes := ("    let r000013c8: u32 = r000013c6 ^ r000013c7;\n" : String).toByteArray.data.toList
theorem checked4968 : bytes4968=statementBytes 5064 (op4968.map lower) ∧ bytes4968.length=48 := by core033_kernel_decide
def op4969 : List WordIR.Op := [.bnot 5064]
def bytes4969 : Bytes := ("    let r000013c9: u32 = !r000013c8;\n" : String).toByteArray.data.toList
theorem checked4969 : bytes4969=statementBytes 5065 (op4969.map lower) ∧ bytes4969.length=37 := by core033_kernel_decide
def op4970 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4970 : Bytes := ("    let r000013ca: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4970 : bytes4970=statementBytes 5066 (op4970.map lower) ∧ bytes4970.length=41 := by core033_kernel_decide
def op4971 : List WordIR.Op := [.badd 5065 5066]
def bytes4971 : Bytes := ("    let r000013cb: u32 = r000013c9.wrapping_add(r000013ca);\n" : String).toByteArray.data.toList
theorem checked4971 : bytes4971=statementBytes 5067 (op4971.map lower) ∧ bytes4971.length=60 := by core033_kernel_decide
def op4972 : List WordIR.Op := [.band 5067 2139]
def bytes4972 : Bytes := ("    let r000013cc: u32 = r000013cb & r0000085b;\n" : String).toByteArray.data.toList
theorem checked4972 : bytes4972=statementBytes 5068 (op4972.map lower) ∧ bytes4972.length=48 := by core033_kernel_decide
def op4973 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4973 : Bytes := ("    let r000013cd: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4973 : bytes4973=statementBytes 5069 (op4973.map lower) ∧ bytes4973.length=41 := by core033_kernel_decide
def op4974 : List WordIR.Op := [.bxor 616 5069]
def bytes4974 : Bytes := ("    let r000013ce: u32 = r00000268 ^ r000013cd;\n" : String).toByteArray.data.toList
theorem checked4974 : bytes4974=statementBytes 5070 (op4974.map lower) ∧ bytes4974.length=48 := by core033_kernel_decide
def op4975 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4975 : Bytes := ("    let r000013cf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4975 : bytes4975=statementBytes 5071 (op4975.map lower) ∧ bytes4975.length=41 := by core033_kernel_decide
def op4976 : List WordIR.Op := [.bnot 5071]
def bytes4976 : Bytes := ("    let r000013d0: u32 = !r000013cf;\n" : String).toByteArray.data.toList
theorem checked4976 : bytes4976=statementBytes 5072 (op4976.map lower) ∧ bytes4976.length=37 := by core033_kernel_decide
def op4977 : List WordIR.Op := [.band 5070 5072]
def bytes4977 : Bytes := ("    let r000013d1: u32 = r000013ce & r000013d0;\n" : String).toByteArray.data.toList
theorem checked4977 : bytes4977=statementBytes 5073 (op4977.map lower) ∧ bytes4977.length=48 := by core033_kernel_decide
def op4978 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4978 : Bytes := ("    let r000013d2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4978 : bytes4978=statementBytes 5074 (op4978.map lower) ∧ bytes4978.length=41 := by core033_kernel_decide
def op4979 : List WordIR.Op := [.bxor 616 5074]
def bytes4979 : Bytes := ("    let r000013d3: u32 = r00000268 ^ r000013d2;\n" : String).toByteArray.data.toList
theorem checked4979 : bytes4979=statementBytes 5075 (op4979.map lower) ∧ bytes4979.length=48 := by core033_kernel_decide
def op4980 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4980 : Bytes := ("    let r000013d4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4980 : bytes4980=statementBytes 5076 (op4980.map lower) ∧ bytes4980.length=41 := by core033_kernel_decide
def op4981 : List WordIR.Op := [.bnot 5076]
def bytes4981 : Bytes := ("    let r000013d5: u32 = !r000013d4;\n" : String).toByteArray.data.toList
theorem checked4981 : bytes4981=statementBytes 5077 (op4981.map lower) ∧ bytes4981.length=37 := by core033_kernel_decide
def op4982 : List WordIR.Op := [.bxor 5075 5077]
def bytes4982 : Bytes := ("    let r000013d6: u32 = r000013d3 ^ r000013d5;\n" : String).toByteArray.data.toList
theorem checked4982 : bytes4982=statementBytes 5078 (op4982.map lower) ∧ bytes4982.length=48 := by core033_kernel_decide
def op4983 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4983 : Bytes := ("    let r000013d7: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4983 : bytes4983=statementBytes 5079 (op4983.map lower) ∧ bytes4983.length=41 := by core033_kernel_decide
def op4984 : List WordIR.Op := [.bxor 616 5079]
def bytes4984 : Bytes := ("    let r000013d8: u32 = r00000268 ^ r000013d7;\n" : String).toByteArray.data.toList
theorem checked4984 : bytes4984=statementBytes 5080 (op4984.map lower) ∧ bytes4984.length=48 := by core033_kernel_decide
def op4985 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4985 : Bytes := ("    let r000013d9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4985 : bytes4985=statementBytes 5081 (op4985.map lower) ∧ bytes4985.length=41 := by core033_kernel_decide
def op4986 : List WordIR.Op := [.bnot 5081]
def bytes4986 : Bytes := ("    let r000013da: u32 = !r000013d9;\n" : String).toByteArray.data.toList
theorem checked4986 : bytes4986=statementBytes 5082 (op4986.map lower) ∧ bytes4986.length=37 := by core033_kernel_decide
def op4987 : List WordIR.Op := [.badd 5080 5082]
def bytes4987 : Bytes := ("    let r000013db: u32 = r000013d8.wrapping_add(r000013da);\n" : String).toByteArray.data.toList
theorem checked4987 : bytes4987=statementBytes 5083 (op4987.map lower) ∧ bytes4987.length=60 := by core033_kernel_decide
def op4988 : List WordIR.Op := [.bnot 5083]
def bytes4988 : Bytes := ("    let r000013dc: u32 = !r000013db;\n" : String).toByteArray.data.toList
theorem checked4988 : bytes4988=statementBytes 5084 (op4988.map lower) ∧ bytes4988.length=37 := by core033_kernel_decide
def op4989 : List WordIR.Op := [.band 5078 5084]
def bytes4989 : Bytes := ("    let r000013dd: u32 = r000013d6 & r000013dc;\n" : String).toByteArray.data.toList
theorem checked4989 : bytes4989=statementBytes 5085 (op4989.map lower) ∧ bytes4989.length=48 := by core033_kernel_decide
def op4990 : List WordIR.Op := [.bxor 5073 5085]
def bytes4990 : Bytes := ("    let r000013de: u32 = r000013d1 ^ r000013dd;\n" : String).toByteArray.data.toList
theorem checked4990 : bytes4990=statementBytes 5086 (op4990.map lower) ∧ bytes4990.length=48 := by core033_kernel_decide
def op4991 : List WordIR.Op := [.shr 5086 31]
def bytes4991 : Bytes := ("    let r000013df: u32 = r000013de >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked4991 : bytes4991=statementBytes 5087 (op4991.map lower) ∧ bytes4991.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4928,op4929,op4930,op4931,op4932,op4933,op4934,op4935,op4936,op4937,op4938,op4939,op4940,op4941,op4942,op4943,op4944,op4945,op4946,op4947,op4948,op4949,op4950,op4951,op4952,op4953,op4954,op4955,op4956,op4957,op4958,op4959,op4960,op4961,op4962,op4963,op4964,op4965,op4966,op4967,op4968,op4969,op4970,op4971,op4972,op4973,op4974,op4975,op4976,op4977,op4978,op4979,op4980,op4981,op4982,op4983,op4984,op4985,op4986,op4987,op4988,op4989,op4990,op4991]
def chunks : List Bytes := [bytes4928,bytes4929,bytes4930,bytes4931,bytes4932,bytes4933,bytes4934,bytes4935,bytes4936,bytes4937,bytes4938,bytes4939,bytes4940,bytes4941,bytes4942,bytes4943,bytes4944,bytes4945,bytes4946,bytes4947,bytes4948,bytes4949,bytes4950,bytes4951,bytes4952,bytes4953,bytes4954,bytes4955,bytes4956,bytes4957,bytes4958,bytes4959,bytes4960,bytes4961,bytes4962,bytes4963,bytes4964,bytes4965,bytes4966,bytes4967,bytes4968,bytes4969,bytes4970,bytes4971,bytes4972,bytes4973,bytes4974,bytes4975,bytes4976,bytes4977,bytes4978,bytes4979,bytes4980,bytes4981,bytes4982,bytes4983,bytes4984,bytes4985,bytes4986,bytes4987,bytes4988,bytes4989,bytes4990,bytes4991]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5024 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4928.1 (.cons _ _ _ _ _ checked4929.1 (.cons _ _ _ _ _ checked4930.1 (.cons _ _ _ _ _ checked4931.1 (.cons _ _ _ _ _ checked4932.1 (.cons _ _ _ _ _ checked4933.1 (.cons _ _ _ _ _ checked4934.1 (.cons _ _ _ _ _ checked4935.1 (.cons _ _ _ _ _ checked4936.1 (.cons _ _ _ _ _ checked4937.1 (.cons _ _ _ _ _ checked4938.1 (.cons _ _ _ _ _ checked4939.1 (.cons _ _ _ _ _ checked4940.1 (.cons _ _ _ _ _ checked4941.1 (.cons _ _ _ _ _ checked4942.1 (.cons _ _ _ _ _ checked4943.1 (.cons _ _ _ _ _ checked4944.1 (.cons _ _ _ _ _ checked4945.1 (.cons _ _ _ _ _ checked4946.1 (.cons _ _ _ _ _ checked4947.1 (.cons _ _ _ _ _ checked4948.1 (.cons _ _ _ _ _ checked4949.1 (.cons _ _ _ _ _ checked4950.1 (.cons _ _ _ _ _ checked4951.1 (.cons _ _ _ _ _ checked4952.1 (.cons _ _ _ _ _ checked4953.1 (.cons _ _ _ _ _ checked4954.1 (.cons _ _ _ _ _ checked4955.1 (.cons _ _ _ _ _ checked4956.1 (.cons _ _ _ _ _ checked4957.1 (.cons _ _ _ _ _ checked4958.1 (.cons _ _ _ _ _ checked4959.1 (.cons _ _ _ _ _ checked4960.1 (.cons _ _ _ _ _ checked4961.1 (.cons _ _ _ _ _ checked4962.1 (.cons _ _ _ _ _ checked4963.1 (.cons _ _ _ _ _ checked4964.1 (.cons _ _ _ _ _ checked4965.1 (.cons _ _ _ _ _ checked4966.1 (.cons _ _ _ _ _ checked4967.1 (.cons _ _ _ _ _ checked4968.1 (.cons _ _ _ _ _ checked4969.1 (.cons _ _ _ _ _ checked4970.1 (.cons _ _ _ _ _ checked4971.1 (.cons _ _ _ _ _ checked4972.1 (.cons _ _ _ _ _ checked4973.1 (.cons _ _ _ _ _ checked4974.1 (.cons _ _ _ _ _ checked4975.1 (.cons _ _ _ _ _ checked4976.1 (.cons _ _ _ _ _ checked4977.1 (.cons _ _ _ _ _ checked4978.1 (.cons _ _ _ _ _ checked4979.1 (.cons _ _ _ _ _ checked4980.1 (.cons _ _ _ _ _ checked4981.1 (.cons _ _ _ _ _ checked4982.1 (.cons _ _ _ _ _ checked4983.1 (.cons _ _ _ _ _ checked4984.1 (.cons _ _ _ _ _ checked4985.1 (.cons _ _ _ _ _ checked4986.1 (.cons _ _ _ _ _ checked4987.1 (.cons _ _ _ _ _ checked4988.1 (.cons _ _ _ _ _ checked4989.1 (.cons _ _ _ _ _ checked4990.1 (.cons _ _ _ _ _ checked4991.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5024 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4928.2,checked4929.2,checked4930.2,checked4931.2,checked4932.2,checked4933.2,checked4934.2,checked4935.2,checked4936.2,checked4937.2,checked4938.2,checked4939.2,checked4940.2,checked4941.2,checked4942.2,checked4943.2,checked4944.2,checked4945.2,checked4946.2,checked4947.2,checked4948.2,checked4949.2,checked4950.2,checked4951.2,checked4952.2,checked4953.2,checked4954.2,checked4955.2,checked4956.2,checked4957.2,checked4958.2,checked4959.2,checked4960.2,checked4961.2,checked4962.2,checked4963.2,checked4964.2,checked4965.2,checked4966.2,checked4967.2,checked4968.2,checked4969.2,checked4970.2,checked4971.2,checked4972.2,checked4973.2,checked4974.2,checked4975.2,checked4976.2,checked4977.2,checked4978.2,checked4979.2,checked4980.2,checked4981.2,checked4982.2,checked4983.2,checked4984.2,checked4985.2,checked4986.2,checked4987.2,checked4988.2,checked4989.2,checked4990.2,checked4991.2]
  decide
end ArtifactPairedPathRoundGroup77
