import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData3
import SharedFrameInstructionMatrixData4
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows235 : actualRows235=WordField.canonicalRows actualModulus 235 (.band 195 20) := by core033_kernel_decide
theorem stats235 : actualRows235.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows235=5124 := by core033_kernel_decide
theorem rows236 : actualRows236=WordField.canonicalRows actualModulus 236 (.bxor 234 235) := by core033_kernel_decide
theorem stats236 : actualRows236.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows236=7428 := by core033_kernel_decide
theorem rows237 : actualRows237=WordField.canonicalRows actualModulus 237 (.band 193 13) := by core033_kernel_decide
theorem stats237 : actualRows237.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows237=5124 := by core033_kernel_decide
theorem rows238 : actualRows238=WordField.canonicalRows actualModulus 238 (.band 195 21) := by core033_kernel_decide
theorem stats238 : actualRows238.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows238=5124 := by core033_kernel_decide
theorem rows239 : actualRows239=WordField.canonicalRows actualModulus 239 (.bxor 237 238) := by core033_kernel_decide
theorem stats239 : actualRows239.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows239=7428 := by core033_kernel_decide
theorem rows240 : actualRows240=WordField.canonicalRows actualModulus 240 (.band 193 14) := by core033_kernel_decide
theorem stats240 : actualRows240.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows240=5124 := by core033_kernel_decide
theorem rows241 : actualRows241=WordField.canonicalRows actualModulus 241 (.band 195 22) := by core033_kernel_decide
theorem stats241 : actualRows241.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows241=5124 := by core033_kernel_decide
theorem rows242 : actualRows242=WordField.canonicalRows actualModulus 242 (.bxor 240 241) := by core033_kernel_decide
theorem stats242 : actualRows242.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows242=7428 := by core033_kernel_decide
theorem rows243 : actualRows243=WordField.canonicalRows actualModulus 243 (.band 193 15) := by core033_kernel_decide
theorem stats243 : actualRows243.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows243=5124 := by core033_kernel_decide
theorem rows244 : actualRows244=WordField.canonicalRows actualModulus 244 (.band 195 23) := by core033_kernel_decide
theorem stats244 : actualRows244.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows244=5124 := by core033_kernel_decide
theorem rows245 : actualRows245=WordField.canonicalRows actualModulus 245 (.bxor 243 244) := by core033_kernel_decide
theorem stats245 : actualRows245.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows245=7428 := by core033_kernel_decide
theorem rows246 : actualRows246=WordField.canonicalRows actualModulus 246 (.band 193 16) := by core033_kernel_decide
theorem stats246 : actualRows246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows246=5124 := by core033_kernel_decide
theorem rows247 : actualRows247=WordField.canonicalRows actualModulus 247 (.band 195 24) := by core033_kernel_decide
theorem stats247 : actualRows247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows247=5124 := by core033_kernel_decide
theorem rows248 : actualRows248=WordField.canonicalRows actualModulus 248 (.bxor 246 247) := by core033_kernel_decide
theorem stats248 : actualRows248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows248=7428 := by core033_kernel_decide
theorem rows249 : actualRows249=WordField.canonicalRows actualModulus 249 (.band 193 17) := by core033_kernel_decide
theorem stats249 : actualRows249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows249=5124 := by core033_kernel_decide
theorem rows250 : actualRows250=WordField.canonicalRows actualModulus 250 (.band 195 25) := by core033_kernel_decide
theorem stats250 : actualRows250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows250=5124 := by core033_kernel_decide
theorem rows251 : actualRows251=WordField.canonicalRows actualModulus 251 (.bxor 249 250) := by core033_kernel_decide
theorem stats251 : actualRows251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows251=7428 := by core033_kernel_decide
theorem rows252 : actualRows252=WordField.canonicalRows actualModulus 252 (.band 193 18) := by core033_kernel_decide
theorem stats252 : actualRows252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows252=5124 := by core033_kernel_decide
theorem rows253 : actualRows253=WordField.canonicalRows actualModulus 253 (.band 195 26) := by core033_kernel_decide
theorem stats253 : actualRows253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows253=5124 := by core033_kernel_decide
theorem rows254 : actualRows254=WordField.canonicalRows actualModulus 254 (.bxor 252 253) := by core033_kernel_decide
theorem stats254 : actualRows254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows254=7428 := by core033_kernel_decide
theorem rows255 : actualRows255=WordField.canonicalRows actualModulus 255 (.band 193 27) := by core033_kernel_decide
theorem stats255 : actualRows255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows255=5124 := by core033_kernel_decide
theorem rows256 : actualRows256=WordField.canonicalRows actualModulus 256 (.band 195 29) := by core033_kernel_decide
theorem stats256 : actualRows256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows256=5124 := by core033_kernel_decide
theorem rows257 : actualRows257=WordField.canonicalRows actualModulus 257 (.bxor 255 256) := by core033_kernel_decide
theorem stats257 : actualRows257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows257=7428 := by core033_kernel_decide
theorem rows258 : actualRows258=WordField.canonicalRows actualModulus 258 (.band 193 28) := by core033_kernel_decide
theorem stats258 : actualRows258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows258=5124 := by core033_kernel_decide
theorem rows259 : actualRows259=WordField.canonicalRows actualModulus 259 (.band 195 30) := by core033_kernel_decide
theorem stats259 : actualRows259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows259=5124 := by core033_kernel_decide
theorem rows260 : actualRows260=WordField.canonicalRows actualModulus 260 (.bxor 258 259) := by core033_kernel_decide
theorem stats260 : actualRows260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows260=7428 := by core033_kernel_decide
theorem rows261 : actualRows261=WordField.canonicalRows actualModulus 261 (.band 193 31) := by core033_kernel_decide
theorem stats261 : actualRows261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows261=5124 := by core033_kernel_decide
theorem rows262 : actualRows262=WordField.canonicalRows actualModulus 262 (.band 195 32) := by core033_kernel_decide
theorem stats262 : actualRows262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows262=5124 := by core033_kernel_decide
theorem rows263 : actualRows263=WordField.canonicalRows actualModulus 263 (.bxor 261 262) := by core033_kernel_decide
theorem stats263 : actualRows263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows263=7428 := by core033_kernel_decide
theorem rows264 : actualRows264=WordField.canonicalRows actualModulus 264 (.band 193 33) := by core033_kernel_decide
theorem stats264 : actualRows264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows264=5124 := by core033_kernel_decide
theorem rows265 : actualRows265=WordField.canonicalRows actualModulus 265 (.band 195 34) := by core033_kernel_decide
theorem stats265 : actualRows265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows265=5124 := by core033_kernel_decide
theorem rows266 : actualRows266=WordField.canonicalRows actualModulus 266 (.bxor 264 265) := by core033_kernel_decide
theorem stats266 : actualRows266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows266=7428 := by core033_kernel_decide
theorem rows267 : actualRows267=WordField.canonicalRows actualModulus 267 (.shr 191 1) := by core033_kernel_decide
theorem stats267 : actualRows267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows267=5052 := by core033_kernel_decide
theorem rows268 : actualRows268=WordField.canonicalRows actualModulus 268 (.band 267 50) := by core033_kernel_decide
theorem stats268 : actualRows268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows268=5124 := by core033_kernel_decide
theorem rows269 : actualRows269=WordField.canonicalRows actualModulus 269 (.bxor 267 50) := by core033_kernel_decide
theorem stats269 : actualRows269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows269=7428 := by core033_kernel_decide
theorem rows270 : actualRows270=WordField.canonicalRows actualModulus 270 (.badd 267 50) := by core033_kernel_decide
theorem stats270 : actualRows270.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows270=5388 := by core033_kernel_decide
theorem rows271 : actualRows271=WordField.canonicalRows actualModulus 271 (.bnot 270) := by core033_kernel_decide
theorem stats271 : actualRows271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows271=6276 := by core033_kernel_decide
theorem rows272 : actualRows272=WordField.canonicalRows actualModulus 272 (.band 269 271) := by core033_kernel_decide
theorem stats272 : actualRows272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows272=5124 := by core033_kernel_decide
theorem rows273 : actualRows273=WordField.canonicalRows actualModulus 273 (.bxor 268 272) := by core033_kernel_decide
theorem stats273 : actualRows273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows273=7428 := by core033_kernel_decide
theorem rows274 : actualRows274=WordField.canonicalRows actualModulus 274 (.shr 273 31) := by core033_kernel_decide
theorem stats274 : actualRows274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows274=2892 := by core033_kernel_decide
theorem rows275 : actualRows275=WordField.canonicalRows actualModulus 275 (.bxor 274 43) := by core033_kernel_decide
theorem stats275 : actualRows275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows275=7428 := by core033_kernel_decide
theorem rows276 : actualRows276=WordField.canonicalRows actualModulus 276 (.badd 221 257) := by core033_kernel_decide
theorem stats276 : actualRows276.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows276=5388 := by core033_kernel_decide
theorem rows277 : actualRows277=WordField.canonicalRows actualModulus 277 (.badd 224 260) := by core033_kernel_decide
theorem stats277 : actualRows277.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows277=5388 := by core033_kernel_decide
theorem rows278 : actualRows278=WordField.canonicalRows actualModulus 278 (.band 221 257) := by core033_kernel_decide
theorem stats278 : actualRows278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows278=5124 := by core033_kernel_decide
theorem rows279 : actualRows279=WordField.canonicalRows actualModulus 279 (.bxor 221 257) := by core033_kernel_decide
theorem stats279 : actualRows279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows279=7428 := by core033_kernel_decide
theorem rows280 : actualRows280=WordField.canonicalRows actualModulus 280 (.bnot 276) := by core033_kernel_decide
theorem stats280 : actualRows280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows280=6276 := by core033_kernel_decide
theorem rows281 : actualRows281=WordField.canonicalRows actualModulus 281 (.band 279 280) := by core033_kernel_decide
theorem stats281 : actualRows281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows281=5124 := by core033_kernel_decide
theorem rows282 : actualRows282=WordField.canonicalRows actualModulus 282 (.bxor 278 281) := by core033_kernel_decide
theorem stats282 : actualRows282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows282=7428 := by core033_kernel_decide
theorem rows283 : actualRows283=WordField.canonicalRows actualModulus 283 (.shr 282 31) := by core033_kernel_decide
theorem stats283 : actualRows283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows283=2892 := by core033_kernel_decide
theorem rows284 : actualRows284=WordField.canonicalRows actualModulus 284 (.badd 277 283) := by core033_kernel_decide
theorem stats284 : actualRows284.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows284=5388 := by core033_kernel_decide
theorem rows285 : actualRows285=WordField.canonicalRows actualModulus 285 (.band 224 50) := by core033_kernel_decide
theorem stats285 : actualRows285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows285=5124 := by core033_kernel_decide
theorem rows286 : actualRows286=WordField.canonicalRows actualModulus 286 (.bxor 224 50) := by core033_kernel_decide
theorem stats286 : actualRows286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows286=7428 := by core033_kernel_decide
theorem rows287 : actualRows287=WordField.canonicalRows actualModulus 287 (.badd 224 50) := by core033_kernel_decide
theorem stats287 : actualRows287.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows287=5388 := by core033_kernel_decide
theorem rows288 : actualRows288=WordField.canonicalRows actualModulus 288 (.bnot 287) := by core033_kernel_decide
theorem stats288 : actualRows288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows288=6276 := by core033_kernel_decide
theorem rows289 : actualRows289=WordField.canonicalRows actualModulus 289 (.band 286 288) := by core033_kernel_decide
theorem stats289 : actualRows289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows289=5124 := by core033_kernel_decide
theorem rows290 : actualRows290=WordField.canonicalRows actualModulus 290 (.bxor 285 289) := by core033_kernel_decide
theorem stats290 : actualRows290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows290=7428 := by core033_kernel_decide
theorem rows291 : actualRows291=WordField.canonicalRows actualModulus 291 (.shr 290 31) := by core033_kernel_decide
theorem stats291 : actualRows291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows291=2892 := by core033_kernel_decide
theorem rows292 : actualRows292=WordField.canonicalRows actualModulus 292 (.bxor 291 43) := by core033_kernel_decide
theorem stats292 : actualRows292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows292=7428 := by core033_kernel_decide
theorem rows293 : actualRows293=WordField.canonicalRows actualModulus 293 (.literal (BitVec.ofNat 32 1048576)) := by core033_kernel_decide
theorem stats293 : actualRows293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows293=2892 := by core033_kernel_decide
theorem rows294 : actualRows294=WordField.canonicalRows actualModulus 294 (.bnot 293) := by core033_kernel_decide
theorem stats294 : actualRows294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows294=6276 := by core033_kernel_decide
theorem rows295 : actualRows295=WordField.canonicalRows actualModulus 295 (.band 221 294) := by core033_kernel_decide
theorem stats295 : actualRows295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows295=5124 := by core033_kernel_decide
theorem rows296 : actualRows296=WordField.canonicalRows actualModulus 296 (.bxor 221 294) := by core033_kernel_decide
theorem stats296 : actualRows296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows296=7428 := by core033_kernel_decide
theorem rows297 : actualRows297=WordField.canonicalRows actualModulus 297 (.badd 221 294) := by core033_kernel_decide
theorem stats297 : actualRows297.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows297=5388 := by core033_kernel_decide
theorem rows298 : actualRows298=WordField.canonicalRows actualModulus 298 (.bnot 297) := by core033_kernel_decide
theorem stats298 : actualRows298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows298=6276 := by core033_kernel_decide
def partRows3 : List R1CS.Row := actualRows235++actualRows236++actualRows237++actualRows238++actualRows239++actualRows240++actualRows241++actualRows242++actualRows243++actualRows244++actualRows245++actualRows246++actualRows247++actualRows248++actualRows249++actualRows250++actualRows251++actualRows252++actualRows253++actualRows254++actualRows255++actualRows256++actualRows257++actualRows258++actualRows259++actualRows260++actualRows261++actualRows262++actualRows263++actualRows264++actualRows265++actualRows266++actualRows267++actualRows268++actualRows269++actualRows270++actualRows271++actualRows272++actualRows273++actualRows274++actualRows275++actualRows276++actualRows277++actualRows278++actualRows279++actualRows280++actualRows281++actualRows282++actualRows283++actualRows284++actualRows285++actualRows286++actualRows287++actualRows288++actualRows289++actualRows290++actualRows291++actualRows292++actualRows293++actualRows294++actualRows295++actualRows296++actualRows297++actualRows298
def partOps3 : List WordIR.Op := [.band 195 20,.bxor 234 235,.band 193 13,.band 195 21,.bxor 237 238,.band 193 14,.band 195 22,.bxor 240 241,.band 193 15,.band 195 23,.bxor 243 244,.band 193 16,.band 195 24,.bxor 246 247,.band 193 17,.band 195 25,.bxor 249 250,.band 193 18,.band 195 26,.bxor 252 253,.band 193 27,.band 195 29,.bxor 255 256,.band 193 28,.band 195 30,.bxor 258 259,.band 193 31,.band 195 32,.bxor 261 262,.band 193 33,.band 195 34,.bxor 264 265,.shr 191 1,.band 267 50,.bxor 267 50,.badd 267 50,.bnot 270,.band 269 271,.bxor 268 272,.shr 273 31,.bxor 274 43,.badd 221 257,.badd 224 260,.band 221 257,.bxor 221 257,.bnot 276,.band 279 280,.bxor 278 281,.shr 282 31,.badd 277 283,.band 224 50,.bxor 224 50,.badd 224 50,.bnot 287,.band 286 288,.bxor 285 289,.shr 290 31,.bxor 291 43,.literal (BitVec.ofNat 32 1048576),.bnot 293,.band 221 294,.bxor 221 294,.badd 221 294,.bnot 297]
theorem partExact3 : partRows3=WordField.rows actualModulus 235 partOps3 := by
  simp only [partRows3,partOps3,WordField.rows,rows235,rows236,rows237,rows238,rows239,rows240,rows241,rows242,rows243,rows244,rows245,rows246,rows247,rows248,rows249,rows250,rows251,rows252,rows253,rows254,rows255,rows256,rows257,rows258,rows259,rows260,rows261,rows262,rows263,rows264,rows265,rows266,rows267,rows268,rows269,rows270,rows271,rows272,rows273,rows274,rows275,rows276,rows277,rows278,rows279,rows280,rows281,rows282,rows283,rows284,rows285,rows286,rows287,rows288,rows289,rows290,rows291,rows292,rows293,rows294,rows295,rows296,rows297,rows298,List.append_assoc,List.append_nil]
theorem partLength3 : partOps3.length=64 := by decide
theorem partStats3 : partRows3.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows3=372360 := by
  simp only [partRows3,List.length_append,MatrixRowBlocks.rows_weight_append,stats235.1,stats235.2,stats236.1,stats236.2,stats237.1,stats237.2,stats238.1,stats238.2,stats239.1,stats239.2,stats240.1,stats240.2,stats241.1,stats241.2,stats242.1,stats242.2,stats243.1,stats243.2,stats244.1,stats244.2,stats245.1,stats245.2,stats246.1,stats246.2,stats247.1,stats247.2,stats248.1,stats248.2,stats249.1,stats249.2,stats250.1,stats250.2,stats251.1,stats251.2,stats252.1,stats252.2,stats253.1,stats253.2,stats254.1,stats254.2,stats255.1,stats255.2,stats256.1,stats256.2,stats257.1,stats257.2,stats258.1,stats258.2,stats259.1,stats259.2,stats260.1,stats260.2,stats261.1,stats261.2,stats262.1,stats262.2,stats263.1,stats263.2,stats264.1,stats264.2,stats265.1,stats265.2,stats266.1,stats266.2,stats267.1,stats267.2,stats268.1,stats268.2,stats269.1,stats269.2,stats270.1,stats270.2,stats271.1,stats271.2,stats272.1,stats272.2,stats273.1,stats273.2,stats274.1,stats274.2,stats275.1,stats275.2,stats276.1,stats276.2,stats277.1,stats277.2,stats278.1,stats278.2,stats279.1,stats279.2,stats280.1,stats280.2,stats281.1,stats281.2,stats282.1,stats282.2,stats283.1,stats283.2,stats284.1,stats284.2,stats285.1,stats285.2,stats286.1,stats286.2,stats287.1,stats287.2,stats288.1,stats288.2,stats289.1,stats289.2,stats290.1,stats290.2,stats291.1,stats291.2,stats292.1,stats292.2,stats293.1,stats293.2,stats294.1,stats294.2,stats295.1,stats295.2,stats296.1,stats296.2,stats297.1,stats297.2,stats298.1,stats298.2]
  decide
end SharedFrameCheckedRows
