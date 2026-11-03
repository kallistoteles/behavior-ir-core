import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData4
import SharedFrameInstructionMatrixData5
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows299 : actualRows299=WordField.canonicalRows actualModulus 299 (.band 296 298) := by core033_kernel_decide
theorem stats299 : actualRows299.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows299=5124 := by core033_kernel_decide
theorem rows300 : actualRows300=WordField.canonicalRows actualModulus 300 (.bxor 295 299) := by core033_kernel_decide
theorem stats300 : actualRows300.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows300=7428 := by core033_kernel_decide
theorem rows301 : actualRows301=WordField.canonicalRows actualModulus 301 (.shr 300 31) := by core033_kernel_decide
theorem stats301 : actualRows301.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows301=2892 := by core033_kernel_decide
theorem rows302 : actualRows302=WordField.canonicalRows actualModulus 302 (.bxor 301 43) := by core033_kernel_decide
theorem stats302 : actualRows302.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows302=7428 := by core033_kernel_decide
theorem rows303 : actualRows303=WordField.canonicalRows actualModulus 303 (.band 292 302) := by core033_kernel_decide
theorem stats303 : actualRows303.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows303=5124 := by core033_kernel_decide
theorem rows304 : actualRows304=WordField.canonicalRows actualModulus 304 (.band 260 50) := by core033_kernel_decide
theorem stats304 : actualRows304.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows304=5124 := by core033_kernel_decide
theorem rows305 : actualRows305=WordField.canonicalRows actualModulus 305 (.bxor 260 50) := by core033_kernel_decide
theorem stats305 : actualRows305.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows305=7428 := by core033_kernel_decide
theorem rows306 : actualRows306=WordField.canonicalRows actualModulus 306 (.badd 260 50) := by core033_kernel_decide
theorem stats306 : actualRows306.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows306=5388 := by core033_kernel_decide
theorem rows307 : actualRows307=WordField.canonicalRows actualModulus 307 (.bnot 306) := by core033_kernel_decide
theorem stats307 : actualRows307.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows307=6276 := by core033_kernel_decide
theorem rows308 : actualRows308=WordField.canonicalRows actualModulus 308 (.band 305 307) := by core033_kernel_decide
theorem stats308 : actualRows308.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows308=5124 := by core033_kernel_decide
theorem rows309 : actualRows309=WordField.canonicalRows actualModulus 309 (.bxor 304 308) := by core033_kernel_decide
theorem stats309 : actualRows309.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows309=7428 := by core033_kernel_decide
theorem rows310 : actualRows310=WordField.canonicalRows actualModulus 310 (.shr 309 31) := by core033_kernel_decide
theorem stats310 : actualRows310.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows310=2892 := by core033_kernel_decide
theorem rows311 : actualRows311=WordField.canonicalRows actualModulus 311 (.bxor 310 43) := by core033_kernel_decide
theorem stats311 : actualRows311.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows311=7428 := by core033_kernel_decide
theorem rows312 : actualRows312=WordField.canonicalRows actualModulus 312 (.band 257 294) := by core033_kernel_decide
theorem stats312 : actualRows312.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows312=5124 := by core033_kernel_decide
theorem rows313 : actualRows313=WordField.canonicalRows actualModulus 313 (.bxor 257 294) := by core033_kernel_decide
theorem stats313 : actualRows313.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows313=7428 := by core033_kernel_decide
theorem rows314 : actualRows314=WordField.canonicalRows actualModulus 314 (.badd 257 294) := by core033_kernel_decide
theorem stats314 : actualRows314.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows314=5388 := by core033_kernel_decide
theorem rows315 : actualRows315=WordField.canonicalRows actualModulus 315 (.bnot 314) := by core033_kernel_decide
theorem stats315 : actualRows315.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows315=6276 := by core033_kernel_decide
theorem rows316 : actualRows316=WordField.canonicalRows actualModulus 316 (.band 313 315) := by core033_kernel_decide
theorem stats316 : actualRows316.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows316=5124 := by core033_kernel_decide
theorem rows317 : actualRows317=WordField.canonicalRows actualModulus 317 (.bxor 312 316) := by core033_kernel_decide
theorem stats317 : actualRows317.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows317=7428 := by core033_kernel_decide
theorem rows318 : actualRows318=WordField.canonicalRows actualModulus 318 (.shr 317 31) := by core033_kernel_decide
theorem stats318 : actualRows318.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows318=2892 := by core033_kernel_decide
theorem rows319 : actualRows319=WordField.canonicalRows actualModulus 319 (.bxor 318 43) := by core033_kernel_decide
theorem stats319 : actualRows319.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows319=7428 := by core033_kernel_decide
theorem rows320 : actualRows320=WordField.canonicalRows actualModulus 320 (.band 311 319) := by core033_kernel_decide
theorem stats320 : actualRows320.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows320=5124 := by core033_kernel_decide
theorem rows321 : actualRows321=WordField.canonicalRows actualModulus 321 (.band 303 320) := by core033_kernel_decide
theorem stats321 : actualRows321.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows321=5124 := by core033_kernel_decide
theorem rows322 : actualRows322=WordField.canonicalRows actualModulus 322 (.band 284 50) := by core033_kernel_decide
theorem stats322 : actualRows322.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows322=5124 := by core033_kernel_decide
theorem rows323 : actualRows323=WordField.canonicalRows actualModulus 323 (.bxor 284 50) := by core033_kernel_decide
theorem stats323 : actualRows323.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows323=7428 := by core033_kernel_decide
theorem rows324 : actualRows324=WordField.canonicalRows actualModulus 324 (.badd 284 50) := by core033_kernel_decide
theorem stats324 : actualRows324.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows324=5388 := by core033_kernel_decide
theorem rows325 : actualRows325=WordField.canonicalRows actualModulus 325 (.bnot 324) := by core033_kernel_decide
theorem stats325 : actualRows325.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows325=6276 := by core033_kernel_decide
theorem rows326 : actualRows326=WordField.canonicalRows actualModulus 326 (.band 323 325) := by core033_kernel_decide
theorem stats326 : actualRows326.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows326=5124 := by core033_kernel_decide
theorem rows327 : actualRows327=WordField.canonicalRows actualModulus 327 (.bxor 322 326) := by core033_kernel_decide
theorem stats327 : actualRows327.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows327=7428 := by core033_kernel_decide
theorem rows328 : actualRows328=WordField.canonicalRows actualModulus 328 (.shr 327 31) := by core033_kernel_decide
theorem stats328 : actualRows328.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows328=2892 := by core033_kernel_decide
theorem rows329 : actualRows329=WordField.canonicalRows actualModulus 329 (.bxor 328 43) := by core033_kernel_decide
theorem stats329 : actualRows329.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows329=7428 := by core033_kernel_decide
theorem rows330 : actualRows330=WordField.canonicalRows actualModulus 330 (.band 276 294) := by core033_kernel_decide
theorem stats330 : actualRows330.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows330=5124 := by core033_kernel_decide
theorem rows331 : actualRows331=WordField.canonicalRows actualModulus 331 (.bxor 276 294) := by core033_kernel_decide
theorem stats331 : actualRows331.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows331=7428 := by core033_kernel_decide
theorem rows332 : actualRows332=WordField.canonicalRows actualModulus 332 (.badd 276 294) := by core033_kernel_decide
theorem stats332 : actualRows332.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows332=5388 := by core033_kernel_decide
theorem rows333 : actualRows333=WordField.canonicalRows actualModulus 333 (.bnot 332) := by core033_kernel_decide
theorem stats333 : actualRows333.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows333=6276 := by core033_kernel_decide
theorem rows334 : actualRows334=WordField.canonicalRows actualModulus 334 (.band 331 333) := by core033_kernel_decide
theorem stats334 : actualRows334.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows334=5124 := by core033_kernel_decide
theorem rows335 : actualRows335=WordField.canonicalRows actualModulus 335 (.bxor 330 334) := by core033_kernel_decide
theorem stats335 : actualRows335.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows335=7428 := by core033_kernel_decide
theorem rows336 : actualRows336=WordField.canonicalRows actualModulus 336 (.shr 335 31) := by core033_kernel_decide
theorem stats336 : actualRows336.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows336=2892 := by core033_kernel_decide
theorem rows337 : actualRows337=WordField.canonicalRows actualModulus 337 (.bxor 336 43) := by core033_kernel_decide
theorem stats337 : actualRows337.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows337=7428 := by core033_kernel_decide
theorem rows338 : actualRows338=WordField.canonicalRows actualModulus 338 (.band 329 337) := by core033_kernel_decide
theorem stats338 : actualRows338.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows338=5124 := by core033_kernel_decide
theorem rows339 : actualRows339=WordField.canonicalRows actualModulus 339 (.band 321 338) := by core033_kernel_decide
theorem stats339 : actualRows339.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows339=5124 := by core033_kernel_decide
theorem rows340 : actualRows340=WordField.canonicalRows actualModulus 340 (.band 227 263) := by core033_kernel_decide
theorem stats340 : actualRows340.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows340=5124 := by core033_kernel_decide
theorem rows341 : actualRows341=WordField.canonicalRows actualModulus 341 (.band 230 266) := by core033_kernel_decide
theorem stats341 : actualRows341.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows341=5124 := by core033_kernel_decide
theorem rows342 : actualRows342=WordField.canonicalRows actualModulus 342 (.shr 227 1) := by core033_kernel_decide
theorem stats342 : actualRows342.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows342=5052 := by core033_kernel_decide
theorem rows343 : actualRows343=WordField.canonicalRows actualModulus 343 (.band 342 50) := by core033_kernel_decide
theorem stats343 : actualRows343.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows343=5124 := by core033_kernel_decide
theorem rows344 : actualRows344=WordField.canonicalRows actualModulus 344 (.bxor 342 50) := by core033_kernel_decide
theorem stats344 : actualRows344.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows344=7428 := by core033_kernel_decide
theorem rows345 : actualRows345=WordField.canonicalRows actualModulus 345 (.badd 342 50) := by core033_kernel_decide
theorem stats345 : actualRows345.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows345=5388 := by core033_kernel_decide
theorem rows346 : actualRows346=WordField.canonicalRows actualModulus 346 (.bnot 345) := by core033_kernel_decide
theorem stats346 : actualRows346.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows346=6276 := by core033_kernel_decide
theorem rows347 : actualRows347=WordField.canonicalRows actualModulus 347 (.band 344 346) := by core033_kernel_decide
theorem stats347 : actualRows347.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows347=5124 := by core033_kernel_decide
theorem rows348 : actualRows348=WordField.canonicalRows actualModulus 348 (.bxor 343 347) := by core033_kernel_decide
theorem stats348 : actualRows348.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows348=7428 := by core033_kernel_decide
theorem rows349 : actualRows349=WordField.canonicalRows actualModulus 349 (.shr 348 31) := by core033_kernel_decide
theorem stats349 : actualRows349.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows349=2892 := by core033_kernel_decide
theorem rows350 : actualRows350=WordField.canonicalRows actualModulus 350 (.bxor 349 43) := by core033_kernel_decide
theorem stats350 : actualRows350.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows350=7428 := by core033_kernel_decide
theorem rows351 : actualRows351=WordField.canonicalRows actualModulus 351 (.shr 263 1) := by core033_kernel_decide
theorem stats351 : actualRows351.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows351=5052 := by core033_kernel_decide
theorem rows352 : actualRows352=WordField.canonicalRows actualModulus 352 (.band 351 50) := by core033_kernel_decide
theorem stats352 : actualRows352.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows352=5124 := by core033_kernel_decide
theorem rows353 : actualRows353=WordField.canonicalRows actualModulus 353 (.bxor 351 50) := by core033_kernel_decide
theorem stats353 : actualRows353.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows353=7428 := by core033_kernel_decide
theorem rows354 : actualRows354=WordField.canonicalRows actualModulus 354 (.badd 351 50) := by core033_kernel_decide
theorem stats354 : actualRows354.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows354=5388 := by core033_kernel_decide
theorem rows355 : actualRows355=WordField.canonicalRows actualModulus 355 (.bnot 354) := by core033_kernel_decide
theorem stats355 : actualRows355.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows355=6276 := by core033_kernel_decide
theorem rows356 : actualRows356=WordField.canonicalRows actualModulus 356 (.band 353 355) := by core033_kernel_decide
theorem stats356 : actualRows356.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows356=5124 := by core033_kernel_decide
theorem rows357 : actualRows357=WordField.canonicalRows actualModulus 357 (.bxor 352 356) := by core033_kernel_decide
theorem stats357 : actualRows357.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows357=7428 := by core033_kernel_decide
theorem rows358 : actualRows358=WordField.canonicalRows actualModulus 358 (.shr 357 31) := by core033_kernel_decide
theorem stats358 : actualRows358.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows358=2892 := by core033_kernel_decide
theorem rows359 : actualRows359=WordField.canonicalRows actualModulus 359 (.bxor 358 43) := by core033_kernel_decide
theorem stats359 : actualRows359.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows359=7428 := by core033_kernel_decide
theorem rows360 : actualRows360=WordField.canonicalRows actualModulus 360 (.shr 230 1) := by core033_kernel_decide
theorem stats360 : actualRows360.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows360=5052 := by core033_kernel_decide
theorem rows361 : actualRows361=WordField.canonicalRows actualModulus 361 (.band 360 50) := by core033_kernel_decide
theorem stats361 : actualRows361.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows361=5124 := by core033_kernel_decide
theorem rows362 : actualRows362=WordField.canonicalRows actualModulus 362 (.bxor 360 50) := by core033_kernel_decide
theorem stats362 : actualRows362.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows362=7428 := by core033_kernel_decide
def partRows4 : List R1CS.Row := actualRows299++actualRows300++actualRows301++actualRows302++actualRows303++actualRows304++actualRows305++actualRows306++actualRows307++actualRows308++actualRows309++actualRows310++actualRows311++actualRows312++actualRows313++actualRows314++actualRows315++actualRows316++actualRows317++actualRows318++actualRows319++actualRows320++actualRows321++actualRows322++actualRows323++actualRows324++actualRows325++actualRows326++actualRows327++actualRows328++actualRows329++actualRows330++actualRows331++actualRows332++actualRows333++actualRows334++actualRows335++actualRows336++actualRows337++actualRows338++actualRows339++actualRows340++actualRows341++actualRows342++actualRows343++actualRows344++actualRows345++actualRows346++actualRows347++actualRows348++actualRows349++actualRows350++actualRows351++actualRows352++actualRows353++actualRows354++actualRows355++actualRows356++actualRows357++actualRows358++actualRows359++actualRows360++actualRows361++actualRows362
def partOps4 : List WordIR.Op := [.band 296 298,.bxor 295 299,.shr 300 31,.bxor 301 43,.band 292 302,.band 260 50,.bxor 260 50,.badd 260 50,.bnot 306,.band 305 307,.bxor 304 308,.shr 309 31,.bxor 310 43,.band 257 294,.bxor 257 294,.badd 257 294,.bnot 314,.band 313 315,.bxor 312 316,.shr 317 31,.bxor 318 43,.band 311 319,.band 303 320,.band 284 50,.bxor 284 50,.badd 284 50,.bnot 324,.band 323 325,.bxor 322 326,.shr 327 31,.bxor 328 43,.band 276 294,.bxor 276 294,.badd 276 294,.bnot 332,.band 331 333,.bxor 330 334,.shr 335 31,.bxor 336 43,.band 329 337,.band 321 338,.band 227 263,.band 230 266,.shr 227 1,.band 342 50,.bxor 342 50,.badd 342 50,.bnot 345,.band 344 346,.bxor 343 347,.shr 348 31,.bxor 349 43,.shr 263 1,.band 351 50,.bxor 351 50,.badd 351 50,.bnot 354,.band 353 355,.bxor 352 356,.shr 357 31,.bxor 358 43,.shr 230 1,.band 360 50,.bxor 360 50]
theorem partExact4 : partRows4=WordField.rows actualModulus 299 partOps4 := by
  simp only [partRows4,partOps4,WordField.rows,rows299,rows300,rows301,rows302,rows303,rows304,rows305,rows306,rows307,rows308,rows309,rows310,rows311,rows312,rows313,rows314,rows315,rows316,rows317,rows318,rows319,rows320,rows321,rows322,rows323,rows324,rows325,rows326,rows327,rows328,rows329,rows330,rows331,rows332,rows333,rows334,rows335,rows336,rows337,rows338,rows339,rows340,rows341,rows342,rows343,rows344,rows345,rows346,rows347,rows348,rows349,rows350,rows351,rows352,rows353,rows354,rows355,rows356,rows357,rows358,rows359,rows360,rows361,rows362,List.append_assoc,List.append_nil]
theorem partLength4 : partOps4.length=64 := by decide
theorem partStats4 : partRows4.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows4=368976 := by
  simp only [partRows4,List.length_append,MatrixRowBlocks.rows_weight_append,stats299.1,stats299.2,stats300.1,stats300.2,stats301.1,stats301.2,stats302.1,stats302.2,stats303.1,stats303.2,stats304.1,stats304.2,stats305.1,stats305.2,stats306.1,stats306.2,stats307.1,stats307.2,stats308.1,stats308.2,stats309.1,stats309.2,stats310.1,stats310.2,stats311.1,stats311.2,stats312.1,stats312.2,stats313.1,stats313.2,stats314.1,stats314.2,stats315.1,stats315.2,stats316.1,stats316.2,stats317.1,stats317.2,stats318.1,stats318.2,stats319.1,stats319.2,stats320.1,stats320.2,stats321.1,stats321.2,stats322.1,stats322.2,stats323.1,stats323.2,stats324.1,stats324.2,stats325.1,stats325.2,stats326.1,stats326.2,stats327.1,stats327.2,stats328.1,stats328.2,stats329.1,stats329.2,stats330.1,stats330.2,stats331.1,stats331.2,stats332.1,stats332.2,stats333.1,stats333.2,stats334.1,stats334.2,stats335.1,stats335.2,stats336.1,stats336.2,stats337.1,stats337.2,stats338.1,stats338.2,stats339.1,stats339.2,stats340.1,stats340.2,stats341.1,stats341.2,stats342.1,stats342.2,stats343.1,stats343.2,stats344.1,stats344.2,stats345.1,stats345.2,stats346.1,stats346.2,stats347.1,stats347.2,stats348.1,stats348.2,stats349.1,stats349.2,stats350.1,stats350.2,stats351.1,stats351.2,stats352.1,stats352.2,stats353.1,stats353.2,stats354.1,stats354.2,stats355.1,stats355.2,stats356.1,stats356.2,stats357.1,stats357.2,stats358.1,stats358.2,stats359.1,stats359.2,stats360.1,stats360.2,stats361.1,stats361.2,stats362.1,stats362.2]
  decide
end SharedFrameCheckedRows
