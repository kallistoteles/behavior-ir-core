import ActualCheckedBranchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactCheckedBranchGroup2
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op128 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes128 : Bytes := ("    let r0000009a: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked128 : bytes128=statementBytes 154 (op128.map lower) ∧ bytes128.length=41 := by core033_kernel_decide
def op129 : List WordIR.Op := [.band 153 154]
def bytes129 : Bytes := ("    let r0000009b: u32 = r00000099 & r0000009a;\n" : String).toByteArray.data.toList
theorem checked129 : bytes129=statementBytes 155 (op129.map lower) ∧ bytes129.length=48 := by core033_kernel_decide
def op130 : List WordIR.Op := [.shr 10 8]
def bytes130 : Bytes := ("    let r0000009c: u32 = r0000000a >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked130 : bytes130=statementBytes 156 (op130.map lower) ∧ bytes130.length=54 := by core033_kernel_decide
def op131 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes131 : Bytes := ("    let r0000009d: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked131 : bytes131=statementBytes 157 (op131.map lower) ∧ bytes131.length=41 := by core033_kernel_decide
def op132 : List WordIR.Op := [.band 156 157]
def bytes132 : Bytes := ("    let r0000009e: u32 = r0000009c & r0000009d;\n" : String).toByteArray.data.toList
theorem checked132 : bytes132=statementBytes 158 (op132.map lower) ∧ bytes132.length=48 := by core033_kernel_decide
def op133 : List WordIR.Op := [.shr 10 16]
def bytes133 : Bytes := ("    let r0000009f: u32 = r0000000a >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked133 : bytes133=statementBytes 159 (op133.map lower) ∧ bytes133.length=54 := by core033_kernel_decide
def op134 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes134 : Bytes := ("    let r000000a0: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked134 : bytes134=statementBytes 160 (op134.map lower) ∧ bytes134.length=41 := by core033_kernel_decide
def op135 : List WordIR.Op := [.band 159 160]
def bytes135 : Bytes := ("    let r000000a1: u32 = r0000009f & r000000a0;\n" : String).toByteArray.data.toList
theorem checked135 : bytes135=statementBytes 161 (op135.map lower) ∧ bytes135.length=48 := by core033_kernel_decide
def op136 : List WordIR.Op := [.shr 10 24]
def bytes136 : Bytes := ("    let r000000a2: u32 = r0000000a >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked136 : bytes136=statementBytes 162 (op136.map lower) ∧ bytes136.length=54 := by core033_kernel_decide
def op137 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes137 : Bytes := ("    let r000000a3: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked137 : bytes137=statementBytes 163 (op137.map lower) ∧ bytes137.length=41 := by core033_kernel_decide
def op138 : List WordIR.Op := [.band 162 163]
def bytes138 : Bytes := ("    let r000000a4: u32 = r000000a2 & r000000a3;\n" : String).toByteArray.data.toList
theorem checked138 : bytes138=statementBytes 164 (op138.map lower) ∧ bytes138.length=48 := by core033_kernel_decide
def op139 : List WordIR.Op := [.shr 11 0]
def bytes139 : Bytes := ("    let r000000a5: u32 = r0000000b >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked139 : bytes139=statementBytes 165 (op139.map lower) ∧ bytes139.length=54 := by core033_kernel_decide
def op140 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes140 : Bytes := ("    let r000000a6: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked140 : bytes140=statementBytes 166 (op140.map lower) ∧ bytes140.length=41 := by core033_kernel_decide
def op141 : List WordIR.Op := [.band 165 166]
def bytes141 : Bytes := ("    let r000000a7: u32 = r000000a5 & r000000a6;\n" : String).toByteArray.data.toList
theorem checked141 : bytes141=statementBytes 167 (op141.map lower) ∧ bytes141.length=48 := by core033_kernel_decide
def op142 : List WordIR.Op := [.shr 11 8]
def bytes142 : Bytes := ("    let r000000a8: u32 = r0000000b >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked142 : bytes142=statementBytes 168 (op142.map lower) ∧ bytes142.length=54 := by core033_kernel_decide
def op143 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes143 : Bytes := ("    let r000000a9: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked143 : bytes143=statementBytes 169 (op143.map lower) ∧ bytes143.length=41 := by core033_kernel_decide
def op144 : List WordIR.Op := [.band 168 169]
def bytes144 : Bytes := ("    let r000000aa: u32 = r000000a8 & r000000a9;\n" : String).toByteArray.data.toList
theorem checked144 : bytes144=statementBytes 170 (op144.map lower) ∧ bytes144.length=48 := by core033_kernel_decide
def op145 : List WordIR.Op := [.shr 11 16]
def bytes145 : Bytes := ("    let r000000ab: u32 = r0000000b >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked145 : bytes145=statementBytes 171 (op145.map lower) ∧ bytes145.length=54 := by core033_kernel_decide
def op146 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes146 : Bytes := ("    let r000000ac: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked146 : bytes146=statementBytes 172 (op146.map lower) ∧ bytes146.length=41 := by core033_kernel_decide
def op147 : List WordIR.Op := [.band 171 172]
def bytes147 : Bytes := ("    let r000000ad: u32 = r000000ab & r000000ac;\n" : String).toByteArray.data.toList
theorem checked147 : bytes147=statementBytes 173 (op147.map lower) ∧ bytes147.length=48 := by core033_kernel_decide
def op148 : List WordIR.Op := [.shr 11 24]
def bytes148 : Bytes := ("    let r000000ae: u32 = r0000000b >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked148 : bytes148=statementBytes 174 (op148.map lower) ∧ bytes148.length=54 := by core033_kernel_decide
def op149 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes149 : Bytes := ("    let r000000af: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked149 : bytes149=statementBytes 175 (op149.map lower) ∧ bytes149.length=41 := by core033_kernel_decide
def op150 : List WordIR.Op := [.band 174 175]
def bytes150 : Bytes := ("    let r000000b0: u32 = r000000ae & r000000af;\n" : String).toByteArray.data.toList
theorem checked150 : bytes150=statementBytes 176 (op150.map lower) ∧ bytes150.length=48 := by core033_kernel_decide
def op151 : List WordIR.Op := [.shr 12 0]
def bytes151 : Bytes := ("    let r000000b1: u32 = r0000000c >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked151 : bytes151=statementBytes 177 (op151.map lower) ∧ bytes151.length=54 := by core033_kernel_decide
def op152 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes152 : Bytes := ("    let r000000b2: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked152 : bytes152=statementBytes 178 (op152.map lower) ∧ bytes152.length=41 := by core033_kernel_decide
def op153 : List WordIR.Op := [.band 177 178]
def bytes153 : Bytes := ("    let r000000b3: u32 = r000000b1 & r000000b2;\n" : String).toByteArray.data.toList
theorem checked153 : bytes153=statementBytes 179 (op153.map lower) ∧ bytes153.length=48 := by core033_kernel_decide
def op154 : List WordIR.Op := [.shr 12 8]
def bytes154 : Bytes := ("    let r000000b4: u32 = r0000000c >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked154 : bytes154=statementBytes 180 (op154.map lower) ∧ bytes154.length=54 := by core033_kernel_decide
def op155 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes155 : Bytes := ("    let r000000b5: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked155 : bytes155=statementBytes 181 (op155.map lower) ∧ bytes155.length=41 := by core033_kernel_decide
def op156 : List WordIR.Op := [.band 180 181]
def bytes156 : Bytes := ("    let r000000b6: u32 = r000000b4 & r000000b5;\n" : String).toByteArray.data.toList
theorem checked156 : bytes156=statementBytes 182 (op156.map lower) ∧ bytes156.length=48 := by core033_kernel_decide
def op157 : List WordIR.Op := [.shr 12 16]
def bytes157 : Bytes := ("    let r000000b7: u32 = r0000000c >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked157 : bytes157=statementBytes 183 (op157.map lower) ∧ bytes157.length=54 := by core033_kernel_decide
def op158 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes158 : Bytes := ("    let r000000b8: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked158 : bytes158=statementBytes 184 (op158.map lower) ∧ bytes158.length=41 := by core033_kernel_decide
def op159 : List WordIR.Op := [.band 183 184]
def bytes159 : Bytes := ("    let r000000b9: u32 = r000000b7 & r000000b8;\n" : String).toByteArray.data.toList
theorem checked159 : bytes159=statementBytes 185 (op159.map lower) ∧ bytes159.length=48 := by core033_kernel_decide
def op160 : List WordIR.Op := [.shr 12 24]
def bytes160 : Bytes := ("    let r000000ba: u32 = r0000000c >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked160 : bytes160=statementBytes 186 (op160.map lower) ∧ bytes160.length=54 := by core033_kernel_decide
def op161 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes161 : Bytes := ("    let r000000bb: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked161 : bytes161=statementBytes 187 (op161.map lower) ∧ bytes161.length=41 := by core033_kernel_decide
def op162 : List WordIR.Op := [.band 186 187]
def bytes162 : Bytes := ("    let r000000bc: u32 = r000000ba & r000000bb;\n" : String).toByteArray.data.toList
theorem checked162 : bytes162=statementBytes 188 (op162.map lower) ∧ bytes162.length=48 := by core033_kernel_decide
def op163 : List WordIR.Op := [.shr 13 0]
def bytes163 : Bytes := ("    let r000000bd: u32 = r0000000d >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked163 : bytes163=statementBytes 189 (op163.map lower) ∧ bytes163.length=54 := by core033_kernel_decide
def op164 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes164 : Bytes := ("    let r000000be: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked164 : bytes164=statementBytes 190 (op164.map lower) ∧ bytes164.length=41 := by core033_kernel_decide
def op165 : List WordIR.Op := [.band 189 190]
def bytes165 : Bytes := ("    let r000000bf: u32 = r000000bd & r000000be;\n" : String).toByteArray.data.toList
theorem checked165 : bytes165=statementBytes 191 (op165.map lower) ∧ bytes165.length=48 := by core033_kernel_decide
def op166 : List WordIR.Op := [.shr 13 8]
def bytes166 : Bytes := ("    let r000000c0: u32 = r0000000d >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked166 : bytes166=statementBytes 192 (op166.map lower) ∧ bytes166.length=54 := by core033_kernel_decide
def op167 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes167 : Bytes := ("    let r000000c1: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked167 : bytes167=statementBytes 193 (op167.map lower) ∧ bytes167.length=41 := by core033_kernel_decide
def op168 : List WordIR.Op := [.band 192 193]
def bytes168 : Bytes := ("    let r000000c2: u32 = r000000c0 & r000000c1;\n" : String).toByteArray.data.toList
theorem checked168 : bytes168=statementBytes 194 (op168.map lower) ∧ bytes168.length=48 := by core033_kernel_decide
def op169 : List WordIR.Op := [.shr 13 16]
def bytes169 : Bytes := ("    let r000000c3: u32 = r0000000d >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked169 : bytes169=statementBytes 195 (op169.map lower) ∧ bytes169.length=54 := by core033_kernel_decide
def op170 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes170 : Bytes := ("    let r000000c4: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked170 : bytes170=statementBytes 196 (op170.map lower) ∧ bytes170.length=41 := by core033_kernel_decide
def op171 : List WordIR.Op := [.band 195 196]
def bytes171 : Bytes := ("    let r000000c5: u32 = r000000c3 & r000000c4;\n" : String).toByteArray.data.toList
theorem checked171 : bytes171=statementBytes 197 (op171.map lower) ∧ bytes171.length=48 := by core033_kernel_decide
def op172 : List WordIR.Op := [.shr 13 24]
def bytes172 : Bytes := ("    let r000000c6: u32 = r0000000d >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked172 : bytes172=statementBytes 198 (op172.map lower) ∧ bytes172.length=54 := by core033_kernel_decide
def op173 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes173 : Bytes := ("    let r000000c7: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked173 : bytes173=statementBytes 199 (op173.map lower) ∧ bytes173.length=41 := by core033_kernel_decide
def op174 : List WordIR.Op := [.band 198 199]
def bytes174 : Bytes := ("    let r000000c8: u32 = r000000c6 & r000000c7;\n" : String).toByteArray.data.toList
theorem checked174 : bytes174=statementBytes 200 (op174.map lower) ∧ bytes174.length=48 := by core033_kernel_decide
def op175 : List WordIR.Op := [.shr 14 0]
def bytes175 : Bytes := ("    let r000000c9: u32 = r0000000e >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked175 : bytes175=statementBytes 201 (op175.map lower) ∧ bytes175.length=54 := by core033_kernel_decide
def op176 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes176 : Bytes := ("    let r000000ca: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked176 : bytes176=statementBytes 202 (op176.map lower) ∧ bytes176.length=41 := by core033_kernel_decide
def op177 : List WordIR.Op := [.band 201 202]
def bytes177 : Bytes := ("    let r000000cb: u32 = r000000c9 & r000000ca;\n" : String).toByteArray.data.toList
theorem checked177 : bytes177=statementBytes 203 (op177.map lower) ∧ bytes177.length=48 := by core033_kernel_decide
def op178 : List WordIR.Op := [.shr 14 8]
def bytes178 : Bytes := ("    let r000000cc: u32 = r0000000e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked178 : bytes178=statementBytes 204 (op178.map lower) ∧ bytes178.length=54 := by core033_kernel_decide
def op179 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes179 : Bytes := ("    let r000000cd: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked179 : bytes179=statementBytes 205 (op179.map lower) ∧ bytes179.length=41 := by core033_kernel_decide
def op180 : List WordIR.Op := [.band 204 205]
def bytes180 : Bytes := ("    let r000000ce: u32 = r000000cc & r000000cd;\n" : String).toByteArray.data.toList
theorem checked180 : bytes180=statementBytes 206 (op180.map lower) ∧ bytes180.length=48 := by core033_kernel_decide
def op181 : List WordIR.Op := [.shr 14 16]
def bytes181 : Bytes := ("    let r000000cf: u32 = r0000000e >> 0x00000010_u32;\n" : String).toByteArray.data.toList
theorem checked181 : bytes181=statementBytes 207 (op181.map lower) ∧ bytes181.length=54 := by core033_kernel_decide
def op182 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes182 : Bytes := ("    let r000000d0: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked182 : bytes182=statementBytes 208 (op182.map lower) ∧ bytes182.length=41 := by core033_kernel_decide
def op183 : List WordIR.Op := [.band 207 208]
def bytes183 : Bytes := ("    let r000000d1: u32 = r000000cf & r000000d0;\n" : String).toByteArray.data.toList
theorem checked183 : bytes183=statementBytes 209 (op183.map lower) ∧ bytes183.length=48 := by core033_kernel_decide
def op184 : List WordIR.Op := [.shr 14 24]
def bytes184 : Bytes := ("    let r000000d2: u32 = r0000000e >> 0x00000018_u32;\n" : String).toByteArray.data.toList
theorem checked184 : bytes184=statementBytes 210 (op184.map lower) ∧ bytes184.length=54 := by core033_kernel_decide
def op185 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes185 : Bytes := ("    let r000000d3: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked185 : bytes185=statementBytes 211 (op185.map lower) ∧ bytes185.length=41 := by core033_kernel_decide
def op186 : List WordIR.Op := [.band 210 211]
def bytes186 : Bytes := ("    let r000000d4: u32 = r000000d2 & r000000d3;\n" : String).toByteArray.data.toList
theorem checked186 : bytes186=statementBytes 212 (op186.map lower) ∧ bytes186.length=48 := by core033_kernel_decide
def op187 : List WordIR.Op := [.shr 15 0]
def bytes187 : Bytes := ("    let r000000d5: u32 = r0000000f >> 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked187 : bytes187=statementBytes 213 (op187.map lower) ∧ bytes187.length=54 := by core033_kernel_decide
def op188 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes188 : Bytes := ("    let r000000d6: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked188 : bytes188=statementBytes 214 (op188.map lower) ∧ bytes188.length=41 := by core033_kernel_decide
def op189 : List WordIR.Op := [.band 213 214]
def bytes189 : Bytes := ("    let r000000d7: u32 = r000000d5 & r000000d6;\n" : String).toByteArray.data.toList
theorem checked189 : bytes189=statementBytes 215 (op189.map lower) ∧ bytes189.length=48 := by core033_kernel_decide
def op190 : List WordIR.Op := [.shr 15 8]
def bytes190 : Bytes := ("    let r000000d8: u32 = r0000000f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked190 : bytes190=statementBytes 216 (op190.map lower) ∧ bytes190.length=54 := by core033_kernel_decide
def op191 : List WordIR.Op := [.literal (BitVec.ofNat 32 255)]
def bytes191 : Bytes := ("    let r000000d9: u32 = 0x000000ff_u32;\n" : String).toByteArray.data.toList
theorem checked191 : bytes191=statementBytes 217 (op191.map lower) ∧ bytes191.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op128,op129,op130,op131,op132,op133,op134,op135,op136,op137,op138,op139,op140,op141,op142,op143,op144,op145,op146,op147,op148,op149,op150,op151,op152,op153,op154,op155,op156,op157,op158,op159,op160,op161,op162,op163,op164,op165,op166,op167,op168,op169,op170,op171,op172,op173,op174,op175,op176,op177,op178,op179,op180,op181,op182,op183,op184,op185,op186,op187,op188,op189,op190,op191]
def chunks : List Bytes := [bytes128,bytes129,bytes130,bytes131,bytes132,bytes133,bytes134,bytes135,bytes136,bytes137,bytes138,bytes139,bytes140,bytes141,bytes142,bytes143,bytes144,bytes145,bytes146,bytes147,bytes148,bytes149,bytes150,bytes151,bytes152,bytes153,bytes154,bytes155,bytes156,bytes157,bytes158,bytes159,bytes160,bytes161,bytes162,bytes163,bytes164,bytes165,bytes166,bytes167,bytes168,bytes169,bytes170,bytes171,bytes172,bytes173,bytes174,bytes175,bytes176,bytes177,bytes178,bytes179,bytes180,bytes181,bytes182,bytes183,bytes184,bytes185,bytes186,bytes187,bytes188,bytes189,bytes190,bytes191]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 154 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked128.1 (.cons _ _ _ _ _ checked129.1 (.cons _ _ _ _ _ checked130.1 (.cons _ _ _ _ _ checked131.1 (.cons _ _ _ _ _ checked132.1 (.cons _ _ _ _ _ checked133.1 (.cons _ _ _ _ _ checked134.1 (.cons _ _ _ _ _ checked135.1 (.cons _ _ _ _ _ checked136.1 (.cons _ _ _ _ _ checked137.1 (.cons _ _ _ _ _ checked138.1 (.cons _ _ _ _ _ checked139.1 (.cons _ _ _ _ _ checked140.1 (.cons _ _ _ _ _ checked141.1 (.cons _ _ _ _ _ checked142.1 (.cons _ _ _ _ _ checked143.1 (.cons _ _ _ _ _ checked144.1 (.cons _ _ _ _ _ checked145.1 (.cons _ _ _ _ _ checked146.1 (.cons _ _ _ _ _ checked147.1 (.cons _ _ _ _ _ checked148.1 (.cons _ _ _ _ _ checked149.1 (.cons _ _ _ _ _ checked150.1 (.cons _ _ _ _ _ checked151.1 (.cons _ _ _ _ _ checked152.1 (.cons _ _ _ _ _ checked153.1 (.cons _ _ _ _ _ checked154.1 (.cons _ _ _ _ _ checked155.1 (.cons _ _ _ _ _ checked156.1 (.cons _ _ _ _ _ checked157.1 (.cons _ _ _ _ _ checked158.1 (.cons _ _ _ _ _ checked159.1 (.cons _ _ _ _ _ checked160.1 (.cons _ _ _ _ _ checked161.1 (.cons _ _ _ _ _ checked162.1 (.cons _ _ _ _ _ checked163.1 (.cons _ _ _ _ _ checked164.1 (.cons _ _ _ _ _ checked165.1 (.cons _ _ _ _ _ checked166.1 (.cons _ _ _ _ _ checked167.1 (.cons _ _ _ _ _ checked168.1 (.cons _ _ _ _ _ checked169.1 (.cons _ _ _ _ _ checked170.1 (.cons _ _ _ _ _ checked171.1 (.cons _ _ _ _ _ checked172.1 (.cons _ _ _ _ _ checked173.1 (.cons _ _ _ _ _ checked174.1 (.cons _ _ _ _ _ checked175.1 (.cons _ _ _ _ _ checked176.1 (.cons _ _ _ _ _ checked177.1 (.cons _ _ _ _ _ checked178.1 (.cons _ _ _ _ _ checked179.1 (.cons _ _ _ _ _ checked180.1 (.cons _ _ _ _ _ checked181.1 (.cons _ _ _ _ _ checked182.1 (.cons _ _ _ _ _ checked183.1 (.cons _ _ _ _ _ checked184.1 (.cons _ _ _ _ _ checked185.1 (.cons _ _ _ _ _ checked186.1 (.cons _ _ _ _ _ checked187.1 (.cons _ _ _ _ _ checked188.1 (.cons _ _ _ _ _ checked189.1 (.cons _ _ _ _ _ checked190.1 (.cons _ _ _ _ _ checked191.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 154 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3044 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked128.2,checked129.2,checked130.2,checked131.2,checked132.2,checked133.2,checked134.2,checked135.2,checked136.2,checked137.2,checked138.2,checked139.2,checked140.2,checked141.2,checked142.2,checked143.2,checked144.2,checked145.2,checked146.2,checked147.2,checked148.2,checked149.2,checked150.2,checked151.2,checked152.2,checked153.2,checked154.2,checked155.2,checked156.2,checked157.2,checked158.2,checked159.2,checked160.2,checked161.2,checked162.2,checked163.2,checked164.2,checked165.2,checked166.2,checked167.2,checked168.2,checked169.2,checked170.2,checked171.2,checked172.2,checked173.2,checked174.2,checked175.2,checked176.2,checked177.2,checked178.2,checked179.2,checked180.2,checked181.2,checked182.2,checked183.2,checked184.2,checked185.2,checked186.2,checked187.2,checked188.2,checked189.2,checked190.2,checked191.2]
  decide
end ArtifactCheckedBranchGroup2
