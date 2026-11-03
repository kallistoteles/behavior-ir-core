import ActualAuthenticatedBranchRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactAuthenticatedBranchRoundGroup158
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op10112 : List WordIR.Op := [.bxor 10228 10229]
def bytes10112 : Bytes := ("    let r000027f6: u32 = r000027f4 ^ r000027f5;\n" : String).toByteArray.data.toList
theorem checked10112 : bytes10112=statementBytes 10230 (op10112.map lower) ∧ bytes10112.length=48 := by core033_kernel_decide
def op10113 : List WordIR.Op := [.rotr 10212 22]
def bytes10113 : Bytes := ("    let r000027f7: u32 = r000027e4.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked10113 : bytes10113=statementBytes 10231 (op10113.map lower) ∧ bytes10113.length=65 := by core033_kernel_decide
def op10114 : List WordIR.Op := [.bxor 10230 10231]
def bytes10114 : Bytes := ("    let r000027f8: u32 = r000027f6 ^ r000027f7;\n" : String).toByteArray.data.toList
theorem checked10114 : bytes10114=statementBytes 10232 (op10114.map lower) ∧ bytes10114.length=48 := by core033_kernel_decide
def op10115 : List WordIR.Op := [.band 10212 10185]
def bytes10115 : Bytes := ("    let r000027f9: u32 = r000027e4 & r000027c9;\n" : String).toByteArray.data.toList
theorem checked10115 : bytes10115=statementBytes 10233 (op10115.map lower) ∧ bytes10115.length=48 := by core033_kernel_decide
def op10116 : List WordIR.Op := [.band 10212 10158]
def bytes10116 : Bytes := ("    let r000027fa: u32 = r000027e4 & r000027ae;\n" : String).toByteArray.data.toList
theorem checked10116 : bytes10116=statementBytes 10234 (op10116.map lower) ∧ bytes10116.length=48 := by core033_kernel_decide
def op10117 : List WordIR.Op := [.bxor 10233 10234]
def bytes10117 : Bytes := ("    let r000027fb: u32 = r000027f9 ^ r000027fa;\n" : String).toByteArray.data.toList
theorem checked10117 : bytes10117=statementBytes 10235 (op10117.map lower) ∧ bytes10117.length=48 := by core033_kernel_decide
def op10118 : List WordIR.Op := [.band 10185 10158]
def bytes10118 : Bytes := ("    let r000027fc: u32 = r000027c9 & r000027ae;\n" : String).toByteArray.data.toList
theorem checked10118 : bytes10118=statementBytes 10236 (op10118.map lower) ∧ bytes10118.length=48 := by core033_kernel_decide
def op10119 : List WordIR.Op := [.bxor 10235 10236]
def bytes10119 : Bytes := ("    let r000027fd: u32 = r000027fb ^ r000027fc;\n" : String).toByteArray.data.toList
theorem checked10119 : bytes10119=statementBytes 10237 (op10119.map lower) ∧ bytes10119.length=48 := by core033_kernel_decide
def op10120 : List WordIR.Op := [.badd 10232 10237]
def bytes10120 : Bytes := ("    let r000027fe: u32 = r000027f8.wrapping_add(r000027fd);\n" : String).toByteArray.data.toList
theorem checked10120 : bytes10120=statementBytes 10238 (op10120.map lower) ∧ bytes10120.length=60 := by core033_kernel_decide
def op10121 : List WordIR.Op := [.badd 10227 10238]
def bytes10121 : Bytes := ("    let r000027ff: u32 = r000027f3.wrapping_add(r000027fe);\n" : String).toByteArray.data.toList
theorem checked10121 : bytes10121=statementBytes 10239 (op10121.map lower) ∧ bytes10121.length=60 := by core033_kernel_decide
def op10122 : List WordIR.Op := [.badd 10131 10227]
def bytes10122 : Bytes := ("    let r00002800: u32 = r00002793.wrapping_add(r000027f3);\n" : String).toByteArray.data.toList
theorem checked10122 : bytes10122=statementBytes 10240 (op10122.map lower) ∧ bytes10122.length=60 := by core033_kernel_decide
def op10123 : List WordIR.Op := [.rotr 10240 6]
def bytes10123 : Bytes := ("    let r00002801: u32 = r00002800.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked10123 : bytes10123=statementBytes 10241 (op10123.map lower) ∧ bytes10123.length=65 := by core033_kernel_decide
def op10124 : List WordIR.Op := [.rotr 10240 11]
def bytes10124 : Bytes := ("    let r00002802: u32 = r00002800.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked10124 : bytes10124=statementBytes 10242 (op10124.map lower) ∧ bytes10124.length=65 := by core033_kernel_decide
def op10125 : List WordIR.Op := [.bxor 10241 10242]
def bytes10125 : Bytes := ("    let r00002803: u32 = r00002801 ^ r00002802;\n" : String).toByteArray.data.toList
theorem checked10125 : bytes10125=statementBytes 10243 (op10125.map lower) ∧ bytes10125.length=48 := by core033_kernel_decide
def op10126 : List WordIR.Op := [.rotr 10240 25]
def bytes10126 : Bytes := ("    let r00002804: u32 = r00002800.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked10126 : bytes10126=statementBytes 10244 (op10126.map lower) ∧ bytes10126.length=65 := by core033_kernel_decide
def op10127 : List WordIR.Op := [.bxor 10243 10244]
def bytes10127 : Bytes := ("    let r00002805: u32 = r00002803 ^ r00002804;\n" : String).toByteArray.data.toList
theorem checked10127 : bytes10127=statementBytes 10245 (op10127.map lower) ∧ bytes10127.length=48 := by core033_kernel_decide
def op10128 : List WordIR.Op := [.badd 10159 10245]
def bytes10128 : Bytes := ("    let r00002806: u32 = r000027af.wrapping_add(r00002805);\n" : String).toByteArray.data.toList
theorem checked10128 : bytes10128=statementBytes 10246 (op10128.map lower) ∧ bytes10128.length=60 := by core033_kernel_decide
def op10129 : List WordIR.Op := [.band 10240 10213]
def bytes10129 : Bytes := ("    let r00002807: u32 = r00002800 & r000027e5;\n" : String).toByteArray.data.toList
theorem checked10129 : bytes10129=statementBytes 10247 (op10129.map lower) ∧ bytes10129.length=48 := by core033_kernel_decide
def op10130 : List WordIR.Op := [.bnot 10240]
def bytes10130 : Bytes := ("    let r00002808: u32 = !r00002800;\n" : String).toByteArray.data.toList
theorem checked10130 : bytes10130=statementBytes 10248 (op10130.map lower) ∧ bytes10130.length=37 := by core033_kernel_decide
def op10131 : List WordIR.Op := [.band 10248 10186]
def bytes10131 : Bytes := ("    let r00002809: u32 = r00002808 & r000027ca;\n" : String).toByteArray.data.toList
theorem checked10131 : bytes10131=statementBytes 10249 (op10131.map lower) ∧ bytes10131.length=48 := by core033_kernel_decide
def op10132 : List WordIR.Op := [.bxor 10247 10249]
def bytes10132 : Bytes := ("    let r0000280a: u32 = r00002807 ^ r00002809;\n" : String).toByteArray.data.toList
theorem checked10132 : bytes10132=statementBytes 10250 (op10132.map lower) ∧ bytes10132.length=48 := by core033_kernel_decide
def op10133 : List WordIR.Op := [.badd 10246 10250]
def bytes10133 : Bytes := ("    let r0000280b: u32 = r00002806.wrapping_add(r0000280a);\n" : String).toByteArray.data.toList
theorem checked10133 : bytes10133=statementBytes 10251 (op10133.map lower) ∧ bytes10133.length=60 := by core033_kernel_decide
def op10134 : List WordIR.Op := [.literal (BitVec.ofNat 32 1747873779)]
def bytes10134 : Bytes := ("    let r0000280c: u32 = 0x682e6ff3_u32;\n" : String).toByteArray.data.toList
theorem checked10134 : bytes10134=statementBytes 10252 (op10134.map lower) ∧ bytes10134.length=41 := by core033_kernel_decide
def op10135 : List WordIR.Op := [.badd 10251 10252]
def bytes10135 : Bytes := ("    let r0000280d: u32 = r0000280b.wrapping_add(r0000280c);\n" : String).toByteArray.data.toList
theorem checked10135 : bytes10135=statementBytes 10253 (op10135.map lower) ∧ bytes10135.length=60 := by core033_kernel_decide
def op10136 : List WordIR.Op := [.badd 10253 8651]
def bytes10136 : Bytes := ("    let r0000280e: u32 = r0000280d.wrapping_add(r000021cb);\n" : String).toByteArray.data.toList
theorem checked10136 : bytes10136=statementBytes 10254 (op10136.map lower) ∧ bytes10136.length=60 := by core033_kernel_decide
def op10137 : List WordIR.Op := [.rotr 10239 2]
def bytes10137 : Bytes := ("    let r0000280f: u32 = r000027ff.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked10137 : bytes10137=statementBytes 10255 (op10137.map lower) ∧ bytes10137.length=65 := by core033_kernel_decide
def op10138 : List WordIR.Op := [.rotr 10239 13]
def bytes10138 : Bytes := ("    let r00002810: u32 = r000027ff.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked10138 : bytes10138=statementBytes 10256 (op10138.map lower) ∧ bytes10138.length=65 := by core033_kernel_decide
def op10139 : List WordIR.Op := [.bxor 10255 10256]
def bytes10139 : Bytes := ("    let r00002811: u32 = r0000280f ^ r00002810;\n" : String).toByteArray.data.toList
theorem checked10139 : bytes10139=statementBytes 10257 (op10139.map lower) ∧ bytes10139.length=48 := by core033_kernel_decide
def op10140 : List WordIR.Op := [.rotr 10239 22]
def bytes10140 : Bytes := ("    let r00002812: u32 = r000027ff.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked10140 : bytes10140=statementBytes 10258 (op10140.map lower) ∧ bytes10140.length=65 := by core033_kernel_decide
def op10141 : List WordIR.Op := [.bxor 10257 10258]
def bytes10141 : Bytes := ("    let r00002813: u32 = r00002811 ^ r00002812;\n" : String).toByteArray.data.toList
theorem checked10141 : bytes10141=statementBytes 10259 (op10141.map lower) ∧ bytes10141.length=48 := by core033_kernel_decide
def op10142 : List WordIR.Op := [.band 10239 10212]
def bytes10142 : Bytes := ("    let r00002814: u32 = r000027ff & r000027e4;\n" : String).toByteArray.data.toList
theorem checked10142 : bytes10142=statementBytes 10260 (op10142.map lower) ∧ bytes10142.length=48 := by core033_kernel_decide
def op10143 : List WordIR.Op := [.band 10239 10185]
def bytes10143 : Bytes := ("    let r00002815: u32 = r000027ff & r000027c9;\n" : String).toByteArray.data.toList
theorem checked10143 : bytes10143=statementBytes 10261 (op10143.map lower) ∧ bytes10143.length=48 := by core033_kernel_decide
def op10144 : List WordIR.Op := [.bxor 10260 10261]
def bytes10144 : Bytes := ("    let r00002816: u32 = r00002814 ^ r00002815;\n" : String).toByteArray.data.toList
theorem checked10144 : bytes10144=statementBytes 10262 (op10144.map lower) ∧ bytes10144.length=48 := by core033_kernel_decide
def op10145 : List WordIR.Op := [.band 10212 10185]
def bytes10145 : Bytes := ("    let r00002817: u32 = r000027e4 & r000027c9;\n" : String).toByteArray.data.toList
theorem checked10145 : bytes10145=statementBytes 10263 (op10145.map lower) ∧ bytes10145.length=48 := by core033_kernel_decide
def op10146 : List WordIR.Op := [.bxor 10262 10263]
def bytes10146 : Bytes := ("    let r00002818: u32 = r00002816 ^ r00002817;\n" : String).toByteArray.data.toList
theorem checked10146 : bytes10146=statementBytes 10264 (op10146.map lower) ∧ bytes10146.length=48 := by core033_kernel_decide
def op10147 : List WordIR.Op := [.badd 10259 10264]
def bytes10147 : Bytes := ("    let r00002819: u32 = r00002813.wrapping_add(r00002818);\n" : String).toByteArray.data.toList
theorem checked10147 : bytes10147=statementBytes 10265 (op10147.map lower) ∧ bytes10147.length=60 := by core033_kernel_decide
def op10148 : List WordIR.Op := [.badd 10254 10265]
def bytes10148 : Bytes := ("    let r0000281a: u32 = r0000280e.wrapping_add(r00002819);\n" : String).toByteArray.data.toList
theorem checked10148 : bytes10148=statementBytes 10266 (op10148.map lower) ∧ bytes10148.length=60 := by core033_kernel_decide
def op10149 : List WordIR.Op := [.badd 10158 10254]
def bytes10149 : Bytes := ("    let r0000281b: u32 = r000027ae.wrapping_add(r0000280e);\n" : String).toByteArray.data.toList
theorem checked10149 : bytes10149=statementBytes 10267 (op10149.map lower) ∧ bytes10149.length=60 := by core033_kernel_decide
def op10150 : List WordIR.Op := [.rotr 10267 6]
def bytes10150 : Bytes := ("    let r0000281c: u32 = r0000281b.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked10150 : bytes10150=statementBytes 10268 (op10150.map lower) ∧ bytes10150.length=65 := by core033_kernel_decide
def op10151 : List WordIR.Op := [.rotr 10267 11]
def bytes10151 : Bytes := ("    let r0000281d: u32 = r0000281b.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked10151 : bytes10151=statementBytes 10269 (op10151.map lower) ∧ bytes10151.length=65 := by core033_kernel_decide
def op10152 : List WordIR.Op := [.bxor 10268 10269]
def bytes10152 : Bytes := ("    let r0000281e: u32 = r0000281c ^ r0000281d;\n" : String).toByteArray.data.toList
theorem checked10152 : bytes10152=statementBytes 10270 (op10152.map lower) ∧ bytes10152.length=48 := by core033_kernel_decide
def op10153 : List WordIR.Op := [.rotr 10267 25]
def bytes10153 : Bytes := ("    let r0000281f: u32 = r0000281b.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked10153 : bytes10153=statementBytes 10271 (op10153.map lower) ∧ bytes10153.length=65 := by core033_kernel_decide
def op10154 : List WordIR.Op := [.bxor 10270 10271]
def bytes10154 : Bytes := ("    let r00002820: u32 = r0000281e ^ r0000281f;\n" : String).toByteArray.data.toList
theorem checked10154 : bytes10154=statementBytes 10272 (op10154.map lower) ∧ bytes10154.length=48 := by core033_kernel_decide
def op10155 : List WordIR.Op := [.badd 10186 10272]
def bytes10155 : Bytes := ("    let r00002821: u32 = r000027ca.wrapping_add(r00002820);\n" : String).toByteArray.data.toList
theorem checked10155 : bytes10155=statementBytes 10273 (op10155.map lower) ∧ bytes10155.length=60 := by core033_kernel_decide
def op10156 : List WordIR.Op := [.band 10267 10240]
def bytes10156 : Bytes := ("    let r00002822: u32 = r0000281b & r00002800;\n" : String).toByteArray.data.toList
theorem checked10156 : bytes10156=statementBytes 10274 (op10156.map lower) ∧ bytes10156.length=48 := by core033_kernel_decide
def op10157 : List WordIR.Op := [.bnot 10267]
def bytes10157 : Bytes := ("    let r00002823: u32 = !r0000281b;\n" : String).toByteArray.data.toList
theorem checked10157 : bytes10157=statementBytes 10275 (op10157.map lower) ∧ bytes10157.length=37 := by core033_kernel_decide
def op10158 : List WordIR.Op := [.band 10275 10213]
def bytes10158 : Bytes := ("    let r00002824: u32 = r00002823 & r000027e5;\n" : String).toByteArray.data.toList
theorem checked10158 : bytes10158=statementBytes 10276 (op10158.map lower) ∧ bytes10158.length=48 := by core033_kernel_decide
def op10159 : List WordIR.Op := [.bxor 10274 10276]
def bytes10159 : Bytes := ("    let r00002825: u32 = r00002822 ^ r00002824;\n" : String).toByteArray.data.toList
theorem checked10159 : bytes10159=statementBytes 10277 (op10159.map lower) ∧ bytes10159.length=48 := by core033_kernel_decide
def op10160 : List WordIR.Op := [.badd 10273 10277]
def bytes10160 : Bytes := ("    let r00002826: u32 = r00002821.wrapping_add(r00002825);\n" : String).toByteArray.data.toList
theorem checked10160 : bytes10160=statementBytes 10278 (op10160.map lower) ∧ bytes10160.length=60 := by core033_kernel_decide
def op10161 : List WordIR.Op := [.literal (BitVec.ofNat 32 1955562222)]
def bytes10161 : Bytes := ("    let r00002827: u32 = 0x748f82ee_u32;\n" : String).toByteArray.data.toList
theorem checked10161 : bytes10161=statementBytes 10279 (op10161.map lower) ∧ bytes10161.length=41 := by core033_kernel_decide
def op10162 : List WordIR.Op := [.badd 10278 10279]
def bytes10162 : Bytes := ("    let r00002828: u32 = r00002826.wrapping_add(r00002827);\n" : String).toByteArray.data.toList
theorem checked10162 : bytes10162=statementBytes 10280 (op10162.map lower) ∧ bytes10162.length=60 := by core033_kernel_decide
def op10163 : List WordIR.Op := [.badd 10280 8664]
def bytes10163 : Bytes := ("    let r00002829: u32 = r00002828.wrapping_add(r000021d8);\n" : String).toByteArray.data.toList
theorem checked10163 : bytes10163=statementBytes 10281 (op10163.map lower) ∧ bytes10163.length=60 := by core033_kernel_decide
def op10164 : List WordIR.Op := [.rotr 10266 2]
def bytes10164 : Bytes := ("    let r0000282a: u32 = r0000281a.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked10164 : bytes10164=statementBytes 10282 (op10164.map lower) ∧ bytes10164.length=65 := by core033_kernel_decide
def op10165 : List WordIR.Op := [.rotr 10266 13]
def bytes10165 : Bytes := ("    let r0000282b: u32 = r0000281a.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked10165 : bytes10165=statementBytes 10283 (op10165.map lower) ∧ bytes10165.length=65 := by core033_kernel_decide
def op10166 : List WordIR.Op := [.bxor 10282 10283]
def bytes10166 : Bytes := ("    let r0000282c: u32 = r0000282a ^ r0000282b;\n" : String).toByteArray.data.toList
theorem checked10166 : bytes10166=statementBytes 10284 (op10166.map lower) ∧ bytes10166.length=48 := by core033_kernel_decide
def op10167 : List WordIR.Op := [.rotr 10266 22]
def bytes10167 : Bytes := ("    let r0000282d: u32 = r0000281a.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked10167 : bytes10167=statementBytes 10285 (op10167.map lower) ∧ bytes10167.length=65 := by core033_kernel_decide
def op10168 : List WordIR.Op := [.bxor 10284 10285]
def bytes10168 : Bytes := ("    let r0000282e: u32 = r0000282c ^ r0000282d;\n" : String).toByteArray.data.toList
theorem checked10168 : bytes10168=statementBytes 10286 (op10168.map lower) ∧ bytes10168.length=48 := by core033_kernel_decide
def op10169 : List WordIR.Op := [.band 10266 10239]
def bytes10169 : Bytes := ("    let r0000282f: u32 = r0000281a & r000027ff;\n" : String).toByteArray.data.toList
theorem checked10169 : bytes10169=statementBytes 10287 (op10169.map lower) ∧ bytes10169.length=48 := by core033_kernel_decide
def op10170 : List WordIR.Op := [.band 10266 10212]
def bytes10170 : Bytes := ("    let r00002830: u32 = r0000281a & r000027e4;\n" : String).toByteArray.data.toList
theorem checked10170 : bytes10170=statementBytes 10288 (op10170.map lower) ∧ bytes10170.length=48 := by core033_kernel_decide
def op10171 : List WordIR.Op := [.bxor 10287 10288]
def bytes10171 : Bytes := ("    let r00002831: u32 = r0000282f ^ r00002830;\n" : String).toByteArray.data.toList
theorem checked10171 : bytes10171=statementBytes 10289 (op10171.map lower) ∧ bytes10171.length=48 := by core033_kernel_decide
def op10172 : List WordIR.Op := [.band 10239 10212]
def bytes10172 : Bytes := ("    let r00002832: u32 = r000027ff & r000027e4;\n" : String).toByteArray.data.toList
theorem checked10172 : bytes10172=statementBytes 10290 (op10172.map lower) ∧ bytes10172.length=48 := by core033_kernel_decide
def op10173 : List WordIR.Op := [.bxor 10289 10290]
def bytes10173 : Bytes := ("    let r00002833: u32 = r00002831 ^ r00002832;\n" : String).toByteArray.data.toList
theorem checked10173 : bytes10173=statementBytes 10291 (op10173.map lower) ∧ bytes10173.length=48 := by core033_kernel_decide
def op10174 : List WordIR.Op := [.badd 10286 10291]
def bytes10174 : Bytes := ("    let r00002834: u32 = r0000282e.wrapping_add(r00002833);\n" : String).toByteArray.data.toList
theorem checked10174 : bytes10174=statementBytes 10292 (op10174.map lower) ∧ bytes10174.length=60 := by core033_kernel_decide
def op10175 : List WordIR.Op := [.badd 10281 10292]
def bytes10175 : Bytes := ("    let r00002835: u32 = r00002829.wrapping_add(r00002834);\n" : String).toByteArray.data.toList
theorem checked10175 : bytes10175=statementBytes 10293 (op10175.map lower) ∧ bytes10175.length=60 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op10112,op10113,op10114,op10115,op10116,op10117,op10118,op10119,op10120,op10121,op10122,op10123,op10124,op10125,op10126,op10127,op10128,op10129,op10130,op10131,op10132,op10133,op10134,op10135,op10136,op10137,op10138,op10139,op10140,op10141,op10142,op10143,op10144,op10145,op10146,op10147,op10148,op10149,op10150,op10151,op10152,op10153,op10154,op10155,op10156,op10157,op10158,op10159,op10160,op10161,op10162,op10163,op10164,op10165,op10166,op10167,op10168,op10169,op10170,op10171,op10172,op10173,op10174,op10175]
def chunks : List Bytes := [bytes10112,bytes10113,bytes10114,bytes10115,bytes10116,bytes10117,bytes10118,bytes10119,bytes10120,bytes10121,bytes10122,bytes10123,bytes10124,bytes10125,bytes10126,bytes10127,bytes10128,bytes10129,bytes10130,bytes10131,bytes10132,bytes10133,bytes10134,bytes10135,bytes10136,bytes10137,bytes10138,bytes10139,bytes10140,bytes10141,bytes10142,bytes10143,bytes10144,bytes10145,bytes10146,bytes10147,bytes10148,bytes10149,bytes10150,bytes10151,bytes10152,bytes10153,bytes10154,bytes10155,bytes10156,bytes10157,bytes10158,bytes10159,bytes10160,bytes10161,bytes10162,bytes10163,bytes10164,bytes10165,bytes10166,bytes10167,bytes10168,bytes10169,bytes10170,bytes10171,bytes10172,bytes10173,bytes10174,bytes10175]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 10230 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked10112.1 (.cons _ _ _ _ _ checked10113.1 (.cons _ _ _ _ _ checked10114.1 (.cons _ _ _ _ _ checked10115.1 (.cons _ _ _ _ _ checked10116.1 (.cons _ _ _ _ _ checked10117.1 (.cons _ _ _ _ _ checked10118.1 (.cons _ _ _ _ _ checked10119.1 (.cons _ _ _ _ _ checked10120.1 (.cons _ _ _ _ _ checked10121.1 (.cons _ _ _ _ _ checked10122.1 (.cons _ _ _ _ _ checked10123.1 (.cons _ _ _ _ _ checked10124.1 (.cons _ _ _ _ _ checked10125.1 (.cons _ _ _ _ _ checked10126.1 (.cons _ _ _ _ _ checked10127.1 (.cons _ _ _ _ _ checked10128.1 (.cons _ _ _ _ _ checked10129.1 (.cons _ _ _ _ _ checked10130.1 (.cons _ _ _ _ _ checked10131.1 (.cons _ _ _ _ _ checked10132.1 (.cons _ _ _ _ _ checked10133.1 (.cons _ _ _ _ _ checked10134.1 (.cons _ _ _ _ _ checked10135.1 (.cons _ _ _ _ _ checked10136.1 (.cons _ _ _ _ _ checked10137.1 (.cons _ _ _ _ _ checked10138.1 (.cons _ _ _ _ _ checked10139.1 (.cons _ _ _ _ _ checked10140.1 (.cons _ _ _ _ _ checked10141.1 (.cons _ _ _ _ _ checked10142.1 (.cons _ _ _ _ _ checked10143.1 (.cons _ _ _ _ _ checked10144.1 (.cons _ _ _ _ _ checked10145.1 (.cons _ _ _ _ _ checked10146.1 (.cons _ _ _ _ _ checked10147.1 (.cons _ _ _ _ _ checked10148.1 (.cons _ _ _ _ _ checked10149.1 (.cons _ _ _ _ _ checked10150.1 (.cons _ _ _ _ _ checked10151.1 (.cons _ _ _ _ _ checked10152.1 (.cons _ _ _ _ _ checked10153.1 (.cons _ _ _ _ _ checked10154.1 (.cons _ _ _ _ _ checked10155.1 (.cons _ _ _ _ _ checked10156.1 (.cons _ _ _ _ _ checked10157.1 (.cons _ _ _ _ _ checked10158.1 (.cons _ _ _ _ _ checked10159.1 (.cons _ _ _ _ _ checked10160.1 (.cons _ _ _ _ _ checked10161.1 (.cons _ _ _ _ _ checked10162.1 (.cons _ _ _ _ _ checked10163.1 (.cons _ _ _ _ _ checked10164.1 (.cons _ _ _ _ _ checked10165.1 (.cons _ _ _ _ _ checked10166.1 (.cons _ _ _ _ _ checked10167.1 (.cons _ _ _ _ _ checked10168.1 (.cons _ _ _ _ _ checked10169.1 (.cons _ _ _ _ _ checked10170.1 (.cons _ _ _ _ _ checked10171.1 (.cons _ _ _ _ _ checked10172.1 (.cons _ _ _ _ _ checked10173.1 (.cons _ _ _ _ _ checked10174.1 (.cons _ _ _ _ _ checked10175.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 10230 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3449 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked10112.2,checked10113.2,checked10114.2,checked10115.2,checked10116.2,checked10117.2,checked10118.2,checked10119.2,checked10120.2,checked10121.2,checked10122.2,checked10123.2,checked10124.2,checked10125.2,checked10126.2,checked10127.2,checked10128.2,checked10129.2,checked10130.2,checked10131.2,checked10132.2,checked10133.2,checked10134.2,checked10135.2,checked10136.2,checked10137.2,checked10138.2,checked10139.2,checked10140.2,checked10141.2,checked10142.2,checked10143.2,checked10144.2,checked10145.2,checked10146.2,checked10147.2,checked10148.2,checked10149.2,checked10150.2,checked10151.2,checked10152.2,checked10153.2,checked10154.2,checked10155.2,checked10156.2,checked10157.2,checked10158.2,checked10159.2,checked10160.2,checked10161.2,checked10162.2,checked10163.2,checked10164.2,checked10165.2,checked10166.2,checked10167.2,checked10168.2,checked10169.2,checked10170.2,checked10171.2,checked10172.2,checked10173.2,checked10174.2,checked10175.2]
  decide
end ArtifactAuthenticatedBranchRoundGroup158
