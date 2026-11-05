import SharedFrameProgram
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import SharedFrameInstructionMatrixData9
import SharedFrameInstructionMatrixData10
namespace SharedFrameCheckedRows
open Core033 SharedFrameInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows619 : actualRows619=WordField.canonicalRows actualModulus 619 (.band 616 618) := by core033_kernel_decide
theorem stats619 : actualRows619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows619=5124 := by core033_kernel_decide
theorem rows620 : actualRows620=WordField.canonicalRows actualModulus 620 (.bxor 615 619) := by core033_kernel_decide
theorem stats620 : actualRows620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows620=7428 := by core033_kernel_decide
theorem rows621 : actualRows621=WordField.canonicalRows actualModulus 621 (.shr 620 31) := by core033_kernel_decide
theorem stats621 : actualRows621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows621=2892 := by core033_kernel_decide
theorem rows622 : actualRows622=WordField.canonicalRows actualModulus 622 (.bxor 621 43) := by core033_kernel_decide
theorem stats622 : actualRows622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows622=7428 := by core033_kernel_decide
theorem rows623 : actualRows623=WordField.canonicalRows actualModulus 623 (.bxor 284 284) := by core033_kernel_decide
theorem stats623 : actualRows623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows623=6276 := by core033_kernel_decide
theorem rows624 : actualRows624=WordField.canonicalRows actualModulus 624 (.band 623 50) := by core033_kernel_decide
theorem stats624 : actualRows624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows624=5124 := by core033_kernel_decide
theorem rows625 : actualRows625=WordField.canonicalRows actualModulus 625 (.bxor 623 50) := by core033_kernel_decide
theorem stats625 : actualRows625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows625=7428 := by core033_kernel_decide
theorem rows626 : actualRows626=WordField.canonicalRows actualModulus 626 (.badd 623 50) := by core033_kernel_decide
theorem stats626 : actualRows626.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows626=5388 := by core033_kernel_decide
theorem rows627 : actualRows627=WordField.canonicalRows actualModulus 627 (.bnot 626) := by core033_kernel_decide
theorem stats627 : actualRows627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows627=6276 := by core033_kernel_decide
theorem rows628 : actualRows628=WordField.canonicalRows actualModulus 628 (.band 625 627) := by core033_kernel_decide
theorem stats628 : actualRows628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows628=5124 := by core033_kernel_decide
theorem rows629 : actualRows629=WordField.canonicalRows actualModulus 629 (.bxor 624 628) := by core033_kernel_decide
theorem stats629 : actualRows629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows629=7428 := by core033_kernel_decide
theorem rows630 : actualRows630=WordField.canonicalRows actualModulus 630 (.shr 629 31) := by core033_kernel_decide
theorem stats630 : actualRows630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows630=2892 := by core033_kernel_decide
theorem rows631 : actualRows631=WordField.canonicalRows actualModulus 631 (.bxor 630 43) := by core033_kernel_decide
theorem stats631 : actualRows631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows631=7428 := by core033_kernel_decide
theorem rows632 : actualRows632=WordField.canonicalRows actualModulus 632 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats632 : actualRows632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows632=2892 := by core033_kernel_decide
theorem rows633 : actualRows633=WordField.canonicalRows actualModulus 633 (.bxor 0 632) := by core033_kernel_decide
theorem stats633 : actualRows633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows633=7428 := by core033_kernel_decide
theorem rows634 : actualRows634=WordField.canonicalRows actualModulus 634 (.band 633 50) := by core033_kernel_decide
theorem stats634 : actualRows634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows634=5124 := by core033_kernel_decide
theorem rows635 : actualRows635=WordField.canonicalRows actualModulus 635 (.bxor 633 50) := by core033_kernel_decide
theorem stats635 : actualRows635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows635=7428 := by core033_kernel_decide
theorem rows636 : actualRows636=WordField.canonicalRows actualModulus 636 (.badd 633 50) := by core033_kernel_decide
theorem stats636 : actualRows636.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows636=5388 := by core033_kernel_decide
theorem rows637 : actualRows637=WordField.canonicalRows actualModulus 637 (.bnot 636) := by core033_kernel_decide
theorem stats637 : actualRows637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows637=6276 := by core033_kernel_decide
theorem rows638 : actualRows638=WordField.canonicalRows actualModulus 638 (.band 635 637) := by core033_kernel_decide
theorem stats638 : actualRows638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows638=5124 := by core033_kernel_decide
theorem rows639 : actualRows639=WordField.canonicalRows actualModulus 639 (.bxor 634 638) := by core033_kernel_decide
theorem stats639 : actualRows639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows639=7428 := by core033_kernel_decide
theorem rows640 : actualRows640=WordField.canonicalRows actualModulus 640 (.shr 639 31) := by core033_kernel_decide
theorem stats640 : actualRows640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows640=2892 := by core033_kernel_decide
theorem rows641 : actualRows641=WordField.canonicalRows actualModulus 641 (.bxor 640 43) := by core033_kernel_decide
theorem stats641 : actualRows641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows641=7428 := by core033_kernel_decide
theorem rows642 : actualRows642=WordField.canonicalRows actualModulus 642 (.bnot 641) := by core033_kernel_decide
theorem stats642 : actualRows642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows642=6276 := by core033_kernel_decide
theorem rows643 : actualRows643=WordField.canonicalRows actualModulus 643 (.badd 642 43) := by core033_kernel_decide
theorem stats643 : actualRows643.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows643=5388 := by core033_kernel_decide
theorem rows644 : actualRows644=WordField.canonicalRows actualModulus 644 (.band 643 35) := by core033_kernel_decide
theorem stats644 : actualRows644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows644=5124 := by core033_kernel_decide
theorem rows645 : actualRows645=WordField.canonicalRows actualModulus 645 (.bnot 643) := by core033_kernel_decide
theorem stats645 : actualRows645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows645=6276 := by core033_kernel_decide
theorem rows646 : actualRows646=WordField.canonicalRows actualModulus 646 (.literal (BitVec.ofNat 32 1779033703)) := by core033_kernel_decide
theorem stats646 : actualRows646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows646=3972 := by core033_kernel_decide
theorem rows647 : actualRows647=WordField.canonicalRows actualModulus 647 (.band 645 646) := by core033_kernel_decide
theorem stats647 : actualRows647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows647=5124 := by core033_kernel_decide
theorem rows648 : actualRows648=WordField.canonicalRows actualModulus 648 (.bxor 644 647) := by core033_kernel_decide
theorem stats648 : actualRows648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows648=7428 := by core033_kernel_decide
theorem rows649 : actualRows649=WordField.canonicalRows actualModulus 649 (.band 643 36) := by core033_kernel_decide
theorem stats649 : actualRows649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows649=5124 := by core033_kernel_decide
theorem rows650 : actualRows650=WordField.canonicalRows actualModulus 650 (.literal (BitVec.ofNat 32 3144134277)) := by core033_kernel_decide
theorem stats650 : actualRows650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows650=4188 := by core033_kernel_decide
theorem rows651 : actualRows651=WordField.canonicalRows actualModulus 651 (.band 645 650) := by core033_kernel_decide
theorem stats651 : actualRows651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows651=5124 := by core033_kernel_decide
theorem rows652 : actualRows652=WordField.canonicalRows actualModulus 652 (.bxor 649 651) := by core033_kernel_decide
theorem stats652 : actualRows652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows652=7428 := by core033_kernel_decide
theorem rows653 : actualRows653=WordField.canonicalRows actualModulus 653 (.band 643 37) := by core033_kernel_decide
theorem stats653 : actualRows653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows653=5124 := by core033_kernel_decide
theorem rows654 : actualRows654=WordField.canonicalRows actualModulus 654 (.literal (BitVec.ofNat 32 1013904242)) := by core033_kernel_decide
theorem stats654 : actualRows654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows654=4188 := by core033_kernel_decide
theorem rows655 : actualRows655=WordField.canonicalRows actualModulus 655 (.band 645 654) := by core033_kernel_decide
theorem stats655 : actualRows655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows655=5124 := by core033_kernel_decide
theorem rows656 : actualRows656=WordField.canonicalRows actualModulus 656 (.bxor 653 655) := by core033_kernel_decide
theorem stats656 : actualRows656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows656=7428 := by core033_kernel_decide
theorem rows657 : actualRows657=WordField.canonicalRows actualModulus 657 (.band 643 38) := by core033_kernel_decide
theorem stats657 : actualRows657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows657=5124 := by core033_kernel_decide
theorem rows658 : actualRows658=WordField.canonicalRows actualModulus 658 (.literal (BitVec.ofNat 32 2773480762)) := by core033_kernel_decide
theorem stats658 : actualRows658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows658=4188 := by core033_kernel_decide
theorem rows659 : actualRows659=WordField.canonicalRows actualModulus 659 (.band 645 658) := by core033_kernel_decide
theorem stats659 : actualRows659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows659=5124 := by core033_kernel_decide
theorem rows660 : actualRows660=WordField.canonicalRows actualModulus 660 (.bxor 657 659) := by core033_kernel_decide
theorem stats660 : actualRows660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows660=7428 := by core033_kernel_decide
theorem rows661 : actualRows661=WordField.canonicalRows actualModulus 661 (.band 643 39) := by core033_kernel_decide
theorem stats661 : actualRows661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows661=5124 := by core033_kernel_decide
theorem rows662 : actualRows662=WordField.canonicalRows actualModulus 662 (.literal (BitVec.ofNat 32 1359893119)) := by core033_kernel_decide
theorem stats662 : actualRows662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows662=3972 := by core033_kernel_decide
theorem rows663 : actualRows663=WordField.canonicalRows actualModulus 663 (.band 645 662) := by core033_kernel_decide
theorem stats663 : actualRows663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows663=5124 := by core033_kernel_decide
theorem rows664 : actualRows664=WordField.canonicalRows actualModulus 664 (.bxor 661 663) := by core033_kernel_decide
theorem stats664 : actualRows664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows664=7428 := by core033_kernel_decide
theorem rows665 : actualRows665=WordField.canonicalRows actualModulus 665 (.band 643 40) := by core033_kernel_decide
theorem stats665 : actualRows665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows665=5124 := by core033_kernel_decide
theorem rows666 : actualRows666=WordField.canonicalRows actualModulus 666 (.literal (BitVec.ofNat 32 2600822924)) := by core033_kernel_decide
theorem stats666 : actualRows666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows666=3756 := by core033_kernel_decide
theorem rows667 : actualRows667=WordField.canonicalRows actualModulus 667 (.band 645 666) := by core033_kernel_decide
theorem stats667 : actualRows667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows667=5124 := by core033_kernel_decide
theorem rows668 : actualRows668=WordField.canonicalRows actualModulus 668 (.bxor 665 667) := by core033_kernel_decide
theorem stats668 : actualRows668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows668=7428 := by core033_kernel_decide
theorem rows669 : actualRows669=WordField.canonicalRows actualModulus 669 (.band 643 41) := by core033_kernel_decide
theorem stats669 : actualRows669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows669=5124 := by core033_kernel_decide
theorem rows670 : actualRows670=WordField.canonicalRows actualModulus 670 (.literal (BitVec.ofNat 32 528734635)) := by core033_kernel_decide
theorem stats670 : actualRows670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows670=4116 := by core033_kernel_decide
theorem rows671 : actualRows671=WordField.canonicalRows actualModulus 671 (.band 645 670) := by core033_kernel_decide
theorem stats671 : actualRows671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows671=5124 := by core033_kernel_decide
theorem rows672 : actualRows672=WordField.canonicalRows actualModulus 672 (.bxor 669 671) := by core033_kernel_decide
theorem stats672 : actualRows672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows672=7428 := by core033_kernel_decide
theorem rows673 : actualRows673=WordField.canonicalRows actualModulus 673 (.band 643 42) := by core033_kernel_decide
theorem stats673 : actualRows673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows673=5124 := by core033_kernel_decide
theorem rows674 : actualRows674=WordField.canonicalRows actualModulus 674 (.literal (BitVec.ofNat 32 1541459225)) := by core033_kernel_decide
theorem stats674 : actualRows674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows674=3972 := by core033_kernel_decide
theorem rows675 : actualRows675=WordField.canonicalRows actualModulus 675 (.band 645 674) := by core033_kernel_decide
theorem stats675 : actualRows675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows675=5124 := by core033_kernel_decide
theorem rows676 : actualRows676=WordField.canonicalRows actualModulus 676 (.bxor 673 675) := by core033_kernel_decide
theorem stats676 : actualRows676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows676=7428 := by core033_kernel_decide
theorem rows677 : actualRows677=WordField.canonicalRows actualModulus 677 (.band 643 478) := by core033_kernel_decide
theorem stats677 : actualRows677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows677=5124 := by core033_kernel_decide
theorem rows678 : actualRows678=WordField.canonicalRows actualModulus 678 (.band 645 378) := by core033_kernel_decide
theorem stats678 : actualRows678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows678=5124 := by core033_kernel_decide
theorem rows679 : actualRows679=WordField.canonicalRows actualModulus 679 (.bxor 677 678) := by core033_kernel_decide
theorem stats679 : actualRows679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows679=7428 := by core033_kernel_decide
theorem rows680 : actualRows680=WordField.canonicalRows actualModulus 680 (.band 643 480) := by core033_kernel_decide
theorem stats680 : actualRows680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows680=5124 := by core033_kernel_decide
theorem rows681 : actualRows681=WordField.canonicalRows actualModulus 681 (.band 645 379) := by core033_kernel_decide
theorem stats681 : actualRows681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows681=5124 := by core033_kernel_decide
theorem rows682 : actualRows682=WordField.canonicalRows actualModulus 682 (.bxor 680 681) := by core033_kernel_decide
theorem stats682 : actualRows682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows682=7428 := by core033_kernel_decide
def partRows9 : List R1CS.Row := actualRows619++actualRows620++actualRows621++actualRows622++actualRows623++actualRows624++actualRows625++actualRows626++actualRows627++actualRows628++actualRows629++actualRows630++actualRows631++actualRows632++actualRows633++actualRows634++actualRows635++actualRows636++actualRows637++actualRows638++actualRows639++actualRows640++actualRows641++actualRows642++actualRows643++actualRows644++actualRows645++actualRows646++actualRows647++actualRows648++actualRows649++actualRows650++actualRows651++actualRows652++actualRows653++actualRows654++actualRows655++actualRows656++actualRows657++actualRows658++actualRows659++actualRows660++actualRows661++actualRows662++actualRows663++actualRows664++actualRows665++actualRows666++actualRows667++actualRows668++actualRows669++actualRows670++actualRows671++actualRows672++actualRows673++actualRows674++actualRows675++actualRows676++actualRows677++actualRows678++actualRows679++actualRows680++actualRows681++actualRows682
def partOps9 : List WordIR.Op := [.band 616 618,.bxor 615 619,.shr 620 31,.bxor 621 43,.bxor 284 284,.band 623 50,.bxor 623 50,.badd 623 50,.bnot 626,.band 625 627,.bxor 624 628,.shr 629 31,.bxor 630 43,.literal (BitVec.ofNat 32 2),.bxor 0 632,.band 633 50,.bxor 633 50,.badd 633 50,.bnot 636,.band 635 637,.bxor 634 638,.shr 639 31,.bxor 640 43,.bnot 641,.badd 642 43,.band 643 35,.bnot 643,.literal (BitVec.ofNat 32 1779033703),.band 645 646,.bxor 644 647,.band 643 36,.literal (BitVec.ofNat 32 3144134277),.band 645 650,.bxor 649 651,.band 643 37,.literal (BitVec.ofNat 32 1013904242),.band 645 654,.bxor 653 655,.band 643 38,.literal (BitVec.ofNat 32 2773480762),.band 645 658,.bxor 657 659,.band 643 39,.literal (BitVec.ofNat 32 1359893119),.band 645 662,.bxor 661 663,.band 643 40,.literal (BitVec.ofNat 32 2600822924),.band 645 666,.bxor 665 667,.band 643 41,.literal (BitVec.ofNat 32 528734635),.band 645 670,.bxor 669 671,.band 643 42,.literal (BitVec.ofNat 32 1541459225),.band 645 674,.bxor 673 675,.band 643 478,.band 645 378,.bxor 677 678,.band 643 480,.band 645 379,.bxor 680 681]
theorem partExact9 : partRows9=WordField.rows actualModulus 619 partOps9 := by
  simp only [partRows9,partOps9,WordField.rows,rows619,rows620,rows621,rows622,rows623,rows624,rows625,rows626,rows627,rows628,rows629,rows630,rows631,rows632,rows633,rows634,rows635,rows636,rows637,rows638,rows639,rows640,rows641,rows642,rows643,rows644,rows645,rows646,rows647,rows648,rows649,rows650,rows651,rows652,rows653,rows654,rows655,rows656,rows657,rows658,rows659,rows660,rows661,rows662,rows663,rows664,rows665,rows666,rows667,rows668,rows669,rows670,rows671,rows672,rows673,rows674,rows675,rows676,rows677,rows678,rows679,rows680,rows681,rows682,List.append_assoc,List.append_nil]
theorem partLength9 : partOps9.length=64 := by decide
theorem partStats9 : partRows9.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows9=360696 := by
  simp only [partRows9,List.length_append,MatrixRowBlocks.rows_weight_append,stats619.1,stats619.2,stats620.1,stats620.2,stats621.1,stats621.2,stats622.1,stats622.2,stats623.1,stats623.2,stats624.1,stats624.2,stats625.1,stats625.2,stats626.1,stats626.2,stats627.1,stats627.2,stats628.1,stats628.2,stats629.1,stats629.2,stats630.1,stats630.2,stats631.1,stats631.2,stats632.1,stats632.2,stats633.1,stats633.2,stats634.1,stats634.2,stats635.1,stats635.2,stats636.1,stats636.2,stats637.1,stats637.2,stats638.1,stats638.2,stats639.1,stats639.2,stats640.1,stats640.2,stats641.1,stats641.2,stats642.1,stats642.2,stats643.1,stats643.2,stats644.1,stats644.2,stats645.1,stats645.2,stats646.1,stats646.2,stats647.1,stats647.2,stats648.1,stats648.2,stats649.1,stats649.2,stats650.1,stats650.2,stats651.1,stats651.2,stats652.1,stats652.2,stats653.1,stats653.2,stats654.1,stats654.2,stats655.1,stats655.2,stats656.1,stats656.2,stats657.1,stats657.2,stats658.1,stats658.2,stats659.1,stats659.2,stats660.1,stats660.2,stats661.1,stats661.2,stats662.1,stats662.2,stats663.1,stats663.2,stats664.1,stats664.2,stats665.1,stats665.2,stats666.1,stats666.2,stats667.1,stats667.2,stats668.1,stats668.2,stats669.1,stats669.2,stats670.1,stats670.2,stats671.1,stats671.2,stats672.1,stats672.2,stats673.1,stats673.2,stats674.1,stats674.2,stats675.1,stats675.2,stats676.1,stats676.2,stats677.1,stats677.2,stats678.1,stats678.2,stats679.1,stats679.2,stats680.1,stats680.2,stats681.1,stats681.2,stats682.1,stats682.2]
  decide
end SharedFrameCheckedRows
