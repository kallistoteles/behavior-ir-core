import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup159
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10176 : List WordIR.Op := [.badd 10216 10218]
def bytes10176 : Bytes := ("    let r000027eb: u32 = r000027e8.wrapping_add(r000027ea);\n" : String).toByteArray.data.toList
theorem checked10176 : bytes10176=statementBytes 10219 (op10176.map lower) ∧ bytes10176.length=60 := by core033_kernel_decide
def op10177 : List WordIR.Op := [.bnot 10219]
def bytes10177 : Bytes := ("    let r000027ec: u32 = !r000027eb;\n" : String).toByteArray.data.toList
theorem checked10177 : bytes10177=statementBytes 10220 (op10177.map lower) ∧ bytes10177.length=37 := by core033_kernel_decide
def op10178 : List WordIR.Op := [.band 10214 10220]
def bytes10178 : Bytes := ("    let r000027ed: u32 = r000027e6 & r000027ec;\n" : String).toByteArray.data.toList
theorem checked10178 : bytes10178=statementBytes 10221 (op10178.map lower) ∧ bytes10178.length=48 := by core033_kernel_decide
def op10179 : List WordIR.Op := [.bxor 10209 10221]
def bytes10179 : Bytes := ("    let r000027ee: u32 = r000027e1 ^ r000027ed;\n" : String).toByteArray.data.toList
theorem checked10179 : bytes10179=statementBytes 10222 (op10179.map lower) ∧ bytes10179.length=48 := by core033_kernel_decide
def op10180 : List WordIR.Op := [.shr 10222 31]
def bytes10180 : Bytes := ("    let r000027ef: u32 = r000027ee >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10180 : bytes10180=statementBytes 10223 (op10180.map lower) ∧ bytes10180.length=54 := by core033_kernel_decide
def op10181 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10181 : Bytes := ("    let r000027f0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10181 : bytes10181=statementBytes 10224 (op10181.map lower) ∧ bytes10181.length=41 := by core033_kernel_decide
def op10182 : List WordIR.Op := [.bxor 10223 10224]
def bytes10182 : Bytes := ("    let r000027f1: u32 = r000027ef ^ r000027f0;\n" : String).toByteArray.data.toList
theorem checked10182 : bytes10182=statementBytes 10225 (op10182.map lower) ∧ bytes10182.length=48 := by core033_kernel_decide
def op10183 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10183 : Bytes := ("    let r000027f2: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10183 : bytes10183=statementBytes 10226 (op10183.map lower) ∧ bytes10183.length=41 := by core033_kernel_decide
def op10184 : List WordIR.Op := [.bxor 0 10226]
def bytes10184 : Bytes := ("    let r000027f3: u32 = r00000000 ^ r000027f2;\n" : String).toByteArray.data.toList
theorem checked10184 : bytes10184=statementBytes 10227 (op10184.map lower) ∧ bytes10184.length=48 := by core033_kernel_decide
def op10185 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10185 : Bytes := ("    let r000027f4: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10185 : bytes10185=statementBytes 10228 (op10185.map lower) ∧ bytes10185.length=41 := by core033_kernel_decide
def op10186 : List WordIR.Op := [.bnot 10228]
def bytes10186 : Bytes := ("    let r000027f5: u32 = !r000027f4;\n" : String).toByteArray.data.toList
theorem checked10186 : bytes10186=statementBytes 10229 (op10186.map lower) ∧ bytes10186.length=37 := by core033_kernel_decide
def op10187 : List WordIR.Op := [.band 10227 10229]
def bytes10187 : Bytes := ("    let r000027f6: u32 = r000027f3 & r000027f5;\n" : String).toByteArray.data.toList
theorem checked10187 : bytes10187=statementBytes 10230 (op10187.map lower) ∧ bytes10187.length=48 := by core033_kernel_decide
def op10188 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10188 : Bytes := ("    let r000027f7: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10188 : bytes10188=statementBytes 10231 (op10188.map lower) ∧ bytes10188.length=41 := by core033_kernel_decide
def op10189 : List WordIR.Op := [.bxor 0 10231]
def bytes10189 : Bytes := ("    let r000027f8: u32 = r00000000 ^ r000027f7;\n" : String).toByteArray.data.toList
theorem checked10189 : bytes10189=statementBytes 10232 (op10189.map lower) ∧ bytes10189.length=48 := by core033_kernel_decide
def op10190 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10190 : Bytes := ("    let r000027f9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10190 : bytes10190=statementBytes 10233 (op10190.map lower) ∧ bytes10190.length=41 := by core033_kernel_decide
def op10191 : List WordIR.Op := [.bnot 10233]
def bytes10191 : Bytes := ("    let r000027fa: u32 = !r000027f9;\n" : String).toByteArray.data.toList
theorem checked10191 : bytes10191=statementBytes 10234 (op10191.map lower) ∧ bytes10191.length=37 := by core033_kernel_decide
def op10192 : List WordIR.Op := [.bxor 10232 10234]
def bytes10192 : Bytes := ("    let r000027fb: u32 = r000027f8 ^ r000027fa;\n" : String).toByteArray.data.toList
theorem checked10192 : bytes10192=statementBytes 10235 (op10192.map lower) ∧ bytes10192.length=48 := by core033_kernel_decide
def op10193 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10193 : Bytes := ("    let r000027fc: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10193 : bytes10193=statementBytes 10236 (op10193.map lower) ∧ bytes10193.length=41 := by core033_kernel_decide
def op10194 : List WordIR.Op := [.bxor 0 10236]
def bytes10194 : Bytes := ("    let r000027fd: u32 = r00000000 ^ r000027fc;\n" : String).toByteArray.data.toList
theorem checked10194 : bytes10194=statementBytes 10237 (op10194.map lower) ∧ bytes10194.length=48 := by core033_kernel_decide
def op10195 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10195 : Bytes := ("    let r000027fe: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10195 : bytes10195=statementBytes 10238 (op10195.map lower) ∧ bytes10195.length=41 := by core033_kernel_decide
def op10196 : List WordIR.Op := [.bnot 10238]
def bytes10196 : Bytes := ("    let r000027ff: u32 = !r000027fe;\n" : String).toByteArray.data.toList
theorem checked10196 : bytes10196=statementBytes 10239 (op10196.map lower) ∧ bytes10196.length=37 := by core033_kernel_decide
def op10197 : List WordIR.Op := [.badd 10237 10239]
def bytes10197 : Bytes := ("    let r00002800: u32 = r000027fd.wrapping_add(r000027ff);\n" : String).toByteArray.data.toList
theorem checked10197 : bytes10197=statementBytes 10240 (op10197.map lower) ∧ bytes10197.length=60 := by core033_kernel_decide
def op10198 : List WordIR.Op := [.bnot 10240]
def bytes10198 : Bytes := ("    let r00002801: u32 = !r00002800;\n" : String).toByteArray.data.toList
theorem checked10198 : bytes10198=statementBytes 10241 (op10198.map lower) ∧ bytes10198.length=37 := by core033_kernel_decide
def op10199 : List WordIR.Op := [.band 10235 10241]
def bytes10199 : Bytes := ("    let r00002802: u32 = r000027fb & r00002801;\n" : String).toByteArray.data.toList
theorem checked10199 : bytes10199=statementBytes 10242 (op10199.map lower) ∧ bytes10199.length=48 := by core033_kernel_decide
def op10200 : List WordIR.Op := [.bxor 10230 10242]
def bytes10200 : Bytes := ("    let r00002803: u32 = r000027f6 ^ r00002802;\n" : String).toByteArray.data.toList
theorem checked10200 : bytes10200=statementBytes 10243 (op10200.map lower) ∧ bytes10200.length=48 := by core033_kernel_decide
def op10201 : List WordIR.Op := [.shr 10243 31]
def bytes10201 : Bytes := ("    let r00002804: u32 = r00002803 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10201 : bytes10201=statementBytes 10244 (op10201.map lower) ∧ bytes10201.length=54 := by core033_kernel_decide
def op10202 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10202 : Bytes := ("    let r00002805: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10202 : bytes10202=statementBytes 10245 (op10202.map lower) ∧ bytes10202.length=41 := by core033_kernel_decide
def op10203 : List WordIR.Op := [.bxor 10244 10245]
def bytes10203 : Bytes := ("    let r00002806: u32 = r00002804 ^ r00002805;\n" : String).toByteArray.data.toList
theorem checked10203 : bytes10203=statementBytes 10246 (op10203.map lower) ∧ bytes10203.length=48 := by core033_kernel_decide
def op10204 : List WordIR.Op := [.bnot 10246]
def bytes10204 : Bytes := ("    let r00002807: u32 = !r00002806;\n" : String).toByteArray.data.toList
theorem checked10204 : bytes10204=statementBytes 10247 (op10204.map lower) ∧ bytes10204.length=37 := by core033_kernel_decide
def op10205 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10205 : Bytes := ("    let r00002808: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10205 : bytes10205=statementBytes 10248 (op10205.map lower) ∧ bytes10205.length=41 := by core033_kernel_decide
def op10206 : List WordIR.Op := [.badd 10247 10248]
def bytes10206 : Bytes := ("    let r00002809: u32 = r00002807.wrapping_add(r00002808);\n" : String).toByteArray.data.toList
theorem checked10206 : bytes10206=statementBytes 10249 (op10206.map lower) ∧ bytes10206.length=60 := by core033_kernel_decide
def op10207 : List WordIR.Op := [.band 10249 10204]
def bytes10207 : Bytes := ("    let r0000280a: u32 = r00002809 & r000027dc;\n" : String).toByteArray.data.toList
theorem checked10207 : bytes10207=statementBytes 10250 (op10207.map lower) ∧ bytes10207.length=48 := by core033_kernel_decide
def op10208 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10208 : Bytes := ("    let r0000280b: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10208 : bytes10208=statementBytes 10251 (op10208.map lower) ∧ bytes10208.length=41 := by core033_kernel_decide
def op10209 : List WordIR.Op := [.bxor 0 10251]
def bytes10209 : Bytes := ("    let r0000280c: u32 = r00000000 ^ r0000280b;\n" : String).toByteArray.data.toList
theorem checked10209 : bytes10209=statementBytes 10252 (op10209.map lower) ∧ bytes10209.length=48 := by core033_kernel_decide
def op10210 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10210 : Bytes := ("    let r0000280d: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10210 : bytes10210=statementBytes 10253 (op10210.map lower) ∧ bytes10210.length=41 := by core033_kernel_decide
def op10211 : List WordIR.Op := [.bnot 10253]
def bytes10211 : Bytes := ("    let r0000280e: u32 = !r0000280d;\n" : String).toByteArray.data.toList
theorem checked10211 : bytes10211=statementBytes 10254 (op10211.map lower) ∧ bytes10211.length=37 := by core033_kernel_decide
def op10212 : List WordIR.Op := [.band 10252 10254]
def bytes10212 : Bytes := ("    let r0000280f: u32 = r0000280c & r0000280e;\n" : String).toByteArray.data.toList
theorem checked10212 : bytes10212=statementBytes 10255 (op10212.map lower) ∧ bytes10212.length=48 := by core033_kernel_decide
def op10213 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10213 : Bytes := ("    let r00002810: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10213 : bytes10213=statementBytes 10256 (op10213.map lower) ∧ bytes10213.length=41 := by core033_kernel_decide
def op10214 : List WordIR.Op := [.bxor 0 10256]
def bytes10214 : Bytes := ("    let r00002811: u32 = r00000000 ^ r00002810;\n" : String).toByteArray.data.toList
theorem checked10214 : bytes10214=statementBytes 10257 (op10214.map lower) ∧ bytes10214.length=48 := by core033_kernel_decide
def op10215 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10215 : Bytes := ("    let r00002812: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10215 : bytes10215=statementBytes 10258 (op10215.map lower) ∧ bytes10215.length=41 := by core033_kernel_decide
def op10216 : List WordIR.Op := [.bnot 10258]
def bytes10216 : Bytes := ("    let r00002813: u32 = !r00002812;\n" : String).toByteArray.data.toList
theorem checked10216 : bytes10216=statementBytes 10259 (op10216.map lower) ∧ bytes10216.length=37 := by core033_kernel_decide
def op10217 : List WordIR.Op := [.bxor 10257 10259]
def bytes10217 : Bytes := ("    let r00002814: u32 = r00002811 ^ r00002813;\n" : String).toByteArray.data.toList
theorem checked10217 : bytes10217=statementBytes 10260 (op10217.map lower) ∧ bytes10217.length=48 := by core033_kernel_decide
def op10218 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10218 : Bytes := ("    let r00002815: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10218 : bytes10218=statementBytes 10261 (op10218.map lower) ∧ bytes10218.length=41 := by core033_kernel_decide
def op10219 : List WordIR.Op := [.bxor 0 10261]
def bytes10219 : Bytes := ("    let r00002816: u32 = r00000000 ^ r00002815;\n" : String).toByteArray.data.toList
theorem checked10219 : bytes10219=statementBytes 10262 (op10219.map lower) ∧ bytes10219.length=48 := by core033_kernel_decide
def op10220 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10220 : Bytes := ("    let r00002817: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10220 : bytes10220=statementBytes 10263 (op10220.map lower) ∧ bytes10220.length=41 := by core033_kernel_decide
def op10221 : List WordIR.Op := [.bnot 10263]
def bytes10221 : Bytes := ("    let r00002818: u32 = !r00002817;\n" : String).toByteArray.data.toList
theorem checked10221 : bytes10221=statementBytes 10264 (op10221.map lower) ∧ bytes10221.length=37 := by core033_kernel_decide
def op10222 : List WordIR.Op := [.badd 10262 10264]
def bytes10222 : Bytes := ("    let r00002819: u32 = r00002816.wrapping_add(r00002818);\n" : String).toByteArray.data.toList
theorem checked10222 : bytes10222=statementBytes 10265 (op10222.map lower) ∧ bytes10222.length=60 := by core033_kernel_decide
def op10223 : List WordIR.Op := [.bnot 10265]
def bytes10223 : Bytes := ("    let r0000281a: u32 = !r00002819;\n" : String).toByteArray.data.toList
theorem checked10223 : bytes10223=statementBytes 10266 (op10223.map lower) ∧ bytes10223.length=37 := by core033_kernel_decide
def op10224 : List WordIR.Op := [.band 10260 10266]
def bytes10224 : Bytes := ("    let r0000281b: u32 = r00002814 & r0000281a;\n" : String).toByteArray.data.toList
theorem checked10224 : bytes10224=statementBytes 10267 (op10224.map lower) ∧ bytes10224.length=48 := by core033_kernel_decide
def op10225 : List WordIR.Op := [.bxor 10255 10267]
def bytes10225 : Bytes := ("    let r0000281c: u32 = r0000280f ^ r0000281b;\n" : String).toByteArray.data.toList
theorem checked10225 : bytes10225=statementBytes 10268 (op10225.map lower) ∧ bytes10225.length=48 := by core033_kernel_decide
def op10226 : List WordIR.Op := [.shr 10268 31]
def bytes10226 : Bytes := ("    let r0000281d: u32 = r0000281c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked10226 : bytes10226=statementBytes 10269 (op10226.map lower) ∧ bytes10226.length=54 := by core033_kernel_decide
def op10227 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10227 : Bytes := ("    let r0000281e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10227 : bytes10227=statementBytes 10270 (op10227.map lower) ∧ bytes10227.length=41 := by core033_kernel_decide
def op10228 : List WordIR.Op := [.bxor 10269 10270]
def bytes10228 : Bytes := ("    let r0000281f: u32 = r0000281d ^ r0000281e;\n" : String).toByteArray.data.toList
theorem checked10228 : bytes10228=statementBytes 10271 (op10228.map lower) ∧ bytes10228.length=48 := by core033_kernel_decide
def op10229 : List WordIR.Op := [.bnot 10271]
def bytes10229 : Bytes := ("    let r00002820: u32 = !r0000281f;\n" : String).toByteArray.data.toList
theorem checked10229 : bytes10229=statementBytes 10272 (op10229.map lower) ∧ bytes10229.length=37 := by core033_kernel_decide
def op10230 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10230 : Bytes := ("    let r00002821: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10230 : bytes10230=statementBytes 10273 (op10230.map lower) ∧ bytes10230.length=41 := by core033_kernel_decide
def op10231 : List WordIR.Op := [.badd 10272 10273]
def bytes10231 : Bytes := ("    let r00002822: u32 = r00002820.wrapping_add(r00002821);\n" : String).toByteArray.data.toList
theorem checked10231 : bytes10231=statementBytes 10274 (op10231.map lower) ∧ bytes10231.length=60 := by core033_kernel_decide
def op10232 : List WordIR.Op := [.bnot 10274]
def bytes10232 : Bytes := ("    let r00002823: u32 = !r00002822;\n" : String).toByteArray.data.toList
theorem checked10232 : bytes10232=statementBytes 10275 (op10232.map lower) ∧ bytes10232.length=37 := by core033_kernel_decide
def op10233 : List WordIR.Op := [.band 10275 9342]
def bytes10233 : Bytes := ("    let r00002824: u32 = r00002823 & r0000247e;\n" : String).toByteArray.data.toList
theorem checked10233 : bytes10233=statementBytes 10276 (op10233.map lower) ∧ bytes10233.length=48 := by core033_kernel_decide
def op10234 : List WordIR.Op := [.bxor 10250 10276]
def bytes10234 : Bytes := ("    let r00002825: u32 = r0000280a ^ r00002824;\n" : String).toByteArray.data.toList
theorem checked10234 : bytes10234=statementBytes 10277 (op10234.map lower) ∧ bytes10234.length=48 := by core033_kernel_decide
def op10235 : List WordIR.Op := [.literal (BitVec.ofNat 32 3)]
def bytes10235 : Bytes := ("    let r00002826: u32 = 0x00000003_u32;\n" : String).toByteArray.data.toList
theorem checked10235 : bytes10235=statementBytes 10278 (op10235.map lower) ∧ bytes10235.length=41 := by core033_kernel_decide
def op10236 : List WordIR.Op := [.bxor 0 10278]
def bytes10236 : Bytes := ("    let r00002827: u32 = r00000000 ^ r00002826;\n" : String).toByteArray.data.toList
theorem checked10236 : bytes10236=statementBytes 10279 (op10236.map lower) ∧ bytes10236.length=48 := by core033_kernel_decide
def op10237 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10237 : Bytes := ("    let r00002828: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10237 : bytes10237=statementBytes 10280 (op10237.map lower) ∧ bytes10237.length=41 := by core033_kernel_decide
def op10238 : List WordIR.Op := [.bnot 10280]
def bytes10238 : Bytes := ("    let r00002829: u32 = !r00002828;\n" : String).toByteArray.data.toList
theorem checked10238 : bytes10238=statementBytes 10281 (op10238.map lower) ∧ bytes10238.length=37 := by core033_kernel_decide
def op10239 : List WordIR.Op := [.band 10279 10281]
def bytes10239 : Bytes := ("    let r0000282a: u32 = r00002827 & r00002829;\n" : String).toByteArray.data.toList
theorem checked10239 : bytes10239=statementBytes 10282 (op10239.map lower) ∧ bytes10239.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10176,op10177,op10178,op10179,op10180,op10181,op10182,op10183,op10184,op10185,op10186,op10187,op10188,op10189,op10190,op10191,op10192,op10193,op10194,op10195,op10196,op10197,op10198,op10199,op10200,op10201,op10202,op10203,op10204,op10205,op10206,op10207,op10208,op10209,op10210,op10211,op10212,op10213,op10214,op10215,op10216,op10217,op10218,op10219,op10220,op10221,op10222,op10223,op10224,op10225,op10226,op10227,op10228,op10229,op10230,op10231,op10232,op10233,op10234,op10235,op10236,op10237,op10238,op10239]
def chunks : List Bytes := [bytes10176,bytes10177,bytes10178,bytes10179,bytes10180,bytes10181,bytes10182,bytes10183,bytes10184,bytes10185,bytes10186,bytes10187,bytes10188,bytes10189,bytes10190,bytes10191,bytes10192,bytes10193,bytes10194,bytes10195,bytes10196,bytes10197,bytes10198,bytes10199,bytes10200,bytes10201,bytes10202,bytes10203,bytes10204,bytes10205,bytes10206,bytes10207,bytes10208,bytes10209,bytes10210,bytes10211,bytes10212,bytes10213,bytes10214,bytes10215,bytes10216,bytes10217,bytes10218,bytes10219,bytes10220,bytes10221,bytes10222,bytes10223,bytes10224,bytes10225,bytes10226,bytes10227,bytes10228,bytes10229,bytes10230,bytes10231,bytes10232,bytes10233,bytes10234,bytes10235,bytes10236,bytes10237,bytes10238,bytes10239]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10219 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10176.1 (.cons _ _ _ _ _ checked10177.1 (.cons _ _ _ _ _ checked10178.1 (.cons _ _ _ _ _ checked10179.1 (.cons _ _ _ _ _ checked10180.1 (.cons _ _ _ _ _ checked10181.1 (.cons _ _ _ _ _ checked10182.1 (.cons _ _ _ _ _ checked10183.1 (.cons _ _ _ _ _ checked10184.1 (.cons _ _ _ _ _ checked10185.1 (.cons _ _ _ _ _ checked10186.1 (.cons _ _ _ _ _ checked10187.1 (.cons _ _ _ _ _ checked10188.1 (.cons _ _ _ _ _ checked10189.1 (.cons _ _ _ _ _ checked10190.1 (.cons _ _ _ _ _ checked10191.1 (.cons _ _ _ _ _ checked10192.1 (.cons _ _ _ _ _ checked10193.1 (.cons _ _ _ _ _ checked10194.1 (.cons _ _ _ _ _ checked10195.1 (.cons _ _ _ _ _ checked10196.1 (.cons _ _ _ _ _ checked10197.1 (.cons _ _ _ _ _ checked10198.1 (.cons _ _ _ _ _ checked10199.1 (.cons _ _ _ _ _ checked10200.1 (.cons _ _ _ _ _ checked10201.1 (.cons _ _ _ _ _ checked10202.1 (.cons _ _ _ _ _ checked10203.1 (.cons _ _ _ _ _ checked10204.1 (.cons _ _ _ _ _ checked10205.1 (.cons _ _ _ _ _ checked10206.1 (.cons _ _ _ _ _ checked10207.1 (.cons _ _ _ _ _ checked10208.1 (.cons _ _ _ _ _ checked10209.1 (.cons _ _ _ _ _ checked10210.1 (.cons _ _ _ _ _ checked10211.1 (.cons _ _ _ _ _ checked10212.1 (.cons _ _ _ _ _ checked10213.1 (.cons _ _ _ _ _ checked10214.1 (.cons _ _ _ _ _ checked10215.1 (.cons _ _ _ _ _ checked10216.1 (.cons _ _ _ _ _ checked10217.1 (.cons _ _ _ _ _ checked10218.1 (.cons _ _ _ _ _ checked10219.1 (.cons _ _ _ _ _ checked10220.1 (.cons _ _ _ _ _ checked10221.1 (.cons _ _ _ _ _ checked10222.1 (.cons _ _ _ _ _ checked10223.1 (.cons _ _ _ _ _ checked10224.1 (.cons _ _ _ _ _ checked10225.1 (.cons _ _ _ _ _ checked10226.1 (.cons _ _ _ _ _ checked10227.1 (.cons _ _ _ _ _ checked10228.1 (.cons _ _ _ _ _ checked10229.1 (.cons _ _ _ _ _ checked10230.1 (.cons _ _ _ _ _ checked10231.1 (.cons _ _ _ _ _ checked10232.1 (.cons _ _ _ _ _ checked10233.1 (.cons _ _ _ _ _ checked10234.1 (.cons _ _ _ _ _ checked10235.1 (.cons _ _ _ _ _ checked10236.1 (.cons _ _ _ _ _ checked10237.1 (.cons _ _ _ _ _ checked10238.1 (.cons _ _ _ _ _ checked10239.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10219 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2874 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10176.2,checked10177.2,checked10178.2,checked10179.2,checked10180.2,checked10181.2,checked10182.2,checked10183.2,checked10184.2,checked10185.2,checked10186.2,checked10187.2,checked10188.2,checked10189.2,checked10190.2,checked10191.2,checked10192.2,checked10193.2,checked10194.2,checked10195.2,checked10196.2,checked10197.2,checked10198.2,checked10199.2,checked10200.2,checked10201.2,checked10202.2,checked10203.2,checked10204.2,checked10205.2,checked10206.2,checked10207.2,checked10208.2,checked10209.2,checked10210.2,checked10211.2,checked10212.2,checked10213.2,checked10214.2,checked10215.2,checked10216.2,checked10217.2,checked10218.2,checked10219.2,checked10220.2,checked10221.2,checked10222.2,checked10223.2,checked10224.2,checked10225.2,checked10226.2,checked10227.2,checked10228.2,checked10229.2,checked10230.2,checked10231.2,checked10232.2,checked10233.2,checked10234.2,checked10235.2,checked10236.2,checked10237.2,checked10238.2,checked10239.2]
  decide
end ArtifactPathRoundDispatchGroup159
