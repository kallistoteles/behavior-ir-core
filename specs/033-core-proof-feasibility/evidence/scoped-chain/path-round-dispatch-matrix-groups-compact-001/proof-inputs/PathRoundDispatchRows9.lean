import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData9
import PathRoundDispatchInstructionMatrixData10
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows619 : actualRows619=WordField.canonicalRows actualModulus 619 (.bnot 563) := by core033_kernel_decide
theorem stats619 : actualRows619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows619=6276 := by core033_kernel_decide
theorem rows620 : actualRows620=WordField.canonicalRows actualModulus 620 (.literal (BitVec.ofNat 32 31)) := by core033_kernel_decide
theorem stats620 : actualRows620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows620=3180 := by core033_kernel_decide
theorem rows621 : actualRows621=WordField.canonicalRows actualModulus 621 (.band 619 620) := by core033_kernel_decide
theorem stats621 : actualRows621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows621=5124 := by core033_kernel_decide
theorem rows622 : actualRows622=WordField.canonicalRows actualModulus 622 (.shr 563 8) := by core033_kernel_decide
theorem stats622 : actualRows622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows622=4548 := by core033_kernel_decide
theorem rows623 : actualRows623=WordField.canonicalRows actualModulus 623 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats623 : actualRows623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows623=2820 := by core033_kernel_decide
theorem rows624 : actualRows624=WordField.canonicalRows actualModulus 624 (.bnot 623) := by core033_kernel_decide
theorem stats624 : actualRows624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows624=6276 := by core033_kernel_decide
theorem rows625 : actualRows625=WordField.canonicalRows actualModulus 625 (.band 622 624) := by core033_kernel_decide
theorem stats625 : actualRows625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows625=5124 := by core033_kernel_decide
theorem rows626 : actualRows626=WordField.canonicalRows actualModulus 626 (.shr 563 8) := by core033_kernel_decide
theorem stats626 : actualRows626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows626=4548 := by core033_kernel_decide
theorem rows627 : actualRows627=WordField.canonicalRows actualModulus 627 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats627 : actualRows627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows627=2820 := by core033_kernel_decide
theorem rows628 : actualRows628=WordField.canonicalRows actualModulus 628 (.bnot 627) := by core033_kernel_decide
theorem stats628 : actualRows628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows628=6276 := by core033_kernel_decide
theorem rows629 : actualRows629=WordField.canonicalRows actualModulus 629 (.bxor 626 628) := by core033_kernel_decide
theorem stats629 : actualRows629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows629=7428 := by core033_kernel_decide
theorem rows630 : actualRows630=WordField.canonicalRows actualModulus 630 (.shr 563 8) := by core033_kernel_decide
theorem stats630 : actualRows630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows630=4548 := by core033_kernel_decide
theorem rows631 : actualRows631=WordField.canonicalRows actualModulus 631 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats631 : actualRows631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows631=2820 := by core033_kernel_decide
theorem rows632 : actualRows632=WordField.canonicalRows actualModulus 632 (.bnot 631) := by core033_kernel_decide
theorem stats632 : actualRows632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows632=6276 := by core033_kernel_decide
theorem rows633 : actualRows633=WordField.canonicalRows actualModulus 633 (.badd 630 632) := by core033_kernel_decide
theorem stats633 : actualRows633.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows633=5388 := by core033_kernel_decide
theorem rows634 : actualRows634=WordField.canonicalRows actualModulus 634 (.bnot 633) := by core033_kernel_decide
theorem stats634 : actualRows634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows634=6276 := by core033_kernel_decide
theorem rows635 : actualRows635=WordField.canonicalRows actualModulus 635 (.band 629 634) := by core033_kernel_decide
theorem stats635 : actualRows635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows635=5124 := by core033_kernel_decide
theorem rows636 : actualRows636=WordField.canonicalRows actualModulus 636 (.bxor 625 635) := by core033_kernel_decide
theorem stats636 : actualRows636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows636=7428 := by core033_kernel_decide
theorem rows637 : actualRows637=WordField.canonicalRows actualModulus 637 (.shr 636 31) := by core033_kernel_decide
theorem stats637 : actualRows637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows637=2892 := by core033_kernel_decide
theorem rows638 : actualRows638=WordField.canonicalRows actualModulus 638 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats638 : actualRows638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows638=2892 := by core033_kernel_decide
theorem rows639 : actualRows639=WordField.canonicalRows actualModulus 639 (.bxor 637 638) := by core033_kernel_decide
theorem stats639 : actualRows639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows639=7428 := by core033_kernel_decide
theorem rows640 : actualRows640=WordField.canonicalRows actualModulus 640 (.shr 618 2) := by core033_kernel_decide
theorem stats640 : actualRows640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows640=4980 := by core033_kernel_decide
theorem rows641 : actualRows641=WordField.canonicalRows actualModulus 641 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats641 : actualRows641.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows641=2892 := by core033_kernel_decide
theorem rows642 : actualRows642=WordField.canonicalRows actualModulus 642 (.band 640 641) := by core033_kernel_decide
theorem stats642 : actualRows642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows642=5124 := by core033_kernel_decide
theorem rows643 : actualRows643=WordField.canonicalRows actualModulus 643 (.bnot 642) := by core033_kernel_decide
theorem stats643 : actualRows643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows643=6276 := by core033_kernel_decide
theorem rows644 : actualRows644=WordField.canonicalRows actualModulus 644 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats644 : actualRows644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows644=2892 := by core033_kernel_decide
theorem rows645 : actualRows645=WordField.canonicalRows actualModulus 645 (.badd 643 644) := by core033_kernel_decide
theorem stats645 : actualRows645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows645=5388 := by core033_kernel_decide
theorem rows646 : actualRows646=WordField.canonicalRows actualModulus 646 (.shr 618 1) := by core033_kernel_decide
theorem stats646 : actualRows646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows646=5052 := by core033_kernel_decide
theorem rows647 : actualRows647=WordField.canonicalRows actualModulus 647 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats647 : actualRows647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows647=2892 := by core033_kernel_decide
theorem rows648 : actualRows648=WordField.canonicalRows actualModulus 648 (.band 646 647) := by core033_kernel_decide
theorem stats648 : actualRows648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows648=5124 := by core033_kernel_decide
theorem rows649 : actualRows649=WordField.canonicalRows actualModulus 649 (.bnot 648) := by core033_kernel_decide
theorem stats649 : actualRows649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows649=6276 := by core033_kernel_decide
theorem rows650 : actualRows650=WordField.canonicalRows actualModulus 650 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats650 : actualRows650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows650=2892 := by core033_kernel_decide
theorem rows651 : actualRows651=WordField.canonicalRows actualModulus 651 (.badd 649 650) := by core033_kernel_decide
theorem stats651 : actualRows651.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows651=5388 := by core033_kernel_decide
theorem rows652 : actualRows652=WordField.canonicalRows actualModulus 652 (.shr 618 0) := by core033_kernel_decide
theorem stats652 : actualRows652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows652=5124 := by core033_kernel_decide
theorem rows653 : actualRows653=WordField.canonicalRows actualModulus 653 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats653 : actualRows653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows653=2892 := by core033_kernel_decide
theorem rows654 : actualRows654=WordField.canonicalRows actualModulus 654 (.band 652 653) := by core033_kernel_decide
theorem stats654 : actualRows654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows654=5124 := by core033_kernel_decide
theorem rows655 : actualRows655=WordField.canonicalRows actualModulus 655 (.bnot 654) := by core033_kernel_decide
theorem stats655 : actualRows655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows655=6276 := by core033_kernel_decide
theorem rows656 : actualRows656=WordField.canonicalRows actualModulus 656 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats656 : actualRows656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows656=2892 := by core033_kernel_decide
theorem rows657 : actualRows657=WordField.canonicalRows actualModulus 657 (.badd 655 656) := by core033_kernel_decide
theorem stats657 : actualRows657.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows657=5388 := by core033_kernel_decide
theorem rows658 : actualRows658=WordField.canonicalRows actualModulus 658 (.band 657 206) := by core033_kernel_decide
theorem stats658 : actualRows658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows658=5124 := by core033_kernel_decide
theorem rows659 : actualRows659=WordField.canonicalRows actualModulus 659 (.shr 618 0) := by core033_kernel_decide
theorem stats659 : actualRows659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows659=5124 := by core033_kernel_decide
theorem rows660 : actualRows660=WordField.canonicalRows actualModulus 660 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats660 : actualRows660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows660=2892 := by core033_kernel_decide
theorem rows661 : actualRows661=WordField.canonicalRows actualModulus 661 (.band 659 660) := by core033_kernel_decide
theorem stats661 : actualRows661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows661=5124 := by core033_kernel_decide
theorem rows662 : actualRows662=WordField.canonicalRows actualModulus 662 (.bnot 661) := by core033_kernel_decide
theorem stats662 : actualRows662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows662=6276 := by core033_kernel_decide
theorem rows663 : actualRows663=WordField.canonicalRows actualModulus 663 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats663 : actualRows663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows663=2892 := by core033_kernel_decide
theorem rows664 : actualRows664=WordField.canonicalRows actualModulus 664 (.badd 662 663) := by core033_kernel_decide
theorem stats664 : actualRows664.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows664=5388 := by core033_kernel_decide
theorem rows665 : actualRows665=WordField.canonicalRows actualModulus 665 (.bnot 664) := by core033_kernel_decide
theorem stats665 : actualRows665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows665=6276 := by core033_kernel_decide
theorem rows666 : actualRows666=WordField.canonicalRows actualModulus 666 (.band 665 195) := by core033_kernel_decide
theorem stats666 : actualRows666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows666=5124 := by core033_kernel_decide
theorem rows667 : actualRows667=WordField.canonicalRows actualModulus 667 (.bxor 658 666) := by core033_kernel_decide
theorem stats667 : actualRows667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows667=7428 := by core033_kernel_decide
theorem rows668 : actualRows668=WordField.canonicalRows actualModulus 668 (.band 651 667) := by core033_kernel_decide
theorem stats668 : actualRows668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows668=5124 := by core033_kernel_decide
theorem rows669 : actualRows669=WordField.canonicalRows actualModulus 669 (.shr 618 1) := by core033_kernel_decide
theorem stats669 : actualRows669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows669=5052 := by core033_kernel_decide
theorem rows670 : actualRows670=WordField.canonicalRows actualModulus 670 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats670 : actualRows670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows670=2892 := by core033_kernel_decide
theorem rows671 : actualRows671=WordField.canonicalRows actualModulus 671 (.band 669 670) := by core033_kernel_decide
theorem stats671 : actualRows671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows671=5124 := by core033_kernel_decide
theorem rows672 : actualRows672=WordField.canonicalRows actualModulus 672 (.bnot 671) := by core033_kernel_decide
theorem stats672 : actualRows672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows672=6276 := by core033_kernel_decide
theorem rows673 : actualRows673=WordField.canonicalRows actualModulus 673 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats673 : actualRows673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows673=2892 := by core033_kernel_decide
theorem rows674 : actualRows674=WordField.canonicalRows actualModulus 674 (.badd 672 673) := by core033_kernel_decide
theorem stats674 : actualRows674.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows674=5388 := by core033_kernel_decide
theorem rows675 : actualRows675=WordField.canonicalRows actualModulus 675 (.bnot 674) := by core033_kernel_decide
theorem stats675 : actualRows675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows675=6276 := by core033_kernel_decide
theorem rows676 : actualRows676=WordField.canonicalRows actualModulus 676 (.shr 618 0) := by core033_kernel_decide
theorem stats676 : actualRows676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows676=5124 := by core033_kernel_decide
theorem rows677 : actualRows677=WordField.canonicalRows actualModulus 677 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats677 : actualRows677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows677=2892 := by core033_kernel_decide
theorem rows678 : actualRows678=WordField.canonicalRows actualModulus 678 (.band 676 677) := by core033_kernel_decide
theorem stats678 : actualRows678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows678=5124 := by core033_kernel_decide
theorem rows679 : actualRows679=WordField.canonicalRows actualModulus 679 (.bnot 678) := by core033_kernel_decide
theorem stats679 : actualRows679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows679=6276 := by core033_kernel_decide
theorem rows680 : actualRows680=WordField.canonicalRows actualModulus 680 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats680 : actualRows680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows680=2892 := by core033_kernel_decide
theorem rows681 : actualRows681=WordField.canonicalRows actualModulus 681 (.badd 679 680) := by core033_kernel_decide
theorem stats681 : actualRows681.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows681=5388 := by core033_kernel_decide
theorem rows682 : actualRows682=WordField.canonicalRows actualModulus 682 (.band 681 184) := by core033_kernel_decide
theorem stats682 : actualRows682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows682=5124 := by core033_kernel_decide
def partRows9 : List R1CS.Row := actualRows619++actualRows620++actualRows621++actualRows622++actualRows623++actualRows624++actualRows625++actualRows626++actualRows627++actualRows628++actualRows629++actualRows630++actualRows631++actualRows632++actualRows633++actualRows634++actualRows635++actualRows636++actualRows637++actualRows638++actualRows639++actualRows640++actualRows641++actualRows642++actualRows643++actualRows644++actualRows645++actualRows646++actualRows647++actualRows648++actualRows649++actualRows650++actualRows651++actualRows652++actualRows653++actualRows654++actualRows655++actualRows656++actualRows657++actualRows658++actualRows659++actualRows660++actualRows661++actualRows662++actualRows663++actualRows664++actualRows665++actualRows666++actualRows667++actualRows668++actualRows669++actualRows670++actualRows671++actualRows672++actualRows673++actualRows674++actualRows675++actualRows676++actualRows677++actualRows678++actualRows679++actualRows680++actualRows681++actualRows682
def partOps9 : List WordIR.Op := [.bnot 563,.literal (BitVec.ofNat 32 31),.band 619 620,.shr 563 8,.literal (BitVec.ofNat 32 0),.bnot 623,.band 622 624,.shr 563 8,.literal (BitVec.ofNat 32 0),.bnot 627,.bxor 626 628,.shr 563 8,.literal (BitVec.ofNat 32 0),.bnot 631,.badd 630 632,.bnot 633,.band 629 634,.bxor 625 635,.shr 636 31,.literal (BitVec.ofNat 32 1),.bxor 637 638,.shr 618 2,.literal (BitVec.ofNat 32 1),.band 640 641,.bnot 642,.literal (BitVec.ofNat 32 1),.badd 643 644,.shr 618 1,.literal (BitVec.ofNat 32 1),.band 646 647,.bnot 648,.literal (BitVec.ofNat 32 1),.badd 649 650,.shr 618 0,.literal (BitVec.ofNat 32 1),.band 652 653,.bnot 654,.literal (BitVec.ofNat 32 1),.badd 655 656,.band 657 206,.shr 618 0,.literal (BitVec.ofNat 32 1),.band 659 660,.bnot 661,.literal (BitVec.ofNat 32 1),.badd 662 663,.bnot 664,.band 665 195,.bxor 658 666,.band 651 667,.shr 618 1,.literal (BitVec.ofNat 32 1),.band 669 670,.bnot 671,.literal (BitVec.ofNat 32 1),.badd 672 673,.bnot 674,.shr 618 0,.literal (BitVec.ofNat 32 1),.band 676 677,.bnot 678,.literal (BitVec.ofNat 32 1),.badd 679 680,.band 681 184]
theorem partExact9 : partRows9=WordField.rows actualModulus 619 partOps9 := by
  simp only [partRows9,partOps9,WordField.rows,rows619,rows620,rows621,rows622,rows623,rows624,rows625,rows626,rows627,rows628,rows629,rows630,rows631,rows632,rows633,rows634,rows635,rows636,rows637,rows638,rows639,rows640,rows641,rows642,rows643,rows644,rows645,rows646,rows647,rows648,rows649,rows650,rows651,rows652,rows653,rows654,rows655,rows656,rows657,rows658,rows659,rows660,rows661,rows662,rows663,rows664,rows665,rows666,rows667,rows668,rows669,rows670,rows671,rows672,rows673,rows674,rows675,rows676,rows677,rows678,rows679,rows680,rows681,rows682,List.append_assoc,List.append_nil]
theorem partLength9 : partOps9.length=64 := by decide
theorem partStats9 : partRows9.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows9=311856 := by
  simp only [partRows9,List.length_append,MatrixRowBlocks.rows_weight_append,stats619.1,stats619.2,stats620.1,stats620.2,stats621.1,stats621.2,stats622.1,stats622.2,stats623.1,stats623.2,stats624.1,stats624.2,stats625.1,stats625.2,stats626.1,stats626.2,stats627.1,stats627.2,stats628.1,stats628.2,stats629.1,stats629.2,stats630.1,stats630.2,stats631.1,stats631.2,stats632.1,stats632.2,stats633.1,stats633.2,stats634.1,stats634.2,stats635.1,stats635.2,stats636.1,stats636.2,stats637.1,stats637.2,stats638.1,stats638.2,stats639.1,stats639.2,stats640.1,stats640.2,stats641.1,stats641.2,stats642.1,stats642.2,stats643.1,stats643.2,stats644.1,stats644.2,stats645.1,stats645.2,stats646.1,stats646.2,stats647.1,stats647.2,stats648.1,stats648.2,stats649.1,stats649.2,stats650.1,stats650.2,stats651.1,stats651.2,stats652.1,stats652.2,stats653.1,stats653.2,stats654.1,stats654.2,stats655.1,stats655.2,stats656.1,stats656.2,stats657.1,stats657.2,stats658.1,stats658.2,stats659.1,stats659.2,stats660.1,stats660.2,stats661.1,stats661.2,stats662.1,stats662.2,stats663.1,stats663.2,stats664.1,stats664.2,stats665.1,stats665.2,stats666.1,stats666.2,stats667.1,stats667.2,stats668.1,stats668.2,stats669.1,stats669.2,stats670.1,stats670.2,stats671.1,stats671.2,stats672.1,stats672.2,stats673.1,stats673.2,stats674.1,stats674.2,stats675.1,stats675.2,stats676.1,stats676.2,stats677.1,stats677.2,stats678.1,stats678.2,stats679.1,stats679.2,stats680.1,stats680.2,stats681.1,stats681.2,stats682.1,stats682.2]
  decide
end PathRoundDispatchCheckedRows
