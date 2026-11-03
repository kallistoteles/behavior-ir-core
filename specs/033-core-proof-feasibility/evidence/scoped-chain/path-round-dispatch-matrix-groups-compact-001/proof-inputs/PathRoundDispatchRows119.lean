import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData119
import PathRoundDispatchInstructionMatrixData120
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7659 : actualRows7659=WordField.canonicalRows actualModulus 7659 (.badd 7647 7658) := by core033_kernel_decide
theorem stats7659 : actualRows7659.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7659=5388 := by core033_kernel_decide
theorem rows7660 : actualRows7660=WordField.canonicalRows actualModulus 7660 (.badd 1968 7647) := by core033_kernel_decide
theorem stats7660 : actualRows7660.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7660=5388 := by core033_kernel_decide
theorem rows7661 : actualRows7661=WordField.canonicalRows actualModulus 7661 (.rotr 7660 6) := by core033_kernel_decide
theorem stats7661 : actualRows7661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7661=5124 := by core033_kernel_decide
theorem rows7662 : actualRows7662=WordField.canonicalRows actualModulus 7662 (.rotr 7660 11) := by core033_kernel_decide
theorem stats7662 : actualRows7662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7662=5124 := by core033_kernel_decide
theorem rows7663 : actualRows7663=WordField.canonicalRows actualModulus 7663 (.bxor 7661 7662) := by core033_kernel_decide
theorem stats7663 : actualRows7663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7663=7428 := by core033_kernel_decide
theorem rows7664 : actualRows7664=WordField.canonicalRows actualModulus 7664 (.rotr 7660 25) := by core033_kernel_decide
theorem stats7664 : actualRows7664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7664=5124 := by core033_kernel_decide
theorem rows7665 : actualRows7665=WordField.canonicalRows actualModulus 7665 (.bxor 7663 7664) := by core033_kernel_decide
theorem stats7665 : actualRows7665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7665=7428 := by core033_kernel_decide
theorem rows7666 : actualRows7666=WordField.canonicalRows actualModulus 7666 (.badd 7579 7665) := by core033_kernel_decide
theorem stats7666 : actualRows7666.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7666=5388 := by core033_kernel_decide
theorem rows7667 : actualRows7667=WordField.canonicalRows actualModulus 7667 (.band 7660 7633) := by core033_kernel_decide
theorem stats7667 : actualRows7667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7667=5124 := by core033_kernel_decide
theorem rows7668 : actualRows7668=WordField.canonicalRows actualModulus 7668 (.bnot 7660) := by core033_kernel_decide
theorem stats7668 : actualRows7668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7668=6276 := by core033_kernel_decide
theorem rows7669 : actualRows7669=WordField.canonicalRows actualModulus 7669 (.band 7668 7606) := by core033_kernel_decide
theorem stats7669 : actualRows7669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7669=5124 := by core033_kernel_decide
theorem rows7670 : actualRows7670=WordField.canonicalRows actualModulus 7670 (.bxor 7667 7669) := by core033_kernel_decide
theorem stats7670 : actualRows7670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7670=7428 := by core033_kernel_decide
theorem rows7671 : actualRows7671=WordField.canonicalRows actualModulus 7671 (.badd 7666 7670) := by core033_kernel_decide
theorem stats7671 : actualRows7671.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7671=5388 := by core033_kernel_decide
theorem rows7672 : actualRows7672=WordField.canonicalRows actualModulus 7672 (.literal (BitVec.ofNat 32 961987163)) := by core033_kernel_decide
theorem stats7672 : actualRows7672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7672=3972 := by core033_kernel_decide
theorem rows7673 : actualRows7673=WordField.canonicalRows actualModulus 7673 (.badd 7671 7672) := by core033_kernel_decide
theorem stats7673 : actualRows7673.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7673=5388 := by core033_kernel_decide
theorem rows7674 : actualRows7674=WordField.canonicalRows actualModulus 7674 (.badd 7673 5710) := by core033_kernel_decide
theorem stats7674 : actualRows7674.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7674=5388 := by core033_kernel_decide
theorem rows7675 : actualRows7675=WordField.canonicalRows actualModulus 7675 (.rotr 7659 2) := by core033_kernel_decide
theorem stats7675 : actualRows7675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7675=5124 := by core033_kernel_decide
theorem rows7676 : actualRows7676=WordField.canonicalRows actualModulus 7676 (.rotr 7659 13) := by core033_kernel_decide
theorem stats7676 : actualRows7676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7676=5124 := by core033_kernel_decide
theorem rows7677 : actualRows7677=WordField.canonicalRows actualModulus 7677 (.bxor 7675 7676) := by core033_kernel_decide
theorem stats7677 : actualRows7677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7677=7428 := by core033_kernel_decide
theorem rows7678 : actualRows7678=WordField.canonicalRows actualModulus 7678 (.rotr 7659 22) := by core033_kernel_decide
theorem stats7678 : actualRows7678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7678=5124 := by core033_kernel_decide
theorem rows7679 : actualRows7679=WordField.canonicalRows actualModulus 7679 (.bxor 7677 7678) := by core033_kernel_decide
theorem stats7679 : actualRows7679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7679=7428 := by core033_kernel_decide
theorem rows7680 : actualRows7680=WordField.canonicalRows actualModulus 7680 (.band 7659 7632) := by core033_kernel_decide
theorem stats7680 : actualRows7680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7680=5124 := by core033_kernel_decide
theorem rows7681 : actualRows7681=WordField.canonicalRows actualModulus 7681 (.band 7659 7605) := by core033_kernel_decide
theorem stats7681 : actualRows7681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7681=5124 := by core033_kernel_decide
theorem rows7682 : actualRows7682=WordField.canonicalRows actualModulus 7682 (.bxor 7680 7681) := by core033_kernel_decide
theorem stats7682 : actualRows7682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7682=7428 := by core033_kernel_decide
theorem rows7683 : actualRows7683=WordField.canonicalRows actualModulus 7683 (.band 7632 7605) := by core033_kernel_decide
theorem stats7683 : actualRows7683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7683=5124 := by core033_kernel_decide
theorem rows7684 : actualRows7684=WordField.canonicalRows actualModulus 7684 (.bxor 7682 7683) := by core033_kernel_decide
theorem stats7684 : actualRows7684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7684=7428 := by core033_kernel_decide
theorem rows7685 : actualRows7685=WordField.canonicalRows actualModulus 7685 (.badd 7679 7684) := by core033_kernel_decide
theorem stats7685 : actualRows7685.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7685=5388 := by core033_kernel_decide
theorem rows7686 : actualRows7686=WordField.canonicalRows actualModulus 7686 (.badd 7674 7685) := by core033_kernel_decide
theorem stats7686 : actualRows7686.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7686=5388 := by core033_kernel_decide
theorem rows7687 : actualRows7687=WordField.canonicalRows actualModulus 7687 (.badd 7578 7674) := by core033_kernel_decide
theorem stats7687 : actualRows7687.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7687=5388 := by core033_kernel_decide
theorem rows7688 : actualRows7688=WordField.canonicalRows actualModulus 7688 (.rotr 7687 6) := by core033_kernel_decide
theorem stats7688 : actualRows7688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7688=5124 := by core033_kernel_decide
theorem rows7689 : actualRows7689=WordField.canonicalRows actualModulus 7689 (.rotr 7687 11) := by core033_kernel_decide
theorem stats7689 : actualRows7689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7689=5124 := by core033_kernel_decide
theorem rows7690 : actualRows7690=WordField.canonicalRows actualModulus 7690 (.bxor 7688 7689) := by core033_kernel_decide
theorem stats7690 : actualRows7690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7690=7428 := by core033_kernel_decide
theorem rows7691 : actualRows7691=WordField.canonicalRows actualModulus 7691 (.rotr 7687 25) := by core033_kernel_decide
theorem stats7691 : actualRows7691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7691=5124 := by core033_kernel_decide
theorem rows7692 : actualRows7692=WordField.canonicalRows actualModulus 7692 (.bxor 7690 7691) := by core033_kernel_decide
theorem stats7692 : actualRows7692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7692=7428 := by core033_kernel_decide
theorem rows7693 : actualRows7693=WordField.canonicalRows actualModulus 7693 (.badd 7606 7692) := by core033_kernel_decide
theorem stats7693 : actualRows7693.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7693=5388 := by core033_kernel_decide
theorem rows7694 : actualRows7694=WordField.canonicalRows actualModulus 7694 (.band 7687 7660) := by core033_kernel_decide
theorem stats7694 : actualRows7694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7694=5124 := by core033_kernel_decide
theorem rows7695 : actualRows7695=WordField.canonicalRows actualModulus 7695 (.bnot 7687) := by core033_kernel_decide
theorem stats7695 : actualRows7695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7695=6276 := by core033_kernel_decide
theorem rows7696 : actualRows7696=WordField.canonicalRows actualModulus 7696 (.band 7695 7633) := by core033_kernel_decide
theorem stats7696 : actualRows7696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7696=5124 := by core033_kernel_decide
theorem rows7697 : actualRows7697=WordField.canonicalRows actualModulus 7697 (.bxor 7694 7696) := by core033_kernel_decide
theorem stats7697 : actualRows7697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7697=7428 := by core033_kernel_decide
theorem rows7698 : actualRows7698=WordField.canonicalRows actualModulus 7698 (.badd 7693 7697) := by core033_kernel_decide
theorem stats7698 : actualRows7698.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7698=5388 := by core033_kernel_decide
theorem rows7699 : actualRows7699=WordField.canonicalRows actualModulus 7699 (.literal (BitVec.ofNat 32 1508970993)) := by core033_kernel_decide
theorem stats7699 : actualRows7699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7699=3972 := by core033_kernel_decide
theorem rows7700 : actualRows7700=WordField.canonicalRows actualModulus 7700 (.badd 7698 7699) := by core033_kernel_decide
theorem stats7700 : actualRows7700.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7700=5388 := by core033_kernel_decide
theorem rows7701 : actualRows7701=WordField.canonicalRows actualModulus 7701 (.badd 7700 5716) := by core033_kernel_decide
theorem stats7701 : actualRows7701.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7701=5388 := by core033_kernel_decide
theorem rows7702 : actualRows7702=WordField.canonicalRows actualModulus 7702 (.rotr 7686 2) := by core033_kernel_decide
theorem stats7702 : actualRows7702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7702=5124 := by core033_kernel_decide
theorem rows7703 : actualRows7703=WordField.canonicalRows actualModulus 7703 (.rotr 7686 13) := by core033_kernel_decide
theorem stats7703 : actualRows7703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7703=5124 := by core033_kernel_decide
theorem rows7704 : actualRows7704=WordField.canonicalRows actualModulus 7704 (.bxor 7702 7703) := by core033_kernel_decide
theorem stats7704 : actualRows7704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7704=7428 := by core033_kernel_decide
theorem rows7705 : actualRows7705=WordField.canonicalRows actualModulus 7705 (.rotr 7686 22) := by core033_kernel_decide
theorem stats7705 : actualRows7705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7705=5124 := by core033_kernel_decide
theorem rows7706 : actualRows7706=WordField.canonicalRows actualModulus 7706 (.bxor 7704 7705) := by core033_kernel_decide
theorem stats7706 : actualRows7706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7706=7428 := by core033_kernel_decide
theorem rows7707 : actualRows7707=WordField.canonicalRows actualModulus 7707 (.band 7686 7659) := by core033_kernel_decide
theorem stats7707 : actualRows7707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7707=5124 := by core033_kernel_decide
theorem rows7708 : actualRows7708=WordField.canonicalRows actualModulus 7708 (.band 7686 7632) := by core033_kernel_decide
theorem stats7708 : actualRows7708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7708=5124 := by core033_kernel_decide
theorem rows7709 : actualRows7709=WordField.canonicalRows actualModulus 7709 (.bxor 7707 7708) := by core033_kernel_decide
theorem stats7709 : actualRows7709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7709=7428 := by core033_kernel_decide
theorem rows7710 : actualRows7710=WordField.canonicalRows actualModulus 7710 (.band 7659 7632) := by core033_kernel_decide
theorem stats7710 : actualRows7710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7710=5124 := by core033_kernel_decide
theorem rows7711 : actualRows7711=WordField.canonicalRows actualModulus 7711 (.bxor 7709 7710) := by core033_kernel_decide
theorem stats7711 : actualRows7711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7711=7428 := by core033_kernel_decide
theorem rows7712 : actualRows7712=WordField.canonicalRows actualModulus 7712 (.badd 7706 7711) := by core033_kernel_decide
theorem stats7712 : actualRows7712.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7712=5388 := by core033_kernel_decide
theorem rows7713 : actualRows7713=WordField.canonicalRows actualModulus 7713 (.badd 7701 7712) := by core033_kernel_decide
theorem stats7713 : actualRows7713.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7713=5388 := by core033_kernel_decide
theorem rows7714 : actualRows7714=WordField.canonicalRows actualModulus 7714 (.badd 7605 7701) := by core033_kernel_decide
theorem stats7714 : actualRows7714.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7714=5388 := by core033_kernel_decide
theorem rows7715 : actualRows7715=WordField.canonicalRows actualModulus 7715 (.rotr 7714 6) := by core033_kernel_decide
theorem stats7715 : actualRows7715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7715=5124 := by core033_kernel_decide
theorem rows7716 : actualRows7716=WordField.canonicalRows actualModulus 7716 (.rotr 7714 11) := by core033_kernel_decide
theorem stats7716 : actualRows7716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7716=5124 := by core033_kernel_decide
theorem rows7717 : actualRows7717=WordField.canonicalRows actualModulus 7717 (.bxor 7715 7716) := by core033_kernel_decide
theorem stats7717 : actualRows7717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7717=7428 := by core033_kernel_decide
theorem rows7718 : actualRows7718=WordField.canonicalRows actualModulus 7718 (.rotr 7714 25) := by core033_kernel_decide
theorem stats7718 : actualRows7718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7718=5124 := by core033_kernel_decide
theorem rows7719 : actualRows7719=WordField.canonicalRows actualModulus 7719 (.bxor 7717 7718) := by core033_kernel_decide
theorem stats7719 : actualRows7719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7719=7428 := by core033_kernel_decide
theorem rows7720 : actualRows7720=WordField.canonicalRows actualModulus 7720 (.badd 7633 7719) := by core033_kernel_decide
theorem stats7720 : actualRows7720.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7720=5388 := by core033_kernel_decide
theorem rows7721 : actualRows7721=WordField.canonicalRows actualModulus 7721 (.band 7714 7687) := by core033_kernel_decide
theorem stats7721 : actualRows7721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7721=5124 := by core033_kernel_decide
theorem rows7722 : actualRows7722=WordField.canonicalRows actualModulus 7722 (.bnot 7714) := by core033_kernel_decide
theorem stats7722 : actualRows7722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7722=6276 := by core033_kernel_decide
def partRows119 : List R1CS.Row := actualRows7659++actualRows7660++actualRows7661++actualRows7662++actualRows7663++actualRows7664++actualRows7665++actualRows7666++actualRows7667++actualRows7668++actualRows7669++actualRows7670++actualRows7671++actualRows7672++actualRows7673++actualRows7674++actualRows7675++actualRows7676++actualRows7677++actualRows7678++actualRows7679++actualRows7680++actualRows7681++actualRows7682++actualRows7683++actualRows7684++actualRows7685++actualRows7686++actualRows7687++actualRows7688++actualRows7689++actualRows7690++actualRows7691++actualRows7692++actualRows7693++actualRows7694++actualRows7695++actualRows7696++actualRows7697++actualRows7698++actualRows7699++actualRows7700++actualRows7701++actualRows7702++actualRows7703++actualRows7704++actualRows7705++actualRows7706++actualRows7707++actualRows7708++actualRows7709++actualRows7710++actualRows7711++actualRows7712++actualRows7713++actualRows7714++actualRows7715++actualRows7716++actualRows7717++actualRows7718++actualRows7719++actualRows7720++actualRows7721++actualRows7722
def partOps119 : List WordIR.Op := [.badd 7647 7658,.badd 1968 7647,.rotr 7660 6,.rotr 7660 11,.bxor 7661 7662,.rotr 7660 25,.bxor 7663 7664,.badd 7579 7665,.band 7660 7633,.bnot 7660,.band 7668 7606,.bxor 7667 7669,.badd 7666 7670,.literal (BitVec.ofNat 32 961987163),.badd 7671 7672,.badd 7673 5710,.rotr 7659 2,.rotr 7659 13,.bxor 7675 7676,.rotr 7659 22,.bxor 7677 7678,.band 7659 7632,.band 7659 7605,.bxor 7680 7681,.band 7632 7605,.bxor 7682 7683,.badd 7679 7684,.badd 7674 7685,.badd 7578 7674,.rotr 7687 6,.rotr 7687 11,.bxor 7688 7689,.rotr 7687 25,.bxor 7690 7691,.badd 7606 7692,.band 7687 7660,.bnot 7687,.band 7695 7633,.bxor 7694 7696,.badd 7693 7697,.literal (BitVec.ofNat 32 1508970993),.badd 7698 7699,.badd 7700 5716,.rotr 7686 2,.rotr 7686 13,.bxor 7702 7703,.rotr 7686 22,.bxor 7704 7705,.band 7686 7659,.band 7686 7632,.bxor 7707 7708,.band 7659 7632,.bxor 7709 7710,.badd 7706 7711,.badd 7701 7712,.badd 7605 7701,.rotr 7714 6,.rotr 7714 11,.bxor 7715 7716,.rotr 7714 25,.bxor 7717 7718,.badd 7633 7719,.band 7714 7687,.bnot 7714]
theorem partExact119 : partRows119=WordField.rows actualModulus 7659 partOps119 := by
  simp only [partRows119,partOps119,WordField.rows,rows7659,rows7660,rows7661,rows7662,rows7663,rows7664,rows7665,rows7666,rows7667,rows7668,rows7669,rows7670,rows7671,rows7672,rows7673,rows7674,rows7675,rows7676,rows7677,rows7678,rows7679,rows7680,rows7681,rows7682,rows7683,rows7684,rows7685,rows7686,rows7687,rows7688,rows7689,rows7690,rows7691,rows7692,rows7693,rows7694,rows7695,rows7696,rows7697,rows7698,rows7699,rows7700,rows7701,rows7702,rows7703,rows7704,rows7705,rows7706,rows7707,rows7708,rows7709,rows7710,rows7711,rows7712,rows7713,rows7714,rows7715,rows7716,rows7717,rows7718,rows7719,rows7720,rows7721,rows7722,List.append_assoc,List.append_nil]
theorem partLength119 : partOps119.length=64 := by decide
theorem partStats119 : partRows119.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows119=370440 := by
  simp only [partRows119,List.length_append,MatrixRowBlocks.rows_weight_append,stats7659.1,stats7659.2,stats7660.1,stats7660.2,stats7661.1,stats7661.2,stats7662.1,stats7662.2,stats7663.1,stats7663.2,stats7664.1,stats7664.2,stats7665.1,stats7665.2,stats7666.1,stats7666.2,stats7667.1,stats7667.2,stats7668.1,stats7668.2,stats7669.1,stats7669.2,stats7670.1,stats7670.2,stats7671.1,stats7671.2,stats7672.1,stats7672.2,stats7673.1,stats7673.2,stats7674.1,stats7674.2,stats7675.1,stats7675.2,stats7676.1,stats7676.2,stats7677.1,stats7677.2,stats7678.1,stats7678.2,stats7679.1,stats7679.2,stats7680.1,stats7680.2,stats7681.1,stats7681.2,stats7682.1,stats7682.2,stats7683.1,stats7683.2,stats7684.1,stats7684.2,stats7685.1,stats7685.2,stats7686.1,stats7686.2,stats7687.1,stats7687.2,stats7688.1,stats7688.2,stats7689.1,stats7689.2,stats7690.1,stats7690.2,stats7691.1,stats7691.2,stats7692.1,stats7692.2,stats7693.1,stats7693.2,stats7694.1,stats7694.2,stats7695.1,stats7695.2,stats7696.1,stats7696.2,stats7697.1,stats7697.2,stats7698.1,stats7698.2,stats7699.1,stats7699.2,stats7700.1,stats7700.2,stats7701.1,stats7701.2,stats7702.1,stats7702.2,stats7703.1,stats7703.2,stats7704.1,stats7704.2,stats7705.1,stats7705.2,stats7706.1,stats7706.2,stats7707.1,stats7707.2,stats7708.1,stats7708.2,stats7709.1,stats7709.2,stats7710.1,stats7710.2,stats7711.1,stats7711.2,stats7712.1,stats7712.2,stats7713.1,stats7713.2,stats7714.1,stats7714.2,stats7715.1,stats7715.2,stats7716.1,stats7716.2,stats7717.1,stats7717.2,stats7718.1,stats7718.2,stats7719.1,stats7719.2,stats7720.1,stats7720.2,stats7721.1,stats7721.2,stats7722.1,stats7722.2]
  decide
end PathRoundDispatchCheckedRows
