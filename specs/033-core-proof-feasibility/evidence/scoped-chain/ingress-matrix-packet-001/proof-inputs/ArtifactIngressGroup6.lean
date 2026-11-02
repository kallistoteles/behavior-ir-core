import ActualIngressIR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactIngressGroup6
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op384 : List WordIR.Op := [.shr 16 8]
def bytes384 : Bytes := ("    let r000001c0: u32 = r00000010 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked384 : bytes384=statementBytes 448 (op384.map lower) ∧ bytes384.length=54 := by core033_kernel_decide
def op385 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes385 : Bytes := ("    let r000001c1: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked385 : bytes385=statementBytes 449 (op385.map lower) ∧ bytes385.length=41 := by core033_kernel_decide
def op386 : List WordIR.Op := [.bnot 449]
def bytes386 : Bytes := ("    let r000001c2: u32 = !r000001c1;\n" : String).toByteArray.data.toList
theorem checked386 : bytes386=statementBytes 450 (op386.map lower) ∧ bytes386.length=37 := by core033_kernel_decide
def op387 : List WordIR.Op := [.band 448 450]
def bytes387 : Bytes := ("    let r000001c3: u32 = r000001c0 & r000001c2;\n" : String).toByteArray.data.toList
theorem checked387 : bytes387=statementBytes 451 (op387.map lower) ∧ bytes387.length=48 := by core033_kernel_decide
def op388 : List WordIR.Op := [.shr 16 8]
def bytes388 : Bytes := ("    let r000001c4: u32 = r00000010 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked388 : bytes388=statementBytes 452 (op388.map lower) ∧ bytes388.length=54 := by core033_kernel_decide
def op389 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes389 : Bytes := ("    let r000001c5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked389 : bytes389=statementBytes 453 (op389.map lower) ∧ bytes389.length=41 := by core033_kernel_decide
def op390 : List WordIR.Op := [.bnot 453]
def bytes390 : Bytes := ("    let r000001c6: u32 = !r000001c5;\n" : String).toByteArray.data.toList
theorem checked390 : bytes390=statementBytes 454 (op390.map lower) ∧ bytes390.length=37 := by core033_kernel_decide
def op391 : List WordIR.Op := [.bxor 452 454]
def bytes391 : Bytes := ("    let r000001c7: u32 = r000001c4 ^ r000001c6;\n" : String).toByteArray.data.toList
theorem checked391 : bytes391=statementBytes 455 (op391.map lower) ∧ bytes391.length=48 := by core033_kernel_decide
def op392 : List WordIR.Op := [.shr 16 8]
def bytes392 : Bytes := ("    let r000001c8: u32 = r00000010 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked392 : bytes392=statementBytes 456 (op392.map lower) ∧ bytes392.length=54 := by core033_kernel_decide
def op393 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes393 : Bytes := ("    let r000001c9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked393 : bytes393=statementBytes 457 (op393.map lower) ∧ bytes393.length=41 := by core033_kernel_decide
def op394 : List WordIR.Op := [.bnot 457]
def bytes394 : Bytes := ("    let r000001ca: u32 = !r000001c9;\n" : String).toByteArray.data.toList
theorem checked394 : bytes394=statementBytes 458 (op394.map lower) ∧ bytes394.length=37 := by core033_kernel_decide
def op395 : List WordIR.Op := [.badd 456 458]
def bytes395 : Bytes := ("    let r000001cb: u32 = r000001c8.wrapping_add(r000001ca);\n" : String).toByteArray.data.toList
theorem checked395 : bytes395=statementBytes 459 (op395.map lower) ∧ bytes395.length=60 := by core033_kernel_decide
def op396 : List WordIR.Op := [.bnot 459]
def bytes396 : Bytes := ("    let r000001cc: u32 = !r000001cb;\n" : String).toByteArray.data.toList
theorem checked396 : bytes396=statementBytes 460 (op396.map lower) ∧ bytes396.length=37 := by core033_kernel_decide
def op397 : List WordIR.Op := [.band 455 460]
def bytes397 : Bytes := ("    let r000001cd: u32 = r000001c7 & r000001cc;\n" : String).toByteArray.data.toList
theorem checked397 : bytes397=statementBytes 461 (op397.map lower) ∧ bytes397.length=48 := by core033_kernel_decide
def op398 : List WordIR.Op := [.bxor 451 461]
def bytes398 : Bytes := ("    let r000001ce: u32 = r000001c3 ^ r000001cd;\n" : String).toByteArray.data.toList
theorem checked398 : bytes398=statementBytes 462 (op398.map lower) ∧ bytes398.length=48 := by core033_kernel_decide
def op399 : List WordIR.Op := [.shr 462 31]
def bytes399 : Bytes := ("    let r000001cf: u32 = r000001ce >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked399 : bytes399=statementBytes 463 (op399.map lower) ∧ bytes399.length=54 := by core033_kernel_decide
def op400 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes400 : Bytes := ("    let r000001d0: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked400 : bytes400=statementBytes 464 (op400.map lower) ∧ bytes400.length=41 := by core033_kernel_decide
def op401 : List WordIR.Op := [.bxor 463 464]
def bytes401 : Bytes := ("    let r000001d1: u32 = r000001cf ^ r000001d0;\n" : String).toByteArray.data.toList
theorem checked401 : bytes401=statementBytes 465 (op401.map lower) ∧ bytes401.length=48 := by core033_kernel_decide
def op402 : List WordIR.Op := [.shr 17 8]
def bytes402 : Bytes := ("    let r000001d2: u32 = r00000011 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked402 : bytes402=statementBytes 466 (op402.map lower) ∧ bytes402.length=54 := by core033_kernel_decide
def op403 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes403 : Bytes := ("    let r000001d3: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked403 : bytes403=statementBytes 467 (op403.map lower) ∧ bytes403.length=41 := by core033_kernel_decide
def op404 : List WordIR.Op := [.bnot 467]
def bytes404 : Bytes := ("    let r000001d4: u32 = !r000001d3;\n" : String).toByteArray.data.toList
theorem checked404 : bytes404=statementBytes 468 (op404.map lower) ∧ bytes404.length=37 := by core033_kernel_decide
def op405 : List WordIR.Op := [.band 466 468]
def bytes405 : Bytes := ("    let r000001d5: u32 = r000001d2 & r000001d4;\n" : String).toByteArray.data.toList
theorem checked405 : bytes405=statementBytes 469 (op405.map lower) ∧ bytes405.length=48 := by core033_kernel_decide
def op406 : List WordIR.Op := [.shr 17 8]
def bytes406 : Bytes := ("    let r000001d6: u32 = r00000011 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked406 : bytes406=statementBytes 470 (op406.map lower) ∧ bytes406.length=54 := by core033_kernel_decide
def op407 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes407 : Bytes := ("    let r000001d7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked407 : bytes407=statementBytes 471 (op407.map lower) ∧ bytes407.length=41 := by core033_kernel_decide
def op408 : List WordIR.Op := [.bnot 471]
def bytes408 : Bytes := ("    let r000001d8: u32 = !r000001d7;\n" : String).toByteArray.data.toList
theorem checked408 : bytes408=statementBytes 472 (op408.map lower) ∧ bytes408.length=37 := by core033_kernel_decide
def op409 : List WordIR.Op := [.bxor 470 472]
def bytes409 : Bytes := ("    let r000001d9: u32 = r000001d6 ^ r000001d8;\n" : String).toByteArray.data.toList
theorem checked409 : bytes409=statementBytes 473 (op409.map lower) ∧ bytes409.length=48 := by core033_kernel_decide
def op410 : List WordIR.Op := [.shr 17 8]
def bytes410 : Bytes := ("    let r000001da: u32 = r00000011 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked410 : bytes410=statementBytes 474 (op410.map lower) ∧ bytes410.length=54 := by core033_kernel_decide
def op411 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes411 : Bytes := ("    let r000001db: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked411 : bytes411=statementBytes 475 (op411.map lower) ∧ bytes411.length=41 := by core033_kernel_decide
def op412 : List WordIR.Op := [.bnot 475]
def bytes412 : Bytes := ("    let r000001dc: u32 = !r000001db;\n" : String).toByteArray.data.toList
theorem checked412 : bytes412=statementBytes 476 (op412.map lower) ∧ bytes412.length=37 := by core033_kernel_decide
def op413 : List WordIR.Op := [.badd 474 476]
def bytes413 : Bytes := ("    let r000001dd: u32 = r000001da.wrapping_add(r000001dc);\n" : String).toByteArray.data.toList
theorem checked413 : bytes413=statementBytes 477 (op413.map lower) ∧ bytes413.length=60 := by core033_kernel_decide
def op414 : List WordIR.Op := [.bnot 477]
def bytes414 : Bytes := ("    let r000001de: u32 = !r000001dd;\n" : String).toByteArray.data.toList
theorem checked414 : bytes414=statementBytes 478 (op414.map lower) ∧ bytes414.length=37 := by core033_kernel_decide
def op415 : List WordIR.Op := [.band 473 478]
def bytes415 : Bytes := ("    let r000001df: u32 = r000001d9 & r000001de;\n" : String).toByteArray.data.toList
theorem checked415 : bytes415=statementBytes 479 (op415.map lower) ∧ bytes415.length=48 := by core033_kernel_decide
def op416 : List WordIR.Op := [.bxor 469 479]
def bytes416 : Bytes := ("    let r000001e0: u32 = r000001d5 ^ r000001df;\n" : String).toByteArray.data.toList
theorem checked416 : bytes416=statementBytes 480 (op416.map lower) ∧ bytes416.length=48 := by core033_kernel_decide
def op417 : List WordIR.Op := [.shr 480 31]
def bytes417 : Bytes := ("    let r000001e1: u32 = r000001e0 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked417 : bytes417=statementBytes 481 (op417.map lower) ∧ bytes417.length=54 := by core033_kernel_decide
def op418 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes418 : Bytes := ("    let r000001e2: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked418 : bytes418=statementBytes 482 (op418.map lower) ∧ bytes418.length=41 := by core033_kernel_decide
def op419 : List WordIR.Op := [.bxor 481 482]
def bytes419 : Bytes := ("    let r000001e3: u32 = r000001e1 ^ r000001e2;\n" : String).toByteArray.data.toList
theorem checked419 : bytes419=statementBytes 483 (op419.map lower) ∧ bytes419.length=48 := by core033_kernel_decide
def op420 : List WordIR.Op := [.shr 18 8]
def bytes420 : Bytes := ("    let r000001e4: u32 = r00000012 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked420 : bytes420=statementBytes 484 (op420.map lower) ∧ bytes420.length=54 := by core033_kernel_decide
def op421 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes421 : Bytes := ("    let r000001e5: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked421 : bytes421=statementBytes 485 (op421.map lower) ∧ bytes421.length=41 := by core033_kernel_decide
def op422 : List WordIR.Op := [.bnot 485]
def bytes422 : Bytes := ("    let r000001e6: u32 = !r000001e5;\n" : String).toByteArray.data.toList
theorem checked422 : bytes422=statementBytes 486 (op422.map lower) ∧ bytes422.length=37 := by core033_kernel_decide
def op423 : List WordIR.Op := [.band 484 486]
def bytes423 : Bytes := ("    let r000001e7: u32 = r000001e4 & r000001e6;\n" : String).toByteArray.data.toList
theorem checked423 : bytes423=statementBytes 487 (op423.map lower) ∧ bytes423.length=48 := by core033_kernel_decide
def op424 : List WordIR.Op := [.shr 18 8]
def bytes424 : Bytes := ("    let r000001e8: u32 = r00000012 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked424 : bytes424=statementBytes 488 (op424.map lower) ∧ bytes424.length=54 := by core033_kernel_decide
def op425 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes425 : Bytes := ("    let r000001e9: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked425 : bytes425=statementBytes 489 (op425.map lower) ∧ bytes425.length=41 := by core033_kernel_decide
def op426 : List WordIR.Op := [.bnot 489]
def bytes426 : Bytes := ("    let r000001ea: u32 = !r000001e9;\n" : String).toByteArray.data.toList
theorem checked426 : bytes426=statementBytes 490 (op426.map lower) ∧ bytes426.length=37 := by core033_kernel_decide
def op427 : List WordIR.Op := [.bxor 488 490]
def bytes427 : Bytes := ("    let r000001eb: u32 = r000001e8 ^ r000001ea;\n" : String).toByteArray.data.toList
theorem checked427 : bytes427=statementBytes 491 (op427.map lower) ∧ bytes427.length=48 := by core033_kernel_decide
def op428 : List WordIR.Op := [.shr 18 8]
def bytes428 : Bytes := ("    let r000001ec: u32 = r00000012 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked428 : bytes428=statementBytes 492 (op428.map lower) ∧ bytes428.length=54 := by core033_kernel_decide
def op429 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes429 : Bytes := ("    let r000001ed: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked429 : bytes429=statementBytes 493 (op429.map lower) ∧ bytes429.length=41 := by core033_kernel_decide
def op430 : List WordIR.Op := [.bnot 493]
def bytes430 : Bytes := ("    let r000001ee: u32 = !r000001ed;\n" : String).toByteArray.data.toList
theorem checked430 : bytes430=statementBytes 494 (op430.map lower) ∧ bytes430.length=37 := by core033_kernel_decide
def op431 : List WordIR.Op := [.badd 492 494]
def bytes431 : Bytes := ("    let r000001ef: u32 = r000001ec.wrapping_add(r000001ee);\n" : String).toByteArray.data.toList
theorem checked431 : bytes431=statementBytes 495 (op431.map lower) ∧ bytes431.length=60 := by core033_kernel_decide
def op432 : List WordIR.Op := [.bnot 495]
def bytes432 : Bytes := ("    let r000001f0: u32 = !r000001ef;\n" : String).toByteArray.data.toList
theorem checked432 : bytes432=statementBytes 496 (op432.map lower) ∧ bytes432.length=37 := by core033_kernel_decide
def op433 : List WordIR.Op := [.band 491 496]
def bytes433 : Bytes := ("    let r000001f1: u32 = r000001eb & r000001f0;\n" : String).toByteArray.data.toList
theorem checked433 : bytes433=statementBytes 497 (op433.map lower) ∧ bytes433.length=48 := by core033_kernel_decide
def op434 : List WordIR.Op := [.bxor 487 497]
def bytes434 : Bytes := ("    let r000001f2: u32 = r000001e7 ^ r000001f1;\n" : String).toByteArray.data.toList
theorem checked434 : bytes434=statementBytes 498 (op434.map lower) ∧ bytes434.length=48 := by core033_kernel_decide
def op435 : List WordIR.Op := [.shr 498 31]
def bytes435 : Bytes := ("    let r000001f3: u32 = r000001f2 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked435 : bytes435=statementBytes 499 (op435.map lower) ∧ bytes435.length=54 := by core033_kernel_decide
def op436 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes436 : Bytes := ("    let r000001f4: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked436 : bytes436=statementBytes 500 (op436.map lower) ∧ bytes436.length=41 := by core033_kernel_decide
def op437 : List WordIR.Op := [.bxor 499 500]
def bytes437 : Bytes := ("    let r000001f5: u32 = r000001f3 ^ r000001f4;\n" : String).toByteArray.data.toList
theorem checked437 : bytes437=statementBytes 501 (op437.map lower) ∧ bytes437.length=48 := by core033_kernel_decide
def op438 : List WordIR.Op := [.shr 19 8]
def bytes438 : Bytes := ("    let r000001f6: u32 = r00000013 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked438 : bytes438=statementBytes 502 (op438.map lower) ∧ bytes438.length=54 := by core033_kernel_decide
def op439 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes439 : Bytes := ("    let r000001f7: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked439 : bytes439=statementBytes 503 (op439.map lower) ∧ bytes439.length=41 := by core033_kernel_decide
def op440 : List WordIR.Op := [.bnot 503]
def bytes440 : Bytes := ("    let r000001f8: u32 = !r000001f7;\n" : String).toByteArray.data.toList
theorem checked440 : bytes440=statementBytes 504 (op440.map lower) ∧ bytes440.length=37 := by core033_kernel_decide
def op441 : List WordIR.Op := [.band 502 504]
def bytes441 : Bytes := ("    let r000001f9: u32 = r000001f6 & r000001f8;\n" : String).toByteArray.data.toList
theorem checked441 : bytes441=statementBytes 505 (op441.map lower) ∧ bytes441.length=48 := by core033_kernel_decide
def op442 : List WordIR.Op := [.shr 19 8]
def bytes442 : Bytes := ("    let r000001fa: u32 = r00000013 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked442 : bytes442=statementBytes 506 (op442.map lower) ∧ bytes442.length=54 := by core033_kernel_decide
def op443 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes443 : Bytes := ("    let r000001fb: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked443 : bytes443=statementBytes 507 (op443.map lower) ∧ bytes443.length=41 := by core033_kernel_decide
def op444 : List WordIR.Op := [.bnot 507]
def bytes444 : Bytes := ("    let r000001fc: u32 = !r000001fb;\n" : String).toByteArray.data.toList
theorem checked444 : bytes444=statementBytes 508 (op444.map lower) ∧ bytes444.length=37 := by core033_kernel_decide
def op445 : List WordIR.Op := [.bxor 506 508]
def bytes445 : Bytes := ("    let r000001fd: u32 = r000001fa ^ r000001fc;\n" : String).toByteArray.data.toList
theorem checked445 : bytes445=statementBytes 509 (op445.map lower) ∧ bytes445.length=48 := by core033_kernel_decide
def op446 : List WordIR.Op := [.shr 19 8]
def bytes446 : Bytes := ("    let r000001fe: u32 = r00000013 >> 0x00000008_u32;\n" : String).toByteArray.data.toList
theorem checked446 : bytes446=statementBytes 510 (op446.map lower) ∧ bytes446.length=54 := by core033_kernel_decide
def op447 : List WordIR.Op := [.literal (BitVec.ofNat 32 0)]
def bytes447 : Bytes := ("    let r000001ff: u32 = 0x00000000_u32;\n" : String).toByteArray.data.toList
theorem checked447 : bytes447=statementBytes 511 (op447.map lower) ∧ bytes447.length=41 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op384,op385,op386,op387,op388,op389,op390,op391,op392,op393,op394,op395,op396,op397,op398,op399,op400,op401,op402,op403,op404,op405,op406,op407,op408,op409,op410,op411,op412,op413,op414,op415,op416,op417,op418,op419,op420,op421,op422,op423,op424,op425,op426,op427,op428,op429,op430,op431,op432,op433,op434,op435,op436,op437,op438,op439,op440,op441,op442,op443,op444,op445,op446,op447]
def chunks : List Bytes := [bytes384,bytes385,bytes386,bytes387,bytes388,bytes389,bytes390,bytes391,bytes392,bytes393,bytes394,bytes395,bytes396,bytes397,bytes398,bytes399,bytes400,bytes401,bytes402,bytes403,bytes404,bytes405,bytes406,bytes407,bytes408,bytes409,bytes410,bytes411,bytes412,bytes413,bytes414,bytes415,bytes416,bytes417,bytes418,bytes419,bytes420,bytes421,bytes422,bytes423,bytes424,bytes425,bytes426,bytes427,bytes428,bytes429,bytes430,bytes431,bytes432,bytes433,bytes434,bytes435,bytes436,bytes437,bytes438,bytes439,bytes440,bytes441,bytes442,bytes443,bytes444,bytes445,bytes446,bytes447]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 448 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked384.1 (.cons _ _ _ _ _ checked385.1 (.cons _ _ _ _ _ checked386.1 (.cons _ _ _ _ _ checked387.1 (.cons _ _ _ _ _ checked388.1 (.cons _ _ _ _ _ checked389.1 (.cons _ _ _ _ _ checked390.1 (.cons _ _ _ _ _ checked391.1 (.cons _ _ _ _ _ checked392.1 (.cons _ _ _ _ _ checked393.1 (.cons _ _ _ _ _ checked394.1 (.cons _ _ _ _ _ checked395.1 (.cons _ _ _ _ _ checked396.1 (.cons _ _ _ _ _ checked397.1 (.cons _ _ _ _ _ checked398.1 (.cons _ _ _ _ _ checked399.1 (.cons _ _ _ _ _ checked400.1 (.cons _ _ _ _ _ checked401.1 (.cons _ _ _ _ _ checked402.1 (.cons _ _ _ _ _ checked403.1 (.cons _ _ _ _ _ checked404.1 (.cons _ _ _ _ _ checked405.1 (.cons _ _ _ _ _ checked406.1 (.cons _ _ _ _ _ checked407.1 (.cons _ _ _ _ _ checked408.1 (.cons _ _ _ _ _ checked409.1 (.cons _ _ _ _ _ checked410.1 (.cons _ _ _ _ _ checked411.1 (.cons _ _ _ _ _ checked412.1 (.cons _ _ _ _ _ checked413.1 (.cons _ _ _ _ _ checked414.1 (.cons _ _ _ _ _ checked415.1 (.cons _ _ _ _ _ checked416.1 (.cons _ _ _ _ _ checked417.1 (.cons _ _ _ _ _ checked418.1 (.cons _ _ _ _ _ checked419.1 (.cons _ _ _ _ _ checked420.1 (.cons _ _ _ _ _ checked421.1 (.cons _ _ _ _ _ checked422.1 (.cons _ _ _ _ _ checked423.1 (.cons _ _ _ _ _ checked424.1 (.cons _ _ _ _ _ checked425.1 (.cons _ _ _ _ _ checked426.1 (.cons _ _ _ _ _ checked427.1 (.cons _ _ _ _ _ checked428.1 (.cons _ _ _ _ _ checked429.1 (.cons _ _ _ _ _ checked430.1 (.cons _ _ _ _ _ checked431.1 (.cons _ _ _ _ _ checked432.1 (.cons _ _ _ _ _ checked433.1 (.cons _ _ _ _ _ checked434.1 (.cons _ _ _ _ _ checked435.1 (.cons _ _ _ _ _ checked436.1 (.cons _ _ _ _ _ checked437.1 (.cons _ _ _ _ _ checked438.1 (.cons _ _ _ _ _ checked439.1 (.cons _ _ _ _ _ checked440.1 (.cons _ _ _ _ _ checked441.1 (.cons _ _ _ _ _ checked442.1 (.cons _ _ _ _ _ checked443.1 (.cons _ _ _ _ _ checked444.1 (.cons _ _ _ _ _ checked445.1 (.cons _ _ _ _ _ checked446.1 (.cons _ _ _ _ _ checked447.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 448 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2939 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked384.2,checked385.2,checked386.2,checked387.2,checked388.2,checked389.2,checked390.2,checked391.2,checked392.2,checked393.2,checked394.2,checked395.2,checked396.2,checked397.2,checked398.2,checked399.2,checked400.2,checked401.2,checked402.2,checked403.2,checked404.2,checked405.2,checked406.2,checked407.2,checked408.2,checked409.2,checked410.2,checked411.2,checked412.2,checked413.2,checked414.2,checked415.2,checked416.2,checked417.2,checked418.2,checked419.2,checked420.2,checked421.2,checked422.2,checked423.2,checked424.2,checked425.2,checked426.2,checked427.2,checked428.2,checked429.2,checked430.2,checked431.2,checked432.2,checked433.2,checked434.2,checked435.2,checked436.2,checked437.2,checked438.2,checked439.2,checked440.2,checked441.2,checked442.2,checked443.2,checked444.2,checked445.2,checked446.2,checked447.2]
  decide
end ArtifactIngressGroup6
