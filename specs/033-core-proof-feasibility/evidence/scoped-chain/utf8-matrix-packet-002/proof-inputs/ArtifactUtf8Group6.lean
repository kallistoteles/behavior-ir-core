import ActualUtf8IR
import Core033.WordSourceBlocks
import Core033.KernelDecide
namespace ArtifactUtf8Group6
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def op384 : List WordIR.Op := [.shr 384 31]
def bytes384 : Bytes := ("    let r00000181: u32 = r00000180 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked384 : bytes384=statementBytes 385 (op384.map lower) ∧ bytes384.length=54 := by core033_kernel_decide
def op385 : List WordIR.Op := [.bnot 385]
def bytes385 : Bytes := ("    let r00000182: u32 = !r00000181;\n" : String).toByteArray.data.toList
theorem checked385 : bytes385=statementBytes 386 (op385.map lower) ∧ bytes385.length=37 := by core033_kernel_decide
def op386 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes386 : Bytes := ("    let r00000183: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked386 : bytes386=statementBytes 387 (op386.map lower) ∧ bytes386.length=41 := by core033_kernel_decide
def op387 : List WordIR.Op := [.badd 386 387]
def bytes387 : Bytes := ("    let r00000184: u32 = r00000182.wrapping_add(r00000183);\n" : String).toByteArray.data.toList
theorem checked387 : bytes387=statementBytes 388 (op387.map lower) ∧ bytes387.length=60 := by core033_kernel_decide
def op388 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes388 : Bytes := ("    let r00000185: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked388 : bytes388=statementBytes 389 (op388.map lower) ∧ bytes388.length=41 := by core033_kernel_decide
def op389 : List WordIR.Op := [.band 388 389]
def bytes389 : Bytes := ("    let r00000186: u32 = r00000184 & r00000185;\n" : String).toByteArray.data.toList
theorem checked389 : bytes389=statementBytes 390 (op389.map lower) ∧ bytes389.length=48 := by core033_kernel_decide
def op390 : List WordIR.Op := [.literal (BitVec.ofNat 32 128)]
def bytes390 : Bytes := ("    let r00000187: u32 = 0x00000080_u32;\n" : String).toByteArray.data.toList
theorem checked390 : bytes390=statementBytes 391 (op390.map lower) ∧ bytes390.length=41 := by core033_kernel_decide
def op391 : List WordIR.Op := [.bnot 0]
def bytes391 : Bytes := ("    let r00000188: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked391 : bytes391=statementBytes 392 (op391.map lower) ∧ bytes391.length=37 := by core033_kernel_decide
def op392 : List WordIR.Op := [.band 391 392]
def bytes392 : Bytes := ("    let r00000189: u32 = r00000187 & r00000188;\n" : String).toByteArray.data.toList
theorem checked392 : bytes392=statementBytes 393 (op392.map lower) ∧ bytes392.length=48 := by core033_kernel_decide
def op393 : List WordIR.Op := [.literal (BitVec.ofNat 32 128)]
def bytes393 : Bytes := ("    let r0000018a: u32 = 0x00000080_u32;\n" : String).toByteArray.data.toList
theorem checked393 : bytes393=statementBytes 394 (op393.map lower) ∧ bytes393.length=41 := by core033_kernel_decide
def op394 : List WordIR.Op := [.bnot 0]
def bytes394 : Bytes := ("    let r0000018b: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked394 : bytes394=statementBytes 395 (op394.map lower) ∧ bytes394.length=37 := by core033_kernel_decide
def op395 : List WordIR.Op := [.bxor 394 395]
def bytes395 : Bytes := ("    let r0000018c: u32 = r0000018a ^ r0000018b;\n" : String).toByteArray.data.toList
theorem checked395 : bytes395=statementBytes 396 (op395.map lower) ∧ bytes395.length=48 := by core033_kernel_decide
def op396 : List WordIR.Op := [.literal (BitVec.ofNat 32 128)]
def bytes396 : Bytes := ("    let r0000018d: u32 = 0x00000080_u32;\n" : String).toByteArray.data.toList
theorem checked396 : bytes396=statementBytes 397 (op396.map lower) ∧ bytes396.length=41 := by core033_kernel_decide
def op397 : List WordIR.Op := [.bnot 0]
def bytes397 : Bytes := ("    let r0000018e: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked397 : bytes397=statementBytes 398 (op397.map lower) ∧ bytes397.length=37 := by core033_kernel_decide
def op398 : List WordIR.Op := [.badd 397 398]
def bytes398 : Bytes := ("    let r0000018f: u32 = r0000018d.wrapping_add(r0000018e);\n" : String).toByteArray.data.toList
theorem checked398 : bytes398=statementBytes 399 (op398.map lower) ∧ bytes398.length=60 := by core033_kernel_decide
def op399 : List WordIR.Op := [.bnot 399]
def bytes399 : Bytes := ("    let r00000190: u32 = !r0000018f;\n" : String).toByteArray.data.toList
theorem checked399 : bytes399=statementBytes 400 (op399.map lower) ∧ bytes399.length=37 := by core033_kernel_decide
def op400 : List WordIR.Op := [.band 396 400]
def bytes400 : Bytes := ("    let r00000191: u32 = r0000018c & r00000190;\n" : String).toByteArray.data.toList
theorem checked400 : bytes400=statementBytes 401 (op400.map lower) ∧ bytes400.length=48 := by core033_kernel_decide
def op401 : List WordIR.Op := [.bxor 393 401]
def bytes401 : Bytes := ("    let r00000192: u32 = r00000189 ^ r00000191;\n" : String).toByteArray.data.toList
theorem checked401 : bytes401=statementBytes 402 (op401.map lower) ∧ bytes401.length=48 := by core033_kernel_decide
def op402 : List WordIR.Op := [.shr 402 31]
def bytes402 : Bytes := ("    let r00000193: u32 = r00000192 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked402 : bytes402=statementBytes 403 (op402.map lower) ∧ bytes402.length=54 := by core033_kernel_decide
def op403 : List WordIR.Op := [.bnot 403]
def bytes403 : Bytes := ("    let r00000194: u32 = !r00000193;\n" : String).toByteArray.data.toList
theorem checked403 : bytes403=statementBytes 404 (op403.map lower) ∧ bytes403.length=37 := by core033_kernel_decide
def op404 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes404 : Bytes := ("    let r00000195: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked404 : bytes404=statementBytes 405 (op404.map lower) ∧ bytes404.length=41 := by core033_kernel_decide
def op405 : List WordIR.Op := [.badd 404 405]
def bytes405 : Bytes := ("    let r00000196: u32 = r00000194.wrapping_add(r00000195);\n" : String).toByteArray.data.toList
theorem checked405 : bytes405=statementBytes 406 (op405.map lower) ∧ bytes405.length=60 := by core033_kernel_decide
def op406 : List WordIR.Op := [.bnot 406]
def bytes406 : Bytes := ("    let r00000197: u32 = !r00000196;\n" : String).toByteArray.data.toList
theorem checked406 : bytes406=statementBytes 407 (op406.map lower) ∧ bytes406.length=37 := by core033_kernel_decide
def op407 : List WordIR.Op := [.literal (BitVec.ofNat 32 2048)]
def bytes407 : Bytes := ("    let r00000198: u32 = 0x00000800_u32;\n" : String).toByteArray.data.toList
theorem checked407 : bytes407=statementBytes 408 (op407.map lower) ∧ bytes407.length=41 := by core033_kernel_decide
def op408 : List WordIR.Op := [.bnot 0]
def bytes408 : Bytes := ("    let r00000199: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked408 : bytes408=statementBytes 409 (op408.map lower) ∧ bytes408.length=37 := by core033_kernel_decide
def op409 : List WordIR.Op := [.band 408 409]
def bytes409 : Bytes := ("    let r0000019a: u32 = r00000198 & r00000199;\n" : String).toByteArray.data.toList
theorem checked409 : bytes409=statementBytes 410 (op409.map lower) ∧ bytes409.length=48 := by core033_kernel_decide
def op410 : List WordIR.Op := [.literal (BitVec.ofNat 32 2048)]
def bytes410 : Bytes := ("    let r0000019b: u32 = 0x00000800_u32;\n" : String).toByteArray.data.toList
theorem checked410 : bytes410=statementBytes 411 (op410.map lower) ∧ bytes410.length=41 := by core033_kernel_decide
def op411 : List WordIR.Op := [.bnot 0]
def bytes411 : Bytes := ("    let r0000019c: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked411 : bytes411=statementBytes 412 (op411.map lower) ∧ bytes411.length=37 := by core033_kernel_decide
def op412 : List WordIR.Op := [.bxor 411 412]
def bytes412 : Bytes := ("    let r0000019d: u32 = r0000019b ^ r0000019c;\n" : String).toByteArray.data.toList
theorem checked412 : bytes412=statementBytes 413 (op412.map lower) ∧ bytes412.length=48 := by core033_kernel_decide
def op413 : List WordIR.Op := [.literal (BitVec.ofNat 32 2048)]
def bytes413 : Bytes := ("    let r0000019e: u32 = 0x00000800_u32;\n" : String).toByteArray.data.toList
theorem checked413 : bytes413=statementBytes 414 (op413.map lower) ∧ bytes413.length=41 := by core033_kernel_decide
def op414 : List WordIR.Op := [.bnot 0]
def bytes414 : Bytes := ("    let r0000019f: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked414 : bytes414=statementBytes 415 (op414.map lower) ∧ bytes414.length=37 := by core033_kernel_decide
def op415 : List WordIR.Op := [.badd 414 415]
def bytes415 : Bytes := ("    let r000001a0: u32 = r0000019e.wrapping_add(r0000019f);\n" : String).toByteArray.data.toList
theorem checked415 : bytes415=statementBytes 416 (op415.map lower) ∧ bytes415.length=60 := by core033_kernel_decide
def op416 : List WordIR.Op := [.bnot 416]
def bytes416 : Bytes := ("    let r000001a1: u32 = !r000001a0;\n" : String).toByteArray.data.toList
theorem checked416 : bytes416=statementBytes 417 (op416.map lower) ∧ bytes416.length=37 := by core033_kernel_decide
def op417 : List WordIR.Op := [.band 413 417]
def bytes417 : Bytes := ("    let r000001a2: u32 = r0000019d & r000001a1;\n" : String).toByteArray.data.toList
theorem checked417 : bytes417=statementBytes 418 (op417.map lower) ∧ bytes417.length=48 := by core033_kernel_decide
def op418 : List WordIR.Op := [.bxor 410 418]
def bytes418 : Bytes := ("    let r000001a3: u32 = r0000019a ^ r000001a2;\n" : String).toByteArray.data.toList
theorem checked418 : bytes418=statementBytes 419 (op418.map lower) ∧ bytes418.length=48 := by core033_kernel_decide
def op419 : List WordIR.Op := [.shr 419 31]
def bytes419 : Bytes := ("    let r000001a4: u32 = r000001a3 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked419 : bytes419=statementBytes 420 (op419.map lower) ∧ bytes419.length=54 := by core033_kernel_decide
def op420 : List WordIR.Op := [.bnot 420]
def bytes420 : Bytes := ("    let r000001a5: u32 = !r000001a4;\n" : String).toByteArray.data.toList
theorem checked420 : bytes420=statementBytes 421 (op420.map lower) ∧ bytes420.length=37 := by core033_kernel_decide
def op421 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes421 : Bytes := ("    let r000001a6: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked421 : bytes421=statementBytes 422 (op421.map lower) ∧ bytes421.length=41 := by core033_kernel_decide
def op422 : List WordIR.Op := [.badd 421 422]
def bytes422 : Bytes := ("    let r000001a7: u32 = r000001a5.wrapping_add(r000001a6);\n" : String).toByteArray.data.toList
theorem checked422 : bytes422=statementBytes 423 (op422.map lower) ∧ bytes422.length=60 := by core033_kernel_decide
def op423 : List WordIR.Op := [.literal (BitVec.ofNat 32 2)]
def bytes423 : Bytes := ("    let r000001a8: u32 = 0x00000002_u32;\n" : String).toByteArray.data.toList
theorem checked423 : bytes423=statementBytes 424 (op423.map lower) ∧ bytes423.length=41 := by core033_kernel_decide
def op424 : List WordIR.Op := [.band 423 424]
def bytes424 : Bytes := ("    let r000001a9: u32 = r000001a7 & r000001a8;\n" : String).toByteArray.data.toList
theorem checked424 : bytes424=statementBytes 425 (op424.map lower) ∧ bytes424.length=48 := by core033_kernel_decide
def op425 : List WordIR.Op := [.literal (BitVec.ofNat 32 2048)]
def bytes425 : Bytes := ("    let r000001aa: u32 = 0x00000800_u32;\n" : String).toByteArray.data.toList
theorem checked425 : bytes425=statementBytes 426 (op425.map lower) ∧ bytes425.length=41 := by core033_kernel_decide
def op426 : List WordIR.Op := [.bnot 0]
def bytes426 : Bytes := ("    let r000001ab: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked426 : bytes426=statementBytes 427 (op426.map lower) ∧ bytes426.length=37 := by core033_kernel_decide
def op427 : List WordIR.Op := [.band 426 427]
def bytes427 : Bytes := ("    let r000001ac: u32 = r000001aa & r000001ab;\n" : String).toByteArray.data.toList
theorem checked427 : bytes427=statementBytes 428 (op427.map lower) ∧ bytes427.length=48 := by core033_kernel_decide
def op428 : List WordIR.Op := [.literal (BitVec.ofNat 32 2048)]
def bytes428 : Bytes := ("    let r000001ad: u32 = 0x00000800_u32;\n" : String).toByteArray.data.toList
theorem checked428 : bytes428=statementBytes 429 (op428.map lower) ∧ bytes428.length=41 := by core033_kernel_decide
def op429 : List WordIR.Op := [.bnot 0]
def bytes429 : Bytes := ("    let r000001ae: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked429 : bytes429=statementBytes 430 (op429.map lower) ∧ bytes429.length=37 := by core033_kernel_decide
def op430 : List WordIR.Op := [.bxor 429 430]
def bytes430 : Bytes := ("    let r000001af: u32 = r000001ad ^ r000001ae;\n" : String).toByteArray.data.toList
theorem checked430 : bytes430=statementBytes 431 (op430.map lower) ∧ bytes430.length=48 := by core033_kernel_decide
def op431 : List WordIR.Op := [.literal (BitVec.ofNat 32 2048)]
def bytes431 : Bytes := ("    let r000001b0: u32 = 0x00000800_u32;\n" : String).toByteArray.data.toList
theorem checked431 : bytes431=statementBytes 432 (op431.map lower) ∧ bytes431.length=41 := by core033_kernel_decide
def op432 : List WordIR.Op := [.bnot 0]
def bytes432 : Bytes := ("    let r000001b1: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked432 : bytes432=statementBytes 433 (op432.map lower) ∧ bytes432.length=37 := by core033_kernel_decide
def op433 : List WordIR.Op := [.badd 432 433]
def bytes433 : Bytes := ("    let r000001b2: u32 = r000001b0.wrapping_add(r000001b1);\n" : String).toByteArray.data.toList
theorem checked433 : bytes433=statementBytes 434 (op433.map lower) ∧ bytes433.length=60 := by core033_kernel_decide
def op434 : List WordIR.Op := [.bnot 434]
def bytes434 : Bytes := ("    let r000001b3: u32 = !r000001b2;\n" : String).toByteArray.data.toList
theorem checked434 : bytes434=statementBytes 435 (op434.map lower) ∧ bytes434.length=37 := by core033_kernel_decide
def op435 : List WordIR.Op := [.band 431 435]
def bytes435 : Bytes := ("    let r000001b4: u32 = r000001af & r000001b3;\n" : String).toByteArray.data.toList
theorem checked435 : bytes435=statementBytes 436 (op435.map lower) ∧ bytes435.length=48 := by core033_kernel_decide
def op436 : List WordIR.Op := [.bxor 428 436]
def bytes436 : Bytes := ("    let r000001b5: u32 = r000001ac ^ r000001b4;\n" : String).toByteArray.data.toList
theorem checked436 : bytes436=statementBytes 437 (op436.map lower) ∧ bytes436.length=48 := by core033_kernel_decide
def op437 : List WordIR.Op := [.shr 437 31]
def bytes437 : Bytes := ("    let r000001b6: u32 = r000001b5 >> 0x0000001f_u32;\n" : String).toByteArray.data.toList
theorem checked437 : bytes437=statementBytes 438 (op437.map lower) ∧ bytes437.length=54 := by core033_kernel_decide
def op438 : List WordIR.Op := [.bnot 438]
def bytes438 : Bytes := ("    let r000001b7: u32 = !r000001b6;\n" : String).toByteArray.data.toList
theorem checked438 : bytes438=statementBytes 439 (op438.map lower) ∧ bytes438.length=37 := by core033_kernel_decide
def op439 : List WordIR.Op := [.literal (BitVec.ofNat 32 1)]
def bytes439 : Bytes := ("    let r000001b8: u32 = 0x00000001_u32;\n" : String).toByteArray.data.toList
theorem checked439 : bytes439=statementBytes 440 (op439.map lower) ∧ bytes439.length=41 := by core033_kernel_decide
def op440 : List WordIR.Op := [.badd 439 440]
def bytes440 : Bytes := ("    let r000001b9: u32 = r000001b7.wrapping_add(r000001b8);\n" : String).toByteArray.data.toList
theorem checked440 : bytes440=statementBytes 441 (op440.map lower) ∧ bytes440.length=60 := by core033_kernel_decide
def op441 : List WordIR.Op := [.bnot 441]
def bytes441 : Bytes := ("    let r000001ba: u32 = !r000001b9;\n" : String).toByteArray.data.toList
theorem checked441 : bytes441=statementBytes 442 (op441.map lower) ∧ bytes441.length=37 := by core033_kernel_decide
def op442 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes442 : Bytes := ("    let r000001bb: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked442 : bytes442=statementBytes 443 (op442.map lower) ∧ bytes442.length=41 := by core033_kernel_decide
def op443 : List WordIR.Op := [.bnot 0]
def bytes443 : Bytes := ("    let r000001bc: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked443 : bytes443=statementBytes 444 (op443.map lower) ∧ bytes443.length=37 := by core033_kernel_decide
def op444 : List WordIR.Op := [.band 443 444]
def bytes444 : Bytes := ("    let r000001bd: u32 = r000001bb & r000001bc;\n" : String).toByteArray.data.toList
theorem checked444 : bytes444=statementBytes 445 (op444.map lower) ∧ bytes444.length=48 := by core033_kernel_decide
def op445 : List WordIR.Op := [.literal (BitVec.ofNat 32 65536)]
def bytes445 : Bytes := ("    let r000001be: u32 = 0x00010000_u32;\n" : String).toByteArray.data.toList
theorem checked445 : bytes445=statementBytes 446 (op445.map lower) ∧ bytes445.length=41 := by core033_kernel_decide
def op446 : List WordIR.Op := [.bnot 0]
def bytes446 : Bytes := ("    let r000001bf: u32 = !r00000000;\n" : String).toByteArray.data.toList
theorem checked446 : bytes446=statementBytes 447 (op446.map lower) ∧ bytes446.length=37 := by core033_kernel_decide
def op447 : List WordIR.Op := [.bxor 446 447]
def bytes447 : Bytes := ("    let r000001c0: u32 = r000001be ^ r000001bf;\n" : String).toByteArray.data.toList
theorem checked447 : bytes447=statementBytes 448 (op447.map lower) ∧ bytes447.length=48 := by core033_kernel_decide
def blocks : List (List WordIR.Op) := [op384,op385,op386,op387,op388,op389,op390,op391,op392,op393,op394,op395,op396,op397,op398,op399,op400,op401,op402,op403,op404,op405,op406,op407,op408,op409,op410,op411,op412,op413,op414,op415,op416,op417,op418,op419,op420,op421,op422,op423,op424,op425,op426,op427,op428,op429,op430,op431,op432,op433,op434,op435,op436,op437,op438,op439,op440,op441,op442,op443,op444,op445,op446,op447]
def chunks : List Bytes := [bytes384,bytes385,bytes386,bytes387,bytes388,bytes389,bytes390,bytes391,bytes392,bytes393,bytes394,bytes395,bytes396,bytes397,bytes398,bytes399,bytes400,bytes401,bytes402,bytes403,bytes404,bytes405,bytes406,bytes407,bytes408,bytes409,bytes410,bytes411,bytes412,bytes413,bytes414,bytes415,bytes416,bytes417,bytes418,bytes419,bytes420,bytes421,bytes422,bytes423,bytes424,bytes425,bytes426,bytes427,bytes428,bytes429,bytes430,bytes431,bytes432,bytes433,bytes434,bytes435,bytes436,bytes437,bytes438,bytes439,bytes440,bytes441,bytes442,bytes443,bytes444,bytes445,bytes446,bytes447]
def partOps : List WordIR.Op := blocks.flatten
def partBytes : Bytes := chunks.flatten
theorem partChain : BlockChain 385 blocks chunks := by
  unfold blocks chunks
  exact (.cons _ _ _ _ _ checked384.1 (.cons _ _ _ _ _ checked385.1 (.cons _ _ _ _ _ checked386.1 (.cons _ _ _ _ _ checked387.1 (.cons _ _ _ _ _ checked388.1 (.cons _ _ _ _ _ checked389.1 (.cons _ _ _ _ _ checked390.1 (.cons _ _ _ _ _ checked391.1 (.cons _ _ _ _ _ checked392.1 (.cons _ _ _ _ _ checked393.1 (.cons _ _ _ _ _ checked394.1 (.cons _ _ _ _ _ checked395.1 (.cons _ _ _ _ _ checked396.1 (.cons _ _ _ _ _ checked397.1 (.cons _ _ _ _ _ checked398.1 (.cons _ _ _ _ _ checked399.1 (.cons _ _ _ _ _ checked400.1 (.cons _ _ _ _ _ checked401.1 (.cons _ _ _ _ _ checked402.1 (.cons _ _ _ _ _ checked403.1 (.cons _ _ _ _ _ checked404.1 (.cons _ _ _ _ _ checked405.1 (.cons _ _ _ _ _ checked406.1 (.cons _ _ _ _ _ checked407.1 (.cons _ _ _ _ _ checked408.1 (.cons _ _ _ _ _ checked409.1 (.cons _ _ _ _ _ checked410.1 (.cons _ _ _ _ _ checked411.1 (.cons _ _ _ _ _ checked412.1 (.cons _ _ _ _ _ checked413.1 (.cons _ _ _ _ _ checked414.1 (.cons _ _ _ _ _ checked415.1 (.cons _ _ _ _ _ checked416.1 (.cons _ _ _ _ _ checked417.1 (.cons _ _ _ _ _ checked418.1 (.cons _ _ _ _ _ checked419.1 (.cons _ _ _ _ _ checked420.1 (.cons _ _ _ _ _ checked421.1 (.cons _ _ _ _ _ checked422.1 (.cons _ _ _ _ _ checked423.1 (.cons _ _ _ _ _ checked424.1 (.cons _ _ _ _ _ checked425.1 (.cons _ _ _ _ _ checked426.1 (.cons _ _ _ _ _ checked427.1 (.cons _ _ _ _ _ checked428.1 (.cons _ _ _ _ _ checked429.1 (.cons _ _ _ _ _ checked430.1 (.cons _ _ _ _ _ checked431.1 (.cons _ _ _ _ _ checked432.1 (.cons _ _ _ _ _ checked433.1 (.cons _ _ _ _ _ checked434.1 (.cons _ _ _ _ _ checked435.1 (.cons _ _ _ _ _ checked436.1 (.cons _ _ _ _ _ checked437.1 (.cons _ _ _ _ _ checked438.1 (.cons _ _ _ _ _ checked439.1 (.cons _ _ _ _ _ checked440.1 (.cons _ _ _ _ _ checked441.1 (.cons _ _ _ _ _ checked442.1 (.cons _ _ _ _ _ checked443.1 (.cons _ _ _ _ _ checked444.1 (.cons _ _ _ _ _ checked445.1 (.cons _ _ _ _ _ checked446.1 (.cons _ _ _ _ _ checked447.1 (.empty _)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem partChecked : partBytes=statementBytes 385 (partOps.map lower) := by
  rw [partBytes,chain_exact partChain,body_exact];rfl
theorem partLength : partOps.length=64 := rfl
theorem partSize : partBytes.length=2841 := by
  simp only [partBytes,WordSource.chunk_sizes_exact,chunks,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,checked384.2,checked385.2,checked386.2,checked387.2,checked388.2,checked389.2,checked390.2,checked391.2,checked392.2,checked393.2,checked394.2,checked395.2,checked396.2,checked397.2,checked398.2,checked399.2,checked400.2,checked401.2,checked402.2,checked403.2,checked404.2,checked405.2,checked406.2,checked407.2,checked408.2,checked409.2,checked410.2,checked411.2,checked412.2,checked413.2,checked414.2,checked415.2,checked416.2,checked417.2,checked418.2,checked419.2,checked420.2,checked421.2,checked422.2,checked423.2,checked424.2,checked425.2,checked426.2,checked427.2,checked428.2,checked429.2,checked430.2,checked431.2,checked432.2,checked433.2,checked434.2,checked435.2,checked436.2,checked437.2,checked438.2,checked439.2,checked440.2,checked441.2,checked442.2,checked443.2,checked444.2,checked445.2,checked446.2,checked447.2]
  decide
end ArtifactUtf8Group6
