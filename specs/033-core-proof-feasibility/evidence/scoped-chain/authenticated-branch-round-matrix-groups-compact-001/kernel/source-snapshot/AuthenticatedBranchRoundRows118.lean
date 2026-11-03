import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData119
import AuthenticatedBranchRoundInstructionMatrixData120
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7670 : actualRows7670=WordField.canonicalRows actualModulus 7670 (.bnot 7669) := by core033_kernel_decide
theorem stats7670 : actualRows7670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7670=6276 := by core033_kernel_decide
theorem rows7671 : actualRows7671=WordField.canonicalRows actualModulus 7671 (.bxor 7668 7670) := by core033_kernel_decide
theorem stats7671 : actualRows7671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7671=7428 := by core033_kernel_decide
theorem rows7672 : actualRows7672=WordField.canonicalRows actualModulus 7672 (.shr 5570 8) := by core033_kernel_decide
theorem stats7672 : actualRows7672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7672=4548 := by core033_kernel_decide
theorem rows7673 : actualRows7673=WordField.canonicalRows actualModulus 7673 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7673 : actualRows7673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7673=2820 := by core033_kernel_decide
theorem rows7674 : actualRows7674=WordField.canonicalRows actualModulus 7674 (.bnot 7673) := by core033_kernel_decide
theorem stats7674 : actualRows7674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7674=6276 := by core033_kernel_decide
theorem rows7675 : actualRows7675=WordField.canonicalRows actualModulus 7675 (.badd 7672 7674) := by core033_kernel_decide
theorem stats7675 : actualRows7675.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7675=5388 := by core033_kernel_decide
theorem rows7676 : actualRows7676=WordField.canonicalRows actualModulus 7676 (.bnot 7675) := by core033_kernel_decide
theorem stats7676 : actualRows7676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7676=6276 := by core033_kernel_decide
theorem rows7677 : actualRows7677=WordField.canonicalRows actualModulus 7677 (.band 7671 7676) := by core033_kernel_decide
theorem stats7677 : actualRows7677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7677=5124 := by core033_kernel_decide
theorem rows7678 : actualRows7678=WordField.canonicalRows actualModulus 7678 (.bxor 7667 7677) := by core033_kernel_decide
theorem stats7678 : actualRows7678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7678=7428 := by core033_kernel_decide
theorem rows7679 : actualRows7679=WordField.canonicalRows actualModulus 7679 (.shr 7678 31) := by core033_kernel_decide
theorem stats7679 : actualRows7679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7679=2892 := by core033_kernel_decide
theorem rows7680 : actualRows7680=WordField.canonicalRows actualModulus 7680 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7680 : actualRows7680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7680=2892 := by core033_kernel_decide
theorem rows7681 : actualRows7681=WordField.canonicalRows actualModulus 7681 (.bxor 7679 7680) := by core033_kernel_decide
theorem stats7681 : actualRows7681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7681=7428 := by core033_kernel_decide
theorem rows7682 : actualRows7682=WordField.canonicalRows actualModulus 7682 (.shr 5622 8) := by core033_kernel_decide
theorem stats7682 : actualRows7682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7682=4548 := by core033_kernel_decide
theorem rows7683 : actualRows7683=WordField.canonicalRows actualModulus 7683 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7683 : actualRows7683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7683=2820 := by core033_kernel_decide
theorem rows7684 : actualRows7684=WordField.canonicalRows actualModulus 7684 (.bnot 7683) := by core033_kernel_decide
theorem stats7684 : actualRows7684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7684=6276 := by core033_kernel_decide
theorem rows7685 : actualRows7685=WordField.canonicalRows actualModulus 7685 (.band 7682 7684) := by core033_kernel_decide
theorem stats7685 : actualRows7685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7685=5124 := by core033_kernel_decide
theorem rows7686 : actualRows7686=WordField.canonicalRows actualModulus 7686 (.shr 5622 8) := by core033_kernel_decide
theorem stats7686 : actualRows7686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7686=4548 := by core033_kernel_decide
theorem rows7687 : actualRows7687=WordField.canonicalRows actualModulus 7687 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7687 : actualRows7687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7687=2820 := by core033_kernel_decide
theorem rows7688 : actualRows7688=WordField.canonicalRows actualModulus 7688 (.bnot 7687) := by core033_kernel_decide
theorem stats7688 : actualRows7688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7688=6276 := by core033_kernel_decide
theorem rows7689 : actualRows7689=WordField.canonicalRows actualModulus 7689 (.bxor 7686 7688) := by core033_kernel_decide
theorem stats7689 : actualRows7689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7689=7428 := by core033_kernel_decide
theorem rows7690 : actualRows7690=WordField.canonicalRows actualModulus 7690 (.shr 5622 8) := by core033_kernel_decide
theorem stats7690 : actualRows7690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7690=4548 := by core033_kernel_decide
theorem rows7691 : actualRows7691=WordField.canonicalRows actualModulus 7691 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7691 : actualRows7691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7691=2820 := by core033_kernel_decide
theorem rows7692 : actualRows7692=WordField.canonicalRows actualModulus 7692 (.bnot 7691) := by core033_kernel_decide
theorem stats7692 : actualRows7692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7692=6276 := by core033_kernel_decide
theorem rows7693 : actualRows7693=WordField.canonicalRows actualModulus 7693 (.badd 7690 7692) := by core033_kernel_decide
theorem stats7693 : actualRows7693.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7693=5388 := by core033_kernel_decide
theorem rows7694 : actualRows7694=WordField.canonicalRows actualModulus 7694 (.bnot 7693) := by core033_kernel_decide
theorem stats7694 : actualRows7694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7694=6276 := by core033_kernel_decide
theorem rows7695 : actualRows7695=WordField.canonicalRows actualModulus 7695 (.band 7689 7694) := by core033_kernel_decide
theorem stats7695 : actualRows7695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7695=5124 := by core033_kernel_decide
theorem rows7696 : actualRows7696=WordField.canonicalRows actualModulus 7696 (.bxor 7685 7695) := by core033_kernel_decide
theorem stats7696 : actualRows7696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7696=7428 := by core033_kernel_decide
theorem rows7697 : actualRows7697=WordField.canonicalRows actualModulus 7697 (.shr 7696 31) := by core033_kernel_decide
theorem stats7697 : actualRows7697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7697=2892 := by core033_kernel_decide
theorem rows7698 : actualRows7698=WordField.canonicalRows actualModulus 7698 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7698 : actualRows7698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7698=2892 := by core033_kernel_decide
theorem rows7699 : actualRows7699=WordField.canonicalRows actualModulus 7699 (.bxor 7697 7698) := by core033_kernel_decide
theorem stats7699 : actualRows7699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7699=7428 := by core033_kernel_decide
theorem rows7700 : actualRows7700=WordField.canonicalRows actualModulus 7700 (.shr 5674 8) := by core033_kernel_decide
theorem stats7700 : actualRows7700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7700=4548 := by core033_kernel_decide
theorem rows7701 : actualRows7701=WordField.canonicalRows actualModulus 7701 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7701 : actualRows7701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7701=2820 := by core033_kernel_decide
theorem rows7702 : actualRows7702=WordField.canonicalRows actualModulus 7702 (.bnot 7701) := by core033_kernel_decide
theorem stats7702 : actualRows7702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7702=6276 := by core033_kernel_decide
theorem rows7703 : actualRows7703=WordField.canonicalRows actualModulus 7703 (.band 7700 7702) := by core033_kernel_decide
theorem stats7703 : actualRows7703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7703=5124 := by core033_kernel_decide
theorem rows7704 : actualRows7704=WordField.canonicalRows actualModulus 7704 (.shr 5674 8) := by core033_kernel_decide
theorem stats7704 : actualRows7704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7704=4548 := by core033_kernel_decide
theorem rows7705 : actualRows7705=WordField.canonicalRows actualModulus 7705 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7705 : actualRows7705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7705=2820 := by core033_kernel_decide
theorem rows7706 : actualRows7706=WordField.canonicalRows actualModulus 7706 (.bnot 7705) := by core033_kernel_decide
theorem stats7706 : actualRows7706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7706=6276 := by core033_kernel_decide
theorem rows7707 : actualRows7707=WordField.canonicalRows actualModulus 7707 (.bxor 7704 7706) := by core033_kernel_decide
theorem stats7707 : actualRows7707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7707=7428 := by core033_kernel_decide
theorem rows7708 : actualRows7708=WordField.canonicalRows actualModulus 7708 (.shr 5674 8) := by core033_kernel_decide
theorem stats7708 : actualRows7708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7708=4548 := by core033_kernel_decide
theorem rows7709 : actualRows7709=WordField.canonicalRows actualModulus 7709 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7709 : actualRows7709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7709=2820 := by core033_kernel_decide
theorem rows7710 : actualRows7710=WordField.canonicalRows actualModulus 7710 (.bnot 7709) := by core033_kernel_decide
theorem stats7710 : actualRows7710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7710=6276 := by core033_kernel_decide
theorem rows7711 : actualRows7711=WordField.canonicalRows actualModulus 7711 (.badd 7708 7710) := by core033_kernel_decide
theorem stats7711 : actualRows7711.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7711=5388 := by core033_kernel_decide
theorem rows7712 : actualRows7712=WordField.canonicalRows actualModulus 7712 (.bnot 7711) := by core033_kernel_decide
theorem stats7712 : actualRows7712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7712=6276 := by core033_kernel_decide
theorem rows7713 : actualRows7713=WordField.canonicalRows actualModulus 7713 (.band 7707 7712) := by core033_kernel_decide
theorem stats7713 : actualRows7713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7713=5124 := by core033_kernel_decide
theorem rows7714 : actualRows7714=WordField.canonicalRows actualModulus 7714 (.bxor 7703 7713) := by core033_kernel_decide
theorem stats7714 : actualRows7714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7714=7428 := by core033_kernel_decide
theorem rows7715 : actualRows7715=WordField.canonicalRows actualModulus 7715 (.shr 7714 31) := by core033_kernel_decide
theorem stats7715 : actualRows7715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7715=2892 := by core033_kernel_decide
theorem rows7716 : actualRows7716=WordField.canonicalRows actualModulus 7716 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7716 : actualRows7716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7716=2892 := by core033_kernel_decide
theorem rows7717 : actualRows7717=WordField.canonicalRows actualModulus 7717 (.bxor 7715 7716) := by core033_kernel_decide
theorem stats7717 : actualRows7717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7717=7428 := by core033_kernel_decide
theorem rows7718 : actualRows7718=WordField.canonicalRows actualModulus 7718 (.shr 5726 8) := by core033_kernel_decide
theorem stats7718 : actualRows7718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7718=4548 := by core033_kernel_decide
theorem rows7719 : actualRows7719=WordField.canonicalRows actualModulus 7719 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7719 : actualRows7719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7719=2820 := by core033_kernel_decide
theorem rows7720 : actualRows7720=WordField.canonicalRows actualModulus 7720 (.bnot 7719) := by core033_kernel_decide
theorem stats7720 : actualRows7720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7720=6276 := by core033_kernel_decide
theorem rows7721 : actualRows7721=WordField.canonicalRows actualModulus 7721 (.band 7718 7720) := by core033_kernel_decide
theorem stats7721 : actualRows7721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7721=5124 := by core033_kernel_decide
theorem rows7722 : actualRows7722=WordField.canonicalRows actualModulus 7722 (.shr 5726 8) := by core033_kernel_decide
theorem stats7722 : actualRows7722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7722=4548 := by core033_kernel_decide
theorem rows7723 : actualRows7723=WordField.canonicalRows actualModulus 7723 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7723 : actualRows7723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7723=2820 := by core033_kernel_decide
theorem rows7724 : actualRows7724=WordField.canonicalRows actualModulus 7724 (.bnot 7723) := by core033_kernel_decide
theorem stats7724 : actualRows7724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7724=6276 := by core033_kernel_decide
theorem rows7725 : actualRows7725=WordField.canonicalRows actualModulus 7725 (.bxor 7722 7724) := by core033_kernel_decide
theorem stats7725 : actualRows7725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7725=7428 := by core033_kernel_decide
theorem rows7726 : actualRows7726=WordField.canonicalRows actualModulus 7726 (.shr 5726 8) := by core033_kernel_decide
theorem stats7726 : actualRows7726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7726=4548 := by core033_kernel_decide
theorem rows7727 : actualRows7727=WordField.canonicalRows actualModulus 7727 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7727 : actualRows7727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7727=2820 := by core033_kernel_decide
theorem rows7728 : actualRows7728=WordField.canonicalRows actualModulus 7728 (.bnot 7727) := by core033_kernel_decide
theorem stats7728 : actualRows7728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7728=6276 := by core033_kernel_decide
theorem rows7729 : actualRows7729=WordField.canonicalRows actualModulus 7729 (.badd 7726 7728) := by core033_kernel_decide
theorem stats7729 : actualRows7729.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7729=5388 := by core033_kernel_decide
theorem rows7730 : actualRows7730=WordField.canonicalRows actualModulus 7730 (.bnot 7729) := by core033_kernel_decide
theorem stats7730 : actualRows7730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7730=6276 := by core033_kernel_decide
theorem rows7731 : actualRows7731=WordField.canonicalRows actualModulus 7731 (.band 7725 7730) := by core033_kernel_decide
theorem stats7731 : actualRows7731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7731=5124 := by core033_kernel_decide
theorem rows7732 : actualRows7732=WordField.canonicalRows actualModulus 7732 (.bxor 7721 7731) := by core033_kernel_decide
theorem stats7732 : actualRows7732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7732=7428 := by core033_kernel_decide
theorem rows7733 : actualRows7733=WordField.canonicalRows actualModulus 7733 (.shr 7732 31) := by core033_kernel_decide
theorem stats7733 : actualRows7733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7733=2892 := by core033_kernel_decide
def partRows118 : List R1CS.Row := actualRows7670++actualRows7671++actualRows7672++actualRows7673++actualRows7674++actualRows7675++actualRows7676++actualRows7677++actualRows7678++actualRows7679++actualRows7680++actualRows7681++actualRows7682++actualRows7683++actualRows7684++actualRows7685++actualRows7686++actualRows7687++actualRows7688++actualRows7689++actualRows7690++actualRows7691++actualRows7692++actualRows7693++actualRows7694++actualRows7695++actualRows7696++actualRows7697++actualRows7698++actualRows7699++actualRows7700++actualRows7701++actualRows7702++actualRows7703++actualRows7704++actualRows7705++actualRows7706++actualRows7707++actualRows7708++actualRows7709++actualRows7710++actualRows7711++actualRows7712++actualRows7713++actualRows7714++actualRows7715++actualRows7716++actualRows7717++actualRows7718++actualRows7719++actualRows7720++actualRows7721++actualRows7722++actualRows7723++actualRows7724++actualRows7725++actualRows7726++actualRows7727++actualRows7728++actualRows7729++actualRows7730++actualRows7731++actualRows7732++actualRows7733
def partOps118 : List WordIR.Op := [.bnot 7669,.bxor 7668 7670,.shr 5570 8,.literal (BitVec.ofNat 32 0),.bnot 7673,.badd 7672 7674,.bnot 7675,.band 7671 7676,.bxor 7667 7677,.shr 7678 31,.literal (BitVec.ofNat 32 1),.bxor 7679 7680,.shr 5622 8,.literal (BitVec.ofNat 32 0),.bnot 7683,.band 7682 7684,.shr 5622 8,.literal (BitVec.ofNat 32 0),.bnot 7687,.bxor 7686 7688,.shr 5622 8,.literal (BitVec.ofNat 32 0),.bnot 7691,.badd 7690 7692,.bnot 7693,.band 7689 7694,.bxor 7685 7695,.shr 7696 31,.literal (BitVec.ofNat 32 1),.bxor 7697 7698,.shr 5674 8,.literal (BitVec.ofNat 32 0),.bnot 7701,.band 7700 7702,.shr 5674 8,.literal (BitVec.ofNat 32 0),.bnot 7705,.bxor 7704 7706,.shr 5674 8,.literal (BitVec.ofNat 32 0),.bnot 7709,.badd 7708 7710,.bnot 7711,.band 7707 7712,.bxor 7703 7713,.shr 7714 31,.literal (BitVec.ofNat 32 1),.bxor 7715 7716,.shr 5726 8,.literal (BitVec.ofNat 32 0),.bnot 7719,.band 7718 7720,.shr 5726 8,.literal (BitVec.ofNat 32 0),.bnot 7723,.bxor 7722 7724,.shr 5726 8,.literal (BitVec.ofNat 32 0),.bnot 7727,.badd 7726 7728,.bnot 7729,.band 7725 7730,.bxor 7721 7731,.shr 7732 31]
theorem partExact118 : partRows118=WordField.rows actualModulus 7670 partOps118 := by
  simp only [partRows118,partOps118,WordField.rows,rows7670,rows7671,rows7672,rows7673,rows7674,rows7675,rows7676,rows7677,rows7678,rows7679,rows7680,rows7681,rows7682,rows7683,rows7684,rows7685,rows7686,rows7687,rows7688,rows7689,rows7690,rows7691,rows7692,rows7693,rows7694,rows7695,rows7696,rows7697,rows7698,rows7699,rows7700,rows7701,rows7702,rows7703,rows7704,rows7705,rows7706,rows7707,rows7708,rows7709,rows7710,rows7711,rows7712,rows7713,rows7714,rows7715,rows7716,rows7717,rows7718,rows7719,rows7720,rows7721,rows7722,rows7723,rows7724,rows7725,rows7726,rows7727,rows7728,rows7729,rows7730,rows7731,rows7732,rows7733,List.append_assoc,List.append_nil]
theorem partLength118 : partOps118.length=64 := by decide
theorem partStats118 : partRows118.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows118=327192 := by
  simp only [partRows118,List.length_append,MatrixRowBlocks.rows_weight_append,stats7670.1,stats7670.2,stats7671.1,stats7671.2,stats7672.1,stats7672.2,stats7673.1,stats7673.2,stats7674.1,stats7674.2,stats7675.1,stats7675.2,stats7676.1,stats7676.2,stats7677.1,stats7677.2,stats7678.1,stats7678.2,stats7679.1,stats7679.2,stats7680.1,stats7680.2,stats7681.1,stats7681.2,stats7682.1,stats7682.2,stats7683.1,stats7683.2,stats7684.1,stats7684.2,stats7685.1,stats7685.2,stats7686.1,stats7686.2,stats7687.1,stats7687.2,stats7688.1,stats7688.2,stats7689.1,stats7689.2,stats7690.1,stats7690.2,stats7691.1,stats7691.2,stats7692.1,stats7692.2,stats7693.1,stats7693.2,stats7694.1,stats7694.2,stats7695.1,stats7695.2,stats7696.1,stats7696.2,stats7697.1,stats7697.2,stats7698.1,stats7698.2,stats7699.1,stats7699.2,stats7700.1,stats7700.2,stats7701.1,stats7701.2,stats7702.1,stats7702.2,stats7703.1,stats7703.2,stats7704.1,stats7704.2,stats7705.1,stats7705.2,stats7706.1,stats7706.2,stats7707.1,stats7707.2,stats7708.1,stats7708.2,stats7709.1,stats7709.2,stats7710.1,stats7710.2,stats7711.1,stats7711.2,stats7712.1,stats7712.2,stats7713.1,stats7713.2,stats7714.1,stats7714.2,stats7715.1,stats7715.2,stats7716.1,stats7716.2,stats7717.1,stats7717.2,stats7718.1,stats7718.2,stats7719.1,stats7719.2,stats7720.1,stats7720.2,stats7721.1,stats7721.2,stats7722.1,stats7722.2,stats7723.1,stats7723.2,stats7724.1,stats7724.2,stats7725.1,stats7725.2,stats7726.1,stats7726.2,stats7727.1,stats7727.2,stats7728.1,stats7728.2,stats7729.1,stats7729.2,stats7730.1,stats7730.2,stats7731.1,stats7731.2,stats7732.1,stats7732.2,stats7733.1,stats7733.2]
  decide
end AuthenticatedBranchRoundCheckedRows
