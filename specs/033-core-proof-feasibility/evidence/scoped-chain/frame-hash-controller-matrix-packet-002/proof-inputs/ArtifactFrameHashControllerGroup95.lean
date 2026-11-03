import ActualFrameHashControllerIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactFrameHashControllerGroup95
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6080 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6080 : Bytes := ("    let r000017eb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6080 : bytes6080=statementBytes 6123 (op6080.map lower) ∧ bytes6080.length=41 := by core033_kernel_decide
def op6081 : List WordIR.Op := [.bxor 6122 6123]
def bytes6081 : Bytes := ("    let r000017ec: u32 = r000017ea ^ r000017eb;\n" : String).toByteArray.data.toList
theorem checked6081 : bytes6081=statementBytes 6124 (op6081.map lower) ∧ bytes6081.length=48 := by core033_kernel_decide
def op6082 : List WordIR.Op := [.shr 4371 8]
def bytes6082 : Bytes := ("    let r000017ed: u32 = r00001113 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6082 : bytes6082=statementBytes 6125 (op6082.map lower) ∧ bytes6082.length=54 := by core033_kernel_decide
def op6083 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6083 : Bytes := ("    let r000017ee: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6083 : bytes6083=statementBytes 6126 (op6083.map lower) ∧ bytes6083.length=41 := by core033_kernel_decide
def op6084 : List WordIR.Op := [.bnot 6126]
def bytes6084 : Bytes := ("    let r000017ef: u32 = !r000017ee;\n" : String).toByteArray.data.toList
theorem checked6084 : bytes6084=statementBytes 6127 (op6084.map lower) ∧ bytes6084.length=37 := by core033_kernel_decide
def op6085 : List WordIR.Op := [.band 6125 6127]
def bytes6085 : Bytes := ("    let r000017f0: u32 = r000017ed & r000017ef;\n" : String).toByteArray.data.toList
theorem checked6085 : bytes6085=statementBytes 6128 (op6085.map lower) ∧ bytes6085.length=48 := by core033_kernel_decide
def op6086 : List WordIR.Op := [.shr 4371 8]
def bytes6086 : Bytes := ("    let r000017f1: u32 = r00001113 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6086 : bytes6086=statementBytes 6129 (op6086.map lower) ∧ bytes6086.length=54 := by core033_kernel_decide
def op6087 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6087 : Bytes := ("    let r000017f2: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6087 : bytes6087=statementBytes 6130 (op6087.map lower) ∧ bytes6087.length=41 := by core033_kernel_decide
def op6088 : List WordIR.Op := [.bnot 6130]
def bytes6088 : Bytes := ("    let r000017f3: u32 = !r000017f2;\n" : String).toByteArray.data.toList
theorem checked6088 : bytes6088=statementBytes 6131 (op6088.map lower) ∧ bytes6088.length=37 := by core033_kernel_decide
def op6089 : List WordIR.Op := [.bxor 6129 6131]
def bytes6089 : Bytes := ("    let r000017f4: u32 = r000017f1 ^ r000017f3;\n" : String).toByteArray.data.toList
theorem checked6089 : bytes6089=statementBytes 6132 (op6089.map lower) ∧ bytes6089.length=48 := by core033_kernel_decide
def op6090 : List WordIR.Op := [.shr 4371 8]
def bytes6090 : Bytes := ("    let r000017f5: u32 = r00001113 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6090 : bytes6090=statementBytes 6133 (op6090.map lower) ∧ bytes6090.length=54 := by core033_kernel_decide
def op6091 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6091 : Bytes := ("    let r000017f6: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6091 : bytes6091=statementBytes 6134 (op6091.map lower) ∧ bytes6091.length=41 := by core033_kernel_decide
def op6092 : List WordIR.Op := [.bnot 6134]
def bytes6092 : Bytes := ("    let r000017f7: u32 = !r000017f6;\n" : String).toByteArray.data.toList
theorem checked6092 : bytes6092=statementBytes 6135 (op6092.map lower) ∧ bytes6092.length=37 := by core033_kernel_decide
def op6093 : List WordIR.Op := [.badd 6133 6135]
def bytes6093 : Bytes := ("    let r000017f8: u32 = r000017f5.wrapping_add(r000017f7);\n" : String).toByteArray.data.toList
theorem checked6093 : bytes6093=statementBytes 6136 (op6093.map lower) ∧ bytes6093.length=60 := by core033_kernel_decide
def op6094 : List WordIR.Op := [.bnot 6136]
def bytes6094 : Bytes := ("    let r000017f9: u32 = !r000017f8;\n" : String).toByteArray.data.toList
theorem checked6094 : bytes6094=statementBytes 6137 (op6094.map lower) ∧ bytes6094.length=37 := by core033_kernel_decide
def op6095 : List WordIR.Op := [.band 6132 6137]
def bytes6095 : Bytes := ("    let r000017fa: u32 = r000017f4 & r000017f9;\n" : String).toByteArray.data.toList
theorem checked6095 : bytes6095=statementBytes 6138 (op6095.map lower) ∧ bytes6095.length=48 := by core033_kernel_decide
def op6096 : List WordIR.Op := [.bxor 6128 6138]
def bytes6096 : Bytes := ("    let r000017fb: u32 = r000017f0 ^ r000017fa;\n" : String).toByteArray.data.toList
theorem checked6096 : bytes6096=statementBytes 6139 (op6096.map lower) ∧ bytes6096.length=48 := by core033_kernel_decide
def op6097 : List WordIR.Op := [.shr 6139 31]
def bytes6097 : Bytes := ("    let r000017fc: u32 = r000017fb >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6097 : bytes6097=statementBytes 6140 (op6097.map lower) ∧ bytes6097.length=54 := by core033_kernel_decide
def op6098 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6098 : Bytes := ("    let r000017fd: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6098 : bytes6098=statementBytes 6141 (op6098.map lower) ∧ bytes6098.length=41 := by core033_kernel_decide
def op6099 : List WordIR.Op := [.bxor 6140 6141]
def bytes6099 : Bytes := ("    let r000017fe: u32 = r000017fc ^ r000017fd;\n" : String).toByteArray.data.toList
theorem checked6099 : bytes6099=statementBytes 6142 (op6099.map lower) ∧ bytes6099.length=48 := by core033_kernel_decide
def op6100 : List WordIR.Op := [.shr 4423 8]
def bytes6100 : Bytes := ("    let r000017ff: u32 = r00001147 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6100 : bytes6100=statementBytes 6143 (op6100.map lower) ∧ bytes6100.length=54 := by core033_kernel_decide
def op6101 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6101 : Bytes := ("    let r00001800: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6101 : bytes6101=statementBytes 6144 (op6101.map lower) ∧ bytes6101.length=41 := by core033_kernel_decide
def op6102 : List WordIR.Op := [.bnot 6144]
def bytes6102 : Bytes := ("    let r00001801: u32 = !r00001800;\n" : String).toByteArray.data.toList
theorem checked6102 : bytes6102=statementBytes 6145 (op6102.map lower) ∧ bytes6102.length=37 := by core033_kernel_decide
def op6103 : List WordIR.Op := [.band 6143 6145]
def bytes6103 : Bytes := ("    let r00001802: u32 = r000017ff & r00001801;\n" : String).toByteArray.data.toList
theorem checked6103 : bytes6103=statementBytes 6146 (op6103.map lower) ∧ bytes6103.length=48 := by core033_kernel_decide
def op6104 : List WordIR.Op := [.shr 4423 8]
def bytes6104 : Bytes := ("    let r00001803: u32 = r00001147 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6104 : bytes6104=statementBytes 6147 (op6104.map lower) ∧ bytes6104.length=54 := by core033_kernel_decide
def op6105 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6105 : Bytes := ("    let r00001804: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6105 : bytes6105=statementBytes 6148 (op6105.map lower) ∧ bytes6105.length=41 := by core033_kernel_decide
def op6106 : List WordIR.Op := [.bnot 6148]
def bytes6106 : Bytes := ("    let r00001805: u32 = !r00001804;\n" : String).toByteArray.data.toList
theorem checked6106 : bytes6106=statementBytes 6149 (op6106.map lower) ∧ bytes6106.length=37 := by core033_kernel_decide
def op6107 : List WordIR.Op := [.bxor 6147 6149]
def bytes6107 : Bytes := ("    let r00001806: u32 = r00001803 ^ r00001805;\n" : String).toByteArray.data.toList
theorem checked6107 : bytes6107=statementBytes 6150 (op6107.map lower) ∧ bytes6107.length=48 := by core033_kernel_decide
def op6108 : List WordIR.Op := [.shr 4423 8]
def bytes6108 : Bytes := ("    let r00001807: u32 = r00001147 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6108 : bytes6108=statementBytes 6151 (op6108.map lower) ∧ bytes6108.length=54 := by core033_kernel_decide
def op6109 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6109 : Bytes := ("    let r00001808: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6109 : bytes6109=statementBytes 6152 (op6109.map lower) ∧ bytes6109.length=41 := by core033_kernel_decide
def op6110 : List WordIR.Op := [.bnot 6152]
def bytes6110 : Bytes := ("    let r00001809: u32 = !r00001808;\n" : String).toByteArray.data.toList
theorem checked6110 : bytes6110=statementBytes 6153 (op6110.map lower) ∧ bytes6110.length=37 := by core033_kernel_decide
def op6111 : List WordIR.Op := [.badd 6151 6153]
def bytes6111 : Bytes := ("    let r0000180a: u32 = r00001807.wrapping_add(r00001809);\n" : String).toByteArray.data.toList
theorem checked6111 : bytes6111=statementBytes 6154 (op6111.map lower) ∧ bytes6111.length=60 := by core033_kernel_decide
def op6112 : List WordIR.Op := [.bnot 6154]
def bytes6112 : Bytes := ("    let r0000180b: u32 = !r0000180a;\n" : String).toByteArray.data.toList
theorem checked6112 : bytes6112=statementBytes 6155 (op6112.map lower) ∧ bytes6112.length=37 := by core033_kernel_decide
def op6113 : List WordIR.Op := [.band 6150 6155]
def bytes6113 : Bytes := ("    let r0000180c: u32 = r00001806 & r0000180b;\n" : String).toByteArray.data.toList
theorem checked6113 : bytes6113=statementBytes 6156 (op6113.map lower) ∧ bytes6113.length=48 := by core033_kernel_decide
def op6114 : List WordIR.Op := [.bxor 6146 6156]
def bytes6114 : Bytes := ("    let r0000180d: u32 = r00001802 ^ r0000180c;\n" : String).toByteArray.data.toList
theorem checked6114 : bytes6114=statementBytes 6157 (op6114.map lower) ∧ bytes6114.length=48 := by core033_kernel_decide
def op6115 : List WordIR.Op := [.shr 6157 31]
def bytes6115 : Bytes := ("    let r0000180e: u32 = r0000180d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6115 : bytes6115=statementBytes 6158 (op6115.map lower) ∧ bytes6115.length=54 := by core033_kernel_decide
def op6116 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6116 : Bytes := ("    let r0000180f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6116 : bytes6116=statementBytes 6159 (op6116.map lower) ∧ bytes6116.length=41 := by core033_kernel_decide
def op6117 : List WordIR.Op := [.bxor 6158 6159]
def bytes6117 : Bytes := ("    let r00001810: u32 = r0000180e ^ r0000180f;\n" : String).toByteArray.data.toList
theorem checked6117 : bytes6117=statementBytes 6160 (op6117.map lower) ∧ bytes6117.length=48 := by core033_kernel_decide
def op6118 : List WordIR.Op := [.shr 4475 8]
def bytes6118 : Bytes := ("    let r00001811: u32 = r0000117b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6118 : bytes6118=statementBytes 6161 (op6118.map lower) ∧ bytes6118.length=54 := by core033_kernel_decide
def op6119 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6119 : Bytes := ("    let r00001812: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6119 : bytes6119=statementBytes 6162 (op6119.map lower) ∧ bytes6119.length=41 := by core033_kernel_decide
def op6120 : List WordIR.Op := [.bnot 6162]
def bytes6120 : Bytes := ("    let r00001813: u32 = !r00001812;\n" : String).toByteArray.data.toList
theorem checked6120 : bytes6120=statementBytes 6163 (op6120.map lower) ∧ bytes6120.length=37 := by core033_kernel_decide
def op6121 : List WordIR.Op := [.band 6161 6163]
def bytes6121 : Bytes := ("    let r00001814: u32 = r00001811 & r00001813;\n" : String).toByteArray.data.toList
theorem checked6121 : bytes6121=statementBytes 6164 (op6121.map lower) ∧ bytes6121.length=48 := by core033_kernel_decide
def op6122 : List WordIR.Op := [.shr 4475 8]
def bytes6122 : Bytes := ("    let r00001815: u32 = r0000117b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6122 : bytes6122=statementBytes 6165 (op6122.map lower) ∧ bytes6122.length=54 := by core033_kernel_decide
def op6123 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6123 : Bytes := ("    let r00001816: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6123 : bytes6123=statementBytes 6166 (op6123.map lower) ∧ bytes6123.length=41 := by core033_kernel_decide
def op6124 : List WordIR.Op := [.bnot 6166]
def bytes6124 : Bytes := ("    let r00001817: u32 = !r00001816;\n" : String).toByteArray.data.toList
theorem checked6124 : bytes6124=statementBytes 6167 (op6124.map lower) ∧ bytes6124.length=37 := by core033_kernel_decide
def op6125 : List WordIR.Op := [.bxor 6165 6167]
def bytes6125 : Bytes := ("    let r00001818: u32 = r00001815 ^ r00001817;\n" : String).toByteArray.data.toList
theorem checked6125 : bytes6125=statementBytes 6168 (op6125.map lower) ∧ bytes6125.length=48 := by core033_kernel_decide
def op6126 : List WordIR.Op := [.shr 4475 8]
def bytes6126 : Bytes := ("    let r00001819: u32 = r0000117b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6126 : bytes6126=statementBytes 6169 (op6126.map lower) ∧ bytes6126.length=54 := by core033_kernel_decide
def op6127 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6127 : Bytes := ("    let r0000181a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6127 : bytes6127=statementBytes 6170 (op6127.map lower) ∧ bytes6127.length=41 := by core033_kernel_decide
def op6128 : List WordIR.Op := [.bnot 6170]
def bytes6128 : Bytes := ("    let r0000181b: u32 = !r0000181a;\n" : String).toByteArray.data.toList
theorem checked6128 : bytes6128=statementBytes 6171 (op6128.map lower) ∧ bytes6128.length=37 := by core033_kernel_decide
def op6129 : List WordIR.Op := [.badd 6169 6171]
def bytes6129 : Bytes := ("    let r0000181c: u32 = r00001819.wrapping_add(r0000181b);\n" : String).toByteArray.data.toList
theorem checked6129 : bytes6129=statementBytes 6172 (op6129.map lower) ∧ bytes6129.length=60 := by core033_kernel_decide
def op6130 : List WordIR.Op := [.bnot 6172]
def bytes6130 : Bytes := ("    let r0000181d: u32 = !r0000181c;\n" : String).toByteArray.data.toList
theorem checked6130 : bytes6130=statementBytes 6173 (op6130.map lower) ∧ bytes6130.length=37 := by core033_kernel_decide
def op6131 : List WordIR.Op := [.band 6168 6173]
def bytes6131 : Bytes := ("    let r0000181e: u32 = r00001818 & r0000181d;\n" : String).toByteArray.data.toList
theorem checked6131 : bytes6131=statementBytes 6174 (op6131.map lower) ∧ bytes6131.length=48 := by core033_kernel_decide
def op6132 : List WordIR.Op := [.bxor 6164 6174]
def bytes6132 : Bytes := ("    let r0000181f: u32 = r00001814 ^ r0000181e;\n" : String).toByteArray.data.toList
theorem checked6132 : bytes6132=statementBytes 6175 (op6132.map lower) ∧ bytes6132.length=48 := by core033_kernel_decide
def op6133 : List WordIR.Op := [.shr 6175 31]
def bytes6133 : Bytes := ("    let r00001820: u32 = r0000181f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6133 : bytes6133=statementBytes 6176 (op6133.map lower) ∧ bytes6133.length=54 := by core033_kernel_decide
def op6134 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6134 : Bytes := ("    let r00001821: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6134 : bytes6134=statementBytes 6177 (op6134.map lower) ∧ bytes6134.length=41 := by core033_kernel_decide
def op6135 : List WordIR.Op := [.bxor 6176 6177]
def bytes6135 : Bytes := ("    let r00001822: u32 = r00001820 ^ r00001821;\n" : String).toByteArray.data.toList
theorem checked6135 : bytes6135=statementBytes 6178 (op6135.map lower) ∧ bytes6135.length=48 := by core033_kernel_decide
def op6136 : List WordIR.Op := [.shr 4528 8]
def bytes6136 : Bytes := ("    let r00001823: u32 = r000011b0 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6136 : bytes6136=statementBytes 6179 (op6136.map lower) ∧ bytes6136.length=54 := by core033_kernel_decide
def op6137 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6137 : Bytes := ("    let r00001824: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6137 : bytes6137=statementBytes 6180 (op6137.map lower) ∧ bytes6137.length=41 := by core033_kernel_decide
def op6138 : List WordIR.Op := [.bnot 6180]
def bytes6138 : Bytes := ("    let r00001825: u32 = !r00001824;\n" : String).toByteArray.data.toList
theorem checked6138 : bytes6138=statementBytes 6181 (op6138.map lower) ∧ bytes6138.length=37 := by core033_kernel_decide
def op6139 : List WordIR.Op := [.band 6179 6181]
def bytes6139 : Bytes := ("    let r00001826: u32 = r00001823 & r00001825;\n" : String).toByteArray.data.toList
theorem checked6139 : bytes6139=statementBytes 6182 (op6139.map lower) ∧ bytes6139.length=48 := by core033_kernel_decide
def op6140 : List WordIR.Op := [.shr 4528 8]
def bytes6140 : Bytes := ("    let r00001827: u32 = r000011b0 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked6140 : bytes6140=statementBytes 6183 (op6140.map lower) ∧ bytes6140.length=54 := by core033_kernel_decide
def op6141 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6141 : Bytes := ("    let r00001828: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6141 : bytes6141=statementBytes 6184 (op6141.map lower) ∧ bytes6141.length=41 := by core033_kernel_decide
def op6142 : List WordIR.Op := [.bnot 6184]
def bytes6142 : Bytes := ("    let r00001829: u32 = !r00001828;\n" : String).toByteArray.data.toList
theorem checked6142 : bytes6142=statementBytes 6185 (op6142.map lower) ∧ bytes6142.length=37 := by core033_kernel_decide
def op6143 : List WordIR.Op := [.bxor 6183 6185]
def bytes6143 : Bytes := ("    let r0000182a: u32 = r00001827 ^ r00001829;\n" : String).toByteArray.data.toList
theorem checked6143 : bytes6143=statementBytes 6186 (op6143.map lower) ∧ bytes6143.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6080,op6081,op6082,op6083,op6084,op6085,op6086,op6087,op6088,op6089,op6090,op6091,op6092,op6093,op6094,op6095,op6096,op6097,op6098,op6099,op6100,op6101,op6102,op6103,op6104,op6105,op6106,op6107,op6108,op6109,op6110,op6111,op6112,op6113,op6114,op6115,op6116,op6117,op6118,op6119,op6120,op6121,op6122,op6123,op6124,op6125,op6126,op6127,op6128,op6129,op6130,op6131,op6132,op6133,op6134,op6135,op6136,op6137,op6138,op6139,op6140,op6141,op6142,op6143]
def chunks : List Bytes := [bytes6080,bytes6081,bytes6082,bytes6083,bytes6084,bytes6085,bytes6086,bytes6087,bytes6088,bytes6089,bytes6090,bytes6091,bytes6092,bytes6093,bytes6094,bytes6095,bytes6096,bytes6097,bytes6098,bytes6099,bytes6100,bytes6101,bytes6102,bytes6103,bytes6104,bytes6105,bytes6106,bytes6107,bytes6108,bytes6109,bytes6110,bytes6111,bytes6112,bytes6113,bytes6114,bytes6115,bytes6116,bytes6117,bytes6118,bytes6119,bytes6120,bytes6121,bytes6122,bytes6123,bytes6124,bytes6125,bytes6126,bytes6127,bytes6128,bytes6129,bytes6130,bytes6131,bytes6132,bytes6133,bytes6134,bytes6135,bytes6136,bytes6137,bytes6138,bytes6139,bytes6140,bytes6141,bytes6142,bytes6143]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6123 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6080.1 (.cons _ _ _ _ _ checked6081.1 (.cons _ _ _ _ _ checked6082.1 (.cons _ _ _ _ _ checked6083.1 (.cons _ _ _ _ _ checked6084.1 (.cons _ _ _ _ _ checked6085.1 (.cons _ _ _ _ _ checked6086.1 (.cons _ _ _ _ _ checked6087.1 (.cons _ _ _ _ _ checked6088.1 (.cons _ _ _ _ _ checked6089.1 (.cons _ _ _ _ _ checked6090.1 (.cons _ _ _ _ _ checked6091.1 (.cons _ _ _ _ _ checked6092.1 (.cons _ _ _ _ _ checked6093.1 (.cons _ _ _ _ _ checked6094.1 (.cons _ _ _ _ _ checked6095.1 (.cons _ _ _ _ _ checked6096.1 (.cons _ _ _ _ _ checked6097.1 (.cons _ _ _ _ _ checked6098.1 (.cons _ _ _ _ _ checked6099.1 (.cons _ _ _ _ _ checked6100.1 (.cons _ _ _ _ _ checked6101.1 (.cons _ _ _ _ _ checked6102.1 (.cons _ _ _ _ _ checked6103.1 (.cons _ _ _ _ _ checked6104.1 (.cons _ _ _ _ _ checked6105.1 (.cons _ _ _ _ _ checked6106.1 (.cons _ _ _ _ _ checked6107.1 (.cons _ _ _ _ _ checked6108.1 (.cons _ _ _ _ _ checked6109.1 (.cons _ _ _ _ _ checked6110.1 (.cons _ _ _ _ _ checked6111.1 (.cons _ _ _ _ _ checked6112.1 (.cons _ _ _ _ _ checked6113.1 (.cons _ _ _ _ _ checked6114.1 (.cons _ _ _ _ _ checked6115.1 (.cons _ _ _ _ _ checked6116.1 (.cons _ _ _ _ _ checked6117.1 (.cons _ _ _ _ _ checked6118.1 (.cons _ _ _ _ _ checked6119.1 (.cons _ _ _ _ _ checked6120.1 (.cons _ _ _ _ _ checked6121.1 (.cons _ _ _ _ _ checked6122.1 (.cons _ _ _ _ _ checked6123.1 (.cons _ _ _ _ _ checked6124.1 (.cons _ _ _ _ _ checked6125.1 (.cons _ _ _ _ _ checked6126.1 (.cons _ _ _ _ _ checked6127.1 (.cons _ _ _ _ _ checked6128.1 (.cons _ _ _ _ _ checked6129.1 (.cons _ _ _ _ _ checked6130.1 (.cons _ _ _ _ _ checked6131.1 (.cons _ _ _ _ _ checked6132.1 (.cons _ _ _ _ _ checked6133.1 (.cons _ _ _ _ _ checked6134.1 (.cons _ _ _ _ _ checked6135.1 (.cons _ _ _ _ _ checked6136.1 (.cons _ _ _ _ _ checked6137.1 (.cons _ _ _ _ _ checked6138.1 (.cons _ _ _ _ _ checked6139.1 (.cons _ _ _ _ _ checked6140.1 (.cons _ _ _ _ _ checked6141.1 (.cons _ _ _ _ _ checked6142.1 (.cons _ _ _ _ _ checked6143.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6123 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2933 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6080.2,checked6081.2,checked6082.2,checked6083.2,checked6084.2,checked6085.2,checked6086.2,checked6087.2,checked6088.2,checked6089.2,checked6090.2,checked6091.2,checked6092.2,checked6093.2,checked6094.2,checked6095.2,checked6096.2,checked6097.2,checked6098.2,checked6099.2,checked6100.2,checked6101.2,checked6102.2,checked6103.2,checked6104.2,checked6105.2,checked6106.2,checked6107.2,checked6108.2,checked6109.2,checked6110.2,checked6111.2,checked6112.2,checked6113.2,checked6114.2,checked6115.2,checked6116.2,checked6117.2,checked6118.2,checked6119.2,checked6120.2,checked6121.2,checked6122.2,checked6123.2,checked6124.2,checked6125.2,checked6126.2,checked6127.2,checked6128.2,checked6129.2,checked6130.2,checked6131.2,checked6132.2,checked6133.2,checked6134.2,checked6135.2,checked6136.2,checked6137.2,checked6138.2,checked6139.2,checked6140.2,checked6141.2,checked6142.2,checked6143.2]
  decide
end ArtifactFrameHashControllerGroup95
