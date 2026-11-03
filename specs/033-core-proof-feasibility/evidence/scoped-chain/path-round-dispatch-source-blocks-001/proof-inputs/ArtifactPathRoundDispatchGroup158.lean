import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup158
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10112 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10112 : Bytes := ("    let r000027ab: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10112 : bytes10112=statementBytes 10155 (op10112.map lower) ∧ bytes10112.length=41 := by core033_kernel_decide
def op10113 : List WordIR.Op := [.bnot 10155]
def bytes10113 : Bytes := ("    let r000027ac: u32 = !r000027ab;\n" : String).toByteArray.data.toList
theorem checked10113 : bytes10113=statementBytes 10156 (op10113.map lower) ∧ bytes10113.length=37 := by core033_kernel_decide
def op10114 : List WordIR.Op := [.bxor 10154 10156]
def bytes10114 : Bytes := ("    let r000027ad: u32 = r000027aa ^ r000027ac;\n" : String).toByteArray.data.toList
theorem checked10114 : bytes10114=statementBytes 10157 (op10114.map lower) ∧ bytes10114.length=48 := by core033_kernel_decide
def op10115 : List WordIR.Op := [.shr 9439 8]
def bytes10115 : Bytes := ("    let r000027ae: u32 = r000024df >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked10115 : bytes10115=statementBytes 10158 (op10115.map lower) ∧ bytes10115.length=54 := by core033_kernel_decide
def op10116 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10116 : Bytes := ("    let r000027af: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10116 : bytes10116=statementBytes 10159 (op10116.map lower) ∧ bytes10116.length=41 := by core033_kernel_decide
def op10117 : List WordIR.Op := [.bnot 10159]
def bytes10117 : Bytes := ("    let r000027b0: u32 = !r000027af;\n" : String).toByteArray.data.toList
theorem checked10117 : bytes10117=statementBytes 10160 (op10117.map lower) ∧ bytes10117.length=37 := by core033_kernel_decide
def op10118 : List WordIR.Op := [.badd 10158 10160]
def bytes10118 : Bytes := ("    let r000027b1: u32 = r000027ae.wrapping_add(r000027b0);\n" : String).toByteArray.data.toList
theorem checked10118 : bytes10118=statementBytes 10161 (op10118.map lower) ∧ bytes10118.length=60 := by core033_kernel_decide
def op10119 : List WordIR.Op := [.bnot 10161]
def bytes10119 : Bytes := ("    let r000027b2: u32 = !r000027b1;\n" : String).toByteArray.data.toList
theorem checked10119 : bytes10119=statementBytes 10162 (op10119.map lower) ∧ bytes10119.length=37 := by core033_kernel_decide
def op10120 : List WordIR.Op := [.band 10157 10162]
def bytes10120 : Bytes := ("    let r000027b3: u32 = r000027ad & r000027b2;\n" : String).toByteArray.data.toList
theorem checked10120 : bytes10120=statementBytes 10163 (op10120.map lower) ∧ bytes10120.length=48 := by core033_kernel_decide
def op10121 : List WordIR.Op := [.bxor 10153 10163]
def bytes10121 : Bytes := ("    let r000027b4: u32 = r000027a9 ^ r000027b3;\n" : String).toByteArray.data.toList
theorem checked10121 : bytes10121=statementBytes 10164 (op10121.map lower) ∧ bytes10121.length=48 := by core033_kernel_decide
def op10122 : List WordIR.Op := [.shr 10164 31]
def bytes10122 : Bytes := ("    let r000027b5: u32 = r000027b4 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10122 : bytes10122=statementBytes 10165 (op10122.map lower) ∧ bytes10122.length=54 := by core033_kernel_decide
def op10123 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10123 : Bytes := ("    let r000027b6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10123 : bytes10123=statementBytes 10166 (op10123.map lower) ∧ bytes10123.length=41 := by core033_kernel_decide
def op10124 : List WordIR.Op := [.bxor 10165 10166]
def bytes10124 : Bytes := ("    let r000027b7: u32 = r000027b5 ^ r000027b6;\n" : String).toByteArray.data.toList
theorem checked10124 : bytes10124=statementBytes 10167 (op10124.map lower) ∧ bytes10124.length=48 := by core033_kernel_decide
def op10125 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10125 : Bytes := ("    let r000027b8: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10125 : bytes10125=statementBytes 10168 (op10125.map lower) ∧ bytes10125.length=41 := by core033_kernel_decide
def op10126 : List WordIR.Op := [.bxor 9439 10168]
def bytes10126 : Bytes := ("    let r000027b9: u32 = r000024df ^ r000027b8;\n" : String).toByteArray.data.toList
theorem checked10126 : bytes10126=statementBytes 10169 (op10126.map lower) ∧ bytes10126.length=48 := by core033_kernel_decide
def op10127 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10127 : Bytes := ("    let r000027ba: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10127 : bytes10127=statementBytes 10170 (op10127.map lower) ∧ bytes10127.length=41 := by core033_kernel_decide
def op10128 : List WordIR.Op := [.bnot 10170]
def bytes10128 : Bytes := ("    let r000027bb: u32 = !r000027ba;\n" : String).toByteArray.data.toList
theorem checked10128 : bytes10128=statementBytes 10171 (op10128.map lower) ∧ bytes10128.length=37 := by core033_kernel_decide
def op10129 : List WordIR.Op := [.band 10169 10171]
def bytes10129 : Bytes := ("    let r000027bc: u32 = r000027b9 & r000027bb;\n" : String).toByteArray.data.toList
theorem checked10129 : bytes10129=statementBytes 10172 (op10129.map lower) ∧ bytes10129.length=48 := by core033_kernel_decide
def op10130 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10130 : Bytes := ("    let r000027bd: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10130 : bytes10130=statementBytes 10173 (op10130.map lower) ∧ bytes10130.length=41 := by core033_kernel_decide
def op10131 : List WordIR.Op := [.bxor 9439 10173]
def bytes10131 : Bytes := ("    let r000027be: u32 = r000024df ^ r000027bd;\n" : String).toByteArray.data.toList
theorem checked10131 : bytes10131=statementBytes 10174 (op10131.map lower) ∧ bytes10131.length=48 := by core033_kernel_decide
def op10132 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10132 : Bytes := ("    let r000027bf: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10132 : bytes10132=statementBytes 10175 (op10132.map lower) ∧ bytes10132.length=41 := by core033_kernel_decide
def op10133 : List WordIR.Op := [.bnot 10175]
def bytes10133 : Bytes := ("    let r000027c0: u32 = !r000027bf;\n" : String).toByteArray.data.toList
theorem checked10133 : bytes10133=statementBytes 10176 (op10133.map lower) ∧ bytes10133.length=37 := by core033_kernel_decide
def op10134 : List WordIR.Op := [.bxor 10174 10176]
def bytes10134 : Bytes := ("    let r000027c1: u32 = r000027be ^ r000027c0;\n" : String).toByteArray.data.toList
theorem checked10134 : bytes10134=statementBytes 10177 (op10134.map lower) ∧ bytes10134.length=48 := by core033_kernel_decide
def op10135 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10135 : Bytes := ("    let r000027c2: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10135 : bytes10135=statementBytes 10178 (op10135.map lower) ∧ bytes10135.length=41 := by core033_kernel_decide
def op10136 : List WordIR.Op := [.bxor 9439 10178]
def bytes10136 : Bytes := ("    let r000027c3: u32 = r000024df ^ r000027c2;\n" : String).toByteArray.data.toList
theorem checked10136 : bytes10136=statementBytes 10179 (op10136.map lower) ∧ bytes10136.length=48 := by core033_kernel_decide
def op10137 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10137 : Bytes := ("    let r000027c4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10137 : bytes10137=statementBytes 10180 (op10137.map lower) ∧ bytes10137.length=41 := by core033_kernel_decide
def op10138 : List WordIR.Op := [.bnot 10180]
def bytes10138 : Bytes := ("    let r000027c5: u32 = !r000027c4;\n" : String).toByteArray.data.toList
theorem checked10138 : bytes10138=statementBytes 10181 (op10138.map lower) ∧ bytes10138.length=37 := by core033_kernel_decide
def op10139 : List WordIR.Op := [.badd 10179 10181]
def bytes10139 : Bytes := ("    let r000027c6: u32 = r000027c3.wrapping_add(r000027c5);\n" : String).toByteArray.data.toList
theorem checked10139 : bytes10139=statementBytes 10182 (op10139.map lower) ∧ bytes10139.length=60 := by core033_kernel_decide
def op10140 : List WordIR.Op := [.bnot 10182]
def bytes10140 : Bytes := ("    let r000027c7: u32 = !r000027c6;\n" : String).toByteArray.data.toList
theorem checked10140 : bytes10140=statementBytes 10183 (op10140.map lower) ∧ bytes10140.length=37 := by core033_kernel_decide
def op10141 : List WordIR.Op := [.band 10177 10183]
def bytes10141 : Bytes := ("    let r000027c8: u32 = r000027c1 & r000027c7;\n" : String).toByteArray.data.toList
theorem checked10141 : bytes10141=statementBytes 10184 (op10141.map lower) ∧ bytes10141.length=48 := by core033_kernel_decide
def op10142 : List WordIR.Op := [.bxor 10172 10184]
def bytes10142 : Bytes := ("    let r000027c9: u32 = r000027bc ^ r000027c8;\n" : String).toByteArray.data.toList
theorem checked10142 : bytes10142=statementBytes 10185 (op10142.map lower) ∧ bytes10142.length=48 := by core033_kernel_decide
def op10143 : List WordIR.Op := [.shr 10185 31]
def bytes10143 : Bytes := ("    let r000027ca: u32 = r000027c9 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10143 : bytes10143=statementBytes 10186 (op10143.map lower) ∧ bytes10143.length=54 := by core033_kernel_decide
def op10144 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10144 : Bytes := ("    let r000027cb: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10144 : bytes10144=statementBytes 10187 (op10144.map lower) ∧ bytes10144.length=41 := by core033_kernel_decide
def op10145 : List WordIR.Op := [.bxor 10186 10187]
def bytes10145 : Bytes := ("    let r000027cc: u32 = r000027ca ^ r000027cb;\n" : String).toByteArray.data.toList
theorem checked10145 : bytes10145=statementBytes 10188 (op10145.map lower) ∧ bytes10145.length=48 := by core033_kernel_decide
def op10146 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10146 : Bytes := ("    let r000027cd: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10146 : bytes10146=statementBytes 10189 (op10146.map lower) ∧ bytes10146.length=41 := by core033_kernel_decide
def op10147 : List WordIR.Op := [.bnot 10189]
def bytes10147 : Bytes := ("    let r000027ce: u32 = !r000027cd;\n" : String).toByteArray.data.toList
theorem checked10147 : bytes10147=statementBytes 10190 (op10147.map lower) ∧ bytes10147.length=37 := by core033_kernel_decide
def op10148 : List WordIR.Op := [.band 9439 10190]
def bytes10148 : Bytes := ("    let r000027cf: u32 = r000024df & r000027ce;\n" : String).toByteArray.data.toList
theorem checked10148 : bytes10148=statementBytes 10191 (op10148.map lower) ∧ bytes10148.length=48 := by core033_kernel_decide
def op10149 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10149 : Bytes := ("    let r000027d0: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10149 : bytes10149=statementBytes 10192 (op10149.map lower) ∧ bytes10149.length=41 := by core033_kernel_decide
def op10150 : List WordIR.Op := [.bnot 10192]
def bytes10150 : Bytes := ("    let r000027d1: u32 = !r000027d0;\n" : String).toByteArray.data.toList
theorem checked10150 : bytes10150=statementBytes 10193 (op10150.map lower) ∧ bytes10150.length=37 := by core033_kernel_decide
def op10151 : List WordIR.Op := [.bxor 9439 10193]
def bytes10151 : Bytes := ("    let r000027d2: u32 = r000024df ^ r000027d1;\n" : String).toByteArray.data.toList
theorem checked10151 : bytes10151=statementBytes 10194 (op10151.map lower) ∧ bytes10151.length=48 := by core033_kernel_decide
def op10152 : List WordIR.Op := [.literal (BitVec.ofNat 32 256)]
def bytes10152 : Bytes := ("    let r000027d3: u32 = 0x00000100_u32;\n" : String).toByteArray.data.toList
theorem checked10152 : bytes10152=statementBytes 10195 (op10152.map lower) ∧ bytes10152.length=41 := by core033_kernel_decide
def op10153 : List WordIR.Op := [.bnot 10195]
def bytes10153 : Bytes := ("    let r000027d4: u32 = !r000027d3;\n" : String).toByteArray.data.toList
theorem checked10153 : bytes10153=statementBytes 10196 (op10153.map lower) ∧ bytes10153.length=37 := by core033_kernel_decide
def op10154 : List WordIR.Op := [.badd 9439 10196]
def bytes10154 : Bytes := ("    let r000027d5: u32 = r000024df.wrapping_add(r000027d4);\n" : String).toByteArray.data.toList
theorem checked10154 : bytes10154=statementBytes 10197 (op10154.map lower) ∧ bytes10154.length=60 := by core033_kernel_decide
def op10155 : List WordIR.Op := [.bnot 10197]
def bytes10155 : Bytes := ("    let r000027d6: u32 = !r000027d5;\n" : String).toByteArray.data.toList
theorem checked10155 : bytes10155=statementBytes 10198 (op10155.map lower) ∧ bytes10155.length=37 := by core033_kernel_decide
def op10156 : List WordIR.Op := [.band 10194 10198]
def bytes10156 : Bytes := ("    let r000027d7: u32 = r000027d2 & r000027d6;\n" : String).toByteArray.data.toList
theorem checked10156 : bytes10156=statementBytes 10199 (op10156.map lower) ∧ bytes10156.length=48 := by core033_kernel_decide
def op10157 : List WordIR.Op := [.bxor 10191 10199]
def bytes10157 : Bytes := ("    let r000027d8: u32 = r000027cf ^ r000027d7;\n" : String).toByteArray.data.toList
theorem checked10157 : bytes10157=statementBytes 10200 (op10157.map lower) ∧ bytes10157.length=48 := by core033_kernel_decide
def op10158 : List WordIR.Op := [.shr 10200 31]
def bytes10158 : Bytes := ("    let r000027d9: u32 = r000027d8 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10158 : bytes10158=statementBytes 10201 (op10158.map lower) ∧ bytes10158.length=54 := by core033_kernel_decide
def op10159 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10159 : Bytes := ("    let r000027da: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10159 : bytes10159=statementBytes 10202 (op10159.map lower) ∧ bytes10159.length=41 := by core033_kernel_decide
def op10160 : List WordIR.Op := [.bxor 10201 10202]
def bytes10160 : Bytes := ("    let r000027db: u32 = r000027d9 ^ r000027da;\n" : String).toByteArray.data.toList
theorem checked10160 : bytes10160=statementBytes 10203 (op10160.map lower) ∧ bytes10160.length=48 := by core033_kernel_decide
def op10161 : List WordIR.Op := [.literal (BitVec.ofNat 32 4)]
def bytes10161 : Bytes := ("    let r000027dc: u32 = 0x00000004_u32;\n" : String).toByteArray.data.toList
theorem checked10161 : bytes10161=statementBytes 10204 (op10161.map lower) ∧ bytes10161.length=41 := by core033_kernel_decide
def op10162 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10162 : Bytes := ("    let r000027dd: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10162 : bytes10162=statementBytes 10205 (op10162.map lower) ∧ bytes10162.length=41 := by core033_kernel_decide
def op10163 : List WordIR.Op := [.bxor 9417 10205]
def bytes10163 : Bytes := ("    let r000027de: u32 = r000024c9 ^ r000027dd;\n" : String).toByteArray.data.toList
theorem checked10163 : bytes10163=statementBytes 10206 (op10163.map lower) ∧ bytes10163.length=48 := by core033_kernel_decide
def op10164 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10164 : Bytes := ("    let r000027df: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10164 : bytes10164=statementBytes 10207 (op10164.map lower) ∧ bytes10164.length=41 := by core033_kernel_decide
def op10165 : List WordIR.Op := [.bnot 10207]
def bytes10165 : Bytes := ("    let r000027e0: u32 = !r000027df;\n" : String).toByteArray.data.toList
theorem checked10165 : bytes10165=statementBytes 10208 (op10165.map lower) ∧ bytes10165.length=37 := by core033_kernel_decide
def op10166 : List WordIR.Op := [.band 10206 10208]
def bytes10166 : Bytes := ("    let r000027e1: u32 = r000027de & r000027e0;\n" : String).toByteArray.data.toList
theorem checked10166 : bytes10166=statementBytes 10209 (op10166.map lower) ∧ bytes10166.length=48 := by core033_kernel_decide
def op10167 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10167 : Bytes := ("    let r000027e2: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10167 : bytes10167=statementBytes 10210 (op10167.map lower) ∧ bytes10167.length=41 := by core033_kernel_decide
def op10168 : List WordIR.Op := [.bxor 9417 10210]
def bytes10168 : Bytes := ("    let r000027e3: u32 = r000024c9 ^ r000027e2;\n" : String).toByteArray.data.toList
theorem checked10168 : bytes10168=statementBytes 10211 (op10168.map lower) ∧ bytes10168.length=48 := by core033_kernel_decide
def op10169 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10169 : Bytes := ("    let r000027e4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10169 : bytes10169=statementBytes 10212 (op10169.map lower) ∧ bytes10169.length=41 := by core033_kernel_decide
def op10170 : List WordIR.Op := [.bnot 10212]
def bytes10170 : Bytes := ("    let r000027e5: u32 = !r000027e4;\n" : String).toByteArray.data.toList
theorem checked10170 : bytes10170=statementBytes 10213 (op10170.map lower) ∧ bytes10170.length=37 := by core033_kernel_decide
def op10171 : List WordIR.Op := [.bxor 10211 10213]
def bytes10171 : Bytes := ("    let r000027e6: u32 = r000027e3 ^ r000027e5;\n" : String).toByteArray.data.toList
theorem checked10171 : bytes10171=statementBytes 10214 (op10171.map lower) ∧ bytes10171.length=48 := by core033_kernel_decide
def op10172 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10172 : Bytes := ("    let r000027e7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10172 : bytes10172=statementBytes 10215 (op10172.map lower) ∧ bytes10172.length=41 := by core033_kernel_decide
def op10173 : List WordIR.Op := [.bxor 9417 10215]
def bytes10173 : Bytes := ("    let r000027e8: u32 = r000024c9 ^ r000027e7;\n" : String).toByteArray.data.toList
theorem checked10173 : bytes10173=statementBytes 10216 (op10173.map lower) ∧ bytes10173.length=48 := by core033_kernel_decide
def op10174 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10174 : Bytes := ("    let r000027e9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10174 : bytes10174=statementBytes 10217 (op10174.map lower) ∧ bytes10174.length=41 := by core033_kernel_decide
def op10175 : List WordIR.Op := [.bnot 10217]
def bytes10175 : Bytes := ("    let r000027ea: u32 = !r000027e9;\n" : String).toByteArray.data.toList
theorem checked10175 : bytes10175=statementBytes 10218 (op10175.map lower) ∧ bytes10175.length=37 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10112,op10113,op10114,op10115,op10116,op10117,op10118,op10119,op10120,op10121,op10122,op10123,op10124,op10125,op10126,op10127,op10128,op10129,op10130,op10131,op10132,op10133,op10134,op10135,op10136,op10137,op10138,op10139,op10140,op10141,op10142,op10143,op10144,op10145,op10146,op10147,op10148,op10149,op10150,op10151,op10152,op10153,op10154,op10155,op10156,op10157,op10158,op10159,op10160,op10161,op10162,op10163,op10164,op10165,op10166,op10167,op10168,op10169,op10170,op10171,op10172,op10173,op10174,op10175]
def chunks : List Bytes := [bytes10112,bytes10113,bytes10114,bytes10115,bytes10116,bytes10117,bytes10118,bytes10119,bytes10120,bytes10121,bytes10122,bytes10123,bytes10124,bytes10125,bytes10126,bytes10127,bytes10128,bytes10129,bytes10130,bytes10131,bytes10132,bytes10133,bytes10134,bytes10135,bytes10136,bytes10137,bytes10138,bytes10139,bytes10140,bytes10141,bytes10142,bytes10143,bytes10144,bytes10145,bytes10146,bytes10147,bytes10148,bytes10149,bytes10150,bytes10151,bytes10152,bytes10153,bytes10154,bytes10155,bytes10156,bytes10157,bytes10158,bytes10159,bytes10160,bytes10161,bytes10162,bytes10163,bytes10164,bytes10165,bytes10166,bytes10167,bytes10168,bytes10169,bytes10170,bytes10171,bytes10172,bytes10173,bytes10174,bytes10175]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10155 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10112.1 (.cons _ _ _ _ _ checked10113.1 (.cons _ _ _ _ _ checked10114.1 (.cons _ _ _ _ _ checked10115.1 (.cons _ _ _ _ _ checked10116.1 (.cons _ _ _ _ _ checked10117.1 (.cons _ _ _ _ _ checked10118.1 (.cons _ _ _ _ _ checked10119.1 (.cons _ _ _ _ _ checked10120.1 (.cons _ _ _ _ _ checked10121.1 (.cons _ _ _ _ _ checked10122.1 (.cons _ _ _ _ _ checked10123.1 (.cons _ _ _ _ _ checked10124.1 (.cons _ _ _ _ _ checked10125.1 (.cons _ _ _ _ _ checked10126.1 (.cons _ _ _ _ _ checked10127.1 (.cons _ _ _ _ _ checked10128.1 (.cons _ _ _ _ _ checked10129.1 (.cons _ _ _ _ _ checked10130.1 (.cons _ _ _ _ _ checked10131.1 (.cons _ _ _ _ _ checked10132.1 (.cons _ _ _ _ _ checked10133.1 (.cons _ _ _ _ _ checked10134.1 (.cons _ _ _ _ _ checked10135.1 (.cons _ _ _ _ _ checked10136.1 (.cons _ _ _ _ _ checked10137.1 (.cons _ _ _ _ _ checked10138.1 (.cons _ _ _ _ _ checked10139.1 (.cons _ _ _ _ _ checked10140.1 (.cons _ _ _ _ _ checked10141.1 (.cons _ _ _ _ _ checked10142.1 (.cons _ _ _ _ _ checked10143.1 (.cons _ _ _ _ _ checked10144.1 (.cons _ _ _ _ _ checked10145.1 (.cons _ _ _ _ _ checked10146.1 (.cons _ _ _ _ _ checked10147.1 (.cons _ _ _ _ _ checked10148.1 (.cons _ _ _ _ _ checked10149.1 (.cons _ _ _ _ _ checked10150.1 (.cons _ _ _ _ _ checked10151.1 (.cons _ _ _ _ _ checked10152.1 (.cons _ _ _ _ _ checked10153.1 (.cons _ _ _ _ _ checked10154.1 (.cons _ _ _ _ _ checked10155.1 (.cons _ _ _ _ _ checked10156.1 (.cons _ _ _ _ _ checked10157.1 (.cons _ _ _ _ _ checked10158.1 (.cons _ _ _ _ _ checked10159.1 (.cons _ _ _ _ _ checked10160.1 (.cons _ _ _ _ _ checked10161.1 (.cons _ _ _ _ _ checked10162.1 (.cons _ _ _ _ _ checked10163.1 (.cons _ _ _ _ _ checked10164.1 (.cons _ _ _ _ _ checked10165.1 (.cons _ _ _ _ _ checked10166.1 (.cons _ _ _ _ _ checked10167.1 (.cons _ _ _ _ _ checked10168.1 (.cons _ _ _ _ _ checked10169.1 (.cons _ _ _ _ _ checked10170.1 (.cons _ _ _ _ _ checked10171.1 (.cons _ _ _ _ _ checked10172.1 (.cons _ _ _ _ _ checked10173.1 (.cons _ _ _ _ _ checked10174.1 (.cons _ _ _ _ _ checked10175.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10155 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2831 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10112.2,checked10113.2,checked10114.2,checked10115.2,checked10116.2,checked10117.2,checked10118.2,checked10119.2,checked10120.2,checked10121.2,checked10122.2,checked10123.2,checked10124.2,checked10125.2,checked10126.2,checked10127.2,checked10128.2,checked10129.2,checked10130.2,checked10131.2,checked10132.2,checked10133.2,checked10134.2,checked10135.2,checked10136.2,checked10137.2,checked10138.2,checked10139.2,checked10140.2,checked10141.2,checked10142.2,checked10143.2,checked10144.2,checked10145.2,checked10146.2,checked10147.2,checked10148.2,checked10149.2,checked10150.2,checked10151.2,checked10152.2,checked10153.2,checked10154.2,checked10155.2,checked10156.2,checked10157.2,checked10158.2,checked10159.2,checked10160.2,checked10161.2,checked10162.2,checked10163.2,checked10164.2,checked10165.2,checked10166.2,checked10167.2,checked10168.2,checked10169.2,checked10170.2,checked10171.2,checked10172.2,checked10173.2,checked10174.2,checked10175.2]
  decide
end ArtifactPathRoundDispatchGroup158
