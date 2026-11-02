import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData8
import ActualMatrixData9
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows536 : actualRows536=WordField.canonicalRows actualModulus 536 (.badd 535 452) := by core033_kernel_decide
theorem stats536 : actualRows536.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows536=5388 := by core033_kernel_decide
theorem rows537 : actualRows537=WordField.canonicalRows actualModulus 537 (.rotr 348 7) := by core033_kernel_decide
theorem stats537 : actualRows537.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows537=5124 := by core033_kernel_decide
theorem rows538 : actualRows538=WordField.canonicalRows actualModulus 538 (.rotr 348 18) := by core033_kernel_decide
theorem stats538 : actualRows538.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows538=5124 := by core033_kernel_decide
theorem rows539 : actualRows539=WordField.canonicalRows actualModulus 539 (.bxor 537 538) := by core033_kernel_decide
theorem stats539 : actualRows539.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows539=7428 := by core033_kernel_decide
theorem rows540 : actualRows540=WordField.canonicalRows actualModulus 540 (.shr 348 3) := by core033_kernel_decide
theorem stats540 : actualRows540.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows540=4908 := by core033_kernel_decide
theorem rows541 : actualRows541=WordField.canonicalRows actualModulus 541 (.bxor 539 540) := by core033_kernel_decide
theorem stats541 : actualRows541.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows541=7428 := by core033_kernel_decide
theorem rows542 : actualRows542=WordField.canonicalRows actualModulus 542 (.badd 536 541) := by core033_kernel_decide
theorem stats542 : actualRows542.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows542=5388 := by core033_kernel_decide
theorem rows543 : actualRows543=WordField.canonicalRows actualModulus 543 (.badd 542 335) := by core033_kernel_decide
theorem stats543 : actualRows543.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows543=5388 := by core033_kernel_decide
theorem rows544 : actualRows544=WordField.canonicalRows actualModulus 544 (.rotr 530 17) := by core033_kernel_decide
theorem stats544 : actualRows544.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows544=5124 := by core033_kernel_decide
theorem rows545 : actualRows545=WordField.canonicalRows actualModulus 545 (.rotr 530 19) := by core033_kernel_decide
theorem stats545 : actualRows545.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows545=5124 := by core033_kernel_decide
theorem rows546 : actualRows546=WordField.canonicalRows actualModulus 546 (.bxor 544 545) := by core033_kernel_decide
theorem stats546 : actualRows546.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows546=7428 := by core033_kernel_decide
theorem rows547 : actualRows547=WordField.canonicalRows actualModulus 547 (.shr 530 10) := by core033_kernel_decide
theorem stats547 : actualRows547.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows547=4404 := by core033_kernel_decide
theorem rows548 : actualRows548=WordField.canonicalRows actualModulus 548 (.bxor 546 547) := by core033_kernel_decide
theorem stats548 : actualRows548.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows548=7428 := by core033_kernel_decide
theorem rows549 : actualRows549=WordField.canonicalRows actualModulus 549 (.badd 548 465) := by core033_kernel_decide
theorem stats549 : actualRows549.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows549=5388 := by core033_kernel_decide
theorem rows550 : actualRows550=WordField.canonicalRows actualModulus 550 (.rotr 361 7) := by core033_kernel_decide
theorem stats550 : actualRows550.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows550=5124 := by core033_kernel_decide
theorem rows551 : actualRows551=WordField.canonicalRows actualModulus 551 (.rotr 361 18) := by core033_kernel_decide
theorem stats551 : actualRows551.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows551=5124 := by core033_kernel_decide
theorem rows552 : actualRows552=WordField.canonicalRows actualModulus 552 (.bxor 550 551) := by core033_kernel_decide
theorem stats552 : actualRows552.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows552=7428 := by core033_kernel_decide
theorem rows553 : actualRows553=WordField.canonicalRows actualModulus 553 (.shr 361 3) := by core033_kernel_decide
theorem stats553 : actualRows553.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows553=4908 := by core033_kernel_decide
theorem rows554 : actualRows554=WordField.canonicalRows actualModulus 554 (.bxor 552 553) := by core033_kernel_decide
theorem stats554 : actualRows554.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows554=7428 := by core033_kernel_decide
theorem rows555 : actualRows555=WordField.canonicalRows actualModulus 555 (.badd 549 554) := by core033_kernel_decide
theorem stats555 : actualRows555.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows555=5388 := by core033_kernel_decide
theorem rows556 : actualRows556=WordField.canonicalRows actualModulus 556 (.badd 555 348) := by core033_kernel_decide
theorem stats556 : actualRows556.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows556=5388 := by core033_kernel_decide
theorem rows557 : actualRows557=WordField.canonicalRows actualModulus 557 (.rotr 543 17) := by core033_kernel_decide
theorem stats557 : actualRows557.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows557=5124 := by core033_kernel_decide
theorem rows558 : actualRows558=WordField.canonicalRows actualModulus 558 (.rotr 543 19) := by core033_kernel_decide
theorem stats558 : actualRows558.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows558=5124 := by core033_kernel_decide
theorem rows559 : actualRows559=WordField.canonicalRows actualModulus 559 (.bxor 557 558) := by core033_kernel_decide
theorem stats559 : actualRows559.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows559=7428 := by core033_kernel_decide
theorem rows560 : actualRows560=WordField.canonicalRows actualModulus 560 (.shr 543 10) := by core033_kernel_decide
theorem stats560 : actualRows560.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows560=4404 := by core033_kernel_decide
theorem rows561 : actualRows561=WordField.canonicalRows actualModulus 561 (.bxor 559 560) := by core033_kernel_decide
theorem stats561 : actualRows561.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows561=7428 := by core033_kernel_decide
theorem rows562 : actualRows562=WordField.canonicalRows actualModulus 562 (.badd 561 478) := by core033_kernel_decide
theorem stats562 : actualRows562.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows562=5388 := by core033_kernel_decide
theorem rows563 : actualRows563=WordField.canonicalRows actualModulus 563 (.rotr 374 7) := by core033_kernel_decide
theorem stats563 : actualRows563.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows563=5124 := by core033_kernel_decide
theorem rows564 : actualRows564=WordField.canonicalRows actualModulus 564 (.rotr 374 18) := by core033_kernel_decide
theorem stats564 : actualRows564.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows564=5124 := by core033_kernel_decide
theorem rows565 : actualRows565=WordField.canonicalRows actualModulus 565 (.bxor 563 564) := by core033_kernel_decide
theorem stats565 : actualRows565.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows565=7428 := by core033_kernel_decide
theorem rows566 : actualRows566=WordField.canonicalRows actualModulus 566 (.shr 374 3) := by core033_kernel_decide
theorem stats566 : actualRows566.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows566=4908 := by core033_kernel_decide
theorem rows567 : actualRows567=WordField.canonicalRows actualModulus 567 (.bxor 565 566) := by core033_kernel_decide
theorem stats567 : actualRows567.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows567=7428 := by core033_kernel_decide
theorem rows568 : actualRows568=WordField.canonicalRows actualModulus 568 (.badd 562 567) := by core033_kernel_decide
theorem stats568 : actualRows568.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows568=5388 := by core033_kernel_decide
theorem rows569 : actualRows569=WordField.canonicalRows actualModulus 569 (.badd 568 361) := by core033_kernel_decide
theorem stats569 : actualRows569.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows569=5388 := by core033_kernel_decide
theorem rows570 : actualRows570=WordField.canonicalRows actualModulus 570 (.rotr 556 17) := by core033_kernel_decide
theorem stats570 : actualRows570.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows570=5124 := by core033_kernel_decide
theorem rows571 : actualRows571=WordField.canonicalRows actualModulus 571 (.rotr 556 19) := by core033_kernel_decide
theorem stats571 : actualRows571.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows571=5124 := by core033_kernel_decide
theorem rows572 : actualRows572=WordField.canonicalRows actualModulus 572 (.bxor 570 571) := by core033_kernel_decide
theorem stats572 : actualRows572.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows572=7428 := by core033_kernel_decide
theorem rows573 : actualRows573=WordField.canonicalRows actualModulus 573 (.shr 556 10) := by core033_kernel_decide
theorem stats573 : actualRows573.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows573=4404 := by core033_kernel_decide
theorem rows574 : actualRows574=WordField.canonicalRows actualModulus 574 (.bxor 572 573) := by core033_kernel_decide
theorem stats574 : actualRows574.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows574=7428 := by core033_kernel_decide
theorem rows575 : actualRows575=WordField.canonicalRows actualModulus 575 (.badd 574 491) := by core033_kernel_decide
theorem stats575 : actualRows575.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows575=5388 := by core033_kernel_decide
theorem rows576 : actualRows576=WordField.canonicalRows actualModulus 576 (.rotr 387 7) := by core033_kernel_decide
theorem stats576 : actualRows576.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows576=5124 := by core033_kernel_decide
theorem rows577 : actualRows577=WordField.canonicalRows actualModulus 577 (.rotr 387 18) := by core033_kernel_decide
theorem stats577 : actualRows577.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows577=5124 := by core033_kernel_decide
theorem rows578 : actualRows578=WordField.canonicalRows actualModulus 578 (.bxor 576 577) := by core033_kernel_decide
theorem stats578 : actualRows578.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows578=7428 := by core033_kernel_decide
theorem rows579 : actualRows579=WordField.canonicalRows actualModulus 579 (.shr 387 3) := by core033_kernel_decide
theorem stats579 : actualRows579.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows579=4908 := by core033_kernel_decide
theorem rows580 : actualRows580=WordField.canonicalRows actualModulus 580 (.bxor 578 579) := by core033_kernel_decide
theorem stats580 : actualRows580.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows580=7428 := by core033_kernel_decide
theorem rows581 : actualRows581=WordField.canonicalRows actualModulus 581 (.badd 575 580) := by core033_kernel_decide
theorem stats581 : actualRows581.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows581=5388 := by core033_kernel_decide
theorem rows582 : actualRows582=WordField.canonicalRows actualModulus 582 (.badd 581 374) := by core033_kernel_decide
theorem stats582 : actualRows582.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows582=5388 := by core033_kernel_decide
theorem rows583 : actualRows583=WordField.canonicalRows actualModulus 583 (.rotr 569 17) := by core033_kernel_decide
theorem stats583 : actualRows583.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows583=5124 := by core033_kernel_decide
theorem rows584 : actualRows584=WordField.canonicalRows actualModulus 584 (.rotr 569 19) := by core033_kernel_decide
theorem stats584 : actualRows584.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows584=5124 := by core033_kernel_decide
theorem rows585 : actualRows585=WordField.canonicalRows actualModulus 585 (.bxor 583 584) := by core033_kernel_decide
theorem stats585 : actualRows585.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows585=7428 := by core033_kernel_decide
theorem rows586 : actualRows586=WordField.canonicalRows actualModulus 586 (.shr 569 10) := by core033_kernel_decide
theorem stats586 : actualRows586.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows586=4404 := by core033_kernel_decide
theorem rows587 : actualRows587=WordField.canonicalRows actualModulus 587 (.bxor 585 586) := by core033_kernel_decide
theorem stats587 : actualRows587.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows587=7428 := by core033_kernel_decide
theorem rows588 : actualRows588=WordField.canonicalRows actualModulus 588 (.badd 587 504) := by core033_kernel_decide
theorem stats588 : actualRows588.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows588=5388 := by core033_kernel_decide
theorem rows589 : actualRows589=WordField.canonicalRows actualModulus 589 (.rotr 400 7) := by core033_kernel_decide
theorem stats589 : actualRows589.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows589=5124 := by core033_kernel_decide
theorem rows590 : actualRows590=WordField.canonicalRows actualModulus 590 (.rotr 400 18) := by core033_kernel_decide
theorem stats590 : actualRows590.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows590=5124 := by core033_kernel_decide
theorem rows591 : actualRows591=WordField.canonicalRows actualModulus 591 (.bxor 589 590) := by core033_kernel_decide
theorem stats591 : actualRows591.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows591=7428 := by core033_kernel_decide
theorem rows592 : actualRows592=WordField.canonicalRows actualModulus 592 (.shr 400 3) := by core033_kernel_decide
theorem stats592 : actualRows592.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows592=4908 := by core033_kernel_decide
theorem rows593 : actualRows593=WordField.canonicalRows actualModulus 593 (.bxor 591 592) := by core033_kernel_decide
theorem stats593 : actualRows593.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows593=7428 := by core033_kernel_decide
theorem rows594 : actualRows594=WordField.canonicalRows actualModulus 594 (.badd 588 593) := by core033_kernel_decide
theorem stats594 : actualRows594.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows594=5388 := by core033_kernel_decide
theorem rows595 : actualRows595=WordField.canonicalRows actualModulus 595 (.badd 594 387) := by core033_kernel_decide
theorem stats595 : actualRows595.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows595=5388 := by core033_kernel_decide
theorem rows596 : actualRows596=WordField.canonicalRows actualModulus 596 (.rotr 582 17) := by core033_kernel_decide
theorem stats596 : actualRows596.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows596=5124 := by core033_kernel_decide
theorem rows597 : actualRows597=WordField.canonicalRows actualModulus 597 (.rotr 582 19) := by core033_kernel_decide
theorem stats597 : actualRows597.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows597=5124 := by core033_kernel_decide
theorem rows598 : actualRows598=WordField.canonicalRows actualModulus 598 (.bxor 596 597) := by core033_kernel_decide
theorem stats598 : actualRows598.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows598=7428 := by core033_kernel_decide
theorem rows599 : actualRows599=WordField.canonicalRows actualModulus 599 (.shr 582 10) := by core033_kernel_decide
theorem stats599 : actualRows599.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows599=4404 := by core033_kernel_decide
def partRows8 : List R1CS.Row := actualRows536++actualRows537++actualRows538++actualRows539++actualRows540++actualRows541++actualRows542++actualRows543++actualRows544++actualRows545++actualRows546++actualRows547++actualRows548++actualRows549++actualRows550++actualRows551++actualRows552++actualRows553++actualRows554++actualRows555++actualRows556++actualRows557++actualRows558++actualRows559++actualRows560++actualRows561++actualRows562++actualRows563++actualRows564++actualRows565++actualRows566++actualRows567++actualRows568++actualRows569++actualRows570++actualRows571++actualRows572++actualRows573++actualRows574++actualRows575++actualRows576++actualRows577++actualRows578++actualRows579++actualRows580++actualRows581++actualRows582++actualRows583++actualRows584++actualRows585++actualRows586++actualRows587++actualRows588++actualRows589++actualRows590++actualRows591++actualRows592++actualRows593++actualRows594++actualRows595++actualRows596++actualRows597++actualRows598++actualRows599
def partOps8 : List WordIR.Op := [.badd 535 452,.rotr 348 7,.rotr 348 18,.bxor 537 538,.shr 348 3,.bxor 539 540,.badd 536 541,.badd 542 335,.rotr 530 17,.rotr 530 19,.bxor 544 545,.shr 530 10,.bxor 546 547,.badd 548 465,.rotr 361 7,.rotr 361 18,.bxor 550 551,.shr 361 3,.bxor 552 553,.badd 549 554,.badd 555 348,.rotr 543 17,.rotr 543 19,.bxor 557 558,.shr 543 10,.bxor 559 560,.badd 561 478,.rotr 374 7,.rotr 374 18,.bxor 563 564,.shr 374 3,.bxor 565 566,.badd 562 567,.badd 568 361,.rotr 556 17,.rotr 556 19,.bxor 570 571,.shr 556 10,.bxor 572 573,.badd 574 491,.rotr 387 7,.rotr 387 18,.bxor 576 577,.shr 387 3,.bxor 578 579,.badd 575 580,.badd 581 374,.rotr 569 17,.rotr 569 19,.bxor 583 584,.shr 569 10,.bxor 585 586,.badd 587 504,.rotr 400 7,.rotr 400 18,.bxor 589 590,.shr 400 3,.bxor 591 592,.badd 588 593,.badd 594 387,.rotr 582 17,.rotr 582 19,.bxor 596 597,.shr 582 10]
theorem partRowsExact8 : partRows8=WordField.rows actualModulus 536 partOps8 := by
  simp only [partRows8,partOps8,WordField.rows,rows536,rows537,rows538,rows539,rows540,rows541,rows542,rows543,rows544,rows545,rows546,rows547,rows548,rows549,rows550,rows551,rows552,rows553,rows554,rows555,rows556,rows557,rows558,rows559,rows560,rows561,rows562,rows563,rows564,rows565,rows566,rows567,rows568,rows569,rows570,rows571,rows572,rows573,rows574,rows575,rows576,rows577,rows578,rows579,rows580,rows581,rows582,rows583,rows584,rows585,rows586,rows587,rows588,rows589,rows590,rows591,rows592,rows593,rows594,rows595,rows596,rows597,rows598,rows599,List.append_assoc,List.append_nil]
theorem partOpsLength8 : partOps8.length=64 := by decide
theorem partStats8 : partRows8.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows8=370992 := by
  simp only [partRows8,List.length_append,MatrixRowBlocks.rows_weight_append,stats536.1,stats536.2,stats537.1,stats537.2,stats538.1,stats538.2,stats539.1,stats539.2,stats540.1,stats540.2,stats541.1,stats541.2,stats542.1,stats542.2,stats543.1,stats543.2,stats544.1,stats544.2,stats545.1,stats545.2,stats546.1,stats546.2,stats547.1,stats547.2,stats548.1,stats548.2,stats549.1,stats549.2,stats550.1,stats550.2,stats551.1,stats551.2,stats552.1,stats552.2,stats553.1,stats553.2,stats554.1,stats554.2,stats555.1,stats555.2,stats556.1,stats556.2,stats557.1,stats557.2,stats558.1,stats558.2,stats559.1,stats559.2,stats560.1,stats560.2,stats561.1,stats561.2,stats562.1,stats562.2,stats563.1,stats563.2,stats564.1,stats564.2,stats565.1,stats565.2,stats566.1,stats566.2,stats567.1,stats567.2,stats568.1,stats568.2,stats569.1,stats569.2,stats570.1,stats570.2,stats571.1,stats571.2,stats572.1,stats572.2,stats573.1,stats573.2,stats574.1,stats574.2,stats575.1,stats575.2,stats576.1,stats576.2,stats577.1,stats577.2,stats578.1,stats578.2,stats579.1,stats579.2,stats580.1,stats580.2,stats581.1,stats581.2,stats582.1,stats582.2,stats583.1,stats583.2,stats584.1,stats584.2,stats585.1,stats585.2,stats586.1,stats586.2,stats587.1,stats587.2,stats588.1,stats588.2,stats589.1,stats589.2,stats590.1,stats590.2,stats591.1,stats591.2,stats592.1,stats592.2,stats593.1,stats593.2,stats594.1,stats594.2,stats595.1,stats595.2,stats596.1,stats596.2,stats597.1,stats597.2,stats598.1,stats598.2,stats599.1,stats599.2]
  decide
end ActualSHAMatrixRows
