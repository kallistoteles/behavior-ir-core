import ActualUtf8IR
import ArtifactUtf8Blocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import Utf8InstructionMatrixData4
import Utf8InstructionMatrixData5
namespace Utf8CheckedRows
open Core033 Utf8InstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows257 : actualRows257=WordField.canonicalRows actualModulus 257 (.bnot 256) := by core033_kernel_decide
theorem stats257 : actualRows257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows257=6276 := by core033_kernel_decide
theorem rows258 : actualRows258=WordField.canonicalRows actualModulus 258 (.band 253 257) := by core033_kernel_decide
theorem stats258 : actualRows258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows258=5124 := by core033_kernel_decide
theorem rows259 : actualRows259=WordField.canonicalRows actualModulus 259 (.bxor 250 258) := by core033_kernel_decide
theorem stats259 : actualRows259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows259=7428 := by core033_kernel_decide
theorem rows260 : actualRows260=WordField.canonicalRows actualModulus 260 (.shr 259 31) := by core033_kernel_decide
theorem stats260 : actualRows260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows260=2892 := by core033_kernel_decide
theorem rows261 : actualRows261=WordField.canonicalRows actualModulus 261 (.bnot 260) := by core033_kernel_decide
theorem stats261 : actualRows261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows261=6276 := by core033_kernel_decide
theorem rows262 : actualRows262=WordField.canonicalRows actualModulus 262 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats262 : actualRows262.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows262=2892 := by core033_kernel_decide
theorem rows263 : actualRows263=WordField.canonicalRows actualModulus 263 (.badd 261 262) := by core033_kernel_decide
theorem stats263 : actualRows263.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows263=5388 := by core033_kernel_decide
theorem rows264 : actualRows264=WordField.canonicalRows actualModulus 264 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats264 : actualRows264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows264=2820 := by core033_kernel_decide
theorem rows265 : actualRows265=WordField.canonicalRows actualModulus 265 (.band 263 264) := by core033_kernel_decide
theorem stats265 : actualRows265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows265=5124 := by core033_kernel_decide
theorem rows266 : actualRows266=WordField.canonicalRows actualModulus 266 (.literal (BitVec.ofNat 32 2048)) := by core033_kernel_decide
theorem stats266 : actualRows266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows266=2892 := by core033_kernel_decide
theorem rows267 : actualRows267=WordField.canonicalRows actualModulus 267 (.bnot 0) := by core033_kernel_decide
theorem stats267 : actualRows267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows267=6276 := by core033_kernel_decide
theorem rows268 : actualRows268=WordField.canonicalRows actualModulus 268 (.band 266 267) := by core033_kernel_decide
theorem stats268 : actualRows268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows268=5124 := by core033_kernel_decide
theorem rows269 : actualRows269=WordField.canonicalRows actualModulus 269 (.literal (BitVec.ofNat 32 2048)) := by core033_kernel_decide
theorem stats269 : actualRows269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows269=2892 := by core033_kernel_decide
theorem rows270 : actualRows270=WordField.canonicalRows actualModulus 270 (.bnot 0) := by core033_kernel_decide
theorem stats270 : actualRows270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows270=6276 := by core033_kernel_decide
theorem rows271 : actualRows271=WordField.canonicalRows actualModulus 271 (.bxor 269 270) := by core033_kernel_decide
theorem stats271 : actualRows271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows271=7428 := by core033_kernel_decide
theorem rows272 : actualRows272=WordField.canonicalRows actualModulus 272 (.literal (BitVec.ofNat 32 2048)) := by core033_kernel_decide
theorem stats272 : actualRows272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows272=2892 := by core033_kernel_decide
theorem rows273 : actualRows273=WordField.canonicalRows actualModulus 273 (.bnot 0) := by core033_kernel_decide
theorem stats273 : actualRows273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows273=6276 := by core033_kernel_decide
theorem rows274 : actualRows274=WordField.canonicalRows actualModulus 274 (.badd 272 273) := by core033_kernel_decide
theorem stats274 : actualRows274.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows274=5388 := by core033_kernel_decide
theorem rows275 : actualRows275=WordField.canonicalRows actualModulus 275 (.bnot 274) := by core033_kernel_decide
theorem stats275 : actualRows275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows275=6276 := by core033_kernel_decide
theorem rows276 : actualRows276=WordField.canonicalRows actualModulus 276 (.band 271 275) := by core033_kernel_decide
theorem stats276 : actualRows276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows276=5124 := by core033_kernel_decide
theorem rows277 : actualRows277=WordField.canonicalRows actualModulus 277 (.bxor 268 276) := by core033_kernel_decide
theorem stats277 : actualRows277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows277=7428 := by core033_kernel_decide
theorem rows278 : actualRows278=WordField.canonicalRows actualModulus 278 (.shr 277 31) := by core033_kernel_decide
theorem stats278 : actualRows278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows278=2892 := by core033_kernel_decide
theorem rows279 : actualRows279=WordField.canonicalRows actualModulus 279 (.bnot 278) := by core033_kernel_decide
theorem stats279 : actualRows279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows279=6276 := by core033_kernel_decide
theorem rows280 : actualRows280=WordField.canonicalRows actualModulus 280 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats280 : actualRows280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows280=2892 := by core033_kernel_decide
theorem rows281 : actualRows281=WordField.canonicalRows actualModulus 281 (.badd 279 280) := by core033_kernel_decide
theorem stats281 : actualRows281.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows281=5388 := by core033_kernel_decide
theorem rows282 : actualRows282=WordField.canonicalRows actualModulus 282 (.bnot 281) := by core033_kernel_decide
theorem stats282 : actualRows282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows282=6276 := by core033_kernel_decide
theorem rows283 : actualRows283=WordField.canonicalRows actualModulus 283 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats283 : actualRows283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows283=2892 := by core033_kernel_decide
theorem rows284 : actualRows284=WordField.canonicalRows actualModulus 284 (.bnot 0) := by core033_kernel_decide
theorem stats284 : actualRows284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows284=6276 := by core033_kernel_decide
theorem rows285 : actualRows285=WordField.canonicalRows actualModulus 285 (.band 283 284) := by core033_kernel_decide
theorem stats285 : actualRows285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows285=5124 := by core033_kernel_decide
theorem rows286 : actualRows286=WordField.canonicalRows actualModulus 286 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats286 : actualRows286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows286=2892 := by core033_kernel_decide
theorem rows287 : actualRows287=WordField.canonicalRows actualModulus 287 (.bnot 0) := by core033_kernel_decide
theorem stats287 : actualRows287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows287=6276 := by core033_kernel_decide
theorem rows288 : actualRows288=WordField.canonicalRows actualModulus 288 (.bxor 286 287) := by core033_kernel_decide
theorem stats288 : actualRows288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows288=7428 := by core033_kernel_decide
theorem rows289 : actualRows289=WordField.canonicalRows actualModulus 289 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats289 : actualRows289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows289=2892 := by core033_kernel_decide
theorem rows290 : actualRows290=WordField.canonicalRows actualModulus 290 (.bnot 0) := by core033_kernel_decide
theorem stats290 : actualRows290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows290=6276 := by core033_kernel_decide
theorem rows291 : actualRows291=WordField.canonicalRows actualModulus 291 (.badd 289 290) := by core033_kernel_decide
theorem stats291 : actualRows291.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows291=5388 := by core033_kernel_decide
theorem rows292 : actualRows292=WordField.canonicalRows actualModulus 292 (.bnot 291) := by core033_kernel_decide
theorem stats292 : actualRows292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows292=6276 := by core033_kernel_decide
theorem rows293 : actualRows293=WordField.canonicalRows actualModulus 293 (.band 288 292) := by core033_kernel_decide
theorem stats293 : actualRows293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows293=5124 := by core033_kernel_decide
theorem rows294 : actualRows294=WordField.canonicalRows actualModulus 294 (.bxor 285 293) := by core033_kernel_decide
theorem stats294 : actualRows294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows294=7428 := by core033_kernel_decide
theorem rows295 : actualRows295=WordField.canonicalRows actualModulus 295 (.shr 294 31) := by core033_kernel_decide
theorem stats295 : actualRows295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows295=2892 := by core033_kernel_decide
theorem rows296 : actualRows296=WordField.canonicalRows actualModulus 296 (.bnot 295) := by core033_kernel_decide
theorem stats296 : actualRows296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows296=6276 := by core033_kernel_decide
theorem rows297 : actualRows297=WordField.canonicalRows actualModulus 297 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats297 : actualRows297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows297=2892 := by core033_kernel_decide
theorem rows298 : actualRows298=WordField.canonicalRows actualModulus 298 (.badd 296 297) := by core033_kernel_decide
theorem stats298 : actualRows298.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows298=5388 := by core033_kernel_decide
theorem rows299 : actualRows299=WordField.canonicalRows actualModulus 299 (.shr 0 0) := by core033_kernel_decide
theorem stats299 : actualRows299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows299=5124 := by core033_kernel_decide
theorem rows300 : actualRows300=WordField.canonicalRows actualModulus 300 (.literal (BitVec.ofNat 32 63)) := by core033_kernel_decide
theorem stats300 : actualRows300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows300=3252 := by core033_kernel_decide
theorem rows301 : actualRows301=WordField.canonicalRows actualModulus 301 (.band 299 300) := by core033_kernel_decide
theorem stats301 : actualRows301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows301=5124 := by core033_kernel_decide
theorem rows302 : actualRows302=WordField.canonicalRows actualModulus 302 (.literal (BitVec.ofNat 32 128)) := by core033_kernel_decide
theorem stats302 : actualRows302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows302=2892 := by core033_kernel_decide
theorem rows303 : actualRows303=WordField.canonicalRows actualModulus 303 (.badd 301 302) := by core033_kernel_decide
theorem stats303 : actualRows303.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows303=5388 := by core033_kernel_decide
theorem rows304 : actualRows304=WordField.canonicalRows actualModulus 304 (.band 298 303) := by core033_kernel_decide
theorem stats304 : actualRows304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows304=5124 := by core033_kernel_decide
theorem rows305 : actualRows305=WordField.canonicalRows actualModulus 305 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats305 : actualRows305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows305=2892 := by core033_kernel_decide
theorem rows306 : actualRows306=WordField.canonicalRows actualModulus 306 (.bnot 0) := by core033_kernel_decide
theorem stats306 : actualRows306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows306=6276 := by core033_kernel_decide
theorem rows307 : actualRows307=WordField.canonicalRows actualModulus 307 (.band 305 306) := by core033_kernel_decide
theorem stats307 : actualRows307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows307=5124 := by core033_kernel_decide
theorem rows308 : actualRows308=WordField.canonicalRows actualModulus 308 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats308 : actualRows308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows308=2892 := by core033_kernel_decide
theorem rows309 : actualRows309=WordField.canonicalRows actualModulus 309 (.bnot 0) := by core033_kernel_decide
theorem stats309 : actualRows309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows309=6276 := by core033_kernel_decide
theorem rows310 : actualRows310=WordField.canonicalRows actualModulus 310 (.bxor 308 309) := by core033_kernel_decide
theorem stats310 : actualRows310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows310=7428 := by core033_kernel_decide
theorem rows311 : actualRows311=WordField.canonicalRows actualModulus 311 (.literal (BitVec.ofNat 32 65536)) := by core033_kernel_decide
theorem stats311 : actualRows311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows311=2892 := by core033_kernel_decide
theorem rows312 : actualRows312=WordField.canonicalRows actualModulus 312 (.bnot 0) := by core033_kernel_decide
theorem stats312 : actualRows312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows312=6276 := by core033_kernel_decide
theorem rows313 : actualRows313=WordField.canonicalRows actualModulus 313 (.badd 311 312) := by core033_kernel_decide
theorem stats313 : actualRows313.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows313=5388 := by core033_kernel_decide
theorem rows314 : actualRows314=WordField.canonicalRows actualModulus 314 (.bnot 313) := by core033_kernel_decide
theorem stats314 : actualRows314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows314=6276 := by core033_kernel_decide
theorem rows315 : actualRows315=WordField.canonicalRows actualModulus 315 (.band 310 314) := by core033_kernel_decide
theorem stats315 : actualRows315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows315=5124 := by core033_kernel_decide
theorem rows316 : actualRows316=WordField.canonicalRows actualModulus 316 (.bxor 307 315) := by core033_kernel_decide
theorem stats316 : actualRows316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows316=7428 := by core033_kernel_decide
theorem rows317 : actualRows317=WordField.canonicalRows actualModulus 317 (.shr 316 31) := by core033_kernel_decide
theorem stats317 : actualRows317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows317=2892 := by core033_kernel_decide
theorem rows318 : actualRows318=WordField.canonicalRows actualModulus 318 (.bnot 317) := by core033_kernel_decide
theorem stats318 : actualRows318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows318=6276 := by core033_kernel_decide
theorem rows319 : actualRows319=WordField.canonicalRows actualModulus 319 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats319 : actualRows319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows319=2892 := by core033_kernel_decide
theorem rows320 : actualRows320=WordField.canonicalRows actualModulus 320 (.badd 318 319) := by core033_kernel_decide
theorem stats320 : actualRows320.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows320=5388 := by core033_kernel_decide
def partRows4 : List R1CS.Row := actualRows257++actualRows258++actualRows259++actualRows260++actualRows261++actualRows262++actualRows263++actualRows264++actualRows265++actualRows266++actualRows267++actualRows268++actualRows269++actualRows270++actualRows271++actualRows272++actualRows273++actualRows274++actualRows275++actualRows276++actualRows277++actualRows278++actualRows279++actualRows280++actualRows281++actualRows282++actualRows283++actualRows284++actualRows285++actualRows286++actualRows287++actualRows288++actualRows289++actualRows290++actualRows291++actualRows292++actualRows293++actualRows294++actualRows295++actualRows296++actualRows297++actualRows298++actualRows299++actualRows300++actualRows301++actualRows302++actualRows303++actualRows304++actualRows305++actualRows306++actualRows307++actualRows308++actualRows309++actualRows310++actualRows311++actualRows312++actualRows313++actualRows314++actualRows315++actualRows316++actualRows317++actualRows318++actualRows319++actualRows320
def partOps4 : List WordIR.Op := [.bnot 256,.band 253 257,.bxor 250 258,.shr 259 31,.bnot 260,.literal (BitVec.ofNat 32 1),.badd 261 262,.literal (BitVec.ofNat 32 0),.band 263 264,.literal (BitVec.ofNat 32 2048),.bnot 0,.band 266 267,.literal (BitVec.ofNat 32 2048),.bnot 0,.bxor 269 270,.literal (BitVec.ofNat 32 2048),.bnot 0,.badd 272 273,.bnot 274,.band 271 275,.bxor 268 276,.shr 277 31,.bnot 278,.literal (BitVec.ofNat 32 1),.badd 279 280,.bnot 281,.literal (BitVec.ofNat 32 65536),.bnot 0,.band 283 284,.literal (BitVec.ofNat 32 65536),.bnot 0,.bxor 286 287,.literal (BitVec.ofNat 32 65536),.bnot 0,.badd 289 290,.bnot 291,.band 288 292,.bxor 285 293,.shr 294 31,.bnot 295,.literal (BitVec.ofNat 32 1),.badd 296 297,.shr 0 0,.literal (BitVec.ofNat 32 63),.band 299 300,.literal (BitVec.ofNat 32 128),.badd 301 302,.band 298 303,.literal (BitVec.ofNat 32 65536),.bnot 0,.band 305 306,.literal (BitVec.ofNat 32 65536),.bnot 0,.bxor 308 309,.literal (BitVec.ofNat 32 65536),.bnot 0,.badd 311 312,.bnot 313,.band 310 314,.bxor 307 315,.shr 316 31,.bnot 317,.literal (BitVec.ofNat 32 1),.badd 318 319]
theorem partExact4 : partRows4=WordField.rows actualModulus 257 partOps4 := by
  simp only [partRows4,partOps4,WordField.rows,rows257,rows258,rows259,rows260,rows261,rows262,rows263,rows264,rows265,rows266,rows267,rows268,rows269,rows270,rows271,rows272,rows273,rows274,rows275,rows276,rows277,rows278,rows279,rows280,rows281,rows282,rows283,rows284,rows285,rows286,rows287,rows288,rows289,rows290,rows291,rows292,rows293,rows294,rows295,rows296,rows297,rows298,rows299,rows300,rows301,rows302,rows303,rows304,rows305,rows306,rows307,rows308,rows309,rows310,rows311,rows312,rows313,rows314,rows315,rows316,rows317,rows318,rows319,rows320,List.append_assoc,List.append_nil]
theorem partLength4 : partOps4.length=64 := by decide
theorem partStats4 : partRows4.length=2184 ∧ MatrixRowBlocks.rowsWeight partRows4=322560 := by
  simp only [partRows4,List.length_append,MatrixRowBlocks.rows_weight_append,stats257.1,stats257.2,stats258.1,stats258.2,stats259.1,stats259.2,stats260.1,stats260.2,stats261.1,stats261.2,stats262.1,stats262.2,stats263.1,stats263.2,stats264.1,stats264.2,stats265.1,stats265.2,stats266.1,stats266.2,stats267.1,stats267.2,stats268.1,stats268.2,stats269.1,stats269.2,stats270.1,stats270.2,stats271.1,stats271.2,stats272.1,stats272.2,stats273.1,stats273.2,stats274.1,stats274.2,stats275.1,stats275.2,stats276.1,stats276.2,stats277.1,stats277.2,stats278.1,stats278.2,stats279.1,stats279.2,stats280.1,stats280.2,stats281.1,stats281.2,stats282.1,stats282.2,stats283.1,stats283.2,stats284.1,stats284.2,stats285.1,stats285.2,stats286.1,stats286.2,stats287.1,stats287.2,stats288.1,stats288.2,stats289.1,stats289.2,stats290.1,stats290.2,stats291.1,stats291.2,stats292.1,stats292.2,stats293.1,stats293.2,stats294.1,stats294.2,stats295.1,stats295.2,stats296.1,stats296.2,stats297.1,stats297.2,stats298.1,stats298.2,stats299.1,stats299.2,stats300.1,stats300.2,stats301.1,stats301.2,stats302.1,stats302.2,stats303.1,stats303.2,stats304.1,stats304.2,stats305.1,stats305.2,stats306.1,stats306.2,stats307.1,stats307.2,stats308.1,stats308.2,stats309.1,stats309.2,stats310.1,stats310.2,stats311.1,stats311.2,stats312.1,stats312.2,stats313.1,stats313.2,stats314.1,stats314.2,stats315.1,stats315.2,stats316.1,stats316.2,stats317.1,stats317.2,stats318.1,stats318.2,stats319.1,stats319.2,stats320.1,stats320.2]
  decide
end Utf8CheckedRows
