import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData9
import PairedPathRoundInstructionMatrixData10
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows608 : actualRows608=WordField.canonicalRows actualModulus 608 (.badd 606 607) := by core033_kernel_decide
theorem stats608 : actualRows608.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows608=5388 := by core033_kernel_decide
theorem rows609 : actualRows609=WordField.canonicalRows actualModulus 609 (.band 608 442) := by core033_kernel_decide
theorem stats609 : actualRows609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows609=5124 := by core033_kernel_decide
theorem rows610 : actualRows610=WordField.canonicalRows actualModulus 610 (.bnot 605) := by core033_kernel_decide
theorem stats610 : actualRows610.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows610=6276 := by core033_kernel_decide
theorem rows611 : actualRows611=WordField.canonicalRows actualModulus 611 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats611 : actualRows611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows611=2892 := by core033_kernel_decide
theorem rows612 : actualRows612=WordField.canonicalRows actualModulus 612 (.badd 610 611) := by core033_kernel_decide
theorem stats612 : actualRows612.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows612=5388 := by core033_kernel_decide
theorem rows613 : actualRows613=WordField.canonicalRows actualModulus 613 (.bnot 612) := by core033_kernel_decide
theorem stats613 : actualRows613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows613=6276 := by core033_kernel_decide
theorem rows614 : actualRows614=WordField.canonicalRows actualModulus 614 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats614 : actualRows614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows614=2892 := by core033_kernel_decide
theorem rows615 : actualRows615=WordField.canonicalRows actualModulus 615 (.band 613 614) := by core033_kernel_decide
theorem stats615 : actualRows615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows615=5124 := by core033_kernel_decide
theorem rows616 : actualRows616=WordField.canonicalRows actualModulus 616 (.bxor 609 615) := by core033_kernel_decide
theorem stats616 : actualRows616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows616=7428 := by core033_kernel_decide
theorem rows617 : actualRows617=WordField.canonicalRows actualModulus 617 (.bnot 605) := by core033_kernel_decide
theorem stats617 : actualRows617.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows617=6276 := by core033_kernel_decide
theorem rows618 : actualRows618=WordField.canonicalRows actualModulus 618 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats618 : actualRows618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows618=2892 := by core033_kernel_decide
theorem rows619 : actualRows619=WordField.canonicalRows actualModulus 619 (.badd 617 618) := by core033_kernel_decide
theorem stats619 : actualRows619.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows619=5388 := by core033_kernel_decide
theorem rows620 : actualRows620=WordField.canonicalRows actualModulus 620 (.band 619 1) := by core033_kernel_decide
theorem stats620 : actualRows620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows620=5124 := by core033_kernel_decide
theorem rows621 : actualRows621=WordField.canonicalRows actualModulus 621 (.bnot 605) := by core033_kernel_decide
theorem stats621 : actualRows621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows621=6276 := by core033_kernel_decide
theorem rows622 : actualRows622=WordField.canonicalRows actualModulus 622 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats622 : actualRows622.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows622=2892 := by core033_kernel_decide
theorem rows623 : actualRows623=WordField.canonicalRows actualModulus 623 (.badd 621 622) := by core033_kernel_decide
theorem stats623 : actualRows623.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows623=5388 := by core033_kernel_decide
theorem rows624 : actualRows624=WordField.canonicalRows actualModulus 624 (.bnot 623) := by core033_kernel_decide
theorem stats624 : actualRows624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows624=6276 := by core033_kernel_decide
theorem rows625 : actualRows625=WordField.canonicalRows actualModulus 625 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats625 : actualRows625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows625=2892 := by core033_kernel_decide
theorem rows626 : actualRows626=WordField.canonicalRows actualModulus 626 (.band 624 625) := by core033_kernel_decide
theorem stats626 : actualRows626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows626=5124 := by core033_kernel_decide
theorem rows627 : actualRows627=WordField.canonicalRows actualModulus 627 (.bxor 620 626) := by core033_kernel_decide
theorem stats627 : actualRows627.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows627=7428 := by core033_kernel_decide
theorem rows628 : actualRows628=WordField.canonicalRows actualModulus 628 (.bnot 605) := by core033_kernel_decide
theorem stats628 : actualRows628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows628=6276 := by core033_kernel_decide
theorem rows629 : actualRows629=WordField.canonicalRows actualModulus 629 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats629 : actualRows629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows629=2892 := by core033_kernel_decide
theorem rows630 : actualRows630=WordField.canonicalRows actualModulus 630 (.badd 628 629) := by core033_kernel_decide
theorem stats630 : actualRows630.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows630=5388 := by core033_kernel_decide
theorem rows631 : actualRows631=WordField.canonicalRows actualModulus 631 (.band 630 2) := by core033_kernel_decide
theorem stats631 : actualRows631.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows631=5124 := by core033_kernel_decide
theorem rows632 : actualRows632=WordField.canonicalRows actualModulus 632 (.bnot 605) := by core033_kernel_decide
theorem stats632 : actualRows632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows632=6276 := by core033_kernel_decide
theorem rows633 : actualRows633=WordField.canonicalRows actualModulus 633 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats633 : actualRows633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows633=2892 := by core033_kernel_decide
theorem rows634 : actualRows634=WordField.canonicalRows actualModulus 634 (.badd 632 633) := by core033_kernel_decide
theorem stats634 : actualRows634.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows634=5388 := by core033_kernel_decide
theorem rows635 : actualRows635=WordField.canonicalRows actualModulus 635 (.bnot 634) := by core033_kernel_decide
theorem stats635 : actualRows635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows635=6276 := by core033_kernel_decide
theorem rows636 : actualRows636=WordField.canonicalRows actualModulus 636 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats636 : actualRows636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows636=2820 := by core033_kernel_decide
theorem rows637 : actualRows637=WordField.canonicalRows actualModulus 637 (.band 635 636) := by core033_kernel_decide
theorem stats637 : actualRows637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows637=5124 := by core033_kernel_decide
theorem rows638 : actualRows638=WordField.canonicalRows actualModulus 638 (.bxor 631 637) := by core033_kernel_decide
theorem stats638 : actualRows638.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows638=7428 := by core033_kernel_decide
theorem rows639 : actualRows639=WordField.canonicalRows actualModulus 639 (.bnot 605) := by core033_kernel_decide
theorem stats639 : actualRows639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows639=6276 := by core033_kernel_decide
theorem rows640 : actualRows640=WordField.canonicalRows actualModulus 640 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats640 : actualRows640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows640=2892 := by core033_kernel_decide
theorem rows641 : actualRows641=WordField.canonicalRows actualModulus 641 (.badd 639 640) := by core033_kernel_decide
theorem stats641 : actualRows641.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows641=5388 := by core033_kernel_decide
theorem rows642 : actualRows642=WordField.canonicalRows actualModulus 642 (.band 641 3) := by core033_kernel_decide
theorem stats642 : actualRows642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows642=5124 := by core033_kernel_decide
theorem rows643 : actualRows643=WordField.canonicalRows actualModulus 643 (.bnot 605) := by core033_kernel_decide
theorem stats643 : actualRows643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows643=6276 := by core033_kernel_decide
theorem rows644 : actualRows644=WordField.canonicalRows actualModulus 644 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats644 : actualRows644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows644=2892 := by core033_kernel_decide
theorem rows645 : actualRows645=WordField.canonicalRows actualModulus 645 (.badd 643 644) := by core033_kernel_decide
theorem stats645 : actualRows645.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows645=5388 := by core033_kernel_decide
theorem rows646 : actualRows646=WordField.canonicalRows actualModulus 646 (.bnot 645) := by core033_kernel_decide
theorem stats646 : actualRows646.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows646=6276 := by core033_kernel_decide
theorem rows647 : actualRows647=WordField.canonicalRows actualModulus 647 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats647 : actualRows647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows647=2820 := by core033_kernel_decide
theorem rows648 : actualRows648=WordField.canonicalRows actualModulus 648 (.band 646 647) := by core033_kernel_decide
theorem stats648 : actualRows648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows648=5124 := by core033_kernel_decide
theorem rows649 : actualRows649=WordField.canonicalRows actualModulus 649 (.bxor 642 648) := by core033_kernel_decide
theorem stats649 : actualRows649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows649=7428 := by core033_kernel_decide
theorem rows650 : actualRows650=WordField.canonicalRows actualModulus 650 (.bnot 605) := by core033_kernel_decide
theorem stats650 : actualRows650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows650=6276 := by core033_kernel_decide
theorem rows651 : actualRows651=WordField.canonicalRows actualModulus 651 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats651 : actualRows651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows651=2892 := by core033_kernel_decide
theorem rows652 : actualRows652=WordField.canonicalRows actualModulus 652 (.badd 650 651) := by core033_kernel_decide
theorem stats652 : actualRows652.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows652=5388 := by core033_kernel_decide
theorem rows653 : actualRows653=WordField.canonicalRows actualModulus 653 (.band 652 4) := by core033_kernel_decide
theorem stats653 : actualRows653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows653=5124 := by core033_kernel_decide
theorem rows654 : actualRows654=WordField.canonicalRows actualModulus 654 (.bnot 605) := by core033_kernel_decide
theorem stats654 : actualRows654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows654=6276 := by core033_kernel_decide
theorem rows655 : actualRows655=WordField.canonicalRows actualModulus 655 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats655 : actualRows655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows655=2892 := by core033_kernel_decide
theorem rows656 : actualRows656=WordField.canonicalRows actualModulus 656 (.badd 654 655) := by core033_kernel_decide
theorem stats656 : actualRows656.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows656=5388 := by core033_kernel_decide
theorem rows657 : actualRows657=WordField.canonicalRows actualModulus 657 (.bnot 656) := by core033_kernel_decide
theorem stats657 : actualRows657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows657=6276 := by core033_kernel_decide
theorem rows658 : actualRows658=WordField.canonicalRows actualModulus 658 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats658 : actualRows658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows658=2820 := by core033_kernel_decide
theorem rows659 : actualRows659=WordField.canonicalRows actualModulus 659 (.band 657 658) := by core033_kernel_decide
theorem stats659 : actualRows659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows659=5124 := by core033_kernel_decide
theorem rows660 : actualRows660=WordField.canonicalRows actualModulus 660 (.bxor 653 659) := by core033_kernel_decide
theorem stats660 : actualRows660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows660=7428 := by core033_kernel_decide
theorem rows661 : actualRows661=WordField.canonicalRows actualModulus 661 (.bnot 605) := by core033_kernel_decide
theorem stats661 : actualRows661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows661=6276 := by core033_kernel_decide
theorem rows662 : actualRows662=WordField.canonicalRows actualModulus 662 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats662 : actualRows662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows662=2892 := by core033_kernel_decide
theorem rows663 : actualRows663=WordField.canonicalRows actualModulus 663 (.badd 661 662) := by core033_kernel_decide
theorem stats663 : actualRows663.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows663=5388 := by core033_kernel_decide
theorem rows664 : actualRows664=WordField.canonicalRows actualModulus 664 (.band 663 5) := by core033_kernel_decide
theorem stats664 : actualRows664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows664=5124 := by core033_kernel_decide
theorem rows665 : actualRows665=WordField.canonicalRows actualModulus 665 (.bnot 605) := by core033_kernel_decide
theorem stats665 : actualRows665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows665=6276 := by core033_kernel_decide
theorem rows666 : actualRows666=WordField.canonicalRows actualModulus 666 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats666 : actualRows666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows666=2892 := by core033_kernel_decide
theorem rows667 : actualRows667=WordField.canonicalRows actualModulus 667 (.badd 665 666) := by core033_kernel_decide
theorem stats667 : actualRows667.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows667=5388 := by core033_kernel_decide
theorem rows668 : actualRows668=WordField.canonicalRows actualModulus 668 (.bnot 667) := by core033_kernel_decide
theorem stats668 : actualRows668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows668=6276 := by core033_kernel_decide
theorem rows669 : actualRows669=WordField.canonicalRows actualModulus 669 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats669 : actualRows669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows669=2820 := by core033_kernel_decide
theorem rows670 : actualRows670=WordField.canonicalRows actualModulus 670 (.band 668 669) := by core033_kernel_decide
theorem stats670 : actualRows670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows670=5124 := by core033_kernel_decide
theorem rows671 : actualRows671=WordField.canonicalRows actualModulus 671 (.bxor 664 670) := by core033_kernel_decide
theorem stats671 : actualRows671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows671=7428 := by core033_kernel_decide
def partRows8 : List R1CS.Row := actualRows608++actualRows609++actualRows610++actualRows611++actualRows612++actualRows613++actualRows614++actualRows615++actualRows616++actualRows617++actualRows618++actualRows619++actualRows620++actualRows621++actualRows622++actualRows623++actualRows624++actualRows625++actualRows626++actualRows627++actualRows628++actualRows629++actualRows630++actualRows631++actualRows632++actualRows633++actualRows634++actualRows635++actualRows636++actualRows637++actualRows638++actualRows639++actualRows640++actualRows641++actualRows642++actualRows643++actualRows644++actualRows645++actualRows646++actualRows647++actualRows648++actualRows649++actualRows650++actualRows651++actualRows652++actualRows653++actualRows654++actualRows655++actualRows656++actualRows657++actualRows658++actualRows659++actualRows660++actualRows661++actualRows662++actualRows663++actualRows664++actualRows665++actualRows666++actualRows667++actualRows668++actualRows669++actualRows670++actualRows671
def partOps8 : List WordIR.Op := [.badd 606 607,.band 608 442,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 610 611,.bnot 612,.literal (BitVec.ofNat 32 1),.band 613 614,.bxor 609 615,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 617 618,.band 619 1,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 621 622,.bnot 623,.literal (BitVec.ofNat 32 1),.band 624 625,.bxor 620 626,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 628 629,.band 630 2,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 632 633,.bnot 634,.literal (BitVec.ofNat 32 0),.band 635 636,.bxor 631 637,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 639 640,.band 641 3,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 643 644,.bnot 645,.literal (BitVec.ofNat 32 0),.band 646 647,.bxor 642 648,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 650 651,.band 652 4,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 654 655,.bnot 656,.literal (BitVec.ofNat 32 0),.band 657 658,.bxor 653 659,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 661 662,.band 663 5,.bnot 605,.literal (BitVec.ofNat 32 1),.badd 665 666,.bnot 667,.literal (BitVec.ofNat 32 0),.band 668 669,.bxor 664 670]
theorem partExact8 : partRows8=WordField.rows actualModulus 608 partOps8 := by
  simp only [partRows8,partOps8,WordField.rows,rows608,rows609,rows610,rows611,rows612,rows613,rows614,rows615,rows616,rows617,rows618,rows619,rows620,rows621,rows622,rows623,rows624,rows625,rows626,rows627,rows628,rows629,rows630,rows631,rows632,rows633,rows634,rows635,rows636,rows637,rows638,rows639,rows640,rows641,rows642,rows643,rows644,rows645,rows646,rows647,rows648,rows649,rows650,rows651,rows652,rows653,rows654,rows655,rows656,rows657,rows658,rows659,rows660,rows661,rows662,rows663,rows664,rows665,rows666,rows667,rows668,rows669,rows670,rows671,List.append_assoc,List.append_nil]
theorem partLength8 : partOps8.length=64 := by decide
theorem partStats8 : partRows8.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows8=326280 := by
  simp only [partRows8,List.length_append,MatrixRowBlocks.rows_weight_append,stats608.1,stats608.2,stats609.1,stats609.2,stats610.1,stats610.2,stats611.1,stats611.2,stats612.1,stats612.2,stats613.1,stats613.2,stats614.1,stats614.2,stats615.1,stats615.2,stats616.1,stats616.2,stats617.1,stats617.2,stats618.1,stats618.2,stats619.1,stats619.2,stats620.1,stats620.2,stats621.1,stats621.2,stats622.1,stats622.2,stats623.1,stats623.2,stats624.1,stats624.2,stats625.1,stats625.2,stats626.1,stats626.2,stats627.1,stats627.2,stats628.1,stats628.2,stats629.1,stats629.2,stats630.1,stats630.2,stats631.1,stats631.2,stats632.1,stats632.2,stats633.1,stats633.2,stats634.1,stats634.2,stats635.1,stats635.2,stats636.1,stats636.2,stats637.1,stats637.2,stats638.1,stats638.2,stats639.1,stats639.2,stats640.1,stats640.2,stats641.1,stats641.2,stats642.1,stats642.2,stats643.1,stats643.2,stats644.1,stats644.2,stats645.1,stats645.2,stats646.1,stats646.2,stats647.1,stats647.2,stats648.1,stats648.2,stats649.1,stats649.2,stats650.1,stats650.2,stats651.1,stats651.2,stats652.1,stats652.2,stats653.1,stats653.2,stats654.1,stats654.2,stats655.1,stats655.2,stats656.1,stats656.2,stats657.1,stats657.2,stats658.1,stats658.2,stats659.1,stats659.2,stats660.1,stats660.2,stats661.1,stats661.2,stats662.1,stats662.2,stats663.1,stats663.2,stats664.1,stats664.2,stats665.1,stats665.2,stats666.1,stats666.2,stats667.1,stats667.2,stats668.1,stats668.2,stats669.1,stats669.2,stats670.1,stats670.2,stats671.1,stats671.2]
  decide
end PairedPathRoundCheckedRows
