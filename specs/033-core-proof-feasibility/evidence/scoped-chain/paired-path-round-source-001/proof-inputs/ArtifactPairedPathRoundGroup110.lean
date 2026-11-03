import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup110
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7040 : List WordIR.Op := [.badd 7133 7135]
def bytes7040 : Bytes := ("    let r00001be0: u32 = r00001bdd.wrapping_add(r00001bdf);\n" : String).toByteArray.data.toList
theorem checked7040 : bytes7040=statementBytes 7136 (op7040.map lower) ∧ bytes7040.length=60 := by core033_kernel_decide
def op7041 : List WordIR.Op := [.bnot 7136]
def bytes7041 : Bytes := ("    let r00001be1: u32 = !r00001be0;\n" : String).toByteArray.data.toList
theorem checked7041 : bytes7041=statementBytes 7137 (op7041.map lower) ∧ bytes7041.length=37 := by core033_kernel_decide
def op7042 : List WordIR.Op := [.band 7132 7137]
def bytes7042 : Bytes := ("    let r00001be2: u32 = r00001bdc & r00001be1;\n" : String).toByteArray.data.toList
theorem checked7042 : bytes7042=statementBytes 7138 (op7042.map lower) ∧ bytes7042.length=48 := by core033_kernel_decide
def op7043 : List WordIR.Op := [.bxor 7128 7138]
def bytes7043 : Bytes := ("    let r00001be3: u32 = r00001bd8 ^ r00001be2;\n" : String).toByteArray.data.toList
theorem checked7043 : bytes7043=statementBytes 7139 (op7043.map lower) ∧ bytes7043.length=48 := by core033_kernel_decide
def op7044 : List WordIR.Op := [.shr 7139 31]
def bytes7044 : Bytes := ("    let r00001be4: u32 = r00001be3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7044 : bytes7044=statementBytes 7140 (op7044.map lower) ∧ bytes7044.length=54 := by core033_kernel_decide
def op7045 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7045 : Bytes := ("    let r00001be5: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7045 : bytes7045=statementBytes 7141 (op7045.map lower) ∧ bytes7045.length=41 := by core033_kernel_decide
def op7046 : List WordIR.Op := [.bxor 7140 7141]
def bytes7046 : Bytes := ("    let r00001be6: u32 = r00001be4 ^ r00001be5;\n" : String).toByteArray.data.toList
theorem checked7046 : bytes7046=statementBytes 7142 (op7046.map lower) ∧ bytes7046.length=48 := by core033_kernel_decide
def op7047 : List WordIR.Op := [.shr 5355 8]
def bytes7047 : Bytes := ("    let r00001be7: u32 = r000014eb >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7047 : bytes7047=statementBytes 7143 (op7047.map lower) ∧ bytes7047.length=54 := by core033_kernel_decide
def op7048 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7048 : Bytes := ("    let r00001be8: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7048 : bytes7048=statementBytes 7144 (op7048.map lower) ∧ bytes7048.length=41 := by core033_kernel_decide
def op7049 : List WordIR.Op := [.bnot 7144]
def bytes7049 : Bytes := ("    let r00001be9: u32 = !r00001be8;\n" : String).toByteArray.data.toList
theorem checked7049 : bytes7049=statementBytes 7145 (op7049.map lower) ∧ bytes7049.length=37 := by core033_kernel_decide
def op7050 : List WordIR.Op := [.band 7143 7145]
def bytes7050 : Bytes := ("    let r00001bea: u32 = r00001be7 & r00001be9;\n" : String).toByteArray.data.toList
theorem checked7050 : bytes7050=statementBytes 7146 (op7050.map lower) ∧ bytes7050.length=48 := by core033_kernel_decide
def op7051 : List WordIR.Op := [.shr 5355 8]
def bytes7051 : Bytes := ("    let r00001beb: u32 = r000014eb >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7051 : bytes7051=statementBytes 7147 (op7051.map lower) ∧ bytes7051.length=54 := by core033_kernel_decide
def op7052 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7052 : Bytes := ("    let r00001bec: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7052 : bytes7052=statementBytes 7148 (op7052.map lower) ∧ bytes7052.length=41 := by core033_kernel_decide
def op7053 : List WordIR.Op := [.bnot 7148]
def bytes7053 : Bytes := ("    let r00001bed: u32 = !r00001bec;\n" : String).toByteArray.data.toList
theorem checked7053 : bytes7053=statementBytes 7149 (op7053.map lower) ∧ bytes7053.length=37 := by core033_kernel_decide
def op7054 : List WordIR.Op := [.bxor 7147 7149]
def bytes7054 : Bytes := ("    let r00001bee: u32 = r00001beb ^ r00001bed;\n" : String).toByteArray.data.toList
theorem checked7054 : bytes7054=statementBytes 7150 (op7054.map lower) ∧ bytes7054.length=48 := by core033_kernel_decide
def op7055 : List WordIR.Op := [.shr 5355 8]
def bytes7055 : Bytes := ("    let r00001bef: u32 = r000014eb >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7055 : bytes7055=statementBytes 7151 (op7055.map lower) ∧ bytes7055.length=54 := by core033_kernel_decide
def op7056 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7056 : Bytes := ("    let r00001bf0: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7056 : bytes7056=statementBytes 7152 (op7056.map lower) ∧ bytes7056.length=41 := by core033_kernel_decide
def op7057 : List WordIR.Op := [.bnot 7152]
def bytes7057 : Bytes := ("    let r00001bf1: u32 = !r00001bf0;\n" : String).toByteArray.data.toList
theorem checked7057 : bytes7057=statementBytes 7153 (op7057.map lower) ∧ bytes7057.length=37 := by core033_kernel_decide
def op7058 : List WordIR.Op := [.badd 7151 7153]
def bytes7058 : Bytes := ("    let r00001bf2: u32 = r00001bef.wrapping_add(r00001bf1);\n" : String).toByteArray.data.toList
theorem checked7058 : bytes7058=statementBytes 7154 (op7058.map lower) ∧ bytes7058.length=60 := by core033_kernel_decide
def op7059 : List WordIR.Op := [.bnot 7154]
def bytes7059 : Bytes := ("    let r00001bf3: u32 = !r00001bf2;\n" : String).toByteArray.data.toList
theorem checked7059 : bytes7059=statementBytes 7155 (op7059.map lower) ∧ bytes7059.length=37 := by core033_kernel_decide
def op7060 : List WordIR.Op := [.band 7150 7155]
def bytes7060 : Bytes := ("    let r00001bf4: u32 = r00001bee & r00001bf3;\n" : String).toByteArray.data.toList
theorem checked7060 : bytes7060=statementBytes 7156 (op7060.map lower) ∧ bytes7060.length=48 := by core033_kernel_decide
def op7061 : List WordIR.Op := [.bxor 7146 7156]
def bytes7061 : Bytes := ("    let r00001bf5: u32 = r00001bea ^ r00001bf4;\n" : String).toByteArray.data.toList
theorem checked7061 : bytes7061=statementBytes 7157 (op7061.map lower) ∧ bytes7061.length=48 := by core033_kernel_decide
def op7062 : List WordIR.Op := [.shr 7157 31]
def bytes7062 : Bytes := ("    let r00001bf6: u32 = r00001bf5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7062 : bytes7062=statementBytes 7158 (op7062.map lower) ∧ bytes7062.length=54 := by core033_kernel_decide
def op7063 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7063 : Bytes := ("    let r00001bf7: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7063 : bytes7063=statementBytes 7159 (op7063.map lower) ∧ bytes7063.length=41 := by core033_kernel_decide
def op7064 : List WordIR.Op := [.bxor 7158 7159]
def bytes7064 : Bytes := ("    let r00001bf8: u32 = r00001bf6 ^ r00001bf7;\n" : String).toByteArray.data.toList
theorem checked7064 : bytes7064=statementBytes 7160 (op7064.map lower) ∧ bytes7064.length=48 := by core033_kernel_decide
def op7065 : List WordIR.Op := [.shr 5407 8]
def bytes7065 : Bytes := ("    let r00001bf9: u32 = r0000151f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7065 : bytes7065=statementBytes 7161 (op7065.map lower) ∧ bytes7065.length=54 := by core033_kernel_decide
def op7066 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7066 : Bytes := ("    let r00001bfa: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7066 : bytes7066=statementBytes 7162 (op7066.map lower) ∧ bytes7066.length=41 := by core033_kernel_decide
def op7067 : List WordIR.Op := [.bnot 7162]
def bytes7067 : Bytes := ("    let r00001bfb: u32 = !r00001bfa;\n" : String).toByteArray.data.toList
theorem checked7067 : bytes7067=statementBytes 7163 (op7067.map lower) ∧ bytes7067.length=37 := by core033_kernel_decide
def op7068 : List WordIR.Op := [.band 7161 7163]
def bytes7068 : Bytes := ("    let r00001bfc: u32 = r00001bf9 & r00001bfb;\n" : String).toByteArray.data.toList
theorem checked7068 : bytes7068=statementBytes 7164 (op7068.map lower) ∧ bytes7068.length=48 := by core033_kernel_decide
def op7069 : List WordIR.Op := [.shr 5407 8]
def bytes7069 : Bytes := ("    let r00001bfd: u32 = r0000151f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7069 : bytes7069=statementBytes 7165 (op7069.map lower) ∧ bytes7069.length=54 := by core033_kernel_decide
def op7070 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7070 : Bytes := ("    let r00001bfe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7070 : bytes7070=statementBytes 7166 (op7070.map lower) ∧ bytes7070.length=41 := by core033_kernel_decide
def op7071 : List WordIR.Op := [.bnot 7166]
def bytes7071 : Bytes := ("    let r00001bff: u32 = !r00001bfe;\n" : String).toByteArray.data.toList
theorem checked7071 : bytes7071=statementBytes 7167 (op7071.map lower) ∧ bytes7071.length=37 := by core033_kernel_decide
def op7072 : List WordIR.Op := [.bxor 7165 7167]
def bytes7072 : Bytes := ("    let r00001c00: u32 = r00001bfd ^ r00001bff;\n" : String).toByteArray.data.toList
theorem checked7072 : bytes7072=statementBytes 7168 (op7072.map lower) ∧ bytes7072.length=48 := by core033_kernel_decide
def op7073 : List WordIR.Op := [.shr 5407 8]
def bytes7073 : Bytes := ("    let r00001c01: u32 = r0000151f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7073 : bytes7073=statementBytes 7169 (op7073.map lower) ∧ bytes7073.length=54 := by core033_kernel_decide
def op7074 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7074 : Bytes := ("    let r00001c02: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7074 : bytes7074=statementBytes 7170 (op7074.map lower) ∧ bytes7074.length=41 := by core033_kernel_decide
def op7075 : List WordIR.Op := [.bnot 7170]
def bytes7075 : Bytes := ("    let r00001c03: u32 = !r00001c02;\n" : String).toByteArray.data.toList
theorem checked7075 : bytes7075=statementBytes 7171 (op7075.map lower) ∧ bytes7075.length=37 := by core033_kernel_decide
def op7076 : List WordIR.Op := [.badd 7169 7171]
def bytes7076 : Bytes := ("    let r00001c04: u32 = r00001c01.wrapping_add(r00001c03);\n" : String).toByteArray.data.toList
theorem checked7076 : bytes7076=statementBytes 7172 (op7076.map lower) ∧ bytes7076.length=60 := by core033_kernel_decide
def op7077 : List WordIR.Op := [.bnot 7172]
def bytes7077 : Bytes := ("    let r00001c05: u32 = !r00001c04;\n" : String).toByteArray.data.toList
theorem checked7077 : bytes7077=statementBytes 7173 (op7077.map lower) ∧ bytes7077.length=37 := by core033_kernel_decide
def op7078 : List WordIR.Op := [.band 7168 7173]
def bytes7078 : Bytes := ("    let r00001c06: u32 = r00001c00 & r00001c05;\n" : String).toByteArray.data.toList
theorem checked7078 : bytes7078=statementBytes 7174 (op7078.map lower) ∧ bytes7078.length=48 := by core033_kernel_decide
def op7079 : List WordIR.Op := [.bxor 7164 7174]
def bytes7079 : Bytes := ("    let r00001c07: u32 = r00001bfc ^ r00001c06;\n" : String).toByteArray.data.toList
theorem checked7079 : bytes7079=statementBytes 7175 (op7079.map lower) ∧ bytes7079.length=48 := by core033_kernel_decide
def op7080 : List WordIR.Op := [.shr 7175 31]
def bytes7080 : Bytes := ("    let r00001c08: u32 = r00001c07 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7080 : bytes7080=statementBytes 7176 (op7080.map lower) ∧ bytes7080.length=54 := by core033_kernel_decide
def op7081 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7081 : Bytes := ("    let r00001c09: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7081 : bytes7081=statementBytes 7177 (op7081.map lower) ∧ bytes7081.length=41 := by core033_kernel_decide
def op7082 : List WordIR.Op := [.bxor 7176 7177]
def bytes7082 : Bytes := ("    let r00001c0a: u32 = r00001c08 ^ r00001c09;\n" : String).toByteArray.data.toList
theorem checked7082 : bytes7082=statementBytes 7178 (op7082.map lower) ∧ bytes7082.length=48 := by core033_kernel_decide
def op7083 : List WordIR.Op := [.shr 5459 8]
def bytes7083 : Bytes := ("    let r00001c0b: u32 = r00001553 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7083 : bytes7083=statementBytes 7179 (op7083.map lower) ∧ bytes7083.length=54 := by core033_kernel_decide
def op7084 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7084 : Bytes := ("    let r00001c0c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7084 : bytes7084=statementBytes 7180 (op7084.map lower) ∧ bytes7084.length=41 := by core033_kernel_decide
def op7085 : List WordIR.Op := [.bnot 7180]
def bytes7085 : Bytes := ("    let r00001c0d: u32 = !r00001c0c;\n" : String).toByteArray.data.toList
theorem checked7085 : bytes7085=statementBytes 7181 (op7085.map lower) ∧ bytes7085.length=37 := by core033_kernel_decide
def op7086 : List WordIR.Op := [.band 7179 7181]
def bytes7086 : Bytes := ("    let r00001c0e: u32 = r00001c0b & r00001c0d;\n" : String).toByteArray.data.toList
theorem checked7086 : bytes7086=statementBytes 7182 (op7086.map lower) ∧ bytes7086.length=48 := by core033_kernel_decide
def op7087 : List WordIR.Op := [.shr 5459 8]
def bytes7087 : Bytes := ("    let r00001c0f: u32 = r00001553 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7087 : bytes7087=statementBytes 7183 (op7087.map lower) ∧ bytes7087.length=54 := by core033_kernel_decide
def op7088 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7088 : Bytes := ("    let r00001c10: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7088 : bytes7088=statementBytes 7184 (op7088.map lower) ∧ bytes7088.length=41 := by core033_kernel_decide
def op7089 : List WordIR.Op := [.bnot 7184]
def bytes7089 : Bytes := ("    let r00001c11: u32 = !r00001c10;\n" : String).toByteArray.data.toList
theorem checked7089 : bytes7089=statementBytes 7185 (op7089.map lower) ∧ bytes7089.length=37 := by core033_kernel_decide
def op7090 : List WordIR.Op := [.bxor 7183 7185]
def bytes7090 : Bytes := ("    let r00001c12: u32 = r00001c0f ^ r00001c11;\n" : String).toByteArray.data.toList
theorem checked7090 : bytes7090=statementBytes 7186 (op7090.map lower) ∧ bytes7090.length=48 := by core033_kernel_decide
def op7091 : List WordIR.Op := [.shr 5459 8]
def bytes7091 : Bytes := ("    let r00001c13: u32 = r00001553 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7091 : bytes7091=statementBytes 7187 (op7091.map lower) ∧ bytes7091.length=54 := by core033_kernel_decide
def op7092 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7092 : Bytes := ("    let r00001c14: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7092 : bytes7092=statementBytes 7188 (op7092.map lower) ∧ bytes7092.length=41 := by core033_kernel_decide
def op7093 : List WordIR.Op := [.bnot 7188]
def bytes7093 : Bytes := ("    let r00001c15: u32 = !r00001c14;\n" : String).toByteArray.data.toList
theorem checked7093 : bytes7093=statementBytes 7189 (op7093.map lower) ∧ bytes7093.length=37 := by core033_kernel_decide
def op7094 : List WordIR.Op := [.badd 7187 7189]
def bytes7094 : Bytes := ("    let r00001c16: u32 = r00001c13.wrapping_add(r00001c15);\n" : String).toByteArray.data.toList
theorem checked7094 : bytes7094=statementBytes 7190 (op7094.map lower) ∧ bytes7094.length=60 := by core033_kernel_decide
def op7095 : List WordIR.Op := [.bnot 7190]
def bytes7095 : Bytes := ("    let r00001c17: u32 = !r00001c16;\n" : String).toByteArray.data.toList
theorem checked7095 : bytes7095=statementBytes 7191 (op7095.map lower) ∧ bytes7095.length=37 := by core033_kernel_decide
def op7096 : List WordIR.Op := [.band 7186 7191]
def bytes7096 : Bytes := ("    let r00001c18: u32 = r00001c12 & r00001c17;\n" : String).toByteArray.data.toList
theorem checked7096 : bytes7096=statementBytes 7192 (op7096.map lower) ∧ bytes7096.length=48 := by core033_kernel_decide
def op7097 : List WordIR.Op := [.bxor 7182 7192]
def bytes7097 : Bytes := ("    let r00001c19: u32 = r00001c0e ^ r00001c18;\n" : String).toByteArray.data.toList
theorem checked7097 : bytes7097=statementBytes 7193 (op7097.map lower) ∧ bytes7097.length=48 := by core033_kernel_decide
def op7098 : List WordIR.Op := [.shr 7193 31]
def bytes7098 : Bytes := ("    let r00001c1a: u32 = r00001c19 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7098 : bytes7098=statementBytes 7194 (op7098.map lower) ∧ bytes7098.length=54 := by core033_kernel_decide
def op7099 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7099 : Bytes := ("    let r00001c1b: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7099 : bytes7099=statementBytes 7195 (op7099.map lower) ∧ bytes7099.length=41 := by core033_kernel_decide
def op7100 : List WordIR.Op := [.bxor 7194 7195]
def bytes7100 : Bytes := ("    let r00001c1c: u32 = r00001c1a ^ r00001c1b;\n" : String).toByteArray.data.toList
theorem checked7100 : bytes7100=statementBytes 7196 (op7100.map lower) ∧ bytes7100.length=48 := by core033_kernel_decide
def op7101 : List WordIR.Op := [.shr 5511 8]
def bytes7101 : Bytes := ("    let r00001c1d: u32 = r00001587 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7101 : bytes7101=statementBytes 7197 (op7101.map lower) ∧ bytes7101.length=54 := by core033_kernel_decide
def op7102 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7102 : Bytes := ("    let r00001c1e: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7102 : bytes7102=statementBytes 7198 (op7102.map lower) ∧ bytes7102.length=41 := by core033_kernel_decide
def op7103 : List WordIR.Op := [.bnot 7198]
def bytes7103 : Bytes := ("    let r00001c1f: u32 = !r00001c1e;\n" : String).toByteArray.data.toList
theorem checked7103 : bytes7103=statementBytes 7199 (op7103.map lower) ∧ bytes7103.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7040,op7041,op7042,op7043,op7044,op7045,op7046,op7047,op7048,op7049,op7050,op7051,op7052,op7053,op7054,op7055,op7056,op7057,op7058,op7059,op7060,op7061,op7062,op7063,op7064,op7065,op7066,op7067,op7068,op7069,op7070,op7071,op7072,op7073,op7074,op7075,op7076,op7077,op7078,op7079,op7080,op7081,op7082,op7083,op7084,op7085,op7086,op7087,op7088,op7089,op7090,op7091,op7092,op7093,op7094,op7095,op7096,op7097,op7098,op7099,op7100,op7101,op7102,op7103]
def chunks : List Bytes := [bytes7040,bytes7041,bytes7042,bytes7043,bytes7044,bytes7045,bytes7046,bytes7047,bytes7048,bytes7049,bytes7050,bytes7051,bytes7052,bytes7053,bytes7054,bytes7055,bytes7056,bytes7057,bytes7058,bytes7059,bytes7060,bytes7061,bytes7062,bytes7063,bytes7064,bytes7065,bytes7066,bytes7067,bytes7068,bytes7069,bytes7070,bytes7071,bytes7072,bytes7073,bytes7074,bytes7075,bytes7076,bytes7077,bytes7078,bytes7079,bytes7080,bytes7081,bytes7082,bytes7083,bytes7084,bytes7085,bytes7086,bytes7087,bytes7088,bytes7089,bytes7090,bytes7091,bytes7092,bytes7093,bytes7094,bytes7095,bytes7096,bytes7097,bytes7098,bytes7099,bytes7100,bytes7101,bytes7102,bytes7103]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7136 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7040.1 (.cons _ _ _ _ _ checked7041.1 (.cons _ _ _ _ _ checked7042.1 (.cons _ _ _ _ _ checked7043.1 (.cons _ _ _ _ _ checked7044.1 (.cons _ _ _ _ _ checked7045.1 (.cons _ _ _ _ _ checked7046.1 (.cons _ _ _ _ _ checked7047.1 (.cons _ _ _ _ _ checked7048.1 (.cons _ _ _ _ _ checked7049.1 (.cons _ _ _ _ _ checked7050.1 (.cons _ _ _ _ _ checked7051.1 (.cons _ _ _ _ _ checked7052.1 (.cons _ _ _ _ _ checked7053.1 (.cons _ _ _ _ _ checked7054.1 (.cons _ _ _ _ _ checked7055.1 (.cons _ _ _ _ _ checked7056.1 (.cons _ _ _ _ _ checked7057.1 (.cons _ _ _ _ _ checked7058.1 (.cons _ _ _ _ _ checked7059.1 (.cons _ _ _ _ _ checked7060.1 (.cons _ _ _ _ _ checked7061.1 (.cons _ _ _ _ _ checked7062.1 (.cons _ _ _ _ _ checked7063.1 (.cons _ _ _ _ _ checked7064.1 (.cons _ _ _ _ _ checked7065.1 (.cons _ _ _ _ _ checked7066.1 (.cons _ _ _ _ _ checked7067.1 (.cons _ _ _ _ _ checked7068.1 (.cons _ _ _ _ _ checked7069.1 (.cons _ _ _ _ _ checked7070.1 (.cons _ _ _ _ _ checked7071.1 (.cons _ _ _ _ _ checked7072.1 (.cons _ _ _ _ _ checked7073.1 (.cons _ _ _ _ _ checked7074.1 (.cons _ _ _ _ _ checked7075.1 (.cons _ _ _ _ _ checked7076.1 (.cons _ _ _ _ _ checked7077.1 (.cons _ _ _ _ _ checked7078.1 (.cons _ _ _ _ _ checked7079.1 (.cons _ _ _ _ _ checked7080.1 (.cons _ _ _ _ _ checked7081.1 (.cons _ _ _ _ _ checked7082.1 (.cons _ _ _ _ _ checked7083.1 (.cons _ _ _ _ _ checked7084.1 (.cons _ _ _ _ _ checked7085.1 (.cons _ _ _ _ _ checked7086.1 (.cons _ _ _ _ _ checked7087.1 (.cons _ _ _ _ _ checked7088.1 (.cons _ _ _ _ _ checked7089.1 (.cons _ _ _ _ _ checked7090.1 (.cons _ _ _ _ _ checked7091.1 (.cons _ _ _ _ _ checked7092.1 (.cons _ _ _ _ _ checked7093.1 (.cons _ _ _ _ _ checked7094.1 (.cons _ _ _ _ _ checked7095.1 (.cons _ _ _ _ _ checked7096.1 (.cons _ _ _ _ _ checked7097.1 (.cons _ _ _ _ _ checked7098.1 (.cons _ _ _ _ _ checked7099.1 (.cons _ _ _ _ _ checked7100.1 (.cons _ _ _ _ _ checked7101.1 (.cons _ _ _ _ _ checked7102.1 (.cons _ _ _ _ _ checked7103.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7136 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2952 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7040.2,checked7041.2,checked7042.2,checked7043.2,checked7044.2,checked7045.2,checked7046.2,checked7047.2,checked7048.2,checked7049.2,checked7050.2,checked7051.2,checked7052.2,checked7053.2,checked7054.2,checked7055.2,checked7056.2,checked7057.2,checked7058.2,checked7059.2,checked7060.2,checked7061.2,checked7062.2,checked7063.2,checked7064.2,checked7065.2,checked7066.2,checked7067.2,checked7068.2,checked7069.2,checked7070.2,checked7071.2,checked7072.2,checked7073.2,checked7074.2,checked7075.2,checked7076.2,checked7077.2,checked7078.2,checked7079.2,checked7080.2,checked7081.2,checked7082.2,checked7083.2,checked7084.2,checked7085.2,checked7086.2,checked7087.2,checked7088.2,checked7089.2,checked7090.2,checked7091.2,checked7092.2,checked7093.2,checked7094.2,checked7095.2,checked7096.2,checked7097.2,checked7098.2,checked7099.2,checked7100.2,checked7101.2,checked7102.2,checked7103.2]
  decide
end ArtifactPairedPathRoundGroup110
