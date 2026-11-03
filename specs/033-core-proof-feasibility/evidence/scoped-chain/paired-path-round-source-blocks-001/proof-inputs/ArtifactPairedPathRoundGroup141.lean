import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup141
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9024 : List WordIR.Op := [.bxor 9118 9119]
def bytes9024 : Bytes := ("    let r000023a0: u32 = r0000239e ^ r0000239f;\n" : String).toByteArray.data.toList
theorem checked9024 : bytes9024=statementBytes 9120 (op9024.map lower) ∧ bytes9024.length=48 := by core033_kernel_decide
def op9025 : List WordIR.Op := [.band 9070 9043]
def bytes9025 : Bytes := ("    let r000023a1: u32 = r0000236e & r00002353;\n" : String).toByteArray.data.toList
theorem checked9025 : bytes9025=statementBytes 9121 (op9025.map lower) ∧ bytes9025.length=48 := by core033_kernel_decide
def op9026 : List WordIR.Op := [.bxor 9120 9121]
def bytes9026 : Bytes := ("    let r000023a2: u32 = r000023a0 ^ r000023a1;\n" : String).toByteArray.data.toList
theorem checked9026 : bytes9026=statementBytes 9122 (op9026.map lower) ∧ bytes9026.length=48 := by core033_kernel_decide
def op9027 : List WordIR.Op := [.badd 9117 9122]
def bytes9027 : Bytes := ("    let r000023a3: u32 = r0000239d.wrapping_add(r000023a2);\n" : String).toByteArray.data.toList
theorem checked9027 : bytes9027=statementBytes 9123 (op9027.map lower) ∧ bytes9027.length=60 := by core033_kernel_decide
def op9028 : List WordIR.Op := [.badd 9112 9123]
def bytes9028 : Bytes := ("    let r000023a4: u32 = r00002398.wrapping_add(r000023a3);\n" : String).toByteArray.data.toList
theorem checked9028 : bytes9028=statementBytes 9124 (op9028.map lower) ∧ bytes9028.length=60 := by core033_kernel_decide
def op9029 : List WordIR.Op := [.badd 9016 9112]
def bytes9029 : Bytes := ("    let r000023a5: u32 = r00002338.wrapping_add(r00002398);\n" : String).toByteArray.data.toList
theorem checked9029 : bytes9029=statementBytes 9125 (op9029.map lower) ∧ bytes9029.length=60 := by core033_kernel_decide
def op9030 : List WordIR.Op := [.rotr 9125 6]
def bytes9030 : Bytes := ("    let r000023a6: u32 = r000023a5.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9030 : bytes9030=statementBytes 9126 (op9030.map lower) ∧ bytes9030.length=65 := by core033_kernel_decide
def op9031 : List WordIR.Op := [.rotr 9125 11]
def bytes9031 : Bytes := ("    let r000023a7: u32 = r000023a5.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9031 : bytes9031=statementBytes 9127 (op9031.map lower) ∧ bytes9031.length=65 := by core033_kernel_decide
def op9032 : List WordIR.Op := [.bxor 9126 9127]
def bytes9032 : Bytes := ("    let r000023a8: u32 = r000023a6 ^ r000023a7;\n" : String).toByteArray.data.toList
theorem checked9032 : bytes9032=statementBytes 9128 (op9032.map lower) ∧ bytes9032.length=48 := by core033_kernel_decide
def op9033 : List WordIR.Op := [.rotr 9125 25]
def bytes9033 : Bytes := ("    let r000023a9: u32 = r000023a5.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9033 : bytes9033=statementBytes 9129 (op9033.map lower) ∧ bytes9033.length=65 := by core033_kernel_decide
def op9034 : List WordIR.Op := [.bxor 9128 9129]
def bytes9034 : Bytes := ("    let r000023aa: u32 = r000023a8 ^ r000023a9;\n" : String).toByteArray.data.toList
theorem checked9034 : bytes9034=statementBytes 9130 (op9034.map lower) ∧ bytes9034.length=48 := by core033_kernel_decide
def op9035 : List WordIR.Op := [.badd 9044 9130]
def bytes9035 : Bytes := ("    let r000023ab: u32 = r00002354.wrapping_add(r000023aa);\n" : String).toByteArray.data.toList
theorem checked9035 : bytes9035=statementBytes 9131 (op9035.map lower) ∧ bytes9035.length=60 := by core033_kernel_decide
def op9036 : List WordIR.Op := [.band 9125 9098]
def bytes9036 : Bytes := ("    let r000023ac: u32 = r000023a5 & r0000238a;\n" : String).toByteArray.data.toList
theorem checked9036 : bytes9036=statementBytes 9132 (op9036.map lower) ∧ bytes9036.length=48 := by core033_kernel_decide
def op9037 : List WordIR.Op := [.bnot 9125]
def bytes9037 : Bytes := ("    let r000023ad: u32 = !r000023a5;\n" : String).toByteArray.data.toList
theorem checked9037 : bytes9037=statementBytes 9133 (op9037.map lower) ∧ bytes9037.length=37 := by core033_kernel_decide
def op9038 : List WordIR.Op := [.band 9133 9071]
def bytes9038 : Bytes := ("    let r000023ae: u32 = r000023ad & r0000236f;\n" : String).toByteArray.data.toList
theorem checked9038 : bytes9038=statementBytes 9134 (op9038.map lower) ∧ bytes9038.length=48 := by core033_kernel_decide
def op9039 : List WordIR.Op := [.bxor 9132 9134]
def bytes9039 : Bytes := ("    let r000023af: u32 = r000023ac ^ r000023ae;\n" : String).toByteArray.data.toList
theorem checked9039 : bytes9039=statementBytes 9135 (op9039.map lower) ∧ bytes9039.length=48 := by core033_kernel_decide
def op9040 : List WordIR.Op := [.badd 9131 9135]
def bytes9040 : Bytes := ("    let r000023b0: u32 = r000023ab.wrapping_add(r000023af);\n" : String).toByteArray.data.toList
theorem checked9040 : bytes9040=statementBytes 9136 (op9040.map lower) ∧ bytes9040.length=60 := by core033_kernel_decide
def op9041 : List WordIR.Op := [.literal (BitVec.ofNat 32 2456956037)]
def bytes9041 : Bytes := ("    let r000023b1: u32 = 0x92722c85_u32;\n" : String).toByteArray.data.toList
theorem checked9041 : bytes9041=statementBytes 9137 (op9041.map lower) ∧ bytes9041.length=41 := by core033_kernel_decide
def op9042 : List WordIR.Op := [.badd 9136 9137]
def bytes9042 : Bytes := ("    let r000023b2: u32 = r000023b0.wrapping_add(r000023b1);\n" : String).toByteArray.data.toList
theorem checked9042 : bytes9042=statementBytes 9138 (op9042.map lower) ∧ bytes9042.length=60 := by core033_kernel_decide
def op9043 : List WordIR.Op := [.badd 9138 7760]
def bytes9043 : Bytes := ("    let r000023b3: u32 = r000023b2.wrapping_add(r00001e50);\n" : String).toByteArray.data.toList
theorem checked9043 : bytes9043=statementBytes 9139 (op9043.map lower) ∧ bytes9043.length=60 := by core033_kernel_decide
def op9044 : List WordIR.Op := [.rotr 9124 2]
def bytes9044 : Bytes := ("    let r000023b4: u32 = r000023a4.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9044 : bytes9044=statementBytes 9140 (op9044.map lower) ∧ bytes9044.length=65 := by core033_kernel_decide
def op9045 : List WordIR.Op := [.rotr 9124 13]
def bytes9045 : Bytes := ("    let r000023b5: u32 = r000023a4.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9045 : bytes9045=statementBytes 9141 (op9045.map lower) ∧ bytes9045.length=65 := by core033_kernel_decide
def op9046 : List WordIR.Op := [.bxor 9140 9141]
def bytes9046 : Bytes := ("    let r000023b6: u32 = r000023b4 ^ r000023b5;\n" : String).toByteArray.data.toList
theorem checked9046 : bytes9046=statementBytes 9142 (op9046.map lower) ∧ bytes9046.length=48 := by core033_kernel_decide
def op9047 : List WordIR.Op := [.rotr 9124 22]
def bytes9047 : Bytes := ("    let r000023b7: u32 = r000023a4.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9047 : bytes9047=statementBytes 9143 (op9047.map lower) ∧ bytes9047.length=65 := by core033_kernel_decide
def op9048 : List WordIR.Op := [.bxor 9142 9143]
def bytes9048 : Bytes := ("    let r000023b8: u32 = r000023b6 ^ r000023b7;\n" : String).toByteArray.data.toList
theorem checked9048 : bytes9048=statementBytes 9144 (op9048.map lower) ∧ bytes9048.length=48 := by core033_kernel_decide
def op9049 : List WordIR.Op := [.band 9124 9097]
def bytes9049 : Bytes := ("    let r000023b9: u32 = r000023a4 & r00002389;\n" : String).toByteArray.data.toList
theorem checked9049 : bytes9049=statementBytes 9145 (op9049.map lower) ∧ bytes9049.length=48 := by core033_kernel_decide
def op9050 : List WordIR.Op := [.band 9124 9070]
def bytes9050 : Bytes := ("    let r000023ba: u32 = r000023a4 & r0000236e;\n" : String).toByteArray.data.toList
theorem checked9050 : bytes9050=statementBytes 9146 (op9050.map lower) ∧ bytes9050.length=48 := by core033_kernel_decide
def op9051 : List WordIR.Op := [.bxor 9145 9146]
def bytes9051 : Bytes := ("    let r000023bb: u32 = r000023b9 ^ r000023ba;\n" : String).toByteArray.data.toList
theorem checked9051 : bytes9051=statementBytes 9147 (op9051.map lower) ∧ bytes9051.length=48 := by core033_kernel_decide
def op9052 : List WordIR.Op := [.band 9097 9070]
def bytes9052 : Bytes := ("    let r000023bc: u32 = r00002389 & r0000236e;\n" : String).toByteArray.data.toList
theorem checked9052 : bytes9052=statementBytes 9148 (op9052.map lower) ∧ bytes9052.length=48 := by core033_kernel_decide
def op9053 : List WordIR.Op := [.bxor 9147 9148]
def bytes9053 : Bytes := ("    let r000023bd: u32 = r000023bb ^ r000023bc;\n" : String).toByteArray.data.toList
theorem checked9053 : bytes9053=statementBytes 9149 (op9053.map lower) ∧ bytes9053.length=48 := by core033_kernel_decide
def op9054 : List WordIR.Op := [.badd 9144 9149]
def bytes9054 : Bytes := ("    let r000023be: u32 = r000023b8.wrapping_add(r000023bd);\n" : String).toByteArray.data.toList
theorem checked9054 : bytes9054=statementBytes 9150 (op9054.map lower) ∧ bytes9054.length=60 := by core033_kernel_decide
def op9055 : List WordIR.Op := [.badd 9139 9150]
def bytes9055 : Bytes := ("    let r000023bf: u32 = r000023b3.wrapping_add(r000023be);\n" : String).toByteArray.data.toList
theorem checked9055 : bytes9055=statementBytes 9151 (op9055.map lower) ∧ bytes9055.length=60 := by core033_kernel_decide
def op9056 : List WordIR.Op := [.badd 9043 9139]
def bytes9056 : Bytes := ("    let r000023c0: u32 = r00002353.wrapping_add(r000023b3);\n" : String).toByteArray.data.toList
theorem checked9056 : bytes9056=statementBytes 9152 (op9056.map lower) ∧ bytes9056.length=60 := by core033_kernel_decide
def op9057 : List WordIR.Op := [.rotr 9152 6]
def bytes9057 : Bytes := ("    let r000023c1: u32 = r000023c0.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9057 : bytes9057=statementBytes 9153 (op9057.map lower) ∧ bytes9057.length=65 := by core033_kernel_decide
def op9058 : List WordIR.Op := [.rotr 9152 11]
def bytes9058 : Bytes := ("    let r000023c2: u32 = r000023c0.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9058 : bytes9058=statementBytes 9154 (op9058.map lower) ∧ bytes9058.length=65 := by core033_kernel_decide
def op9059 : List WordIR.Op := [.bxor 9153 9154]
def bytes9059 : Bytes := ("    let r000023c3: u32 = r000023c1 ^ r000023c2;\n" : String).toByteArray.data.toList
theorem checked9059 : bytes9059=statementBytes 9155 (op9059.map lower) ∧ bytes9059.length=48 := by core033_kernel_decide
def op9060 : List WordIR.Op := [.rotr 9152 25]
def bytes9060 : Bytes := ("    let r000023c4: u32 = r000023c0.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9060 : bytes9060=statementBytes 9156 (op9060.map lower) ∧ bytes9060.length=65 := by core033_kernel_decide
def op9061 : List WordIR.Op := [.bxor 9155 9156]
def bytes9061 : Bytes := ("    let r000023c5: u32 = r000023c3 ^ r000023c4;\n" : String).toByteArray.data.toList
theorem checked9061 : bytes9061=statementBytes 9157 (op9061.map lower) ∧ bytes9061.length=48 := by core033_kernel_decide
def op9062 : List WordIR.Op := [.badd 9071 9157]
def bytes9062 : Bytes := ("    let r000023c6: u32 = r0000236f.wrapping_add(r000023c5);\n" : String).toByteArray.data.toList
theorem checked9062 : bytes9062=statementBytes 9158 (op9062.map lower) ∧ bytes9062.length=60 := by core033_kernel_decide
def op9063 : List WordIR.Op := [.band 9152 9125]
def bytes9063 : Bytes := ("    let r000023c7: u32 = r000023c0 & r000023a5;\n" : String).toByteArray.data.toList
theorem checked9063 : bytes9063=statementBytes 9159 (op9063.map lower) ∧ bytes9063.length=48 := by core033_kernel_decide
def op9064 : List WordIR.Op := [.bnot 9152]
def bytes9064 : Bytes := ("    let r000023c8: u32 = !r000023c0;\n" : String).toByteArray.data.toList
theorem checked9064 : bytes9064=statementBytes 9160 (op9064.map lower) ∧ bytes9064.length=37 := by core033_kernel_decide
def op9065 : List WordIR.Op := [.band 9160 9098]
def bytes9065 : Bytes := ("    let r000023c9: u32 = r000023c8 & r0000238a;\n" : String).toByteArray.data.toList
theorem checked9065 : bytes9065=statementBytes 9161 (op9065.map lower) ∧ bytes9065.length=48 := by core033_kernel_decide
def op9066 : List WordIR.Op := [.bxor 9159 9161]
def bytes9066 : Bytes := ("    let r000023ca: u32 = r000023c7 ^ r000023c9;\n" : String).toByteArray.data.toList
theorem checked9066 : bytes9066=statementBytes 9162 (op9066.map lower) ∧ bytes9066.length=48 := by core033_kernel_decide
def op9067 : List WordIR.Op := [.badd 9158 9162]
def bytes9067 : Bytes := ("    let r000023cb: u32 = r000023c6.wrapping_add(r000023ca);\n" : String).toByteArray.data.toList
theorem checked9067 : bytes9067=statementBytes 9163 (op9067.map lower) ∧ bytes9067.length=60 := by core033_kernel_decide
def op9068 : List WordIR.Op := [.literal (BitVec.ofNat 32 2730485921)]
def bytes9068 : Bytes := ("    let r000023cc: u32 = 0xa2bfe8a1_u32;\n" : String).toByteArray.data.toList
theorem checked9068 : bytes9068=statementBytes 9164 (op9068.map lower) ∧ bytes9068.length=41 := by core033_kernel_decide
def op9069 : List WordIR.Op := [.badd 9163 9164]
def bytes9069 : Bytes := ("    let r000023cd: u32 = r000023cb.wrapping_add(r000023cc);\n" : String).toByteArray.data.toList
theorem checked9069 : bytes9069=statementBytes 9165 (op9069.map lower) ∧ bytes9069.length=60 := by core033_kernel_decide
def op9070 : List WordIR.Op := [.badd 9165 7773]
def bytes9070 : Bytes := ("    let r000023ce: u32 = r000023cd.wrapping_add(r00001e5d);\n" : String).toByteArray.data.toList
theorem checked9070 : bytes9070=statementBytes 9166 (op9070.map lower) ∧ bytes9070.length=60 := by core033_kernel_decide
def op9071 : List WordIR.Op := [.rotr 9151 2]
def bytes9071 : Bytes := ("    let r000023cf: u32 = r000023bf.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9071 : bytes9071=statementBytes 9167 (op9071.map lower) ∧ bytes9071.length=65 := by core033_kernel_decide
def op9072 : List WordIR.Op := [.rotr 9151 13]
def bytes9072 : Bytes := ("    let r000023d0: u32 = r000023bf.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9072 : bytes9072=statementBytes 9168 (op9072.map lower) ∧ bytes9072.length=65 := by core033_kernel_decide
def op9073 : List WordIR.Op := [.bxor 9167 9168]
def bytes9073 : Bytes := ("    let r000023d1: u32 = r000023cf ^ r000023d0;\n" : String).toByteArray.data.toList
theorem checked9073 : bytes9073=statementBytes 9169 (op9073.map lower) ∧ bytes9073.length=48 := by core033_kernel_decide
def op9074 : List WordIR.Op := [.rotr 9151 22]
def bytes9074 : Bytes := ("    let r000023d2: u32 = r000023bf.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9074 : bytes9074=statementBytes 9170 (op9074.map lower) ∧ bytes9074.length=65 := by core033_kernel_decide
def op9075 : List WordIR.Op := [.bxor 9169 9170]
def bytes9075 : Bytes := ("    let r000023d3: u32 = r000023d1 ^ r000023d2;\n" : String).toByteArray.data.toList
theorem checked9075 : bytes9075=statementBytes 9171 (op9075.map lower) ∧ bytes9075.length=48 := by core033_kernel_decide
def op9076 : List WordIR.Op := [.band 9151 9124]
def bytes9076 : Bytes := ("    let r000023d4: u32 = r000023bf & r000023a4;\n" : String).toByteArray.data.toList
theorem checked9076 : bytes9076=statementBytes 9172 (op9076.map lower) ∧ bytes9076.length=48 := by core033_kernel_decide
def op9077 : List WordIR.Op := [.band 9151 9097]
def bytes9077 : Bytes := ("    let r000023d5: u32 = r000023bf & r00002389;\n" : String).toByteArray.data.toList
theorem checked9077 : bytes9077=statementBytes 9173 (op9077.map lower) ∧ bytes9077.length=48 := by core033_kernel_decide
def op9078 : List WordIR.Op := [.bxor 9172 9173]
def bytes9078 : Bytes := ("    let r000023d6: u32 = r000023d4 ^ r000023d5;\n" : String).toByteArray.data.toList
theorem checked9078 : bytes9078=statementBytes 9174 (op9078.map lower) ∧ bytes9078.length=48 := by core033_kernel_decide
def op9079 : List WordIR.Op := [.band 9124 9097]
def bytes9079 : Bytes := ("    let r000023d7: u32 = r000023a4 & r00002389;\n" : String).toByteArray.data.toList
theorem checked9079 : bytes9079=statementBytes 9175 (op9079.map lower) ∧ bytes9079.length=48 := by core033_kernel_decide
def op9080 : List WordIR.Op := [.bxor 9174 9175]
def bytes9080 : Bytes := ("    let r000023d8: u32 = r000023d6 ^ r000023d7;\n" : String).toByteArray.data.toList
theorem checked9080 : bytes9080=statementBytes 9176 (op9080.map lower) ∧ bytes9080.length=48 := by core033_kernel_decide
def op9081 : List WordIR.Op := [.badd 9171 9176]
def bytes9081 : Bytes := ("    let r000023d9: u32 = r000023d3.wrapping_add(r000023d8);\n" : String).toByteArray.data.toList
theorem checked9081 : bytes9081=statementBytes 9177 (op9081.map lower) ∧ bytes9081.length=60 := by core033_kernel_decide
def op9082 : List WordIR.Op := [.badd 9166 9177]
def bytes9082 : Bytes := ("    let r000023da: u32 = r000023ce.wrapping_add(r000023d9);\n" : String).toByteArray.data.toList
theorem checked9082 : bytes9082=statementBytes 9178 (op9082.map lower) ∧ bytes9082.length=60 := by core033_kernel_decide
def op9083 : List WordIR.Op := [.badd 9070 9166]
def bytes9083 : Bytes := ("    let r000023db: u32 = r0000236e.wrapping_add(r000023ce);\n" : String).toByteArray.data.toList
theorem checked9083 : bytes9083=statementBytes 9179 (op9083.map lower) ∧ bytes9083.length=60 := by core033_kernel_decide
def op9084 : List WordIR.Op := [.rotr 9179 6]
def bytes9084 : Bytes := ("    let r000023dc: u32 = r000023db.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9084 : bytes9084=statementBytes 9180 (op9084.map lower) ∧ bytes9084.length=65 := by core033_kernel_decide
def op9085 : List WordIR.Op := [.rotr 9179 11]
def bytes9085 : Bytes := ("    let r000023dd: u32 = r000023db.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9085 : bytes9085=statementBytes 9181 (op9085.map lower) ∧ bytes9085.length=65 := by core033_kernel_decide
def op9086 : List WordIR.Op := [.bxor 9180 9181]
def bytes9086 : Bytes := ("    let r000023de: u32 = r000023dc ^ r000023dd;\n" : String).toByteArray.data.toList
theorem checked9086 : bytes9086=statementBytes 9182 (op9086.map lower) ∧ bytes9086.length=48 := by core033_kernel_decide
def op9087 : List WordIR.Op := [.rotr 9179 25]
def bytes9087 : Bytes := ("    let r000023df: u32 = r000023db.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9087 : bytes9087=statementBytes 9183 (op9087.map lower) ∧ bytes9087.length=65 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9024,op9025,op9026,op9027,op9028,op9029,op9030,op9031,op9032,op9033,op9034,op9035,op9036,op9037,op9038,op9039,op9040,op9041,op9042,op9043,op9044,op9045,op9046,op9047,op9048,op9049,op9050,op9051,op9052,op9053,op9054,op9055,op9056,op9057,op9058,op9059,op9060,op9061,op9062,op9063,op9064,op9065,op9066,op9067,op9068,op9069,op9070,op9071,op9072,op9073,op9074,op9075,op9076,op9077,op9078,op9079,op9080,op9081,op9082,op9083,op9084,op9085,op9086,op9087]
def chunks : List Bytes := [bytes9024,bytes9025,bytes9026,bytes9027,bytes9028,bytes9029,bytes9030,bytes9031,bytes9032,bytes9033,bytes9034,bytes9035,bytes9036,bytes9037,bytes9038,bytes9039,bytes9040,bytes9041,bytes9042,bytes9043,bytes9044,bytes9045,bytes9046,bytes9047,bytes9048,bytes9049,bytes9050,bytes9051,bytes9052,bytes9053,bytes9054,bytes9055,bytes9056,bytes9057,bytes9058,bytes9059,bytes9060,bytes9061,bytes9062,bytes9063,bytes9064,bytes9065,bytes9066,bytes9067,bytes9068,bytes9069,bytes9070,bytes9071,bytes9072,bytes9073,bytes9074,bytes9075,bytes9076,bytes9077,bytes9078,bytes9079,bytes9080,bytes9081,bytes9082,bytes9083,bytes9084,bytes9085,bytes9086,bytes9087]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9120 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9024.1 (.cons _ _ _ _ _ checked9025.1 (.cons _ _ _ _ _ checked9026.1 (.cons _ _ _ _ _ checked9027.1 (.cons _ _ _ _ _ checked9028.1 (.cons _ _ _ _ _ checked9029.1 (.cons _ _ _ _ _ checked9030.1 (.cons _ _ _ _ _ checked9031.1 (.cons _ _ _ _ _ checked9032.1 (.cons _ _ _ _ _ checked9033.1 (.cons _ _ _ _ _ checked9034.1 (.cons _ _ _ _ _ checked9035.1 (.cons _ _ _ _ _ checked9036.1 (.cons _ _ _ _ _ checked9037.1 (.cons _ _ _ _ _ checked9038.1 (.cons _ _ _ _ _ checked9039.1 (.cons _ _ _ _ _ checked9040.1 (.cons _ _ _ _ _ checked9041.1 (.cons _ _ _ _ _ checked9042.1 (.cons _ _ _ _ _ checked9043.1 (.cons _ _ _ _ _ checked9044.1 (.cons _ _ _ _ _ checked9045.1 (.cons _ _ _ _ _ checked9046.1 (.cons _ _ _ _ _ checked9047.1 (.cons _ _ _ _ _ checked9048.1 (.cons _ _ _ _ _ checked9049.1 (.cons _ _ _ _ _ checked9050.1 (.cons _ _ _ _ _ checked9051.1 (.cons _ _ _ _ _ checked9052.1 (.cons _ _ _ _ _ checked9053.1 (.cons _ _ _ _ _ checked9054.1 (.cons _ _ _ _ _ checked9055.1 (.cons _ _ _ _ _ checked9056.1 (.cons _ _ _ _ _ checked9057.1 (.cons _ _ _ _ _ checked9058.1 (.cons _ _ _ _ _ checked9059.1 (.cons _ _ _ _ _ checked9060.1 (.cons _ _ _ _ _ checked9061.1 (.cons _ _ _ _ _ checked9062.1 (.cons _ _ _ _ _ checked9063.1 (.cons _ _ _ _ _ checked9064.1 (.cons _ _ _ _ _ checked9065.1 (.cons _ _ _ _ _ checked9066.1 (.cons _ _ _ _ _ checked9067.1 (.cons _ _ _ _ _ checked9068.1 (.cons _ _ _ _ _ checked9069.1 (.cons _ _ _ _ _ checked9070.1 (.cons _ _ _ _ _ checked9071.1 (.cons _ _ _ _ _ checked9072.1 (.cons _ _ _ _ _ checked9073.1 (.cons _ _ _ _ _ checked9074.1 (.cons _ _ _ _ _ checked9075.1 (.cons _ _ _ _ _ checked9076.1 (.cons _ _ _ _ _ checked9077.1 (.cons _ _ _ _ _ checked9078.1 (.cons _ _ _ _ _ checked9079.1 (.cons _ _ _ _ _ checked9080.1 (.cons _ _ _ _ _ checked9081.1 (.cons _ _ _ _ _ checked9082.1 (.cons _ _ _ _ _ checked9083.1 (.cons _ _ _ _ _ checked9084.1 (.cons _ _ _ _ _ checked9085.1 (.cons _ _ _ _ _ checked9086.1 (.cons _ _ _ _ _ checked9087.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9120 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3495 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9024.2,checked9025.2,checked9026.2,checked9027.2,checked9028.2,checked9029.2,checked9030.2,checked9031.2,checked9032.2,checked9033.2,checked9034.2,checked9035.2,checked9036.2,checked9037.2,checked9038.2,checked9039.2,checked9040.2,checked9041.2,checked9042.2,checked9043.2,checked9044.2,checked9045.2,checked9046.2,checked9047.2,checked9048.2,checked9049.2,checked9050.2,checked9051.2,checked9052.2,checked9053.2,checked9054.2,checked9055.2,checked9056.2,checked9057.2,checked9058.2,checked9059.2,checked9060.2,checked9061.2,checked9062.2,checked9063.2,checked9064.2,checked9065.2,checked9066.2,checked9067.2,checked9068.2,checked9069.2,checked9070.2,checked9071.2,checked9072.2,checked9073.2,checked9074.2,checked9075.2,checked9076.2,checked9077.2,checked9078.2,checked9079.2,checked9080.2,checked9081.2,checked9082.2,checked9083.2,checked9084.2,checked9085.2,checked9086.2,checked9087.2]
  decide
end ArtifactPairedPathRoundGroup141
