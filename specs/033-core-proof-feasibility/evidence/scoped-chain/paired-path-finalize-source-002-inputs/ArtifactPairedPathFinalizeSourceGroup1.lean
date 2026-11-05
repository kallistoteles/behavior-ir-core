import ActualPairedPathFinalizeIR
import Core033.SourceLiteralBytes
import Core033.KernelDecide
namespace ArtifactPairedPathFinalizeSourceGroup1
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op64 : List WordIR.Op := [.band 157 159]
def bytes64 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000a0: u32 = r0000009d & r0000009f;\n" : String)
theorem checked64 : bytes64=statementBytes 160 (op64.map lower) ∧ bytes64.length=48 := by core033_kernel_decide
def op65 : List WordIR.Op := [.bxor 56 80]
def bytes65 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000a1: u32 = r00000038 ^ r00000050;\n" : String)
theorem checked65 : bytes65=statementBytes 161 (op65.map lower) ∧ bytes65.length=48 := by core033_kernel_decide
def op66 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes66 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000a2: u32 = 0x00000000_u32;\n" : String)
theorem checked66 : bytes66=statementBytes 162 (op66.map lower) ∧ bytes66.length=41 := by core033_kernel_decide
def op67 : List WordIR.Op := [.bnot 162]
def bytes67 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000a3: u32 = !r000000a2;\n" : String)
theorem checked67 : bytes67=statementBytes 163 (op67.map lower) ∧ bytes67.length=37 := by core033_kernel_decide
def op68 : List WordIR.Op := [.bxor 161 163]
def bytes68 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000a4: u32 = r000000a1 ^ r000000a3;\n" : String)
theorem checked68 : bytes68=statementBytes 164 (op68.map lower) ∧ bytes68.length=48 := by core033_kernel_decide
def op69 : List WordIR.Op := [.bxor 56 80]
def bytes69 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000a5: u32 = r00000038 ^ r00000050;\n" : String)
theorem checked69 : bytes69=statementBytes 165 (op69.map lower) ∧ bytes69.length=48 := by core033_kernel_decide
def op70 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes70 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000a6: u32 = 0x00000000_u32;\n" : String)
theorem checked70 : bytes70=statementBytes 166 (op70.map lower) ∧ bytes70.length=41 := by core033_kernel_decide
def op71 : List WordIR.Op := [.bnot 166]
def bytes71 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000a7: u32 = !r000000a6;\n" : String)
theorem checked71 : bytes71=statementBytes 167 (op71.map lower) ∧ bytes71.length=37 := by core033_kernel_decide
def op72 : List WordIR.Op := [.badd 165 167]
def bytes72 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000a8: u32 = r000000a5.wrapping_add(r000000a7);\n" : String)
theorem checked72 : bytes72=statementBytes 168 (op72.map lower) ∧ bytes72.length=60 := by core033_kernel_decide
def op73 : List WordIR.Op := [.bnot 168]
def bytes73 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000a9: u32 = !r000000a8;\n" : String)
theorem checked73 : bytes73=statementBytes 169 (op73.map lower) ∧ bytes73.length=37 := by core033_kernel_decide
def op74 : List WordIR.Op := [.band 164 169]
def bytes74 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000aa: u32 = r000000a4 & r000000a9;\n" : String)
theorem checked74 : bytes74=statementBytes 170 (op74.map lower) ∧ bytes74.length=48 := by core033_kernel_decide
def op75 : List WordIR.Op := [.bxor 160 170]
def bytes75 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ab: u32 = r000000a0 ^ r000000aa;\n" : String)
theorem checked75 : bytes75=statementBytes 171 (op75.map lower) ∧ bytes75.length=48 := by core033_kernel_decide
def op76 : List WordIR.Op := [.shr 171 31]
def bytes76 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ac: u32 = r000000ab >> 0x0000001f_u32;\n" : String)
theorem checked76 : bytes76=statementBytes 172 (op76.map lower) ∧ bytes76.length=54 := by core033_kernel_decide
def op77 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes77 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ad: u32 = 0x00000001_u32;\n" : String)
theorem checked77 : bytes77=statementBytes 173 (op77.map lower) ∧ bytes77.length=41 := by core033_kernel_decide
def op78 : List WordIR.Op := [.bxor 172 173]
def bytes78 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ae: u32 = r000000ac ^ r000000ad;\n" : String)
theorem checked78 : bytes78=statementBytes 174 (op78.map lower) ∧ bytes78.length=48 := by core033_kernel_decide
def op79 : List WordIR.Op := [.bxor 57 81]
def bytes79 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000af: u32 = r00000039 ^ r00000051;\n" : String)
theorem checked79 : bytes79=statementBytes 175 (op79.map lower) ∧ bytes79.length=48 := by core033_kernel_decide
def op80 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes80 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b0: u32 = 0x00000000_u32;\n" : String)
theorem checked80 : bytes80=statementBytes 176 (op80.map lower) ∧ bytes80.length=41 := by core033_kernel_decide
def op81 : List WordIR.Op := [.bnot 176]
def bytes81 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b1: u32 = !r000000b0;\n" : String)
theorem checked81 : bytes81=statementBytes 177 (op81.map lower) ∧ bytes81.length=37 := by core033_kernel_decide
def op82 : List WordIR.Op := [.band 175 177]
def bytes82 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b2: u32 = r000000af & r000000b1;\n" : String)
theorem checked82 : bytes82=statementBytes 178 (op82.map lower) ∧ bytes82.length=48 := by core033_kernel_decide
def op83 : List WordIR.Op := [.bxor 57 81]
def bytes83 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b3: u32 = r00000039 ^ r00000051;\n" : String)
theorem checked83 : bytes83=statementBytes 179 (op83.map lower) ∧ bytes83.length=48 := by core033_kernel_decide
def op84 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes84 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b4: u32 = 0x00000000_u32;\n" : String)
theorem checked84 : bytes84=statementBytes 180 (op84.map lower) ∧ bytes84.length=41 := by core033_kernel_decide
def op85 : List WordIR.Op := [.bnot 180]
def bytes85 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b5: u32 = !r000000b4;\n" : String)
theorem checked85 : bytes85=statementBytes 181 (op85.map lower) ∧ bytes85.length=37 := by core033_kernel_decide
def op86 : List WordIR.Op := [.bxor 179 181]
def bytes86 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b6: u32 = r000000b3 ^ r000000b5;\n" : String)
theorem checked86 : bytes86=statementBytes 182 (op86.map lower) ∧ bytes86.length=48 := by core033_kernel_decide
def op87 : List WordIR.Op := [.bxor 57 81]
def bytes87 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b7: u32 = r00000039 ^ r00000051;\n" : String)
theorem checked87 : bytes87=statementBytes 183 (op87.map lower) ∧ bytes87.length=48 := by core033_kernel_decide
def op88 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes88 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b8: u32 = 0x00000000_u32;\n" : String)
theorem checked88 : bytes88=statementBytes 184 (op88.map lower) ∧ bytes88.length=41 := by core033_kernel_decide
def op89 : List WordIR.Op := [.bnot 184]
def bytes89 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000b9: u32 = !r000000b8;\n" : String)
theorem checked89 : bytes89=statementBytes 185 (op89.map lower) ∧ bytes89.length=37 := by core033_kernel_decide
def op90 : List WordIR.Op := [.badd 183 185]
def bytes90 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ba: u32 = r000000b7.wrapping_add(r000000b9);\n" : String)
theorem checked90 : bytes90=statementBytes 186 (op90.map lower) ∧ bytes90.length=60 := by core033_kernel_decide
def op91 : List WordIR.Op := [.bnot 186]
def bytes91 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000bb: u32 = !r000000ba;\n" : String)
theorem checked91 : bytes91=statementBytes 187 (op91.map lower) ∧ bytes91.length=37 := by core033_kernel_decide
def op92 : List WordIR.Op := [.band 182 187]
def bytes92 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000bc: u32 = r000000b6 & r000000bb;\n" : String)
theorem checked92 : bytes92=statementBytes 188 (op92.map lower) ∧ bytes92.length=48 := by core033_kernel_decide
def op93 : List WordIR.Op := [.bxor 178 188]
def bytes93 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000bd: u32 = r000000b2 ^ r000000bc;\n" : String)
theorem checked93 : bytes93=statementBytes 189 (op93.map lower) ∧ bytes93.length=48 := by core033_kernel_decide
def op94 : List WordIR.Op := [.shr 189 31]
def bytes94 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000be: u32 = r000000bd >> 0x0000001f_u32;\n" : String)
theorem checked94 : bytes94=statementBytes 190 (op94.map lower) ∧ bytes94.length=54 := by core033_kernel_decide
def op95 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes95 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000bf: u32 = 0x00000001_u32;\n" : String)
theorem checked95 : bytes95=statementBytes 191 (op95.map lower) ∧ bytes95.length=41 := by core033_kernel_decide
def op96 : List WordIR.Op := [.bxor 190 191]
def bytes96 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c0: u32 = r000000be ^ r000000bf;\n" : String)
theorem checked96 : bytes96=statementBytes 192 (op96.map lower) ∧ bytes96.length=48 := by core033_kernel_decide
def op97 : List WordIR.Op := [.bxor 58 82]
def bytes97 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c1: u32 = r0000003a ^ r00000052;\n" : String)
theorem checked97 : bytes97=statementBytes 193 (op97.map lower) ∧ bytes97.length=48 := by core033_kernel_decide
def op98 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes98 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c2: u32 = 0x00000000_u32;\n" : String)
theorem checked98 : bytes98=statementBytes 194 (op98.map lower) ∧ bytes98.length=41 := by core033_kernel_decide
def op99 : List WordIR.Op := [.bnot 194]
def bytes99 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c3: u32 = !r000000c2;\n" : String)
theorem checked99 : bytes99=statementBytes 195 (op99.map lower) ∧ bytes99.length=37 := by core033_kernel_decide
def op100 : List WordIR.Op := [.band 193 195]
def bytes100 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c4: u32 = r000000c1 & r000000c3;\n" : String)
theorem checked100 : bytes100=statementBytes 196 (op100.map lower) ∧ bytes100.length=48 := by core033_kernel_decide
def op101 : List WordIR.Op := [.bxor 58 82]
def bytes101 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c5: u32 = r0000003a ^ r00000052;\n" : String)
theorem checked101 : bytes101=statementBytes 197 (op101.map lower) ∧ bytes101.length=48 := by core033_kernel_decide
def op102 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes102 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c6: u32 = 0x00000000_u32;\n" : String)
theorem checked102 : bytes102=statementBytes 198 (op102.map lower) ∧ bytes102.length=41 := by core033_kernel_decide
def op103 : List WordIR.Op := [.bnot 198]
def bytes103 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c7: u32 = !r000000c6;\n" : String)
theorem checked103 : bytes103=statementBytes 199 (op103.map lower) ∧ bytes103.length=37 := by core033_kernel_decide
def op104 : List WordIR.Op := [.bxor 197 199]
def bytes104 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c8: u32 = r000000c5 ^ r000000c7;\n" : String)
theorem checked104 : bytes104=statementBytes 200 (op104.map lower) ∧ bytes104.length=48 := by core033_kernel_decide
def op105 : List WordIR.Op := [.bxor 58 82]
def bytes105 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000c9: u32 = r0000003a ^ r00000052;\n" : String)
theorem checked105 : bytes105=statementBytes 201 (op105.map lower) ∧ bytes105.length=48 := by core033_kernel_decide
def op106 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes106 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ca: u32 = 0x00000000_u32;\n" : String)
theorem checked106 : bytes106=statementBytes 202 (op106.map lower) ∧ bytes106.length=41 := by core033_kernel_decide
def op107 : List WordIR.Op := [.bnot 202]
def bytes107 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000cb: u32 = !r000000ca;\n" : String)
theorem checked107 : bytes107=statementBytes 203 (op107.map lower) ∧ bytes107.length=37 := by core033_kernel_decide
def op108 : List WordIR.Op := [.badd 201 203]
def bytes108 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000cc: u32 = r000000c9.wrapping_add(r000000cb);\n" : String)
theorem checked108 : bytes108=statementBytes 204 (op108.map lower) ∧ bytes108.length=60 := by core033_kernel_decide
def op109 : List WordIR.Op := [.bnot 204]
def bytes109 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000cd: u32 = !r000000cc;\n" : String)
theorem checked109 : bytes109=statementBytes 205 (op109.map lower) ∧ bytes109.length=37 := by core033_kernel_decide
def op110 : List WordIR.Op := [.band 200 205]
def bytes110 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000ce: u32 = r000000c8 & r000000cd;\n" : String)
theorem checked110 : bytes110=statementBytes 206 (op110.map lower) ∧ bytes110.length=48 := by core033_kernel_decide
def op111 : List WordIR.Op := [.bxor 196 206]
def bytes111 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000cf: u32 = r000000c4 ^ r000000ce;\n" : String)
theorem checked111 : bytes111=statementBytes 207 (op111.map lower) ∧ bytes111.length=48 := by core033_kernel_decide
def op112 : List WordIR.Op := [.shr 207 31]
def bytes112 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d0: u32 = r000000cf >> 0x0000001f_u32;\n" : String)
theorem checked112 : bytes112=statementBytes 208 (op112.map lower) ∧ bytes112.length=54 := by core033_kernel_decide
def op113 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes113 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d1: u32 = 0x00000001_u32;\n" : String)
theorem checked113 : bytes113=statementBytes 209 (op113.map lower) ∧ bytes113.length=41 := by core033_kernel_decide
def op114 : List WordIR.Op := [.bxor 208 209]
def bytes114 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d2: u32 = r000000d0 ^ r000000d1;\n" : String)
theorem checked114 : bytes114=statementBytes 210 (op114.map lower) ∧ bytes114.length=48 := by core033_kernel_decide
def op115 : List WordIR.Op := [.bxor 59 83]
def bytes115 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d3: u32 = r0000003b ^ r00000053;\n" : String)
theorem checked115 : bytes115=statementBytes 211 (op115.map lower) ∧ bytes115.length=48 := by core033_kernel_decide
def op116 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes116 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d4: u32 = 0x00000000_u32;\n" : String)
theorem checked116 : bytes116=statementBytes 212 (op116.map lower) ∧ bytes116.length=41 := by core033_kernel_decide
def op117 : List WordIR.Op := [.bnot 212]
def bytes117 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d5: u32 = !r000000d4;\n" : String)
theorem checked117 : bytes117=statementBytes 213 (op117.map lower) ∧ bytes117.length=37 := by core033_kernel_decide
def op118 : List WordIR.Op := [.band 211 213]
def bytes118 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d6: u32 = r000000d3 & r000000d5;\n" : String)
theorem checked118 : bytes118=statementBytes 214 (op118.map lower) ∧ bytes118.length=48 := by core033_kernel_decide
def op119 : List WordIR.Op := [.bxor 59 83]
def bytes119 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d7: u32 = r0000003b ^ r00000053;\n" : String)
theorem checked119 : bytes119=statementBytes 215 (op119.map lower) ∧ bytes119.length=48 := by core033_kernel_decide
def op120 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes120 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d8: u32 = 0x00000000_u32;\n" : String)
theorem checked120 : bytes120=statementBytes 216 (op120.map lower) ∧ bytes120.length=41 := by core033_kernel_decide
def op121 : List WordIR.Op := [.bnot 216]
def bytes121 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000d9: u32 = !r000000d8;\n" : String)
theorem checked121 : bytes121=statementBytes 217 (op121.map lower) ∧ bytes121.length=37 := by core033_kernel_decide
def op122 : List WordIR.Op := [.bxor 215 217]
def bytes122 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000da: u32 = r000000d7 ^ r000000d9;\n" : String)
theorem checked122 : bytes122=statementBytes 218 (op122.map lower) ∧ bytes122.length=48 := by core033_kernel_decide
def op123 : List WordIR.Op := [.bxor 59 83]
def bytes123 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000db: u32 = r0000003b ^ r00000053;\n" : String)
theorem checked123 : bytes123=statementBytes 219 (op123.map lower) ∧ bytes123.length=48 := by core033_kernel_decide
def op124 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes124 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000dc: u32 = 0x00000000_u32;\n" : String)
theorem checked124 : bytes124=statementBytes 220 (op124.map lower) ∧ bytes124.length=41 := by core033_kernel_decide
def op125 : List WordIR.Op := [.bnot 220]
def bytes125 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000dd: u32 = !r000000dc;\n" : String)
theorem checked125 : bytes125=statementBytes 221 (op125.map lower) ∧ bytes125.length=37 := by core033_kernel_decide
def op126 : List WordIR.Op := [.badd 219 221]
def bytes126 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000de: u32 = r000000db.wrapping_add(r000000dd);\n" : String)
theorem checked126 : bytes126=statementBytes 222 (op126.map lower) ∧ bytes126.length=60 := by core033_kernel_decide
def op127 : List WordIR.Op := [.bnot 222]
def bytes127 : Bytes := Core033.SourceLiteralBytes.quoted ("    let r000000df: u32 = !r000000de;\n" : String)
theorem checked127 : bytes127=statementBytes 223 (op127.map lower) ∧ bytes127.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op64,op65,op66,op67,op68,op69,op70,op71,op72,op73,op74,op75,op76,op77,op78,op79,op80,op81,op82,op83,op84,op85,op86,op87,op88,op89,op90,op91,op92,op93,op94,op95,op96,op97,op98,op99,op100,op101,op102,op103,op104,op105,op106,op107,op108,op109,op110,op111,op112,op113,op114,op115,op116,op117,op118,op119,op120,op121,op122,op123,op124,op125,op126,op127]
def chunks : List Bytes := [bytes64,bytes65,bytes66,bytes67,bytes68,bytes69,bytes70,bytes71,bytes72,bytes73,bytes74,bytes75,bytes76,bytes77,bytes78,bytes79,bytes80,bytes81,bytes82,bytes83,bytes84,bytes85,bytes86,bytes87,bytes88,bytes89,bytes90,bytes91,bytes92,bytes93,bytes94,bytes95,bytes96,bytes97,bytes98,bytes99,bytes100,bytes101,bytes102,bytes103,bytes104,bytes105,bytes106,bytes107,bytes108,bytes109,bytes110,bytes111,bytes112,bytes113,bytes114,bytes115,bytes116,bytes117,bytes118,bytes119,bytes120,bytes121,bytes122,bytes123,bytes124,bytes125,bytes126,bytes127]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 160 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked64.1 (.cons _ _ _ _ _ checked65.1 (.cons _ _ _ _ _ checked66.1 (.cons _ _ _ _ _ checked67.1 (.cons _ _ _ _ _ checked68.1 (.cons _ _ _ _ _ checked69.1 (.cons _ _ _ _ _ checked70.1 (.cons _ _ _ _ _ checked71.1 (.cons _ _ _ _ _ checked72.1 (.cons _ _ _ _ _ checked73.1 (.cons _ _ _ _ _ checked74.1 (.cons _ _ _ _ _ checked75.1 (.cons _ _ _ _ _ checked76.1 (.cons _ _ _ _ _ checked77.1 (.cons _ _ _ _ _ checked78.1 (.cons _ _ _ _ _ checked79.1 (.cons _ _ _ _ _ checked80.1 (.cons _ _ _ _ _ checked81.1 (.cons _ _ _ _ _ checked82.1 (.cons _ _ _ _ _ checked83.1 (.cons _ _ _ _ _ checked84.1 (.cons _ _ _ _ _ checked85.1 (.cons _ _ _ _ _ checked86.1 (.cons _ _ _ _ _ checked87.1 (.cons _ _ _ _ _ checked88.1 (.cons _ _ _ _ _ checked89.1 (.cons _ _ _ _ _ checked90.1 (.cons _ _ _ _ _ checked91.1 (.cons _ _ _ _ _ checked92.1 (.cons _ _ _ _ _ checked93.1 (.cons _ _ _ _ _ checked94.1 (.cons _ _ _ _ _ checked95.1 (.cons _ _ _ _ _ checked96.1 (.cons _ _ _ _ _ checked97.1 (.cons _ _ _ _ _ checked98.1 (.cons _ _ _ _ _ checked99.1 (.cons _ _ _ _ _ checked100.1 (.cons _ _ _ _ _ checked101.1 (.cons _ _ _ _ _ checked102.1 (.cons _ _ _ _ _ checked103.1 (.cons _ _ _ _ _ checked104.1 (.cons _ _ _ _ _ checked105.1 (.cons _ _ _ _ _ checked106.1 (.cons _ _ _ _ _ checked107.1 (.cons _ _ _ _ _ checked108.1 (.cons _ _ _ _ _ checked109.1 (.cons _ _ _ _ _ checked110.1 (.cons _ _ _ _ _ checked111.1 (.cons _ _ _ _ _ checked112.1 (.cons _ _ _ _ _ checked113.1 (.cons _ _ _ _ _ checked114.1 (.cons _ _ _ _ _ checked115.1 (.cons _ _ _ _ _ checked116.1 (.cons _ _ _ _ _ checked117.1 (.cons _ _ _ _ _ checked118.1 (.cons _ _ _ _ _ checked119.1 (.cons _ _ _ _ _ checked120.1 (.cons _ _ _ _ _ checked121.1 (.cons _ _ _ _ _ checked122.1 (.cons _ _ _ _ _ checked123.1 (.cons _ _ _ _ _ checked124.1 (.cons _ _ _ _ _ checked125.1 (.cons _ _ _ _ _ checked126.1 (.cons _ _ _ _ _ checked127.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 160 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2875 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked64.2,checked65.2,checked66.2,checked67.2,checked68.2,checked69.2,checked70.2,checked71.2,checked72.2,checked73.2,checked74.2,checked75.2,checked76.2,checked77.2,checked78.2,checked79.2,checked80.2,checked81.2,checked82.2,checked83.2,checked84.2,checked85.2,checked86.2,checked87.2,checked88.2,checked89.2,checked90.2,checked91.2,checked92.2,checked93.2,checked94.2,checked95.2,checked96.2,checked97.2,checked98.2,checked99.2,checked100.2,checked101.2,checked102.2,checked103.2,checked104.2,checked105.2,checked106.2,checked107.2,checked108.2,checked109.2,checked110.2,checked111.2,checked112.2,checked113.2,checked114.2,checked115.2,checked116.2,checked117.2,checked118.2,checked119.2,checked120.2,checked121.2,checked122.2,checked123.2,checked124.2,checked125.2,checked126.2,checked127.2]
  decide
end ArtifactPairedPathFinalizeSourceGroup1
