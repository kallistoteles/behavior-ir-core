import ActualPairedPathRoundIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactPairedPathRoundGroup128
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op8192 : List WordIR.Op := [.badd 8179 8275]
def bytes8192 : Bytes := ("    let r00002060: u32 = r00001ff3.wrapping_add(r00002053);\n" : String).toByteArray.data.toList
theorem checked8192 : bytes8192=statementBytes 8288 (op8192.map lower) ∧ bytes8192.length=60 := by core033_kernel_decide
def op8193 : List WordIR.Op := [.rotr 8288 6]
def bytes8193 : Bytes := ("    let r00002061: u32 = r00002060.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8193 : bytes8193=statementBytes 8289 (op8193.map lower) ∧ bytes8193.length=65 := by core033_kernel_decide
def op8194 : List WordIR.Op := [.rotr 8288 11]
def bytes8194 : Bytes := ("    let r00002062: u32 = r00002060.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8194 : bytes8194=statementBytes 8290 (op8194.map lower) ∧ bytes8194.length=65 := by core033_kernel_decide
def op8195 : List WordIR.Op := [.bxor 8289 8290]
def bytes8195 : Bytes := ("    let r00002063: u32 = r00002061 ^ r00002062;\n" : String).toByteArray.data.toList
theorem checked8195 : bytes8195=statementBytes 8291 (op8195.map lower) ∧ bytes8195.length=48 := by core033_kernel_decide
def op8196 : List WordIR.Op := [.rotr 8288 25]
def bytes8196 : Bytes := ("    let r00002064: u32 = r00002060.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8196 : bytes8196=statementBytes 8292 (op8196.map lower) ∧ bytes8196.length=65 := by core033_kernel_decide
def op8197 : List WordIR.Op := [.bxor 8291 8292]
def bytes8197 : Bytes := ("    let r00002065: u32 = r00002063 ^ r00002064;\n" : String).toByteArray.data.toList
theorem checked8197 : bytes8197=statementBytes 8293 (op8197.map lower) ∧ bytes8197.length=48 := by core033_kernel_decide
def op8198 : List WordIR.Op := [.badd 8207 8293]
def bytes8198 : Bytes := ("    let r00002066: u32 = r0000200f.wrapping_add(r00002065);\n" : String).toByteArray.data.toList
theorem checked8198 : bytes8198=statementBytes 8294 (op8198.map lower) ∧ bytes8198.length=60 := by core033_kernel_decide
def op8199 : List WordIR.Op := [.band 8288 8261]
def bytes8199 : Bytes := ("    let r00002067: u32 = r00002060 & r00002045;\n" : String).toByteArray.data.toList
theorem checked8199 : bytes8199=statementBytes 8295 (op8199.map lower) ∧ bytes8199.length=48 := by core033_kernel_decide
def op8200 : List WordIR.Op := [.bnot 8288]
def bytes8200 : Bytes := ("    let r00002068: u32 = !r00002060;\n" : String).toByteArray.data.toList
theorem checked8200 : bytes8200=statementBytes 8296 (op8200.map lower) ∧ bytes8200.length=37 := by core033_kernel_decide
def op8201 : List WordIR.Op := [.band 8296 8234]
def bytes8201 : Bytes := ("    let r00002069: u32 = r00002068 & r0000202a;\n" : String).toByteArray.data.toList
theorem checked8201 : bytes8201=statementBytes 8297 (op8201.map lower) ∧ bytes8201.length=48 := by core033_kernel_decide
def op8202 : List WordIR.Op := [.bxor 8295 8297]
def bytes8202 : Bytes := ("    let r0000206a: u32 = r00002067 ^ r00002069;\n" : String).toByteArray.data.toList
theorem checked8202 : bytes8202=statementBytes 8298 (op8202.map lower) ∧ bytes8202.length=48 := by core033_kernel_decide
def op8203 : List WordIR.Op := [.badd 8294 8298]
def bytes8203 : Bytes := ("    let r0000206b: u32 = r00002066.wrapping_add(r0000206a);\n" : String).toByteArray.data.toList
theorem checked8203 : bytes8203=statementBytes 8299 (op8203.map lower) ∧ bytes8203.length=60 := by core033_kernel_decide
def op8204 : List WordIR.Op := [.literal (BitVec.ofNat 32 3624381080)]
def bytes8204 : Bytes := ("    let r0000206c: u32 = 0xd807aa98_u32;\n" : String).toByteArray.data.toList
theorem checked8204 : bytes8204=statementBytes 8300 (op8204.map lower) ∧ bytes8204.length=41 := by core033_kernel_decide
def op8205 : List WordIR.Op := [.badd 8299 8300]
def bytes8205 : Bytes := ("    let r0000206d: u32 = r0000206b.wrapping_add(r0000206c);\n" : String).toByteArray.data.toList
theorem checked8205 : bytes8205=statementBytes 8301 (op8205.map lower) ∧ bytes8205.length=60 := by core033_kernel_decide
def op8206 : List WordIR.Op := [.badd 8301 6254]
def bytes8206 : Bytes := ("    let r0000206e: u32 = r0000206d.wrapping_add(r0000186e);\n" : String).toByteArray.data.toList
theorem checked8206 : bytes8206=statementBytes 8302 (op8206.map lower) ∧ bytes8206.length=60 := by core033_kernel_decide
def op8207 : List WordIR.Op := [.rotr 8287 2]
def bytes8207 : Bytes := ("    let r0000206f: u32 = r0000205f.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8207 : bytes8207=statementBytes 8303 (op8207.map lower) ∧ bytes8207.length=65 := by core033_kernel_decide
def op8208 : List WordIR.Op := [.rotr 8287 13]
def bytes8208 : Bytes := ("    let r00002070: u32 = r0000205f.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8208 : bytes8208=statementBytes 8304 (op8208.map lower) ∧ bytes8208.length=65 := by core033_kernel_decide
def op8209 : List WordIR.Op := [.bxor 8303 8304]
def bytes8209 : Bytes := ("    let r00002071: u32 = r0000206f ^ r00002070;\n" : String).toByteArray.data.toList
theorem checked8209 : bytes8209=statementBytes 8305 (op8209.map lower) ∧ bytes8209.length=48 := by core033_kernel_decide
def op8210 : List WordIR.Op := [.rotr 8287 22]
def bytes8210 : Bytes := ("    let r00002072: u32 = r0000205f.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8210 : bytes8210=statementBytes 8306 (op8210.map lower) ∧ bytes8210.length=65 := by core033_kernel_decide
def op8211 : List WordIR.Op := [.bxor 8305 8306]
def bytes8211 : Bytes := ("    let r00002073: u32 = r00002071 ^ r00002072;\n" : String).toByteArray.data.toList
theorem checked8211 : bytes8211=statementBytes 8307 (op8211.map lower) ∧ bytes8211.length=48 := by core033_kernel_decide
def op8212 : List WordIR.Op := [.band 8287 8260]
def bytes8212 : Bytes := ("    let r00002074: u32 = r0000205f & r00002044;\n" : String).toByteArray.data.toList
theorem checked8212 : bytes8212=statementBytes 8308 (op8212.map lower) ∧ bytes8212.length=48 := by core033_kernel_decide
def op8213 : List WordIR.Op := [.band 8287 8233]
def bytes8213 : Bytes := ("    let r00002075: u32 = r0000205f & r00002029;\n" : String).toByteArray.data.toList
theorem checked8213 : bytes8213=statementBytes 8309 (op8213.map lower) ∧ bytes8213.length=48 := by core033_kernel_decide
def op8214 : List WordIR.Op := [.bxor 8308 8309]
def bytes8214 : Bytes := ("    let r00002076: u32 = r00002074 ^ r00002075;\n" : String).toByteArray.data.toList
theorem checked8214 : bytes8214=statementBytes 8310 (op8214.map lower) ∧ bytes8214.length=48 := by core033_kernel_decide
def op8215 : List WordIR.Op := [.band 8260 8233]
def bytes8215 : Bytes := ("    let r00002077: u32 = r00002044 & r00002029;\n" : String).toByteArray.data.toList
theorem checked8215 : bytes8215=statementBytes 8311 (op8215.map lower) ∧ bytes8215.length=48 := by core033_kernel_decide
def op8216 : List WordIR.Op := [.bxor 8310 8311]
def bytes8216 : Bytes := ("    let r00002078: u32 = r00002076 ^ r00002077;\n" : String).toByteArray.data.toList
theorem checked8216 : bytes8216=statementBytes 8312 (op8216.map lower) ∧ bytes8216.length=48 := by core033_kernel_decide
def op8217 : List WordIR.Op := [.badd 8307 8312]
def bytes8217 : Bytes := ("    let r00002079: u32 = r00002073.wrapping_add(r00002078);\n" : String).toByteArray.data.toList
theorem checked8217 : bytes8217=statementBytes 8313 (op8217.map lower) ∧ bytes8217.length=60 := by core033_kernel_decide
def op8218 : List WordIR.Op := [.badd 8302 8313]
def bytes8218 : Bytes := ("    let r0000207a: u32 = r0000206e.wrapping_add(r00002079);\n" : String).toByteArray.data.toList
theorem checked8218 : bytes8218=statementBytes 8314 (op8218.map lower) ∧ bytes8218.length=60 := by core033_kernel_decide
def op8219 : List WordIR.Op := [.badd 8206 8302]
def bytes8219 : Bytes := ("    let r0000207b: u32 = r0000200e.wrapping_add(r0000206e);\n" : String).toByteArray.data.toList
theorem checked8219 : bytes8219=statementBytes 8315 (op8219.map lower) ∧ bytes8219.length=60 := by core033_kernel_decide
def op8220 : List WordIR.Op := [.rotr 8315 6]
def bytes8220 : Bytes := ("    let r0000207c: u32 = r0000207b.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8220 : bytes8220=statementBytes 8316 (op8220.map lower) ∧ bytes8220.length=65 := by core033_kernel_decide
def op8221 : List WordIR.Op := [.rotr 8315 11]
def bytes8221 : Bytes := ("    let r0000207d: u32 = r0000207b.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8221 : bytes8221=statementBytes 8317 (op8221.map lower) ∧ bytes8221.length=65 := by core033_kernel_decide
def op8222 : List WordIR.Op := [.bxor 8316 8317]
def bytes8222 : Bytes := ("    let r0000207e: u32 = r0000207c ^ r0000207d;\n" : String).toByteArray.data.toList
theorem checked8222 : bytes8222=statementBytes 8318 (op8222.map lower) ∧ bytes8222.length=48 := by core033_kernel_decide
def op8223 : List WordIR.Op := [.rotr 8315 25]
def bytes8223 : Bytes := ("    let r0000207f: u32 = r0000207b.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8223 : bytes8223=statementBytes 8319 (op8223.map lower) ∧ bytes8223.length=65 := by core033_kernel_decide
def op8224 : List WordIR.Op := [.bxor 8318 8319]
def bytes8224 : Bytes := ("    let r00002080: u32 = r0000207e ^ r0000207f;\n" : String).toByteArray.data.toList
theorem checked8224 : bytes8224=statementBytes 8320 (op8224.map lower) ∧ bytes8224.length=48 := by core033_kernel_decide
def op8225 : List WordIR.Op := [.badd 8234 8320]
def bytes8225 : Bytes := ("    let r00002081: u32 = r0000202a.wrapping_add(r00002080);\n" : String).toByteArray.data.toList
theorem checked8225 : bytes8225=statementBytes 8321 (op8225.map lower) ∧ bytes8225.length=60 := by core033_kernel_decide
def op8226 : List WordIR.Op := [.band 8315 8288]
def bytes8226 : Bytes := ("    let r00002082: u32 = r0000207b & r00002060;\n" : String).toByteArray.data.toList
theorem checked8226 : bytes8226=statementBytes 8322 (op8226.map lower) ∧ bytes8226.length=48 := by core033_kernel_decide
def op8227 : List WordIR.Op := [.bnot 8315]
def bytes8227 : Bytes := ("    let r00002083: u32 = !r0000207b;\n" : String).toByteArray.data.toList
theorem checked8227 : bytes8227=statementBytes 8323 (op8227.map lower) ∧ bytes8227.length=37 := by core033_kernel_decide
def op8228 : List WordIR.Op := [.band 8323 8261]
def bytes8228 : Bytes := ("    let r00002084: u32 = r00002083 & r00002045;\n" : String).toByteArray.data.toList
theorem checked8228 : bytes8228=statementBytes 8324 (op8228.map lower) ∧ bytes8228.length=48 := by core033_kernel_decide
def op8229 : List WordIR.Op := [.bxor 8322 8324]
def bytes8229 : Bytes := ("    let r00002085: u32 = r00002082 ^ r00002084;\n" : String).toByteArray.data.toList
theorem checked8229 : bytes8229=statementBytes 8325 (op8229.map lower) ∧ bytes8229.length=48 := by core033_kernel_decide
def op8230 : List WordIR.Op := [.badd 8321 8325]
def bytes8230 : Bytes := ("    let r00002086: u32 = r00002081.wrapping_add(r00002085);\n" : String).toByteArray.data.toList
theorem checked8230 : bytes8230=statementBytes 8326 (op8230.map lower) ∧ bytes8230.length=60 := by core033_kernel_decide
def op8231 : List WordIR.Op := [.literal (BitVec.ofNat 32 310598401)]
def bytes8231 : Bytes := ("    let r00002087: u32 = 0x12835b01_u32;\n" : String).toByteArray.data.toList
theorem checked8231 : bytes8231=statementBytes 8327 (op8231.map lower) ∧ bytes8231.length=41 := by core033_kernel_decide
def op8232 : List WordIR.Op := [.badd 8326 8327]
def bytes8232 : Bytes := ("    let r00002088: u32 = r00002086.wrapping_add(r00002087);\n" : String).toByteArray.data.toList
theorem checked8232 : bytes8232=statementBytes 8328 (op8232.map lower) ∧ bytes8232.length=60 := by core033_kernel_decide
def op8233 : List WordIR.Op := [.badd 8328 6260]
def bytes8233 : Bytes := ("    let r00002089: u32 = r00002088.wrapping_add(r00001874);\n" : String).toByteArray.data.toList
theorem checked8233 : bytes8233=statementBytes 8329 (op8233.map lower) ∧ bytes8233.length=60 := by core033_kernel_decide
def op8234 : List WordIR.Op := [.rotr 8314 2]
def bytes8234 : Bytes := ("    let r0000208a: u32 = r0000207a.rotate_right(0x00000002_u32);\n" : String).toByteArray.data.toList
theorem checked8234 : bytes8234=statementBytes 8330 (op8234.map lower) ∧ bytes8234.length=65 := by core033_kernel_decide
def op8235 : List WordIR.Op := [.rotr 8314 13]
def bytes8235 : Bytes := ("    let r0000208b: u32 = r0000207a.rotate_right(0x0000000d_u32);\n" : String).toByteArray.data.toList
theorem checked8235 : bytes8235=statementBytes 8331 (op8235.map lower) ∧ bytes8235.length=65 := by core033_kernel_decide
def op8236 : List WordIR.Op := [.bxor 8330 8331]
def bytes8236 : Bytes := ("    let r0000208c: u32 = r0000208a ^ r0000208b;\n" : String).toByteArray.data.toList
theorem checked8236 : bytes8236=statementBytes 8332 (op8236.map lower) ∧ bytes8236.length=48 := by core033_kernel_decide
def op8237 : List WordIR.Op := [.rotr 8314 22]
def bytes8237 : Bytes := ("    let r0000208d: u32 = r0000207a.rotate_right(0x00000016_u32);\n" : String).toByteArray.data.toList
theorem checked8237 : bytes8237=statementBytes 8333 (op8237.map lower) ∧ bytes8237.length=65 := by core033_kernel_decide
def op8238 : List WordIR.Op := [.bxor 8332 8333]
def bytes8238 : Bytes := ("    let r0000208e: u32 = r0000208c ^ r0000208d;\n" : String).toByteArray.data.toList
theorem checked8238 : bytes8238=statementBytes 8334 (op8238.map lower) ∧ bytes8238.length=48 := by core033_kernel_decide
def op8239 : List WordIR.Op := [.band 8314 8287]
def bytes8239 : Bytes := ("    let r0000208f: u32 = r0000207a & r0000205f;\n" : String).toByteArray.data.toList
theorem checked8239 : bytes8239=statementBytes 8335 (op8239.map lower) ∧ bytes8239.length=48 := by core033_kernel_decide
def op8240 : List WordIR.Op := [.band 8314 8260]
def bytes8240 : Bytes := ("    let r00002090: u32 = r0000207a & r00002044;\n" : String).toByteArray.data.toList
theorem checked8240 : bytes8240=statementBytes 8336 (op8240.map lower) ∧ bytes8240.length=48 := by core033_kernel_decide
def op8241 : List WordIR.Op := [.bxor 8335 8336]
def bytes8241 : Bytes := ("    let r00002091: u32 = r0000208f ^ r00002090;\n" : String).toByteArray.data.toList
theorem checked8241 : bytes8241=statementBytes 8337 (op8241.map lower) ∧ bytes8241.length=48 := by core033_kernel_decide
def op8242 : List WordIR.Op := [.band 8287 8260]
def bytes8242 : Bytes := ("    let r00002092: u32 = r0000205f & r00002044;\n" : String).toByteArray.data.toList
theorem checked8242 : bytes8242=statementBytes 8338 (op8242.map lower) ∧ bytes8242.length=48 := by core033_kernel_decide
def op8243 : List WordIR.Op := [.bxor 8337 8338]
def bytes8243 : Bytes := ("    let r00002093: u32 = r00002091 ^ r00002092;\n" : String).toByteArray.data.toList
theorem checked8243 : bytes8243=statementBytes 8339 (op8243.map lower) ∧ bytes8243.length=48 := by core033_kernel_decide
def op8244 : List WordIR.Op := [.badd 8334 8339]
def bytes8244 : Bytes := ("    let r00002094: u32 = r0000208e.wrapping_add(r00002093);\n" : String).toByteArray.data.toList
theorem checked8244 : bytes8244=statementBytes 8340 (op8244.map lower) ∧ bytes8244.length=60 := by core033_kernel_decide
def op8245 : List WordIR.Op := [.badd 8329 8340]
def bytes8245 : Bytes := ("    let r00002095: u32 = r00002089.wrapping_add(r00002094);\n" : String).toByteArray.data.toList
theorem checked8245 : bytes8245=statementBytes 8341 (op8245.map lower) ∧ bytes8245.length=60 := by core033_kernel_decide
def op8246 : List WordIR.Op := [.badd 8233 8329]
def bytes8246 : Bytes := ("    let r00002096: u32 = r00002029.wrapping_add(r00002089);\n" : String).toByteArray.data.toList
theorem checked8246 : bytes8246=statementBytes 8342 (op8246.map lower) ∧ bytes8246.length=60 := by core033_kernel_decide
def op8247 : List WordIR.Op := [.rotr 8342 6]
def bytes8247 : Bytes := ("    let r00002097: u32 = r00002096.rotate_right(0x00000006_u32);\n" : String).toByteArray.data.toList
theorem checked8247 : bytes8247=statementBytes 8343 (op8247.map lower) ∧ bytes8247.length=65 := by core033_kernel_decide
def op8248 : List WordIR.Op := [.rotr 8342 11]
def bytes8248 : Bytes := ("    let r00002098: u32 = r00002096.rotate_right(0x0000000b_u32);\n" : String).toByteArray.data.toList
theorem checked8248 : bytes8248=statementBytes 8344 (op8248.map lower) ∧ bytes8248.length=65 := by core033_kernel_decide
def op8249 : List WordIR.Op := [.bxor 8343 8344]
def bytes8249 : Bytes := ("    let r00002099: u32 = r00002097 ^ r00002098;\n" : String).toByteArray.data.toList
theorem checked8249 : bytes8249=statementBytes 8345 (op8249.map lower) ∧ bytes8249.length=48 := by core033_kernel_decide
def op8250 : List WordIR.Op := [.rotr 8342 25]
def bytes8250 : Bytes := ("    let r0000209a: u32 = r00002096.rotate_right(0x00000019_u32);\n" : String).toByteArray.data.toList
theorem checked8250 : bytes8250=statementBytes 8346 (op8250.map lower) ∧ bytes8250.length=65 := by core033_kernel_decide
def op8251 : List WordIR.Op := [.bxor 8345 8346]
def bytes8251 : Bytes := ("    let r0000209b: u32 = r00002099 ^ r0000209a;\n" : String).toByteArray.data.toList
theorem checked8251 : bytes8251=statementBytes 8347 (op8251.map lower) ∧ bytes8251.length=48 := by core033_kernel_decide
def op8252 : List WordIR.Op := [.badd 8261 8347]
def bytes8252 : Bytes := ("    let r0000209c: u32 = r00002045.wrapping_add(r0000209b);\n" : String).toByteArray.data.toList
theorem checked8252 : bytes8252=statementBytes 8348 (op8252.map lower) ∧ bytes8252.length=60 := by core033_kernel_decide
def op8253 : List WordIR.Op := [.band 8342 8315]
def bytes8253 : Bytes := ("    let r0000209d: u32 = r00002096 & r0000207b;\n" : String).toByteArray.data.toList
theorem checked8253 : bytes8253=statementBytes 8349 (op8253.map lower) ∧ bytes8253.length=48 := by core033_kernel_decide
def op8254 : List WordIR.Op := [.bnot 8342]
def bytes8254 : Bytes := ("    let r0000209e: u32 = !r00002096;\n" : String).toByteArray.data.toList
theorem checked8254 : bytes8254=statementBytes 8350 (op8254.map lower) ∧ bytes8254.length=37 := by core033_kernel_decide
def op8255 : List WordIR.Op := [.band 8350 8288]
def bytes8255 : Bytes := ("    let r0000209f: u32 = r0000209e & r00002060;\n" : String).toByteArray.data.toList
theorem checked8255 : bytes8255=statementBytes 8351 (op8255.map lower) ∧ bytes8255.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op8192,op8193,op8194,op8195,op8196,op8197,op8198,op8199,op8200,op8201,op8202,op8203,op8204,op8205,op8206,op8207,op8208,op8209,op8210,op8211,op8212,op8213,op8214,op8215,op8216,op8217,op8218,op8219,op8220,op8221,op8222,op8223,op8224,op8225,op8226,op8227,op8228,op8229,op8230,op8231,op8232,op8233,op8234,op8235,op8236,op8237,op8238,op8239,op8240,op8241,op8242,op8243,op8244,op8245,op8246,op8247,op8248,op8249,op8250,op8251,op8252,op8253,op8254,op8255]
def chunks : List Bytes := [bytes8192,bytes8193,bytes8194,bytes8195,bytes8196,bytes8197,bytes8198,bytes8199,bytes8200,bytes8201,bytes8202,bytes8203,bytes8204,bytes8205,bytes8206,bytes8207,bytes8208,bytes8209,bytes8210,bytes8211,bytes8212,bytes8213,bytes8214,bytes8215,bytes8216,bytes8217,bytes8218,bytes8219,bytes8220,bytes8221,bytes8222,bytes8223,bytes8224,bytes8225,bytes8226,bytes8227,bytes8228,bytes8229,bytes8230,bytes8231,bytes8232,bytes8233,bytes8234,bytes8235,bytes8236,bytes8237,bytes8238,bytes8239,bytes8240,bytes8241,bytes8242,bytes8243,bytes8244,bytes8245,bytes8246,bytes8247,bytes8248,bytes8249,bytes8250,bytes8251,bytes8252,bytes8253,bytes8254,bytes8255]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 8288 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked8192.1 (.cons _ _ _ _ _ checked8193.1 (.cons _ _ _ _ _ checked8194.1 (.cons _ _ _ _ _ checked8195.1 (.cons _ _ _ _ _ checked8196.1 (.cons _ _ _ _ _ checked8197.1 (.cons _ _ _ _ _ checked8198.1 (.cons _ _ _ _ _ checked8199.1 (.cons _ _ _ _ _ checked8200.1 (.cons _ _ _ _ _ checked8201.1 (.cons _ _ _ _ _ checked8202.1 (.cons _ _ _ _ _ checked8203.1 (.cons _ _ _ _ _ checked8204.1 (.cons _ _ _ _ _ checked8205.1 (.cons _ _ _ _ _ checked8206.1 (.cons _ _ _ _ _ checked8207.1 (.cons _ _ _ _ _ checked8208.1 (.cons _ _ _ _ _ checked8209.1 (.cons _ _ _ _ _ checked8210.1 (.cons _ _ _ _ _ checked8211.1 (.cons _ _ _ _ _ checked8212.1 (.cons _ _ _ _ _ checked8213.1 (.cons _ _ _ _ _ checked8214.1 (.cons _ _ _ _ _ checked8215.1 (.cons _ _ _ _ _ checked8216.1 (.cons _ _ _ _ _ checked8217.1 (.cons _ _ _ _ _ checked8218.1 (.cons _ _ _ _ _ checked8219.1 (.cons _ _ _ _ _ checked8220.1 (.cons _ _ _ _ _ checked8221.1 (.cons _ _ _ _ _ checked8222.1 (.cons _ _ _ _ _ checked8223.1 (.cons _ _ _ _ _ checked8224.1 (.cons _ _ _ _ _ checked8225.1 (.cons _ _ _ _ _ checked8226.1 (.cons _ _ _ _ _ checked8227.1 (.cons _ _ _ _ _ checked8228.1 (.cons _ _ _ _ _ checked8229.1 (.cons _ _ _ _ _ checked8230.1 (.cons _ _ _ _ _ checked8231.1 (.cons _ _ _ _ _ checked8232.1 (.cons _ _ _ _ _ checked8233.1 (.cons _ _ _ _ _ checked8234.1 (.cons _ _ _ _ _ checked8235.1 (.cons _ _ _ _ _ checked8236.1 (.cons _ _ _ _ _ checked8237.1 (.cons _ _ _ _ _ checked8238.1 (.cons _ _ _ _ _ checked8239.1 (.cons _ _ _ _ _ checked8240.1 (.cons _ _ _ _ _ checked8241.1 (.cons _ _ _ _ _ checked8242.1 (.cons _ _ _ _ _ checked8243.1 (.cons _ _ _ _ _ checked8244.1 (.cons _ _ _ _ _ checked8245.1 (.cons _ _ _ _ _ checked8246.1 (.cons _ _ _ _ _ checked8247.1 (.cons _ _ _ _ _ checked8248.1 (.cons _ _ _ _ _ checked8249.1 (.cons _ _ _ _ _ checked8250.1 (.cons _ _ _ _ _ checked8251.1 (.cons _ _ _ _ _ checked8252.1 (.cons _ _ _ _ _ checked8253.1 (.cons _ _ _ _ _ checked8254.1 (.cons _ _ _ _ _ checked8255.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 8288 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=3472 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked8192.2,checked8193.2,checked8194.2,checked8195.2,checked8196.2,checked8197.2,checked8198.2,checked8199.2,checked8200.2,checked8201.2,checked8202.2,checked8203.2,checked8204.2,checked8205.2,checked8206.2,checked8207.2,checked8208.2,checked8209.2,checked8210.2,checked8211.2,checked8212.2,checked8213.2,checked8214.2,checked8215.2,checked8216.2,checked8217.2,checked8218.2,checked8219.2,checked8220.2,checked8221.2,checked8222.2,checked8223.2,checked8224.2,checked8225.2,checked8226.2,checked8227.2,checked8228.2,checked8229.2,checked8230.2,checked8231.2,checked8232.2,checked8233.2,checked8234.2,checked8235.2,checked8236.2,checked8237.2,checked8238.2,checked8239.2,checked8240.2,checked8241.2,checked8242.2,checked8243.2,checked8244.2,checked8245.2,checked8246.2,checked8247.2,checked8248.2,checked8249.2,checked8250.2,checked8251.2,checked8252.2,checked8253.2,checked8254.2,checked8255.2]
  decide
end ArtifactPairedPathRoundGroup128
