import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup142
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9088 : List WordIR.Op := [.bxor 9204 9205]
def bytes9088 : Bytes := ("    let r000023f6: u32 = r000023f4 ^ r000023f5;\n" : String).toByteArray.data.toList
theorem checked9088 : bytes9088=statementBytes 9206 (op9088.map lower) ∧ bytes9088.length=48 := by core033_kernel_decide
def op9089 : List WordIR.Op := [.band 9186 9159]
def bytes9089 : Bytes := ("    let r000023f7: u32 = r000023e2 & r000023c7;\n" : String).toByteArray.data.toList
theorem checked9089 : bytes9089=statementBytes 9207 (op9089.map lower) ∧ bytes9089.length=48 := by core033_kernel_decide
def op9090 : List WordIR.Op := [.band 9186 9132]
def bytes9090 : Bytes := ("    let r000023f8: u32 = r000023e2 & r000023ac;\n" : String).toByteArray.data.toList
theorem checked9090 : bytes9090=statementBytes 9208 (op9090.map lower) ∧ bytes9090.length=48 := by core033_kernel_decide
def op9091 : List WordIR.Op := [.bxor 9207 9208]
def bytes9091 : Bytes := ("    let r000023f9: u32 = r000023f7 ^ r000023f8;\n" : String).toByteArray.data.toList
theorem checked9091 : bytes9091=statementBytes 9209 (op9091.map lower) ∧ bytes9091.length=48 := by core033_kernel_decide
def op9092 : List WordIR.Op := [.band 9159 9132]
def bytes9092 : Bytes := ("    let r000023fa: u32 = r000023c7 & r000023ac;\n" : String).toByteArray.data.toList
theorem checked9092 : bytes9092=statementBytes 9210 (op9092.map lower) ∧ bytes9092.length=48 := by core033_kernel_decide
def op9093 : List WordIR.Op := [.bxor 9209 9210]
def bytes9093 : Bytes := ("    let r000023fb: u32 = r000023f9 ^ r000023fa;\n" : String).toByteArray.data.toList
theorem checked9093 : bytes9093=statementBytes 9211 (op9093.map lower) ∧ bytes9093.length=48 := by core033_kernel_decide
def op9094 : List WordIR.Op := [.badd 9206 9211]
def bytes9094 : Bytes := ("    let r000023fc: u32 = r000023f6.wrapping_add(r000023fb);\n" : String).toByteArray.data.toList
theorem checked9094 : bytes9094=statementBytes 9212 (op9094.map lower) ∧ bytes9094.length=60 := by core033_kernel_decide
def op9095 : List WordIR.Op := [.badd 9201 9212]
def bytes9095 : Bytes := ("    let r000023fd: u32 = r000023f1.wrapping_add(r000023fc);\n" : String).toByteArray.data.toList
theorem checked9095 : bytes9095=statementBytes 9213 (op9095.map lower) ∧ bytes9095.length=60 := by core033_kernel_decide
def op9096 : List WordIR.Op := [.badd 9105 9201]
def bytes9096 : Bytes := ("    let r000023fe: u32 = r00002391.wrapping_add(r000023f1);\n" : String).toByteArray.data.toList
theorem checked9096 : bytes9096=statementBytes 9214 (op9096.map lower) ∧ bytes9096.length=60 := by core033_kernel_decide
def op9097 : List WordIR.Op := [.rotr 9214 6]
def bytes9097 : Bytes := ("    let r000023ff: u32 = r000023fe.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9097 : bytes9097=statementBytes 9215 (op9097.map lower) ∧ bytes9097.length=65 := by core033_kernel_decide
def op9098 : List WordIR.Op := [.rotr 9214 11]
def bytes9098 : Bytes := ("    let r00002400: u32 = r000023fe.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9098 : bytes9098=statementBytes 9216 (op9098.map lower) ∧ bytes9098.length=65 := by core033_kernel_decide
def op9099 : List WordIR.Op := [.bxor 9215 9216]
def bytes9099 : Bytes := ("    let r00002401: u32 = r000023ff ^ r00002400;\n" : String).toByteArray.data.toList
theorem checked9099 : bytes9099=statementBytes 9217 (op9099.map lower) ∧ bytes9099.length=48 := by core033_kernel_decide
def op9100 : List WordIR.Op := [.rotr 9214 25]
def bytes9100 : Bytes := ("    let r00002402: u32 = r000023fe.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9100 : bytes9100=statementBytes 9218 (op9100.map lower) ∧ bytes9100.length=65 := by core033_kernel_decide
def op9101 : List WordIR.Op := [.bxor 9217 9218]
def bytes9101 : Bytes := ("    let r00002403: u32 = r00002401 ^ r00002402;\n" : String).toByteArray.data.toList
theorem checked9101 : bytes9101=statementBytes 9219 (op9101.map lower) ∧ bytes9101.length=48 := by core033_kernel_decide
def op9102 : List WordIR.Op := [.badd 9133 9219]
def bytes9102 : Bytes := ("    let r00002404: u32 = r000023ad.wrapping_add(r00002403);\n" : String).toByteArray.data.toList
theorem checked9102 : bytes9102=statementBytes 9220 (op9102.map lower) ∧ bytes9102.length=60 := by core033_kernel_decide
def op9103 : List WordIR.Op := [.band 9214 9187]
def bytes9103 : Bytes := ("    let r00002405: u32 = r000023fe & r000023e3;\n" : String).toByteArray.data.toList
theorem checked9103 : bytes9103=statementBytes 9221 (op9103.map lower) ∧ bytes9103.length=48 := by core033_kernel_decide
def op9104 : List WordIR.Op := [.bnot 9214]
def bytes9104 : Bytes := ("    let r00002406: u32 = !r000023fe;\n" : String).toByteArray.data.toList
theorem checked9104 : bytes9104=statementBytes 9222 (op9104.map lower) ∧ bytes9104.length=37 := by core033_kernel_decide
def op9105 : List WordIR.Op := [.band 9222 9160]
def bytes9105 : Bytes := ("    let r00002407: u32 = r00002406 & r000023c8;\n" : String).toByteArray.data.toList
theorem checked9105 : bytes9105=statementBytes 9223 (op9105.map lower) ∧ bytes9105.length=48 := by core033_kernel_decide
def op9106 : List WordIR.Op := [.bxor 9221 9223]
def bytes9106 : Bytes := ("    let r00002408: u32 = r00002405 ^ r00002407;\n" : String).toByteArray.data.toList
theorem checked9106 : bytes9106=statementBytes 9224 (op9106.map lower) ∧ bytes9106.length=48 := by core033_kernel_decide
def op9107 : List WordIR.Op := [.badd 9220 9224]
def bytes9107 : Bytes := ("    let r00002409: u32 = r00002404.wrapping_add(r00002408);\n" : String).toByteArray.data.toList
theorem checked9107 : bytes9107=statementBytes 9225 (op9107.map lower) ∧ bytes9107.length=60 := by core033_kernel_decide
def op9108 : List WordIR.Op := [.literal (BitVec.ofNat 32 4022224774)]
def bytes9108 : Bytes := ("    let r0000240a: u32 = 0xefbe4786_u32;\n" : String).toByteArray.data.toList
theorem checked9108 : bytes9108=statementBytes 9226 (op9108.map lower) ∧ bytes9108.length=41 := by core033_kernel_decide
def op9109 : List WordIR.Op := [.badd 9225 9226]
def bytes9109 : Bytes := ("    let r0000240b: u32 = r00002409.wrapping_add(r0000240a);\n" : String).toByteArray.data.toList
theorem checked9109 : bytes9109=statementBytes 9227 (op9109.map lower) ∧ bytes9109.length=60 := by core033_kernel_decide
def op9110 : List WordIR.Op := [.badd 9227 8157]
def bytes9110 : Bytes := ("    let r0000240c: u32 = r0000240b.wrapping_add(r00001fdd);\n" : String).toByteArray.data.toList
theorem checked9110 : bytes9110=statementBytes 9228 (op9110.map lower) ∧ bytes9110.length=60 := by core033_kernel_decide
def op9111 : List WordIR.Op := [.rotr 9213 2]
def bytes9111 : Bytes := ("    let r0000240d: u32 = r000023fd.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9111 : bytes9111=statementBytes 9229 (op9111.map lower) ∧ bytes9111.length=65 := by core033_kernel_decide
def op9112 : List WordIR.Op := [.rotr 9213 13]
def bytes9112 : Bytes := ("    let r0000240e: u32 = r000023fd.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9112 : bytes9112=statementBytes 9230 (op9112.map lower) ∧ bytes9112.length=65 := by core033_kernel_decide
def op9113 : List WordIR.Op := [.bxor 9229 9230]
def bytes9113 : Bytes := ("    let r0000240f: u32 = r0000240d ^ r0000240e;\n" : String).toByteArray.data.toList
theorem checked9113 : bytes9113=statementBytes 9231 (op9113.map lower) ∧ bytes9113.length=48 := by core033_kernel_decide
def op9114 : List WordIR.Op := [.rotr 9213 22]
def bytes9114 : Bytes := ("    let r00002410: u32 = r000023fd.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9114 : bytes9114=statementBytes 9232 (op9114.map lower) ∧ bytes9114.length=65 := by core033_kernel_decide
def op9115 : List WordIR.Op := [.bxor 9231 9232]
def bytes9115 : Bytes := ("    let r00002411: u32 = r0000240f ^ r00002410;\n" : String).toByteArray.data.toList
theorem checked9115 : bytes9115=statementBytes 9233 (op9115.map lower) ∧ bytes9115.length=48 := by core033_kernel_decide
def op9116 : List WordIR.Op := [.band 9213 9186]
def bytes9116 : Bytes := ("    let r00002412: u32 = r000023fd & r000023e2;\n" : String).toByteArray.data.toList
theorem checked9116 : bytes9116=statementBytes 9234 (op9116.map lower) ∧ bytes9116.length=48 := by core033_kernel_decide
def op9117 : List WordIR.Op := [.band 9213 9159]
def bytes9117 : Bytes := ("    let r00002413: u32 = r000023fd & r000023c7;\n" : String).toByteArray.data.toList
theorem checked9117 : bytes9117=statementBytes 9235 (op9117.map lower) ∧ bytes9117.length=48 := by core033_kernel_decide
def op9118 : List WordIR.Op := [.bxor 9234 9235]
def bytes9118 : Bytes := ("    let r00002414: u32 = r00002412 ^ r00002413;\n" : String).toByteArray.data.toList
theorem checked9118 : bytes9118=statementBytes 9236 (op9118.map lower) ∧ bytes9118.length=48 := by core033_kernel_decide
def op9119 : List WordIR.Op := [.band 9186 9159]
def bytes9119 : Bytes := ("    let r00002415: u32 = r000023e2 & r000023c7;\n" : String).toByteArray.data.toList
theorem checked9119 : bytes9119=statementBytes 9237 (op9119.map lower) ∧ bytes9119.length=48 := by core033_kernel_decide
def op9120 : List WordIR.Op := [.bxor 9236 9237]
def bytes9120 : Bytes := ("    let r00002416: u32 = r00002414 ^ r00002415;\n" : String).toByteArray.data.toList
theorem checked9120 : bytes9120=statementBytes 9238 (op9120.map lower) ∧ bytes9120.length=48 := by core033_kernel_decide
def op9121 : List WordIR.Op := [.badd 9233 9238]
def bytes9121 : Bytes := ("    let r00002417: u32 = r00002411.wrapping_add(r00002416);\n" : String).toByteArray.data.toList
theorem checked9121 : bytes9121=statementBytes 9239 (op9121.map lower) ∧ bytes9121.length=60 := by core033_kernel_decide
def op9122 : List WordIR.Op := [.badd 9228 9239]
def bytes9122 : Bytes := ("    let r00002418: u32 = r0000240c.wrapping_add(r00002417);\n" : String).toByteArray.data.toList
theorem checked9122 : bytes9122=statementBytes 9240 (op9122.map lower) ∧ bytes9122.length=60 := by core033_kernel_decide
def op9123 : List WordIR.Op := [.badd 9132 9228]
def bytes9123 : Bytes := ("    let r00002419: u32 = r000023ac.wrapping_add(r0000240c);\n" : String).toByteArray.data.toList
theorem checked9123 : bytes9123=statementBytes 9241 (op9123.map lower) ∧ bytes9123.length=60 := by core033_kernel_decide
def op9124 : List WordIR.Op := [.rotr 9241 6]
def bytes9124 : Bytes := ("    let r0000241a: u32 = r00002419.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9124 : bytes9124=statementBytes 9242 (op9124.map lower) ∧ bytes9124.length=65 := by core033_kernel_decide
def op9125 : List WordIR.Op := [.rotr 9241 11]
def bytes9125 : Bytes := ("    let r0000241b: u32 = r00002419.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9125 : bytes9125=statementBytes 9243 (op9125.map lower) ∧ bytes9125.length=65 := by core033_kernel_decide
def op9126 : List WordIR.Op := [.bxor 9242 9243]
def bytes9126 : Bytes := ("    let r0000241c: u32 = r0000241a ^ r0000241b;\n" : String).toByteArray.data.toList
theorem checked9126 : bytes9126=statementBytes 9244 (op9126.map lower) ∧ bytes9126.length=48 := by core033_kernel_decide
def op9127 : List WordIR.Op := [.rotr 9241 25]
def bytes9127 : Bytes := ("    let r0000241d: u32 = r00002419.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9127 : bytes9127=statementBytes 9245 (op9127.map lower) ∧ bytes9127.length=65 := by core033_kernel_decide
def op9128 : List WordIR.Op := [.bxor 9244 9245]
def bytes9128 : Bytes := ("    let r0000241e: u32 = r0000241c ^ r0000241d;\n" : String).toByteArray.data.toList
theorem checked9128 : bytes9128=statementBytes 9246 (op9128.map lower) ∧ bytes9128.length=48 := by core033_kernel_decide
def op9129 : List WordIR.Op := [.badd 9160 9246]
def bytes9129 : Bytes := ("    let r0000241f: u32 = r000023c8.wrapping_add(r0000241e);\n" : String).toByteArray.data.toList
theorem checked9129 : bytes9129=statementBytes 9247 (op9129.map lower) ∧ bytes9129.length=60 := by core033_kernel_decide
def op9130 : List WordIR.Op := [.band 9241 9214]
def bytes9130 : Bytes := ("    let r00002420: u32 = r00002419 & r000023fe;\n" : String).toByteArray.data.toList
theorem checked9130 : bytes9130=statementBytes 9248 (op9130.map lower) ∧ bytes9130.length=48 := by core033_kernel_decide
def op9131 : List WordIR.Op := [.bnot 9241]
def bytes9131 : Bytes := ("    let r00002421: u32 = !r00002419;\n" : String).toByteArray.data.toList
theorem checked9131 : bytes9131=statementBytes 9249 (op9131.map lower) ∧ bytes9131.length=37 := by core033_kernel_decide
def op9132 : List WordIR.Op := [.band 9249 9187]
def bytes9132 : Bytes := ("    let r00002422: u32 = r00002421 & r000023e3;\n" : String).toByteArray.data.toList
theorem checked9132 : bytes9132=statementBytes 9250 (op9132.map lower) ∧ bytes9132.length=48 := by core033_kernel_decide
def op9133 : List WordIR.Op := [.bxor 9248 9250]
def bytes9133 : Bytes := ("    let r00002423: u32 = r00002420 ^ r00002422;\n" : String).toByteArray.data.toList
theorem checked9133 : bytes9133=statementBytes 9251 (op9133.map lower) ∧ bytes9133.length=48 := by core033_kernel_decide
def op9134 : List WordIR.Op := [.badd 9247 9251]
def bytes9134 : Bytes := ("    let r00002424: u32 = r0000241f.wrapping_add(r00002423);\n" : String).toByteArray.data.toList
theorem checked9134 : bytes9134=statementBytes 9252 (op9134.map lower) ∧ bytes9134.length=60 := by core033_kernel_decide
def op9135 : List WordIR.Op := [.literal (BitVec.ofNat 32 264347078)]
def bytes9135 : Bytes := ("    let r00002425: u32 = 0x0fc19dc6_u32;\n" : String).toByteArray.data.toList
theorem checked9135 : bytes9135=statementBytes 9253 (op9135.map lower) ∧ bytes9135.length=41 := by core033_kernel_decide
def op9136 : List WordIR.Op := [.badd 9252 9253]
def bytes9136 : Bytes := ("    let r00002426: u32 = r00002424.wrapping_add(r00002425);\n" : String).toByteArray.data.toList
theorem checked9136 : bytes9136=statementBytes 9254 (op9136.map lower) ∧ bytes9136.length=60 := by core033_kernel_decide
def op9137 : List WordIR.Op := [.badd 9254 8170]
def bytes9137 : Bytes := ("    let r00002427: u32 = r00002426.wrapping_add(r00001fea);\n" : String).toByteArray.data.toList
theorem checked9137 : bytes9137=statementBytes 9255 (op9137.map lower) ∧ bytes9137.length=60 := by core033_kernel_decide
def op9138 : List WordIR.Op := [.rotr 9240 2]
def bytes9138 : Bytes := ("    let r00002428: u32 = r00002418.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9138 : bytes9138=statementBytes 9256 (op9138.map lower) ∧ bytes9138.length=65 := by core033_kernel_decide
def op9139 : List WordIR.Op := [.rotr 9240 13]
def bytes9139 : Bytes := ("    let r00002429: u32 = r00002418.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9139 : bytes9139=statementBytes 9257 (op9139.map lower) ∧ bytes9139.length=65 := by core033_kernel_decide
def op9140 : List WordIR.Op := [.bxor 9256 9257]
def bytes9140 : Bytes := ("    let r0000242a: u32 = r00002428 ^ r00002429;\n" : String).toByteArray.data.toList
theorem checked9140 : bytes9140=statementBytes 9258 (op9140.map lower) ∧ bytes9140.length=48 := by core033_kernel_decide
def op9141 : List WordIR.Op := [.rotr 9240 22]
def bytes9141 : Bytes := ("    let r0000242b: u32 = r00002418.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9141 : bytes9141=statementBytes 9259 (op9141.map lower) ∧ bytes9141.length=65 := by core033_kernel_decide
def op9142 : List WordIR.Op := [.bxor 9258 9259]
def bytes9142 : Bytes := ("    let r0000242c: u32 = r0000242a ^ r0000242b;\n" : String).toByteArray.data.toList
theorem checked9142 : bytes9142=statementBytes 9260 (op9142.map lower) ∧ bytes9142.length=48 := by core033_kernel_decide
def op9143 : List WordIR.Op := [.band 9240 9213]
def bytes9143 : Bytes := ("    let r0000242d: u32 = r00002418 & r000023fd;\n" : String).toByteArray.data.toList
theorem checked9143 : bytes9143=statementBytes 9261 (op9143.map lower) ∧ bytes9143.length=48 := by core033_kernel_decide
def op9144 : List WordIR.Op := [.band 9240 9186]
def bytes9144 : Bytes := ("    let r0000242e: u32 = r00002418 & r000023e2;\n" : String).toByteArray.data.toList
theorem checked9144 : bytes9144=statementBytes 9262 (op9144.map lower) ∧ bytes9144.length=48 := by core033_kernel_decide
def op9145 : List WordIR.Op := [.bxor 9261 9262]
def bytes9145 : Bytes := ("    let r0000242f: u32 = r0000242d ^ r0000242e;\n" : String).toByteArray.data.toList
theorem checked9145 : bytes9145=statementBytes 9263 (op9145.map lower) ∧ bytes9145.length=48 := by core033_kernel_decide
def op9146 : List WordIR.Op := [.band 9213 9186]
def bytes9146 : Bytes := ("    let r00002430: u32 = r000023fd & r000023e2;\n" : String).toByteArray.data.toList
theorem checked9146 : bytes9146=statementBytes 9264 (op9146.map lower) ∧ bytes9146.length=48 := by core033_kernel_decide
def op9147 : List WordIR.Op := [.bxor 9263 9264]
def bytes9147 : Bytes := ("    let r00002431: u32 = r0000242f ^ r00002430;\n" : String).toByteArray.data.toList
theorem checked9147 : bytes9147=statementBytes 9265 (op9147.map lower) ∧ bytes9147.length=48 := by core033_kernel_decide
def op9148 : List WordIR.Op := [.badd 9260 9265]
def bytes9148 : Bytes := ("    let r00002432: u32 = r0000242c.wrapping_add(r00002431);\n" : String).toByteArray.data.toList
theorem checked9148 : bytes9148=statementBytes 9266 (op9148.map lower) ∧ bytes9148.length=60 := by core033_kernel_decide
def op9149 : List WordIR.Op := [.badd 9255 9266]
def bytes9149 : Bytes := ("    let r00002433: u32 = r00002427.wrapping_add(r00002432);\n" : String).toByteArray.data.toList
theorem checked9149 : bytes9149=statementBytes 9267 (op9149.map lower) ∧ bytes9149.length=60 := by core033_kernel_decide
def op9150 : List WordIR.Op := [.badd 9159 9255]
def bytes9150 : Bytes := ("    let r00002434: u32 = r000023c7.wrapping_add(r00002427);\n" : String).toByteArray.data.toList
theorem checked9150 : bytes9150=statementBytes 9268 (op9150.map lower) ∧ bytes9150.length=60 := by core033_kernel_decide
def op9151 : List WordIR.Op := [.rotr 9268 6]
def bytes9151 : Bytes := ("    let r00002435: u32 = r00002434.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9151 : bytes9151=statementBytes 9269 (op9151.map lower) ∧ bytes9151.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9088,op9089,op9090,op9091,op9092,op9093,op9094,op9095,op9096,op9097,op9098,op9099,op9100,op9101,op9102,op9103,op9104,op9105,op9106,op9107,op9108,op9109,op9110,op9111,op9112,op9113,op9114,op9115,op9116,op9117,op9118,op9119,op9120,op9121,op9122,op9123,op9124,op9125,op9126,op9127,op9128,op9129,op9130,op9131,op9132,op9133,op9134,op9135,op9136,op9137,op9138,op9139,op9140,op9141,op9142,op9143,op9144,op9145,op9146,op9147,op9148,op9149,op9150,op9151]
def chunks : List Bytes := [bytes9088,bytes9089,bytes9090,bytes9091,bytes9092,bytes9093,bytes9094,bytes9095,bytes9096,bytes9097,bytes9098,bytes9099,bytes9100,bytes9101,bytes9102,bytes9103,bytes9104,bytes9105,bytes9106,bytes9107,bytes9108,bytes9109,bytes9110,bytes9111,bytes9112,bytes9113,bytes9114,bytes9115,bytes9116,bytes9117,bytes9118,bytes9119,bytes9120,bytes9121,bytes9122,bytes9123,bytes9124,bytes9125,bytes9126,bytes9127,bytes9128,bytes9129,bytes9130,bytes9131,bytes9132,bytes9133,bytes9134,bytes9135,bytes9136,bytes9137,bytes9138,bytes9139,bytes9140,bytes9141,bytes9142,bytes9143,bytes9144,bytes9145,bytes9146,bytes9147,bytes9148,bytes9149,bytes9150,bytes9151]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9206 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9088.1 (.cons _ _ _ _ _ checked9089.1 (.cons _ _ _ _ _ checked9090.1 (.cons _ _ _ _ _ checked9091.1 (.cons _ _ _ _ _ checked9092.1 (.cons _ _ _ _ _ checked9093.1 (.cons _ _ _ _ _ checked9094.1 (.cons _ _ _ _ _ checked9095.1 (.cons _ _ _ _ _ checked9096.1 (.cons _ _ _ _ _ checked9097.1 (.cons _ _ _ _ _ checked9098.1 (.cons _ _ _ _ _ checked9099.1 (.cons _ _ _ _ _ checked9100.1 (.cons _ _ _ _ _ checked9101.1 (.cons _ _ _ _ _ checked9102.1 (.cons _ _ _ _ _ checked9103.1 (.cons _ _ _ _ _ checked9104.1 (.cons _ _ _ _ _ checked9105.1 (.cons _ _ _ _ _ checked9106.1 (.cons _ _ _ _ _ checked9107.1 (.cons _ _ _ _ _ checked9108.1 (.cons _ _ _ _ _ checked9109.1 (.cons _ _ _ _ _ checked9110.1 (.cons _ _ _ _ _ checked9111.1 (.cons _ _ _ _ _ checked9112.1 (.cons _ _ _ _ _ checked9113.1 (.cons _ _ _ _ _ checked9114.1 (.cons _ _ _ _ _ checked9115.1 (.cons _ _ _ _ _ checked9116.1 (.cons _ _ _ _ _ checked9117.1 (.cons _ _ _ _ _ checked9118.1 (.cons _ _ _ _ _ checked9119.1 (.cons _ _ _ _ _ checked9120.1 (.cons _ _ _ _ _ checked9121.1 (.cons _ _ _ _ _ checked9122.1 (.cons _ _ _ _ _ checked9123.1 (.cons _ _ _ _ _ checked9124.1 (.cons _ _ _ _ _ checked9125.1 (.cons _ _ _ _ _ checked9126.1 (.cons _ _ _ _ _ checked9127.1 (.cons _ _ _ _ _ checked9128.1 (.cons _ _ _ _ _ checked9129.1 (.cons _ _ _ _ _ checked9130.1 (.cons _ _ _ _ _ checked9131.1 (.cons _ _ _ _ _ checked9132.1 (.cons _ _ _ _ _ checked9133.1 (.cons _ _ _ _ _ checked9134.1 (.cons _ _ _ _ _ checked9135.1 (.cons _ _ _ _ _ checked9136.1 (.cons _ _ _ _ _ checked9137.1 (.cons _ _ _ _ _ checked9138.1 (.cons _ _ _ _ _ checked9139.1 (.cons _ _ _ _ _ checked9140.1 (.cons _ _ _ _ _ checked9141.1 (.cons _ _ _ _ _ checked9142.1 (.cons _ _ _ _ _ checked9143.1 (.cons _ _ _ _ _ checked9144.1 (.cons _ _ _ _ _ checked9145.1 (.cons _ _ _ _ _ checked9146.1 (.cons _ _ _ _ _ checked9147.1 (.cons _ _ _ _ _ checked9148.1 (.cons _ _ _ _ _ checked9149.1 (.cons _ _ _ _ _ checked9150.1 (.cons _ _ _ _ _ checked9151.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9206 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3461 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9088.2,checked9089.2,checked9090.2,checked9091.2,checked9092.2,checked9093.2,checked9094.2,checked9095.2,checked9096.2,checked9097.2,checked9098.2,checked9099.2,checked9100.2,checked9101.2,checked9102.2,checked9103.2,checked9104.2,checked9105.2,checked9106.2,checked9107.2,checked9108.2,checked9109.2,checked9110.2,checked9111.2,checked9112.2,checked9113.2,checked9114.2,checked9115.2,checked9116.2,checked9117.2,checked9118.2,checked9119.2,checked9120.2,checked9121.2,checked9122.2,checked9123.2,checked9124.2,checked9125.2,checked9126.2,checked9127.2,checked9128.2,checked9129.2,checked9130.2,checked9131.2,checked9132.2,checked9133.2,checked9134.2,checked9135.2,checked9136.2,checked9137.2,checked9138.2,checked9139.2,checked9140.2,checked9141.2,checked9142.2,checked9143.2,checked9144.2,checked9145.2,checked9146.2,checked9147.2,checked9148.2,checked9149.2,checked9150.2,checked9151.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup142
