import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData119
import FrameHashControllerInstructionMatrixData120
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7659 : actualRows7659=WordField.canonicalRows actualModulus 7659 (.rotr 7657 11) := by core033_kernel_decide
theorem stats7659 : actualRows7659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7659=5124 := by core033_kernel_decide
theorem rows7660 : actualRows7660=WordField.canonicalRows actualModulus 7660 (.bxor 7658 7659) := by core033_kernel_decide
theorem stats7660 : actualRows7660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7660=7428 := by core033_kernel_decide
theorem rows7661 : actualRows7661=WordField.canonicalRows actualModulus 7661 (.rotr 7657 25) := by core033_kernel_decide
theorem stats7661 : actualRows7661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7661=5124 := by core033_kernel_decide
theorem rows7662 : actualRows7662=WordField.canonicalRows actualModulus 7662 (.bxor 7660 7661) := by core033_kernel_decide
theorem stats7662 : actualRows7662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7662=7428 := by core033_kernel_decide
theorem rows7663 : actualRows7663=WordField.canonicalRows actualModulus 7663 (.badd 7576 7662) := by core033_kernel_decide
theorem stats7663 : actualRows7663.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7663=5388 := by core033_kernel_decide
theorem rows7664 : actualRows7664=WordField.canonicalRows actualModulus 7664 (.band 7657 7630) := by core033_kernel_decide
theorem stats7664 : actualRows7664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7664=5124 := by core033_kernel_decide
theorem rows7665 : actualRows7665=WordField.canonicalRows actualModulus 7665 (.bnot 7657) := by core033_kernel_decide
theorem stats7665 : actualRows7665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7665=6276 := by core033_kernel_decide
theorem rows7666 : actualRows7666=WordField.canonicalRows actualModulus 7666 (.band 7665 7603) := by core033_kernel_decide
theorem stats7666 : actualRows7666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7666=5124 := by core033_kernel_decide
theorem rows7667 : actualRows7667=WordField.canonicalRows actualModulus 7667 (.bxor 7664 7666) := by core033_kernel_decide
theorem stats7667 : actualRows7667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7667=7428 := by core033_kernel_decide
theorem rows7668 : actualRows7668=WordField.canonicalRows actualModulus 7668 (.badd 7663 7667) := by core033_kernel_decide
theorem stats7668 : actualRows7668.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7668=5388 := by core033_kernel_decide
theorem rows7669 : actualRows7669=WordField.canonicalRows actualModulus 7669 (.literal (BitVec.ofNat 32 1996064986)) := by core033_kernel_decide
theorem stats7669 : actualRows7669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7669=4116 := by core033_kernel_decide
theorem rows7670 : actualRows7670=WordField.canonicalRows actualModulus 7670 (.badd 7668 7669) := by core033_kernel_decide
theorem stats7670 : actualRows7670.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7670=5388 := by core033_kernel_decide
theorem rows7671 : actualRows7671=WordField.canonicalRows actualModulus 7671 (.badd 7670 6516) := by core033_kernel_decide
theorem stats7671 : actualRows7671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7671=5388 := by core033_kernel_decide
theorem rows7672 : actualRows7672=WordField.canonicalRows actualModulus 7672 (.rotr 7656 2) := by core033_kernel_decide
theorem stats7672 : actualRows7672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7672=5124 := by core033_kernel_decide
theorem rows7673 : actualRows7673=WordField.canonicalRows actualModulus 7673 (.rotr 7656 13) := by core033_kernel_decide
theorem stats7673 : actualRows7673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7673=5124 := by core033_kernel_decide
theorem rows7674 : actualRows7674=WordField.canonicalRows actualModulus 7674 (.bxor 7672 7673) := by core033_kernel_decide
theorem stats7674 : actualRows7674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7674=7428 := by core033_kernel_decide
theorem rows7675 : actualRows7675=WordField.canonicalRows actualModulus 7675 (.rotr 7656 22) := by core033_kernel_decide
theorem stats7675 : actualRows7675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7675=5124 := by core033_kernel_decide
theorem rows7676 : actualRows7676=WordField.canonicalRows actualModulus 7676 (.bxor 7674 7675) := by core033_kernel_decide
theorem stats7676 : actualRows7676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7676=7428 := by core033_kernel_decide
theorem rows7677 : actualRows7677=WordField.canonicalRows actualModulus 7677 (.band 7656 7629) := by core033_kernel_decide
theorem stats7677 : actualRows7677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7677=5124 := by core033_kernel_decide
theorem rows7678 : actualRows7678=WordField.canonicalRows actualModulus 7678 (.band 7656 7602) := by core033_kernel_decide
theorem stats7678 : actualRows7678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7678=5124 := by core033_kernel_decide
theorem rows7679 : actualRows7679=WordField.canonicalRows actualModulus 7679 (.bxor 7677 7678) := by core033_kernel_decide
theorem stats7679 : actualRows7679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7679=7428 := by core033_kernel_decide
theorem rows7680 : actualRows7680=WordField.canonicalRows actualModulus 7680 (.band 7629 7602) := by core033_kernel_decide
theorem stats7680 : actualRows7680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7680=5124 := by core033_kernel_decide
theorem rows7681 : actualRows7681=WordField.canonicalRows actualModulus 7681 (.bxor 7679 7680) := by core033_kernel_decide
theorem stats7681 : actualRows7681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7681=7428 := by core033_kernel_decide
theorem rows7682 : actualRows7682=WordField.canonicalRows actualModulus 7682 (.badd 7676 7681) := by core033_kernel_decide
theorem stats7682 : actualRows7682.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7682=5388 := by core033_kernel_decide
theorem rows7683 : actualRows7683=WordField.canonicalRows actualModulus 7683 (.badd 7671 7682) := by core033_kernel_decide
theorem stats7683 : actualRows7683.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7683=5388 := by core033_kernel_decide
theorem rows7684 : actualRows7684=WordField.canonicalRows actualModulus 7684 (.badd 7575 7671) := by core033_kernel_decide
theorem stats7684 : actualRows7684.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7684=5388 := by core033_kernel_decide
theorem rows7685 : actualRows7685=WordField.canonicalRows actualModulus 7685 (.rotr 7684 6) := by core033_kernel_decide
theorem stats7685 : actualRows7685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7685=5124 := by core033_kernel_decide
theorem rows7686 : actualRows7686=WordField.canonicalRows actualModulus 7686 (.rotr 7684 11) := by core033_kernel_decide
theorem stats7686 : actualRows7686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7686=5124 := by core033_kernel_decide
theorem rows7687 : actualRows7687=WordField.canonicalRows actualModulus 7687 (.bxor 7685 7686) := by core033_kernel_decide
theorem stats7687 : actualRows7687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7687=7428 := by core033_kernel_decide
theorem rows7688 : actualRows7688=WordField.canonicalRows actualModulus 7688 (.rotr 7684 25) := by core033_kernel_decide
theorem stats7688 : actualRows7688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7688=5124 := by core033_kernel_decide
theorem rows7689 : actualRows7689=WordField.canonicalRows actualModulus 7689 (.bxor 7687 7688) := by core033_kernel_decide
theorem stats7689 : actualRows7689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7689=7428 := by core033_kernel_decide
theorem rows7690 : actualRows7690=WordField.canonicalRows actualModulus 7690 (.badd 7603 7689) := by core033_kernel_decide
theorem stats7690 : actualRows7690.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7690=5388 := by core033_kernel_decide
theorem rows7691 : actualRows7691=WordField.canonicalRows actualModulus 7691 (.band 7684 7657) := by core033_kernel_decide
theorem stats7691 : actualRows7691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7691=5124 := by core033_kernel_decide
theorem rows7692 : actualRows7692=WordField.canonicalRows actualModulus 7692 (.bnot 7684) := by core033_kernel_decide
theorem stats7692 : actualRows7692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7692=6276 := by core033_kernel_decide
theorem rows7693 : actualRows7693=WordField.canonicalRows actualModulus 7693 (.band 7692 7630) := by core033_kernel_decide
theorem stats7693 : actualRows7693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7693=5124 := by core033_kernel_decide
theorem rows7694 : actualRows7694=WordField.canonicalRows actualModulus 7694 (.bxor 7691 7693) := by core033_kernel_decide
theorem stats7694 : actualRows7694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7694=7428 := by core033_kernel_decide
theorem rows7695 : actualRows7695=WordField.canonicalRows actualModulus 7695 (.badd 7690 7694) := by core033_kernel_decide
theorem stats7695 : actualRows7695.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7695=5388 := by core033_kernel_decide
theorem rows7696 : actualRows7696=WordField.canonicalRows actualModulus 7696 (.literal (BitVec.ofNat 32 2554220882)) := by core033_kernel_decide
theorem stats7696 : actualRows7696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7696=3828 := by core033_kernel_decide
theorem rows7697 : actualRows7697=WordField.canonicalRows actualModulus 7697 (.badd 7695 7696) := by core033_kernel_decide
theorem stats7697 : actualRows7697.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7697=5388 := by core033_kernel_decide
theorem rows7698 : actualRows7698=WordField.canonicalRows actualModulus 7698 (.badd 7697 6529) := by core033_kernel_decide
theorem stats7698 : actualRows7698.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7698=5388 := by core033_kernel_decide
theorem rows7699 : actualRows7699=WordField.canonicalRows actualModulus 7699 (.rotr 7683 2) := by core033_kernel_decide
theorem stats7699 : actualRows7699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7699=5124 := by core033_kernel_decide
theorem rows7700 : actualRows7700=WordField.canonicalRows actualModulus 7700 (.rotr 7683 13) := by core033_kernel_decide
theorem stats7700 : actualRows7700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7700=5124 := by core033_kernel_decide
theorem rows7701 : actualRows7701=WordField.canonicalRows actualModulus 7701 (.bxor 7699 7700) := by core033_kernel_decide
theorem stats7701 : actualRows7701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7701=7428 := by core033_kernel_decide
theorem rows7702 : actualRows7702=WordField.canonicalRows actualModulus 7702 (.rotr 7683 22) := by core033_kernel_decide
theorem stats7702 : actualRows7702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7702=5124 := by core033_kernel_decide
theorem rows7703 : actualRows7703=WordField.canonicalRows actualModulus 7703 (.bxor 7701 7702) := by core033_kernel_decide
theorem stats7703 : actualRows7703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7703=7428 := by core033_kernel_decide
theorem rows7704 : actualRows7704=WordField.canonicalRows actualModulus 7704 (.band 7683 7656) := by core033_kernel_decide
theorem stats7704 : actualRows7704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7704=5124 := by core033_kernel_decide
theorem rows7705 : actualRows7705=WordField.canonicalRows actualModulus 7705 (.band 7683 7629) := by core033_kernel_decide
theorem stats7705 : actualRows7705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7705=5124 := by core033_kernel_decide
theorem rows7706 : actualRows7706=WordField.canonicalRows actualModulus 7706 (.bxor 7704 7705) := by core033_kernel_decide
theorem stats7706 : actualRows7706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7706=7428 := by core033_kernel_decide
theorem rows7707 : actualRows7707=WordField.canonicalRows actualModulus 7707 (.band 7656 7629) := by core033_kernel_decide
theorem stats7707 : actualRows7707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7707=5124 := by core033_kernel_decide
theorem rows7708 : actualRows7708=WordField.canonicalRows actualModulus 7708 (.bxor 7706 7707) := by core033_kernel_decide
theorem stats7708 : actualRows7708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7708=7428 := by core033_kernel_decide
theorem rows7709 : actualRows7709=WordField.canonicalRows actualModulus 7709 (.badd 7703 7708) := by core033_kernel_decide
theorem stats7709 : actualRows7709.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7709=5388 := by core033_kernel_decide
theorem rows7710 : actualRows7710=WordField.canonicalRows actualModulus 7710 (.badd 7698 7709) := by core033_kernel_decide
theorem stats7710 : actualRows7710.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7710=5388 := by core033_kernel_decide
theorem rows7711 : actualRows7711=WordField.canonicalRows actualModulus 7711 (.badd 7602 7698) := by core033_kernel_decide
theorem stats7711 : actualRows7711.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7711=5388 := by core033_kernel_decide
theorem rows7712 : actualRows7712=WordField.canonicalRows actualModulus 7712 (.rotr 7711 6) := by core033_kernel_decide
theorem stats7712 : actualRows7712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7712=5124 := by core033_kernel_decide
theorem rows7713 : actualRows7713=WordField.canonicalRows actualModulus 7713 (.rotr 7711 11) := by core033_kernel_decide
theorem stats7713 : actualRows7713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7713=5124 := by core033_kernel_decide
theorem rows7714 : actualRows7714=WordField.canonicalRows actualModulus 7714 (.bxor 7712 7713) := by core033_kernel_decide
theorem stats7714 : actualRows7714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7714=7428 := by core033_kernel_decide
theorem rows7715 : actualRows7715=WordField.canonicalRows actualModulus 7715 (.rotr 7711 25) := by core033_kernel_decide
theorem stats7715 : actualRows7715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7715=5124 := by core033_kernel_decide
theorem rows7716 : actualRows7716=WordField.canonicalRows actualModulus 7716 (.bxor 7714 7715) := by core033_kernel_decide
theorem stats7716 : actualRows7716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7716=7428 := by core033_kernel_decide
theorem rows7717 : actualRows7717=WordField.canonicalRows actualModulus 7717 (.badd 7630 7716) := by core033_kernel_decide
theorem stats7717 : actualRows7717.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7717=5388 := by core033_kernel_decide
theorem rows7718 : actualRows7718=WordField.canonicalRows actualModulus 7718 (.band 7711 7684) := by core033_kernel_decide
theorem stats7718 : actualRows7718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7718=5124 := by core033_kernel_decide
theorem rows7719 : actualRows7719=WordField.canonicalRows actualModulus 7719 (.bnot 7711) := by core033_kernel_decide
theorem stats7719 : actualRows7719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7719=6276 := by core033_kernel_decide
theorem rows7720 : actualRows7720=WordField.canonicalRows actualModulus 7720 (.band 7719 7657) := by core033_kernel_decide
theorem stats7720 : actualRows7720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7720=5124 := by core033_kernel_decide
theorem rows7721 : actualRows7721=WordField.canonicalRows actualModulus 7721 (.bxor 7718 7720) := by core033_kernel_decide
theorem stats7721 : actualRows7721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7721=7428 := by core033_kernel_decide
theorem rows7722 : actualRows7722=WordField.canonicalRows actualModulus 7722 (.badd 7717 7721) := by core033_kernel_decide
theorem stats7722 : actualRows7722.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7722=5388 := by core033_kernel_decide
def partRows119 : List R1CS.Row := actualRows7659++actualRows7660++actualRows7661++actualRows7662++actualRows7663++actualRows7664++actualRows7665++actualRows7666++actualRows7667++actualRows7668++actualRows7669++actualRows7670++actualRows7671++actualRows7672++actualRows7673++actualRows7674++actualRows7675++actualRows7676++actualRows7677++actualRows7678++actualRows7679++actualRows7680++actualRows7681++actualRows7682++actualRows7683++actualRows7684++actualRows7685++actualRows7686++actualRows7687++actualRows7688++actualRows7689++actualRows7690++actualRows7691++actualRows7692++actualRows7693++actualRows7694++actualRows7695++actualRows7696++actualRows7697++actualRows7698++actualRows7699++actualRows7700++actualRows7701++actualRows7702++actualRows7703++actualRows7704++actualRows7705++actualRows7706++actualRows7707++actualRows7708++actualRows7709++actualRows7710++actualRows7711++actualRows7712++actualRows7713++actualRows7714++actualRows7715++actualRows7716++actualRows7717++actualRows7718++actualRows7719++actualRows7720++actualRows7721++actualRows7722
def partOps119 : List WordIR.Op := [.rotr 7657 11,.bxor 7658 7659,.rotr 7657 25,.bxor 7660 7661,.badd 7576 7662,.band 7657 7630,.bnot 7657,.band 7665 7603,.bxor 7664 7666,.badd 7663 7667,.literal (BitVec.ofNat 32 1996064986),.badd 7668 7669,.badd 7670 6516,.rotr 7656 2,.rotr 7656 13,.bxor 7672 7673,.rotr 7656 22,.bxor 7674 7675,.band 7656 7629,.band 7656 7602,.bxor 7677 7678,.band 7629 7602,.bxor 7679 7680,.badd 7676 7681,.badd 7671 7682,.badd 7575 7671,.rotr 7684 6,.rotr 7684 11,.bxor 7685 7686,.rotr 7684 25,.bxor 7687 7688,.badd 7603 7689,.band 7684 7657,.bnot 7684,.band 7692 7630,.bxor 7691 7693,.badd 7690 7694,.literal (BitVec.ofNat 32 2554220882),.badd 7695 7696,.badd 7697 6529,.rotr 7683 2,.rotr 7683 13,.bxor 7699 7700,.rotr 7683 22,.bxor 7701 7702,.band 7683 7656,.band 7683 7629,.bxor 7704 7705,.band 7656 7629,.bxor 7706 7707,.badd 7703 7708,.badd 7698 7709,.badd 7602 7698,.rotr 7711 6,.rotr 7711 11,.bxor 7712 7713,.rotr 7711 25,.bxor 7714 7715,.badd 7630 7716,.band 7711 7684,.bnot 7711,.band 7719 7657,.bxor 7718 7720,.badd 7717 7721]
theorem partExact119 : partRows119=WordField.rows actualModulus 7659 partOps119 := by
  simp only [partRows119,partOps119,WordField.rows,rows7659,rows7660,rows7661,rows7662,rows7663,rows7664,rows7665,rows7666,rows7667,rows7668,rows7669,rows7670,rows7671,rows7672,rows7673,rows7674,rows7675,rows7676,rows7677,rows7678,rows7679,rows7680,rows7681,rows7682,rows7683,rows7684,rows7685,rows7686,rows7687,rows7688,rows7689,rows7690,rows7691,rows7692,rows7693,rows7694,rows7695,rows7696,rows7697,rows7698,rows7699,rows7700,rows7701,rows7702,rows7703,rows7704,rows7705,rows7706,rows7707,rows7708,rows7709,rows7710,rows7711,rows7712,rows7713,rows7714,rows7715,rows7716,rows7717,rows7718,rows7719,rows7720,rows7721,rows7722,List.append_assoc,List.append_nil]
theorem partLength119 : partOps119.length=64 := by decide
theorem partStats119 : partRows119.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows119=372480 := by
  simp only [partRows119,List.length_append,MatrixRowBlocks.rows_weight_append,stats7659.1,stats7659.2,stats7660.1,stats7660.2,stats7661.1,stats7661.2,stats7662.1,stats7662.2,stats7663.1,stats7663.2,stats7664.1,stats7664.2,stats7665.1,stats7665.2,stats7666.1,stats7666.2,stats7667.1,stats7667.2,stats7668.1,stats7668.2,stats7669.1,stats7669.2,stats7670.1,stats7670.2,stats7671.1,stats7671.2,stats7672.1,stats7672.2,stats7673.1,stats7673.2,stats7674.1,stats7674.2,stats7675.1,stats7675.2,stats7676.1,stats7676.2,stats7677.1,stats7677.2,stats7678.1,stats7678.2,stats7679.1,stats7679.2,stats7680.1,stats7680.2,stats7681.1,stats7681.2,stats7682.1,stats7682.2,stats7683.1,stats7683.2,stats7684.1,stats7684.2,stats7685.1,stats7685.2,stats7686.1,stats7686.2,stats7687.1,stats7687.2,stats7688.1,stats7688.2,stats7689.1,stats7689.2,stats7690.1,stats7690.2,stats7691.1,stats7691.2,stats7692.1,stats7692.2,stats7693.1,stats7693.2,stats7694.1,stats7694.2,stats7695.1,stats7695.2,stats7696.1,stats7696.2,stats7697.1,stats7697.2,stats7698.1,stats7698.2,stats7699.1,stats7699.2,stats7700.1,stats7700.2,stats7701.1,stats7701.2,stats7702.1,stats7702.2,stats7703.1,stats7703.2,stats7704.1,stats7704.2,stats7705.1,stats7705.2,stats7706.1,stats7706.2,stats7707.1,stats7707.2,stats7708.1,stats7708.2,stats7709.1,stats7709.2,stats7710.1,stats7710.2,stats7711.1,stats7711.2,stats7712.1,stats7712.2,stats7713.1,stats7713.2,stats7714.1,stats7714.2,stats7715.1,stats7715.2,stats7716.1,stats7716.2,stats7717.1,stats7717.2,stats7718.1,stats7718.2,stats7719.1,stats7719.2,stats7720.1,stats7720.2,stats7721.1,stats7721.2,stats7722.1,stats7722.2]
  decide
end FrameHashControllerCheckedRows
