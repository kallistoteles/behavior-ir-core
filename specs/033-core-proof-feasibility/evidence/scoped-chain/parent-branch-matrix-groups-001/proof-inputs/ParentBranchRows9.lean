import ActualParentBranchIR
import ArtifactParentBranchBlocks
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ParentBranchInstructionMatrixData9
import ParentBranchInstructionMatrixData10
namespace ParentBranchCheckedRows
open Core033 ParentBranchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows602 : actualRows602=WordField.canonicalRows actualModulus 602 (.band 599 601) := by core033_kernel_decide
theorem stats602 : actualRows602.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows602=5124 := by core033_kernel_decide
theorem rows603 : actualRows603=WordField.canonicalRows actualModulus 603 (.shr 162 1) := by core033_kernel_decide
theorem stats603 : actualRows603.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows603=5052 := by core033_kernel_decide
theorem rows604 : actualRows604=WordField.canonicalRows actualModulus 604 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats604 : actualRows604.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows604=2820 := by core033_kernel_decide
theorem rows605 : actualRows605=WordField.canonicalRows actualModulus 605 (.bnot 604) := by core033_kernel_decide
theorem stats605 : actualRows605.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows605=6276 := by core033_kernel_decide
theorem rows606 : actualRows606=WordField.canonicalRows actualModulus 606 (.bxor 603 605) := by core033_kernel_decide
theorem stats606 : actualRows606.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows606=7428 := by core033_kernel_decide
theorem rows607 : actualRows607=WordField.canonicalRows actualModulus 607 (.shr 162 1) := by core033_kernel_decide
theorem stats607 : actualRows607.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows607=5052 := by core033_kernel_decide
theorem rows608 : actualRows608=WordField.canonicalRows actualModulus 608 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats608 : actualRows608.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows608=2820 := by core033_kernel_decide
theorem rows609 : actualRows609=WordField.canonicalRows actualModulus 609 (.bnot 608) := by core033_kernel_decide
theorem stats609 : actualRows609.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows609=6276 := by core033_kernel_decide
theorem rows610 : actualRows610=WordField.canonicalRows actualModulus 610 (.badd 607 609) := by core033_kernel_decide
theorem stats610 : actualRows610.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows610=5388 := by core033_kernel_decide
theorem rows611 : actualRows611=WordField.canonicalRows actualModulus 611 (.bnot 610) := by core033_kernel_decide
theorem stats611 : actualRows611.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows611=6276 := by core033_kernel_decide
theorem rows612 : actualRows612=WordField.canonicalRows actualModulus 612 (.band 606 611) := by core033_kernel_decide
theorem stats612 : actualRows612.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows612=5124 := by core033_kernel_decide
theorem rows613 : actualRows613=WordField.canonicalRows actualModulus 613 (.bxor 602 612) := by core033_kernel_decide
theorem stats613 : actualRows613.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows613=7428 := by core033_kernel_decide
theorem rows614 : actualRows614=WordField.canonicalRows actualModulus 614 (.shr 613 31) := by core033_kernel_decide
theorem stats614 : actualRows614.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows614=2892 := by core033_kernel_decide
theorem rows615 : actualRows615=WordField.canonicalRows actualModulus 615 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats615 : actualRows615.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows615=2892 := by core033_kernel_decide
theorem rows616 : actualRows616=WordField.canonicalRows actualModulus 616 (.bxor 614 615) := by core033_kernel_decide
theorem stats616 : actualRows616.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows616=7428 := by core033_kernel_decide
theorem rows617 : actualRows617=WordField.canonicalRows actualModulus 617 (.badd 18 20) := by core033_kernel_decide
theorem stats617 : actualRows617.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows617=5388 := by core033_kernel_decide
theorem rows618 : actualRows618=WordField.canonicalRows actualModulus 618 (.bxor 617 26) := by core033_kernel_decide
theorem stats618 : actualRows618.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows618=7428 := by core033_kernel_decide
theorem rows619 : actualRows619=WordField.canonicalRows actualModulus 619 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats619 : actualRows619.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows619=2820 := by core033_kernel_decide
theorem rows620 : actualRows620=WordField.canonicalRows actualModulus 620 (.bnot 619) := by core033_kernel_decide
theorem stats620 : actualRows620.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows620=6276 := by core033_kernel_decide
theorem rows621 : actualRows621=WordField.canonicalRows actualModulus 621 (.band 618 620) := by core033_kernel_decide
theorem stats621 : actualRows621.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows621=5124 := by core033_kernel_decide
theorem rows622 : actualRows622=WordField.canonicalRows actualModulus 622 (.badd 18 20) := by core033_kernel_decide
theorem stats622 : actualRows622.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows622=5388 := by core033_kernel_decide
theorem rows623 : actualRows623=WordField.canonicalRows actualModulus 623 (.bxor 622 26) := by core033_kernel_decide
theorem stats623 : actualRows623.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows623=7428 := by core033_kernel_decide
theorem rows624 : actualRows624=WordField.canonicalRows actualModulus 624 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats624 : actualRows624.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows624=2820 := by core033_kernel_decide
theorem rows625 : actualRows625=WordField.canonicalRows actualModulus 625 (.bnot 624) := by core033_kernel_decide
theorem stats625 : actualRows625.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows625=6276 := by core033_kernel_decide
theorem rows626 : actualRows626=WordField.canonicalRows actualModulus 626 (.bxor 623 625) := by core033_kernel_decide
theorem stats626 : actualRows626.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows626=7428 := by core033_kernel_decide
theorem rows627 : actualRows627=WordField.canonicalRows actualModulus 627 (.badd 18 20) := by core033_kernel_decide
theorem stats627 : actualRows627.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows627=5388 := by core033_kernel_decide
theorem rows628 : actualRows628=WordField.canonicalRows actualModulus 628 (.bxor 627 26) := by core033_kernel_decide
theorem stats628 : actualRows628.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows628=7428 := by core033_kernel_decide
theorem rows629 : actualRows629=WordField.canonicalRows actualModulus 629 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats629 : actualRows629.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows629=2820 := by core033_kernel_decide
theorem rows630 : actualRows630=WordField.canonicalRows actualModulus 630 (.bnot 629) := by core033_kernel_decide
theorem stats630 : actualRows630.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows630=6276 := by core033_kernel_decide
theorem rows631 : actualRows631=WordField.canonicalRows actualModulus 631 (.badd 628 630) := by core033_kernel_decide
theorem stats631 : actualRows631.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows631=5388 := by core033_kernel_decide
theorem rows632 : actualRows632=WordField.canonicalRows actualModulus 632 (.bnot 631) := by core033_kernel_decide
theorem stats632 : actualRows632.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows632=6276 := by core033_kernel_decide
theorem rows633 : actualRows633=WordField.canonicalRows actualModulus 633 (.band 626 632) := by core033_kernel_decide
theorem stats633 : actualRows633.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows633=5124 := by core033_kernel_decide
theorem rows634 : actualRows634=WordField.canonicalRows actualModulus 634 (.bxor 621 633) := by core033_kernel_decide
theorem stats634 : actualRows634.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows634=7428 := by core033_kernel_decide
theorem rows635 : actualRows635=WordField.canonicalRows actualModulus 635 (.shr 634 31) := by core033_kernel_decide
theorem stats635 : actualRows635.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows635=2892 := by core033_kernel_decide
theorem rows636 : actualRows636=WordField.canonicalRows actualModulus 636 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats636 : actualRows636.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows636=2892 := by core033_kernel_decide
theorem rows637 : actualRows637=WordField.canonicalRows actualModulus 637 (.bxor 635 636) := by core033_kernel_decide
theorem stats637 : actualRows637.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows637=7428 := by core033_kernel_decide
theorem rows638 : actualRows638=WordField.canonicalRows actualModulus 638 (.badd 19 21) := by core033_kernel_decide
theorem stats638 : actualRows638.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows638=5388 := by core033_kernel_decide
theorem rows639 : actualRows639=WordField.canonicalRows actualModulus 639 (.band 18 20) := by core033_kernel_decide
theorem stats639 : actualRows639.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows639=5124 := by core033_kernel_decide
theorem rows640 : actualRows640=WordField.canonicalRows actualModulus 640 (.bxor 18 20) := by core033_kernel_decide
theorem stats640 : actualRows640.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows640=7428 := by core033_kernel_decide
theorem rows641 : actualRows641=WordField.canonicalRows actualModulus 641 (.badd 18 20) := by core033_kernel_decide
theorem stats641 : actualRows641.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows641=5388 := by core033_kernel_decide
theorem rows642 : actualRows642=WordField.canonicalRows actualModulus 642 (.bnot 641) := by core033_kernel_decide
theorem stats642 : actualRows642.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows642=6276 := by core033_kernel_decide
theorem rows643 : actualRows643=WordField.canonicalRows actualModulus 643 (.band 640 642) := by core033_kernel_decide
theorem stats643 : actualRows643.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows643=5124 := by core033_kernel_decide
theorem rows644 : actualRows644=WordField.canonicalRows actualModulus 644 (.bxor 639 643) := by core033_kernel_decide
theorem stats644 : actualRows644.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows644=7428 := by core033_kernel_decide
theorem rows645 : actualRows645=WordField.canonicalRows actualModulus 645 (.shr 644 31) := by core033_kernel_decide
theorem stats645 : actualRows645.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows645=2892 := by core033_kernel_decide
theorem rows646 : actualRows646=WordField.canonicalRows actualModulus 646 (.badd 638 645) := by core033_kernel_decide
theorem stats646 : actualRows646.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows646=5388 := by core033_kernel_decide
theorem rows647 : actualRows647=WordField.canonicalRows actualModulus 647 (.bxor 646 35) := by core033_kernel_decide
theorem stats647 : actualRows647.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows647=7428 := by core033_kernel_decide
theorem rows648 : actualRows648=WordField.canonicalRows actualModulus 648 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats648 : actualRows648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows648=2820 := by core033_kernel_decide
theorem rows649 : actualRows649=WordField.canonicalRows actualModulus 649 (.bnot 648) := by core033_kernel_decide
theorem stats649 : actualRows649.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows649=6276 := by core033_kernel_decide
theorem rows650 : actualRows650=WordField.canonicalRows actualModulus 650 (.band 647 649) := by core033_kernel_decide
theorem stats650 : actualRows650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows650=5124 := by core033_kernel_decide
theorem rows651 : actualRows651=WordField.canonicalRows actualModulus 651 (.badd 19 21) := by core033_kernel_decide
theorem stats651 : actualRows651.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows651=5388 := by core033_kernel_decide
theorem rows652 : actualRows652=WordField.canonicalRows actualModulus 652 (.band 18 20) := by core033_kernel_decide
theorem stats652 : actualRows652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows652=5124 := by core033_kernel_decide
theorem rows653 : actualRows653=WordField.canonicalRows actualModulus 653 (.bxor 18 20) := by core033_kernel_decide
theorem stats653 : actualRows653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows653=7428 := by core033_kernel_decide
theorem rows654 : actualRows654=WordField.canonicalRows actualModulus 654 (.badd 18 20) := by core033_kernel_decide
theorem stats654 : actualRows654.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows654=5388 := by core033_kernel_decide
theorem rows655 : actualRows655=WordField.canonicalRows actualModulus 655 (.bnot 654) := by core033_kernel_decide
theorem stats655 : actualRows655.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows655=6276 := by core033_kernel_decide
theorem rows656 : actualRows656=WordField.canonicalRows actualModulus 656 (.band 653 655) := by core033_kernel_decide
theorem stats656 : actualRows656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows656=5124 := by core033_kernel_decide
theorem rows657 : actualRows657=WordField.canonicalRows actualModulus 657 (.bxor 652 656) := by core033_kernel_decide
theorem stats657 : actualRows657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows657=7428 := by core033_kernel_decide
theorem rows658 : actualRows658=WordField.canonicalRows actualModulus 658 (.shr 657 31) := by core033_kernel_decide
theorem stats658 : actualRows658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows658=2892 := by core033_kernel_decide
theorem rows659 : actualRows659=WordField.canonicalRows actualModulus 659 (.badd 651 658) := by core033_kernel_decide
theorem stats659 : actualRows659.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows659=5388 := by core033_kernel_decide
theorem rows660 : actualRows660=WordField.canonicalRows actualModulus 660 (.bxor 659 35) := by core033_kernel_decide
theorem stats660 : actualRows660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows660=7428 := by core033_kernel_decide
theorem rows661 : actualRows661=WordField.canonicalRows actualModulus 661 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats661 : actualRows661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows661=2820 := by core033_kernel_decide
theorem rows662 : actualRows662=WordField.canonicalRows actualModulus 662 (.bnot 661) := by core033_kernel_decide
theorem stats662 : actualRows662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows662=6276 := by core033_kernel_decide
theorem rows663 : actualRows663=WordField.canonicalRows actualModulus 663 (.bxor 660 662) := by core033_kernel_decide
theorem stats663 : actualRows663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows663=7428 := by core033_kernel_decide
theorem rows664 : actualRows664=WordField.canonicalRows actualModulus 664 (.badd 19 21) := by core033_kernel_decide
theorem stats664 : actualRows664.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows664=5388 := by core033_kernel_decide
theorem rows665 : actualRows665=WordField.canonicalRows actualModulus 665 (.band 18 20) := by core033_kernel_decide
theorem stats665 : actualRows665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows665=5124 := by core033_kernel_decide
def partRows9 : List R1CS.Row := actualRows602++actualRows603++actualRows604++actualRows605++actualRows606++actualRows607++actualRows608++actualRows609++actualRows610++actualRows611++actualRows612++actualRows613++actualRows614++actualRows615++actualRows616++actualRows617++actualRows618++actualRows619++actualRows620++actualRows621++actualRows622++actualRows623++actualRows624++actualRows625++actualRows626++actualRows627++actualRows628++actualRows629++actualRows630++actualRows631++actualRows632++actualRows633++actualRows634++actualRows635++actualRows636++actualRows637++actualRows638++actualRows639++actualRows640++actualRows641++actualRows642++actualRows643++actualRows644++actualRows645++actualRows646++actualRows647++actualRows648++actualRows649++actualRows650++actualRows651++actualRows652++actualRows653++actualRows654++actualRows655++actualRows656++actualRows657++actualRows658++actualRows659++actualRows660++actualRows661++actualRows662++actualRows663++actualRows664++actualRows665
def partOps9 : List WordIR.Op := [.band 599 601,.shr 162 1,.literal (BitVec.ofNat 32 0),.bnot 604,.bxor 603 605,.shr 162 1,.literal (BitVec.ofNat 32 0),.bnot 608,.badd 607 609,.bnot 610,.band 606 611,.bxor 602 612,.shr 613 31,.literal (BitVec.ofNat 32 1),.bxor 614 615,.badd 18 20,.bxor 617 26,.literal (BitVec.ofNat 32 0),.bnot 619,.band 618 620,.badd 18 20,.bxor 622 26,.literal (BitVec.ofNat 32 0),.bnot 624,.bxor 623 625,.badd 18 20,.bxor 627 26,.literal (BitVec.ofNat 32 0),.bnot 629,.badd 628 630,.bnot 631,.band 626 632,.bxor 621 633,.shr 634 31,.literal (BitVec.ofNat 32 1),.bxor 635 636,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 641,.band 640 642,.bxor 639 643,.shr 644 31,.badd 638 645,.bxor 646 35,.literal (BitVec.ofNat 32 0),.bnot 648,.band 647 649,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 654,.band 653 655,.bxor 652 656,.shr 657 31,.badd 651 658,.bxor 659 35,.literal (BitVec.ofNat 32 0),.bnot 661,.bxor 660 662,.badd 19 21,.band 18 20]
theorem partExact9 : partRows9=WordField.rows actualModulus 602 partOps9 := by
  simp only [partRows9,partOps9,WordField.rows,rows602,rows603,rows604,rows605,rows606,rows607,rows608,rows609,rows610,rows611,rows612,rows613,rows614,rows615,rows616,rows617,rows618,rows619,rows620,rows621,rows622,rows623,rows624,rows625,rows626,rows627,rows628,rows629,rows630,rows631,rows632,rows633,rows634,rows635,rows636,rows637,rows638,rows639,rows640,rows641,rows642,rows643,rows644,rows645,rows646,rows647,rows648,rows649,rows650,rows651,rows652,rows653,rows654,rows655,rows656,rows657,rows658,rows659,rows660,rows661,rows662,rows663,rows664,rows665,List.append_assoc,List.append_nil]
theorem partLength9 : partOps9.length=64 := by decide
theorem partStats9 : partRows9.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows9=350976 := by
  simp only [partRows9,List.length_append,MatrixRowBlocks.rows_weight_append,stats602.1,stats602.2,stats603.1,stats603.2,stats604.1,stats604.2,stats605.1,stats605.2,stats606.1,stats606.2,stats607.1,stats607.2,stats608.1,stats608.2,stats609.1,stats609.2,stats610.1,stats610.2,stats611.1,stats611.2,stats612.1,stats612.2,stats613.1,stats613.2,stats614.1,stats614.2,stats615.1,stats615.2,stats616.1,stats616.2,stats617.1,stats617.2,stats618.1,stats618.2,stats619.1,stats619.2,stats620.1,stats620.2,stats621.1,stats621.2,stats622.1,stats622.2,stats623.1,stats623.2,stats624.1,stats624.2,stats625.1,stats625.2,stats626.1,stats626.2,stats627.1,stats627.2,stats628.1,stats628.2,stats629.1,stats629.2,stats630.1,stats630.2,stats631.1,stats631.2,stats632.1,stats632.2,stats633.1,stats633.2,stats634.1,stats634.2,stats635.1,stats635.2,stats636.1,stats636.2,stats637.1,stats637.2,stats638.1,stats638.2,stats639.1,stats639.2,stats640.1,stats640.2,stats641.1,stats641.2,stats642.1,stats642.2,stats643.1,stats643.2,stats644.1,stats644.2,stats645.1,stats645.2,stats646.1,stats646.2,stats647.1,stats647.2,stats648.1,stats648.2,stats649.1,stats649.2,stats650.1,stats650.2,stats651.1,stats651.2,stats652.1,stats652.2,stats653.1,stats653.2,stats654.1,stats654.2,stats655.1,stats655.2,stats656.1,stats656.2,stats657.1,stats657.2,stats658.1,stats658.2,stats659.1,stats659.2,stats660.1,stats660.2,stats661.1,stats661.2,stats662.1,stats662.2,stats663.1,stats663.2,stats664.1,stats664.2,stats665.1,stats665.2]
  decide
end ParentBranchCheckedRows
