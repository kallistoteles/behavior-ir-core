import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup143
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9152 : List WordIR.Op := [.rotr 9232 2]
def bytes9152 : Bytes := ("    let r00002420: u32 = r00002410.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9152 : bytes9152=statementBytes 9248 (op9152.map lower) ∧ bytes9152.length=65 := by core033_kernel_decide
def op9153 : List WordIR.Op := [.rotr 9232 13]
def bytes9153 : Bytes := ("    let r00002421: u32 = r00002410.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9153 : bytes9153=statementBytes 9249 (op9153.map lower) ∧ bytes9153.length=65 := by core033_kernel_decide
def op9154 : List WordIR.Op := [.bxor 9248 9249]
def bytes9154 : Bytes := ("    let r00002422: u32 = r00002420 ^ r00002421;\n" : String).toByteArray.data.toList
theorem checked9154 : bytes9154=statementBytes 9250 (op9154.map lower) ∧ bytes9154.length=48 := by core033_kernel_decide
def op9155 : List WordIR.Op := [.rotr 9232 22]
def bytes9155 : Bytes := ("    let r00002423: u32 = r00002410.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9155 : bytes9155=statementBytes 9251 (op9155.map lower) ∧ bytes9155.length=65 := by core033_kernel_decide
def op9156 : List WordIR.Op := [.bxor 9250 9251]
def bytes9156 : Bytes := ("    let r00002424: u32 = r00002422 ^ r00002423;\n" : String).toByteArray.data.toList
theorem checked9156 : bytes9156=statementBytes 9252 (op9156.map lower) ∧ bytes9156.length=48 := by core033_kernel_decide
def op9157 : List WordIR.Op := [.band 9232 9205]
def bytes9157 : Bytes := ("    let r00002425: u32 = r00002410 & r000023f5;\n" : String).toByteArray.data.toList
theorem checked9157 : bytes9157=statementBytes 9253 (op9157.map lower) ∧ bytes9157.length=48 := by core033_kernel_decide
def op9158 : List WordIR.Op := [.band 9232 9178]
def bytes9158 : Bytes := ("    let r00002426: u32 = r00002410 & r000023da;\n" : String).toByteArray.data.toList
theorem checked9158 : bytes9158=statementBytes 9254 (op9158.map lower) ∧ bytes9158.length=48 := by core033_kernel_decide
def op9159 : List WordIR.Op := [.bxor 9253 9254]
def bytes9159 : Bytes := ("    let r00002427: u32 = r00002425 ^ r00002426;\n" : String).toByteArray.data.toList
theorem checked9159 : bytes9159=statementBytes 9255 (op9159.map lower) ∧ bytes9159.length=48 := by core033_kernel_decide
def op9160 : List WordIR.Op := [.band 9205 9178]
def bytes9160 : Bytes := ("    let r00002428: u32 = r000023f5 & r000023da;\n" : String).toByteArray.data.toList
theorem checked9160 : bytes9160=statementBytes 9256 (op9160.map lower) ∧ bytes9160.length=48 := by core033_kernel_decide
def op9161 : List WordIR.Op := [.bxor 9255 9256]
def bytes9161 : Bytes := ("    let r00002429: u32 = r00002427 ^ r00002428;\n" : String).toByteArray.data.toList
theorem checked9161 : bytes9161=statementBytes 9257 (op9161.map lower) ∧ bytes9161.length=48 := by core033_kernel_decide
def op9162 : List WordIR.Op := [.badd 9252 9257]
def bytes9162 : Bytes := ("    let r0000242a: u32 = r00002424.wrapping_add(r00002429);\n" : String).toByteArray.data.toList
theorem checked9162 : bytes9162=statementBytes 9258 (op9162.map lower) ∧ bytes9162.length=60 := by core033_kernel_decide
def op9163 : List WordIR.Op := [.badd 9247 9258]
def bytes9163 : Bytes := ("    let r0000242b: u32 = r0000241f.wrapping_add(r0000242a);\n" : String).toByteArray.data.toList
theorem checked9163 : bytes9163=statementBytes 9259 (op9163.map lower) ∧ bytes9163.length=60 := by core033_kernel_decide
def op9164 : List WordIR.Op := [.badd 9151 9247]
def bytes9164 : Bytes := ("    let r0000242c: u32 = r000023bf.wrapping_add(r0000241f);\n" : String).toByteArray.data.toList
theorem checked9164 : bytes9164=statementBytes 9260 (op9164.map lower) ∧ bytes9164.length=60 := by core033_kernel_decide
def op9165 : List WordIR.Op := [.rotr 9260 6]
def bytes9165 : Bytes := ("    let r0000242d: u32 = r0000242c.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9165 : bytes9165=statementBytes 9261 (op9165.map lower) ∧ bytes9165.length=65 := by core033_kernel_decide
def op9166 : List WordIR.Op := [.rotr 9260 11]
def bytes9166 : Bytes := ("    let r0000242e: u32 = r0000242c.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9166 : bytes9166=statementBytes 9262 (op9166.map lower) ∧ bytes9166.length=65 := by core033_kernel_decide
def op9167 : List WordIR.Op := [.bxor 9261 9262]
def bytes9167 : Bytes := ("    let r0000242f: u32 = r0000242d ^ r0000242e;\n" : String).toByteArray.data.toList
theorem checked9167 : bytes9167=statementBytes 9263 (op9167.map lower) ∧ bytes9167.length=48 := by core033_kernel_decide
def op9168 : List WordIR.Op := [.rotr 9260 25]
def bytes9168 : Bytes := ("    let r00002430: u32 = r0000242c.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9168 : bytes9168=statementBytes 9264 (op9168.map lower) ∧ bytes9168.length=65 := by core033_kernel_decide
def op9169 : List WordIR.Op := [.bxor 9263 9264]
def bytes9169 : Bytes := ("    let r00002431: u32 = r0000242f ^ r00002430;\n" : String).toByteArray.data.toList
theorem checked9169 : bytes9169=statementBytes 9265 (op9169.map lower) ∧ bytes9169.length=48 := by core033_kernel_decide
def op9170 : List WordIR.Op := [.badd 9179 9265]
def bytes9170 : Bytes := ("    let r00002432: u32 = r000023db.wrapping_add(r00002431);\n" : String).toByteArray.data.toList
theorem checked9170 : bytes9170=statementBytes 9266 (op9170.map lower) ∧ bytes9170.length=60 := by core033_kernel_decide
def op9171 : List WordIR.Op := [.band 9260 9233]
def bytes9171 : Bytes := ("    let r00002433: u32 = r0000242c & r00002411;\n" : String).toByteArray.data.toList
theorem checked9171 : bytes9171=statementBytes 9267 (op9171.map lower) ∧ bytes9171.length=48 := by core033_kernel_decide
def op9172 : List WordIR.Op := [.bnot 9260]
def bytes9172 : Bytes := ("    let r00002434: u32 = !r0000242c;\n" : String).toByteArray.data.toList
theorem checked9172 : bytes9172=statementBytes 9268 (op9172.map lower) ∧ bytes9172.length=37 := by core033_kernel_decide
def op9173 : List WordIR.Op := [.band 9268 9206]
def bytes9173 : Bytes := ("    let r00002435: u32 = r00002434 & r000023f6;\n" : String).toByteArray.data.toList
theorem checked9173 : bytes9173=statementBytes 9269 (op9173.map lower) ∧ bytes9173.length=48 := by core033_kernel_decide
def op9174 : List WordIR.Op := [.bxor 9267 9269]
def bytes9174 : Bytes := ("    let r00002436: u32 = r00002433 ^ r00002435;\n" : String).toByteArray.data.toList
theorem checked9174 : bytes9174=statementBytes 9270 (op9174.map lower) ∧ bytes9174.length=48 := by core033_kernel_decide
def op9175 : List WordIR.Op := [.badd 9266 9270]
def bytes9175 : Bytes := ("    let r00002437: u32 = r00002432.wrapping_add(r00002436);\n" : String).toByteArray.data.toList
theorem checked9175 : bytes9175=statementBytes 9271 (op9175.map lower) ∧ bytes9175.length=60 := by core033_kernel_decide
def op9176 : List WordIR.Op := [.literal (BitVec.ofNat 32 3516065817)]
def bytes9176 : Bytes := ("    let r00002438: u32 = 0xd192e819_u32;\n" : String).toByteArray.data.toList
theorem checked9176 : bytes9176=statementBytes 9272 (op9176.map lower) ∧ bytes9176.length=41 := by core033_kernel_decide
def op9177 : List WordIR.Op := [.badd 9271 9272]
def bytes9177 : Bytes := ("    let r00002439: u32 = r00002437.wrapping_add(r00002438);\n" : String).toByteArray.data.toList
theorem checked9177 : bytes9177=statementBytes 9273 (op9177.map lower) ∧ bytes9177.length=60 := by core033_kernel_decide
def op9178 : List WordIR.Op := [.badd 9273 7825]
def bytes9178 : Bytes := ("    let r0000243a: u32 = r00002439.wrapping_add(r00001e91);\n" : String).toByteArray.data.toList
theorem checked9178 : bytes9178=statementBytes 9274 (op9178.map lower) ∧ bytes9178.length=60 := by core033_kernel_decide
def op9179 : List WordIR.Op := [.rotr 9259 2]
def bytes9179 : Bytes := ("    let r0000243b: u32 = r0000242b.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9179 : bytes9179=statementBytes 9275 (op9179.map lower) ∧ bytes9179.length=65 := by core033_kernel_decide
def op9180 : List WordIR.Op := [.rotr 9259 13]
def bytes9180 : Bytes := ("    let r0000243c: u32 = r0000242b.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9180 : bytes9180=statementBytes 9276 (op9180.map lower) ∧ bytes9180.length=65 := by core033_kernel_decide
def op9181 : List WordIR.Op := [.bxor 9275 9276]
def bytes9181 : Bytes := ("    let r0000243d: u32 = r0000243b ^ r0000243c;\n" : String).toByteArray.data.toList
theorem checked9181 : bytes9181=statementBytes 9277 (op9181.map lower) ∧ bytes9181.length=48 := by core033_kernel_decide
def op9182 : List WordIR.Op := [.rotr 9259 22]
def bytes9182 : Bytes := ("    let r0000243e: u32 = r0000242b.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9182 : bytes9182=statementBytes 9278 (op9182.map lower) ∧ bytes9182.length=65 := by core033_kernel_decide
def op9183 : List WordIR.Op := [.bxor 9277 9278]
def bytes9183 : Bytes := ("    let r0000243f: u32 = r0000243d ^ r0000243e;\n" : String).toByteArray.data.toList
theorem checked9183 : bytes9183=statementBytes 9279 (op9183.map lower) ∧ bytes9183.length=48 := by core033_kernel_decide
def op9184 : List WordIR.Op := [.band 9259 9232]
def bytes9184 : Bytes := ("    let r00002440: u32 = r0000242b & r00002410;\n" : String).toByteArray.data.toList
theorem checked9184 : bytes9184=statementBytes 9280 (op9184.map lower) ∧ bytes9184.length=48 := by core033_kernel_decide
def op9185 : List WordIR.Op := [.band 9259 9205]
def bytes9185 : Bytes := ("    let r00002441: u32 = r0000242b & r000023f5;\n" : String).toByteArray.data.toList
theorem checked9185 : bytes9185=statementBytes 9281 (op9185.map lower) ∧ bytes9185.length=48 := by core033_kernel_decide
def op9186 : List WordIR.Op := [.bxor 9280 9281]
def bytes9186 : Bytes := ("    let r00002442: u32 = r00002440 ^ r00002441;\n" : String).toByteArray.data.toList
theorem checked9186 : bytes9186=statementBytes 9282 (op9186.map lower) ∧ bytes9186.length=48 := by core033_kernel_decide
def op9187 : List WordIR.Op := [.band 9232 9205]
def bytes9187 : Bytes := ("    let r00002443: u32 = r00002410 & r000023f5;\n" : String).toByteArray.data.toList
theorem checked9187 : bytes9187=statementBytes 9283 (op9187.map lower) ∧ bytes9187.length=48 := by core033_kernel_decide
def op9188 : List WordIR.Op := [.bxor 9282 9283]
def bytes9188 : Bytes := ("    let r00002444: u32 = r00002442 ^ r00002443;\n" : String).toByteArray.data.toList
theorem checked9188 : bytes9188=statementBytes 9284 (op9188.map lower) ∧ bytes9188.length=48 := by core033_kernel_decide
def op9189 : List WordIR.Op := [.badd 9279 9284]
def bytes9189 : Bytes := ("    let r00002445: u32 = r0000243f.wrapping_add(r00002444);\n" : String).toByteArray.data.toList
theorem checked9189 : bytes9189=statementBytes 9285 (op9189.map lower) ∧ bytes9189.length=60 := by core033_kernel_decide
def op9190 : List WordIR.Op := [.badd 9274 9285]
def bytes9190 : Bytes := ("    let r00002446: u32 = r0000243a.wrapping_add(r00002445);\n" : String).toByteArray.data.toList
theorem checked9190 : bytes9190=statementBytes 9286 (op9190.map lower) ∧ bytes9190.length=60 := by core033_kernel_decide
def op9191 : List WordIR.Op := [.badd 9178 9274]
def bytes9191 : Bytes := ("    let r00002447: u32 = r000023da.wrapping_add(r0000243a);\n" : String).toByteArray.data.toList
theorem checked9191 : bytes9191=statementBytes 9287 (op9191.map lower) ∧ bytes9191.length=60 := by core033_kernel_decide
def op9192 : List WordIR.Op := [.rotr 9287 6]
def bytes9192 : Bytes := ("    let r00002448: u32 = r00002447.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9192 : bytes9192=statementBytes 9288 (op9192.map lower) ∧ bytes9192.length=65 := by core033_kernel_decide
def op9193 : List WordIR.Op := [.rotr 9287 11]
def bytes9193 : Bytes := ("    let r00002449: u32 = r00002447.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9193 : bytes9193=statementBytes 9289 (op9193.map lower) ∧ bytes9193.length=65 := by core033_kernel_decide
def op9194 : List WordIR.Op := [.bxor 9288 9289]
def bytes9194 : Bytes := ("    let r0000244a: u32 = r00002448 ^ r00002449;\n" : String).toByteArray.data.toList
theorem checked9194 : bytes9194=statementBytes 9290 (op9194.map lower) ∧ bytes9194.length=48 := by core033_kernel_decide
def op9195 : List WordIR.Op := [.rotr 9287 25]
def bytes9195 : Bytes := ("    let r0000244b: u32 = r00002447.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9195 : bytes9195=statementBytes 9291 (op9195.map lower) ∧ bytes9195.length=65 := by core033_kernel_decide
def op9196 : List WordIR.Op := [.bxor 9290 9291]
def bytes9196 : Bytes := ("    let r0000244c: u32 = r0000244a ^ r0000244b;\n" : String).toByteArray.data.toList
theorem checked9196 : bytes9196=statementBytes 9292 (op9196.map lower) ∧ bytes9196.length=48 := by core033_kernel_decide
def op9197 : List WordIR.Op := [.badd 9206 9292]
def bytes9197 : Bytes := ("    let r0000244d: u32 = r000023f6.wrapping_add(r0000244c);\n" : String).toByteArray.data.toList
theorem checked9197 : bytes9197=statementBytes 9293 (op9197.map lower) ∧ bytes9197.length=60 := by core033_kernel_decide
def op9198 : List WordIR.Op := [.band 9287 9260]
def bytes9198 : Bytes := ("    let r0000244e: u32 = r00002447 & r0000242c;\n" : String).toByteArray.data.toList
theorem checked9198 : bytes9198=statementBytes 9294 (op9198.map lower) ∧ bytes9198.length=48 := by core033_kernel_decide
def op9199 : List WordIR.Op := [.bnot 9287]
def bytes9199 : Bytes := ("    let r0000244f: u32 = !r00002447;\n" : String).toByteArray.data.toList
theorem checked9199 : bytes9199=statementBytes 9295 (op9199.map lower) ∧ bytes9199.length=37 := by core033_kernel_decide
def op9200 : List WordIR.Op := [.band 9295 9233]
def bytes9200 : Bytes := ("    let r00002450: u32 = r0000244f & r00002411;\n" : String).toByteArray.data.toList
theorem checked9200 : bytes9200=statementBytes 9296 (op9200.map lower) ∧ bytes9200.length=48 := by core033_kernel_decide
def op9201 : List WordIR.Op := [.bxor 9294 9296]
def bytes9201 : Bytes := ("    let r00002451: u32 = r0000244e ^ r00002450;\n" : String).toByteArray.data.toList
theorem checked9201 : bytes9201=statementBytes 9297 (op9201.map lower) ∧ bytes9201.length=48 := by core033_kernel_decide
def op9202 : List WordIR.Op := [.badd 9293 9297]
def bytes9202 : Bytes := ("    let r00002452: u32 = r0000244d.wrapping_add(r00002451);\n" : String).toByteArray.data.toList
theorem checked9202 : bytes9202=statementBytes 9298 (op9202.map lower) ∧ bytes9202.length=60 := by core033_kernel_decide
def op9203 : List WordIR.Op := [.literal (BitVec.ofNat 32 3600352804)]
def bytes9203 : Bytes := ("    let r00002453: u32 = 0xd6990624_u32;\n" : String).toByteArray.data.toList
theorem checked9203 : bytes9203=statementBytes 9299 (op9203.map lower) ∧ bytes9203.length=41 := by core033_kernel_decide
def op9204 : List WordIR.Op := [.badd 9298 9299]
def bytes9204 : Bytes := ("    let r00002454: u32 = r00002452.wrapping_add(r00002453);\n" : String).toByteArray.data.toList
theorem checked9204 : bytes9204=statementBytes 9300 (op9204.map lower) ∧ bytes9204.length=60 := by core033_kernel_decide
def op9205 : List WordIR.Op := [.badd 9300 7838]
def bytes9205 : Bytes := ("    let r00002455: u32 = r00002454.wrapping_add(r00001e9e);\n" : String).toByteArray.data.toList
theorem checked9205 : bytes9205=statementBytes 9301 (op9205.map lower) ∧ bytes9205.length=60 := by core033_kernel_decide
def op9206 : List WordIR.Op := [.rotr 9286 2]
def bytes9206 : Bytes := ("    let r00002456: u32 = r00002446.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9206 : bytes9206=statementBytes 9302 (op9206.map lower) ∧ bytes9206.length=65 := by core033_kernel_decide
def op9207 : List WordIR.Op := [.rotr 9286 13]
def bytes9207 : Bytes := ("    let r00002457: u32 = r00002446.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9207 : bytes9207=statementBytes 9303 (op9207.map lower) ∧ bytes9207.length=65 := by core033_kernel_decide
def op9208 : List WordIR.Op := [.bxor 9302 9303]
def bytes9208 : Bytes := ("    let r00002458: u32 = r00002456 ^ r00002457;\n" : String).toByteArray.data.toList
theorem checked9208 : bytes9208=statementBytes 9304 (op9208.map lower) ∧ bytes9208.length=48 := by core033_kernel_decide
def op9209 : List WordIR.Op := [.rotr 9286 22]
def bytes9209 : Bytes := ("    let r00002459: u32 = r00002446.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9209 : bytes9209=statementBytes 9305 (op9209.map lower) ∧ bytes9209.length=65 := by core033_kernel_decide
def op9210 : List WordIR.Op := [.bxor 9304 9305]
def bytes9210 : Bytes := ("    let r0000245a: u32 = r00002458 ^ r00002459;\n" : String).toByteArray.data.toList
theorem checked9210 : bytes9210=statementBytes 9306 (op9210.map lower) ∧ bytes9210.length=48 := by core033_kernel_decide
def op9211 : List WordIR.Op := [.band 9286 9259]
def bytes9211 : Bytes := ("    let r0000245b: u32 = r00002446 & r0000242b;\n" : String).toByteArray.data.toList
theorem checked9211 : bytes9211=statementBytes 9307 (op9211.map lower) ∧ bytes9211.length=48 := by core033_kernel_decide
def op9212 : List WordIR.Op := [.band 9286 9232]
def bytes9212 : Bytes := ("    let r0000245c: u32 = r00002446 & r00002410;\n" : String).toByteArray.data.toList
theorem checked9212 : bytes9212=statementBytes 9308 (op9212.map lower) ∧ bytes9212.length=48 := by core033_kernel_decide
def op9213 : List WordIR.Op := [.bxor 9307 9308]
def bytes9213 : Bytes := ("    let r0000245d: u32 = r0000245b ^ r0000245c;\n" : String).toByteArray.data.toList
theorem checked9213 : bytes9213=statementBytes 9309 (op9213.map lower) ∧ bytes9213.length=48 := by core033_kernel_decide
def op9214 : List WordIR.Op := [.band 9259 9232]
def bytes9214 : Bytes := ("    let r0000245e: u32 = r0000242b & r00002410;\n" : String).toByteArray.data.toList
theorem checked9214 : bytes9214=statementBytes 9310 (op9214.map lower) ∧ bytes9214.length=48 := by core033_kernel_decide
def op9215 : List WordIR.Op := [.bxor 9309 9310]
def bytes9215 : Bytes := ("    let r0000245f: u32 = r0000245d ^ r0000245e;\n" : String).toByteArray.data.toList
theorem checked9215 : bytes9215=statementBytes 9311 (op9215.map lower) ∧ bytes9215.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9152,op9153,op9154,op9155,op9156,op9157,op9158,op9159,op9160,op9161,op9162,op9163,op9164,op9165,op9166,op9167,op9168,op9169,op9170,op9171,op9172,op9173,op9174,op9175,op9176,op9177,op9178,op9179,op9180,op9181,op9182,op9183,op9184,op9185,op9186,op9187,op9188,op9189,op9190,op9191,op9192,op9193,op9194,op9195,op9196,op9197,op9198,op9199,op9200,op9201,op9202,op9203,op9204,op9205,op9206,op9207,op9208,op9209,op9210,op9211,op9212,op9213,op9214,op9215]
def chunks : List Bytes := [bytes9152,bytes9153,bytes9154,bytes9155,bytes9156,bytes9157,bytes9158,bytes9159,bytes9160,bytes9161,bytes9162,bytes9163,bytes9164,bytes9165,bytes9166,bytes9167,bytes9168,bytes9169,bytes9170,bytes9171,bytes9172,bytes9173,bytes9174,bytes9175,bytes9176,bytes9177,bytes9178,bytes9179,bytes9180,bytes9181,bytes9182,bytes9183,bytes9184,bytes9185,bytes9186,bytes9187,bytes9188,bytes9189,bytes9190,bytes9191,bytes9192,bytes9193,bytes9194,bytes9195,bytes9196,bytes9197,bytes9198,bytes9199,bytes9200,bytes9201,bytes9202,bytes9203,bytes9204,bytes9205,bytes9206,bytes9207,bytes9208,bytes9209,bytes9210,bytes9211,bytes9212,bytes9213,bytes9214,bytes9215]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9248 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9152.1 (.cons _ _ _ _ _ checked9153.1 (.cons _ _ _ _ _ checked9154.1 (.cons _ _ _ _ _ checked9155.1 (.cons _ _ _ _ _ checked9156.1 (.cons _ _ _ _ _ checked9157.1 (.cons _ _ _ _ _ checked9158.1 (.cons _ _ _ _ _ checked9159.1 (.cons _ _ _ _ _ checked9160.1 (.cons _ _ _ _ _ checked9161.1 (.cons _ _ _ _ _ checked9162.1 (.cons _ _ _ _ _ checked9163.1 (.cons _ _ _ _ _ checked9164.1 (.cons _ _ _ _ _ checked9165.1 (.cons _ _ _ _ _ checked9166.1 (.cons _ _ _ _ _ checked9167.1 (.cons _ _ _ _ _ checked9168.1 (.cons _ _ _ _ _ checked9169.1 (.cons _ _ _ _ _ checked9170.1 (.cons _ _ _ _ _ checked9171.1 (.cons _ _ _ _ _ checked9172.1 (.cons _ _ _ _ _ checked9173.1 (.cons _ _ _ _ _ checked9174.1 (.cons _ _ _ _ _ checked9175.1 (.cons _ _ _ _ _ checked9176.1 (.cons _ _ _ _ _ checked9177.1 (.cons _ _ _ _ _ checked9178.1 (.cons _ _ _ _ _ checked9179.1 (.cons _ _ _ _ _ checked9180.1 (.cons _ _ _ _ _ checked9181.1 (.cons _ _ _ _ _ checked9182.1 (.cons _ _ _ _ _ checked9183.1 (.cons _ _ _ _ _ checked9184.1 (.cons _ _ _ _ _ checked9185.1 (.cons _ _ _ _ _ checked9186.1 (.cons _ _ _ _ _ checked9187.1 (.cons _ _ _ _ _ checked9188.1 (.cons _ _ _ _ _ checked9189.1 (.cons _ _ _ _ _ checked9190.1 (.cons _ _ _ _ _ checked9191.1 (.cons _ _ _ _ _ checked9192.1 (.cons _ _ _ _ _ checked9193.1 (.cons _ _ _ _ _ checked9194.1 (.cons _ _ _ _ _ checked9195.1 (.cons _ _ _ _ _ checked9196.1 (.cons _ _ _ _ _ checked9197.1 (.cons _ _ _ _ _ checked9198.1 (.cons _ _ _ _ _ checked9199.1 (.cons _ _ _ _ _ checked9200.1 (.cons _ _ _ _ _ checked9201.1 (.cons _ _ _ _ _ checked9202.1 (.cons _ _ _ _ _ checked9203.1 (.cons _ _ _ _ _ checked9204.1 (.cons _ _ _ _ _ checked9205.1 (.cons _ _ _ _ _ checked9206.1 (.cons _ _ _ _ _ checked9207.1 (.cons _ _ _ _ _ checked9208.1 (.cons _ _ _ _ _ checked9209.1 (.cons _ _ _ _ _ checked9210.1 (.cons _ _ _ _ _ checked9211.1 (.cons _ _ _ _ _ checked9212.1 (.cons _ _ _ _ _ checked9213.1 (.cons _ _ _ _ _ checked9214.1 (.cons _ _ _ _ _ checked9215.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9248 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3459 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9152.2,checked9153.2,checked9154.2,checked9155.2,checked9156.2,checked9157.2,checked9158.2,checked9159.2,checked9160.2,checked9161.2,checked9162.2,checked9163.2,checked9164.2,checked9165.2,checked9166.2,checked9167.2,checked9168.2,checked9169.2,checked9170.2,checked9171.2,checked9172.2,checked9173.2,checked9174.2,checked9175.2,checked9176.2,checked9177.2,checked9178.2,checked9179.2,checked9180.2,checked9181.2,checked9182.2,checked9183.2,checked9184.2,checked9185.2,checked9186.2,checked9187.2,checked9188.2,checked9189.2,checked9190.2,checked9191.2,checked9192.2,checked9193.2,checked9194.2,checked9195.2,checked9196.2,checked9197.2,checked9198.2,checked9199.2,checked9200.2,checked9201.2,checked9202.2,checked9203.2,checked9204.2,checked9205.2,checked9206.2,checked9207.2,checked9208.2,checked9209.2,checked9210.2,checked9211.2,checked9212.2,checked9213.2,checked9214.2,checked9215.2]
  decide
end ArtifactPairedPathRoundGroup143
