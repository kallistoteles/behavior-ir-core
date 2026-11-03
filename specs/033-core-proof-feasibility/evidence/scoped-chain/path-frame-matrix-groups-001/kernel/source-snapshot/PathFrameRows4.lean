import ActualPathFrameIR
import ArtifactPathFrameBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathFrameInstructionMatrixData4
import PathFrameInstructionMatrixData5
namespace PathFrameCheckedRows
open Core033 PathFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows290 : actualRows290=WordField.canonicalRows actualModulus 290 (.bnot 289) := by core033_kernel_decide
theorem stats290 : actualRows290.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows290=6276 := by core033_kernel_decide
theorem rows291 : actualRows291=WordField.canonicalRows actualModulus 291 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats291 : actualRows291.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows291=2892 := by core033_kernel_decide
theorem rows292 : actualRows292=WordField.canonicalRows actualModulus 292 (.badd 290 291) := by core033_kernel_decide
theorem stats292 : actualRows292.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows292=5388 := by core033_kernel_decide
theorem rows293 : actualRows293=WordField.canonicalRows actualModulus 293 (.bnot 292) := by core033_kernel_decide
theorem stats293 : actualRows293.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows293=6276 := by core033_kernel_decide
theorem rows294 : actualRows294=WordField.canonicalRows actualModulus 294 (.band 293 278) := by core033_kernel_decide
theorem stats294 : actualRows294.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows294=5124 := by core033_kernel_decide
theorem rows295 : actualRows295=WordField.canonicalRows actualModulus 295 (.bxor 286 294) := by core033_kernel_decide
theorem stats295 : actualRows295.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows295=7428 := by core033_kernel_decide
theorem rows296 : actualRows296=WordField.canonicalRows actualModulus 296 (.shr 96 3) := by core033_kernel_decide
theorem stats296 : actualRows296.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows296=4908 := by core033_kernel_decide
theorem rows297 : actualRows297=WordField.canonicalRows actualModulus 297 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats297 : actualRows297.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows297=2892 := by core033_kernel_decide
theorem rows298 : actualRows298=WordField.canonicalRows actualModulus 298 (.band 296 297) := by core033_kernel_decide
theorem stats298 : actualRows298.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows298=5124 := by core033_kernel_decide
theorem rows299 : actualRows299=WordField.canonicalRows actualModulus 299 (.bnot 298) := by core033_kernel_decide
theorem stats299 : actualRows299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows299=6276 := by core033_kernel_decide
theorem rows300 : actualRows300=WordField.canonicalRows actualModulus 300 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats300 : actualRows300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows300=2892 := by core033_kernel_decide
theorem rows301 : actualRows301=WordField.canonicalRows actualModulus 301 (.badd 299 300) := by core033_kernel_decide
theorem stats301 : actualRows301.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows301=5388 := by core033_kernel_decide
theorem rows302 : actualRows302=WordField.canonicalRows actualModulus 302 (.shr 295 8) := by core033_kernel_decide
theorem stats302 : actualRows302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows302=4548 := by core033_kernel_decide
theorem rows303 : actualRows303=WordField.canonicalRows actualModulus 303 (.band 301 302) := by core033_kernel_decide
theorem stats303 : actualRows303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows303=5124 := by core033_kernel_decide
theorem rows304 : actualRows304=WordField.canonicalRows actualModulus 304 (.shr 96 3) := by core033_kernel_decide
theorem stats304 : actualRows304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows304=4908 := by core033_kernel_decide
theorem rows305 : actualRows305=WordField.canonicalRows actualModulus 305 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats305 : actualRows305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows305=2892 := by core033_kernel_decide
theorem rows306 : actualRows306=WordField.canonicalRows actualModulus 306 (.band 304 305) := by core033_kernel_decide
theorem stats306 : actualRows306.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows306=5124 := by core033_kernel_decide
theorem rows307 : actualRows307=WordField.canonicalRows actualModulus 307 (.bnot 306) := by core033_kernel_decide
theorem stats307 : actualRows307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows307=6276 := by core033_kernel_decide
theorem rows308 : actualRows308=WordField.canonicalRows actualModulus 308 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats308 : actualRows308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows308=2892 := by core033_kernel_decide
theorem rows309 : actualRows309=WordField.canonicalRows actualModulus 309 (.badd 307 308) := by core033_kernel_decide
theorem stats309 : actualRows309.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows309=5388 := by core033_kernel_decide
theorem rows310 : actualRows310=WordField.canonicalRows actualModulus 310 (.bnot 309) := by core033_kernel_decide
theorem stats310 : actualRows310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows310=6276 := by core033_kernel_decide
theorem rows311 : actualRows311=WordField.canonicalRows actualModulus 311 (.band 310 295) := by core033_kernel_decide
theorem stats311 : actualRows311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows311=5124 := by core033_kernel_decide
theorem rows312 : actualRows312=WordField.canonicalRows actualModulus 312 (.bxor 303 311) := by core033_kernel_decide
theorem stats312 : actualRows312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows312=7428 := by core033_kernel_decide
theorem rows313 : actualRows313=WordField.canonicalRows actualModulus 313 (.shr 96 4) := by core033_kernel_decide
theorem stats313 : actualRows313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows313=4836 := by core033_kernel_decide
theorem rows314 : actualRows314=WordField.canonicalRows actualModulus 314 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats314 : actualRows314.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows314=2892 := by core033_kernel_decide
theorem rows315 : actualRows315=WordField.canonicalRows actualModulus 315 (.band 313 314) := by core033_kernel_decide
theorem stats315 : actualRows315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows315=5124 := by core033_kernel_decide
theorem rows316 : actualRows316=WordField.canonicalRows actualModulus 316 (.bnot 315) := by core033_kernel_decide
theorem stats316 : actualRows316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows316=6276 := by core033_kernel_decide
theorem rows317 : actualRows317=WordField.canonicalRows actualModulus 317 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats317 : actualRows317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows317=2892 := by core033_kernel_decide
theorem rows318 : actualRows318=WordField.canonicalRows actualModulus 318 (.badd 316 317) := by core033_kernel_decide
theorem stats318 : actualRows318.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows318=5388 := by core033_kernel_decide
theorem rows319 : actualRows319=WordField.canonicalRows actualModulus 319 (.shr 312 16) := by core033_kernel_decide
theorem stats319 : actualRows319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows319=3972 := by core033_kernel_decide
theorem rows320 : actualRows320=WordField.canonicalRows actualModulus 320 (.band 318 319) := by core033_kernel_decide
theorem stats320 : actualRows320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows320=5124 := by core033_kernel_decide
theorem rows321 : actualRows321=WordField.canonicalRows actualModulus 321 (.shr 96 4) := by core033_kernel_decide
theorem stats321 : actualRows321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows321=4836 := by core033_kernel_decide
theorem rows322 : actualRows322=WordField.canonicalRows actualModulus 322 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats322 : actualRows322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows322=2892 := by core033_kernel_decide
theorem rows323 : actualRows323=WordField.canonicalRows actualModulus 323 (.band 321 322) := by core033_kernel_decide
theorem stats323 : actualRows323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows323=5124 := by core033_kernel_decide
theorem rows324 : actualRows324=WordField.canonicalRows actualModulus 324 (.bnot 323) := by core033_kernel_decide
theorem stats324 : actualRows324.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows324=6276 := by core033_kernel_decide
theorem rows325 : actualRows325=WordField.canonicalRows actualModulus 325 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats325 : actualRows325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows325=2892 := by core033_kernel_decide
theorem rows326 : actualRows326=WordField.canonicalRows actualModulus 326 (.badd 324 325) := by core033_kernel_decide
theorem stats326 : actualRows326.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows326=5388 := by core033_kernel_decide
theorem rows327 : actualRows327=WordField.canonicalRows actualModulus 327 (.bnot 326) := by core033_kernel_decide
theorem stats327 : actualRows327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows327=6276 := by core033_kernel_decide
theorem rows328 : actualRows328=WordField.canonicalRows actualModulus 328 (.band 327 312) := by core033_kernel_decide
theorem stats328 : actualRows328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows328=5124 := by core033_kernel_decide
theorem rows329 : actualRows329=WordField.canonicalRows actualModulus 329 (.bxor 320 328) := by core033_kernel_decide
theorem stats329 : actualRows329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows329=7428 := by core033_kernel_decide
theorem rows330 : actualRows330=WordField.canonicalRows actualModulus 330 (.shr 96 5) := by core033_kernel_decide
theorem stats330 : actualRows330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows330=4764 := by core033_kernel_decide
theorem rows331 : actualRows331=WordField.canonicalRows actualModulus 331 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats331 : actualRows331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows331=2820 := by core033_kernel_decide
theorem rows332 : actualRows332=WordField.canonicalRows actualModulus 332 (.bnot 331) := by core033_kernel_decide
theorem stats332 : actualRows332.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows332=6276 := by core033_kernel_decide
theorem rows333 : actualRows333=WordField.canonicalRows actualModulus 333 (.band 330 332) := by core033_kernel_decide
theorem stats333 : actualRows333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows333=5124 := by core033_kernel_decide
theorem rows334 : actualRows334=WordField.canonicalRows actualModulus 334 (.shr 96 5) := by core033_kernel_decide
theorem stats334 : actualRows334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows334=4764 := by core033_kernel_decide
theorem rows335 : actualRows335=WordField.canonicalRows actualModulus 335 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats335 : actualRows335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows335=2820 := by core033_kernel_decide
theorem rows336 : actualRows336=WordField.canonicalRows actualModulus 336 (.bnot 335) := by core033_kernel_decide
theorem stats336 : actualRows336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows336=6276 := by core033_kernel_decide
theorem rows337 : actualRows337=WordField.canonicalRows actualModulus 337 (.bxor 334 336) := by core033_kernel_decide
theorem stats337 : actualRows337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows337=7428 := by core033_kernel_decide
theorem rows338 : actualRows338=WordField.canonicalRows actualModulus 338 (.shr 96 5) := by core033_kernel_decide
theorem stats338 : actualRows338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows338=4764 := by core033_kernel_decide
theorem rows339 : actualRows339=WordField.canonicalRows actualModulus 339 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats339 : actualRows339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows339=2820 := by core033_kernel_decide
theorem rows340 : actualRows340=WordField.canonicalRows actualModulus 340 (.bnot 339) := by core033_kernel_decide
theorem stats340 : actualRows340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows340=6276 := by core033_kernel_decide
theorem rows341 : actualRows341=WordField.canonicalRows actualModulus 341 (.badd 338 340) := by core033_kernel_decide
theorem stats341 : actualRows341.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows341=5388 := by core033_kernel_decide
theorem rows342 : actualRows342=WordField.canonicalRows actualModulus 342 (.bnot 341) := by core033_kernel_decide
theorem stats342 : actualRows342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows342=6276 := by core033_kernel_decide
theorem rows343 : actualRows343=WordField.canonicalRows actualModulus 343 (.band 337 342) := by core033_kernel_decide
theorem stats343 : actualRows343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows343=5124 := by core033_kernel_decide
theorem rows344 : actualRows344=WordField.canonicalRows actualModulus 344 (.bxor 333 343) := by core033_kernel_decide
theorem stats344 : actualRows344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows344=7428 := by core033_kernel_decide
theorem rows345 : actualRows345=WordField.canonicalRows actualModulus 345 (.shr 344 31) := by core033_kernel_decide
theorem stats345 : actualRows345.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows345=2892 := by core033_kernel_decide
theorem rows346 : actualRows346=WordField.canonicalRows actualModulus 346 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats346 : actualRows346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows346=2892 := by core033_kernel_decide
theorem rows347 : actualRows347=WordField.canonicalRows actualModulus 347 (.bxor 345 346) := by core033_kernel_decide
theorem stats347 : actualRows347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows347=7428 := by core033_kernel_decide
theorem rows348 : actualRows348=WordField.canonicalRows actualModulus 348 (.shr 329 0) := by core033_kernel_decide
theorem stats348 : actualRows348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows348=5124 := by core033_kernel_decide
theorem rows349 : actualRows349=WordField.canonicalRows actualModulus 349 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats349 : actualRows349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows349=2892 := by core033_kernel_decide
theorem rows350 : actualRows350=WordField.canonicalRows actualModulus 350 (.band 348 349) := by core033_kernel_decide
theorem stats350 : actualRows350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows350=5124 := by core033_kernel_decide
theorem rows351 : actualRows351=WordField.canonicalRows actualModulus 351 (.bnot 350) := by core033_kernel_decide
theorem stats351 : actualRows351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows351=6276 := by core033_kernel_decide
theorem rows352 : actualRows352=WordField.canonicalRows actualModulus 352 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats352 : actualRows352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows352=2892 := by core033_kernel_decide
theorem rows353 : actualRows353=WordField.canonicalRows actualModulus 353 (.badd 351 352) := by core033_kernel_decide
theorem stats353 : actualRows353.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows353=5388 := by core033_kernel_decide
def partRows4 : List R1CS.Row := actualRows290++actualRows291++actualRows292++actualRows293++actualRows294++actualRows295++actualRows296++actualRows297++actualRows298++actualRows299++actualRows300++actualRows301++actualRows302++actualRows303++actualRows304++actualRows305++actualRows306++actualRows307++actualRows308++actualRows309++actualRows310++actualRows311++actualRows312++actualRows313++actualRows314++actualRows315++actualRows316++actualRows317++actualRows318++actualRows319++actualRows320++actualRows321++actualRows322++actualRows323++actualRows324++actualRows325++actualRows326++actualRows327++actualRows328++actualRows329++actualRows330++actualRows331++actualRows332++actualRows333++actualRows334++actualRows335++actualRows336++actualRows337++actualRows338++actualRows339++actualRows340++actualRows341++actualRows342++actualRows343++actualRows344++actualRows345++actualRows346++actualRows347++actualRows348++actualRows349++actualRows350++actualRows351++actualRows352++actualRows353
def partOps4 : List WordIR.Op := [.bnot 289,.literal (BitVec.ofNat 32 1),.badd 290 291,.bnot 292,.band 293 278,.bxor 286 294,.shr 96 3,.literal (BitVec.ofNat 32 1),.band 296 297,.bnot 298,.literal (BitVec.ofNat 32 1),.badd 299 300,.shr 295 8,.band 301 302,.shr 96 3,.literal (BitVec.ofNat 32 1),.band 304 305,.bnot 306,.literal (BitVec.ofNat 32 1),.badd 307 308,.bnot 309,.band 310 295,.bxor 303 311,.shr 96 4,.literal (BitVec.ofNat 32 1),.band 313 314,.bnot 315,.literal (BitVec.ofNat 32 1),.badd 316 317,.shr 312 16,.band 318 319,.shr 96 4,.literal (BitVec.ofNat 32 1),.band 321 322,.bnot 323,.literal (BitVec.ofNat 32 1),.badd 324 325,.bnot 326,.band 327 312,.bxor 320 328,.shr 96 5,.literal (BitVec.ofNat 32 0),.bnot 331,.band 330 332,.shr 96 5,.literal (BitVec.ofNat 32 0),.bnot 335,.bxor 334 336,.shr 96 5,.literal (BitVec.ofNat 32 0),.bnot 339,.badd 338 340,.bnot 341,.band 337 342,.bxor 333 343,.shr 344 31,.literal (BitVec.ofNat 32 1),.bxor 345 346,.shr 329 0,.literal (BitVec.ofNat 32 1),.band 348 349,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 351 352]
theorem partExact4 : partRows4=WordField.rows actualModulus 290 partOps4 := by
  simp only [partRows4,partOps4,WordField.rows,rows290,rows291,rows292,rows293,rows294,rows295,rows296,rows297,rows298,rows299,rows300,rows301,rows302,rows303,rows304,rows305,rows306,rows307,rows308,rows309,rows310,rows311,rows312,rows313,rows314,rows315,rows316,rows317,rows318,rows319,rows320,rows321,rows322,rows323,rows324,rows325,rows326,rows327,rows328,rows329,rows330,rows331,rows332,rows333,rows334,rows335,rows336,rows337,rows338,rows339,rows340,rows341,rows342,rows343,rows344,rows345,rows346,rows347,rows348,rows349,rows350,rows351,rows352,rows353,List.append_assoc,List.append_nil]
theorem partLength4 : partOps4.length=64 := by decide
theorem partStats4 : partRows4.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows4=318840 := by
  simp only [partRows4,List.length_append,MatrixRowBlocks.rows_weight_append,stats290.1,stats290.2,stats291.1,stats291.2,stats292.1,stats292.2,stats293.1,stats293.2,stats294.1,stats294.2,stats295.1,stats295.2,stats296.1,stats296.2,stats297.1,stats297.2,stats298.1,stats298.2,stats299.1,stats299.2,stats300.1,stats300.2,stats301.1,stats301.2,stats302.1,stats302.2,stats303.1,stats303.2,stats304.1,stats304.2,stats305.1,stats305.2,stats306.1,stats306.2,stats307.1,stats307.2,stats308.1,stats308.2,stats309.1,stats309.2,stats310.1,stats310.2,stats311.1,stats311.2,stats312.1,stats312.2,stats313.1,stats313.2,stats314.1,stats314.2,stats315.1,stats315.2,stats316.1,stats316.2,stats317.1,stats317.2,stats318.1,stats318.2,stats319.1,stats319.2,stats320.1,stats320.2,stats321.1,stats321.2,stats322.1,stats322.2,stats323.1,stats323.2,stats324.1,stats324.2,stats325.1,stats325.2,stats326.1,stats326.2,stats327.1,stats327.2,stats328.1,stats328.2,stats329.1,stats329.2,stats330.1,stats330.2,stats331.1,stats331.2,stats332.1,stats332.2,stats333.1,stats333.2,stats334.1,stats334.2,stats335.1,stats335.2,stats336.1,stats336.2,stats337.1,stats337.2,stats338.1,stats338.2,stats339.1,stats339.2,stats340.1,stats340.2,stats341.1,stats341.2,stats342.1,stats342.2,stats343.1,stats343.2,stats344.1,stats344.2,stats345.1,stats345.2,stats346.1,stats346.2,stats347.1,stats347.2,stats348.1,stats348.2,stats349.1,stats349.2,stats350.1,stats350.2,stats351.1,stats351.2,stats352.1,stats352.2,stats353.1,stats353.2]
  decide
end PathFrameCheckedRows
