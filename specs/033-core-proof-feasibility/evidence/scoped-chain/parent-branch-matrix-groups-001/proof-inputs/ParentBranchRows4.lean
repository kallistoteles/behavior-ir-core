import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData4
import ParentBranchInstructionMatrixData5
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows282 : actualRows282=WordField.canonicalRows actualModulus 282 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats282 : actualRows282.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows282=3396 := by core033_kernel_decide
theorem rows283 : actualRows283=WordField.canonicalRows actualModulus 283 (.band 281 282) := by core033_kernel_decide
theorem stats283 : actualRows283.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows283=5124 := by core033_kernel_decide
theorem rows284 : actualRows284=WordField.canonicalRows actualModulus 284 (.shr 3 16) := by core033_kernel_decide
theorem stats284 : actualRows284.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows284=3972 := by core033_kernel_decide
theorem rows285 : actualRows285=WordField.canonicalRows actualModulus 285 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats285 : actualRows285.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows285=3396 := by core033_kernel_decide
theorem rows286 : actualRows286=WordField.canonicalRows actualModulus 286 (.band 284 285) := by core033_kernel_decide
theorem stats286 : actualRows286.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows286=5124 := by core033_kernel_decide
theorem rows287 : actualRows287=WordField.canonicalRows actualModulus 287 (.shr 3 24) := by core033_kernel_decide
theorem stats287 : actualRows287.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows287=3396 := by core033_kernel_decide
theorem rows288 : actualRows288=WordField.canonicalRows actualModulus 288 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats288 : actualRows288.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows288=3396 := by core033_kernel_decide
theorem rows289 : actualRows289=WordField.canonicalRows actualModulus 289 (.band 287 288) := by core033_kernel_decide
theorem stats289 : actualRows289.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows289=5124 := by core033_kernel_decide
theorem rows290 : actualRows290=WordField.canonicalRows actualModulus 290 (.shr 4 0) := by core033_kernel_decide
theorem stats290 : actualRows290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows290=5124 := by core033_kernel_decide
theorem rows291 : actualRows291=WordField.canonicalRows actualModulus 291 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats291 : actualRows291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows291=3396 := by core033_kernel_decide
theorem rows292 : actualRows292=WordField.canonicalRows actualModulus 292 (.band 290 291) := by core033_kernel_decide
theorem stats292 : actualRows292.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows292=5124 := by core033_kernel_decide
theorem rows293 : actualRows293=WordField.canonicalRows actualModulus 293 (.shr 4 8) := by core033_kernel_decide
theorem stats293 : actualRows293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows293=4548 := by core033_kernel_decide
theorem rows294 : actualRows294=WordField.canonicalRows actualModulus 294 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats294 : actualRows294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows294=3396 := by core033_kernel_decide
theorem rows295 : actualRows295=WordField.canonicalRows actualModulus 295 (.band 293 294) := by core033_kernel_decide
theorem stats295 : actualRows295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows295=5124 := by core033_kernel_decide
theorem rows296 : actualRows296=WordField.canonicalRows actualModulus 296 (.shr 4 16) := by core033_kernel_decide
theorem stats296 : actualRows296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows296=3972 := by core033_kernel_decide
theorem rows297 : actualRows297=WordField.canonicalRows actualModulus 297 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats297 : actualRows297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows297=3396 := by core033_kernel_decide
theorem rows298 : actualRows298=WordField.canonicalRows actualModulus 298 (.band 296 297) := by core033_kernel_decide
theorem stats298 : actualRows298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows298=5124 := by core033_kernel_decide
theorem rows299 : actualRows299=WordField.canonicalRows actualModulus 299 (.shr 4 24) := by core033_kernel_decide
theorem stats299 : actualRows299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows299=3396 := by core033_kernel_decide
theorem rows300 : actualRows300=WordField.canonicalRows actualModulus 300 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats300 : actualRows300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows300=3396 := by core033_kernel_decide
theorem rows301 : actualRows301=WordField.canonicalRows actualModulus 301 (.band 299 300) := by core033_kernel_decide
theorem stats301 : actualRows301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows301=5124 := by core033_kernel_decide
theorem rows302 : actualRows302=WordField.canonicalRows actualModulus 302 (.shr 5 0) := by core033_kernel_decide
theorem stats302 : actualRows302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows302=5124 := by core033_kernel_decide
theorem rows303 : actualRows303=WordField.canonicalRows actualModulus 303 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats303 : actualRows303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows303=3396 := by core033_kernel_decide
theorem rows304 : actualRows304=WordField.canonicalRows actualModulus 304 (.band 302 303) := by core033_kernel_decide
theorem stats304 : actualRows304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows304=5124 := by core033_kernel_decide
theorem rows305 : actualRows305=WordField.canonicalRows actualModulus 305 (.shr 5 8) := by core033_kernel_decide
theorem stats305 : actualRows305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows305=4548 := by core033_kernel_decide
theorem rows306 : actualRows306=WordField.canonicalRows actualModulus 306 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats306 : actualRows306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows306=3396 := by core033_kernel_decide
theorem rows307 : actualRows307=WordField.canonicalRows actualModulus 307 (.band 305 306) := by core033_kernel_decide
theorem stats307 : actualRows307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows307=5124 := by core033_kernel_decide
theorem rows308 : actualRows308=WordField.canonicalRows actualModulus 308 (.shr 5 16) := by core033_kernel_decide
theorem stats308 : actualRows308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows308=3972 := by core033_kernel_decide
theorem rows309 : actualRows309=WordField.canonicalRows actualModulus 309 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats309 : actualRows309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows309=3396 := by core033_kernel_decide
theorem rows310 : actualRows310=WordField.canonicalRows actualModulus 310 (.band 308 309) := by core033_kernel_decide
theorem stats310 : actualRows310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows310=5124 := by core033_kernel_decide
theorem rows311 : actualRows311=WordField.canonicalRows actualModulus 311 (.shr 5 24) := by core033_kernel_decide
theorem stats311 : actualRows311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows311=3396 := by core033_kernel_decide
theorem rows312 : actualRows312=WordField.canonicalRows actualModulus 312 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats312 : actualRows312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows312=3396 := by core033_kernel_decide
theorem rows313 : actualRows313=WordField.canonicalRows actualModulus 313 (.band 311 312) := by core033_kernel_decide
theorem stats313 : actualRows313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows313=5124 := by core033_kernel_decide
theorem rows314 : actualRows314=WordField.canonicalRows actualModulus 314 (.shr 6 0) := by core033_kernel_decide
theorem stats314 : actualRows314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows314=5124 := by core033_kernel_decide
theorem rows315 : actualRows315=WordField.canonicalRows actualModulus 315 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats315 : actualRows315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows315=3396 := by core033_kernel_decide
theorem rows316 : actualRows316=WordField.canonicalRows actualModulus 316 (.band 314 315) := by core033_kernel_decide
theorem stats316 : actualRows316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows316=5124 := by core033_kernel_decide
theorem rows317 : actualRows317=WordField.canonicalRows actualModulus 317 (.shr 6 8) := by core033_kernel_decide
theorem stats317 : actualRows317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows317=4548 := by core033_kernel_decide
theorem rows318 : actualRows318=WordField.canonicalRows actualModulus 318 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats318 : actualRows318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows318=3396 := by core033_kernel_decide
theorem rows319 : actualRows319=WordField.canonicalRows actualModulus 319 (.band 317 318) := by core033_kernel_decide
theorem stats319 : actualRows319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows319=5124 := by core033_kernel_decide
theorem rows320 : actualRows320=WordField.canonicalRows actualModulus 320 (.shr 6 16) := by core033_kernel_decide
theorem stats320 : actualRows320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows320=3972 := by core033_kernel_decide
theorem rows321 : actualRows321=WordField.canonicalRows actualModulus 321 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats321 : actualRows321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows321=3396 := by core033_kernel_decide
theorem rows322 : actualRows322=WordField.canonicalRows actualModulus 322 (.band 320 321) := by core033_kernel_decide
theorem stats322 : actualRows322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows322=5124 := by core033_kernel_decide
theorem rows323 : actualRows323=WordField.canonicalRows actualModulus 323 (.shr 6 24) := by core033_kernel_decide
theorem stats323 : actualRows323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows323=3396 := by core033_kernel_decide
theorem rows324 : actualRows324=WordField.canonicalRows actualModulus 324 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats324 : actualRows324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows324=3396 := by core033_kernel_decide
theorem rows325 : actualRows325=WordField.canonicalRows actualModulus 325 (.band 323 324) := by core033_kernel_decide
theorem stats325 : actualRows325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows325=5124 := by core033_kernel_decide
theorem rows326 : actualRows326=WordField.canonicalRows actualModulus 326 (.shr 7 0) := by core033_kernel_decide
theorem stats326 : actualRows326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows326=5124 := by core033_kernel_decide
theorem rows327 : actualRows327=WordField.canonicalRows actualModulus 327 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats327 : actualRows327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows327=3396 := by core033_kernel_decide
theorem rows328 : actualRows328=WordField.canonicalRows actualModulus 328 (.band 326 327) := by core033_kernel_decide
theorem stats328 : actualRows328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows328=5124 := by core033_kernel_decide
theorem rows329 : actualRows329=WordField.canonicalRows actualModulus 329 (.shr 7 8) := by core033_kernel_decide
theorem stats329 : actualRows329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows329=4548 := by core033_kernel_decide
theorem rows330 : actualRows330=WordField.canonicalRows actualModulus 330 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats330 : actualRows330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows330=3396 := by core033_kernel_decide
theorem rows331 : actualRows331=WordField.canonicalRows actualModulus 331 (.band 329 330) := by core033_kernel_decide
theorem stats331 : actualRows331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows331=5124 := by core033_kernel_decide
theorem rows332 : actualRows332=WordField.canonicalRows actualModulus 332 (.shr 7 16) := by core033_kernel_decide
theorem stats332 : actualRows332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows332=3972 := by core033_kernel_decide
theorem rows333 : actualRows333=WordField.canonicalRows actualModulus 333 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats333 : actualRows333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows333=3396 := by core033_kernel_decide
theorem rows334 : actualRows334=WordField.canonicalRows actualModulus 334 (.band 332 333) := by core033_kernel_decide
theorem stats334 : actualRows334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows334=5124 := by core033_kernel_decide
theorem rows335 : actualRows335=WordField.canonicalRows actualModulus 335 (.shr 7 24) := by core033_kernel_decide
theorem stats335 : actualRows335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows335=3396 := by core033_kernel_decide
theorem rows336 : actualRows336=WordField.canonicalRows actualModulus 336 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats336 : actualRows336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows336=3396 := by core033_kernel_decide
theorem rows337 : actualRows337=WordField.canonicalRows actualModulus 337 (.band 335 336) := by core033_kernel_decide
theorem stats337 : actualRows337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows337=5124 := by core033_kernel_decide
theorem rows338 : actualRows338=WordField.canonicalRows actualModulus 338 (.shr 8 0) := by core033_kernel_decide
theorem stats338 : actualRows338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows338=5124 := by core033_kernel_decide
theorem rows339 : actualRows339=WordField.canonicalRows actualModulus 339 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats339 : actualRows339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows339=3396 := by core033_kernel_decide
theorem rows340 : actualRows340=WordField.canonicalRows actualModulus 340 (.band 338 339) := by core033_kernel_decide
theorem stats340 : actualRows340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows340=5124 := by core033_kernel_decide
theorem rows341 : actualRows341=WordField.canonicalRows actualModulus 341 (.shr 8 8) := by core033_kernel_decide
theorem stats341 : actualRows341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows341=4548 := by core033_kernel_decide
theorem rows342 : actualRows342=WordField.canonicalRows actualModulus 342 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats342 : actualRows342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows342=3396 := by core033_kernel_decide
theorem rows343 : actualRows343=WordField.canonicalRows actualModulus 343 (.band 341 342) := by core033_kernel_decide
theorem stats343 : actualRows343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows343=5124 := by core033_kernel_decide
theorem rows344 : actualRows344=WordField.canonicalRows actualModulus 344 (.shr 8 16) := by core033_kernel_decide
theorem stats344 : actualRows344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows344=3972 := by core033_kernel_decide
theorem rows345 : actualRows345=WordField.canonicalRows actualModulus 345 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats345 : actualRows345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows345=3396 := by core033_kernel_decide
def partRows4 : List R1CS.Row := actualRows282++actualRows283++actualRows284++actualRows285++actualRows286++actualRows287++actualRows288++actualRows289++actualRows290++actualRows291++actualRows292++actualRows293++actualRows294++actualRows295++actualRows296++actualRows297++actualRows298++actualRows299++actualRows300++actualRows301++actualRows302++actualRows303++actualRows304++actualRows305++actualRows306++actualRows307++actualRows308++actualRows309++actualRows310++actualRows311++actualRows312++actualRows313++actualRows314++actualRows315++actualRows316++actualRows317++actualRows318++actualRows319++actualRows320++actualRows321++actualRows322++actualRows323++actualRows324++actualRows325++actualRows326++actualRows327++actualRows328++actualRows329++actualRows330++actualRows331++actualRows332++actualRows333++actualRows334++actualRows335++actualRows336++actualRows337++actualRows338++actualRows339++actualRows340++actualRows341++actualRows342++actualRows343++actualRows344++actualRows345
def partOps4 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 281 282,.shr 3 16,.literal (BitVec.ofNat 32 255),.band 284 285,.shr 3 24,.literal (BitVec.ofNat 32 255),.band 287 288,.shr 4 0,.literal (BitVec.ofNat 32 255),.band 290 291,.shr 4 8,.literal (BitVec.ofNat 32 255),.band 293 294,.shr 4 16,.literal (BitVec.ofNat 32 255),.band 296 297,.shr 4 24,.literal (BitVec.ofNat 32 255),.band 299 300,.shr 5 0,.literal (BitVec.ofNat 32 255),.band 302 303,.shr 5 8,.literal (BitVec.ofNat 32 255),.band 305 306,.shr 5 16,.literal (BitVec.ofNat 32 255),.band 308 309,.shr 5 24,.literal (BitVec.ofNat 32 255),.band 311 312,.shr 6 0,.literal (BitVec.ofNat 32 255),.band 314 315,.shr 6 8,.literal (BitVec.ofNat 32 255),.band 317 318,.shr 6 16,.literal (BitVec.ofNat 32 255),.band 320 321,.shr 6 24,.literal (BitVec.ofNat 32 255),.band 323 324,.shr 7 0,.literal (BitVec.ofNat 32 255),.band 326 327,.shr 7 8,.literal (BitVec.ofNat 32 255),.band 329 330,.shr 7 16,.literal (BitVec.ofNat 32 255),.band 332 333,.shr 7 24,.literal (BitVec.ofNat 32 255),.band 335 336,.shr 8 0,.literal (BitVec.ofNat 32 255),.band 338 339,.shr 8 8,.literal (BitVec.ofNat 32 255),.band 341 342,.shr 8 16,.literal (BitVec.ofNat 32 255)]
theorem partExact4 : partRows4=WordField.rows actualModulus 282 partOps4 := by
  simp only [partRows4,partOps4,WordField.rows,rows282,rows283,rows284,rows285,rows286,rows287,rows288,rows289,rows290,rows291,rows292,rows293,rows294,rows295,rows296,rows297,rows298,rows299,rows300,rows301,rows302,rows303,rows304,rows305,rows306,rows307,rows308,rows309,rows310,rows311,rows312,rows313,rows314,rows315,rows316,rows317,rows318,rows319,rows320,rows321,rows322,rows323,rows324,rows325,rows326,rows327,rows328,rows329,rows330,rows331,rows332,rows333,rows334,rows335,rows336,rows337,rows338,rows339,rows340,rows341,rows342,rows343,rows344,rows345,List.append_assoc,List.append_nil]
theorem partLength4 : partOps4.length=64 := by decide
theorem partStats4 : partRows4.length=2176 ∧ MatrixRowBlocks.rowsWeight partRows4=271488 := by
  simp only [partRows4,List.length_append,MatrixRowBlocks.rows_weight_append,stats282.1,stats282.2,stats283.1,stats283.2,stats284.1,stats284.2,stats285.1,stats285.2,stats286.1,stats286.2,stats287.1,stats287.2,stats288.1,stats288.2,stats289.1,stats289.2,stats290.1,stats290.2,stats291.1,stats291.2,stats292.1,stats292.2,stats293.1,stats293.2,stats294.1,stats294.2,stats295.1,stats295.2,stats296.1,stats296.2,stats297.1,stats297.2,stats298.1,stats298.2,stats299.1,stats299.2,stats300.1,stats300.2,stats301.1,stats301.2,stats302.1,stats302.2,stats303.1,stats303.2,stats304.1,stats304.2,stats305.1,stats305.2,stats306.1,stats306.2,stats307.1,stats307.2,stats308.1,stats308.2,stats309.1,stats309.2,stats310.1,stats310.2,stats311.1,stats311.2,stats312.1,stats312.2,stats313.1,stats313.2,stats314.1,stats314.2,stats315.1,stats315.2,stats316.1,stats316.2,stats317.1,stats317.2,stats318.1,stats318.2,stats319.1,stats319.2,stats320.1,stats320.2,stats321.1,stats321.2,stats322.1,stats322.2,stats323.1,stats323.2,stats324.1,stats324.2,stats325.1,stats325.2,stats326.1,stats326.2,stats327.1,stats327.2,stats328.1,stats328.2,stats329.1,stats329.2,stats330.1,stats330.2,stats331.1,stats331.2,stats332.1,stats332.2,stats333.1,stats333.2,stats334.1,stats334.2,stats335.1,stats335.2,stats336.1,stats336.2,stats337.1,stats337.2,stats338.1,stats338.2,stats339.1,stats339.2,stats340.1,stats340.2,stats341.1,stats341.2,stats342.1,stats342.2,stats343.1,stats343.2,stats344.1,stats344.2,stats345.1,stats345.2]
  decide
end ParentBranchCheckedRows
