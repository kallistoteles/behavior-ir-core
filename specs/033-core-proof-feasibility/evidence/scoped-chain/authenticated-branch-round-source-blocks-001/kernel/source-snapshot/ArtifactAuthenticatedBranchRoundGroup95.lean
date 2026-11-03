import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup95
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op6080 : List WordIR.Op := [.bnot 6197]
def bytes6080 : Bytes := ("    let r00001836: u32 = !r00001835;\n" : String).toByteArray.data.toList
theorem checked6080 : bytes6080=statementBytes 6198 (op6080.map lower) ∧ bytes6080.length=37 := by core033_kernel_decide
def op6081 : List WordIR.Op := [.band 6196 6198]
def bytes6081 : Bytes := ("    let r00001837: u32 = r00001834 & r00001836;\n" : String).toByteArray.data.toList
theorem checked6081 : bytes6081=statementBytes 6199 (op6081.map lower) ∧ bytes6081.length=48 := by core033_kernel_decide
def op6082 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6082 : Bytes := ("    let r00001838: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6082 : bytes6082=statementBytes 6200 (op6082.map lower) ∧ bytes6082.length=41 := by core033_kernel_decide
def op6083 : List WordIR.Op := [.bxor 1299 6200]
def bytes6083 : Bytes := ("    let r00001839: u32 = r00000513 ^ r00001838;\n" : String).toByteArray.data.toList
theorem checked6083 : bytes6083=statementBytes 6201 (op6083.map lower) ∧ bytes6083.length=48 := by core033_kernel_decide
def op6084 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6084 : Bytes := ("    let r0000183a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6084 : bytes6084=statementBytes 6202 (op6084.map lower) ∧ bytes6084.length=41 := by core033_kernel_decide
def op6085 : List WordIR.Op := [.bnot 6202]
def bytes6085 : Bytes := ("    let r0000183b: u32 = !r0000183a;\n" : String).toByteArray.data.toList
theorem checked6085 : bytes6085=statementBytes 6203 (op6085.map lower) ∧ bytes6085.length=37 := by core033_kernel_decide
def op6086 : List WordIR.Op := [.bxor 6201 6203]
def bytes6086 : Bytes := ("    let r0000183c: u32 = r00001839 ^ r0000183b;\n" : String).toByteArray.data.toList
theorem checked6086 : bytes6086=statementBytes 6204 (op6086.map lower) ∧ bytes6086.length=48 := by core033_kernel_decide
def op6087 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6087 : Bytes := ("    let r0000183d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6087 : bytes6087=statementBytes 6205 (op6087.map lower) ∧ bytes6087.length=41 := by core033_kernel_decide
def op6088 : List WordIR.Op := [.bxor 1299 6205]
def bytes6088 : Bytes := ("    let r0000183e: u32 = r00000513 ^ r0000183d;\n" : String).toByteArray.data.toList
theorem checked6088 : bytes6088=statementBytes 6206 (op6088.map lower) ∧ bytes6088.length=48 := by core033_kernel_decide
def op6089 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6089 : Bytes := ("    let r0000183f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6089 : bytes6089=statementBytes 6207 (op6089.map lower) ∧ bytes6089.length=41 := by core033_kernel_decide
def op6090 : List WordIR.Op := [.bnot 6207]
def bytes6090 : Bytes := ("    let r00001840: u32 = !r0000183f;\n" : String).toByteArray.data.toList
theorem checked6090 : bytes6090=statementBytes 6208 (op6090.map lower) ∧ bytes6090.length=37 := by core033_kernel_decide
def op6091 : List WordIR.Op := [.badd 6206 6208]
def bytes6091 : Bytes := ("    let r00001841: u32 = r0000183e.wrapping_add(r00001840);\n" : String).toByteArray.data.toList
theorem checked6091 : bytes6091=statementBytes 6209 (op6091.map lower) ∧ bytes6091.length=60 := by core033_kernel_decide
def op6092 : List WordIR.Op := [.bnot 6209]
def bytes6092 : Bytes := ("    let r00001842: u32 = !r00001841;\n" : String).toByteArray.data.toList
theorem checked6092 : bytes6092=statementBytes 6210 (op6092.map lower) ∧ bytes6092.length=37 := by core033_kernel_decide
def op6093 : List WordIR.Op := [.band 6204 6210]
def bytes6093 : Bytes := ("    let r00001843: u32 = r0000183c & r00001842;\n" : String).toByteArray.data.toList
theorem checked6093 : bytes6093=statementBytes 6211 (op6093.map lower) ∧ bytes6093.length=48 := by core033_kernel_decide
def op6094 : List WordIR.Op := [.bxor 6199 6211]
def bytes6094 : Bytes := ("    let r00001844: u32 = r00001837 ^ r00001843;\n" : String).toByteArray.data.toList
theorem checked6094 : bytes6094=statementBytes 6212 (op6094.map lower) ∧ bytes6094.length=48 := by core033_kernel_decide
def op6095 : List WordIR.Op := [.shr 6212 31]
def bytes6095 : Bytes := ("    let r00001845: u32 = r00001844 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6095 : bytes6095=statementBytes 6213 (op6095.map lower) ∧ bytes6095.length=54 := by core033_kernel_decide
def op6096 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6096 : Bytes := ("    let r00001846: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6096 : bytes6096=statementBytes 6214 (op6096.map lower) ∧ bytes6096.length=41 := by core033_kernel_decide
def op6097 : List WordIR.Op := [.bxor 6213 6214]
def bytes6097 : Bytes := ("    let r00001847: u32 = r00001845 ^ r00001846;\n" : String).toByteArray.data.toList
theorem checked6097 : bytes6097=statementBytes 6215 (op6097.map lower) ∧ bytes6097.length=48 := by core033_kernel_decide
def op6098 : List WordIR.Op := [.bnot 6215]
def bytes6098 : Bytes := ("    let r00001848: u32 = !r00001847;\n" : String).toByteArray.data.toList
theorem checked6098 : bytes6098=statementBytes 6216 (op6098.map lower) ∧ bytes6098.length=37 := by core033_kernel_decide
def op6099 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6099 : Bytes := ("    let r00001849: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6099 : bytes6099=statementBytes 6217 (op6099.map lower) ∧ bytes6099.length=41 := by core033_kernel_decide
def op6100 : List WordIR.Op := [.badd 6216 6217]
def bytes6100 : Bytes := ("    let r0000184a: u32 = r00001848.wrapping_add(r00001849);\n" : String).toByteArray.data.toList
theorem checked6100 : bytes6100=statementBytes 6218 (op6100.map lower) ∧ bytes6100.length=60 := by core033_kernel_decide
def op6101 : List WordIR.Op := [.literal (BitVec.ofNat 32 128)]
def bytes6101 : Bytes := ("    let r0000184b: u32 = 0x00000080_u32;\n" : String).toByteArray.data.toList
theorem checked6101 : bytes6101=statementBytes 6219 (op6101.map lower) ∧ bytes6101.length=41 := by core033_kernel_decide
def op6102 : List WordIR.Op := [.band 6218 6219]
def bytes6102 : Bytes := ("    let r0000184c: u32 = r0000184a & r0000184b;\n" : String).toByteArray.data.toList
theorem checked6102 : bytes6102=statementBytes 6220 (op6102.map lower) ∧ bytes6102.length=48 := by core033_kernel_decide
def op6103 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6103 : Bytes := ("    let r0000184d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6103 : bytes6103=statementBytes 6221 (op6103.map lower) ∧ bytes6103.length=41 := by core033_kernel_decide
def op6104 : List WordIR.Op := [.bxor 1299 6221]
def bytes6104 : Bytes := ("    let r0000184e: u32 = r00000513 ^ r0000184d;\n" : String).toByteArray.data.toList
theorem checked6104 : bytes6104=statementBytes 6222 (op6104.map lower) ∧ bytes6104.length=48 := by core033_kernel_decide
def op6105 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6105 : Bytes := ("    let r0000184f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6105 : bytes6105=statementBytes 6223 (op6105.map lower) ∧ bytes6105.length=41 := by core033_kernel_decide
def op6106 : List WordIR.Op := [.bnot 6223]
def bytes6106 : Bytes := ("    let r00001850: u32 = !r0000184f;\n" : String).toByteArray.data.toList
theorem checked6106 : bytes6106=statementBytes 6224 (op6106.map lower) ∧ bytes6106.length=37 := by core033_kernel_decide
def op6107 : List WordIR.Op := [.band 6222 6224]
def bytes6107 : Bytes := ("    let r00001851: u32 = r0000184e & r00001850;\n" : String).toByteArray.data.toList
theorem checked6107 : bytes6107=statementBytes 6225 (op6107.map lower) ∧ bytes6107.length=48 := by core033_kernel_decide
def op6108 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6108 : Bytes := ("    let r00001852: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6108 : bytes6108=statementBytes 6226 (op6108.map lower) ∧ bytes6108.length=41 := by core033_kernel_decide
def op6109 : List WordIR.Op := [.bxor 1299 6226]
def bytes6109 : Bytes := ("    let r00001853: u32 = r00000513 ^ r00001852;\n" : String).toByteArray.data.toList
theorem checked6109 : bytes6109=statementBytes 6227 (op6109.map lower) ∧ bytes6109.length=48 := by core033_kernel_decide
def op6110 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6110 : Bytes := ("    let r00001854: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6110 : bytes6110=statementBytes 6228 (op6110.map lower) ∧ bytes6110.length=41 := by core033_kernel_decide
def op6111 : List WordIR.Op := [.bnot 6228]
def bytes6111 : Bytes := ("    let r00001855: u32 = !r00001854;\n" : String).toByteArray.data.toList
theorem checked6111 : bytes6111=statementBytes 6229 (op6111.map lower) ∧ bytes6111.length=37 := by core033_kernel_decide
def op6112 : List WordIR.Op := [.bxor 6227 6229]
def bytes6112 : Bytes := ("    let r00001856: u32 = r00001853 ^ r00001855;\n" : String).toByteArray.data.toList
theorem checked6112 : bytes6112=statementBytes 6230 (op6112.map lower) ∧ bytes6112.length=48 := by core033_kernel_decide
def op6113 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6113 : Bytes := ("    let r00001857: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6113 : bytes6113=statementBytes 6231 (op6113.map lower) ∧ bytes6113.length=41 := by core033_kernel_decide
def op6114 : List WordIR.Op := [.bxor 1299 6231]
def bytes6114 : Bytes := ("    let r00001858: u32 = r00000513 ^ r00001857;\n" : String).toByteArray.data.toList
theorem checked6114 : bytes6114=statementBytes 6232 (op6114.map lower) ∧ bytes6114.length=48 := by core033_kernel_decide
def op6115 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6115 : Bytes := ("    let r00001859: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6115 : bytes6115=statementBytes 6233 (op6115.map lower) ∧ bytes6115.length=41 := by core033_kernel_decide
def op6116 : List WordIR.Op := [.bnot 6233]
def bytes6116 : Bytes := ("    let r0000185a: u32 = !r00001859;\n" : String).toByteArray.data.toList
theorem checked6116 : bytes6116=statementBytes 6234 (op6116.map lower) ∧ bytes6116.length=37 := by core033_kernel_decide
def op6117 : List WordIR.Op := [.badd 6232 6234]
def bytes6117 : Bytes := ("    let r0000185b: u32 = r00001858.wrapping_add(r0000185a);\n" : String).toByteArray.data.toList
theorem checked6117 : bytes6117=statementBytes 6235 (op6117.map lower) ∧ bytes6117.length=60 := by core033_kernel_decide
def op6118 : List WordIR.Op := [.bnot 6235]
def bytes6118 : Bytes := ("    let r0000185c: u32 = !r0000185b;\n" : String).toByteArray.data.toList
theorem checked6118 : bytes6118=statementBytes 6236 (op6118.map lower) ∧ bytes6118.length=37 := by core033_kernel_decide
def op6119 : List WordIR.Op := [.band 6230 6236]
def bytes6119 : Bytes := ("    let r0000185d: u32 = r00001856 & r0000185c;\n" : String).toByteArray.data.toList
theorem checked6119 : bytes6119=statementBytes 6237 (op6119.map lower) ∧ bytes6119.length=48 := by core033_kernel_decide
def op6120 : List WordIR.Op := [.bxor 6225 6237]
def bytes6120 : Bytes := ("    let r0000185e: u32 = r00001851 ^ r0000185d;\n" : String).toByteArray.data.toList
theorem checked6120 : bytes6120=statementBytes 6238 (op6120.map lower) ∧ bytes6120.length=48 := by core033_kernel_decide
def op6121 : List WordIR.Op := [.shr 6238 31]
def bytes6121 : Bytes := ("    let r0000185f: u32 = r0000185e >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked6121 : bytes6121=statementBytes 6239 (op6121.map lower) ∧ bytes6121.length=54 := by core033_kernel_decide
def op6122 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6122 : Bytes := ("    let r00001860: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6122 : bytes6122=statementBytes 6240 (op6122.map lower) ∧ bytes6122.length=41 := by core033_kernel_decide
def op6123 : List WordIR.Op := [.bxor 6239 6240]
def bytes6123 : Bytes := ("    let r00001861: u32 = r0000185f ^ r00001860;\n" : String).toByteArray.data.toList
theorem checked6123 : bytes6123=statementBytes 6241 (op6123.map lower) ∧ bytes6123.length=48 := by core033_kernel_decide
def op6124 : List WordIR.Op := [.bnot 6241]
def bytes6124 : Bytes := ("    let r00001862: u32 = !r00001861;\n" : String).toByteArray.data.toList
theorem checked6124 : bytes6124=statementBytes 6242 (op6124.map lower) ∧ bytes6124.length=37 := by core033_kernel_decide
def op6125 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes6125 : Bytes := ("    let r00001863: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked6125 : bytes6125=statementBytes 6243 (op6125.map lower) ∧ bytes6125.length=41 := by core033_kernel_decide
def op6126 : List WordIR.Op := [.badd 6242 6243]
def bytes6126 : Bytes := ("    let r00001864: u32 = r00001862.wrapping_add(r00001863);\n" : String).toByteArray.data.toList
theorem checked6126 : bytes6126=statementBytes 6244 (op6126.map lower) ∧ bytes6126.length=60 := by core033_kernel_decide
def op6127 : List WordIR.Op := [.bnot 6244]
def bytes6127 : Bytes := ("    let r00001865: u32 = !r00001864;\n" : String).toByteArray.data.toList
theorem checked6127 : bytes6127=statementBytes 6245 (op6127.map lower) ∧ bytes6127.length=37 := by core033_kernel_decide
def op6128 : List WordIR.Op := [.band 6245 2657]
def bytes6128 : Bytes := ("    let r00001866: u32 = r00001865 & r00000a61;\n" : String).toByteArray.data.toList
theorem checked6128 : bytes6128=statementBytes 6246 (op6128.map lower) ∧ bytes6128.length=48 := by core033_kernel_decide
def op6129 : List WordIR.Op := [.bxor 6220 6246]
def bytes6129 : Bytes := ("    let r00001867: u32 = r0000184c ^ r00001866;\n" : String).toByteArray.data.toList
theorem checked6129 : bytes6129=statementBytes 6247 (op6129.map lower) ∧ bytes6129.length=48 := by core033_kernel_decide
def op6130 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6130 : Bytes := ("    let r00001868: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6130 : bytes6130=statementBytes 6248 (op6130.map lower) ∧ bytes6130.length=41 := by core033_kernel_decide
def op6131 : List WordIR.Op := [.bxor 1299 6248]
def bytes6131 : Bytes := ("    let r00001869: u32 = r00000513 ^ r00001868;\n" : String).toByteArray.data.toList
theorem checked6131 : bytes6131=statementBytes 6249 (op6131.map lower) ∧ bytes6131.length=48 := by core033_kernel_decide
def op6132 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6132 : Bytes := ("    let r0000186a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6132 : bytes6132=statementBytes 6250 (op6132.map lower) ∧ bytes6132.length=41 := by core033_kernel_decide
def op6133 : List WordIR.Op := [.bnot 6250]
def bytes6133 : Bytes := ("    let r0000186b: u32 = !r0000186a;\n" : String).toByteArray.data.toList
theorem checked6133 : bytes6133=statementBytes 6251 (op6133.map lower) ∧ bytes6133.length=37 := by core033_kernel_decide
def op6134 : List WordIR.Op := [.band 6249 6251]
def bytes6134 : Bytes := ("    let r0000186c: u32 = r00001869 & r0000186b;\n" : String).toByteArray.data.toList
theorem checked6134 : bytes6134=statementBytes 6252 (op6134.map lower) ∧ bytes6134.length=48 := by core033_kernel_decide
def op6135 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6135 : Bytes := ("    let r0000186d: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6135 : bytes6135=statementBytes 6253 (op6135.map lower) ∧ bytes6135.length=41 := by core033_kernel_decide
def op6136 : List WordIR.Op := [.bxor 1299 6253]
def bytes6136 : Bytes := ("    let r0000186e: u32 = r00000513 ^ r0000186d;\n" : String).toByteArray.data.toList
theorem checked6136 : bytes6136=statementBytes 6254 (op6136.map lower) ∧ bytes6136.length=48 := by core033_kernel_decide
def op6137 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6137 : Bytes := ("    let r0000186f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6137 : bytes6137=statementBytes 6255 (op6137.map lower) ∧ bytes6137.length=41 := by core033_kernel_decide
def op6138 : List WordIR.Op := [.bnot 6255]
def bytes6138 : Bytes := ("    let r00001870: u32 = !r0000186f;\n" : String).toByteArray.data.toList
theorem checked6138 : bytes6138=statementBytes 6256 (op6138.map lower) ∧ bytes6138.length=37 := by core033_kernel_decide
def op6139 : List WordIR.Op := [.bxor 6254 6256]
def bytes6139 : Bytes := ("    let r00001871: u32 = r0000186e ^ r00001870;\n" : String).toByteArray.data.toList
theorem checked6139 : bytes6139=statementBytes 6257 (op6139.map lower) ∧ bytes6139.length=48 := by core033_kernel_decide
def op6140 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes6140 : Bytes := ("    let r00001872: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked6140 : bytes6140=statementBytes 6258 (op6140.map lower) ∧ bytes6140.length=41 := by core033_kernel_decide
def op6141 : List WordIR.Op := [.bxor 1299 6258]
def bytes6141 : Bytes := ("    let r00001873: u32 = r00000513 ^ r00001872;\n" : String).toByteArray.data.toList
theorem checked6141 : bytes6141=statementBytes 6259 (op6141.map lower) ∧ bytes6141.length=48 := by core033_kernel_decide
def op6142 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes6142 : Bytes := ("    let r00001874: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked6142 : bytes6142=statementBytes 6260 (op6142.map lower) ∧ bytes6142.length=41 := by core033_kernel_decide
def op6143 : List WordIR.Op := [.bnot 6260]
def bytes6143 : Bytes := ("    let r00001875: u32 = !r00001874;\n" : String).toByteArray.data.toList
theorem checked6143 : bytes6143=statementBytes 6261 (op6143.map lower) ∧ bytes6143.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op6080,op6081,op6082,op6083,op6084,op6085,op6086,op6087,op6088,op6089,op6090,op6091,op6092,op6093,op6094,op6095,op6096,op6097,op6098,op6099,op6100,op6101,op6102,op6103,op6104,op6105,op6106,op6107,op6108,op6109,op6110,op6111,op6112,op6113,op6114,op6115,op6116,op6117,op6118,op6119,op6120,op6121,op6122,op6123,op6124,op6125,op6126,op6127,op6128,op6129,op6130,op6131,op6132,op6133,op6134,op6135,op6136,op6137,op6138,op6139,op6140,op6141,op6142,op6143]
def chunks : List Bytes := [bytes6080,bytes6081,bytes6082,bytes6083,bytes6084,bytes6085,bytes6086,bytes6087,bytes6088,bytes6089,bytes6090,bytes6091,bytes6092,bytes6093,bytes6094,bytes6095,bytes6096,bytes6097,bytes6098,bytes6099,bytes6100,bytes6101,bytes6102,bytes6103,bytes6104,bytes6105,bytes6106,bytes6107,bytes6108,bytes6109,bytes6110,bytes6111,bytes6112,bytes6113,bytes6114,bytes6115,bytes6116,bytes6117,bytes6118,bytes6119,bytes6120,bytes6121,bytes6122,bytes6123,bytes6124,bytes6125,bytes6126,bytes6127,bytes6128,bytes6129,bytes6130,bytes6131,bytes6132,bytes6133,bytes6134,bytes6135,bytes6136,bytes6137,bytes6138,bytes6139,bytes6140,bytes6141,bytes6142,bytes6143]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 6198 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked6080.1 (.cons _ _ _ _ _ checked6081.1 (.cons _ _ _ _ _ checked6082.1 (.cons _ _ _ _ _ checked6083.1 (.cons _ _ _ _ _ checked6084.1 (.cons _ _ _ _ _ checked6085.1 (.cons _ _ _ _ _ checked6086.1 (.cons _ _ _ _ _ checked6087.1 (.cons _ _ _ _ _ checked6088.1 (.cons _ _ _ _ _ checked6089.1 (.cons _ _ _ _ _ checked6090.1 (.cons _ _ _ _ _ checked6091.1 (.cons _ _ _ _ _ checked6092.1 (.cons _ _ _ _ _ checked6093.1 (.cons _ _ _ _ _ checked6094.1 (.cons _ _ _ _ _ checked6095.1 (.cons _ _ _ _ _ checked6096.1 (.cons _ _ _ _ _ checked6097.1 (.cons _ _ _ _ _ checked6098.1 (.cons _ _ _ _ _ checked6099.1 (.cons _ _ _ _ _ checked6100.1 (.cons _ _ _ _ _ checked6101.1 (.cons _ _ _ _ _ checked6102.1 (.cons _ _ _ _ _ checked6103.1 (.cons _ _ _ _ _ checked6104.1 (.cons _ _ _ _ _ checked6105.1 (.cons _ _ _ _ _ checked6106.1 (.cons _ _ _ _ _ checked6107.1 (.cons _ _ _ _ _ checked6108.1 (.cons _ _ _ _ _ checked6109.1 (.cons _ _ _ _ _ checked6110.1 (.cons _ _ _ _ _ checked6111.1 (.cons _ _ _ _ _ checked6112.1 (.cons _ _ _ _ _ checked6113.1 (.cons _ _ _ _ _ checked6114.1 (.cons _ _ _ _ _ checked6115.1 (.cons _ _ _ _ _ checked6116.1 (.cons _ _ _ _ _ checked6117.1 (.cons _ _ _ _ _ checked6118.1 (.cons _ _ _ _ _ checked6119.1 (.cons _ _ _ _ _ checked6120.1 (.cons _ _ _ _ _ checked6121.1 (.cons _ _ _ _ _ checked6122.1 (.cons _ _ _ _ _ checked6123.1 (.cons _ _ _ _ _ checked6124.1 (.cons _ _ _ _ _ checked6125.1 (.cons _ _ _ _ _ checked6126.1 (.cons _ _ _ _ _ checked6127.1 (.cons _ _ _ _ _ checked6128.1 (.cons _ _ _ _ _ checked6129.1 (.cons _ _ _ _ _ checked6130.1 (.cons _ _ _ _ _ checked6131.1 (.cons _ _ _ _ _ checked6132.1 (.cons _ _ _ _ _ checked6133.1 (.cons _ _ _ _ _ checked6134.1 (.cons _ _ _ _ _ checked6135.1 (.cons _ _ _ _ _ checked6136.1 (.cons _ _ _ _ _ checked6137.1 (.cons _ _ _ _ _ checked6138.1 (.cons _ _ _ _ _ checked6139.1 (.cons _ _ _ _ _ checked6140.1 (.cons _ _ _ _ _ checked6141.1 (.cons _ _ _ _ _ checked6142.1 (.cons _ _ _ _ _ checked6143.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 6198 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2831 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked6080.2,checked6081.2,checked6082.2,checked6083.2,checked6084.2,checked6085.2,checked6086.2,checked6087.2,checked6088.2,checked6089.2,checked6090.2,checked6091.2,checked6092.2,checked6093.2,checked6094.2,checked6095.2,checked6096.2,checked6097.2,checked6098.2,checked6099.2,checked6100.2,checked6101.2,checked6102.2,checked6103.2,checked6104.2,checked6105.2,checked6106.2,checked6107.2,checked6108.2,checked6109.2,checked6110.2,checked6111.2,checked6112.2,checked6113.2,checked6114.2,checked6115.2,checked6116.2,checked6117.2,checked6118.2,checked6119.2,checked6120.2,checked6121.2,checked6122.2,checked6123.2,checked6124.2,checked6125.2,checked6126.2,checked6127.2,checked6128.2,checked6129.2,checked6130.2,checked6131.2,checked6132.2,checked6133.2,checked6134.2,checked6135.2,checked6136.2,checked6137.2,checked6138.2,checked6139.2,checked6140.2,checked6141.2,checked6142.2,checked6143.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup95
