import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup94
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6016 : List WordIR.Op := [.bnot 6058]
def bytes6016 : Bytes := ("    let r000017ab: u32 = !r000017aa;\n" : String).toByteArray.data.toList
theorem checked6016 : bytes6016=statementBytes 6059 (op6016.map lower) ∧ bytes6016.length=37 := by core033_kernel_decide
def op6017 : List WordIR.Op := [.bxor 6057 6059]
def bytes6017 : Bytes := ("    let r000017ac: u32 = r000017a9 ^ r000017ab;\n" : String).toByteArray.data.toList
theorem checked6017 : bytes6017=statementBytes 6060 (op6017.map lower) ∧ bytes6017.length=48 := by core033_kernel_decide
def op6018 : List WordIR.Op := [.shr 4163 8]
def bytes6018 : Bytes := ("    let r000017ad: u32 = r00001043 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6018 : bytes6018=statementBytes 6061 (op6018.map lower) ∧ bytes6018.length=54 := by core033_kernel_decide
def op6019 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6019 : Bytes := ("    let r000017ae: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6019 : bytes6019=statementBytes 6062 (op6019.map lower) ∧ bytes6019.length=41 := by core033_kernel_decide
def op6020 : List WordIR.Op := [.bnot 6062]
def bytes6020 : Bytes := ("    let r000017af: u32 = !r000017ae;\n" : String).toByteArray.data.toList
theorem checked6020 : bytes6020=statementBytes 6063 (op6020.map lower) ∧ bytes6020.length=37 := by core033_kernel_decide
def op6021 : List WordIR.Op := [.badd 6061 6063]
def bytes6021 : Bytes := ("    let r000017b0: u32 = r000017ad.wrapping_add(r000017af);\n" : String).toByteArray.data.toList
theorem checked6021 : bytes6021=statementBytes 6064 (op6021.map lower) ∧ bytes6021.length=60 := by core033_kernel_decide
def op6022 : List WordIR.Op := [.bnot 6064]
def bytes6022 : Bytes := ("    let r000017b1: u32 = !r000017b0;\n" : String).toByteArray.data.toList
theorem checked6022 : bytes6022=statementBytes 6065 (op6022.map lower) ∧ bytes6022.length=37 := by core033_kernel_decide
def op6023 : List WordIR.Op := [.band 6060 6065]
def bytes6023 : Bytes := ("    let r000017b2: u32 = r000017ac & r000017b1;\n" : String).toByteArray.data.toList
theorem checked6023 : bytes6023=statementBytes 6066 (op6023.map lower) ∧ bytes6023.length=48 := by core033_kernel_decide
def op6024 : List WordIR.Op := [.bxor 6056 6066]
def bytes6024 : Bytes := ("    let r000017b3: u32 = r000017a8 ^ r000017b2;\n" : String).toByteArray.data.toList
theorem checked6024 : bytes6024=statementBytes 6067 (op6024.map lower) ∧ bytes6024.length=48 := by core033_kernel_decide
def op6025 : List WordIR.Op := [.shr 6067 31]
def bytes6025 : Bytes := ("    let r000017b4: u32 = r000017b3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6025 : bytes6025=statementBytes 6068 (op6025.map lower) ∧ bytes6025.length=54 := by core033_kernel_decide
def op6026 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6026 : Bytes := ("    let r000017b5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6026 : bytes6026=statementBytes 6069 (op6026.map lower) ∧ bytes6026.length=41 := by core033_kernel_decide
def op6027 : List WordIR.Op := [.bxor 6068 6069]
def bytes6027 : Bytes := ("    let r000017b6: u32 = r000017b4 ^ r000017b5;\n" : String).toByteArray.data.toList
theorem checked6027 : bytes6027=statementBytes 6070 (op6027.map lower) ∧ bytes6027.length=48 := by core033_kernel_decide
def op6028 : List WordIR.Op := [.shr 4215 8]
def bytes6028 : Bytes := ("    let r000017b7: u32 = r00001077 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6028 : bytes6028=statementBytes 6071 (op6028.map lower) ∧ bytes6028.length=54 := by core033_kernel_decide
def op6029 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6029 : Bytes := ("    let r000017b8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6029 : bytes6029=statementBytes 6072 (op6029.map lower) ∧ bytes6029.length=41 := by core033_kernel_decide
def op6030 : List WordIR.Op := [.bnot 6072]
def bytes6030 : Bytes := ("    let r000017b9: u32 = !r000017b8;\n" : String).toByteArray.data.toList
theorem checked6030 : bytes6030=statementBytes 6073 (op6030.map lower) ∧ bytes6030.length=37 := by core033_kernel_decide
def op6031 : List WordIR.Op := [.band 6071 6073]
def bytes6031 : Bytes := ("    let r000017ba: u32 = r000017b7 & r000017b9;\n" : String).toByteArray.data.toList
theorem checked6031 : bytes6031=statementBytes 6074 (op6031.map lower) ∧ bytes6031.length=48 := by core033_kernel_decide
def op6032 : List WordIR.Op := [.shr 4215 8]
def bytes6032 : Bytes := ("    let r000017bb: u32 = r00001077 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6032 : bytes6032=statementBytes 6075 (op6032.map lower) ∧ bytes6032.length=54 := by core033_kernel_decide
def op6033 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6033 : Bytes := ("    let r000017bc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6033 : bytes6033=statementBytes 6076 (op6033.map lower) ∧ bytes6033.length=41 := by core033_kernel_decide
def op6034 : List WordIR.Op := [.bnot 6076]
def bytes6034 : Bytes := ("    let r000017bd: u32 = !r000017bc;\n" : String).toByteArray.data.toList
theorem checked6034 : bytes6034=statementBytes 6077 (op6034.map lower) ∧ bytes6034.length=37 := by core033_kernel_decide
def op6035 : List WordIR.Op := [.bxor 6075 6077]
def bytes6035 : Bytes := ("    let r000017be: u32 = r000017bb ^ r000017bd;\n" : String).toByteArray.data.toList
theorem checked6035 : bytes6035=statementBytes 6078 (op6035.map lower) ∧ bytes6035.length=48 := by core033_kernel_decide
def op6036 : List WordIR.Op := [.shr 4215 8]
def bytes6036 : Bytes := ("    let r000017bf: u32 = r00001077 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6036 : bytes6036=statementBytes 6079 (op6036.map lower) ∧ bytes6036.length=54 := by core033_kernel_decide
def op6037 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6037 : Bytes := ("    let r000017c0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6037 : bytes6037=statementBytes 6080 (op6037.map lower) ∧ bytes6037.length=41 := by core033_kernel_decide
def op6038 : List WordIR.Op := [.bnot 6080]
def bytes6038 : Bytes := ("    let r000017c1: u32 = !r000017c0;\n" : String).toByteArray.data.toList
theorem checked6038 : bytes6038=statementBytes 6081 (op6038.map lower) ∧ bytes6038.length=37 := by core033_kernel_decide
def op6039 : List WordIR.Op := [.badd 6079 6081]
def bytes6039 : Bytes := ("    let r000017c2: u32 = r000017bf.wrapping_add(r000017c1);\n" : String).toByteArray.data.toList
theorem checked6039 : bytes6039=statementBytes 6082 (op6039.map lower) ∧ bytes6039.length=60 := by core033_kernel_decide
def op6040 : List WordIR.Op := [.bnot 6082]
def bytes6040 : Bytes := ("    let r000017c3: u32 = !r000017c2;\n" : String).toByteArray.data.toList
theorem checked6040 : bytes6040=statementBytes 6083 (op6040.map lower) ∧ bytes6040.length=37 := by core033_kernel_decide
def op6041 : List WordIR.Op := [.band 6078 6083]
def bytes6041 : Bytes := ("    let r000017c4: u32 = r000017be & r000017c3;\n" : String).toByteArray.data.toList
theorem checked6041 : bytes6041=statementBytes 6084 (op6041.map lower) ∧ bytes6041.length=48 := by core033_kernel_decide
def op6042 : List WordIR.Op := [.bxor 6074 6084]
def bytes6042 : Bytes := ("    let r000017c5: u32 = r000017ba ^ r000017c4;\n" : String).toByteArray.data.toList
theorem checked6042 : bytes6042=statementBytes 6085 (op6042.map lower) ∧ bytes6042.length=48 := by core033_kernel_decide
def op6043 : List WordIR.Op := [.shr 6085 31]
def bytes6043 : Bytes := ("    let r000017c6: u32 = r000017c5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6043 : bytes6043=statementBytes 6086 (op6043.map lower) ∧ bytes6043.length=54 := by core033_kernel_decide
def op6044 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6044 : Bytes := ("    let r000017c7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6044 : bytes6044=statementBytes 6087 (op6044.map lower) ∧ bytes6044.length=41 := by core033_kernel_decide
def op6045 : List WordIR.Op := [.bxor 6086 6087]
def bytes6045 : Bytes := ("    let r000017c8: u32 = r000017c6 ^ r000017c7;\n" : String).toByteArray.data.toList
theorem checked6045 : bytes6045=statementBytes 6088 (op6045.map lower) ∧ bytes6045.length=48 := by core033_kernel_decide
def op6046 : List WordIR.Op := [.shr 4267 8]
def bytes6046 : Bytes := ("    let r000017c9: u32 = r000010ab >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6046 : bytes6046=statementBytes 6089 (op6046.map lower) ∧ bytes6046.length=54 := by core033_kernel_decide
def op6047 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6047 : Bytes := ("    let r000017ca: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6047 : bytes6047=statementBytes 6090 (op6047.map lower) ∧ bytes6047.length=41 := by core033_kernel_decide
def op6048 : List WordIR.Op := [.bnot 6090]
def bytes6048 : Bytes := ("    let r000017cb: u32 = !r000017ca;\n" : String).toByteArray.data.toList
theorem checked6048 : bytes6048=statementBytes 6091 (op6048.map lower) ∧ bytes6048.length=37 := by core033_kernel_decide
def op6049 : List WordIR.Op := [.band 6089 6091]
def bytes6049 : Bytes := ("    let r000017cc: u32 = r000017c9 & r000017cb;\n" : String).toByteArray.data.toList
theorem checked6049 : bytes6049=statementBytes 6092 (op6049.map lower) ∧ bytes6049.length=48 := by core033_kernel_decide
def op6050 : List WordIR.Op := [.shr 4267 8]
def bytes6050 : Bytes := ("    let r000017cd: u32 = r000010ab >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6050 : bytes6050=statementBytes 6093 (op6050.map lower) ∧ bytes6050.length=54 := by core033_kernel_decide
def op6051 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6051 : Bytes := ("    let r000017ce: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6051 : bytes6051=statementBytes 6094 (op6051.map lower) ∧ bytes6051.length=41 := by core033_kernel_decide
def op6052 : List WordIR.Op := [.bnot 6094]
def bytes6052 : Bytes := ("    let r000017cf: u32 = !r000017ce;\n" : String).toByteArray.data.toList
theorem checked6052 : bytes6052=statementBytes 6095 (op6052.map lower) ∧ bytes6052.length=37 := by core033_kernel_decide
def op6053 : List WordIR.Op := [.bxor 6093 6095]
def bytes6053 : Bytes := ("    let r000017d0: u32 = r000017cd ^ r000017cf;\n" : String).toByteArray.data.toList
theorem checked6053 : bytes6053=statementBytes 6096 (op6053.map lower) ∧ bytes6053.length=48 := by core033_kernel_decide
def op6054 : List WordIR.Op := [.shr 4267 8]
def bytes6054 : Bytes := ("    let r000017d1: u32 = r000010ab >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6054 : bytes6054=statementBytes 6097 (op6054.map lower) ∧ bytes6054.length=54 := by core033_kernel_decide
def op6055 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6055 : Bytes := ("    let r000017d2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6055 : bytes6055=statementBytes 6098 (op6055.map lower) ∧ bytes6055.length=41 := by core033_kernel_decide
def op6056 : List WordIR.Op := [.bnot 6098]
def bytes6056 : Bytes := ("    let r000017d3: u32 = !r000017d2;\n" : String).toByteArray.data.toList
theorem checked6056 : bytes6056=statementBytes 6099 (op6056.map lower) ∧ bytes6056.length=37 := by core033_kernel_decide
def op6057 : List WordIR.Op := [.badd 6097 6099]
def bytes6057 : Bytes := ("    let r000017d4: u32 = r000017d1.wrapping_add(r000017d3);\n" : String).toByteArray.data.toList
theorem checked6057 : bytes6057=statementBytes 6100 (op6057.map lower) ∧ bytes6057.length=60 := by core033_kernel_decide
def op6058 : List WordIR.Op := [.bnot 6100]
def bytes6058 : Bytes := ("    let r000017d5: u32 = !r000017d4;\n" : String).toByteArray.data.toList
theorem checked6058 : bytes6058=statementBytes 6101 (op6058.map lower) ∧ bytes6058.length=37 := by core033_kernel_decide
def op6059 : List WordIR.Op := [.band 6096 6101]
def bytes6059 : Bytes := ("    let r000017d6: u32 = r000017d0 & r000017d5;\n" : String).toByteArray.data.toList
theorem checked6059 : bytes6059=statementBytes 6102 (op6059.map lower) ∧ bytes6059.length=48 := by core033_kernel_decide
def op6060 : List WordIR.Op := [.bxor 6092 6102]
def bytes6060 : Bytes := ("    let r000017d7: u32 = r000017cc ^ r000017d6;\n" : String).toByteArray.data.toList
theorem checked6060 : bytes6060=statementBytes 6103 (op6060.map lower) ∧ bytes6060.length=48 := by core033_kernel_decide
def op6061 : List WordIR.Op := [.shr 6103 31]
def bytes6061 : Bytes := ("    let r000017d8: u32 = r000017d7 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6061 : bytes6061=statementBytes 6104 (op6061.map lower) ∧ bytes6061.length=54 := by core033_kernel_decide
def op6062 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6062 : Bytes := ("    let r000017d9: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6062 : bytes6062=statementBytes 6105 (op6062.map lower) ∧ bytes6062.length=41 := by core033_kernel_decide
def op6063 : List WordIR.Op := [.bxor 6104 6105]
def bytes6063 : Bytes := ("    let r000017da: u32 = r000017d8 ^ r000017d9;\n" : String).toByteArray.data.toList
theorem checked6063 : bytes6063=statementBytes 6106 (op6063.map lower) ∧ bytes6063.length=48 := by core033_kernel_decide
def op6064 : List WordIR.Op := [.shr 4319 8]
def bytes6064 : Bytes := ("    let r000017db: u32 = r000010df >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6064 : bytes6064=statementBytes 6107 (op6064.map lower) ∧ bytes6064.length=54 := by core033_kernel_decide
def op6065 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6065 : Bytes := ("    let r000017dc: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6065 : bytes6065=statementBytes 6108 (op6065.map lower) ∧ bytes6065.length=41 := by core033_kernel_decide
def op6066 : List WordIR.Op := [.bnot 6108]
def bytes6066 : Bytes := ("    let r000017dd: u32 = !r000017dc;\n" : String).toByteArray.data.toList
theorem checked6066 : bytes6066=statementBytes 6109 (op6066.map lower) ∧ bytes6066.length=37 := by core033_kernel_decide
def op6067 : List WordIR.Op := [.band 6107 6109]
def bytes6067 : Bytes := ("    let r000017de: u32 = r000017db & r000017dd;\n" : String).toByteArray.data.toList
theorem checked6067 : bytes6067=statementBytes 6110 (op6067.map lower) ∧ bytes6067.length=48 := by core033_kernel_decide
def op6068 : List WordIR.Op := [.shr 4319 8]
def bytes6068 : Bytes := ("    let r000017df: u32 = r000010df >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6068 : bytes6068=statementBytes 6111 (op6068.map lower) ∧ bytes6068.length=54 := by core033_kernel_decide
def op6069 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6069 : Bytes := ("    let r000017e0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6069 : bytes6069=statementBytes 6112 (op6069.map lower) ∧ bytes6069.length=41 := by core033_kernel_decide
def op6070 : List WordIR.Op := [.bnot 6112]
def bytes6070 : Bytes := ("    let r000017e1: u32 = !r000017e0;\n" : String).toByteArray.data.toList
theorem checked6070 : bytes6070=statementBytes 6113 (op6070.map lower) ∧ bytes6070.length=37 := by core033_kernel_decide
def op6071 : List WordIR.Op := [.bxor 6111 6113]
def bytes6071 : Bytes := ("    let r000017e2: u32 = r000017df ^ r000017e1;\n" : String).toByteArray.data.toList
theorem checked6071 : bytes6071=statementBytes 6114 (op6071.map lower) ∧ bytes6071.length=48 := by core033_kernel_decide
def op6072 : List WordIR.Op := [.shr 4319 8]
def bytes6072 : Bytes := ("    let r000017e3: u32 = r000010df >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6072 : bytes6072=statementBytes 6115 (op6072.map lower) ∧ bytes6072.length=54 := by core033_kernel_decide
def op6073 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6073 : Bytes := ("    let r000017e4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6073 : bytes6073=statementBytes 6116 (op6073.map lower) ∧ bytes6073.length=41 := by core033_kernel_decide
def op6074 : List WordIR.Op := [.bnot 6116]
def bytes6074 : Bytes := ("    let r000017e5: u32 = !r000017e4;\n" : String).toByteArray.data.toList
theorem checked6074 : bytes6074=statementBytes 6117 (op6074.map lower) ∧ bytes6074.length=37 := by core033_kernel_decide
def op6075 : List WordIR.Op := [.badd 6115 6117]
def bytes6075 : Bytes := ("    let r000017e6: u32 = r000017e3.wrapping_add(r000017e5);\n" : String).toByteArray.data.toList
theorem checked6075 : bytes6075=statementBytes 6118 (op6075.map lower) ∧ bytes6075.length=60 := by core033_kernel_decide
def op6076 : List WordIR.Op := [.bnot 6118]
def bytes6076 : Bytes := ("    let r000017e7: u32 = !r000017e6;\n" : String).toByteArray.data.toList
theorem checked6076 : bytes6076=statementBytes 6119 (op6076.map lower) ∧ bytes6076.length=37 := by core033_kernel_decide
def op6077 : List WordIR.Op := [.band 6114 6119]
def bytes6077 : Bytes := ("    let r000017e8: u32 = r000017e2 & r000017e7;\n" : String).toByteArray.data.toList
theorem checked6077 : bytes6077=statementBytes 6120 (op6077.map lower) ∧ bytes6077.length=48 := by core033_kernel_decide
def op6078 : List WordIR.Op := [.bxor 6110 6120]
def bytes6078 : Bytes := ("    let r000017e9: u32 = r000017de ^ r000017e8;\n" : String).toByteArray.data.toList
theorem checked6078 : bytes6078=statementBytes 6121 (op6078.map lower) ∧ bytes6078.length=48 := by core033_kernel_decide
def op6079 : List WordIR.Op := [.shr 6121 31]
def bytes6079 : Bytes := ("    let r000017ea: u32 = r000017e9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6079 : bytes6079=statementBytes 6122 (op6079.map lower) ∧ bytes6079.length=54 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6016,op6017,op6018,op6019,op6020,op6021,op6022,op6023,op6024,op6025,op6026,op6027,op6028,op6029,op6030,op6031,op6032,op6033,op6034,op6035,op6036,op6037,op6038,op6039,op6040,op6041,op6042,op6043,op6044,op6045,op6046,op6047,op6048,op6049,op6050,op6051,op6052,op6053,op6054,op6055,op6056,op6057,op6058,op6059,op6060,op6061,op6062,op6063,op6064,op6065,op6066,op6067,op6068,op6069,op6070,op6071,op6072,op6073,op6074,op6075,op6076,op6077,op6078,op6079]
def chunks : List Bytes := [bytes6016,bytes6017,bytes6018,bytes6019,bytes6020,bytes6021,bytes6022,bytes6023,bytes6024,bytes6025,bytes6026,bytes6027,bytes6028,bytes6029,bytes6030,bytes6031,bytes6032,bytes6033,bytes6034,bytes6035,bytes6036,bytes6037,bytes6038,bytes6039,bytes6040,bytes6041,bytes6042,bytes6043,bytes6044,bytes6045,bytes6046,bytes6047,bytes6048,bytes6049,bytes6050,bytes6051,bytes6052,bytes6053,bytes6054,bytes6055,bytes6056,bytes6057,bytes6058,bytes6059,bytes6060,bytes6061,bytes6062,bytes6063,bytes6064,bytes6065,bytes6066,bytes6067,bytes6068,bytes6069,bytes6070,bytes6071,bytes6072,bytes6073,bytes6074,bytes6075,bytes6076,bytes6077,bytes6078,bytes6079]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6059 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6016.1 (.cons _ _ _ _ _ checked6017.1 (.cons _ _ _ _ _ checked6018.1 (.cons _ _ _ _ _ checked6019.1 (.cons _ _ _ _ _ checked6020.1 (.cons _ _ _ _ _ checked6021.1 (.cons _ _ _ _ _ checked6022.1 (.cons _ _ _ _ _ checked6023.1 (.cons _ _ _ _ _ checked6024.1 (.cons _ _ _ _ _ checked6025.1 (.cons _ _ _ _ _ checked6026.1 (.cons _ _ _ _ _ checked6027.1 (.cons _ _ _ _ _ checked6028.1 (.cons _ _ _ _ _ checked6029.1 (.cons _ _ _ _ _ checked6030.1 (.cons _ _ _ _ _ checked6031.1 (.cons _ _ _ _ _ checked6032.1 (.cons _ _ _ _ _ checked6033.1 (.cons _ _ _ _ _ checked6034.1 (.cons _ _ _ _ _ checked6035.1 (.cons _ _ _ _ _ checked6036.1 (.cons _ _ _ _ _ checked6037.1 (.cons _ _ _ _ _ checked6038.1 (.cons _ _ _ _ _ checked6039.1 (.cons _ _ _ _ _ checked6040.1 (.cons _ _ _ _ _ checked6041.1 (.cons _ _ _ _ _ checked6042.1 (.cons _ _ _ _ _ checked6043.1 (.cons _ _ _ _ _ checked6044.1 (.cons _ _ _ _ _ checked6045.1 (.cons _ _ _ _ _ checked6046.1 (.cons _ _ _ _ _ checked6047.1 (.cons _ _ _ _ _ checked6048.1 (.cons _ _ _ _ _ checked6049.1 (.cons _ _ _ _ _ checked6050.1 (.cons _ _ _ _ _ checked6051.1 (.cons _ _ _ _ _ checked6052.1 (.cons _ _ _ _ _ checked6053.1 (.cons _ _ _ _ _ checked6054.1 (.cons _ _ _ _ _ checked6055.1 (.cons _ _ _ _ _ checked6056.1 (.cons _ _ _ _ _ checked6057.1 (.cons _ _ _ _ _ checked6058.1 (.cons _ _ _ _ _ checked6059.1 (.cons _ _ _ _ _ checked6060.1 (.cons _ _ _ _ _ checked6061.1 (.cons _ _ _ _ _ checked6062.1 (.cons _ _ _ _ _ checked6063.1 (.cons _ _ _ _ _ checked6064.1 (.cons _ _ _ _ _ checked6065.1 (.cons _ _ _ _ _ checked6066.1 (.cons _ _ _ _ _ checked6067.1 (.cons _ _ _ _ _ checked6068.1 (.cons _ _ _ _ _ checked6069.1 (.cons _ _ _ _ _ checked6070.1 (.cons _ _ _ _ _ checked6071.1 (.cons _ _ _ _ _ checked6072.1 (.cons _ _ _ _ _ checked6073.1 (.cons _ _ _ _ _ checked6074.1 (.cons _ _ _ _ _ checked6075.1 (.cons _ _ _ _ _ checked6076.1 (.cons _ _ _ _ _ checked6077.1 (.cons _ _ _ _ _ checked6078.1 (.cons _ _ _ _ _ checked6079.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6059 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2948 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6016.2,checked6017.2,checked6018.2,checked6019.2,checked6020.2,checked6021.2,checked6022.2,checked6023.2,checked6024.2,checked6025.2,checked6026.2,checked6027.2,checked6028.2,checked6029.2,checked6030.2,checked6031.2,checked6032.2,checked6033.2,checked6034.2,checked6035.2,checked6036.2,checked6037.2,checked6038.2,checked6039.2,checked6040.2,checked6041.2,checked6042.2,checked6043.2,checked6044.2,checked6045.2,checked6046.2,checked6047.2,checked6048.2,checked6049.2,checked6050.2,checked6051.2,checked6052.2,checked6053.2,checked6054.2,checked6055.2,checked6056.2,checked6057.2,checked6058.2,checked6059.2,checked6060.2,checked6061.2,checked6062.2,checked6063.2,checked6064.2,checked6065.2,checked6066.2,checked6067.2,checked6068.2,checked6069.2,checked6070.2,checked6071.2,checked6072.2,checked6073.2,checked6074.2,checked6075.2,checked6076.2,checked6077.2,checked6078.2,checked6079.2]
  decide
end ArtifactFrameHashControllerGroup94
