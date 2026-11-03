import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData18
import AuthenticatedBranchRoundInstructionMatrixData19
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows1206 : actualRows1206=WordField.canonicalRows actualModulus 1206 (.bnot 182) := by core033_kernel_decide
theorem stats1206 : actualRows1206.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1206=6276 := by core033_kernel_decide
theorem rows1207 : actualRows1207=WordField.canonicalRows actualModulus 1207 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1207 : actualRows1207.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1207=2892 := by core033_kernel_decide
theorem rows1208 : actualRows1208=WordField.canonicalRows actualModulus 1208 (.badd 1206 1207) := by core033_kernel_decide
theorem stats1208 : actualRows1208.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1208=5388 := by core033_kernel_decide
theorem rows1209 : actualRows1209=WordField.canonicalRows actualModulus 1209 (.band 1208 51) := by core033_kernel_decide
theorem stats1209 : actualRows1209.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1209=5124 := by core033_kernel_decide
theorem rows1210 : actualRows1210=WordField.canonicalRows actualModulus 1210 (.bnot 182) := by core033_kernel_decide
theorem stats1210 : actualRows1210.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1210=6276 := by core033_kernel_decide
theorem rows1211 : actualRows1211=WordField.canonicalRows actualModulus 1211 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1211 : actualRows1211.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1211=2892 := by core033_kernel_decide
theorem rows1212 : actualRows1212=WordField.canonicalRows actualModulus 1212 (.badd 1210 1211) := by core033_kernel_decide
theorem stats1212 : actualRows1212.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1212=5388 := by core033_kernel_decide
theorem rows1213 : actualRows1213=WordField.canonicalRows actualModulus 1213 (.bnot 1212) := by core033_kernel_decide
theorem stats1213 : actualRows1213.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1213=6276 := by core033_kernel_decide
theorem rows1214 : actualRows1214=WordField.canonicalRows actualModulus 1214 (.band 1213 51) := by core033_kernel_decide
theorem stats1214 : actualRows1214.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1214=5124 := by core033_kernel_decide
theorem rows1215 : actualRows1215=WordField.canonicalRows actualModulus 1215 (.bxor 1209 1214) := by core033_kernel_decide
theorem stats1215 : actualRows1215.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1215=7428 := by core033_kernel_decide
theorem rows1216 : actualRows1216=WordField.canonicalRows actualModulus 1216 (.bnot 182) := by core033_kernel_decide
theorem stats1216 : actualRows1216.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1216=6276 := by core033_kernel_decide
theorem rows1217 : actualRows1217=WordField.canonicalRows actualModulus 1217 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1217 : actualRows1217.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1217=2892 := by core033_kernel_decide
theorem rows1218 : actualRows1218=WordField.canonicalRows actualModulus 1218 (.badd 1216 1217) := by core033_kernel_decide
theorem stats1218 : actualRows1218.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1218=5388 := by core033_kernel_decide
theorem rows1219 : actualRows1219=WordField.canonicalRows actualModulus 1219 (.band 1218 52) := by core033_kernel_decide
theorem stats1219 : actualRows1219.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1219=5124 := by core033_kernel_decide
theorem rows1220 : actualRows1220=WordField.canonicalRows actualModulus 1220 (.bnot 182) := by core033_kernel_decide
theorem stats1220 : actualRows1220.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1220=6276 := by core033_kernel_decide
theorem rows1221 : actualRows1221=WordField.canonicalRows actualModulus 1221 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1221 : actualRows1221.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1221=2892 := by core033_kernel_decide
theorem rows1222 : actualRows1222=WordField.canonicalRows actualModulus 1222 (.badd 1220 1221) := by core033_kernel_decide
theorem stats1222 : actualRows1222.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1222=5388 := by core033_kernel_decide
theorem rows1223 : actualRows1223=WordField.canonicalRows actualModulus 1223 (.bnot 1222) := by core033_kernel_decide
theorem stats1223 : actualRows1223.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1223=6276 := by core033_kernel_decide
theorem rows1224 : actualRows1224=WordField.canonicalRows actualModulus 1224 (.band 1223 52) := by core033_kernel_decide
theorem stats1224 : actualRows1224.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1224=5124 := by core033_kernel_decide
theorem rows1225 : actualRows1225=WordField.canonicalRows actualModulus 1225 (.bxor 1219 1224) := by core033_kernel_decide
theorem stats1225 : actualRows1225.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1225=7428 := by core033_kernel_decide
theorem rows1226 : actualRows1226=WordField.canonicalRows actualModulus 1226 (.bnot 182) := by core033_kernel_decide
theorem stats1226 : actualRows1226.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1226=6276 := by core033_kernel_decide
theorem rows1227 : actualRows1227=WordField.canonicalRows actualModulus 1227 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1227 : actualRows1227.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1227=2892 := by core033_kernel_decide
theorem rows1228 : actualRows1228=WordField.canonicalRows actualModulus 1228 (.badd 1226 1227) := by core033_kernel_decide
theorem stats1228 : actualRows1228.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1228=5388 := by core033_kernel_decide
theorem rows1229 : actualRows1229=WordField.canonicalRows actualModulus 1229 (.band 1228 53) := by core033_kernel_decide
theorem stats1229 : actualRows1229.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1229=5124 := by core033_kernel_decide
theorem rows1230 : actualRows1230=WordField.canonicalRows actualModulus 1230 (.bnot 182) := by core033_kernel_decide
theorem stats1230 : actualRows1230.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1230=6276 := by core033_kernel_decide
theorem rows1231 : actualRows1231=WordField.canonicalRows actualModulus 1231 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1231 : actualRows1231.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1231=2892 := by core033_kernel_decide
theorem rows1232 : actualRows1232=WordField.canonicalRows actualModulus 1232 (.badd 1230 1231) := by core033_kernel_decide
theorem stats1232 : actualRows1232.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1232=5388 := by core033_kernel_decide
theorem rows1233 : actualRows1233=WordField.canonicalRows actualModulus 1233 (.bnot 1232) := by core033_kernel_decide
theorem stats1233 : actualRows1233.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1233=6276 := by core033_kernel_decide
theorem rows1234 : actualRows1234=WordField.canonicalRows actualModulus 1234 (.band 1233 53) := by core033_kernel_decide
theorem stats1234 : actualRows1234.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1234=5124 := by core033_kernel_decide
theorem rows1235 : actualRows1235=WordField.canonicalRows actualModulus 1235 (.bxor 1229 1234) := by core033_kernel_decide
theorem stats1235 : actualRows1235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1235=7428 := by core033_kernel_decide
theorem rows1236 : actualRows1236=WordField.canonicalRows actualModulus 1236 (.bnot 182) := by core033_kernel_decide
theorem stats1236 : actualRows1236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1236=6276 := by core033_kernel_decide
theorem rows1237 : actualRows1237=WordField.canonicalRows actualModulus 1237 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1237 : actualRows1237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1237=2892 := by core033_kernel_decide
theorem rows1238 : actualRows1238=WordField.canonicalRows actualModulus 1238 (.badd 1236 1237) := by core033_kernel_decide
theorem stats1238 : actualRows1238.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1238=5388 := by core033_kernel_decide
theorem rows1239 : actualRows1239=WordField.canonicalRows actualModulus 1239 (.band 1238 54) := by core033_kernel_decide
theorem stats1239 : actualRows1239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1239=5124 := by core033_kernel_decide
theorem rows1240 : actualRows1240=WordField.canonicalRows actualModulus 1240 (.bnot 182) := by core033_kernel_decide
theorem stats1240 : actualRows1240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1240=6276 := by core033_kernel_decide
theorem rows1241 : actualRows1241=WordField.canonicalRows actualModulus 1241 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1241 : actualRows1241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1241=2892 := by core033_kernel_decide
theorem rows1242 : actualRows1242=WordField.canonicalRows actualModulus 1242 (.badd 1240 1241) := by core033_kernel_decide
theorem stats1242 : actualRows1242.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1242=5388 := by core033_kernel_decide
theorem rows1243 : actualRows1243=WordField.canonicalRows actualModulus 1243 (.bnot 1242) := by core033_kernel_decide
theorem stats1243 : actualRows1243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1243=6276 := by core033_kernel_decide
theorem rows1244 : actualRows1244=WordField.canonicalRows actualModulus 1244 (.band 1243 54) := by core033_kernel_decide
theorem stats1244 : actualRows1244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1244=5124 := by core033_kernel_decide
theorem rows1245 : actualRows1245=WordField.canonicalRows actualModulus 1245 (.bxor 1239 1244) := by core033_kernel_decide
theorem stats1245 : actualRows1245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1245=7428 := by core033_kernel_decide
theorem rows1246 : actualRows1246=WordField.canonicalRows actualModulus 1246 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1246 : actualRows1246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1246=2892 := by core033_kernel_decide
theorem rows1247 : actualRows1247=WordField.canonicalRows actualModulus 1247 (.bxor 693 1246) := by core033_kernel_decide
theorem stats1247 : actualRows1247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1247=7428 := by core033_kernel_decide
theorem rows1248 : actualRows1248=WordField.canonicalRows actualModulus 1248 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1248 : actualRows1248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1248=2820 := by core033_kernel_decide
theorem rows1249 : actualRows1249=WordField.canonicalRows actualModulus 1249 (.bnot 1248) := by core033_kernel_decide
theorem stats1249 : actualRows1249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1249=6276 := by core033_kernel_decide
theorem rows1250 : actualRows1250=WordField.canonicalRows actualModulus 1250 (.band 1247 1249) := by core033_kernel_decide
theorem stats1250 : actualRows1250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1250=5124 := by core033_kernel_decide
theorem rows1251 : actualRows1251=WordField.canonicalRows actualModulus 1251 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1251 : actualRows1251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1251=2892 := by core033_kernel_decide
theorem rows1252 : actualRows1252=WordField.canonicalRows actualModulus 1252 (.bxor 693 1251) := by core033_kernel_decide
theorem stats1252 : actualRows1252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1252=7428 := by core033_kernel_decide
theorem rows1253 : actualRows1253=WordField.canonicalRows actualModulus 1253 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1253 : actualRows1253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1253=2820 := by core033_kernel_decide
theorem rows1254 : actualRows1254=WordField.canonicalRows actualModulus 1254 (.bnot 1253) := by core033_kernel_decide
theorem stats1254 : actualRows1254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1254=6276 := by core033_kernel_decide
theorem rows1255 : actualRows1255=WordField.canonicalRows actualModulus 1255 (.bxor 1252 1254) := by core033_kernel_decide
theorem stats1255 : actualRows1255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1255=7428 := by core033_kernel_decide
theorem rows1256 : actualRows1256=WordField.canonicalRows actualModulus 1256 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1256 : actualRows1256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1256=2892 := by core033_kernel_decide
theorem rows1257 : actualRows1257=WordField.canonicalRows actualModulus 1257 (.bxor 693 1256) := by core033_kernel_decide
theorem stats1257 : actualRows1257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1257=7428 := by core033_kernel_decide
theorem rows1258 : actualRows1258=WordField.canonicalRows actualModulus 1258 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1258 : actualRows1258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1258=2820 := by core033_kernel_decide
theorem rows1259 : actualRows1259=WordField.canonicalRows actualModulus 1259 (.bnot 1258) := by core033_kernel_decide
theorem stats1259 : actualRows1259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1259=6276 := by core033_kernel_decide
theorem rows1260 : actualRows1260=WordField.canonicalRows actualModulus 1260 (.badd 1257 1259) := by core033_kernel_decide
theorem stats1260 : actualRows1260.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows1260=5388 := by core033_kernel_decide
theorem rows1261 : actualRows1261=WordField.canonicalRows actualModulus 1261 (.bnot 1260) := by core033_kernel_decide
theorem stats1261 : actualRows1261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1261=6276 := by core033_kernel_decide
theorem rows1262 : actualRows1262=WordField.canonicalRows actualModulus 1262 (.band 1255 1261) := by core033_kernel_decide
theorem stats1262 : actualRows1262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1262=5124 := by core033_kernel_decide
theorem rows1263 : actualRows1263=WordField.canonicalRows actualModulus 1263 (.bxor 1250 1262) := by core033_kernel_decide
theorem stats1263 : actualRows1263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1263=7428 := by core033_kernel_decide
theorem rows1264 : actualRows1264=WordField.canonicalRows actualModulus 1264 (.shr 1263 31) := by core033_kernel_decide
theorem stats1264 : actualRows1264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1264=2892 := by core033_kernel_decide
theorem rows1265 : actualRows1265=WordField.canonicalRows actualModulus 1265 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats1265 : actualRows1265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1265=2892 := by core033_kernel_decide
theorem rows1266 : actualRows1266=WordField.canonicalRows actualModulus 1266 (.bxor 1264 1265) := by core033_kernel_decide
theorem stats1266 : actualRows1266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1266=7428 := by core033_kernel_decide
theorem rows1267 : actualRows1267=WordField.canonicalRows actualModulus 1267 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats1267 : actualRows1267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1267=2892 := by core033_kernel_decide
theorem rows1268 : actualRows1268=WordField.canonicalRows actualModulus 1268 (.bxor 693 1267) := by core033_kernel_decide
theorem stats1268 : actualRows1268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1268=7428 := by core033_kernel_decide
theorem rows1269 : actualRows1269=WordField.canonicalRows actualModulus 1269 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats1269 : actualRows1269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows1269=2820 := by core033_kernel_decide
def partRows17 : List R1CS.Row := actualRows1206++actualRows1207++actualRows1208++actualRows1209++actualRows1210++actualRows1211++actualRows1212++actualRows1213++actualRows1214++actualRows1215++actualRows1216++actualRows1217++actualRows1218++actualRows1219++actualRows1220++actualRows1221++actualRows1222++actualRows1223++actualRows1224++actualRows1225++actualRows1226++actualRows1227++actualRows1228++actualRows1229++actualRows1230++actualRows1231++actualRows1232++actualRows1233++actualRows1234++actualRows1235++actualRows1236++actualRows1237++actualRows1238++actualRows1239++actualRows1240++actualRows1241++actualRows1242++actualRows1243++actualRows1244++actualRows1245++actualRows1246++actualRows1247++actualRows1248++actualRows1249++actualRows1250++actualRows1251++actualRows1252++actualRows1253++actualRows1254++actualRows1255++actualRows1256++actualRows1257++actualRows1258++actualRows1259++actualRows1260++actualRows1261++actualRows1262++actualRows1263++actualRows1264++actualRows1265++actualRows1266++actualRows1267++actualRows1268++actualRows1269
def partOps17 : List WordIR.Op := [.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1206 1207,.band 1208 51,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1210 1211,.bnot 1212,.band 1213 51,.bxor 1209 1214,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1216 1217,.band 1218 52,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1220 1221,.bnot 1222,.band 1223 52,.bxor 1219 1224,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1226 1227,.band 1228 53,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1230 1231,.bnot 1232,.band 1233 53,.bxor 1229 1234,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1236 1237,.band 1238 54,.bnot 182,.literal (BitVec.ofNat 32 1),.badd 1240 1241,.bnot 1242,.band 1243 54,.bxor 1239 1244,.literal (BitVec.ofNat 32 1),.bxor 693 1246,.literal (BitVec.ofNat 32 0),.bnot 1248,.band 1247 1249,.literal (BitVec.ofNat 32 1),.bxor 693 1251,.literal (BitVec.ofNat 32 0),.bnot 1253,.bxor 1252 1254,.literal (BitVec.ofNat 32 1),.bxor 693 1256,.literal (BitVec.ofNat 32 0),.bnot 1258,.badd 1257 1259,.bnot 1260,.band 1255 1261,.bxor 1250 1262,.shr 1263 31,.literal (BitVec.ofNat 32 1),.bxor 1264 1265,.literal (BitVec.ofNat 32 2),.bxor 693 1267,.literal (BitVec.ofNat 32 0)]
theorem partExact17 : partRows17=WordField.rows actualModulus 1206 partOps17 := by
  simp only [partRows17,partOps17,WordField.rows,rows1206,rows1207,rows1208,rows1209,rows1210,rows1211,rows1212,rows1213,rows1214,rows1215,rows1216,rows1217,rows1218,rows1219,rows1220,rows1221,rows1222,rows1223,rows1224,rows1225,rows1226,rows1227,rows1228,rows1229,rows1230,rows1231,rows1232,rows1233,rows1234,rows1235,rows1236,rows1237,rows1238,rows1239,rows1240,rows1241,rows1242,rows1243,rows1244,rows1245,rows1246,rows1247,rows1248,rows1249,rows1250,rows1251,rows1252,rows1253,rows1254,rows1255,rows1256,rows1257,rows1258,rows1259,rows1260,rows1261,rows1262,rows1263,rows1264,rows1265,rows1266,rows1267,rows1268,rows1269,List.append_assoc,List.append_nil]
theorem partLength17 : partOps17.length=64 := by decide
theorem partStats17 : partRows17.length=2185 ∧ MatrixRowBlocks.rowsWeight partRows17=333624 := by
  simp only [partRows17,List.length_append,MatrixRowBlocks.rows_weight_append,stats1206.1,stats1206.2,stats1207.1,stats1207.2,stats1208.1,stats1208.2,stats1209.1,stats1209.2,stats1210.1,stats1210.2,stats1211.1,stats1211.2,stats1212.1,stats1212.2,stats1213.1,stats1213.2,stats1214.1,stats1214.2,stats1215.1,stats1215.2,stats1216.1,stats1216.2,stats1217.1,stats1217.2,stats1218.1,stats1218.2,stats1219.1,stats1219.2,stats1220.1,stats1220.2,stats1221.1,stats1221.2,stats1222.1,stats1222.2,stats1223.1,stats1223.2,stats1224.1,stats1224.2,stats1225.1,stats1225.2,stats1226.1,stats1226.2,stats1227.1,stats1227.2,stats1228.1,stats1228.2,stats1229.1,stats1229.2,stats1230.1,stats1230.2,stats1231.1,stats1231.2,stats1232.1,stats1232.2,stats1233.1,stats1233.2,stats1234.1,stats1234.2,stats1235.1,stats1235.2,stats1236.1,stats1236.2,stats1237.1,stats1237.2,stats1238.1,stats1238.2,stats1239.1,stats1239.2,stats1240.1,stats1240.2,stats1241.1,stats1241.2,stats1242.1,stats1242.2,stats1243.1,stats1243.2,stats1244.1,stats1244.2,stats1245.1,stats1245.2,stats1246.1,stats1246.2,stats1247.1,stats1247.2,stats1248.1,stats1248.2,stats1249.1,stats1249.2,stats1250.1,stats1250.2,stats1251.1,stats1251.2,stats1252.1,stats1252.2,stats1253.1,stats1253.2,stats1254.1,stats1254.2,stats1255.1,stats1255.2,stats1256.1,stats1256.2,stats1257.1,stats1257.2,stats1258.1,stats1258.2,stats1259.1,stats1259.2,stats1260.1,stats1260.2,stats1261.1,stats1261.2,stats1262.1,stats1262.2,stats1263.1,stats1263.2,stats1264.1,stats1264.2,stats1265.1,stats1265.2,stats1266.1,stats1266.2,stats1267.1,stats1267.2,stats1268.1,stats1268.2,stats1269.1,stats1269.2]
  decide
end AuthenticatedBranchRoundCheckedRows
