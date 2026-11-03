import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup78
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op4992 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4992 : Bytes := ("    let r000013f6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4992 : bytes4992=statementBytes 5110 (op4992.map lower) ∧ bytes4992.length=41 := by core033_kernel_decide
def op4993 : List WordIR.Op := [.bnot 5110]
def bytes4993 : Bytes := ("    let r000013f7: u32 = !r000013f6;\n" : String).toByteArray.data.toList
theorem checked4993 : bytes4993=statementBytes 5111 (op4993.map lower) ∧ bytes4993.length=37 := by core033_kernel_decide
def op4994 : List WordIR.Op := [.bxor 5109 5111]
def bytes4994 : Bytes := ("    let r000013f8: u32 = r000013f5 ^ r000013f7;\n" : String).toByteArray.data.toList
theorem checked4994 : bytes4994=statementBytes 5112 (op4994.map lower) ∧ bytes4994.length=48 := by core033_kernel_decide
def op4995 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes4995 : Bytes := ("    let r000013f9: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked4995 : bytes4995=statementBytes 5113 (op4995.map lower) ∧ bytes4995.length=41 := by core033_kernel_decide
def op4996 : List WordIR.Op := [.bxor 1299 5113]
def bytes4996 : Bytes := ("    let r000013fa: u32 = r00000513 ^ r000013f9;\n" : String).toByteArray.data.toList
theorem checked4996 : bytes4996=statementBytes 5114 (op4996.map lower) ∧ bytes4996.length=48 := by core033_kernel_decide
def op4997 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes4997 : Bytes := ("    let r000013fb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked4997 : bytes4997=statementBytes 5115 (op4997.map lower) ∧ bytes4997.length=41 := by core033_kernel_decide
def op4998 : List WordIR.Op := [.bnot 5115]
def bytes4998 : Bytes := ("    let r000013fc: u32 = !r000013fb;\n" : String).toByteArray.data.toList
theorem checked4998 : bytes4998=statementBytes 5116 (op4998.map lower) ∧ bytes4998.length=37 := by core033_kernel_decide
def op4999 : List WordIR.Op := [.badd 5114 5116]
def bytes4999 : Bytes := ("    let r000013fd: u32 = r000013fa.wrapping_add(r000013fc);\n" : String).toByteArray.data.toList
theorem checked4999 : bytes4999=statementBytes 5117 (op4999.map lower) ∧ bytes4999.length=60 := by core033_kernel_decide
def op5000 : List WordIR.Op := [.bnot 5117]
def bytes5000 : Bytes := ("    let r000013fe: u32 = !r000013fd;\n" : String).toByteArray.data.toList
theorem checked5000 : bytes5000=statementBytes 5118 (op5000.map lower) ∧ bytes5000.length=37 := by core033_kernel_decide
def op5001 : List WordIR.Op := [.band 5112 5118]
def bytes5001 : Bytes := ("    let r000013ff: u32 = r000013f8 & r000013fe;\n" : String).toByteArray.data.toList
theorem checked5001 : bytes5001=statementBytes 5119 (op5001.map lower) ∧ bytes5001.length=48 := by core033_kernel_decide
def op5002 : List WordIR.Op := [.bxor 5107 5119]
def bytes5002 : Bytes := ("    let r00001400: u32 = r000013f3 ^ r000013ff;\n" : String).toByteArray.data.toList
theorem checked5002 : bytes5002=statementBytes 5120 (op5002.map lower) ∧ bytes5002.length=48 := by core033_kernel_decide
def op5003 : List WordIR.Op := [.shr 5120 31]
def bytes5003 : Bytes := ("    let r00001401: u32 = r00001400 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5003 : bytes5003=statementBytes 5121 (op5003.map lower) ∧ bytes5003.length=54 := by core033_kernel_decide
def op5004 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5004 : Bytes := ("    let r00001402: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5004 : bytes5004=statementBytes 5122 (op5004.map lower) ∧ bytes5004.length=41 := by core033_kernel_decide
def op5005 : List WordIR.Op := [.bxor 5121 5122]
def bytes5005 : Bytes := ("    let r00001403: u32 = r00001401 ^ r00001402;\n" : String).toByteArray.data.toList
theorem checked5005 : bytes5005=statementBytes 5123 (op5005.map lower) ∧ bytes5005.length=48 := by core033_kernel_decide
def op5006 : List WordIR.Op := [.bnot 5123]
def bytes5006 : Bytes := ("    let r00001404: u32 = !r00001403;\n" : String).toByteArray.data.toList
theorem checked5006 : bytes5006=statementBytes 5124 (op5006.map lower) ∧ bytes5006.length=37 := by core033_kernel_decide
def op5007 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5007 : Bytes := ("    let r00001405: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5007 : bytes5007=statementBytes 5125 (op5007.map lower) ∧ bytes5007.length=41 := by core033_kernel_decide
def op5008 : List WordIR.Op := [.badd 5124 5125]
def bytes5008 : Bytes := ("    let r00001406: u32 = r00001404.wrapping_add(r00001405);\n" : String).toByteArray.data.toList
theorem checked5008 : bytes5008=statementBytes 5126 (op5008.map lower) ∧ bytes5008.length=60 := by core033_kernel_decide
def op5009 : List WordIR.Op := [.band 5126 2786]
def bytes5009 : Bytes := ("    let r00001407: u32 = r00001406 & r00000ae2;\n" : String).toByteArray.data.toList
theorem checked5009 : bytes5009=statementBytes 5127 (op5009.map lower) ∧ bytes5009.length=48 := by core033_kernel_decide
def op5010 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5010 : Bytes := ("    let r00001408: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5010 : bytes5010=statementBytes 5128 (op5010.map lower) ∧ bytes5010.length=41 := by core033_kernel_decide
def op5011 : List WordIR.Op := [.bxor 1299 5128]
def bytes5011 : Bytes := ("    let r00001409: u32 = r00000513 ^ r00001408;\n" : String).toByteArray.data.toList
theorem checked5011 : bytes5011=statementBytes 5129 (op5011.map lower) ∧ bytes5011.length=48 := by core033_kernel_decide
def op5012 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5012 : Bytes := ("    let r0000140a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5012 : bytes5012=statementBytes 5130 (op5012.map lower) ∧ bytes5012.length=41 := by core033_kernel_decide
def op5013 : List WordIR.Op := [.bnot 5130]
def bytes5013 : Bytes := ("    let r0000140b: u32 = !r0000140a;\n" : String).toByteArray.data.toList
theorem checked5013 : bytes5013=statementBytes 5131 (op5013.map lower) ∧ bytes5013.length=37 := by core033_kernel_decide
def op5014 : List WordIR.Op := [.band 5129 5131]
def bytes5014 : Bytes := ("    let r0000140c: u32 = r00001409 & r0000140b;\n" : String).toByteArray.data.toList
theorem checked5014 : bytes5014=statementBytes 5132 (op5014.map lower) ∧ bytes5014.length=48 := by core033_kernel_decide
def op5015 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5015 : Bytes := ("    let r0000140d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5015 : bytes5015=statementBytes 5133 (op5015.map lower) ∧ bytes5015.length=41 := by core033_kernel_decide
def op5016 : List WordIR.Op := [.bxor 1299 5133]
def bytes5016 : Bytes := ("    let r0000140e: u32 = r00000513 ^ r0000140d;\n" : String).toByteArray.data.toList
theorem checked5016 : bytes5016=statementBytes 5134 (op5016.map lower) ∧ bytes5016.length=48 := by core033_kernel_decide
def op5017 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5017 : Bytes := ("    let r0000140f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5017 : bytes5017=statementBytes 5135 (op5017.map lower) ∧ bytes5017.length=41 := by core033_kernel_decide
def op5018 : List WordIR.Op := [.bnot 5135]
def bytes5018 : Bytes := ("    let r00001410: u32 = !r0000140f;\n" : String).toByteArray.data.toList
theorem checked5018 : bytes5018=statementBytes 5136 (op5018.map lower) ∧ bytes5018.length=37 := by core033_kernel_decide
def op5019 : List WordIR.Op := [.bxor 5134 5136]
def bytes5019 : Bytes := ("    let r00001411: u32 = r0000140e ^ r00001410;\n" : String).toByteArray.data.toList
theorem checked5019 : bytes5019=statementBytes 5137 (op5019.map lower) ∧ bytes5019.length=48 := by core033_kernel_decide
def op5020 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5020 : Bytes := ("    let r00001412: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5020 : bytes5020=statementBytes 5138 (op5020.map lower) ∧ bytes5020.length=41 := by core033_kernel_decide
def op5021 : List WordIR.Op := [.bxor 1299 5138]
def bytes5021 : Bytes := ("    let r00001413: u32 = r00000513 ^ r00001412;\n" : String).toByteArray.data.toList
theorem checked5021 : bytes5021=statementBytes 5139 (op5021.map lower) ∧ bytes5021.length=48 := by core033_kernel_decide
def op5022 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5022 : Bytes := ("    let r00001414: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5022 : bytes5022=statementBytes 5140 (op5022.map lower) ∧ bytes5022.length=41 := by core033_kernel_decide
def op5023 : List WordIR.Op := [.bnot 5140]
def bytes5023 : Bytes := ("    let r00001415: u32 = !r00001414;\n" : String).toByteArray.data.toList
theorem checked5023 : bytes5023=statementBytes 5141 (op5023.map lower) ∧ bytes5023.length=37 := by core033_kernel_decide
def op5024 : List WordIR.Op := [.badd 5139 5141]
def bytes5024 : Bytes := ("    let r00001416: u32 = r00001413.wrapping_add(r00001415);\n" : String).toByteArray.data.toList
theorem checked5024 : bytes5024=statementBytes 5142 (op5024.map lower) ∧ bytes5024.length=60 := by core033_kernel_decide
def op5025 : List WordIR.Op := [.bnot 5142]
def bytes5025 : Bytes := ("    let r00001417: u32 = !r00001416;\n" : String).toByteArray.data.toList
theorem checked5025 : bytes5025=statementBytes 5143 (op5025.map lower) ∧ bytes5025.length=37 := by core033_kernel_decide
def op5026 : List WordIR.Op := [.band 5137 5143]
def bytes5026 : Bytes := ("    let r00001418: u32 = r00001411 & r00001417;\n" : String).toByteArray.data.toList
theorem checked5026 : bytes5026=statementBytes 5144 (op5026.map lower) ∧ bytes5026.length=48 := by core033_kernel_decide
def op5027 : List WordIR.Op := [.bxor 5132 5144]
def bytes5027 : Bytes := ("    let r00001419: u32 = r0000140c ^ r00001418;\n" : String).toByteArray.data.toList
theorem checked5027 : bytes5027=statementBytes 5145 (op5027.map lower) ∧ bytes5027.length=48 := by core033_kernel_decide
def op5028 : List WordIR.Op := [.shr 5145 31]
def bytes5028 : Bytes := ("    let r0000141a: u32 = r00001419 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5028 : bytes5028=statementBytes 5146 (op5028.map lower) ∧ bytes5028.length=54 := by core033_kernel_decide
def op5029 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5029 : Bytes := ("    let r0000141b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5029 : bytes5029=statementBytes 5147 (op5029.map lower) ∧ bytes5029.length=41 := by core033_kernel_decide
def op5030 : List WordIR.Op := [.bxor 5146 5147]
def bytes5030 : Bytes := ("    let r0000141c: u32 = r0000141a ^ r0000141b;\n" : String).toByteArray.data.toList
theorem checked5030 : bytes5030=statementBytes 5148 (op5030.map lower) ∧ bytes5030.length=48 := by core033_kernel_decide
def op5031 : List WordIR.Op := [.bnot 5148]
def bytes5031 : Bytes := ("    let r0000141d: u32 = !r0000141c;\n" : String).toByteArray.data.toList
theorem checked5031 : bytes5031=statementBytes 5149 (op5031.map lower) ∧ bytes5031.length=37 := by core033_kernel_decide
def op5032 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes5032 : Bytes := ("    let r0000141e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked5032 : bytes5032=statementBytes 5150 (op5032.map lower) ∧ bytes5032.length=41 := by core033_kernel_decide
def op5033 : List WordIR.Op := [.badd 5149 5150]
def bytes5033 : Bytes := ("    let r0000141f: u32 = r0000141d.wrapping_add(r0000141e);\n" : String).toByteArray.data.toList
theorem checked5033 : bytes5033=statementBytes 5151 (op5033.map lower) ∧ bytes5033.length=60 := by core033_kernel_decide
def op5034 : List WordIR.Op := [.bnot 5151]
def bytes5034 : Bytes := ("    let r00001420: u32 = !r0000141f;\n" : String).toByteArray.data.toList
theorem checked5034 : bytes5034=statementBytes 5152 (op5034.map lower) ∧ bytes5034.length=37 := by core033_kernel_decide
def op5035 : List WordIR.Op := [.band 5152 2594]
def bytes5035 : Bytes := ("    let r00001421: u32 = r00001420 & r00000a22;\n" : String).toByteArray.data.toList
theorem checked5035 : bytes5035=statementBytes 5153 (op5035.map lower) ∧ bytes5035.length=48 := by core033_kernel_decide
def op5036 : List WordIR.Op := [.bxor 5127 5153]
def bytes5036 : Bytes := ("    let r00001422: u32 = r00001407 ^ r00001421;\n" : String).toByteArray.data.toList
theorem checked5036 : bytes5036=statementBytes 5154 (op5036.map lower) ∧ bytes5036.length=48 := by core033_kernel_decide
def op5037 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5037 : Bytes := ("    let r00001423: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5037 : bytes5037=statementBytes 5155 (op5037.map lower) ∧ bytes5037.length=41 := by core033_kernel_decide
def op5038 : List WordIR.Op := [.bxor 1299 5155]
def bytes5038 : Bytes := ("    let r00001424: u32 = r00000513 ^ r00001423;\n" : String).toByteArray.data.toList
theorem checked5038 : bytes5038=statementBytes 5156 (op5038.map lower) ∧ bytes5038.length=48 := by core033_kernel_decide
def op5039 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5039 : Bytes := ("    let r00001425: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5039 : bytes5039=statementBytes 5157 (op5039.map lower) ∧ bytes5039.length=41 := by core033_kernel_decide
def op5040 : List WordIR.Op := [.bnot 5157]
def bytes5040 : Bytes := ("    let r00001426: u32 = !r00001425;\n" : String).toByteArray.data.toList
theorem checked5040 : bytes5040=statementBytes 5158 (op5040.map lower) ∧ bytes5040.length=37 := by core033_kernel_decide
def op5041 : List WordIR.Op := [.band 5156 5158]
def bytes5041 : Bytes := ("    let r00001427: u32 = r00001424 & r00001426;\n" : String).toByteArray.data.toList
theorem checked5041 : bytes5041=statementBytes 5159 (op5041.map lower) ∧ bytes5041.length=48 := by core033_kernel_decide
def op5042 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5042 : Bytes := ("    let r00001428: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5042 : bytes5042=statementBytes 5160 (op5042.map lower) ∧ bytes5042.length=41 := by core033_kernel_decide
def op5043 : List WordIR.Op := [.bxor 1299 5160]
def bytes5043 : Bytes := ("    let r00001429: u32 = r00000513 ^ r00001428;\n" : String).toByteArray.data.toList
theorem checked5043 : bytes5043=statementBytes 5161 (op5043.map lower) ∧ bytes5043.length=48 := by core033_kernel_decide
def op5044 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5044 : Bytes := ("    let r0000142a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5044 : bytes5044=statementBytes 5162 (op5044.map lower) ∧ bytes5044.length=41 := by core033_kernel_decide
def op5045 : List WordIR.Op := [.bnot 5162]
def bytes5045 : Bytes := ("    let r0000142b: u32 = !r0000142a;\n" : String).toByteArray.data.toList
theorem checked5045 : bytes5045=statementBytes 5163 (op5045.map lower) ∧ bytes5045.length=37 := by core033_kernel_decide
def op5046 : List WordIR.Op := [.bxor 5161 5163]
def bytes5046 : Bytes := ("    let r0000142c: u32 = r00001429 ^ r0000142b;\n" : String).toByteArray.data.toList
theorem checked5046 : bytes5046=statementBytes 5164 (op5046.map lower) ∧ bytes5046.length=48 := by core033_kernel_decide
def op5047 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes5047 : Bytes := ("    let r0000142d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked5047 : bytes5047=statementBytes 5165 (op5047.map lower) ∧ bytes5047.length=41 := by core033_kernel_decide
def op5048 : List WordIR.Op := [.bxor 1299 5165]
def bytes5048 : Bytes := ("    let r0000142e: u32 = r00000513 ^ r0000142d;\n" : String).toByteArray.data.toList
theorem checked5048 : bytes5048=statementBytes 5166 (op5048.map lower) ∧ bytes5048.length=48 := by core033_kernel_decide
def op5049 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes5049 : Bytes := ("    let r0000142f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked5049 : bytes5049=statementBytes 5167 (op5049.map lower) ∧ bytes5049.length=41 := by core033_kernel_decide
def op5050 : List WordIR.Op := [.bnot 5167]
def bytes5050 : Bytes := ("    let r00001430: u32 = !r0000142f;\n" : String).toByteArray.data.toList
theorem checked5050 : bytes5050=statementBytes 5168 (op5050.map lower) ∧ bytes5050.length=37 := by core033_kernel_decide
def op5051 : List WordIR.Op := [.badd 5166 5168]
def bytes5051 : Bytes := ("    let r00001431: u32 = r0000142e.wrapping_add(r00001430);\n" : String).toByteArray.data.toList
theorem checked5051 : bytes5051=statementBytes 5169 (op5051.map lower) ∧ bytes5051.length=60 := by core033_kernel_decide
def op5052 : List WordIR.Op := [.bnot 5169]
def bytes5052 : Bytes := ("    let r00001432: u32 = !r00001431;\n" : String).toByteArray.data.toList
theorem checked5052 : bytes5052=statementBytes 5170 (op5052.map lower) ∧ bytes5052.length=37 := by core033_kernel_decide
def op5053 : List WordIR.Op := [.band 5164 5170]
def bytes5053 : Bytes := ("    let r00001433: u32 = r0000142c & r00001432;\n" : String).toByteArray.data.toList
theorem checked5053 : bytes5053=statementBytes 5171 (op5053.map lower) ∧ bytes5053.length=48 := by core033_kernel_decide
def op5054 : List WordIR.Op := [.bxor 5159 5171]
def bytes5054 : Bytes := ("    let r00001434: u32 = r00001427 ^ r00001433;\n" : String).toByteArray.data.toList
theorem checked5054 : bytes5054=statementBytes 5172 (op5054.map lower) ∧ bytes5054.length=48 := by core033_kernel_decide
def op5055 : List WordIR.Op := [.shr 5172 31]
def bytes5055 : Bytes := ("    let r00001435: u32 = r00001434 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked5055 : bytes5055=statementBytes 5173 (op5055.map lower) ∧ bytes5055.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op4992,op4993,op4994,op4995,op4996,op4997,op4998,op4999,op5000,op5001,op5002,op5003,op5004,op5005,op5006,op5007,op5008,op5009,op5010,op5011,op5012,op5013,op5014,op5015,op5016,op5017,op5018,op5019,op5020,op5021,op5022,op5023,op5024,op5025,op5026,op5027,op5028,op5029,op5030,op5031,op5032,op5033,op5034,op5035,op5036,op5037,op5038,op5039,op5040,op5041,op5042,op5043,op5044,op5045,op5046,op5047,op5048,op5049,op5050,op5051,op5052,op5053,op5054,op5055]
def chunks : List Bytes := [bytes4992,bytes4993,bytes4994,bytes4995,bytes4996,bytes4997,bytes4998,bytes4999,bytes5000,bytes5001,bytes5002,bytes5003,bytes5004,bytes5005,bytes5006,bytes5007,bytes5008,bytes5009,bytes5010,bytes5011,bytes5012,bytes5013,bytes5014,bytes5015,bytes5016,bytes5017,bytes5018,bytes5019,bytes5020,bytes5021,bytes5022,bytes5023,bytes5024,bytes5025,bytes5026,bytes5027,bytes5028,bytes5029,bytes5030,bytes5031,bytes5032,bytes5033,bytes5034,bytes5035,bytes5036,bytes5037,bytes5038,bytes5039,bytes5040,bytes5041,bytes5042,bytes5043,bytes5044,bytes5045,bytes5046,bytes5047,bytes5048,bytes5049,bytes5050,bytes5051,bytes5052,bytes5053,bytes5054,bytes5055]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 5110 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked4992.1 (.cons _ _ _ _ _ checked4993.1 (.cons _ _ _ _ _ checked4994.1 (.cons _ _ _ _ _ checked4995.1 (.cons _ _ _ _ _ checked4996.1 (.cons _ _ _ _ _ checked4997.1 (.cons _ _ _ _ _ checked4998.1 (.cons _ _ _ _ _ checked4999.1 (.cons _ _ _ _ _ checked5000.1 (.cons _ _ _ _ _ checked5001.1 (.cons _ _ _ _ _ checked5002.1 (.cons _ _ _ _ _ checked5003.1 (.cons _ _ _ _ _ checked5004.1 (.cons _ _ _ _ _ checked5005.1 (.cons _ _ _ _ _ checked5006.1 (.cons _ _ _ _ _ checked5007.1 (.cons _ _ _ _ _ checked5008.1 (.cons _ _ _ _ _ checked5009.1 (.cons _ _ _ _ _ checked5010.1 (.cons _ _ _ _ _ checked5011.1 (.cons _ _ _ _ _ checked5012.1 (.cons _ _ _ _ _ checked5013.1 (.cons _ _ _ _ _ checked5014.1 (.cons _ _ _ _ _ checked5015.1 (.cons _ _ _ _ _ checked5016.1 (.cons _ _ _ _ _ checked5017.1 (.cons _ _ _ _ _ checked5018.1 (.cons _ _ _ _ _ checked5019.1 (.cons _ _ _ _ _ checked5020.1 (.cons _ _ _ _ _ checked5021.1 (.cons _ _ _ _ _ checked5022.1 (.cons _ _ _ _ _ checked5023.1 (.cons _ _ _ _ _ checked5024.1 (.cons _ _ _ _ _ checked5025.1 (.cons _ _ _ _ _ checked5026.1 (.cons _ _ _ _ _ checked5027.1 (.cons _ _ _ _ _ checked5028.1 (.cons _ _ _ _ _ checked5029.1 (.cons _ _ _ _ _ checked5030.1 (.cons _ _ _ _ _ checked5031.1 (.cons _ _ _ _ _ checked5032.1 (.cons _ _ _ _ _ checked5033.1 (.cons _ _ _ _ _ checked5034.1 (.cons _ _ _ _ _ checked5035.1 (.cons _ _ _ _ _ checked5036.1 (.cons _ _ _ _ _ checked5037.1 (.cons _ _ _ _ _ checked5038.1 (.cons _ _ _ _ _ checked5039.1 (.cons _ _ _ _ _ checked5040.1 (.cons _ _ _ _ _ checked5041.1 (.cons _ _ _ _ _ checked5042.1 (.cons _ _ _ _ _ checked5043.1 (.cons _ _ _ _ _ checked5044.1 (.cons _ _ _ _ _ checked5045.1 (.cons _ _ _ _ _ checked5046.1 (.cons _ _ _ _ _ checked5047.1 (.cons _ _ _ _ _ checked5048.1 (.cons _ _ _ _ _ checked5049.1 (.cons _ _ _ _ _ checked5050.1 (.cons _ _ _ _ _ checked5051.1 (.cons _ _ _ _ _ checked5052.1 (.cons _ _ _ _ _ checked5053.1 (.cons _ _ _ _ _ checked5054.1 (.cons _ _ _ _ _ checked5055.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 5110 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2863 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked4992.2,checked4993.2,checked4994.2,checked4995.2,checked4996.2,checked4997.2,checked4998.2,checked4999.2,checked5000.2,checked5001.2,checked5002.2,checked5003.2,checked5004.2,checked5005.2,checked5006.2,checked5007.2,checked5008.2,checked5009.2,checked5010.2,checked5011.2,checked5012.2,checked5013.2,checked5014.2,checked5015.2,checked5016.2,checked5017.2,checked5018.2,checked5019.2,checked5020.2,checked5021.2,checked5022.2,checked5023.2,checked5024.2,checked5025.2,checked5026.2,checked5027.2,checked5028.2,checked5029.2,checked5030.2,checked5031.2,checked5032.2,checked5033.2,checked5034.2,checked5035.2,checked5036.2,checked5037.2,checked5038.2,checked5039.2,checked5040.2,checked5041.2,checked5042.2,checked5043.2,checked5044.2,checked5045.2,checked5046.2,checked5047.2,checked5048.2,checked5049.2,checked5050.2,checked5051.2,checked5052.2,checked5053.2,checked5054.2,checked5055.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup78
