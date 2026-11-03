import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup159
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10176 : List WordIR.Op := [.bnot 9926]
def bytes10176 : Bytes := ("    let r00002820: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10176 : bytes10176=statementBytes 10272 (op10176.map lower) ∧ bytes10176.length=37 := by core033_kernel_decide
def op10177 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10177 : Bytes := ("    let r00002821: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10177 : bytes10177=statementBytes 10273 (op10177.map lower) ∧ bytes10177.length=41 := by core033_kernel_decide
def op10178 : List WordIR.Op := [.badd 10272 10273]
def bytes10178 : Bytes := ("    let r00002822: u32 = r00002820.wrapping_add(r00002821);\n" : String).toByteArray.data.toList
theorem checked10178 : bytes10178=statementBytes 10274 (op10178.map lower) ∧ bytes10178.length=60 := by core033_kernel_decide
def op10179 : List WordIR.Op := [.bnot 10274]
def bytes10179 : Bytes := ("    let r00002823: u32 = !r00002822;\n" : String).toByteArray.data.toList
theorem checked10179 : bytes10179=statementBytes 10275 (op10179.map lower) ∧ bytes10179.length=37 := by core033_kernel_decide
def op10180 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10180 : Bytes := ("    let r00002824: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10180 : bytes10180=statementBytes 10276 (op10180.map lower) ∧ bytes10180.length=41 := by core033_kernel_decide
def op10181 : List WordIR.Op := [.band 10275 10276]
def bytes10181 : Bytes := ("    let r00002825: u32 = r00002823 & r00002824;\n" : String).toByteArray.data.toList
theorem checked10181 : bytes10181=statementBytes 10277 (op10181.map lower) ∧ bytes10181.length=48 := by core033_kernel_decide
def op10182 : List WordIR.Op := [.bxor 10271 10277]
def bytes10182 : Bytes := ("    let r00002826: u32 = r0000281f ^ r00002825;\n" : String).toByteArray.data.toList
theorem checked10182 : bytes10182=statementBytes 10278 (op10182.map lower) ∧ bytes10182.length=48 := by core033_kernel_decide
def op10183 : List WordIR.Op := [.bnot 9926]
def bytes10183 : Bytes := ("    let r00002827: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10183 : bytes10183=statementBytes 10279 (op10183.map lower) ∧ bytes10183.length=37 := by core033_kernel_decide
def op10184 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10184 : Bytes := ("    let r00002828: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10184 : bytes10184=statementBytes 10280 (op10184.map lower) ∧ bytes10184.length=41 := by core033_kernel_decide
def op10185 : List WordIR.Op := [.badd 10279 10280]
def bytes10185 : Bytes := ("    let r00002829: u32 = r00002827.wrapping_add(r00002828);\n" : String).toByteArray.data.toList
theorem checked10185 : bytes10185=statementBytes 10281 (op10185.map lower) ∧ bytes10185.length=60 := by core033_kernel_decide
def op10186 : List WordIR.Op := [.band 10281 45]
def bytes10186 : Bytes := ("    let r0000282a: u32 = r00002829 & r0000002d;\n" : String).toByteArray.data.toList
theorem checked10186 : bytes10186=statementBytes 10282 (op10186.map lower) ∧ bytes10186.length=48 := by core033_kernel_decide
def op10187 : List WordIR.Op := [.bnot 9926]
def bytes10187 : Bytes := ("    let r0000282b: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10187 : bytes10187=statementBytes 10283 (op10187.map lower) ∧ bytes10187.length=37 := by core033_kernel_decide
def op10188 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10188 : Bytes := ("    let r0000282c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10188 : bytes10188=statementBytes 10284 (op10188.map lower) ∧ bytes10188.length=41 := by core033_kernel_decide
def op10189 : List WordIR.Op := [.badd 10283 10284]
def bytes10189 : Bytes := ("    let r0000282d: u32 = r0000282b.wrapping_add(r0000282c);\n" : String).toByteArray.data.toList
theorem checked10189 : bytes10189=statementBytes 10285 (op10189.map lower) ∧ bytes10189.length=60 := by core033_kernel_decide
def op10190 : List WordIR.Op := [.bnot 10285]
def bytes10190 : Bytes := ("    let r0000282e: u32 = !r0000282d;\n" : String).toByteArray.data.toList
theorem checked10190 : bytes10190=statementBytes 10286 (op10190.map lower) ∧ bytes10190.length=37 := by core033_kernel_decide
def op10191 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10191 : Bytes := ("    let r0000282f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10191 : bytes10191=statementBytes 10287 (op10191.map lower) ∧ bytes10191.length=41 := by core033_kernel_decide
def op10192 : List WordIR.Op := [.band 10286 10287]
def bytes10192 : Bytes := ("    let r00002830: u32 = r0000282e & r0000282f;\n" : String).toByteArray.data.toList
theorem checked10192 : bytes10192=statementBytes 10288 (op10192.map lower) ∧ bytes10192.length=48 := by core033_kernel_decide
def op10193 : List WordIR.Op := [.bxor 10282 10288]
def bytes10193 : Bytes := ("    let r00002831: u32 = r0000282a ^ r00002830;\n" : String).toByteArray.data.toList
theorem checked10193 : bytes10193=statementBytes 10289 (op10193.map lower) ∧ bytes10193.length=48 := by core033_kernel_decide
def op10194 : List WordIR.Op := [.bnot 9926]
def bytes10194 : Bytes := ("    let r00002832: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10194 : bytes10194=statementBytes 10290 (op10194.map lower) ∧ bytes10194.length=37 := by core033_kernel_decide
def op10195 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10195 : Bytes := ("    let r00002833: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10195 : bytes10195=statementBytes 10291 (op10195.map lower) ∧ bytes10195.length=41 := by core033_kernel_decide
def op10196 : List WordIR.Op := [.badd 10290 10291]
def bytes10196 : Bytes := ("    let r00002834: u32 = r00002832.wrapping_add(r00002833);\n" : String).toByteArray.data.toList
theorem checked10196 : bytes10196=statementBytes 10292 (op10196.map lower) ∧ bytes10196.length=60 := by core033_kernel_decide
def op10197 : List WordIR.Op := [.band 10292 562]
def bytes10197 : Bytes := ("    let r00002835: u32 = r00002834 & r00000232;\n" : String).toByteArray.data.toList
theorem checked10197 : bytes10197=statementBytes 10293 (op10197.map lower) ∧ bytes10197.length=48 := by core033_kernel_decide
def op10198 : List WordIR.Op := [.bnot 9926]
def bytes10198 : Bytes := ("    let r00002836: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10198 : bytes10198=statementBytes 10294 (op10198.map lower) ∧ bytes10198.length=37 := by core033_kernel_decide
def op10199 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10199 : Bytes := ("    let r00002837: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10199 : bytes10199=statementBytes 10295 (op10199.map lower) ∧ bytes10199.length=41 := by core033_kernel_decide
def op10200 : List WordIR.Op := [.badd 10294 10295]
def bytes10200 : Bytes := ("    let r00002838: u32 = r00002836.wrapping_add(r00002837);\n" : String).toByteArray.data.toList
theorem checked10200 : bytes10200=statementBytes 10296 (op10200.map lower) ∧ bytes10200.length=60 := by core033_kernel_decide
def op10201 : List WordIR.Op := [.bnot 10296]
def bytes10201 : Bytes := ("    let r00002839: u32 = !r00002838;\n" : String).toByteArray.data.toList
theorem checked10201 : bytes10201=statementBytes 10297 (op10201.map lower) ∧ bytes10201.length=37 := by core033_kernel_decide
def op10202 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10202 : Bytes := ("    let r0000283a: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10202 : bytes10202=statementBytes 10298 (op10202.map lower) ∧ bytes10202.length=41 := by core033_kernel_decide
def op10203 : List WordIR.Op := [.band 10297 10298]
def bytes10203 : Bytes := ("    let r0000283b: u32 = r00002839 & r0000283a;\n" : String).toByteArray.data.toList
theorem checked10203 : bytes10203=statementBytes 10299 (op10203.map lower) ∧ bytes10203.length=48 := by core033_kernel_decide
def op10204 : List WordIR.Op := [.bxor 10293 10299]
def bytes10204 : Bytes := ("    let r0000283c: u32 = r00002835 ^ r0000283b;\n" : String).toByteArray.data.toList
theorem checked10204 : bytes10204=statementBytes 10300 (op10204.map lower) ∧ bytes10204.length=48 := by core033_kernel_decide
def op10205 : List WordIR.Op := [.bnot 9926]
def bytes10205 : Bytes := ("    let r0000283d: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10205 : bytes10205=statementBytes 10301 (op10205.map lower) ∧ bytes10205.length=37 := by core033_kernel_decide
def op10206 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10206 : Bytes := ("    let r0000283e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10206 : bytes10206=statementBytes 10302 (op10206.map lower) ∧ bytes10206.length=41 := by core033_kernel_decide
def op10207 : List WordIR.Op := [.badd 10301 10302]
def bytes10207 : Bytes := ("    let r0000283f: u32 = r0000283d.wrapping_add(r0000283e);\n" : String).toByteArray.data.toList
theorem checked10207 : bytes10207=statementBytes 10303 (op10207.map lower) ∧ bytes10207.length=60 := by core033_kernel_decide
def op10208 : List WordIR.Op := [.band 10303 46]
def bytes10208 : Bytes := ("    let r00002840: u32 = r0000283f & r0000002e;\n" : String).toByteArray.data.toList
theorem checked10208 : bytes10208=statementBytes 10304 (op10208.map lower) ∧ bytes10208.length=48 := by core033_kernel_decide
def op10209 : List WordIR.Op := [.bnot 9926]
def bytes10209 : Bytes := ("    let r00002841: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10209 : bytes10209=statementBytes 10305 (op10209.map lower) ∧ bytes10209.length=37 := by core033_kernel_decide
def op10210 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10210 : Bytes := ("    let r00002842: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10210 : bytes10210=statementBytes 10306 (op10210.map lower) ∧ bytes10210.length=41 := by core033_kernel_decide
def op10211 : List WordIR.Op := [.badd 10305 10306]
def bytes10211 : Bytes := ("    let r00002843: u32 = r00002841.wrapping_add(r00002842);\n" : String).toByteArray.data.toList
theorem checked10211 : bytes10211=statementBytes 10307 (op10211.map lower) ∧ bytes10211.length=60 := by core033_kernel_decide
def op10212 : List WordIR.Op := [.bnot 10307]
def bytes10212 : Bytes := ("    let r00002844: u32 = !r00002843;\n" : String).toByteArray.data.toList
theorem checked10212 : bytes10212=statementBytes 10308 (op10212.map lower) ∧ bytes10212.length=37 := by core033_kernel_decide
def op10213 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10213 : Bytes := ("    let r00002845: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10213 : bytes10213=statementBytes 10309 (op10213.map lower) ∧ bytes10213.length=41 := by core033_kernel_decide
def op10214 : List WordIR.Op := [.band 10308 10309]
def bytes10214 : Bytes := ("    let r00002846: u32 = r00002844 & r00002845;\n" : String).toByteArray.data.toList
theorem checked10214 : bytes10214=statementBytes 10310 (op10214.map lower) ∧ bytes10214.length=48 := by core033_kernel_decide
def op10215 : List WordIR.Op := [.bxor 10304 10310]
def bytes10215 : Bytes := ("    let r00002847: u32 = r00002840 ^ r00002846;\n" : String).toByteArray.data.toList
theorem checked10215 : bytes10215=statementBytes 10311 (op10215.map lower) ∧ bytes10215.length=48 := by core033_kernel_decide
def op10216 : List WordIR.Op := [.bnot 9926]
def bytes10216 : Bytes := ("    let r00002848: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10216 : bytes10216=statementBytes 10312 (op10216.map lower) ∧ bytes10216.length=37 := by core033_kernel_decide
def op10217 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10217 : Bytes := ("    let r00002849: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10217 : bytes10217=statementBytes 10313 (op10217.map lower) ∧ bytes10217.length=41 := by core033_kernel_decide
def op10218 : List WordIR.Op := [.badd 10312 10313]
def bytes10218 : Bytes := ("    let r0000284a: u32 = r00002848.wrapping_add(r00002849);\n" : String).toByteArray.data.toList
theorem checked10218 : bytes10218=statementBytes 10314 (op10218.map lower) ∧ bytes10218.length=60 := by core033_kernel_decide
def op10219 : List WordIR.Op := [.band 10314 47]
def bytes10219 : Bytes := ("    let r0000284b: u32 = r0000284a & r0000002f;\n" : String).toByteArray.data.toList
theorem checked10219 : bytes10219=statementBytes 10315 (op10219.map lower) ∧ bytes10219.length=48 := by core033_kernel_decide
def op10220 : List WordIR.Op := [.bnot 9926]
def bytes10220 : Bytes := ("    let r0000284c: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10220 : bytes10220=statementBytes 10316 (op10220.map lower) ∧ bytes10220.length=37 := by core033_kernel_decide
def op10221 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10221 : Bytes := ("    let r0000284d: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10221 : bytes10221=statementBytes 10317 (op10221.map lower) ∧ bytes10221.length=41 := by core033_kernel_decide
def op10222 : List WordIR.Op := [.badd 10316 10317]
def bytes10222 : Bytes := ("    let r0000284e: u32 = r0000284c.wrapping_add(r0000284d);\n" : String).toByteArray.data.toList
theorem checked10222 : bytes10222=statementBytes 10318 (op10222.map lower) ∧ bytes10222.length=60 := by core033_kernel_decide
def op10223 : List WordIR.Op := [.bnot 10318]
def bytes10223 : Bytes := ("    let r0000284f: u32 = !r0000284e;\n" : String).toByteArray.data.toList
theorem checked10223 : bytes10223=statementBytes 10319 (op10223.map lower) ∧ bytes10223.length=37 := by core033_kernel_decide
def op10224 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10224 : Bytes := ("    let r00002850: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10224 : bytes10224=statementBytes 10320 (op10224.map lower) ∧ bytes10224.length=41 := by core033_kernel_decide
def op10225 : List WordIR.Op := [.band 10319 10320]
def bytes10225 : Bytes := ("    let r00002851: u32 = r0000284f & r00002850;\n" : String).toByteArray.data.toList
theorem checked10225 : bytes10225=statementBytes 10321 (op10225.map lower) ∧ bytes10225.length=48 := by core033_kernel_decide
def op10226 : List WordIR.Op := [.bxor 10315 10321]
def bytes10226 : Bytes := ("    let r00002852: u32 = r0000284b ^ r00002851;\n" : String).toByteArray.data.toList
theorem checked10226 : bytes10226=statementBytes 10322 (op10226.map lower) ∧ bytes10226.length=48 := by core033_kernel_decide
def op10227 : List WordIR.Op := [.bnot 9926]
def bytes10227 : Bytes := ("    let r00002853: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10227 : bytes10227=statementBytes 10323 (op10227.map lower) ∧ bytes10227.length=37 := by core033_kernel_decide
def op10228 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10228 : Bytes := ("    let r00002854: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10228 : bytes10228=statementBytes 10324 (op10228.map lower) ∧ bytes10228.length=41 := by core033_kernel_decide
def op10229 : List WordIR.Op := [.badd 10323 10324]
def bytes10229 : Bytes := ("    let r00002855: u32 = r00002853.wrapping_add(r00002854);\n" : String).toByteArray.data.toList
theorem checked10229 : bytes10229=statementBytes 10325 (op10229.map lower) ∧ bytes10229.length=60 := by core033_kernel_decide
def op10230 : List WordIR.Op := [.band 10325 48]
def bytes10230 : Bytes := ("    let r00002856: u32 = r00002855 & r00000030;\n" : String).toByteArray.data.toList
theorem checked10230 : bytes10230=statementBytes 10326 (op10230.map lower) ∧ bytes10230.length=48 := by core033_kernel_decide
def op10231 : List WordIR.Op := [.bnot 9926]
def bytes10231 : Bytes := ("    let r00002857: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10231 : bytes10231=statementBytes 10327 (op10231.map lower) ∧ bytes10231.length=37 := by core033_kernel_decide
def op10232 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10232 : Bytes := ("    let r00002858: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10232 : bytes10232=statementBytes 10328 (op10232.map lower) ∧ bytes10232.length=41 := by core033_kernel_decide
def op10233 : List WordIR.Op := [.badd 10327 10328]
def bytes10233 : Bytes := ("    let r00002859: u32 = r00002857.wrapping_add(r00002858);\n" : String).toByteArray.data.toList
theorem checked10233 : bytes10233=statementBytes 10329 (op10233.map lower) ∧ bytes10233.length=60 := by core033_kernel_decide
def op10234 : List WordIR.Op := [.bnot 10329]
def bytes10234 : Bytes := ("    let r0000285a: u32 = !r00002859;\n" : String).toByteArray.data.toList
theorem checked10234 : bytes10234=statementBytes 10330 (op10234.map lower) ∧ bytes10234.length=37 := by core033_kernel_decide
def op10235 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes10235 : Bytes := ("    let r0000285b: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked10235 : bytes10235=statementBytes 10331 (op10235.map lower) ∧ bytes10235.length=41 := by core033_kernel_decide
def op10236 : List WordIR.Op := [.band 10330 10331]
def bytes10236 : Bytes := ("    let r0000285c: u32 = r0000285a & r0000285b;\n" : String).toByteArray.data.toList
theorem checked10236 : bytes10236=statementBytes 10332 (op10236.map lower) ∧ bytes10236.length=48 := by core033_kernel_decide
def op10237 : List WordIR.Op := [.bxor 10326 10332]
def bytes10237 : Bytes := ("    let r0000285d: u32 = r00002856 ^ r0000285c;\n" : String).toByteArray.data.toList
theorem checked10237 : bytes10237=statementBytes 10333 (op10237.map lower) ∧ bytes10237.length=48 := by core033_kernel_decide
def op10238 : List WordIR.Op := [.bnot 9926]
def bytes10238 : Bytes := ("    let r0000285e: u32 = !r000026c6;\n" : String).toByteArray.data.toList
theorem checked10238 : bytes10238=statementBytes 10334 (op10238.map lower) ∧ bytes10238.length=37 := by core033_kernel_decide
def op10239 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes10239 : Bytes := ("    let r0000285f: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked10239 : bytes10239=statementBytes 10335 (op10239.map lower) ∧ bytes10239.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10176,op10177,op10178,op10179,op10180,op10181,op10182,op10183,op10184,op10185,op10186,op10187,op10188,op10189,op10190,op10191,op10192,op10193,op10194,op10195,op10196,op10197,op10198,op10199,op10200,op10201,op10202,op10203,op10204,op10205,op10206,op10207,op10208,op10209,op10210,op10211,op10212,op10213,op10214,op10215,op10216,op10217,op10218,op10219,op10220,op10221,op10222,op10223,op10224,op10225,op10226,op10227,op10228,op10229,op10230,op10231,op10232,op10233,op10234,op10235,op10236,op10237,op10238,op10239]
def chunks : List Bytes := [bytes10176,bytes10177,bytes10178,bytes10179,bytes10180,bytes10181,bytes10182,bytes10183,bytes10184,bytes10185,bytes10186,bytes10187,bytes10188,bytes10189,bytes10190,bytes10191,bytes10192,bytes10193,bytes10194,bytes10195,bytes10196,bytes10197,bytes10198,bytes10199,bytes10200,bytes10201,bytes10202,bytes10203,bytes10204,bytes10205,bytes10206,bytes10207,bytes10208,bytes10209,bytes10210,bytes10211,bytes10212,bytes10213,bytes10214,bytes10215,bytes10216,bytes10217,bytes10218,bytes10219,bytes10220,bytes10221,bytes10222,bytes10223,bytes10224,bytes10225,bytes10226,bytes10227,bytes10228,bytes10229,bytes10230,bytes10231,bytes10232,bytes10233,bytes10234,bytes10235,bytes10236,bytes10237,bytes10238,bytes10239]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10272 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10176.1 (.cons _ _ _ _ _ checked10177.1 (.cons _ _ _ _ _ checked10178.1 (.cons _ _ _ _ _ checked10179.1 (.cons _ _ _ _ _ checked10180.1 (.cons _ _ _ _ _ checked10181.1 (.cons _ _ _ _ _ checked10182.1 (.cons _ _ _ _ _ checked10183.1 (.cons _ _ _ _ _ checked10184.1 (.cons _ _ _ _ _ checked10185.1 (.cons _ _ _ _ _ checked10186.1 (.cons _ _ _ _ _ checked10187.1 (.cons _ _ _ _ _ checked10188.1 (.cons _ _ _ _ _ checked10189.1 (.cons _ _ _ _ _ checked10190.1 (.cons _ _ _ _ _ checked10191.1 (.cons _ _ _ _ _ checked10192.1 (.cons _ _ _ _ _ checked10193.1 (.cons _ _ _ _ _ checked10194.1 (.cons _ _ _ _ _ checked10195.1 (.cons _ _ _ _ _ checked10196.1 (.cons _ _ _ _ _ checked10197.1 (.cons _ _ _ _ _ checked10198.1 (.cons _ _ _ _ _ checked10199.1 (.cons _ _ _ _ _ checked10200.1 (.cons _ _ _ _ _ checked10201.1 (.cons _ _ _ _ _ checked10202.1 (.cons _ _ _ _ _ checked10203.1 (.cons _ _ _ _ _ checked10204.1 (.cons _ _ _ _ _ checked10205.1 (.cons _ _ _ _ _ checked10206.1 (.cons _ _ _ _ _ checked10207.1 (.cons _ _ _ _ _ checked10208.1 (.cons _ _ _ _ _ checked10209.1 (.cons _ _ _ _ _ checked10210.1 (.cons _ _ _ _ _ checked10211.1 (.cons _ _ _ _ _ checked10212.1 (.cons _ _ _ _ _ checked10213.1 (.cons _ _ _ _ _ checked10214.1 (.cons _ _ _ _ _ checked10215.1 (.cons _ _ _ _ _ checked10216.1 (.cons _ _ _ _ _ checked10217.1 (.cons _ _ _ _ _ checked10218.1 (.cons _ _ _ _ _ checked10219.1 (.cons _ _ _ _ _ checked10220.1 (.cons _ _ _ _ _ checked10221.1 (.cons _ _ _ _ _ checked10222.1 (.cons _ _ _ _ _ checked10223.1 (.cons _ _ _ _ _ checked10224.1 (.cons _ _ _ _ _ checked10225.1 (.cons _ _ _ _ _ checked10226.1 (.cons _ _ _ _ _ checked10227.1 (.cons _ _ _ _ _ checked10228.1 (.cons _ _ _ _ _ checked10229.1 (.cons _ _ _ _ _ checked10230.1 (.cons _ _ _ _ _ checked10231.1 (.cons _ _ _ _ _ checked10232.1 (.cons _ _ _ _ _ checked10233.1 (.cons _ _ _ _ _ checked10234.1 (.cons _ _ _ _ _ checked10235.1 (.cons _ _ _ _ _ checked10236.1 (.cons _ _ _ _ _ checked10237.1 (.cons _ _ _ _ _ checked10238.1 (.cons _ _ _ _ _ checked10239.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10272 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2880 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10176.2,checked10177.2,checked10178.2,checked10179.2,checked10180.2,checked10181.2,checked10182.2,checked10183.2,checked10184.2,checked10185.2,checked10186.2,checked10187.2,checked10188.2,checked10189.2,checked10190.2,checked10191.2,checked10192.2,checked10193.2,checked10194.2,checked10195.2,checked10196.2,checked10197.2,checked10198.2,checked10199.2,checked10200.2,checked10201.2,checked10202.2,checked10203.2,checked10204.2,checked10205.2,checked10206.2,checked10207.2,checked10208.2,checked10209.2,checked10210.2,checked10211.2,checked10212.2,checked10213.2,checked10214.2,checked10215.2,checked10216.2,checked10217.2,checked10218.2,checked10219.2,checked10220.2,checked10221.2,checked10222.2,checked10223.2,checked10224.2,checked10225.2,checked10226.2,checked10227.2,checked10228.2,checked10229.2,checked10230.2,checked10231.2,checked10232.2,checked10233.2,checked10234.2,checked10235.2,checked10236.2,checked10237.2,checked10238.2,checked10239.2]
  decide
end ArtifactPairedPathRoundGroup159
