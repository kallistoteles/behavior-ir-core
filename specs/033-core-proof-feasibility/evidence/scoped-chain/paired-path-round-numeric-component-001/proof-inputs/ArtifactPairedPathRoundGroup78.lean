import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup78
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4992 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4992 : Bytes := ("    let r000013e0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4992 : bytes4992=statementBytes 5088 (op4992.map lower) ∧ bytes4992.length=41 := by core033_kernel_decide
def op4993 : List WordIR.Op := [.bxor 5087 5088]
def bytes4993 : Bytes := ("    let r000013e1: u32 = r000013df ^ r000013e0;\n" : String).toByteArray.data.toList
theorem checked4993 : bytes4993=statementBytes 5089 (op4993.map lower) ∧ bytes4993.length=48 := by core033_kernel_decide
def op4994 : List WordIR.Op := [.bnot 5089]
def bytes4994 : Bytes := ("    let r000013e2: u32 = !r000013e1;\n" : String).toByteArray.data.toList
theorem checked4994 : bytes4994=statementBytes 5090 (op4994.map lower) ∧ bytes4994.length=37 := by core033_kernel_decide
def op4995 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes4995 : Bytes := ("    let r000013e3: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked4995 : bytes4995=statementBytes 5091 (op4995.map lower) ∧ bytes4995.length=41 := by core033_kernel_decide
def op4996 : List WordIR.Op := [.badd 5090 5091]
def bytes4996 : Bytes := ("    let r000013e4: u32 = r000013e2.wrapping_add(r000013e3);\n" : String).toByteArray.data.toList
theorem checked4996 : bytes4996=statementBytes 5092 (op4996.map lower) ∧ bytes4996.length=60 := by core033_kernel_decide
def op4997 : List WordIR.Op := [.bnot 5092]
def bytes4997 : Bytes := ("    let r000013e5: u32 = !r000013e4;\n" : String).toByteArray.data.toList
theorem checked4997 : bytes4997=statementBytes 5093 (op4997.map lower) ∧ bytes4997.length=37 := by core033_kernel_decide
def op4998 : List WordIR.Op := [.band 5093 1947]
def bytes4998 : Bytes := ("    let r000013e6: u32 = r000013e5 & r0000079b;\n" : String).toByteArray.data.toList
theorem checked4998 : bytes4998=statementBytes 5094 (op4998.map lower) ∧ bytes4998.length=48 := by core033_kernel_decide
def op4999 : List WordIR.Op := [.bxor 5068 5094]
def bytes4999 : Bytes := ("    let r000013e7: u32 = r000013cc ^ r000013e6;\n" : String).toByteArray.data.toList
theorem checked4999 : bytes4999=statementBytes 5095 (op4999.map lower) ∧ bytes4999.length=48 := by core033_kernel_decide
def op5000 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5000 : Bytes := ("    let r000013e8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5000 : bytes5000=statementBytes 5096 (op5000.map lower) ∧ bytes5000.length=41 := by core033_kernel_decide
def op5001 : List WordIR.Op := [.bxor 616 5096]
def bytes5001 : Bytes := ("    let r000013e9: u32 = r00000268 ^ r000013e8;\n" : String).toByteArray.data.toList
theorem checked5001 : bytes5001=statementBytes 5097 (op5001.map lower) ∧ bytes5001.length=48 := by core033_kernel_decide
def op5002 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5002 : Bytes := ("    let r000013ea: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5002 : bytes5002=statementBytes 5098 (op5002.map lower) ∧ bytes5002.length=41 := by core033_kernel_decide
def op5003 : List WordIR.Op := [.bnot 5098]
def bytes5003 : Bytes := ("    let r000013eb: u32 = !r000013ea;\n" : String).toByteArray.data.toList
theorem checked5003 : bytes5003=statementBytes 5099 (op5003.map lower) ∧ bytes5003.length=37 := by core033_kernel_decide
def op5004 : List WordIR.Op := [.band 5097 5099]
def bytes5004 : Bytes := ("    let r000013ec: u32 = r000013e9 & r000013eb;\n" : String).toByteArray.data.toList
theorem checked5004 : bytes5004=statementBytes 5100 (op5004.map lower) ∧ bytes5004.length=48 := by core033_kernel_decide
def op5005 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5005 : Bytes := ("    let r000013ed: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5005 : bytes5005=statementBytes 5101 (op5005.map lower) ∧ bytes5005.length=41 := by core033_kernel_decide
def op5006 : List WordIR.Op := [.bxor 616 5101]
def bytes5006 : Bytes := ("    let r000013ee: u32 = r00000268 ^ r000013ed;\n" : String).toByteArray.data.toList
theorem checked5006 : bytes5006=statementBytes 5102 (op5006.map lower) ∧ bytes5006.length=48 := by core033_kernel_decide
def op5007 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5007 : Bytes := ("    let r000013ef: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5007 : bytes5007=statementBytes 5103 (op5007.map lower) ∧ bytes5007.length=41 := by core033_kernel_decide
def op5008 : List WordIR.Op := [.bnot 5103]
def bytes5008 : Bytes := ("    let r000013f0: u32 = !r000013ef;\n" : String).toByteArray.data.toList
theorem checked5008 : bytes5008=statementBytes 5104 (op5008.map lower) ∧ bytes5008.length=37 := by core033_kernel_decide
def op5009 : List WordIR.Op := [.bxor 5102 5104]
def bytes5009 : Bytes := ("    let r000013f1: u32 = r000013ee ^ r000013f0;\n" : String).toByteArray.data.toList
theorem checked5009 : bytes5009=statementBytes 5105 (op5009.map lower) ∧ bytes5009.length=48 := by core033_kernel_decide
def op5010 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5010 : Bytes := ("    let r000013f2: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5010 : bytes5010=statementBytes 5106 (op5010.map lower) ∧ bytes5010.length=41 := by core033_kernel_decide
def op5011 : List WordIR.Op := [.bxor 616 5106]
def bytes5011 : Bytes := ("    let r000013f3: u32 = r00000268 ^ r000013f2;\n" : String).toByteArray.data.toList
theorem checked5011 : bytes5011=statementBytes 5107 (op5011.map lower) ∧ bytes5011.length=48 := by core033_kernel_decide
def op5012 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5012 : Bytes := ("    let r000013f4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5012 : bytes5012=statementBytes 5108 (op5012.map lower) ∧ bytes5012.length=41 := by core033_kernel_decide
def op5013 : List WordIR.Op := [.bnot 5108]
def bytes5013 : Bytes := ("    let r000013f5: u32 = !r000013f4;\n" : String).toByteArray.data.toList
theorem checked5013 : bytes5013=statementBytes 5109 (op5013.map lower) ∧ bytes5013.length=37 := by core033_kernel_decide
def op5014 : List WordIR.Op := [.badd 5107 5109]
def bytes5014 : Bytes := ("    let r000013f6: u32 = r000013f3.wrapping_add(r000013f5);\n" : String).toByteArray.data.toList
theorem checked5014 : bytes5014=statementBytes 5110 (op5014.map lower) ∧ bytes5014.length=60 := by core033_kernel_decide
def op5015 : List WordIR.Op := [.bnot 5110]
def bytes5015 : Bytes := ("    let r000013f7: u32 = !r000013f6;\n" : String).toByteArray.data.toList
theorem checked5015 : bytes5015=statementBytes 5111 (op5015.map lower) ∧ bytes5015.length=37 := by core033_kernel_decide
def op5016 : List WordIR.Op := [.band 5105 5111]
def bytes5016 : Bytes := ("    let r000013f8: u32 = r000013f1 & r000013f7;\n" : String).toByteArray.data.toList
theorem checked5016 : bytes5016=statementBytes 5112 (op5016.map lower) ∧ bytes5016.length=48 := by core033_kernel_decide
def op5017 : List WordIR.Op := [.bxor 5100 5112]
def bytes5017 : Bytes := ("    let r000013f9: u32 = r000013ec ^ r000013f8;\n" : String).toByteArray.data.toList
theorem checked5017 : bytes5017=statementBytes 5113 (op5017.map lower) ∧ bytes5017.length=48 := by core033_kernel_decide
def op5018 : List WordIR.Op := [.shr 5113 31]
def bytes5018 : Bytes := ("    let r000013fa: u32 = r000013f9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5018 : bytes5018=statementBytes 5114 (op5018.map lower) ∧ bytes5018.length=54 := by core033_kernel_decide
def op5019 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5019 : Bytes := ("    let r000013fb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5019 : bytes5019=statementBytes 5115 (op5019.map lower) ∧ bytes5019.length=41 := by core033_kernel_decide
def op5020 : List WordIR.Op := [.bxor 5114 5115]
def bytes5020 : Bytes := ("    let r000013fc: u32 = r000013fa ^ r000013fb;\n" : String).toByteArray.data.toList
theorem checked5020 : bytes5020=statementBytes 5116 (op5020.map lower) ∧ bytes5020.length=48 := by core033_kernel_decide
def op5021 : List WordIR.Op := [.bnot 5116]
def bytes5021 : Bytes := ("    let r000013fd: u32 = !r000013fc;\n" : String).toByteArray.data.toList
theorem checked5021 : bytes5021=statementBytes 5117 (op5021.map lower) ∧ bytes5021.length=37 := by core033_kernel_decide
def op5022 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5022 : Bytes := ("    let r000013fe: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5022 : bytes5022=statementBytes 5118 (op5022.map lower) ∧ bytes5022.length=41 := by core033_kernel_decide
def op5023 : List WordIR.Op := [.badd 5117 5118]
def bytes5023 : Bytes := ("    let r000013ff: u32 = r000013fd.wrapping_add(r000013fe);\n" : String).toByteArray.data.toList
theorem checked5023 : bytes5023=statementBytes 5119 (op5023.map lower) ∧ bytes5023.length=60 := by core033_kernel_decide
def op5024 : List WordIR.Op := [.band 5119 2142]
def bytes5024 : Bytes := ("    let r00001400: u32 = r000013ff & r0000085e;\n" : String).toByteArray.data.toList
theorem checked5024 : bytes5024=statementBytes 5120 (op5024.map lower) ∧ bytes5024.length=48 := by core033_kernel_decide
def op5025 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5025 : Bytes := ("    let r00001401: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5025 : bytes5025=statementBytes 5121 (op5025.map lower) ∧ bytes5025.length=41 := by core033_kernel_decide
def op5026 : List WordIR.Op := [.bxor 616 5121]
def bytes5026 : Bytes := ("    let r00001402: u32 = r00000268 ^ r00001401;\n" : String).toByteArray.data.toList
theorem checked5026 : bytes5026=statementBytes 5122 (op5026.map lower) ∧ bytes5026.length=48 := by core033_kernel_decide
def op5027 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5027 : Bytes := ("    let r00001403: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5027 : bytes5027=statementBytes 5123 (op5027.map lower) ∧ bytes5027.length=41 := by core033_kernel_decide
def op5028 : List WordIR.Op := [.bnot 5123]
def bytes5028 : Bytes := ("    let r00001404: u32 = !r00001403;\n" : String).toByteArray.data.toList
theorem checked5028 : bytes5028=statementBytes 5124 (op5028.map lower) ∧ bytes5028.length=37 := by core033_kernel_decide
def op5029 : List WordIR.Op := [.band 5122 5124]
def bytes5029 : Bytes := ("    let r00001405: u32 = r00001402 & r00001404;\n" : String).toByteArray.data.toList
theorem checked5029 : bytes5029=statementBytes 5125 (op5029.map lower) ∧ bytes5029.length=48 := by core033_kernel_decide
def op5030 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5030 : Bytes := ("    let r00001406: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5030 : bytes5030=statementBytes 5126 (op5030.map lower) ∧ bytes5030.length=41 := by core033_kernel_decide
def op5031 : List WordIR.Op := [.bxor 616 5126]
def bytes5031 : Bytes := ("    let r00001407: u32 = r00000268 ^ r00001406;\n" : String).toByteArray.data.toList
theorem checked5031 : bytes5031=statementBytes 5127 (op5031.map lower) ∧ bytes5031.length=48 := by core033_kernel_decide
def op5032 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5032 : Bytes := ("    let r00001408: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5032 : bytes5032=statementBytes 5128 (op5032.map lower) ∧ bytes5032.length=41 := by core033_kernel_decide
def op5033 : List WordIR.Op := [.bnot 5128]
def bytes5033 : Bytes := ("    let r00001409: u32 = !r00001408;\n" : String).toByteArray.data.toList
theorem checked5033 : bytes5033=statementBytes 5129 (op5033.map lower) ∧ bytes5033.length=37 := by core033_kernel_decide
def op5034 : List WordIR.Op := [.bxor 5127 5129]
def bytes5034 : Bytes := ("    let r0000140a: u32 = r00001407 ^ r00001409;\n" : String).toByteArray.data.toList
theorem checked5034 : bytes5034=statementBytes 5130 (op5034.map lower) ∧ bytes5034.length=48 := by core033_kernel_decide
def op5035 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5035 : Bytes := ("    let r0000140b: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5035 : bytes5035=statementBytes 5131 (op5035.map lower) ∧ bytes5035.length=41 := by core033_kernel_decide
def op5036 : List WordIR.Op := [.bxor 616 5131]
def bytes5036 : Bytes := ("    let r0000140c: u32 = r00000268 ^ r0000140b;\n" : String).toByteArray.data.toList
theorem checked5036 : bytes5036=statementBytes 5132 (op5036.map lower) ∧ bytes5036.length=48 := by core033_kernel_decide
def op5037 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5037 : Bytes := ("    let r0000140d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5037 : bytes5037=statementBytes 5133 (op5037.map lower) ∧ bytes5037.length=41 := by core033_kernel_decide
def op5038 : List WordIR.Op := [.bnot 5133]
def bytes5038 : Bytes := ("    let r0000140e: u32 = !r0000140d;\n" : String).toByteArray.data.toList
theorem checked5038 : bytes5038=statementBytes 5134 (op5038.map lower) ∧ bytes5038.length=37 := by core033_kernel_decide
def op5039 : List WordIR.Op := [.badd 5132 5134]
def bytes5039 : Bytes := ("    let r0000140f: u32 = r0000140c.wrapping_add(r0000140e);\n" : String).toByteArray.data.toList
theorem checked5039 : bytes5039=statementBytes 5135 (op5039.map lower) ∧ bytes5039.length=60 := by core033_kernel_decide
def op5040 : List WordIR.Op := [.bnot 5135]
def bytes5040 : Bytes := ("    let r00001410: u32 = !r0000140f;\n" : String).toByteArray.data.toList
theorem checked5040 : bytes5040=statementBytes 5136 (op5040.map lower) ∧ bytes5040.length=37 := by core033_kernel_decide
def op5041 : List WordIR.Op := [.band 5130 5136]
def bytes5041 : Bytes := ("    let r00001411: u32 = r0000140a & r00001410;\n" : String).toByteArray.data.toList
theorem checked5041 : bytes5041=statementBytes 5137 (op5041.map lower) ∧ bytes5041.length=48 := by core033_kernel_decide
def op5042 : List WordIR.Op := [.bxor 5125 5137]
def bytes5042 : Bytes := ("    let r00001412: u32 = r00001405 ^ r00001411;\n" : String).toByteArray.data.toList
theorem checked5042 : bytes5042=statementBytes 5138 (op5042.map lower) ∧ bytes5042.length=48 := by core033_kernel_decide
def op5043 : List WordIR.Op := [.shr 5138 31]
def bytes5043 : Bytes := ("    let r00001413: u32 = r00001412 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5043 : bytes5043=statementBytes 5139 (op5043.map lower) ∧ bytes5043.length=54 := by core033_kernel_decide
def op5044 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5044 : Bytes := ("    let r00001414: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5044 : bytes5044=statementBytes 5140 (op5044.map lower) ∧ bytes5044.length=41 := by core033_kernel_decide
def op5045 : List WordIR.Op := [.bxor 5139 5140]
def bytes5045 : Bytes := ("    let r00001415: u32 = r00001413 ^ r00001414;\n" : String).toByteArray.data.toList
theorem checked5045 : bytes5045=statementBytes 5141 (op5045.map lower) ∧ bytes5045.length=48 := by core033_kernel_decide
def op5046 : List WordIR.Op := [.bnot 5141]
def bytes5046 : Bytes := ("    let r00001416: u32 = !r00001415;\n" : String).toByteArray.data.toList
theorem checked5046 : bytes5046=statementBytes 5142 (op5046.map lower) ∧ bytes5046.length=37 := by core033_kernel_decide
def op5047 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5047 : Bytes := ("    let r00001417: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5047 : bytes5047=statementBytes 5143 (op5047.map lower) ∧ bytes5047.length=41 := by core033_kernel_decide
def op5048 : List WordIR.Op := [.badd 5142 5143]
def bytes5048 : Bytes := ("    let r00001418: u32 = r00001416.wrapping_add(r00001417);\n" : String).toByteArray.data.toList
theorem checked5048 : bytes5048=statementBytes 5144 (op5048.map lower) ∧ bytes5048.length=60 := by core033_kernel_decide
def op5049 : List WordIR.Op := [.bnot 5144]
def bytes5049 : Bytes := ("    let r00001419: u32 = !r00001418;\n" : String).toByteArray.data.toList
theorem checked5049 : bytes5049=statementBytes 5145 (op5049.map lower) ∧ bytes5049.length=37 := by core033_kernel_decide
def op5050 : List WordIR.Op := [.band 5145 1950]
def bytes5050 : Bytes := ("    let r0000141a: u32 = r00001419 & r0000079e;\n" : String).toByteArray.data.toList
theorem checked5050 : bytes5050=statementBytes 5146 (op5050.map lower) ∧ bytes5050.length=48 := by core033_kernel_decide
def op5051 : List WordIR.Op := [.bxor 5120 5146]
def bytes5051 : Bytes := ("    let r0000141b: u32 = r00001400 ^ r0000141a;\n" : String).toByteArray.data.toList
theorem checked5051 : bytes5051=statementBytes 5147 (op5051.map lower) ∧ bytes5051.length=48 := by core033_kernel_decide
def op5052 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5052 : Bytes := ("    let r0000141c: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5052 : bytes5052=statementBytes 5148 (op5052.map lower) ∧ bytes5052.length=41 := by core033_kernel_decide
def op5053 : List WordIR.Op := [.bxor 616 5148]
def bytes5053 : Bytes := ("    let r0000141d: u32 = r00000268 ^ r0000141c;\n" : String).toByteArray.data.toList
theorem checked5053 : bytes5053=statementBytes 5149 (op5053.map lower) ∧ bytes5053.length=48 := by core033_kernel_decide
def op5054 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5054 : Bytes := ("    let r0000141e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5054 : bytes5054=statementBytes 5150 (op5054.map lower) ∧ bytes5054.length=41 := by core033_kernel_decide
def op5055 : List WordIR.Op := [.bnot 5150]
def bytes5055 : Bytes := ("    let r0000141f: u32 = !r0000141e;\n" : String).toByteArray.data.toList
theorem checked5055 : bytes5055=statementBytes 5151 (op5055.map lower) ∧ bytes5055.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4992,op4993,op4994,op4995,op4996,op4997,op4998,op4999,op5000,op5001,op5002,op5003,op5004,op5005,op5006,op5007,op5008,op5009,op5010,op5011,op5012,op5013,op5014,op5015,op5016,op5017,op5018,op5019,op5020,op5021,op5022,op5023,op5024,op5025,op5026,op5027,op5028,op5029,op5030,op5031,op5032,op5033,op5034,op5035,op5036,op5037,op5038,op5039,op5040,op5041,op5042,op5043,op5044,op5045,op5046,op5047,op5048,op5049,op5050,op5051,op5052,op5053,op5054,op5055]
def chunks : List Bytes := [bytes4992,bytes4993,bytes4994,bytes4995,bytes4996,bytes4997,bytes4998,bytes4999,bytes5000,bytes5001,bytes5002,bytes5003,bytes5004,bytes5005,bytes5006,bytes5007,bytes5008,bytes5009,bytes5010,bytes5011,bytes5012,bytes5013,bytes5014,bytes5015,bytes5016,bytes5017,bytes5018,bytes5019,bytes5020,bytes5021,bytes5022,bytes5023,bytes5024,bytes5025,bytes5026,bytes5027,bytes5028,bytes5029,bytes5030,bytes5031,bytes5032,bytes5033,bytes5034,bytes5035,bytes5036,bytes5037,bytes5038,bytes5039,bytes5040,bytes5041,bytes5042,bytes5043,bytes5044,bytes5045,bytes5046,bytes5047,bytes5048,bytes5049,bytes5050,bytes5051,bytes5052,bytes5053,bytes5054,bytes5055]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5088 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4992.1 (.cons _ _ _ _ _ checked4993.1 (.cons _ _ _ _ _ checked4994.1 (.cons _ _ _ _ _ checked4995.1 (.cons _ _ _ _ _ checked4996.1 (.cons _ _ _ _ _ checked4997.1 (.cons _ _ _ _ _ checked4998.1 (.cons _ _ _ _ _ checked4999.1 (.cons _ _ _ _ _ checked5000.1 (.cons _ _ _ _ _ checked5001.1 (.cons _ _ _ _ _ checked5002.1 (.cons _ _ _ _ _ checked5003.1 (.cons _ _ _ _ _ checked5004.1 (.cons _ _ _ _ _ checked5005.1 (.cons _ _ _ _ _ checked5006.1 (.cons _ _ _ _ _ checked5007.1 (.cons _ _ _ _ _ checked5008.1 (.cons _ _ _ _ _ checked5009.1 (.cons _ _ _ _ _ checked5010.1 (.cons _ _ _ _ _ checked5011.1 (.cons _ _ _ _ _ checked5012.1 (.cons _ _ _ _ _ checked5013.1 (.cons _ _ _ _ _ checked5014.1 (.cons _ _ _ _ _ checked5015.1 (.cons _ _ _ _ _ checked5016.1 (.cons _ _ _ _ _ checked5017.1 (.cons _ _ _ _ _ checked5018.1 (.cons _ _ _ _ _ checked5019.1 (.cons _ _ _ _ _ checked5020.1 (.cons _ _ _ _ _ checked5021.1 (.cons _ _ _ _ _ checked5022.1 (.cons _ _ _ _ _ checked5023.1 (.cons _ _ _ _ _ checked5024.1 (.cons _ _ _ _ _ checked5025.1 (.cons _ _ _ _ _ checked5026.1 (.cons _ _ _ _ _ checked5027.1 (.cons _ _ _ _ _ checked5028.1 (.cons _ _ _ _ _ checked5029.1 (.cons _ _ _ _ _ checked5030.1 (.cons _ _ _ _ _ checked5031.1 (.cons _ _ _ _ _ checked5032.1 (.cons _ _ _ _ _ checked5033.1 (.cons _ _ _ _ _ checked5034.1 (.cons _ _ _ _ _ checked5035.1 (.cons _ _ _ _ _ checked5036.1 (.cons _ _ _ _ _ checked5037.1 (.cons _ _ _ _ _ checked5038.1 (.cons _ _ _ _ _ checked5039.1 (.cons _ _ _ _ _ checked5040.1 (.cons _ _ _ _ _ checked5041.1 (.cons _ _ _ _ _ checked5042.1 (.cons _ _ _ _ _ checked5043.1 (.cons _ _ _ _ _ checked5044.1 (.cons _ _ _ _ _ checked5045.1 (.cons _ _ _ _ _ checked5046.1 (.cons _ _ _ _ _ checked5047.1 (.cons _ _ _ _ _ checked5048.1 (.cons _ _ _ _ _ checked5049.1 (.cons _ _ _ _ _ checked5050.1 (.cons _ _ _ _ _ checked5051.1 (.cons _ _ _ _ _ checked5052.1 (.cons _ _ _ _ _ checked5053.1 (.cons _ _ _ _ _ checked5054.1 (.cons _ _ _ _ _ checked5055.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5088 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2850 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4992.2,checked4993.2,checked4994.2,checked4995.2,checked4996.2,checked4997.2,checked4998.2,checked4999.2,checked5000.2,checked5001.2,checked5002.2,checked5003.2,checked5004.2,checked5005.2,checked5006.2,checked5007.2,checked5008.2,checked5009.2,checked5010.2,checked5011.2,checked5012.2,checked5013.2,checked5014.2,checked5015.2,checked5016.2,checked5017.2,checked5018.2,checked5019.2,checked5020.2,checked5021.2,checked5022.2,checked5023.2,checked5024.2,checked5025.2,checked5026.2,checked5027.2,checked5028.2,checked5029.2,checked5030.2,checked5031.2,checked5032.2,checked5033.2,checked5034.2,checked5035.2,checked5036.2,checked5037.2,checked5038.2,checked5039.2,checked5040.2,checked5041.2,checked5042.2,checked5043.2,checked5044.2,checked5045.2,checked5046.2,checked5047.2,checked5048.2,checked5049.2,checked5050.2,checked5051.2,checked5052.2,checked5053.2,checked5054.2,checked5055.2]
  decide
end ArtifactPairedPathRoundGroup78
