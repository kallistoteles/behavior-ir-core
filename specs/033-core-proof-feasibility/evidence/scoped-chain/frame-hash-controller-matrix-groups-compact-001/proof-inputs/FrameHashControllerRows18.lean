import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData18
import FrameHashControllerInstructionMatrixData19
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1195 : actualRows1195=WordField.canonicalRows actualModulus 1195 (.shr 754 1) := by core033_kernel_decide
theorem stats1195 : actualRows1195.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1195=5052 := by core033_kernel_decide
theorem rows1196 : actualRows1196=WordField.canonicalRows actualModulus 1196 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1196 : actualRows1196.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1196=2820 := by core033_kernel_decide
theorem rows1197 : actualRows1197=WordField.canonicalRows actualModulus 1197 (.bnot 1196) := by core033_kernel_decide
theorem stats1197 : actualRows1197.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1197=6276 := by core033_kernel_decide
theorem rows1198 : actualRows1198=WordField.canonicalRows actualModulus 1198 (.bxor 1195 1197) := by core033_kernel_decide
theorem stats1198 : actualRows1198.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1198=7428 := by core033_kernel_decide
theorem rows1199 : actualRows1199=WordField.canonicalRows actualModulus 1199 (.shr 754 1) := by core033_kernel_decide
theorem stats1199 : actualRows1199.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1199=5052 := by core033_kernel_decide
theorem rows1200 : actualRows1200=WordField.canonicalRows actualModulus 1200 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1200 : actualRows1200.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1200=2820 := by core033_kernel_decide
theorem rows1201 : actualRows1201=WordField.canonicalRows actualModulus 1201 (.bnot 1200) := by core033_kernel_decide
theorem stats1201 : actualRows1201.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1201=6276 := by core033_kernel_decide
theorem rows1202 : actualRows1202=WordField.canonicalRows actualModulus 1202 (.badd 1199 1201) := by core033_kernel_decide
theorem stats1202 : actualRows1202.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1202=5388 := by core033_kernel_decide
theorem rows1203 : actualRows1203=WordField.canonicalRows actualModulus 1203 (.bnot 1202) := by core033_kernel_decide
theorem stats1203 : actualRows1203.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1203=6276 := by core033_kernel_decide
theorem rows1204 : actualRows1204=WordField.canonicalRows actualModulus 1204 (.band 1198 1203) := by core033_kernel_decide
theorem stats1204 : actualRows1204.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1204=5124 := by core033_kernel_decide
theorem rows1205 : actualRows1205=WordField.canonicalRows actualModulus 1205 (.bxor 1194 1204) := by core033_kernel_decide
theorem stats1205 : actualRows1205.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1205=7428 := by core033_kernel_decide
theorem rows1206 : actualRows1206=WordField.canonicalRows actualModulus 1206 (.shr 1205 31) := by core033_kernel_decide
theorem stats1206 : actualRows1206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1206=2892 := by core033_kernel_decide
theorem rows1207 : actualRows1207=WordField.canonicalRows actualModulus 1207 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1207 : actualRows1207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1207=2892 := by core033_kernel_decide
theorem rows1208 : actualRows1208=WordField.canonicalRows actualModulus 1208 (.bxor 1206 1207) := by core033_kernel_decide
theorem stats1208 : actualRows1208.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1208=7428 := by core033_kernel_decide
theorem rows1209 : actualRows1209=WordField.canonicalRows actualModulus 1209 (.badd 449 569) := by core033_kernel_decide
theorem stats1209 : actualRows1209.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1209=5388 := by core033_kernel_decide
theorem rows1210 : actualRows1210=WordField.canonicalRows actualModulus 1210 (.bxor 1209 618) := by core033_kernel_decide
theorem stats1210 : actualRows1210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1210=7428 := by core033_kernel_decide
theorem rows1211 : actualRows1211=WordField.canonicalRows actualModulus 1211 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1211 : actualRows1211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1211=2820 := by core033_kernel_decide
theorem rows1212 : actualRows1212=WordField.canonicalRows actualModulus 1212 (.bnot 1211) := by core033_kernel_decide
theorem stats1212 : actualRows1212.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1212=6276 := by core033_kernel_decide
theorem rows1213 : actualRows1213=WordField.canonicalRows actualModulus 1213 (.band 1210 1212) := by core033_kernel_decide
theorem stats1213 : actualRows1213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1213=5124 := by core033_kernel_decide
theorem rows1214 : actualRows1214=WordField.canonicalRows actualModulus 1214 (.badd 449 569) := by core033_kernel_decide
theorem stats1214 : actualRows1214.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1214=5388 := by core033_kernel_decide
theorem rows1215 : actualRows1215=WordField.canonicalRows actualModulus 1215 (.bxor 1214 618) := by core033_kernel_decide
theorem stats1215 : actualRows1215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1215=7428 := by core033_kernel_decide
theorem rows1216 : actualRows1216=WordField.canonicalRows actualModulus 1216 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1216 : actualRows1216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1216=2820 := by core033_kernel_decide
theorem rows1217 : actualRows1217=WordField.canonicalRows actualModulus 1217 (.bnot 1216) := by core033_kernel_decide
theorem stats1217 : actualRows1217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1217=6276 := by core033_kernel_decide
theorem rows1218 : actualRows1218=WordField.canonicalRows actualModulus 1218 (.bxor 1215 1217) := by core033_kernel_decide
theorem stats1218 : actualRows1218.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1218=7428 := by core033_kernel_decide
theorem rows1219 : actualRows1219=WordField.canonicalRows actualModulus 1219 (.badd 449 569) := by core033_kernel_decide
theorem stats1219 : actualRows1219.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1219=5388 := by core033_kernel_decide
theorem rows1220 : actualRows1220=WordField.canonicalRows actualModulus 1220 (.bxor 1219 618) := by core033_kernel_decide
theorem stats1220 : actualRows1220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1220=7428 := by core033_kernel_decide
theorem rows1221 : actualRows1221=WordField.canonicalRows actualModulus 1221 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1221 : actualRows1221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1221=2820 := by core033_kernel_decide
theorem rows1222 : actualRows1222=WordField.canonicalRows actualModulus 1222 (.bnot 1221) := by core033_kernel_decide
theorem stats1222 : actualRows1222.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1222=6276 := by core033_kernel_decide
theorem rows1223 : actualRows1223=WordField.canonicalRows actualModulus 1223 (.badd 1220 1222) := by core033_kernel_decide
theorem stats1223 : actualRows1223.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1223=5388 := by core033_kernel_decide
theorem rows1224 : actualRows1224=WordField.canonicalRows actualModulus 1224 (.bnot 1223) := by core033_kernel_decide
theorem stats1224 : actualRows1224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1224=6276 := by core033_kernel_decide
theorem rows1225 : actualRows1225=WordField.canonicalRows actualModulus 1225 (.band 1218 1224) := by core033_kernel_decide
theorem stats1225 : actualRows1225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1225=5124 := by core033_kernel_decide
theorem rows1226 : actualRows1226=WordField.canonicalRows actualModulus 1226 (.bxor 1213 1225) := by core033_kernel_decide
theorem stats1226 : actualRows1226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1226=7428 := by core033_kernel_decide
theorem rows1227 : actualRows1227=WordField.canonicalRows actualModulus 1227 (.shr 1226 31) := by core033_kernel_decide
theorem stats1227 : actualRows1227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1227=2892 := by core033_kernel_decide
theorem rows1228 : actualRows1228=WordField.canonicalRows actualModulus 1228 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1228 : actualRows1228.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1228=2892 := by core033_kernel_decide
theorem rows1229 : actualRows1229=WordField.canonicalRows actualModulus 1229 (.bxor 1227 1228) := by core033_kernel_decide
theorem stats1229 : actualRows1229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1229=7428 := by core033_kernel_decide
theorem rows1230 : actualRows1230=WordField.canonicalRows actualModulus 1230 (.badd 459 579) := by core033_kernel_decide
theorem stats1230 : actualRows1230.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1230=5388 := by core033_kernel_decide
theorem rows1231 : actualRows1231=WordField.canonicalRows actualModulus 1231 (.band 449 569) := by core033_kernel_decide
theorem stats1231 : actualRows1231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1231=5124 := by core033_kernel_decide
theorem rows1232 : actualRows1232=WordField.canonicalRows actualModulus 1232 (.bxor 449 569) := by core033_kernel_decide
theorem stats1232 : actualRows1232.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1232=7428 := by core033_kernel_decide
theorem rows1233 : actualRows1233=WordField.canonicalRows actualModulus 1233 (.badd 449 569) := by core033_kernel_decide
theorem stats1233 : actualRows1233.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1233=5388 := by core033_kernel_decide
theorem rows1234 : actualRows1234=WordField.canonicalRows actualModulus 1234 (.bnot 1233) := by core033_kernel_decide
theorem stats1234 : actualRows1234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1234=6276 := by core033_kernel_decide
theorem rows1235 : actualRows1235=WordField.canonicalRows actualModulus 1235 (.band 1232 1234) := by core033_kernel_decide
theorem stats1235 : actualRows1235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1235=5124 := by core033_kernel_decide
theorem rows1236 : actualRows1236=WordField.canonicalRows actualModulus 1236 (.bxor 1231 1235) := by core033_kernel_decide
theorem stats1236 : actualRows1236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1236=7428 := by core033_kernel_decide
theorem rows1237 : actualRows1237=WordField.canonicalRows actualModulus 1237 (.shr 1236 31) := by core033_kernel_decide
theorem stats1237 : actualRows1237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1237=2892 := by core033_kernel_decide
theorem rows1238 : actualRows1238=WordField.canonicalRows actualModulus 1238 (.badd 1230 1237) := by core033_kernel_decide
theorem stats1238 : actualRows1238.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1238=5388 := by core033_kernel_decide
theorem rows1239 : actualRows1239=WordField.canonicalRows actualModulus 1239 (.bxor 1238 627) := by core033_kernel_decide
theorem stats1239 : actualRows1239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1239=7428 := by core033_kernel_decide
theorem rows1240 : actualRows1240=WordField.canonicalRows actualModulus 1240 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1240 : actualRows1240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1240=2820 := by core033_kernel_decide
theorem rows1241 : actualRows1241=WordField.canonicalRows actualModulus 1241 (.bnot 1240) := by core033_kernel_decide
theorem stats1241 : actualRows1241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1241=6276 := by core033_kernel_decide
theorem rows1242 : actualRows1242=WordField.canonicalRows actualModulus 1242 (.band 1239 1241) := by core033_kernel_decide
theorem stats1242 : actualRows1242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1242=5124 := by core033_kernel_decide
theorem rows1243 : actualRows1243=WordField.canonicalRows actualModulus 1243 (.badd 459 579) := by core033_kernel_decide
theorem stats1243 : actualRows1243.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1243=5388 := by core033_kernel_decide
theorem rows1244 : actualRows1244=WordField.canonicalRows actualModulus 1244 (.band 449 569) := by core033_kernel_decide
theorem stats1244 : actualRows1244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1244=5124 := by core033_kernel_decide
theorem rows1245 : actualRows1245=WordField.canonicalRows actualModulus 1245 (.bxor 449 569) := by core033_kernel_decide
theorem stats1245 : actualRows1245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1245=7428 := by core033_kernel_decide
theorem rows1246 : actualRows1246=WordField.canonicalRows actualModulus 1246 (.badd 449 569) := by core033_kernel_decide
theorem stats1246 : actualRows1246.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1246=5388 := by core033_kernel_decide
theorem rows1247 : actualRows1247=WordField.canonicalRows actualModulus 1247 (.bnot 1246) := by core033_kernel_decide
theorem stats1247 : actualRows1247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1247=6276 := by core033_kernel_decide
theorem rows1248 : actualRows1248=WordField.canonicalRows actualModulus 1248 (.band 1245 1247) := by core033_kernel_decide
theorem stats1248 : actualRows1248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1248=5124 := by core033_kernel_decide
theorem rows1249 : actualRows1249=WordField.canonicalRows actualModulus 1249 (.bxor 1244 1248) := by core033_kernel_decide
theorem stats1249 : actualRows1249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1249=7428 := by core033_kernel_decide
theorem rows1250 : actualRows1250=WordField.canonicalRows actualModulus 1250 (.shr 1249 31) := by core033_kernel_decide
theorem stats1250 : actualRows1250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1250=2892 := by core033_kernel_decide
theorem rows1251 : actualRows1251=WordField.canonicalRows actualModulus 1251 (.badd 1243 1250) := by core033_kernel_decide
theorem stats1251 : actualRows1251.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1251=5388 := by core033_kernel_decide
theorem rows1252 : actualRows1252=WordField.canonicalRows actualModulus 1252 (.bxor 1251 627) := by core033_kernel_decide
theorem stats1252 : actualRows1252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1252=7428 := by core033_kernel_decide
theorem rows1253 : actualRows1253=WordField.canonicalRows actualModulus 1253 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1253 : actualRows1253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1253=2820 := by core033_kernel_decide
theorem rows1254 : actualRows1254=WordField.canonicalRows actualModulus 1254 (.bnot 1253) := by core033_kernel_decide
theorem stats1254 : actualRows1254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1254=6276 := by core033_kernel_decide
theorem rows1255 : actualRows1255=WordField.canonicalRows actualModulus 1255 (.bxor 1252 1254) := by core033_kernel_decide
theorem stats1255 : actualRows1255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1255=7428 := by core033_kernel_decide
theorem rows1256 : actualRows1256=WordField.canonicalRows actualModulus 1256 (.badd 459 579) := by core033_kernel_decide
theorem stats1256 : actualRows1256.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1256=5388 := by core033_kernel_decide
theorem rows1257 : actualRows1257=WordField.canonicalRows actualModulus 1257 (.band 449 569) := by core033_kernel_decide
theorem stats1257 : actualRows1257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1257=5124 := by core033_kernel_decide
theorem rows1258 : actualRows1258=WordField.canonicalRows actualModulus 1258 (.bxor 449 569) := by core033_kernel_decide
theorem stats1258 : actualRows1258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1258=7428 := by core033_kernel_decide
def partRows18 : List R1CS.Row := actualRows1195++actualRows1196++actualRows1197++actualRows1198++actualRows1199++actualRows1200++actualRows1201++actualRows1202++actualRows1203++actualRows1204++actualRows1205++actualRows1206++actualRows1207++actualRows1208++actualRows1209++actualRows1210++actualRows1211++actualRows1212++actualRows1213++actualRows1214++actualRows1215++actualRows1216++actualRows1217++actualRows1218++actualRows1219++actualRows1220++actualRows1221++actualRows1222++actualRows1223++actualRows1224++actualRows1225++actualRows1226++actualRows1227++actualRows1228++actualRows1229++actualRows1230++actualRows1231++actualRows1232++actualRows1233++actualRows1234++actualRows1235++actualRows1236++actualRows1237++actualRows1238++actualRows1239++actualRows1240++actualRows1241++actualRows1242++actualRows1243++actualRows1244++actualRows1245++actualRows1246++actualRows1247++actualRows1248++actualRows1249++actualRows1250++actualRows1251++actualRows1252++actualRows1253++actualRows1254++actualRows1255++actualRows1256++actualRows1257++actualRows1258
def partOps18 : List WordIR.Op := [.shr 754 1,.literal (BitVec.ofNat 32 0),.bnot 1196,.bxor 1195 1197,.shr 754 1,.literal (BitVec.ofNat 32 0),.bnot 1200,.badd 1199 1201,.bnot 1202,.band 1198 1203,.bxor 1194 1204,.shr 1205 31,.literal (BitVec.ofNat 32 1),.bxor 1206 1207,.badd 449 569,.bxor 1209 618,.literal (BitVec.ofNat 32 0),.bnot 1211,.band 1210 1212,.badd 449 569,.bxor 1214 618,.literal (BitVec.ofNat 32 0),.bnot 1216,.bxor 1215 1217,.badd 449 569,.bxor 1219 618,.literal (BitVec.ofNat 32 0),.bnot 1221,.badd 1220 1222,.bnot 1223,.band 1218 1224,.bxor 1213 1225,.shr 1226 31,.literal (BitVec.ofNat 32 1),.bxor 1227 1228,.badd 459 579,.band 449 569,.bxor 449 569,.badd 449 569,.bnot 1233,.band 1232 1234,.bxor 1231 1235,.shr 1236 31,.badd 1230 1237,.bxor 1238 627,.literal (BitVec.ofNat 32 0),.bnot 1240,.band 1239 1241,.badd 459 579,.band 449 569,.bxor 449 569,.badd 449 569,.bnot 1246,.band 1245 1247,.bxor 1244 1248,.shr 1249 31,.badd 1243 1250,.bxor 1251 627,.literal (BitVec.ofNat 32 0),.bnot 1253,.bxor 1252 1254,.badd 459 579,.band 449 569,.bxor 449 569]
theorem partExact18 : partRows18=WordField.rows actualModulus 1195 partOps18 := by
  simp only [partRows18,partOps18,WordField.rows,rows1195,rows1196,rows1197,rows1198,rows1199,rows1200,rows1201,rows1202,rows1203,rows1204,rows1205,rows1206,rows1207,rows1208,rows1209,rows1210,rows1211,rows1212,rows1213,rows1214,rows1215,rows1216,rows1217,rows1218,rows1219,rows1220,rows1221,rows1222,rows1223,rows1224,rows1225,rows1226,rows1227,rows1228,rows1229,rows1230,rows1231,rows1232,rows1233,rows1234,rows1235,rows1236,rows1237,rows1238,rows1239,rows1240,rows1241,rows1242,rows1243,rows1244,rows1245,rows1246,rows1247,rows1248,rows1249,rows1250,rows1251,rows1252,rows1253,rows1254,rows1255,rows1256,rows1257,rows1258,List.append_assoc,List.append_nil]
theorem partLength18 : partOps18.length=64 := by decide
theorem partStats18 : partRows18.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows18=353280 := by
  simp only [partRows18,List.length_append,MatrixRowBlocks.rows_weight_append,stats1195.1,stats1195.2,stats1196.1,stats1196.2,stats1197.1,stats1197.2,stats1198.1,stats1198.2,stats1199.1,stats1199.2,stats1200.1,stats1200.2,stats1201.1,stats1201.2,stats1202.1,stats1202.2,stats1203.1,stats1203.2,stats1204.1,stats1204.2,stats1205.1,stats1205.2,stats1206.1,stats1206.2,stats1207.1,stats1207.2,stats1208.1,stats1208.2,stats1209.1,stats1209.2,stats1210.1,stats1210.2,stats1211.1,stats1211.2,stats1212.1,stats1212.2,stats1213.1,stats1213.2,stats1214.1,stats1214.2,stats1215.1,stats1215.2,stats1216.1,stats1216.2,stats1217.1,stats1217.2,stats1218.1,stats1218.2,stats1219.1,stats1219.2,stats1220.1,stats1220.2,stats1221.1,stats1221.2,stats1222.1,stats1222.2,stats1223.1,stats1223.2,stats1224.1,stats1224.2,stats1225.1,stats1225.2,stats1226.1,stats1226.2,stats1227.1,stats1227.2,stats1228.1,stats1228.2,stats1229.1,stats1229.2,stats1230.1,stats1230.2,stats1231.1,stats1231.2,stats1232.1,stats1232.2,stats1233.1,stats1233.2,stats1234.1,stats1234.2,stats1235.1,stats1235.2,stats1236.1,stats1236.2,stats1237.1,stats1237.2,stats1238.1,stats1238.2,stats1239.1,stats1239.2,stats1240.1,stats1240.2,stats1241.1,stats1241.2,stats1242.1,stats1242.2,stats1243.1,stats1243.2,stats1244.1,stats1244.2,stats1245.1,stats1245.2,stats1246.1,stats1246.2,stats1247.1,stats1247.2,stats1248.1,stats1248.2,stats1249.1,stats1249.2,stats1250.1,stats1250.2,stats1251.1,stats1251.2,stats1252.1,stats1252.2,stats1253.1,stats1253.2,stats1254.1,stats1254.2,stats1255.1,stats1255.2,stats1256.1,stats1256.2,stats1257.1,stats1257.2,stats1258.1,stats1258.2]
  decide
end FrameHashControllerCheckedRows
