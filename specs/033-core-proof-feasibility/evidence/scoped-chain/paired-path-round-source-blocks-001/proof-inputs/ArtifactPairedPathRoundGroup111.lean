import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup111
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op7104 : List WordIR.Op := [.band 7197 7199]
def bytes7104 : Bytes := ("    let r00001c20: u32 = r00001c1d & r00001c1f;\n" : String).toByteArray.data.toList
theorem checked7104 : bytes7104=statementBytes 7200 (op7104.map lower) ∧ bytes7104.length=48 := by core033_kernel_decide
def op7105 : List WordIR.Op := [.shr 5511 8]
def bytes7105 : Bytes := ("    let r00001c21: u32 = r00001587 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7105 : bytes7105=statementBytes 7201 (op7105.map lower) ∧ bytes7105.length=54 := by core033_kernel_decide
def op7106 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7106 : Bytes := ("    let r00001c22: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7106 : bytes7106=statementBytes 7202 (op7106.map lower) ∧ bytes7106.length=41 := by core033_kernel_decide
def op7107 : List WordIR.Op := [.bnot 7202]
def bytes7107 : Bytes := ("    let r00001c23: u32 = !r00001c22;\n" : String).toByteArray.data.toList
theorem checked7107 : bytes7107=statementBytes 7203 (op7107.map lower) ∧ bytes7107.length=37 := by core033_kernel_decide
def op7108 : List WordIR.Op := [.bxor 7201 7203]
def bytes7108 : Bytes := ("    let r00001c24: u32 = r00001c21 ^ r00001c23;\n" : String).toByteArray.data.toList
theorem checked7108 : bytes7108=statementBytes 7204 (op7108.map lower) ∧ bytes7108.length=48 := by core033_kernel_decide
def op7109 : List WordIR.Op := [.shr 5511 8]
def bytes7109 : Bytes := ("    let r00001c25: u32 = r00001587 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7109 : bytes7109=statementBytes 7205 (op7109.map lower) ∧ bytes7109.length=54 := by core033_kernel_decide
def op7110 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7110 : Bytes := ("    let r00001c26: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7110 : bytes7110=statementBytes 7206 (op7110.map lower) ∧ bytes7110.length=41 := by core033_kernel_decide
def op7111 : List WordIR.Op := [.bnot 7206]
def bytes7111 : Bytes := ("    let r00001c27: u32 = !r00001c26;\n" : String).toByteArray.data.toList
theorem checked7111 : bytes7111=statementBytes 7207 (op7111.map lower) ∧ bytes7111.length=37 := by core033_kernel_decide
def op7112 : List WordIR.Op := [.badd 7205 7207]
def bytes7112 : Bytes := ("    let r00001c28: u32 = r00001c25.wrapping_add(r00001c27);\n" : String).toByteArray.data.toList
theorem checked7112 : bytes7112=statementBytes 7208 (op7112.map lower) ∧ bytes7112.length=60 := by core033_kernel_decide
def op7113 : List WordIR.Op := [.bnot 7208]
def bytes7113 : Bytes := ("    let r00001c29: u32 = !r00001c28;\n" : String).toByteArray.data.toList
theorem checked7113 : bytes7113=statementBytes 7209 (op7113.map lower) ∧ bytes7113.length=37 := by core033_kernel_decide
def op7114 : List WordIR.Op := [.band 7204 7209]
def bytes7114 : Bytes := ("    let r00001c2a: u32 = r00001c24 & r00001c29;\n" : String).toByteArray.data.toList
theorem checked7114 : bytes7114=statementBytes 7210 (op7114.map lower) ∧ bytes7114.length=48 := by core033_kernel_decide
def op7115 : List WordIR.Op := [.bxor 7200 7210]
def bytes7115 : Bytes := ("    let r00001c2b: u32 = r00001c20 ^ r00001c2a;\n" : String).toByteArray.data.toList
theorem checked7115 : bytes7115=statementBytes 7211 (op7115.map lower) ∧ bytes7115.length=48 := by core033_kernel_decide
def op7116 : List WordIR.Op := [.shr 7211 31]
def bytes7116 : Bytes := ("    let r00001c2c: u32 = r00001c2b >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7116 : bytes7116=statementBytes 7212 (op7116.map lower) ∧ bytes7116.length=54 := by core033_kernel_decide
def op7117 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7117 : Bytes := ("    let r00001c2d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7117 : bytes7117=statementBytes 7213 (op7117.map lower) ∧ bytes7117.length=41 := by core033_kernel_decide
def op7118 : List WordIR.Op := [.bxor 7212 7213]
def bytes7118 : Bytes := ("    let r00001c2e: u32 = r00001c2c ^ r00001c2d;\n" : String).toByteArray.data.toList
theorem checked7118 : bytes7118=statementBytes 7214 (op7118.map lower) ∧ bytes7118.length=48 := by core033_kernel_decide
def op7119 : List WordIR.Op := [.shr 5564 8]
def bytes7119 : Bytes := ("    let r00001c2f: u32 = r000015bc >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7119 : bytes7119=statementBytes 7215 (op7119.map lower) ∧ bytes7119.length=54 := by core033_kernel_decide
def op7120 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7120 : Bytes := ("    let r00001c30: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7120 : bytes7120=statementBytes 7216 (op7120.map lower) ∧ bytes7120.length=41 := by core033_kernel_decide
def op7121 : List WordIR.Op := [.bnot 7216]
def bytes7121 : Bytes := ("    let r00001c31: u32 = !r00001c30;\n" : String).toByteArray.data.toList
theorem checked7121 : bytes7121=statementBytes 7217 (op7121.map lower) ∧ bytes7121.length=37 := by core033_kernel_decide
def op7122 : List WordIR.Op := [.band 7215 7217]
def bytes7122 : Bytes := ("    let r00001c32: u32 = r00001c2f & r00001c31;\n" : String).toByteArray.data.toList
theorem checked7122 : bytes7122=statementBytes 7218 (op7122.map lower) ∧ bytes7122.length=48 := by core033_kernel_decide
def op7123 : List WordIR.Op := [.shr 5564 8]
def bytes7123 : Bytes := ("    let r00001c33: u32 = r000015bc >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7123 : bytes7123=statementBytes 7219 (op7123.map lower) ∧ bytes7123.length=54 := by core033_kernel_decide
def op7124 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7124 : Bytes := ("    let r00001c34: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7124 : bytes7124=statementBytes 7220 (op7124.map lower) ∧ bytes7124.length=41 := by core033_kernel_decide
def op7125 : List WordIR.Op := [.bnot 7220]
def bytes7125 : Bytes := ("    let r00001c35: u32 = !r00001c34;\n" : String).toByteArray.data.toList
theorem checked7125 : bytes7125=statementBytes 7221 (op7125.map lower) ∧ bytes7125.length=37 := by core033_kernel_decide
def op7126 : List WordIR.Op := [.bxor 7219 7221]
def bytes7126 : Bytes := ("    let r00001c36: u32 = r00001c33 ^ r00001c35;\n" : String).toByteArray.data.toList
theorem checked7126 : bytes7126=statementBytes 7222 (op7126.map lower) ∧ bytes7126.length=48 := by core033_kernel_decide
def op7127 : List WordIR.Op := [.shr 5564 8]
def bytes7127 : Bytes := ("    let r00001c37: u32 = r000015bc >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7127 : bytes7127=statementBytes 7223 (op7127.map lower) ∧ bytes7127.length=54 := by core033_kernel_decide
def op7128 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7128 : Bytes := ("    let r00001c38: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7128 : bytes7128=statementBytes 7224 (op7128.map lower) ∧ bytes7128.length=41 := by core033_kernel_decide
def op7129 : List WordIR.Op := [.bnot 7224]
def bytes7129 : Bytes := ("    let r00001c39: u32 = !r00001c38;\n" : String).toByteArray.data.toList
theorem checked7129 : bytes7129=statementBytes 7225 (op7129.map lower) ∧ bytes7129.length=37 := by core033_kernel_decide
def op7130 : List WordIR.Op := [.badd 7223 7225]
def bytes7130 : Bytes := ("    let r00001c3a: u32 = r00001c37.wrapping_add(r00001c39);\n" : String).toByteArray.data.toList
theorem checked7130 : bytes7130=statementBytes 7226 (op7130.map lower) ∧ bytes7130.length=60 := by core033_kernel_decide
def op7131 : List WordIR.Op := [.bnot 7226]
def bytes7131 : Bytes := ("    let r00001c3b: u32 = !r00001c3a;\n" : String).toByteArray.data.toList
theorem checked7131 : bytes7131=statementBytes 7227 (op7131.map lower) ∧ bytes7131.length=37 := by core033_kernel_decide
def op7132 : List WordIR.Op := [.band 7222 7227]
def bytes7132 : Bytes := ("    let r00001c3c: u32 = r00001c36 & r00001c3b;\n" : String).toByteArray.data.toList
theorem checked7132 : bytes7132=statementBytes 7228 (op7132.map lower) ∧ bytes7132.length=48 := by core033_kernel_decide
def op7133 : List WordIR.Op := [.bxor 7218 7228]
def bytes7133 : Bytes := ("    let r00001c3d: u32 = r00001c32 ^ r00001c3c;\n" : String).toByteArray.data.toList
theorem checked7133 : bytes7133=statementBytes 7229 (op7133.map lower) ∧ bytes7133.length=48 := by core033_kernel_decide
def op7134 : List WordIR.Op := [.shr 7229 31]
def bytes7134 : Bytes := ("    let r00001c3e: u32 = r00001c3d >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7134 : bytes7134=statementBytes 7230 (op7134.map lower) ∧ bytes7134.length=54 := by core033_kernel_decide
def op7135 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7135 : Bytes := ("    let r00001c3f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7135 : bytes7135=statementBytes 7231 (op7135.map lower) ∧ bytes7135.length=41 := by core033_kernel_decide
def op7136 : List WordIR.Op := [.bxor 7230 7231]
def bytes7136 : Bytes := ("    let r00001c40: u32 = r00001c3e ^ r00001c3f;\n" : String).toByteArray.data.toList
theorem checked7136 : bytes7136=statementBytes 7232 (op7136.map lower) ∧ bytes7136.length=48 := by core033_kernel_decide
def op7137 : List WordIR.Op := [.shr 5617 8]
def bytes7137 : Bytes := ("    let r00001c41: u32 = r000015f1 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7137 : bytes7137=statementBytes 7233 (op7137.map lower) ∧ bytes7137.length=54 := by core033_kernel_decide
def op7138 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7138 : Bytes := ("    let r00001c42: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7138 : bytes7138=statementBytes 7234 (op7138.map lower) ∧ bytes7138.length=41 := by core033_kernel_decide
def op7139 : List WordIR.Op := [.bnot 7234]
def bytes7139 : Bytes := ("    let r00001c43: u32 = !r00001c42;\n" : String).toByteArray.data.toList
theorem checked7139 : bytes7139=statementBytes 7235 (op7139.map lower) ∧ bytes7139.length=37 := by core033_kernel_decide
def op7140 : List WordIR.Op := [.band 7233 7235]
def bytes7140 : Bytes := ("    let r00001c44: u32 = r00001c41 & r00001c43;\n" : String).toByteArray.data.toList
theorem checked7140 : bytes7140=statementBytes 7236 (op7140.map lower) ∧ bytes7140.length=48 := by core033_kernel_decide
def op7141 : List WordIR.Op := [.shr 5617 8]
def bytes7141 : Bytes := ("    let r00001c45: u32 = r000015f1 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7141 : bytes7141=statementBytes 7237 (op7141.map lower) ∧ bytes7141.length=54 := by core033_kernel_decide
def op7142 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7142 : Bytes := ("    let r00001c46: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7142 : bytes7142=statementBytes 7238 (op7142.map lower) ∧ bytes7142.length=41 := by core033_kernel_decide
def op7143 : List WordIR.Op := [.bnot 7238]
def bytes7143 : Bytes := ("    let r00001c47: u32 = !r00001c46;\n" : String).toByteArray.data.toList
theorem checked7143 : bytes7143=statementBytes 7239 (op7143.map lower) ∧ bytes7143.length=37 := by core033_kernel_decide
def op7144 : List WordIR.Op := [.bxor 7237 7239]
def bytes7144 : Bytes := ("    let r00001c48: u32 = r00001c45 ^ r00001c47;\n" : String).toByteArray.data.toList
theorem checked7144 : bytes7144=statementBytes 7240 (op7144.map lower) ∧ bytes7144.length=48 := by core033_kernel_decide
def op7145 : List WordIR.Op := [.shr 5617 8]
def bytes7145 : Bytes := ("    let r00001c49: u32 = r000015f1 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7145 : bytes7145=statementBytes 7241 (op7145.map lower) ∧ bytes7145.length=54 := by core033_kernel_decide
def op7146 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7146 : Bytes := ("    let r00001c4a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7146 : bytes7146=statementBytes 7242 (op7146.map lower) ∧ bytes7146.length=41 := by core033_kernel_decide
def op7147 : List WordIR.Op := [.bnot 7242]
def bytes7147 : Bytes := ("    let r00001c4b: u32 = !r00001c4a;\n" : String).toByteArray.data.toList
theorem checked7147 : bytes7147=statementBytes 7243 (op7147.map lower) ∧ bytes7147.length=37 := by core033_kernel_decide
def op7148 : List WordIR.Op := [.badd 7241 7243]
def bytes7148 : Bytes := ("    let r00001c4c: u32 = r00001c49.wrapping_add(r00001c4b);\n" : String).toByteArray.data.toList
theorem checked7148 : bytes7148=statementBytes 7244 (op7148.map lower) ∧ bytes7148.length=60 := by core033_kernel_decide
def op7149 : List WordIR.Op := [.bnot 7244]
def bytes7149 : Bytes := ("    let r00001c4d: u32 = !r00001c4c;\n" : String).toByteArray.data.toList
theorem checked7149 : bytes7149=statementBytes 7245 (op7149.map lower) ∧ bytes7149.length=37 := by core033_kernel_decide
def op7150 : List WordIR.Op := [.band 7240 7245]
def bytes7150 : Bytes := ("    let r00001c4e: u32 = r00001c48 & r00001c4d;\n" : String).toByteArray.data.toList
theorem checked7150 : bytes7150=statementBytes 7246 (op7150.map lower) ∧ bytes7150.length=48 := by core033_kernel_decide
def op7151 : List WordIR.Op := [.bxor 7236 7246]
def bytes7151 : Bytes := ("    let r00001c4f: u32 = r00001c44 ^ r00001c4e;\n" : String).toByteArray.data.toList
theorem checked7151 : bytes7151=statementBytes 7247 (op7151.map lower) ∧ bytes7151.length=48 := by core033_kernel_decide
def op7152 : List WordIR.Op := [.shr 7247 31]
def bytes7152 : Bytes := ("    let r00001c50: u32 = r00001c4f >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked7152 : bytes7152=statementBytes 7248 (op7152.map lower) ∧ bytes7152.length=54 := by core033_kernel_decide
def op7153 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes7153 : Bytes := ("    let r00001c51: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked7153 : bytes7153=statementBytes 7249 (op7153.map lower) ∧ bytes7153.length=41 := by core033_kernel_decide
def op7154 : List WordIR.Op := [.bxor 7248 7249]
def bytes7154 : Bytes := ("    let r00001c52: u32 = r00001c50 ^ r00001c51;\n" : String).toByteArray.data.toList
theorem checked7154 : bytes7154=statementBytes 7250 (op7154.map lower) ∧ bytes7154.length=48 := by core033_kernel_decide
def op7155 : List WordIR.Op := [.shr 5670 8]
def bytes7155 : Bytes := ("    let r00001c53: u32 = r00001626 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7155 : bytes7155=statementBytes 7251 (op7155.map lower) ∧ bytes7155.length=54 := by core033_kernel_decide
def op7156 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7156 : Bytes := ("    let r00001c54: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7156 : bytes7156=statementBytes 7252 (op7156.map lower) ∧ bytes7156.length=41 := by core033_kernel_decide
def op7157 : List WordIR.Op := [.bnot 7252]
def bytes7157 : Bytes := ("    let r00001c55: u32 = !r00001c54;\n" : String).toByteArray.data.toList
theorem checked7157 : bytes7157=statementBytes 7253 (op7157.map lower) ∧ bytes7157.length=37 := by core033_kernel_decide
def op7158 : List WordIR.Op := [.band 7251 7253]
def bytes7158 : Bytes := ("    let r00001c56: u32 = r00001c53 & r00001c55;\n" : String).toByteArray.data.toList
theorem checked7158 : bytes7158=statementBytes 7254 (op7158.map lower) ∧ bytes7158.length=48 := by core033_kernel_decide
def op7159 : List WordIR.Op := [.shr 5670 8]
def bytes7159 : Bytes := ("    let r00001c57: u32 = r00001626 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7159 : bytes7159=statementBytes 7255 (op7159.map lower) ∧ bytes7159.length=54 := by core033_kernel_decide
def op7160 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7160 : Bytes := ("    let r00001c58: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7160 : bytes7160=statementBytes 7256 (op7160.map lower) ∧ bytes7160.length=41 := by core033_kernel_decide
def op7161 : List WordIR.Op := [.bnot 7256]
def bytes7161 : Bytes := ("    let r00001c59: u32 = !r00001c58;\n" : String).toByteArray.data.toList
theorem checked7161 : bytes7161=statementBytes 7257 (op7161.map lower) ∧ bytes7161.length=37 := by core033_kernel_decide
def op7162 : List WordIR.Op := [.bxor 7255 7257]
def bytes7162 : Bytes := ("    let r00001c5a: u32 = r00001c57 ^ r00001c59;\n" : String).toByteArray.data.toList
theorem checked7162 : bytes7162=statementBytes 7258 (op7162.map lower) ∧ bytes7162.length=48 := by core033_kernel_decide
def op7163 : List WordIR.Op := [.shr 5670 8]
def bytes7163 : Bytes := ("    let r00001c5b: u32 = r00001626 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked7163 : bytes7163=statementBytes 7259 (op7163.map lower) ∧ bytes7163.length=54 := by core033_kernel_decide
def op7164 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes7164 : Bytes := ("    let r00001c5c: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked7164 : bytes7164=statementBytes 7260 (op7164.map lower) ∧ bytes7164.length=41 := by core033_kernel_decide
def op7165 : List WordIR.Op := [.bnot 7260]
def bytes7165 : Bytes := ("    let r00001c5d: u32 = !r00001c5c;\n" : String).toByteArray.data.toList
theorem checked7165 : bytes7165=statementBytes 7261 (op7165.map lower) ∧ bytes7165.length=37 := by core033_kernel_decide
def op7166 : List WordIR.Op := [.badd 7259 7261]
def bytes7166 : Bytes := ("    let r00001c5e: u32 = r00001c5b.wrapping_add(r00001c5d);\n" : String).toByteArray.data.toList
theorem checked7166 : bytes7166=statementBytes 7262 (op7166.map lower) ∧ bytes7166.length=60 := by core033_kernel_decide
def op7167 : List WordIR.Op := [.bnot 7262]
def bytes7167 : Bytes := ("    let r00001c5f: u32 = !r00001c5e;\n" : String).toByteArray.data.toList
theorem checked7167 : bytes7167=statementBytes 7263 (op7167.map lower) ∧ bytes7167.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op7104,op7105,op7106,op7107,op7108,op7109,op7110,op7111,op7112,op7113,op7114,op7115,op7116,op7117,op7118,op7119,op7120,op7121,op7122,op7123,op7124,op7125,op7126,op7127,op7128,op7129,op7130,op7131,op7132,op7133,op7134,op7135,op7136,op7137,op7138,op7139,op7140,op7141,op7142,op7143,op7144,op7145,op7146,op7147,op7148,op7149,op7150,op7151,op7152,op7153,op7154,op7155,op7156,op7157,op7158,op7159,op7160,op7161,op7162,op7163,op7164,op7165,op7166,op7167]
def chunks : List Bytes := [bytes7104,bytes7105,bytes7106,bytes7107,bytes7108,bytes7109,bytes7110,bytes7111,bytes7112,bytes7113,bytes7114,bytes7115,bytes7116,bytes7117,bytes7118,bytes7119,bytes7120,bytes7121,bytes7122,bytes7123,bytes7124,bytes7125,bytes7126,bytes7127,bytes7128,bytes7129,bytes7130,bytes7131,bytes7132,bytes7133,bytes7134,bytes7135,bytes7136,bytes7137,bytes7138,bytes7139,bytes7140,bytes7141,bytes7142,bytes7143,bytes7144,bytes7145,bytes7146,bytes7147,bytes7148,bytes7149,bytes7150,bytes7151,bytes7152,bytes7153,bytes7154,bytes7155,bytes7156,bytes7157,bytes7158,bytes7159,bytes7160,bytes7161,bytes7162,bytes7163,bytes7164,bytes7165,bytes7166,bytes7167]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 7200 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked7104.1 (.cons _ _ _ _ _ checked7105.1 (.cons _ _ _ _ _ checked7106.1 (.cons _ _ _ _ _ checked7107.1 (.cons _ _ _ _ _ checked7108.1 (.cons _ _ _ _ _ checked7109.1 (.cons _ _ _ _ _ checked7110.1 (.cons _ _ _ _ _ checked7111.1 (.cons _ _ _ _ _ checked7112.1 (.cons _ _ _ _ _ checked7113.1 (.cons _ _ _ _ _ checked7114.1 (.cons _ _ _ _ _ checked7115.1 (.cons _ _ _ _ _ checked7116.1 (.cons _ _ _ _ _ checked7117.1 (.cons _ _ _ _ _ checked7118.1 (.cons _ _ _ _ _ checked7119.1 (.cons _ _ _ _ _ checked7120.1 (.cons _ _ _ _ _ checked7121.1 (.cons _ _ _ _ _ checked7122.1 (.cons _ _ _ _ _ checked7123.1 (.cons _ _ _ _ _ checked7124.1 (.cons _ _ _ _ _ checked7125.1 (.cons _ _ _ _ _ checked7126.1 (.cons _ _ _ _ _ checked7127.1 (.cons _ _ _ _ _ checked7128.1 (.cons _ _ _ _ _ checked7129.1 (.cons _ _ _ _ _ checked7130.1 (.cons _ _ _ _ _ checked7131.1 (.cons _ _ _ _ _ checked7132.1 (.cons _ _ _ _ _ checked7133.1 (.cons _ _ _ _ _ checked7134.1 (.cons _ _ _ _ _ checked7135.1 (.cons _ _ _ _ _ checked7136.1 (.cons _ _ _ _ _ checked7137.1 (.cons _ _ _ _ _ checked7138.1 (.cons _ _ _ _ _ checked7139.1 (.cons _ _ _ _ _ checked7140.1 (.cons _ _ _ _ _ checked7141.1 (.cons _ _ _ _ _ checked7142.1 (.cons _ _ _ _ _ checked7143.1 (.cons _ _ _ _ _ checked7144.1 (.cons _ _ _ _ _ checked7145.1 (.cons _ _ _ _ _ checked7146.1 (.cons _ _ _ _ _ checked7147.1 (.cons _ _ _ _ _ checked7148.1 (.cons _ _ _ _ _ checked7149.1 (.cons _ _ _ _ _ checked7150.1 (.cons _ _ _ _ _ checked7151.1 (.cons _ _ _ _ _ checked7152.1 (.cons _ _ _ _ _ checked7153.1 (.cons _ _ _ _ _ checked7154.1 (.cons _ _ _ _ _ checked7155.1 (.cons _ _ _ _ _ checked7156.1 (.cons _ _ _ _ _ checked7157.1 (.cons _ _ _ _ _ checked7158.1 (.cons _ _ _ _ _ checked7159.1 (.cons _ _ _ _ _ checked7160.1 (.cons _ _ _ _ _ checked7161.1 (.cons _ _ _ _ _ checked7162.1 (.cons _ _ _ _ _ checked7163.1 (.cons _ _ _ _ _ checked7164.1 (.cons _ _ _ _ _ checked7165.1 (.cons _ _ _ _ _ checked7166.1 (.cons _ _ _ _ _ checked7167.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 7200 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2941 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked7104.2,checked7105.2,checked7106.2,checked7107.2,checked7108.2,checked7109.2,checked7110.2,checked7111.2,checked7112.2,checked7113.2,checked7114.2,checked7115.2,checked7116.2,checked7117.2,checked7118.2,checked7119.2,checked7120.2,checked7121.2,checked7122.2,checked7123.2,checked7124.2,checked7125.2,checked7126.2,checked7127.2,checked7128.2,checked7129.2,checked7130.2,checked7131.2,checked7132.2,checked7133.2,checked7134.2,checked7135.2,checked7136.2,checked7137.2,checked7138.2,checked7139.2,checked7140.2,checked7141.2,checked7142.2,checked7143.2,checked7144.2,checked7145.2,checked7146.2,checked7147.2,checked7148.2,checked7149.2,checked7150.2,checked7151.2,checked7152.2,checked7153.2,checked7154.2,checked7155.2,checked7156.2,checked7157.2,checked7158.2,checked7159.2,checked7160.2,checked7161.2,checked7162.2,checked7163.2,checked7164.2,checked7165.2,checked7166.2,checked7167.2]
  decide
end ArtifactPairedPathRoundGroup111
