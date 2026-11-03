import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData3
import AuthenticatedBranchRoundInstructionMatrixData4
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows246 : actualRows246=WordField.canonicalRows actualModulus 246 (.bxor 244 245) := by core033_kernel_decide
theorem stats246 : actualRows246.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows246=7428 := by core033_kernel_decide
theorem rows247 : actualRows247=WordField.canonicalRows actualModulus 247 (.bxor 225 246) := by core033_kernel_decide
theorem stats247 : actualRows247.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows247=7428 := by core033_kernel_decide
theorem rows248 : actualRows248=WordField.canonicalRows actualModulus 248 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats248 : actualRows248.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows248=2892 := by core033_kernel_decide
theorem rows249 : actualRows249=WordField.canonicalRows actualModulus 249 (.bxor 0 248) := by core033_kernel_decide
theorem stats249 : actualRows249.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows249=7428 := by core033_kernel_decide
theorem rows250 : actualRows250=WordField.canonicalRows actualModulus 250 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats250 : actualRows250.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows250=2820 := by core033_kernel_decide
theorem rows251 : actualRows251=WordField.canonicalRows actualModulus 251 (.bnot 250) := by core033_kernel_decide
theorem stats251 : actualRows251.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows251=6276 := by core033_kernel_decide
theorem rows252 : actualRows252=WordField.canonicalRows actualModulus 252 (.band 249 251) := by core033_kernel_decide
theorem stats252 : actualRows252.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows252=5124 := by core033_kernel_decide
theorem rows253 : actualRows253=WordField.canonicalRows actualModulus 253 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats253 : actualRows253.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows253=2892 := by core033_kernel_decide
theorem rows254 : actualRows254=WordField.canonicalRows actualModulus 254 (.bxor 0 253) := by core033_kernel_decide
theorem stats254 : actualRows254.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows254=7428 := by core033_kernel_decide
theorem rows255 : actualRows255=WordField.canonicalRows actualModulus 255 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats255 : actualRows255.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows255=2820 := by core033_kernel_decide
theorem rows256 : actualRows256=WordField.canonicalRows actualModulus 256 (.bnot 255) := by core033_kernel_decide
theorem stats256 : actualRows256.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows256=6276 := by core033_kernel_decide
theorem rows257 : actualRows257=WordField.canonicalRows actualModulus 257 (.bxor 254 256) := by core033_kernel_decide
theorem stats257 : actualRows257.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows257=7428 := by core033_kernel_decide
theorem rows258 : actualRows258=WordField.canonicalRows actualModulus 258 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats258 : actualRows258.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows258=2892 := by core033_kernel_decide
theorem rows259 : actualRows259=WordField.canonicalRows actualModulus 259 (.bxor 0 258) := by core033_kernel_decide
theorem stats259 : actualRows259.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows259=7428 := by core033_kernel_decide
theorem rows260 : actualRows260=WordField.canonicalRows actualModulus 260 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats260 : actualRows260.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows260=2820 := by core033_kernel_decide
theorem rows261 : actualRows261=WordField.canonicalRows actualModulus 261 (.bnot 260) := by core033_kernel_decide
theorem stats261 : actualRows261.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows261=6276 := by core033_kernel_decide
theorem rows262 : actualRows262=WordField.canonicalRows actualModulus 262 (.badd 259 261) := by core033_kernel_decide
theorem stats262 : actualRows262.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows262=5388 := by core033_kernel_decide
theorem rows263 : actualRows263=WordField.canonicalRows actualModulus 263 (.bnot 262) := by core033_kernel_decide
theorem stats263 : actualRows263.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows263=6276 := by core033_kernel_decide
theorem rows264 : actualRows264=WordField.canonicalRows actualModulus 264 (.band 257 263) := by core033_kernel_decide
theorem stats264 : actualRows264.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows264=5124 := by core033_kernel_decide
theorem rows265 : actualRows265=WordField.canonicalRows actualModulus 265 (.bxor 252 264) := by core033_kernel_decide
theorem stats265 : actualRows265.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows265=7428 := by core033_kernel_decide
theorem rows266 : actualRows266=WordField.canonicalRows actualModulus 266 (.shr 265 31) := by core033_kernel_decide
theorem stats266 : actualRows266.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows266=2892 := by core033_kernel_decide
theorem rows267 : actualRows267=WordField.canonicalRows actualModulus 267 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats267 : actualRows267.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows267=2892 := by core033_kernel_decide
theorem rows268 : actualRows268=WordField.canonicalRows actualModulus 268 (.bxor 266 267) := by core033_kernel_decide
theorem stats268 : actualRows268.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows268=7428 := by core033_kernel_decide
theorem rows269 : actualRows269=WordField.canonicalRows actualModulus 269 (.literal (BitVec.ofNat 32 5)) := by core033_kernel_decide
theorem stats269 : actualRows269.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows269=2964 := by core033_kernel_decide
theorem rows270 : actualRows270=WordField.canonicalRows actualModulus 270 (.bxor 0 269) := by core033_kernel_decide
theorem stats270 : actualRows270.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows270=7428 := by core033_kernel_decide
theorem rows271 : actualRows271=WordField.canonicalRows actualModulus 271 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats271 : actualRows271.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows271=2820 := by core033_kernel_decide
theorem rows272 : actualRows272=WordField.canonicalRows actualModulus 272 (.bnot 271) := by core033_kernel_decide
theorem stats272 : actualRows272.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows272=6276 := by core033_kernel_decide
theorem rows273 : actualRows273=WordField.canonicalRows actualModulus 273 (.band 270 272) := by core033_kernel_decide
theorem stats273 : actualRows273.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows273=5124 := by core033_kernel_decide
theorem rows274 : actualRows274=WordField.canonicalRows actualModulus 274 (.literal (BitVec.ofNat 32 5)) := by core033_kernel_decide
theorem stats274 : actualRows274.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows274=2964 := by core033_kernel_decide
theorem rows275 : actualRows275=WordField.canonicalRows actualModulus 275 (.bxor 0 274) := by core033_kernel_decide
theorem stats275 : actualRows275.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows275=7428 := by core033_kernel_decide
theorem rows276 : actualRows276=WordField.canonicalRows actualModulus 276 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats276 : actualRows276.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows276=2820 := by core033_kernel_decide
theorem rows277 : actualRows277=WordField.canonicalRows actualModulus 277 (.bnot 276) := by core033_kernel_decide
theorem stats277 : actualRows277.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows277=6276 := by core033_kernel_decide
theorem rows278 : actualRows278=WordField.canonicalRows actualModulus 278 (.bxor 275 277) := by core033_kernel_decide
theorem stats278 : actualRows278.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows278=7428 := by core033_kernel_decide
theorem rows279 : actualRows279=WordField.canonicalRows actualModulus 279 (.literal (BitVec.ofNat 32 5)) := by core033_kernel_decide
theorem stats279 : actualRows279.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows279=2964 := by core033_kernel_decide
theorem rows280 : actualRows280=WordField.canonicalRows actualModulus 280 (.bxor 0 279) := by core033_kernel_decide
theorem stats280 : actualRows280.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows280=7428 := by core033_kernel_decide
theorem rows281 : actualRows281=WordField.canonicalRows actualModulus 281 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats281 : actualRows281.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows281=2820 := by core033_kernel_decide
theorem rows282 : actualRows282=WordField.canonicalRows actualModulus 282 (.bnot 281) := by core033_kernel_decide
theorem stats282 : actualRows282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows282=6276 := by core033_kernel_decide
theorem rows283 : actualRows283=WordField.canonicalRows actualModulus 283 (.badd 280 282) := by core033_kernel_decide
theorem stats283 : actualRows283.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows283=5388 := by core033_kernel_decide
theorem rows284 : actualRows284=WordField.canonicalRows actualModulus 284 (.bnot 283) := by core033_kernel_decide
theorem stats284 : actualRows284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows284=6276 := by core033_kernel_decide
theorem rows285 : actualRows285=WordField.canonicalRows actualModulus 285 (.band 278 284) := by core033_kernel_decide
theorem stats285 : actualRows285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows285=5124 := by core033_kernel_decide
theorem rows286 : actualRows286=WordField.canonicalRows actualModulus 286 (.bxor 273 285) := by core033_kernel_decide
theorem stats286 : actualRows286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows286=7428 := by core033_kernel_decide
theorem rows287 : actualRows287=WordField.canonicalRows actualModulus 287 (.shr 286 31) := by core033_kernel_decide
theorem stats287 : actualRows287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows287=2892 := by core033_kernel_decide
theorem rows288 : actualRows288=WordField.canonicalRows actualModulus 288 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats288 : actualRows288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows288=2892 := by core033_kernel_decide
theorem rows289 : actualRows289=WordField.canonicalRows actualModulus 289 (.bxor 287 288) := by core033_kernel_decide
theorem stats289 : actualRows289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows289=7428 := by core033_kernel_decide
theorem rows290 : actualRows290=WordField.canonicalRows actualModulus 290 (.bxor 268 289) := by core033_kernel_decide
theorem stats290 : actualRows290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows290=7428 := by core033_kernel_decide
theorem rows291 : actualRows291=WordField.canonicalRows actualModulus 291 (.literal (BitVec.ofNat 32 8)) := by core033_kernel_decide
theorem stats291 : actualRows291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows291=2892 := by core033_kernel_decide
theorem rows292 : actualRows292=WordField.canonicalRows actualModulus 292 (.bxor 0 291) := by core033_kernel_decide
theorem stats292 : actualRows292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows292=7428 := by core033_kernel_decide
theorem rows293 : actualRows293=WordField.canonicalRows actualModulus 293 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats293 : actualRows293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows293=2820 := by core033_kernel_decide
theorem rows294 : actualRows294=WordField.canonicalRows actualModulus 294 (.bnot 293) := by core033_kernel_decide
theorem stats294 : actualRows294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows294=6276 := by core033_kernel_decide
theorem rows295 : actualRows295=WordField.canonicalRows actualModulus 295 (.band 292 294) := by core033_kernel_decide
theorem stats295 : actualRows295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows295=5124 := by core033_kernel_decide
theorem rows296 : actualRows296=WordField.canonicalRows actualModulus 296 (.literal (BitVec.ofNat 32 8)) := by core033_kernel_decide
theorem stats296 : actualRows296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows296=2892 := by core033_kernel_decide
theorem rows297 : actualRows297=WordField.canonicalRows actualModulus 297 (.bxor 0 296) := by core033_kernel_decide
theorem stats297 : actualRows297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows297=7428 := by core033_kernel_decide
theorem rows298 : actualRows298=WordField.canonicalRows actualModulus 298 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats298 : actualRows298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows298=2820 := by core033_kernel_decide
theorem rows299 : actualRows299=WordField.canonicalRows actualModulus 299 (.bnot 298) := by core033_kernel_decide
theorem stats299 : actualRows299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows299=6276 := by core033_kernel_decide
theorem rows300 : actualRows300=WordField.canonicalRows actualModulus 300 (.bxor 297 299) := by core033_kernel_decide
theorem stats300 : actualRows300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows300=7428 := by core033_kernel_decide
theorem rows301 : actualRows301=WordField.canonicalRows actualModulus 301 (.literal (BitVec.ofNat 32 8)) := by core033_kernel_decide
theorem stats301 : actualRows301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows301=2892 := by core033_kernel_decide
theorem rows302 : actualRows302=WordField.canonicalRows actualModulus 302 (.bxor 0 301) := by core033_kernel_decide
theorem stats302 : actualRows302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows302=7428 := by core033_kernel_decide
theorem rows303 : actualRows303=WordField.canonicalRows actualModulus 303 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats303 : actualRows303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows303=2820 := by core033_kernel_decide
theorem rows304 : actualRows304=WordField.canonicalRows actualModulus 304 (.bnot 303) := by core033_kernel_decide
theorem stats304 : actualRows304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows304=6276 := by core033_kernel_decide
theorem rows305 : actualRows305=WordField.canonicalRows actualModulus 305 (.badd 302 304) := by core033_kernel_decide
theorem stats305 : actualRows305.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows305=5388 := by core033_kernel_decide
theorem rows306 : actualRows306=WordField.canonicalRows actualModulus 306 (.bnot 305) := by core033_kernel_decide
theorem stats306 : actualRows306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows306=6276 := by core033_kernel_decide
theorem rows307 : actualRows307=WordField.canonicalRows actualModulus 307 (.band 300 306) := by core033_kernel_decide
theorem stats307 : actualRows307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows307=5124 := by core033_kernel_decide
theorem rows308 : actualRows308=WordField.canonicalRows actualModulus 308 (.bxor 295 307) := by core033_kernel_decide
theorem stats308 : actualRows308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows308=7428 := by core033_kernel_decide
theorem rows309 : actualRows309=WordField.canonicalRows actualModulus 309 (.shr 308 31) := by core033_kernel_decide
theorem stats309 : actualRows309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows309=2892 := by core033_kernel_decide
def partRows2 : List R1CS.Row := actualRows246++actualRows247++actualRows248++actualRows249++actualRows250++actualRows251++actualRows252++actualRows253++actualRows254++actualRows255++actualRows256++actualRows257++actualRows258++actualRows259++actualRows260++actualRows261++actualRows262++actualRows263++actualRows264++actualRows265++actualRows266++actualRows267++actualRows268++actualRows269++actualRows270++actualRows271++actualRows272++actualRows273++actualRows274++actualRows275++actualRows276++actualRows277++actualRows278++actualRows279++actualRows280++actualRows281++actualRows282++actualRows283++actualRows284++actualRows285++actualRows286++actualRows287++actualRows288++actualRows289++actualRows290++actualRows291++actualRows292++actualRows293++actualRows294++actualRows295++actualRows296++actualRows297++actualRows298++actualRows299++actualRows300++actualRows301++actualRows302++actualRows303++actualRows304++actualRows305++actualRows306++actualRows307++actualRows308++actualRows309
def partOps2 : List WordIR.Op := [.bxor 244 245,.bxor 225 246,.literal (BitVec.ofNat 32 2),.bxor 0 248,.literal (BitVec.ofNat 32 0),.bnot 250,.band 249 251,.literal (BitVec.ofNat 32 2),.bxor 0 253,.literal (BitVec.ofNat 32 0),.bnot 255,.bxor 254 256,.literal (BitVec.ofNat 32 2),.bxor 0 258,.literal (BitVec.ofNat 32 0),.bnot 260,.badd 259 261,.bnot 262,.band 257 263,.bxor 252 264,.shr 265 31,.literal (BitVec.ofNat 32 1),.bxor 266 267,.literal (BitVec.ofNat 32 5),.bxor 0 269,.literal (BitVec.ofNat 32 0),.bnot 271,.band 270 272,.literal (BitVec.ofNat 32 5),.bxor 0 274,.literal (BitVec.ofNat 32 0),.bnot 276,.bxor 275 277,.literal (BitVec.ofNat 32 5),.bxor 0 279,.literal (BitVec.ofNat 32 0),.bnot 281,.badd 280 282,.bnot 283,.band 278 284,.bxor 273 285,.shr 286 31,.literal (BitVec.ofNat 32 1),.bxor 287 288,.bxor 268 289,.literal (BitVec.ofNat 32 8),.bxor 0 291,.literal (BitVec.ofNat 32 0),.bnot 293,.band 292 294,.literal (BitVec.ofNat 32 8),.bxor 0 296,.literal (BitVec.ofNat 32 0),.bnot 298,.bxor 297 299,.literal (BitVec.ofNat 32 8),.bxor 0 301,.literal (BitVec.ofNat 32 0),.bnot 303,.badd 302 304,.bnot 305,.band 300 306,.bxor 295 307,.shr 308 31]
theorem partExact2 : partRows2=WordField.rows actualModulus 246 partOps2 := by
  simp only [partRows2,partOps2,WordField.rows,rows246,rows247,rows248,rows249,rows250,rows251,rows252,rows253,rows254,rows255,rows256,rows257,rows258,rows259,rows260,rows261,rows262,rows263,rows264,rows265,rows266,rows267,rows268,rows269,rows270,rows271,rows272,rows273,rows274,rows275,rows276,rows277,rows278,rows279,rows280,rows281,rows282,rows283,rows284,rows285,rows286,rows287,rows288,rows289,rows290,rows291,rows292,rows293,rows294,rows295,rows296,rows297,rows298,rows299,rows300,rows301,rows302,rows303,rows304,rows305,rows306,rows307,rows308,rows309,List.append_assoc,List.append_nil]
theorem partLength2 : partOps2.length=64 := by decide
theorem partStats2 : partRows2.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows2=336864 := by
  simp only [partRows2,List.length_append,MatrixRowBlocks.rows_weight_append,stats246.1,stats246.2,stats247.1,stats247.2,stats248.1,stats248.2,stats249.1,stats249.2,stats250.1,stats250.2,stats251.1,stats251.2,stats252.1,stats252.2,stats253.1,stats253.2,stats254.1,stats254.2,stats255.1,stats255.2,stats256.1,stats256.2,stats257.1,stats257.2,stats258.1,stats258.2,stats259.1,stats259.2,stats260.1,stats260.2,stats261.1,stats261.2,stats262.1,stats262.2,stats263.1,stats263.2,stats264.1,stats264.2,stats265.1,stats265.2,stats266.1,stats266.2,stats267.1,stats267.2,stats268.1,stats268.2,stats269.1,stats269.2,stats270.1,stats270.2,stats271.1,stats271.2,stats272.1,stats272.2,stats273.1,stats273.2,stats274.1,stats274.2,stats275.1,stats275.2,stats276.1,stats276.2,stats277.1,stats277.2,stats278.1,stats278.2,stats279.1,stats279.2,stats280.1,stats280.2,stats281.1,stats281.2,stats282.1,stats282.2,stats283.1,stats283.2,stats284.1,stats284.2,stats285.1,stats285.2,stats286.1,stats286.2,stats287.1,stats287.2,stats288.1,stats288.2,stats289.1,stats289.2,stats290.1,stats290.2,stats291.1,stats291.2,stats292.1,stats292.2,stats293.1,stats293.2,stats294.1,stats294.2,stats295.1,stats295.2,stats296.1,stats296.2,stats297.1,stats297.2,stats298.1,stats298.2,stats299.1,stats299.2,stats300.1,stats300.2,stats301.1,stats301.2,stats302.1,stats302.2,stats303.1,stats303.2,stats304.1,stats304.2,stats305.1,stats305.2,stats306.1,stats306.2,stats307.1,stats307.2,stats308.1,stats308.2,stats309.1,stats309.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
