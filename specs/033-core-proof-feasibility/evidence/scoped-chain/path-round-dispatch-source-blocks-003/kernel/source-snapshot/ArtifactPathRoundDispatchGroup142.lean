import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup142
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9088 : List WordIR.Op := [.badd 9129 9130]
def bytes9088 : Bytes := ("    let r000023ab: u32 = r000023a9.wrapping_add(r000023aa);\n" : String).toByteArray.data.toList
theorem checked9088 : bytes9088=statementBytes 9131 (op9088.map lower) ∧ bytes9088.length=60 := by core033_kernel_decide
def op9089 : List WordIR.Op := [.badd 9131 7487]
def bytes9089 : Bytes := ("    let r000023ac: u32 = r000023ab.wrapping_add(r00001d3f);\n" : String).toByteArray.data.toList
theorem checked9089 : bytes9089=statementBytes 9132 (op9089.map lower) ∧ bytes9089.length=60 := by core033_kernel_decide
def op9090 : List WordIR.Op := [.rotr 9117 2]
def bytes9090 : Bytes := ("    let r000023ad: u32 = r0000239d.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9090 : bytes9090=statementBytes 9133 (op9090.map lower) ∧ bytes9090.length=65 := by core033_kernel_decide
def op9091 : List WordIR.Op := [.rotr 9117 13]
def bytes9091 : Bytes := ("    let r000023ae: u32 = r0000239d.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9091 : bytes9091=statementBytes 9134 (op9091.map lower) ∧ bytes9091.length=65 := by core033_kernel_decide
def op9092 : List WordIR.Op := [.bxor 9133 9134]
def bytes9092 : Bytes := ("    let r000023af: u32 = r000023ad ^ r000023ae;\n" : String).toByteArray.data.toList
theorem checked9092 : bytes9092=statementBytes 9135 (op9092.map lower) ∧ bytes9092.length=48 := by core033_kernel_decide
def op9093 : List WordIR.Op := [.rotr 9117 22]
def bytes9093 : Bytes := ("    let r000023b0: u32 = r0000239d.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9093 : bytes9093=statementBytes 9136 (op9093.map lower) ∧ bytes9093.length=65 := by core033_kernel_decide
def op9094 : List WordIR.Op := [.bxor 9135 9136]
def bytes9094 : Bytes := ("    let r000023b1: u32 = r000023af ^ r000023b0;\n" : String).toByteArray.data.toList
theorem checked9094 : bytes9094=statementBytes 9137 (op9094.map lower) ∧ bytes9094.length=48 := by core033_kernel_decide
def op9095 : List WordIR.Op := [.band 9117 9090]
def bytes9095 : Bytes := ("    let r000023b2: u32 = r0000239d & r00002382;\n" : String).toByteArray.data.toList
theorem checked9095 : bytes9095=statementBytes 9138 (op9095.map lower) ∧ bytes9095.length=48 := by core033_kernel_decide
def op9096 : List WordIR.Op := [.band 9117 9063]
def bytes9096 : Bytes := ("    let r000023b3: u32 = r0000239d & r00002367;\n" : String).toByteArray.data.toList
theorem checked9096 : bytes9096=statementBytes 9139 (op9096.map lower) ∧ bytes9096.length=48 := by core033_kernel_decide
def op9097 : List WordIR.Op := [.bxor 9138 9139]
def bytes9097 : Bytes := ("    let r000023b4: u32 = r000023b2 ^ r000023b3;\n" : String).toByteArray.data.toList
theorem checked9097 : bytes9097=statementBytes 9140 (op9097.map lower) ∧ bytes9097.length=48 := by core033_kernel_decide
def op9098 : List WordIR.Op := [.band 9090 9063]
def bytes9098 : Bytes := ("    let r000023b5: u32 = r00002382 & r00002367;\n" : String).toByteArray.data.toList
theorem checked9098 : bytes9098=statementBytes 9141 (op9098.map lower) ∧ bytes9098.length=48 := by core033_kernel_decide
def op9099 : List WordIR.Op := [.bxor 9140 9141]
def bytes9099 : Bytes := ("    let r000023b6: u32 = r000023b4 ^ r000023b5;\n" : String).toByteArray.data.toList
theorem checked9099 : bytes9099=statementBytes 9142 (op9099.map lower) ∧ bytes9099.length=48 := by core033_kernel_decide
def op9100 : List WordIR.Op := [.badd 9137 9142]
def bytes9100 : Bytes := ("    let r000023b7: u32 = r000023b1.wrapping_add(r000023b6);\n" : String).toByteArray.data.toList
theorem checked9100 : bytes9100=statementBytes 9143 (op9100.map lower) ∧ bytes9100.length=60 := by core033_kernel_decide
def op9101 : List WordIR.Op := [.badd 9132 9143]
def bytes9101 : Bytes := ("    let r000023b8: u32 = r000023ac.wrapping_add(r000023b7);\n" : String).toByteArray.data.toList
theorem checked9101 : bytes9101=statementBytes 9144 (op9101.map lower) ∧ bytes9101.length=60 := by core033_kernel_decide
def op9102 : List WordIR.Op := [.badd 9036 9132]
def bytes9102 : Bytes := ("    let r000023b9: u32 = r0000234c.wrapping_add(r000023ac);\n" : String).toByteArray.data.toList
theorem checked9102 : bytes9102=statementBytes 9145 (op9102.map lower) ∧ bytes9102.length=60 := by core033_kernel_decide
def op9103 : List WordIR.Op := [.rotr 9145 6]
def bytes9103 : Bytes := ("    let r000023ba: u32 = r000023b9.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9103 : bytes9103=statementBytes 9146 (op9103.map lower) ∧ bytes9103.length=65 := by core033_kernel_decide
def op9104 : List WordIR.Op := [.rotr 9145 11]
def bytes9104 : Bytes := ("    let r000023bb: u32 = r000023b9.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9104 : bytes9104=statementBytes 9147 (op9104.map lower) ∧ bytes9104.length=65 := by core033_kernel_decide
def op9105 : List WordIR.Op := [.bxor 9146 9147]
def bytes9105 : Bytes := ("    let r000023bc: u32 = r000023ba ^ r000023bb;\n" : String).toByteArray.data.toList
theorem checked9105 : bytes9105=statementBytes 9148 (op9105.map lower) ∧ bytes9105.length=48 := by core033_kernel_decide
def op9106 : List WordIR.Op := [.rotr 9145 25]
def bytes9106 : Bytes := ("    let r000023bd: u32 = r000023b9.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9106 : bytes9106=statementBytes 9149 (op9106.map lower) ∧ bytes9106.length=65 := by core033_kernel_decide
def op9107 : List WordIR.Op := [.bxor 9148 9149]
def bytes9107 : Bytes := ("    let r000023be: u32 = r000023bc ^ r000023bd;\n" : String).toByteArray.data.toList
theorem checked9107 : bytes9107=statementBytes 9150 (op9107.map lower) ∧ bytes9107.length=48 := by core033_kernel_decide
def op9108 : List WordIR.Op := [.badd 9064 9150]
def bytes9108 : Bytes := ("    let r000023bf: u32 = r00002368.wrapping_add(r000023be);\n" : String).toByteArray.data.toList
theorem checked9108 : bytes9108=statementBytes 9151 (op9108.map lower) ∧ bytes9108.length=60 := by core033_kernel_decide
def op9109 : List WordIR.Op := [.band 9145 9118]
def bytes9109 : Bytes := ("    let r000023c0: u32 = r000023b9 & r0000239e;\n" : String).toByteArray.data.toList
theorem checked9109 : bytes9109=statementBytes 9152 (op9109.map lower) ∧ bytes9109.length=48 := by core033_kernel_decide
def op9110 : List WordIR.Op := [.bnot 9145]
def bytes9110 : Bytes := ("    let r000023c1: u32 = !r000023b9;\n" : String).toByteArray.data.toList
theorem checked9110 : bytes9110=statementBytes 9153 (op9110.map lower) ∧ bytes9110.length=37 := by core033_kernel_decide
def op9111 : List WordIR.Op := [.band 9153 9091]
def bytes9111 : Bytes := ("    let r000023c2: u32 = r000023c1 & r00002383;\n" : String).toByteArray.data.toList
theorem checked9111 : bytes9111=statementBytes 9154 (op9111.map lower) ∧ bytes9111.length=48 := by core033_kernel_decide
def op9112 : List WordIR.Op := [.bxor 9152 9154]
def bytes9112 : Bytes := ("    let r000023c3: u32 = r000023c0 ^ r000023c2;\n" : String).toByteArray.data.toList
theorem checked9112 : bytes9112=statementBytes 9155 (op9112.map lower) ∧ bytes9112.length=48 := by core033_kernel_decide
def op9113 : List WordIR.Op := [.badd 9151 9155]
def bytes9113 : Bytes := ("    let r000023c4: u32 = r000023bf.wrapping_add(r000023c3);\n" : String).toByteArray.data.toList
theorem checked9113 : bytes9113=statementBytes 9156 (op9113.map lower) ∧ bytes9113.length=60 := by core033_kernel_decide
def op9114 : List WordIR.Op := [.literal (BitVec.ofNat 32 2361852424)]
def bytes9114 : Bytes := ("    let r000023c5: u32 = 0x8cc70208_u32;\n" : String).toByteArray.data.toList
theorem checked9114 : bytes9114=statementBytes 9157 (op9114.map lower) ∧ bytes9114.length=41 := by core033_kernel_decide
def op9115 : List WordIR.Op := [.badd 9156 9157]
def bytes9115 : Bytes := ("    let r000023c6: u32 = r000023c4.wrapping_add(r000023c5);\n" : String).toByteArray.data.toList
theorem checked9115 : bytes9115=statementBytes 9158 (op9115.map lower) ∧ bytes9115.length=60 := by core033_kernel_decide
def op9116 : List WordIR.Op := [.badd 9158 7500]
def bytes9116 : Bytes := ("    let r000023c7: u32 = r000023c6.wrapping_add(r00001d4c);\n" : String).toByteArray.data.toList
theorem checked9116 : bytes9116=statementBytes 9159 (op9116.map lower) ∧ bytes9116.length=60 := by core033_kernel_decide
def op9117 : List WordIR.Op := [.rotr 9144 2]
def bytes9117 : Bytes := ("    let r000023c8: u32 = r000023b8.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9117 : bytes9117=statementBytes 9160 (op9117.map lower) ∧ bytes9117.length=65 := by core033_kernel_decide
def op9118 : List WordIR.Op := [.rotr 9144 13]
def bytes9118 : Bytes := ("    let r000023c9: u32 = r000023b8.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9118 : bytes9118=statementBytes 9161 (op9118.map lower) ∧ bytes9118.length=65 := by core033_kernel_decide
def op9119 : List WordIR.Op := [.bxor 9160 9161]
def bytes9119 : Bytes := ("    let r000023ca: u32 = r000023c8 ^ r000023c9;\n" : String).toByteArray.data.toList
theorem checked9119 : bytes9119=statementBytes 9162 (op9119.map lower) ∧ bytes9119.length=48 := by core033_kernel_decide
def op9120 : List WordIR.Op := [.rotr 9144 22]
def bytes9120 : Bytes := ("    let r000023cb: u32 = r000023b8.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9120 : bytes9120=statementBytes 9163 (op9120.map lower) ∧ bytes9120.length=65 := by core033_kernel_decide
def op9121 : List WordIR.Op := [.bxor 9162 9163]
def bytes9121 : Bytes := ("    let r000023cc: u32 = r000023ca ^ r000023cb;\n" : String).toByteArray.data.toList
theorem checked9121 : bytes9121=statementBytes 9164 (op9121.map lower) ∧ bytes9121.length=48 := by core033_kernel_decide
def op9122 : List WordIR.Op := [.band 9144 9117]
def bytes9122 : Bytes := ("    let r000023cd: u32 = r000023b8 & r0000239d;\n" : String).toByteArray.data.toList
theorem checked9122 : bytes9122=statementBytes 9165 (op9122.map lower) ∧ bytes9122.length=48 := by core033_kernel_decide
def op9123 : List WordIR.Op := [.band 9144 9090]
def bytes9123 : Bytes := ("    let r000023ce: u32 = r000023b8 & r00002382;\n" : String).toByteArray.data.toList
theorem checked9123 : bytes9123=statementBytes 9166 (op9123.map lower) ∧ bytes9123.length=48 := by core033_kernel_decide
def op9124 : List WordIR.Op := [.bxor 9165 9166]
def bytes9124 : Bytes := ("    let r000023cf: u32 = r000023cd ^ r000023ce;\n" : String).toByteArray.data.toList
theorem checked9124 : bytes9124=statementBytes 9167 (op9124.map lower) ∧ bytes9124.length=48 := by core033_kernel_decide
def op9125 : List WordIR.Op := [.band 9117 9090]
def bytes9125 : Bytes := ("    let r000023d0: u32 = r0000239d & r00002382;\n" : String).toByteArray.data.toList
theorem checked9125 : bytes9125=statementBytes 9168 (op9125.map lower) ∧ bytes9125.length=48 := by core033_kernel_decide
def op9126 : List WordIR.Op := [.bxor 9167 9168]
def bytes9126 : Bytes := ("    let r000023d1: u32 = r000023cf ^ r000023d0;\n" : String).toByteArray.data.toList
theorem checked9126 : bytes9126=statementBytes 9169 (op9126.map lower) ∧ bytes9126.length=48 := by core033_kernel_decide
def op9127 : List WordIR.Op := [.badd 9164 9169]
def bytes9127 : Bytes := ("    let r000023d2: u32 = r000023cc.wrapping_add(r000023d1);\n" : String).toByteArray.data.toList
theorem checked9127 : bytes9127=statementBytes 9170 (op9127.map lower) ∧ bytes9127.length=60 := by core033_kernel_decide
def op9128 : List WordIR.Op := [.badd 9159 9170]
def bytes9128 : Bytes := ("    let r000023d3: u32 = r000023c7.wrapping_add(r000023d2);\n" : String).toByteArray.data.toList
theorem checked9128 : bytes9128=statementBytes 9171 (op9128.map lower) ∧ bytes9128.length=60 := by core033_kernel_decide
def op9129 : List WordIR.Op := [.badd 9063 9159]
def bytes9129 : Bytes := ("    let r000023d4: u32 = r00002367.wrapping_add(r000023c7);\n" : String).toByteArray.data.toList
theorem checked9129 : bytes9129=statementBytes 9172 (op9129.map lower) ∧ bytes9129.length=60 := by core033_kernel_decide
def op9130 : List WordIR.Op := [.rotr 9172 6]
def bytes9130 : Bytes := ("    let r000023d5: u32 = r000023d4.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9130 : bytes9130=statementBytes 9173 (op9130.map lower) ∧ bytes9130.length=65 := by core033_kernel_decide
def op9131 : List WordIR.Op := [.rotr 9172 11]
def bytes9131 : Bytes := ("    let r000023d6: u32 = r000023d4.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9131 : bytes9131=statementBytes 9174 (op9131.map lower) ∧ bytes9131.length=65 := by core033_kernel_decide
def op9132 : List WordIR.Op := [.bxor 9173 9174]
def bytes9132 : Bytes := ("    let r000023d7: u32 = r000023d5 ^ r000023d6;\n" : String).toByteArray.data.toList
theorem checked9132 : bytes9132=statementBytes 9175 (op9132.map lower) ∧ bytes9132.length=48 := by core033_kernel_decide
def op9133 : List WordIR.Op := [.rotr 9172 25]
def bytes9133 : Bytes := ("    let r000023d8: u32 = r000023d4.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9133 : bytes9133=statementBytes 9176 (op9133.map lower) ∧ bytes9133.length=65 := by core033_kernel_decide
def op9134 : List WordIR.Op := [.bxor 9175 9176]
def bytes9134 : Bytes := ("    let r000023d9: u32 = r000023d7 ^ r000023d8;\n" : String).toByteArray.data.toList
theorem checked9134 : bytes9134=statementBytes 9177 (op9134.map lower) ∧ bytes9134.length=48 := by core033_kernel_decide
def op9135 : List WordIR.Op := [.badd 9091 9177]
def bytes9135 : Bytes := ("    let r000023da: u32 = r00002383.wrapping_add(r000023d9);\n" : String).toByteArray.data.toList
theorem checked9135 : bytes9135=statementBytes 9178 (op9135.map lower) ∧ bytes9135.length=60 := by core033_kernel_decide
def op9136 : List WordIR.Op := [.band 9172 9145]
def bytes9136 : Bytes := ("    let r000023db: u32 = r000023d4 & r000023b9;\n" : String).toByteArray.data.toList
theorem checked9136 : bytes9136=statementBytes 9179 (op9136.map lower) ∧ bytes9136.length=48 := by core033_kernel_decide
def op9137 : List WordIR.Op := [.bnot 9172]
def bytes9137 : Bytes := ("    let r000023dc: u32 = !r000023d4;\n" : String).toByteArray.data.toList
theorem checked9137 : bytes9137=statementBytes 9180 (op9137.map lower) ∧ bytes9137.length=37 := by core033_kernel_decide
def op9138 : List WordIR.Op := [.band 9180 9118]
def bytes9138 : Bytes := ("    let r000023dd: u32 = r000023dc & r0000239e;\n" : String).toByteArray.data.toList
theorem checked9138 : bytes9138=statementBytes 9181 (op9138.map lower) ∧ bytes9138.length=48 := by core033_kernel_decide
def op9139 : List WordIR.Op := [.bxor 9179 9181]
def bytes9139 : Bytes := ("    let r000023de: u32 = r000023db ^ r000023dd;\n" : String).toByteArray.data.toList
theorem checked9139 : bytes9139=statementBytes 9182 (op9139.map lower) ∧ bytes9139.length=48 := by core033_kernel_decide
def op9140 : List WordIR.Op := [.badd 9178 9182]
def bytes9140 : Bytes := ("    let r000023df: u32 = r000023da.wrapping_add(r000023de);\n" : String).toByteArray.data.toList
theorem checked9140 : bytes9140=statementBytes 9183 (op9140.map lower) ∧ bytes9140.length=60 := by core033_kernel_decide
def op9141 : List WordIR.Op := [.literal (BitVec.ofNat 32 2428436474)]
def bytes9141 : Bytes := ("    let r000023e0: u32 = 0x90befffa_u32;\n" : String).toByteArray.data.toList
theorem checked9141 : bytes9141=statementBytes 9184 (op9141.map lower) ∧ bytes9141.length=41 := by core033_kernel_decide
def op9142 : List WordIR.Op := [.badd 9183 9184]
def bytes9142 : Bytes := ("    let r000023e1: u32 = r000023df.wrapping_add(r000023e0);\n" : String).toByteArray.data.toList
theorem checked9142 : bytes9142=statementBytes 9185 (op9142.map lower) ∧ bytes9142.length=60 := by core033_kernel_decide
def op9143 : List WordIR.Op := [.badd 9185 7513]
def bytes9143 : Bytes := ("    let r000023e2: u32 = r000023e1.wrapping_add(r00001d59);\n" : String).toByteArray.data.toList
theorem checked9143 : bytes9143=statementBytes 9186 (op9143.map lower) ∧ bytes9143.length=60 := by core033_kernel_decide
def op9144 : List WordIR.Op := [.rotr 9171 2]
def bytes9144 : Bytes := ("    let r000023e3: u32 = r000023d3.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9144 : bytes9144=statementBytes 9187 (op9144.map lower) ∧ bytes9144.length=65 := by core033_kernel_decide
def op9145 : List WordIR.Op := [.rotr 9171 13]
def bytes9145 : Bytes := ("    let r000023e4: u32 = r000023d3.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9145 : bytes9145=statementBytes 9188 (op9145.map lower) ∧ bytes9145.length=65 := by core033_kernel_decide
def op9146 : List WordIR.Op := [.bxor 9187 9188]
def bytes9146 : Bytes := ("    let r000023e5: u32 = r000023e3 ^ r000023e4;\n" : String).toByteArray.data.toList
theorem checked9146 : bytes9146=statementBytes 9189 (op9146.map lower) ∧ bytes9146.length=48 := by core033_kernel_decide
def op9147 : List WordIR.Op := [.rotr 9171 22]
def bytes9147 : Bytes := ("    let r000023e6: u32 = r000023d3.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9147 : bytes9147=statementBytes 9190 (op9147.map lower) ∧ bytes9147.length=65 := by core033_kernel_decide
def op9148 : List WordIR.Op := [.bxor 9189 9190]
def bytes9148 : Bytes := ("    let r000023e7: u32 = r000023e5 ^ r000023e6;\n" : String).toByteArray.data.toList
theorem checked9148 : bytes9148=statementBytes 9191 (op9148.map lower) ∧ bytes9148.length=48 := by core033_kernel_decide
def op9149 : List WordIR.Op := [.band 9171 9144]
def bytes9149 : Bytes := ("    let r000023e8: u32 = r000023d3 & r000023b8;\n" : String).toByteArray.data.toList
theorem checked9149 : bytes9149=statementBytes 9192 (op9149.map lower) ∧ bytes9149.length=48 := by core033_kernel_decide
def op9150 : List WordIR.Op := [.band 9171 9117]
def bytes9150 : Bytes := ("    let r000023e9: u32 = r000023d3 & r0000239d;\n" : String).toByteArray.data.toList
theorem checked9150 : bytes9150=statementBytes 9193 (op9150.map lower) ∧ bytes9150.length=48 := by core033_kernel_decide
def op9151 : List WordIR.Op := [.bxor 9192 9193]
def bytes9151 : Bytes := ("    let r000023ea: u32 = r000023e8 ^ r000023e9;\n" : String).toByteArray.data.toList
theorem checked9151 : bytes9151=statementBytes 9194 (op9151.map lower) ∧ bytes9151.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9088,op9089,op9090,op9091,op9092,op9093,op9094,op9095,op9096,op9097,op9098,op9099,op9100,op9101,op9102,op9103,op9104,op9105,op9106,op9107,op9108,op9109,op9110,op9111,op9112,op9113,op9114,op9115,op9116,op9117,op9118,op9119,op9120,op9121,op9122,op9123,op9124,op9125,op9126,op9127,op9128,op9129,op9130,op9131,op9132,op9133,op9134,op9135,op9136,op9137,op9138,op9139,op9140,op9141,op9142,op9143,op9144,op9145,op9146,op9147,op9148,op9149,op9150,op9151]
def chunks : List Bytes := [bytes9088,bytes9089,bytes9090,bytes9091,bytes9092,bytes9093,bytes9094,bytes9095,bytes9096,bytes9097,bytes9098,bytes9099,bytes9100,bytes9101,bytes9102,bytes9103,bytes9104,bytes9105,bytes9106,bytes9107,bytes9108,bytes9109,bytes9110,bytes9111,bytes9112,bytes9113,bytes9114,bytes9115,bytes9116,bytes9117,bytes9118,bytes9119,bytes9120,bytes9121,bytes9122,bytes9123,bytes9124,bytes9125,bytes9126,bytes9127,bytes9128,bytes9129,bytes9130,bytes9131,bytes9132,bytes9133,bytes9134,bytes9135,bytes9136,bytes9137,bytes9138,bytes9139,bytes9140,bytes9141,bytes9142,bytes9143,bytes9144,bytes9145,bytes9146,bytes9147,bytes9148,bytes9149,bytes9150,bytes9151]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9131 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9088.1 (.cons _ _ _ _ _ checked9089.1 (.cons _ _ _ _ _ checked9090.1 (.cons _ _ _ _ _ checked9091.1 (.cons _ _ _ _ _ checked9092.1 (.cons _ _ _ _ _ checked9093.1 (.cons _ _ _ _ _ checked9094.1 (.cons _ _ _ _ _ checked9095.1 (.cons _ _ _ _ _ checked9096.1 (.cons _ _ _ _ _ checked9097.1 (.cons _ _ _ _ _ checked9098.1 (.cons _ _ _ _ _ checked9099.1 (.cons _ _ _ _ _ checked9100.1 (.cons _ _ _ _ _ checked9101.1 (.cons _ _ _ _ _ checked9102.1 (.cons _ _ _ _ _ checked9103.1 (.cons _ _ _ _ _ checked9104.1 (.cons _ _ _ _ _ checked9105.1 (.cons _ _ _ _ _ checked9106.1 (.cons _ _ _ _ _ checked9107.1 (.cons _ _ _ _ _ checked9108.1 (.cons _ _ _ _ _ checked9109.1 (.cons _ _ _ _ _ checked9110.1 (.cons _ _ _ _ _ checked9111.1 (.cons _ _ _ _ _ checked9112.1 (.cons _ _ _ _ _ checked9113.1 (.cons _ _ _ _ _ checked9114.1 (.cons _ _ _ _ _ checked9115.1 (.cons _ _ _ _ _ checked9116.1 (.cons _ _ _ _ _ checked9117.1 (.cons _ _ _ _ _ checked9118.1 (.cons _ _ _ _ _ checked9119.1 (.cons _ _ _ _ _ checked9120.1 (.cons _ _ _ _ _ checked9121.1 (.cons _ _ _ _ _ checked9122.1 (.cons _ _ _ _ _ checked9123.1 (.cons _ _ _ _ _ checked9124.1 (.cons _ _ _ _ _ checked9125.1 (.cons _ _ _ _ _ checked9126.1 (.cons _ _ _ _ _ checked9127.1 (.cons _ _ _ _ _ checked9128.1 (.cons _ _ _ _ _ checked9129.1 (.cons _ _ _ _ _ checked9130.1 (.cons _ _ _ _ _ checked9131.1 (.cons _ _ _ _ _ checked9132.1 (.cons _ _ _ _ _ checked9133.1 (.cons _ _ _ _ _ checked9134.1 (.cons _ _ _ _ _ checked9135.1 (.cons _ _ _ _ _ checked9136.1 (.cons _ _ _ _ _ checked9137.1 (.cons _ _ _ _ _ checked9138.1 (.cons _ _ _ _ _ checked9139.1 (.cons _ _ _ _ _ checked9140.1 (.cons _ _ _ _ _ checked9141.1 (.cons _ _ _ _ _ checked9142.1 (.cons _ _ _ _ _ checked9143.1 (.cons _ _ _ _ _ checked9144.1 (.cons _ _ _ _ _ checked9145.1 (.cons _ _ _ _ _ checked9146.1 (.cons _ _ _ _ _ checked9147.1 (.cons _ _ _ _ _ checked9148.1 (.cons _ _ _ _ _ checked9149.1 (.cons _ _ _ _ _ checked9150.1 (.cons _ _ _ _ _ checked9151.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9131 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3483 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9088.2,checked9089.2,checked9090.2,checked9091.2,checked9092.2,checked9093.2,checked9094.2,checked9095.2,checked9096.2,checked9097.2,checked9098.2,checked9099.2,checked9100.2,checked9101.2,checked9102.2,checked9103.2,checked9104.2,checked9105.2,checked9106.2,checked9107.2,checked9108.2,checked9109.2,checked9110.2,checked9111.2,checked9112.2,checked9113.2,checked9114.2,checked9115.2,checked9116.2,checked9117.2,checked9118.2,checked9119.2,checked9120.2,checked9121.2,checked9122.2,checked9123.2,checked9124.2,checked9125.2,checked9126.2,checked9127.2,checked9128.2,checked9129.2,checked9130.2,checked9131.2,checked9132.2,checked9133.2,checked9134.2,checked9135.2,checked9136.2,checked9137.2,checked9138.2,checked9139.2,checked9140.2,checked9141.2,checked9142.2,checked9143.2,checked9144.2,checked9145.2,checked9146.2,checked9147.2,checked9148.2,checked9149.2,checked9150.2,checked9151.2]
  decide
end ArtifactPathRoundDispatchGroup142
