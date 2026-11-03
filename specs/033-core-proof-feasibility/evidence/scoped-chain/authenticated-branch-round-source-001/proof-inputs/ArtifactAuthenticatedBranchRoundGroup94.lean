import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup94
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6016 : List WordIR.Op := [.shr 6133 31]
def bytes6016 : Bytes := ("    let r000017f6: u32 = r000017f5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6016 : bytes6016=statementBytes 6134 (op6016.map lower) ∧ bytes6016.length=54 := by core033_kernel_decide
def op6017 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6017 : Bytes := ("    let r000017f7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6017 : bytes6017=statementBytes 6135 (op6017.map lower) ∧ bytes6017.length=41 := by core033_kernel_decide
def op6018 : List WordIR.Op := [.bxor 6134 6135]
def bytes6018 : Bytes := ("    let r000017f8: u32 = r000017f6 ^ r000017f7;\n" : String).toByteArray.data.toList
theorem checked6018 : bytes6018=statementBytes 6136 (op6018.map lower) ∧ bytes6018.length=48 := by core033_kernel_decide
def op6019 : List WordIR.Op := [.bnot 6136]
def bytes6019 : Bytes := ("    let r000017f9: u32 = !r000017f8;\n" : String).toByteArray.data.toList
theorem checked6019 : bytes6019=statementBytes 6137 (op6019.map lower) ∧ bytes6019.length=37 := by core033_kernel_decide
def op6020 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6020 : Bytes := ("    let r000017fa: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6020 : bytes6020=statementBytes 6138 (op6020.map lower) ∧ bytes6020.length=41 := by core033_kernel_decide
def op6021 : List WordIR.Op := [.badd 6137 6138]
def bytes6021 : Bytes := ("    let r000017fb: u32 = r000017f9.wrapping_add(r000017fa);\n" : String).toByteArray.data.toList
theorem checked6021 : bytes6021=statementBytes 6139 (op6021.map lower) ∧ bytes6021.length=60 := by core033_kernel_decide
def op6022 : List WordIR.Op := [.bnot 6139]
def bytes6022 : Bytes := ("    let r000017fc: u32 = !r000017fb;\n" : String).toByteArray.data.toList
theorem checked6022 : bytes6022=statementBytes 6140 (op6022.map lower) ∧ bytes6022.length=37 := by core033_kernel_decide
def op6023 : List WordIR.Op := [.band 6140 2651]
def bytes6023 : Bytes := ("    let r000017fd: u32 = r000017fc & r00000a5b;\n" : String).toByteArray.data.toList
theorem checked6023 : bytes6023=statementBytes 6141 (op6023.map lower) ∧ bytes6023.length=48 := by core033_kernel_decide
def op6024 : List WordIR.Op := [.bxor 6115 6141]
def bytes6024 : Bytes := ("    let r000017fe: u32 = r000017e3 ^ r000017fd;\n" : String).toByteArray.data.toList
theorem checked6024 : bytes6024=statementBytes 6142 (op6024.map lower) ∧ bytes6024.length=48 := by core033_kernel_decide
def op6025 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6025 : Bytes := ("    let r000017ff: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6025 : bytes6025=statementBytes 6143 (op6025.map lower) ∧ bytes6025.length=41 := by core033_kernel_decide
def op6026 : List WordIR.Op := [.bxor 1299 6143]
def bytes6026 : Bytes := ("    let r00001800: u32 = r00000513 ^ r000017ff;\n" : String).toByteArray.data.toList
theorem checked6026 : bytes6026=statementBytes 6144 (op6026.map lower) ∧ bytes6026.length=48 := by core033_kernel_decide
def op6027 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6027 : Bytes := ("    let r00001801: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6027 : bytes6027=statementBytes 6145 (op6027.map lower) ∧ bytes6027.length=41 := by core033_kernel_decide
def op6028 : List WordIR.Op := [.bnot 6145]
def bytes6028 : Bytes := ("    let r00001802: u32 = !r00001801;\n" : String).toByteArray.data.toList
theorem checked6028 : bytes6028=statementBytes 6146 (op6028.map lower) ∧ bytes6028.length=37 := by core033_kernel_decide
def op6029 : List WordIR.Op := [.band 6144 6146]
def bytes6029 : Bytes := ("    let r00001803: u32 = r00001800 & r00001802;\n" : String).toByteArray.data.toList
theorem checked6029 : bytes6029=statementBytes 6147 (op6029.map lower) ∧ bytes6029.length=48 := by core033_kernel_decide
def op6030 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6030 : Bytes := ("    let r00001804: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6030 : bytes6030=statementBytes 6148 (op6030.map lower) ∧ bytes6030.length=41 := by core033_kernel_decide
def op6031 : List WordIR.Op := [.bxor 1299 6148]
def bytes6031 : Bytes := ("    let r00001805: u32 = r00000513 ^ r00001804;\n" : String).toByteArray.data.toList
theorem checked6031 : bytes6031=statementBytes 6149 (op6031.map lower) ∧ bytes6031.length=48 := by core033_kernel_decide
def op6032 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6032 : Bytes := ("    let r00001806: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6032 : bytes6032=statementBytes 6150 (op6032.map lower) ∧ bytes6032.length=41 := by core033_kernel_decide
def op6033 : List WordIR.Op := [.bnot 6150]
def bytes6033 : Bytes := ("    let r00001807: u32 = !r00001806;\n" : String).toByteArray.data.toList
theorem checked6033 : bytes6033=statementBytes 6151 (op6033.map lower) ∧ bytes6033.length=37 := by core033_kernel_decide
def op6034 : List WordIR.Op := [.bxor 6149 6151]
def bytes6034 : Bytes := ("    let r00001808: u32 = r00001805 ^ r00001807;\n" : String).toByteArray.data.toList
theorem checked6034 : bytes6034=statementBytes 6152 (op6034.map lower) ∧ bytes6034.length=48 := by core033_kernel_decide
def op6035 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6035 : Bytes := ("    let r00001809: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6035 : bytes6035=statementBytes 6153 (op6035.map lower) ∧ bytes6035.length=41 := by core033_kernel_decide
def op6036 : List WordIR.Op := [.bxor 1299 6153]
def bytes6036 : Bytes := ("    let r0000180a: u32 = r00000513 ^ r00001809;\n" : String).toByteArray.data.toList
theorem checked6036 : bytes6036=statementBytes 6154 (op6036.map lower) ∧ bytes6036.length=48 := by core033_kernel_decide
def op6037 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6037 : Bytes := ("    let r0000180b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6037 : bytes6037=statementBytes 6155 (op6037.map lower) ∧ bytes6037.length=41 := by core033_kernel_decide
def op6038 : List WordIR.Op := [.bnot 6155]
def bytes6038 : Bytes := ("    let r0000180c: u32 = !r0000180b;\n" : String).toByteArray.data.toList
theorem checked6038 : bytes6038=statementBytes 6156 (op6038.map lower) ∧ bytes6038.length=37 := by core033_kernel_decide
def op6039 : List WordIR.Op := [.badd 6154 6156]
def bytes6039 : Bytes := ("    let r0000180d: u32 = r0000180a.wrapping_add(r0000180c);\n" : String).toByteArray.data.toList
theorem checked6039 : bytes6039=statementBytes 6157 (op6039.map lower) ∧ bytes6039.length=60 := by core033_kernel_decide
def op6040 : List WordIR.Op := [.bnot 6157]
def bytes6040 : Bytes := ("    let r0000180e: u32 = !r0000180d;\n" : String).toByteArray.data.toList
theorem checked6040 : bytes6040=statementBytes 6158 (op6040.map lower) ∧ bytes6040.length=37 := by core033_kernel_decide
def op6041 : List WordIR.Op := [.band 6152 6158]
def bytes6041 : Bytes := ("    let r0000180f: u32 = r00001808 & r0000180e;\n" : String).toByteArray.data.toList
theorem checked6041 : bytes6041=statementBytes 6159 (op6041.map lower) ∧ bytes6041.length=48 := by core033_kernel_decide
def op6042 : List WordIR.Op := [.bxor 6147 6159]
def bytes6042 : Bytes := ("    let r00001810: u32 = r00001803 ^ r0000180f;\n" : String).toByteArray.data.toList
theorem checked6042 : bytes6042=statementBytes 6160 (op6042.map lower) ∧ bytes6042.length=48 := by core033_kernel_decide
def op6043 : List WordIR.Op := [.shr 6160 31]
def bytes6043 : Bytes := ("    let r00001811: u32 = r00001810 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6043 : bytes6043=statementBytes 6161 (op6043.map lower) ∧ bytes6043.length=54 := by core033_kernel_decide
def op6044 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6044 : Bytes := ("    let r00001812: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6044 : bytes6044=statementBytes 6162 (op6044.map lower) ∧ bytes6044.length=41 := by core033_kernel_decide
def op6045 : List WordIR.Op := [.bxor 6161 6162]
def bytes6045 : Bytes := ("    let r00001813: u32 = r00001811 ^ r00001812;\n" : String).toByteArray.data.toList
theorem checked6045 : bytes6045=statementBytes 6163 (op6045.map lower) ∧ bytes6045.length=48 := by core033_kernel_decide
def op6046 : List WordIR.Op := [.bnot 6163]
def bytes6046 : Bytes := ("    let r00001814: u32 = !r00001813;\n" : String).toByteArray.data.toList
theorem checked6046 : bytes6046=statementBytes 6164 (op6046.map lower) ∧ bytes6046.length=37 := by core033_kernel_decide
def op6047 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6047 : Bytes := ("    let r00001815: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6047 : bytes6047=statementBytes 6165 (op6047.map lower) ∧ bytes6047.length=41 := by core033_kernel_decide
def op6048 : List WordIR.Op := [.badd 6164 6165]
def bytes6048 : Bytes := ("    let r00001816: u32 = r00001814.wrapping_add(r00001815);\n" : String).toByteArray.data.toList
theorem checked6048 : bytes6048=statementBytes 6166 (op6048.map lower) ∧ bytes6048.length=60 := by core033_kernel_decide
def op6049 : List WordIR.Op := [.band 6166 2846]
def bytes6049 : Bytes := ("    let r00001817: u32 = r00001816 & r00000b1e;\n" : String).toByteArray.data.toList
theorem checked6049 : bytes6049=statementBytes 6167 (op6049.map lower) ∧ bytes6049.length=48 := by core033_kernel_decide
def op6050 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6050 : Bytes := ("    let r00001818: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6050 : bytes6050=statementBytes 6168 (op6050.map lower) ∧ bytes6050.length=41 := by core033_kernel_decide
def op6051 : List WordIR.Op := [.bxor 1299 6168]
def bytes6051 : Bytes := ("    let r00001819: u32 = r00000513 ^ r00001818;\n" : String).toByteArray.data.toList
theorem checked6051 : bytes6051=statementBytes 6169 (op6051.map lower) ∧ bytes6051.length=48 := by core033_kernel_decide
def op6052 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6052 : Bytes := ("    let r0000181a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6052 : bytes6052=statementBytes 6170 (op6052.map lower) ∧ bytes6052.length=41 := by core033_kernel_decide
def op6053 : List WordIR.Op := [.bnot 6170]
def bytes6053 : Bytes := ("    let r0000181b: u32 = !r0000181a;\n" : String).toByteArray.data.toList
theorem checked6053 : bytes6053=statementBytes 6171 (op6053.map lower) ∧ bytes6053.length=37 := by core033_kernel_decide
def op6054 : List WordIR.Op := [.band 6169 6171]
def bytes6054 : Bytes := ("    let r0000181c: u32 = r00001819 & r0000181b;\n" : String).toByteArray.data.toList
theorem checked6054 : bytes6054=statementBytes 6172 (op6054.map lower) ∧ bytes6054.length=48 := by core033_kernel_decide
def op6055 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6055 : Bytes := ("    let r0000181d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6055 : bytes6055=statementBytes 6173 (op6055.map lower) ∧ bytes6055.length=41 := by core033_kernel_decide
def op6056 : List WordIR.Op := [.bxor 1299 6173]
def bytes6056 : Bytes := ("    let r0000181e: u32 = r00000513 ^ r0000181d;\n" : String).toByteArray.data.toList
theorem checked6056 : bytes6056=statementBytes 6174 (op6056.map lower) ∧ bytes6056.length=48 := by core033_kernel_decide
def op6057 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6057 : Bytes := ("    let r0000181f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6057 : bytes6057=statementBytes 6175 (op6057.map lower) ∧ bytes6057.length=41 := by core033_kernel_decide
def op6058 : List WordIR.Op := [.bnot 6175]
def bytes6058 : Bytes := ("    let r00001820: u32 = !r0000181f;\n" : String).toByteArray.data.toList
theorem checked6058 : bytes6058=statementBytes 6176 (op6058.map lower) ∧ bytes6058.length=37 := by core033_kernel_decide
def op6059 : List WordIR.Op := [.bxor 6174 6176]
def bytes6059 : Bytes := ("    let r00001821: u32 = r0000181e ^ r00001820;\n" : String).toByteArray.data.toList
theorem checked6059 : bytes6059=statementBytes 6177 (op6059.map lower) ∧ bytes6059.length=48 := by core033_kernel_decide
def op6060 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6060 : Bytes := ("    let r00001822: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6060 : bytes6060=statementBytes 6178 (op6060.map lower) ∧ bytes6060.length=41 := by core033_kernel_decide
def op6061 : List WordIR.Op := [.bxor 1299 6178]
def bytes6061 : Bytes := ("    let r00001823: u32 = r00000513 ^ r00001822;\n" : String).toByteArray.data.toList
theorem checked6061 : bytes6061=statementBytes 6179 (op6061.map lower) ∧ bytes6061.length=48 := by core033_kernel_decide
def op6062 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6062 : Bytes := ("    let r00001824: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6062 : bytes6062=statementBytes 6180 (op6062.map lower) ∧ bytes6062.length=41 := by core033_kernel_decide
def op6063 : List WordIR.Op := [.bnot 6180]
def bytes6063 : Bytes := ("    let r00001825: u32 = !r00001824;\n" : String).toByteArray.data.toList
theorem checked6063 : bytes6063=statementBytes 6181 (op6063.map lower) ∧ bytes6063.length=37 := by core033_kernel_decide
def op6064 : List WordIR.Op := [.badd 6179 6181]
def bytes6064 : Bytes := ("    let r00001826: u32 = r00001823.wrapping_add(r00001825);\n" : String).toByteArray.data.toList
theorem checked6064 : bytes6064=statementBytes 6182 (op6064.map lower) ∧ bytes6064.length=60 := by core033_kernel_decide
def op6065 : List WordIR.Op := [.bnot 6182]
def bytes6065 : Bytes := ("    let r00001827: u32 = !r00001826;\n" : String).toByteArray.data.toList
theorem checked6065 : bytes6065=statementBytes 6183 (op6065.map lower) ∧ bytes6065.length=37 := by core033_kernel_decide
def op6066 : List WordIR.Op := [.band 6177 6183]
def bytes6066 : Bytes := ("    let r00001828: u32 = r00001821 & r00001827;\n" : String).toByteArray.data.toList
theorem checked6066 : bytes6066=statementBytes 6184 (op6066.map lower) ∧ bytes6066.length=48 := by core033_kernel_decide
def op6067 : List WordIR.Op := [.bxor 6172 6184]
def bytes6067 : Bytes := ("    let r00001829: u32 = r0000181c ^ r00001828;\n" : String).toByteArray.data.toList
theorem checked6067 : bytes6067=statementBytes 6185 (op6067.map lower) ∧ bytes6067.length=48 := by core033_kernel_decide
def op6068 : List WordIR.Op := [.shr 6185 31]
def bytes6068 : Bytes := ("    let r0000182a: u32 = r00001829 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6068 : bytes6068=statementBytes 6186 (op6068.map lower) ∧ bytes6068.length=54 := by core033_kernel_decide
def op6069 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6069 : Bytes := ("    let r0000182b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6069 : bytes6069=statementBytes 6187 (op6069.map lower) ∧ bytes6069.length=41 := by core033_kernel_decide
def op6070 : List WordIR.Op := [.bxor 6186 6187]
def bytes6070 : Bytes := ("    let r0000182c: u32 = r0000182a ^ r0000182b;\n" : String).toByteArray.data.toList
theorem checked6070 : bytes6070=statementBytes 6188 (op6070.map lower) ∧ bytes6070.length=48 := by core033_kernel_decide
def op6071 : List WordIR.Op := [.bnot 6188]
def bytes6071 : Bytes := ("    let r0000182d: u32 = !r0000182c;\n" : String).toByteArray.data.toList
theorem checked6071 : bytes6071=statementBytes 6189 (op6071.map lower) ∧ bytes6071.length=37 := by core033_kernel_decide
def op6072 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6072 : Bytes := ("    let r0000182e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6072 : bytes6072=statementBytes 6190 (op6072.map lower) ∧ bytes6072.length=41 := by core033_kernel_decide
def op6073 : List WordIR.Op := [.badd 6189 6190]
def bytes6073 : Bytes := ("    let r0000182f: u32 = r0000182d.wrapping_add(r0000182e);\n" : String).toByteArray.data.toList
theorem checked6073 : bytes6073=statementBytes 6191 (op6073.map lower) ∧ bytes6073.length=60 := by core033_kernel_decide
def op6074 : List WordIR.Op := [.bnot 6191]
def bytes6074 : Bytes := ("    let r00001830: u32 = !r0000182f;\n" : String).toByteArray.data.toList
theorem checked6074 : bytes6074=statementBytes 6192 (op6074.map lower) ∧ bytes6074.length=37 := by core033_kernel_decide
def op6075 : List WordIR.Op := [.band 6192 2654]
def bytes6075 : Bytes := ("    let r00001831: u32 = r00001830 & r00000a5e;\n" : String).toByteArray.data.toList
theorem checked6075 : bytes6075=statementBytes 6193 (op6075.map lower) ∧ bytes6075.length=48 := by core033_kernel_decide
def op6076 : List WordIR.Op := [.bxor 6167 6193]
def bytes6076 : Bytes := ("    let r00001832: u32 = r00001817 ^ r00001831;\n" : String).toByteArray.data.toList
theorem checked6076 : bytes6076=statementBytes 6194 (op6076.map lower) ∧ bytes6076.length=48 := by core033_kernel_decide
def op6077 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6077 : Bytes := ("    let r00001833: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6077 : bytes6077=statementBytes 6195 (op6077.map lower) ∧ bytes6077.length=41 := by core033_kernel_decide
def op6078 : List WordIR.Op := [.bxor 1299 6195]
def bytes6078 : Bytes := ("    let r00001834: u32 = r00000513 ^ r00001833;\n" : String).toByteArray.data.toList
theorem checked6078 : bytes6078=statementBytes 6196 (op6078.map lower) ∧ bytes6078.length=48 := by core033_kernel_decide
def op6079 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6079 : Bytes := ("    let r00001835: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6079 : bytes6079=statementBytes 6197 (op6079.map lower) ∧ bytes6079.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6016,op6017,op6018,op6019,op6020,op6021,op6022,op6023,op6024,op6025,op6026,op6027,op6028,op6029,op6030,op6031,op6032,op6033,op6034,op6035,op6036,op6037,op6038,op6039,op6040,op6041,op6042,op6043,op6044,op6045,op6046,op6047,op6048,op6049,op6050,op6051,op6052,op6053,op6054,op6055,op6056,op6057,op6058,op6059,op6060,op6061,op6062,op6063,op6064,op6065,op6066,op6067,op6068,op6069,op6070,op6071,op6072,op6073,op6074,op6075,op6076,op6077,op6078,op6079]
def chunks : List Bytes := [bytes6016,bytes6017,bytes6018,bytes6019,bytes6020,bytes6021,bytes6022,bytes6023,bytes6024,bytes6025,bytes6026,bytes6027,bytes6028,bytes6029,bytes6030,bytes6031,bytes6032,bytes6033,bytes6034,bytes6035,bytes6036,bytes6037,bytes6038,bytes6039,bytes6040,bytes6041,bytes6042,bytes6043,bytes6044,bytes6045,bytes6046,bytes6047,bytes6048,bytes6049,bytes6050,bytes6051,bytes6052,bytes6053,bytes6054,bytes6055,bytes6056,bytes6057,bytes6058,bytes6059,bytes6060,bytes6061,bytes6062,bytes6063,bytes6064,bytes6065,bytes6066,bytes6067,bytes6068,bytes6069,bytes6070,bytes6071,bytes6072,bytes6073,bytes6074,bytes6075,bytes6076,bytes6077,bytes6078,bytes6079]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6134 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6016.1 (.cons _ _ _ _ _ checked6017.1 (.cons _ _ _ _ _ checked6018.1 (.cons _ _ _ _ _ checked6019.1 (.cons _ _ _ _ _ checked6020.1 (.cons _ _ _ _ _ checked6021.1 (.cons _ _ _ _ _ checked6022.1 (.cons _ _ _ _ _ checked6023.1 (.cons _ _ _ _ _ checked6024.1 (.cons _ _ _ _ _ checked6025.1 (.cons _ _ _ _ _ checked6026.1 (.cons _ _ _ _ _ checked6027.1 (.cons _ _ _ _ _ checked6028.1 (.cons _ _ _ _ _ checked6029.1 (.cons _ _ _ _ _ checked6030.1 (.cons _ _ _ _ _ checked6031.1 (.cons _ _ _ _ _ checked6032.1 (.cons _ _ _ _ _ checked6033.1 (.cons _ _ _ _ _ checked6034.1 (.cons _ _ _ _ _ checked6035.1 (.cons _ _ _ _ _ checked6036.1 (.cons _ _ _ _ _ checked6037.1 (.cons _ _ _ _ _ checked6038.1 (.cons _ _ _ _ _ checked6039.1 (.cons _ _ _ _ _ checked6040.1 (.cons _ _ _ _ _ checked6041.1 (.cons _ _ _ _ _ checked6042.1 (.cons _ _ _ _ _ checked6043.1 (.cons _ _ _ _ _ checked6044.1 (.cons _ _ _ _ _ checked6045.1 (.cons _ _ _ _ _ checked6046.1 (.cons _ _ _ _ _ checked6047.1 (.cons _ _ _ _ _ checked6048.1 (.cons _ _ _ _ _ checked6049.1 (.cons _ _ _ _ _ checked6050.1 (.cons _ _ _ _ _ checked6051.1 (.cons _ _ _ _ _ checked6052.1 (.cons _ _ _ _ _ checked6053.1 (.cons _ _ _ _ _ checked6054.1 (.cons _ _ _ _ _ checked6055.1 (.cons _ _ _ _ _ checked6056.1 (.cons _ _ _ _ _ checked6057.1 (.cons _ _ _ _ _ checked6058.1 (.cons _ _ _ _ _ checked6059.1 (.cons _ _ _ _ _ checked6060.1 (.cons _ _ _ _ _ checked6061.1 (.cons _ _ _ _ _ checked6062.1 (.cons _ _ _ _ _ checked6063.1 (.cons _ _ _ _ _ checked6064.1 (.cons _ _ _ _ _ checked6065.1 (.cons _ _ _ _ _ checked6066.1 (.cons _ _ _ _ _ checked6067.1 (.cons _ _ _ _ _ checked6068.1 (.cons _ _ _ _ _ checked6069.1 (.cons _ _ _ _ _ checked6070.1 (.cons _ _ _ _ _ checked6071.1 (.cons _ _ _ _ _ checked6072.1 (.cons _ _ _ _ _ checked6073.1 (.cons _ _ _ _ _ checked6074.1 (.cons _ _ _ _ _ checked6075.1 (.cons _ _ _ _ _ checked6076.1 (.cons _ _ _ _ _ checked6077.1 (.cons _ _ _ _ _ checked6078.1 (.cons _ _ _ _ _ checked6079.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6134 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2867 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6016.2,checked6017.2,checked6018.2,checked6019.2,checked6020.2,checked6021.2,checked6022.2,checked6023.2,checked6024.2,checked6025.2,checked6026.2,checked6027.2,checked6028.2,checked6029.2,checked6030.2,checked6031.2,checked6032.2,checked6033.2,checked6034.2,checked6035.2,checked6036.2,checked6037.2,checked6038.2,checked6039.2,checked6040.2,checked6041.2,checked6042.2,checked6043.2,checked6044.2,checked6045.2,checked6046.2,checked6047.2,checked6048.2,checked6049.2,checked6050.2,checked6051.2,checked6052.2,checked6053.2,checked6054.2,checked6055.2,checked6056.2,checked6057.2,checked6058.2,checked6059.2,checked6060.2,checked6061.2,checked6062.2,checked6063.2,checked6064.2,checked6065.2,checked6066.2,checked6067.2,checked6068.2,checked6069.2,checked6070.2,checked6071.2,checked6072.2,checked6073.2,checked6074.2,checked6075.2,checked6076.2,checked6077.2,checked6078.2,checked6079.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup94
