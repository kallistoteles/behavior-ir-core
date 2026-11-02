import ActualIngressIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactIngressGroup19
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op1216 : List WordIR.Op := [.shr 62 8]
def bytes1216 : Bytes := ("    let r00000500: u32 = r0000003e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1216 : bytes1216=statementBytes 1280 (op1216.map lower) ∧ bytes1216.length=54 := by core033_kernel_decide
def op1217 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1217 : Bytes := ("    let r00000501: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1217 : bytes1217=statementBytes 1281 (op1217.map lower) ∧ bytes1217.length=41 := by core033_kernel_decide
def op1218 : List WordIR.Op := [.bnot 1281]
def bytes1218 : Bytes := ("    let r00000502: u32 = !r00000501;\n" : String).toByteArray.data.toList
theorem checked1218 : bytes1218=statementBytes 1282 (op1218.map lower) ∧ bytes1218.length=37 := by core033_kernel_decide
def op1219 : List WordIR.Op := [.bxor 1280 1282]
def bytes1219 : Bytes := ("    let r00000503: u32 = r00000500 ^ r00000502;\n" : String).toByteArray.data.toList
theorem checked1219 : bytes1219=statementBytes 1283 (op1219.map lower) ∧ bytes1219.length=48 := by core033_kernel_decide
def op1220 : List WordIR.Op := [.shr 62 8]
def bytes1220 : Bytes := ("    let r00000504: u32 = r0000003e >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1220 : bytes1220=statementBytes 1284 (op1220.map lower) ∧ bytes1220.length=54 := by core033_kernel_decide
def op1221 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1221 : Bytes := ("    let r00000505: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1221 : bytes1221=statementBytes 1285 (op1221.map lower) ∧ bytes1221.length=41 := by core033_kernel_decide
def op1222 : List WordIR.Op := [.bnot 1285]
def bytes1222 : Bytes := ("    let r00000506: u32 = !r00000505;\n" : String).toByteArray.data.toList
theorem checked1222 : bytes1222=statementBytes 1286 (op1222.map lower) ∧ bytes1222.length=37 := by core033_kernel_decide
def op1223 : List WordIR.Op := [.badd 1284 1286]
def bytes1223 : Bytes := ("    let r00000507: u32 = r00000504.wrapping_add(r00000506);\n" : String).toByteArray.data.toList
theorem checked1223 : bytes1223=statementBytes 1287 (op1223.map lower) ∧ bytes1223.length=60 := by core033_kernel_decide
def op1224 : List WordIR.Op := [.bnot 1287]
def bytes1224 : Bytes := ("    let r00000508: u32 = !r00000507;\n" : String).toByteArray.data.toList
theorem checked1224 : bytes1224=statementBytes 1288 (op1224.map lower) ∧ bytes1224.length=37 := by core033_kernel_decide
def op1225 : List WordIR.Op := [.band 1283 1288]
def bytes1225 : Bytes := ("    let r00000509: u32 = r00000503 & r00000508;\n" : String).toByteArray.data.toList
theorem checked1225 : bytes1225=statementBytes 1289 (op1225.map lower) ∧ bytes1225.length=48 := by core033_kernel_decide
def op1226 : List WordIR.Op := [.bxor 1279 1289]
def bytes1226 : Bytes := ("    let r0000050a: u32 = r000004ff ^ r00000509;\n" : String).toByteArray.data.toList
theorem checked1226 : bytes1226=statementBytes 1290 (op1226.map lower) ∧ bytes1226.length=48 := by core033_kernel_decide
def op1227 : List WordIR.Op := [.shr 1290 31]
def bytes1227 : Bytes := ("    let r0000050b: u32 = r0000050a >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1227 : bytes1227=statementBytes 1291 (op1227.map lower) ∧ bytes1227.length=54 := by core033_kernel_decide
def op1228 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1228 : Bytes := ("    let r0000050c: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1228 : bytes1228=statementBytes 1292 (op1228.map lower) ∧ bytes1228.length=41 := by core033_kernel_decide
def op1229 : List WordIR.Op := [.bxor 1291 1292]
def bytes1229 : Bytes := ("    let r0000050d: u32 = r0000050b ^ r0000050c;\n" : String).toByteArray.data.toList
theorem checked1229 : bytes1229=statementBytes 1293 (op1229.map lower) ∧ bytes1229.length=48 := by core033_kernel_decide
def op1230 : List WordIR.Op := [.shr 63 8]
def bytes1230 : Bytes := ("    let r0000050e: u32 = r0000003f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1230 : bytes1230=statementBytes 1294 (op1230.map lower) ∧ bytes1230.length=54 := by core033_kernel_decide
def op1231 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1231 : Bytes := ("    let r0000050f: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1231 : bytes1231=statementBytes 1295 (op1231.map lower) ∧ bytes1231.length=41 := by core033_kernel_decide
def op1232 : List WordIR.Op := [.bnot 1295]
def bytes1232 : Bytes := ("    let r00000510: u32 = !r0000050f;\n" : String).toByteArray.data.toList
theorem checked1232 : bytes1232=statementBytes 1296 (op1232.map lower) ∧ bytes1232.length=37 := by core033_kernel_decide
def op1233 : List WordIR.Op := [.band 1294 1296]
def bytes1233 : Bytes := ("    let r00000511: u32 = r0000050e & r00000510;\n" : String).toByteArray.data.toList
theorem checked1233 : bytes1233=statementBytes 1297 (op1233.map lower) ∧ bytes1233.length=48 := by core033_kernel_decide
def op1234 : List WordIR.Op := [.shr 63 8]
def bytes1234 : Bytes := ("    let r00000512: u32 = r0000003f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1234 : bytes1234=statementBytes 1298 (op1234.map lower) ∧ bytes1234.length=54 := by core033_kernel_decide
def op1235 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1235 : Bytes := ("    let r00000513: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1235 : bytes1235=statementBytes 1299 (op1235.map lower) ∧ bytes1235.length=41 := by core033_kernel_decide
def op1236 : List WordIR.Op := [.bnot 1299]
def bytes1236 : Bytes := ("    let r00000514: u32 = !r00000513;\n" : String).toByteArray.data.toList
theorem checked1236 : bytes1236=statementBytes 1300 (op1236.map lower) ∧ bytes1236.length=37 := by core033_kernel_decide
def op1237 : List WordIR.Op := [.bxor 1298 1300]
def bytes1237 : Bytes := ("    let r00000515: u32 = r00000512 ^ r00000514;\n" : String).toByteArray.data.toList
theorem checked1237 : bytes1237=statementBytes 1301 (op1237.map lower) ∧ bytes1237.length=48 := by core033_kernel_decide
def op1238 : List WordIR.Op := [.shr 63 8]
def bytes1238 : Bytes := ("    let r00000516: u32 = r0000003f >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked1238 : bytes1238=statementBytes 1302 (op1238.map lower) ∧ bytes1238.length=54 := by core033_kernel_decide
def op1239 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes1239 : Bytes := ("    let r00000517: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked1239 : bytes1239=statementBytes 1303 (op1239.map lower) ∧ bytes1239.length=41 := by core033_kernel_decide
def op1240 : List WordIR.Op := [.bnot 1303]
def bytes1240 : Bytes := ("    let r00000518: u32 = !r00000517;\n" : String).toByteArray.data.toList
theorem checked1240 : bytes1240=statementBytes 1304 (op1240.map lower) ∧ bytes1240.length=37 := by core033_kernel_decide
def op1241 : List WordIR.Op := [.badd 1302 1304]
def bytes1241 : Bytes := ("    let r00000519: u32 = r00000516.wrapping_add(r00000518);\n" : String).toByteArray.data.toList
theorem checked1241 : bytes1241=statementBytes 1305 (op1241.map lower) ∧ bytes1241.length=60 := by core033_kernel_decide
def op1242 : List WordIR.Op := [.bnot 1305]
def bytes1242 : Bytes := ("    let r0000051a: u32 = !r00000519;\n" : String).toByteArray.data.toList
theorem checked1242 : bytes1242=statementBytes 1306 (op1242.map lower) ∧ bytes1242.length=37 := by core033_kernel_decide
def op1243 : List WordIR.Op := [.band 1301 1306]
def bytes1243 : Bytes := ("    let r0000051b: u32 = r00000515 & r0000051a;\n" : String).toByteArray.data.toList
theorem checked1243 : bytes1243=statementBytes 1307 (op1243.map lower) ∧ bytes1243.length=48 := by core033_kernel_decide
def op1244 : List WordIR.Op := [.bxor 1297 1307]
def bytes1244 : Bytes := ("    let r0000051c: u32 = r00000511 ^ r0000051b;\n" : String).toByteArray.data.toList
theorem checked1244 : bytes1244=statementBytes 1308 (op1244.map lower) ∧ bytes1244.length=48 := by core033_kernel_decide
def op1245 : List WordIR.Op := [.shr 1308 31]
def bytes1245 : Bytes := ("    let r0000051d: u32 = r0000051c >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked1245 : bytes1245=statementBytes 1309 (op1245.map lower) ∧ bytes1245.length=54 := by core033_kernel_decide
def op1246 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes1246 : Bytes := ("    let r0000051e: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked1246 : bytes1246=statementBytes 1310 (op1246.map lower) ∧ bytes1246.length=41 := by core033_kernel_decide
def op1247 : List WordIR.Op := [.bxor 1309 1310]
def bytes1247 : Bytes := ("    let r0000051f: u32 = r0000051d ^ r0000051e;\n" : String).toByteArray.data.toList
theorem checked1247 : bytes1247=statementBytes 1311 (op1247.map lower) ∧ bytes1247.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op1216,op1217,op1218,op1219,op1220,op1221,op1222,op1223,op1224,op1225,op1226,op1227,op1228,op1229,op1230,op1231,op1232,op1233,op1234,op1235,op1236,op1237,op1238,op1239,op1240,op1241,op1242,op1243,op1244,op1245,op1246,op1247]
def chunks : List Bytes := [bytes1216,bytes1217,bytes1218,bytes1219,bytes1220,bytes1221,bytes1222,bytes1223,bytes1224,bytes1225,bytes1226,bytes1227,bytes1228,bytes1229,bytes1230,bytes1231,bytes1232,bytes1233,bytes1234,bytes1235,bytes1236,bytes1237,bytes1238,bytes1239,bytes1240,bytes1241,bytes1242,bytes1243,bytes1244,bytes1245,bytes1246,bytes1247]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 1280 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked1216.1 (.cons _ _ _ _ _ checked1217.1 (.cons _ _ _ _ _ checked1218.1 (.cons _ _ _ _ _ checked1219.1 (.cons _ _ _ _ _ checked1220.1 (.cons _ _ _ _ _ checked1221.1 (.cons _ _ _ _ _ checked1222.1 (.cons _ _ _ _ _ checked1223.1 (.cons _ _ _ _ _ checked1224.1 (.cons _ _ _ _ _ checked1225.1 (.cons _ _ _ _ _ checked1226.1 (.cons _ _ _ _ _ checked1227.1 (.cons _ _ _ _ _ checked1228.1 (.cons _ _ _ _ _ checked1229.1 (.cons _ _ _ _ _ checked1230.1 (.cons _ _ _ _ _ checked1231.1 (.cons _ _ _ _ _ checked1232.1 (.cons _ _ _ _ _ checked1233.1 (.cons _ _ _ _ _ checked1234.1 (.cons _ _ _ _ _ checked1235.1 (.cons _ _ _ _ _ checked1236.1 (.cons _ _ _ _ _ checked1237.1 (.cons _ _ _ _ _ checked1238.1 (.cons _ _ _ _ _ checked1239.1 (.cons _ _ _ _ _ checked1240.1 (.cons _ _ _ _ _ checked1241.1 (.cons _ _ _ _ _ checked1242.1 (.cons _ _ _ _ _ checked1243.1 (.cons _ _ _ _ _ checked1244.1 (.cons _ _ _ _ _ checked1245.1 (.cons _ _ _ _ _ checked1246.1 (.cons _ _ _ _ _ checked1247.1 (.empty _)))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 1280 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=32 := rfl
theorem partSize : partBytes.length=1476 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked1216.2,checked1217.2,checked1218.2,checked1219.2,checked1220.2,checked1221.2,checked1222.2,checked1223.2,checked1224.2,checked1225.2,checked1226.2,checked1227.2,checked1228.2,checked1229.2,checked1230.2,checked1231.2,checked1232.2,checked1233.2,checked1234.2,checked1235.2,checked1236.2,checked1237.2,checked1238.2,checked1239.2,checked1240.2,checked1241.2,checked1242.2,checked1243.2,checked1244.2,checked1245.2,checked1246.2,checked1247.2]
  decide
end ArtifactIngressGroup19
