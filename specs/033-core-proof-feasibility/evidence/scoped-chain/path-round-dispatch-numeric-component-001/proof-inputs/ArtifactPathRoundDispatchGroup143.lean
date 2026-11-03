import ActualPathRoundDispatchIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPathRoundDispatchGroup143
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op9152 : List WordIR.Op := [.band 9144 9117]
def bytes9152 : Bytes := ("    let r000023eb: u32 = r000023b8 & r0000239d;\n" : String).toByteArray.data.toList
theorem checked9152 : bytes9152=statementBytes 9195 (op9152.map lower) ∧ bytes9152.length=48 := by core033_kernel_decide
def op9153 : List WordIR.Op := [.bxor 9194 9195]
def bytes9153 : Bytes := ("    let r000023ec: u32 = r000023ea ^ r000023eb;\n" : String).toByteArray.data.toList
theorem checked9153 : bytes9153=statementBytes 9196 (op9153.map lower) ∧ bytes9153.length=48 := by core033_kernel_decide
def op9154 : List WordIR.Op := [.badd 9191 9196]
def bytes9154 : Bytes := ("    let r000023ed: u32 = r000023e7.wrapping_add(r000023ec);\n" : String).toByteArray.data.toList
theorem checked9154 : bytes9154=statementBytes 9197 (op9154.map lower) ∧ bytes9154.length=60 := by core033_kernel_decide
def op9155 : List WordIR.Op := [.badd 9186 9197]
def bytes9155 : Bytes := ("    let r000023ee: u32 = r000023e2.wrapping_add(r000023ed);\n" : String).toByteArray.data.toList
theorem checked9155 : bytes9155=statementBytes 9198 (op9155.map lower) ∧ bytes9155.length=60 := by core033_kernel_decide
def op9156 : List WordIR.Op := [.badd 9090 9186]
def bytes9156 : Bytes := ("    let r000023ef: u32 = r00002382.wrapping_add(r000023e2);\n" : String).toByteArray.data.toList
theorem checked9156 : bytes9156=statementBytes 9199 (op9156.map lower) ∧ bytes9156.length=60 := by core033_kernel_decide
def op9157 : List WordIR.Op := [.rotr 9199 6]
def bytes9157 : Bytes := ("    let r000023f0: u32 = r000023ef.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9157 : bytes9157=statementBytes 9200 (op9157.map lower) ∧ bytes9157.length=65 := by core033_kernel_decide
def op9158 : List WordIR.Op := [.rotr 9199 11]
def bytes9158 : Bytes := ("    let r000023f1: u32 = r000023ef.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9158 : bytes9158=statementBytes 9201 (op9158.map lower) ∧ bytes9158.length=65 := by core033_kernel_decide
def op9159 : List WordIR.Op := [.bxor 9200 9201]
def bytes9159 : Bytes := ("    let r000023f2: u32 = r000023f0 ^ r000023f1;\n" : String).toByteArray.data.toList
theorem checked9159 : bytes9159=statementBytes 9202 (op9159.map lower) ∧ bytes9159.length=48 := by core033_kernel_decide
def op9160 : List WordIR.Op := [.rotr 9199 25]
def bytes9160 : Bytes := ("    let r000023f3: u32 = r000023ef.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9160 : bytes9160=statementBytes 9203 (op9160.map lower) ∧ bytes9160.length=65 := by core033_kernel_decide
def op9161 : List WordIR.Op := [.bxor 9202 9203]
def bytes9161 : Bytes := ("    let r000023f4: u32 = r000023f2 ^ r000023f3;\n" : String).toByteArray.data.toList
theorem checked9161 : bytes9161=statementBytes 9204 (op9161.map lower) ∧ bytes9161.length=48 := by core033_kernel_decide
def op9162 : List WordIR.Op := [.badd 9118 9204]
def bytes9162 : Bytes := ("    let r000023f5: u32 = r0000239e.wrapping_add(r000023f4);\n" : String).toByteArray.data.toList
theorem checked9162 : bytes9162=statementBytes 9205 (op9162.map lower) ∧ bytes9162.length=60 := by core033_kernel_decide
def op9163 : List WordIR.Op := [.band 9199 9172]
def bytes9163 : Bytes := ("    let r000023f6: u32 = r000023ef & r000023d4;\n" : String).toByteArray.data.toList
theorem checked9163 : bytes9163=statementBytes 9206 (op9163.map lower) ∧ bytes9163.length=48 := by core033_kernel_decide
def op9164 : List WordIR.Op := [.bnot 9199]
def bytes9164 : Bytes := ("    let r000023f7: u32 = !r000023ef;\n" : String).toByteArray.data.toList
theorem checked9164 : bytes9164=statementBytes 9207 (op9164.map lower) ∧ bytes9164.length=37 := by core033_kernel_decide
def op9165 : List WordIR.Op := [.band 9207 9145]
def bytes9165 : Bytes := ("    let r000023f8: u32 = r000023f7 & r000023b9;\n" : String).toByteArray.data.toList
theorem checked9165 : bytes9165=statementBytes 9208 (op9165.map lower) ∧ bytes9165.length=48 := by core033_kernel_decide
def op9166 : List WordIR.Op := [.bxor 9206 9208]
def bytes9166 : Bytes := ("    let r000023f9: u32 = r000023f6 ^ r000023f8;\n" : String).toByteArray.data.toList
theorem checked9166 : bytes9166=statementBytes 9209 (op9166.map lower) ∧ bytes9166.length=48 := by core033_kernel_decide
def op9167 : List WordIR.Op := [.badd 9205 9209]
def bytes9167 : Bytes := ("    let r000023fa: u32 = r000023f5.wrapping_add(r000023f9);\n" : String).toByteArray.data.toList
theorem checked9167 : bytes9167=statementBytes 9210 (op9167.map lower) ∧ bytes9167.length=60 := by core033_kernel_decide
def op9168 : List WordIR.Op := [.literal (BitVec.ofNat 32 2756734187)]
def bytes9168 : Bytes := ("    let r000023fb: u32 = 0xa4506ceb_u32;\n" : String).toByteArray.data.toList
theorem checked9168 : bytes9168=statementBytes 9211 (op9168.map lower) ∧ bytes9168.length=41 := by core033_kernel_decide
def op9169 : List WordIR.Op := [.badd 9210 9211]
def bytes9169 : Bytes := ("    let r000023fc: u32 = r000023fa.wrapping_add(r000023fb);\n" : String).toByteArray.data.toList
theorem checked9169 : bytes9169=statementBytes 9212 (op9169.map lower) ∧ bytes9169.length=60 := by core033_kernel_decide
def op9170 : List WordIR.Op := [.badd 9212 7526]
def bytes9170 : Bytes := ("    let r000023fd: u32 = r000023fc.wrapping_add(r00001d66);\n" : String).toByteArray.data.toList
theorem checked9170 : bytes9170=statementBytes 9213 (op9170.map lower) ∧ bytes9170.length=60 := by core033_kernel_decide
def op9171 : List WordIR.Op := [.rotr 9198 2]
def bytes9171 : Bytes := ("    let r000023fe: u32 = r000023ee.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9171 : bytes9171=statementBytes 9214 (op9171.map lower) ∧ bytes9171.length=65 := by core033_kernel_decide
def op9172 : List WordIR.Op := [.rotr 9198 13]
def bytes9172 : Bytes := ("    let r000023ff: u32 = r000023ee.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9172 : bytes9172=statementBytes 9215 (op9172.map lower) ∧ bytes9172.length=65 := by core033_kernel_decide
def op9173 : List WordIR.Op := [.bxor 9214 9215]
def bytes9173 : Bytes := ("    let r00002400: u32 = r000023fe ^ r000023ff;\n" : String).toByteArray.data.toList
theorem checked9173 : bytes9173=statementBytes 9216 (op9173.map lower) ∧ bytes9173.length=48 := by core033_kernel_decide
def op9174 : List WordIR.Op := [.rotr 9198 22]
def bytes9174 : Bytes := ("    let r00002401: u32 = r000023ee.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9174 : bytes9174=statementBytes 9217 (op9174.map lower) ∧ bytes9174.length=65 := by core033_kernel_decide
def op9175 : List WordIR.Op := [.bxor 9216 9217]
def bytes9175 : Bytes := ("    let r00002402: u32 = r00002400 ^ r00002401;\n" : String).toByteArray.data.toList
theorem checked9175 : bytes9175=statementBytes 9218 (op9175.map lower) ∧ bytes9175.length=48 := by core033_kernel_decide
def op9176 : List WordIR.Op := [.band 9198 9171]
def bytes9176 : Bytes := ("    let r00002403: u32 = r000023ee & r000023d3;\n" : String).toByteArray.data.toList
theorem checked9176 : bytes9176=statementBytes 9219 (op9176.map lower) ∧ bytes9176.length=48 := by core033_kernel_decide
def op9177 : List WordIR.Op := [.band 9198 9144]
def bytes9177 : Bytes := ("    let r00002404: u32 = r000023ee & r000023b8;\n" : String).toByteArray.data.toList
theorem checked9177 : bytes9177=statementBytes 9220 (op9177.map lower) ∧ bytes9177.length=48 := by core033_kernel_decide
def op9178 : List WordIR.Op := [.bxor 9219 9220]
def bytes9178 : Bytes := ("    let r00002405: u32 = r00002403 ^ r00002404;\n" : String).toByteArray.data.toList
theorem checked9178 : bytes9178=statementBytes 9221 (op9178.map lower) ∧ bytes9178.length=48 := by core033_kernel_decide
def op9179 : List WordIR.Op := [.band 9171 9144]
def bytes9179 : Bytes := ("    let r00002406: u32 = r000023d3 & r000023b8;\n" : String).toByteArray.data.toList
theorem checked9179 : bytes9179=statementBytes 9222 (op9179.map lower) ∧ bytes9179.length=48 := by core033_kernel_decide
def op9180 : List WordIR.Op := [.bxor 9221 9222]
def bytes9180 : Bytes := ("    let r00002407: u32 = r00002405 ^ r00002406;\n" : String).toByteArray.data.toList
theorem checked9180 : bytes9180=statementBytes 9223 (op9180.map lower) ∧ bytes9180.length=48 := by core033_kernel_decide
def op9181 : List WordIR.Op := [.badd 9218 9223]
def bytes9181 : Bytes := ("    let r00002408: u32 = r00002402.wrapping_add(r00002407);\n" : String).toByteArray.data.toList
theorem checked9181 : bytes9181=statementBytes 9224 (op9181.map lower) ∧ bytes9181.length=60 := by core033_kernel_decide
def op9182 : List WordIR.Op := [.badd 9213 9224]
def bytes9182 : Bytes := ("    let r00002409: u32 = r000023fd.wrapping_add(r00002408);\n" : String).toByteArray.data.toList
theorem checked9182 : bytes9182=statementBytes 9225 (op9182.map lower) ∧ bytes9182.length=60 := by core033_kernel_decide
def op9183 : List WordIR.Op := [.badd 9117 9213]
def bytes9183 : Bytes := ("    let r0000240a: u32 = r0000239d.wrapping_add(r000023fd);\n" : String).toByteArray.data.toList
theorem checked9183 : bytes9183=statementBytes 9226 (op9183.map lower) ∧ bytes9183.length=60 := by core033_kernel_decide
def op9184 : List WordIR.Op := [.rotr 9226 6]
def bytes9184 : Bytes := ("    let r0000240b: u32 = r0000240a.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9184 : bytes9184=statementBytes 9227 (op9184.map lower) ∧ bytes9184.length=65 := by core033_kernel_decide
def op9185 : List WordIR.Op := [.rotr 9226 11]
def bytes9185 : Bytes := ("    let r0000240c: u32 = r0000240a.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9185 : bytes9185=statementBytes 9228 (op9185.map lower) ∧ bytes9185.length=65 := by core033_kernel_decide
def op9186 : List WordIR.Op := [.bxor 9227 9228]
def bytes9186 : Bytes := ("    let r0000240d: u32 = r0000240b ^ r0000240c;\n" : String).toByteArray.data.toList
theorem checked9186 : bytes9186=statementBytes 9229 (op9186.map lower) ∧ bytes9186.length=48 := by core033_kernel_decide
def op9187 : List WordIR.Op := [.rotr 9226 25]
def bytes9187 : Bytes := ("    let r0000240e: u32 = r0000240a.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9187 : bytes9187=statementBytes 9230 (op9187.map lower) ∧ bytes9187.length=65 := by core033_kernel_decide
def op9188 : List WordIR.Op := [.bxor 9229 9230]
def bytes9188 : Bytes := ("    let r0000240f: u32 = r0000240d ^ r0000240e;\n" : String).toByteArray.data.toList
theorem checked9188 : bytes9188=statementBytes 9231 (op9188.map lower) ∧ bytes9188.length=48 := by core033_kernel_decide
def op9189 : List WordIR.Op := [.badd 9145 9231]
def bytes9189 : Bytes := ("    let r00002410: u32 = r000023b9.wrapping_add(r0000240f);\n" : String).toByteArray.data.toList
theorem checked9189 : bytes9189=statementBytes 9232 (op9189.map lower) ∧ bytes9189.length=60 := by core033_kernel_decide
def op9190 : List WordIR.Op := [.band 9226 9199]
def bytes9190 : Bytes := ("    let r00002411: u32 = r0000240a & r000023ef;\n" : String).toByteArray.data.toList
theorem checked9190 : bytes9190=statementBytes 9233 (op9190.map lower) ∧ bytes9190.length=48 := by core033_kernel_decide
def op9191 : List WordIR.Op := [.bnot 9226]
def bytes9191 : Bytes := ("    let r00002412: u32 = !r0000240a;\n" : String).toByteArray.data.toList
theorem checked9191 : bytes9191=statementBytes 9234 (op9191.map lower) ∧ bytes9191.length=37 := by core033_kernel_decide
def op9192 : List WordIR.Op := [.band 9234 9172]
def bytes9192 : Bytes := ("    let r00002413: u32 = r00002412 & r000023d4;\n" : String).toByteArray.data.toList
theorem checked9192 : bytes9192=statementBytes 9235 (op9192.map lower) ∧ bytes9192.length=48 := by core033_kernel_decide
def op9193 : List WordIR.Op := [.bxor 9233 9235]
def bytes9193 : Bytes := ("    let r00002414: u32 = r00002411 ^ r00002413;\n" : String).toByteArray.data.toList
theorem checked9193 : bytes9193=statementBytes 9236 (op9193.map lower) ∧ bytes9193.length=48 := by core033_kernel_decide
def op9194 : List WordIR.Op := [.badd 9232 9236]
def bytes9194 : Bytes := ("    let r00002415: u32 = r00002410.wrapping_add(r00002414);\n" : String).toByteArray.data.toList
theorem checked9194 : bytes9194=statementBytes 9237 (op9194.map lower) ∧ bytes9194.length=60 := by core033_kernel_decide
def op9195 : List WordIR.Op := [.literal (BitVec.ofNat 32 3204031479)]
def bytes9195 : Bytes := ("    let r00002416: u32 = 0xbef9a3f7_u32;\n" : String).toByteArray.data.toList
theorem checked9195 : bytes9195=statementBytes 9238 (op9195.map lower) ∧ bytes9195.length=41 := by core033_kernel_decide
def op9196 : List WordIR.Op := [.badd 9237 9238]
def bytes9196 : Bytes := ("    let r00002417: u32 = r00002415.wrapping_add(r00002416);\n" : String).toByteArray.data.toList
theorem checked9196 : bytes9196=statementBytes 9239 (op9196.map lower) ∧ bytes9196.length=60 := by core033_kernel_decide
def op9197 : List WordIR.Op := [.badd 9239 7539]
def bytes9197 : Bytes := ("    let r00002418: u32 = r00002417.wrapping_add(r00001d73);\n" : String).toByteArray.data.toList
theorem checked9197 : bytes9197=statementBytes 9240 (op9197.map lower) ∧ bytes9197.length=60 := by core033_kernel_decide
def op9198 : List WordIR.Op := [.rotr 9225 2]
def bytes9198 : Bytes := ("    let r00002419: u32 = r00002409.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked9198 : bytes9198=statementBytes 9241 (op9198.map lower) ∧ bytes9198.length=65 := by core033_kernel_decide
def op9199 : List WordIR.Op := [.rotr 9225 13]
def bytes9199 : Bytes := ("    let r0000241a: u32 = r00002409.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked9199 : bytes9199=statementBytes 9242 (op9199.map lower) ∧ bytes9199.length=65 := by core033_kernel_decide
def op9200 : List WordIR.Op := [.bxor 9241 9242]
def bytes9200 : Bytes := ("    let r0000241b: u32 = r00002419 ^ r0000241a;\n" : String).toByteArray.data.toList
theorem checked9200 : bytes9200=statementBytes 9243 (op9200.map lower) ∧ bytes9200.length=48 := by core033_kernel_decide
def op9201 : List WordIR.Op := [.rotr 9225 22]
def bytes9201 : Bytes := ("    let r0000241c: u32 = r00002409.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked9201 : bytes9201=statementBytes 9244 (op9201.map lower) ∧ bytes9201.length=65 := by core033_kernel_decide
def op9202 : List WordIR.Op := [.bxor 9243 9244]
def bytes9202 : Bytes := ("    let r0000241d: u32 = r0000241b ^ r0000241c;\n" : String).toByteArray.data.toList
theorem checked9202 : bytes9202=statementBytes 9245 (op9202.map lower) ∧ bytes9202.length=48 := by core033_kernel_decide
def op9203 : List WordIR.Op := [.band 9225 9198]
def bytes9203 : Bytes := ("    let r0000241e: u32 = r00002409 & r000023ee;\n" : String).toByteArray.data.toList
theorem checked9203 : bytes9203=statementBytes 9246 (op9203.map lower) ∧ bytes9203.length=48 := by core033_kernel_decide
def op9204 : List WordIR.Op := [.band 9225 9171]
def bytes9204 : Bytes := ("    let r0000241f: u32 = r00002409 & r000023d3;\n" : String).toByteArray.data.toList
theorem checked9204 : bytes9204=statementBytes 9247 (op9204.map lower) ∧ bytes9204.length=48 := by core033_kernel_decide
def op9205 : List WordIR.Op := [.bxor 9246 9247]
def bytes9205 : Bytes := ("    let r00002420: u32 = r0000241e ^ r0000241f;\n" : String).toByteArray.data.toList
theorem checked9205 : bytes9205=statementBytes 9248 (op9205.map lower) ∧ bytes9205.length=48 := by core033_kernel_decide
def op9206 : List WordIR.Op := [.band 9198 9171]
def bytes9206 : Bytes := ("    let r00002421: u32 = r000023ee & r000023d3;\n" : String).toByteArray.data.toList
theorem checked9206 : bytes9206=statementBytes 9249 (op9206.map lower) ∧ bytes9206.length=48 := by core033_kernel_decide
def op9207 : List WordIR.Op := [.bxor 9248 9249]
def bytes9207 : Bytes := ("    let r00002422: u32 = r00002420 ^ r00002421;\n" : String).toByteArray.data.toList
theorem checked9207 : bytes9207=statementBytes 9250 (op9207.map lower) ∧ bytes9207.length=48 := by core033_kernel_decide
def op9208 : List WordIR.Op := [.badd 9245 9250]
def bytes9208 : Bytes := ("    let r00002423: u32 = r0000241d.wrapping_add(r00002422);\n" : String).toByteArray.data.toList
theorem checked9208 : bytes9208=statementBytes 9251 (op9208.map lower) ∧ bytes9208.length=60 := by core033_kernel_decide
def op9209 : List WordIR.Op := [.badd 9240 9251]
def bytes9209 : Bytes := ("    let r00002424: u32 = r00002418.wrapping_add(r00002423);\n" : String).toByteArray.data.toList
theorem checked9209 : bytes9209=statementBytes 9252 (op9209.map lower) ∧ bytes9209.length=60 := by core033_kernel_decide
def op9210 : List WordIR.Op := [.badd 9144 9240]
def bytes9210 : Bytes := ("    let r00002425: u32 = r000023b8.wrapping_add(r00002418);\n" : String).toByteArray.data.toList
theorem checked9210 : bytes9210=statementBytes 9253 (op9210.map lower) ∧ bytes9210.length=60 := by core033_kernel_decide
def op9211 : List WordIR.Op := [.rotr 9253 6]
def bytes9211 : Bytes := ("    let r00002426: u32 = r00002425.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked9211 : bytes9211=statementBytes 9254 (op9211.map lower) ∧ bytes9211.length=65 := by core033_kernel_decide
def op9212 : List WordIR.Op := [.rotr 9253 11]
def bytes9212 : Bytes := ("    let r00002427: u32 = r00002425.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked9212 : bytes9212=statementBytes 9255 (op9212.map lower) ∧ bytes9212.length=65 := by core033_kernel_decide
def op9213 : List WordIR.Op := [.bxor 9254 9255]
def bytes9213 : Bytes := ("    let r00002428: u32 = r00002426 ^ r00002427;\n" : String).toByteArray.data.toList
theorem checked9213 : bytes9213=statementBytes 9256 (op9213.map lower) ∧ bytes9213.length=48 := by core033_kernel_decide
def op9214 : List WordIR.Op := [.rotr 9253 25]
def bytes9214 : Bytes := ("    let r00002429: u32 = r00002425.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked9214 : bytes9214=statementBytes 9257 (op9214.map lower) ∧ bytes9214.length=65 := by core033_kernel_decide
def op9215 : List WordIR.Op := [.bxor 9256 9257]
def bytes9215 : Bytes := ("    let r0000242a: u32 = r00002428 ^ r00002429;\n" : String).toByteArray.data.toList
theorem checked9215 : bytes9215=statementBytes 9258 (op9215.map lower) ∧ bytes9215.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op9152,op9153,op9154,op9155,op9156,op9157,op9158,op9159,op9160,op9161,op9162,op9163,op9164,op9165,op9166,op9167,op9168,op9169,op9170,op9171,op9172,op9173,op9174,op9175,op9176,op9177,op9178,op9179,op9180,op9181,op9182,op9183,op9184,op9185,op9186,op9187,op9188,op9189,op9190,op9191,op9192,op9193,op9194,op9195,op9196,op9197,op9198,op9199,op9200,op9201,op9202,op9203,op9204,op9205,op9206,op9207,op9208,op9209,op9210,op9211,op9212,op9213,op9214,op9215]
def chunks : List Bytes := [bytes9152,bytes9153,bytes9154,bytes9155,bytes9156,bytes9157,bytes9158,bytes9159,bytes9160,bytes9161,bytes9162,bytes9163,bytes9164,bytes9165,bytes9166,bytes9167,bytes9168,bytes9169,bytes9170,bytes9171,bytes9172,bytes9173,bytes9174,bytes9175,bytes9176,bytes9177,bytes9178,bytes9179,bytes9180,bytes9181,bytes9182,bytes9183,bytes9184,bytes9185,bytes9186,bytes9187,bytes9188,bytes9189,bytes9190,bytes9191,bytes9192,bytes9193,bytes9194,bytes9195,bytes9196,bytes9197,bytes9198,bytes9199,bytes9200,bytes9201,bytes9202,bytes9203,bytes9204,bytes9205,bytes9206,bytes9207,bytes9208,bytes9209,bytes9210,bytes9211,bytes9212,bytes9213,bytes9214,bytes9215]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 9195 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked9152.1 (.cons _ _ _ _ _ checked9153.1 (.cons _ _ _ _ _ checked9154.1 (.cons _ _ _ _ _ checked9155.1 (.cons _ _ _ _ _ checked9156.1 (.cons _ _ _ _ _ checked9157.1 (.cons _ _ _ _ _ checked9158.1 (.cons _ _ _ _ _ checked9159.1 (.cons _ _ _ _ _ checked9160.1 (.cons _ _ _ _ _ checked9161.1 (.cons _ _ _ _ _ checked9162.1 (.cons _ _ _ _ _ checked9163.1 (.cons _ _ _ _ _ checked9164.1 (.cons _ _ _ _ _ checked9165.1 (.cons _ _ _ _ _ checked9166.1 (.cons _ _ _ _ _ checked9167.1 (.cons _ _ _ _ _ checked9168.1 (.cons _ _ _ _ _ checked9169.1 (.cons _ _ _ _ _ checked9170.1 (.cons _ _ _ _ _ checked9171.1 (.cons _ _ _ _ _ checked9172.1 (.cons _ _ _ _ _ checked9173.1 (.cons _ _ _ _ _ checked9174.1 (.cons _ _ _ _ _ checked9175.1 (.cons _ _ _ _ _ checked9176.1 (.cons _ _ _ _ _ checked9177.1 (.cons _ _ _ _ _ checked9178.1 (.cons _ _ _ _ _ checked9179.1 (.cons _ _ _ _ _ checked9180.1 (.cons _ _ _ _ _ checked9181.1 (.cons _ _ _ _ _ checked9182.1 (.cons _ _ _ _ _ checked9183.1 (.cons _ _ _ _ _ checked9184.1 (.cons _ _ _ _ _ checked9185.1 (.cons _ _ _ _ _ checked9186.1 (.cons _ _ _ _ _ checked9187.1 (.cons _ _ _ _ _ checked9188.1 (.cons _ _ _ _ _ checked9189.1 (.cons _ _ _ _ _ checked9190.1 (.cons _ _ _ _ _ checked9191.1 (.cons _ _ _ _ _ checked9192.1 (.cons _ _ _ _ _ checked9193.1 (.cons _ _ _ _ _ checked9194.1 (.cons _ _ _ _ _ checked9195.1 (.cons _ _ _ _ _ checked9196.1 (.cons _ _ _ _ _ checked9197.1 (.cons _ _ _ _ _ checked9198.1 (.cons _ _ _ _ _ checked9199.1 (.cons _ _ _ _ _ checked9200.1 (.cons _ _ _ _ _ checked9201.1 (.cons _ _ _ _ _ checked9202.1 (.cons _ _ _ _ _ checked9203.1 (.cons _ _ _ _ _ checked9204.1 (.cons _ _ _ _ _ checked9205.1 (.cons _ _ _ _ _ checked9206.1 (.cons _ _ _ _ _ checked9207.1 (.cons _ _ _ _ _ checked9208.1 (.cons _ _ _ _ _ checked9209.1 (.cons _ _ _ _ _ checked9210.1 (.cons _ _ _ _ _ checked9211.1 (.cons _ _ _ _ _ checked9212.1 (.cons _ _ _ _ _ checked9213.1 (.cons _ _ _ _ _ checked9214.1 (.cons _ _ _ _ _ checked9215.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 9195 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3495 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked9152.2,checked9153.2,checked9154.2,checked9155.2,checked9156.2,checked9157.2,checked9158.2,checked9159.2,checked9160.2,checked9161.2,checked9162.2,checked9163.2,checked9164.2,checked9165.2,checked9166.2,checked9167.2,checked9168.2,checked9169.2,checked9170.2,checked9171.2,checked9172.2,checked9173.2,checked9174.2,checked9175.2,checked9176.2,checked9177.2,checked9178.2,checked9179.2,checked9180.2,checked9181.2,checked9182.2,checked9183.2,checked9184.2,checked9185.2,checked9186.2,checked9187.2,checked9188.2,checked9189.2,checked9190.2,checked9191.2,checked9192.2,checked9193.2,checked9194.2,checked9195.2,checked9196.2,checked9197.2,checked9198.2,checked9199.2,checked9200.2,checked9201.2,checked9202.2,checked9203.2,checked9204.2,checked9205.2,checked9206.2,checked9207.2,checked9208.2,checked9209.2,checked9210.2,checked9211.2,checked9212.2,checked9213.2,checked9214.2,checked9215.2]
  decide
end ArtifactPathRoundDispatchGroup143
