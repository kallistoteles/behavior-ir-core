import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData120
import FrameHashControllerInstructionMatrixData121
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7723 : actualRows7723=WordField.canonicalRows actualModulus 7723 (.literal (BitVec.ofNat 32 2821834349)) := by core033_kernel_decide
theorem stats7723 : actualRows7723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7723=3900 := by core033_kernel_decide
theorem rows7724 : actualRows7724=WordField.canonicalRows actualModulus 7724 (.badd 7722 7723) := by core033_kernel_decide
theorem stats7724 : actualRows7724.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7724=5388 := by core033_kernel_decide
theorem rows7725 : actualRows7725=WordField.canonicalRows actualModulus 7725 (.badd 7724 6542) := by core033_kernel_decide
theorem stats7725 : actualRows7725.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7725=5388 := by core033_kernel_decide
theorem rows7726 : actualRows7726=WordField.canonicalRows actualModulus 7726 (.rotr 7710 2) := by core033_kernel_decide
theorem stats7726 : actualRows7726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7726=5124 := by core033_kernel_decide
theorem rows7727 : actualRows7727=WordField.canonicalRows actualModulus 7727 (.rotr 7710 13) := by core033_kernel_decide
theorem stats7727 : actualRows7727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7727=5124 := by core033_kernel_decide
theorem rows7728 : actualRows7728=WordField.canonicalRows actualModulus 7728 (.bxor 7726 7727) := by core033_kernel_decide
theorem stats7728 : actualRows7728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7728=7428 := by core033_kernel_decide
theorem rows7729 : actualRows7729=WordField.canonicalRows actualModulus 7729 (.rotr 7710 22) := by core033_kernel_decide
theorem stats7729 : actualRows7729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7729=5124 := by core033_kernel_decide
theorem rows7730 : actualRows7730=WordField.canonicalRows actualModulus 7730 (.bxor 7728 7729) := by core033_kernel_decide
theorem stats7730 : actualRows7730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7730=7428 := by core033_kernel_decide
theorem rows7731 : actualRows7731=WordField.canonicalRows actualModulus 7731 (.band 7710 7683) := by core033_kernel_decide
theorem stats7731 : actualRows7731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7731=5124 := by core033_kernel_decide
theorem rows7732 : actualRows7732=WordField.canonicalRows actualModulus 7732 (.band 7710 7656) := by core033_kernel_decide
theorem stats7732 : actualRows7732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7732=5124 := by core033_kernel_decide
theorem rows7733 : actualRows7733=WordField.canonicalRows actualModulus 7733 (.bxor 7731 7732) := by core033_kernel_decide
theorem stats7733 : actualRows7733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7733=7428 := by core033_kernel_decide
theorem rows7734 : actualRows7734=WordField.canonicalRows actualModulus 7734 (.band 7683 7656) := by core033_kernel_decide
theorem stats7734 : actualRows7734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7734=5124 := by core033_kernel_decide
theorem rows7735 : actualRows7735=WordField.canonicalRows actualModulus 7735 (.bxor 7733 7734) := by core033_kernel_decide
theorem stats7735 : actualRows7735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7735=7428 := by core033_kernel_decide
theorem rows7736 : actualRows7736=WordField.canonicalRows actualModulus 7736 (.badd 7730 7735) := by core033_kernel_decide
theorem stats7736 : actualRows7736.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7736=5388 := by core033_kernel_decide
theorem rows7737 : actualRows7737=WordField.canonicalRows actualModulus 7737 (.badd 7725 7736) := by core033_kernel_decide
theorem stats7737 : actualRows7737.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7737=5388 := by core033_kernel_decide
theorem rows7738 : actualRows7738=WordField.canonicalRows actualModulus 7738 (.badd 7629 7725) := by core033_kernel_decide
theorem stats7738 : actualRows7738.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7738=5388 := by core033_kernel_decide
theorem rows7739 : actualRows7739=WordField.canonicalRows actualModulus 7739 (.rotr 7738 6) := by core033_kernel_decide
theorem stats7739 : actualRows7739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7739=5124 := by core033_kernel_decide
theorem rows7740 : actualRows7740=WordField.canonicalRows actualModulus 7740 (.rotr 7738 11) := by core033_kernel_decide
theorem stats7740 : actualRows7740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7740=5124 := by core033_kernel_decide
theorem rows7741 : actualRows7741=WordField.canonicalRows actualModulus 7741 (.bxor 7739 7740) := by core033_kernel_decide
theorem stats7741 : actualRows7741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7741=7428 := by core033_kernel_decide
theorem rows7742 : actualRows7742=WordField.canonicalRows actualModulus 7742 (.rotr 7738 25) := by core033_kernel_decide
theorem stats7742 : actualRows7742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7742=5124 := by core033_kernel_decide
theorem rows7743 : actualRows7743=WordField.canonicalRows actualModulus 7743 (.bxor 7741 7742) := by core033_kernel_decide
theorem stats7743 : actualRows7743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7743=7428 := by core033_kernel_decide
theorem rows7744 : actualRows7744=WordField.canonicalRows actualModulus 7744 (.badd 7657 7743) := by core033_kernel_decide
theorem stats7744 : actualRows7744.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7744=5388 := by core033_kernel_decide
theorem rows7745 : actualRows7745=WordField.canonicalRows actualModulus 7745 (.band 7738 7711) := by core033_kernel_decide
theorem stats7745 : actualRows7745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7745=5124 := by core033_kernel_decide
theorem rows7746 : actualRows7746=WordField.canonicalRows actualModulus 7746 (.bnot 7738) := by core033_kernel_decide
theorem stats7746 : actualRows7746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7746=6276 := by core033_kernel_decide
theorem rows7747 : actualRows7747=WordField.canonicalRows actualModulus 7747 (.band 7746 7684) := by core033_kernel_decide
theorem stats7747 : actualRows7747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7747=5124 := by core033_kernel_decide
theorem rows7748 : actualRows7748=WordField.canonicalRows actualModulus 7748 (.bxor 7745 7747) := by core033_kernel_decide
theorem stats7748 : actualRows7748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7748=7428 := by core033_kernel_decide
theorem rows7749 : actualRows7749=WordField.canonicalRows actualModulus 7749 (.badd 7744 7748) := by core033_kernel_decide
theorem stats7749 : actualRows7749.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7749=5388 := by core033_kernel_decide
theorem rows7750 : actualRows7750=WordField.canonicalRows actualModulus 7750 (.literal (BitVec.ofNat 32 2952996808)) := by core033_kernel_decide
theorem stats7750 : actualRows7750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7750=3684 := by core033_kernel_decide
theorem rows7751 : actualRows7751=WordField.canonicalRows actualModulus 7751 (.badd 7749 7750) := by core033_kernel_decide
theorem stats7751 : actualRows7751.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7751=5388 := by core033_kernel_decide
theorem rows7752 : actualRows7752=WordField.canonicalRows actualModulus 7752 (.badd 7751 6555) := by core033_kernel_decide
theorem stats7752 : actualRows7752.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7752=5388 := by core033_kernel_decide
theorem rows7753 : actualRows7753=WordField.canonicalRows actualModulus 7753 (.rotr 7737 2) := by core033_kernel_decide
theorem stats7753 : actualRows7753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7753=5124 := by core033_kernel_decide
theorem rows7754 : actualRows7754=WordField.canonicalRows actualModulus 7754 (.rotr 7737 13) := by core033_kernel_decide
theorem stats7754 : actualRows7754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7754=5124 := by core033_kernel_decide
theorem rows7755 : actualRows7755=WordField.canonicalRows actualModulus 7755 (.bxor 7753 7754) := by core033_kernel_decide
theorem stats7755 : actualRows7755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7755=7428 := by core033_kernel_decide
theorem rows7756 : actualRows7756=WordField.canonicalRows actualModulus 7756 (.rotr 7737 22) := by core033_kernel_decide
theorem stats7756 : actualRows7756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7756=5124 := by core033_kernel_decide
theorem rows7757 : actualRows7757=WordField.canonicalRows actualModulus 7757 (.bxor 7755 7756) := by core033_kernel_decide
theorem stats7757 : actualRows7757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7757=7428 := by core033_kernel_decide
theorem rows7758 : actualRows7758=WordField.canonicalRows actualModulus 7758 (.band 7737 7710) := by core033_kernel_decide
theorem stats7758 : actualRows7758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7758=5124 := by core033_kernel_decide
theorem rows7759 : actualRows7759=WordField.canonicalRows actualModulus 7759 (.band 7737 7683) := by core033_kernel_decide
theorem stats7759 : actualRows7759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7759=5124 := by core033_kernel_decide
theorem rows7760 : actualRows7760=WordField.canonicalRows actualModulus 7760 (.bxor 7758 7759) := by core033_kernel_decide
theorem stats7760 : actualRows7760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7760=7428 := by core033_kernel_decide
theorem rows7761 : actualRows7761=WordField.canonicalRows actualModulus 7761 (.band 7710 7683) := by core033_kernel_decide
theorem stats7761 : actualRows7761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7761=5124 := by core033_kernel_decide
theorem rows7762 : actualRows7762=WordField.canonicalRows actualModulus 7762 (.bxor 7760 7761) := by core033_kernel_decide
theorem stats7762 : actualRows7762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7762=7428 := by core033_kernel_decide
theorem rows7763 : actualRows7763=WordField.canonicalRows actualModulus 7763 (.badd 7757 7762) := by core033_kernel_decide
theorem stats7763 : actualRows7763.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7763=5388 := by core033_kernel_decide
theorem rows7764 : actualRows7764=WordField.canonicalRows actualModulus 7764 (.badd 7752 7763) := by core033_kernel_decide
theorem stats7764 : actualRows7764.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7764=5388 := by core033_kernel_decide
theorem rows7765 : actualRows7765=WordField.canonicalRows actualModulus 7765 (.badd 7656 7752) := by core033_kernel_decide
theorem stats7765 : actualRows7765.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7765=5388 := by core033_kernel_decide
theorem rows7766 : actualRows7766=WordField.canonicalRows actualModulus 7766 (.rotr 7765 6) := by core033_kernel_decide
theorem stats7766 : actualRows7766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7766=5124 := by core033_kernel_decide
theorem rows7767 : actualRows7767=WordField.canonicalRows actualModulus 7767 (.rotr 7765 11) := by core033_kernel_decide
theorem stats7767 : actualRows7767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7767=5124 := by core033_kernel_decide
theorem rows7768 : actualRows7768=WordField.canonicalRows actualModulus 7768 (.bxor 7766 7767) := by core033_kernel_decide
theorem stats7768 : actualRows7768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7768=7428 := by core033_kernel_decide
theorem rows7769 : actualRows7769=WordField.canonicalRows actualModulus 7769 (.rotr 7765 25) := by core033_kernel_decide
theorem stats7769 : actualRows7769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7769=5124 := by core033_kernel_decide
theorem rows7770 : actualRows7770=WordField.canonicalRows actualModulus 7770 (.bxor 7768 7769) := by core033_kernel_decide
theorem stats7770 : actualRows7770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7770=7428 := by core033_kernel_decide
theorem rows7771 : actualRows7771=WordField.canonicalRows actualModulus 7771 (.badd 7684 7770) := by core033_kernel_decide
theorem stats7771 : actualRows7771.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7771=5388 := by core033_kernel_decide
theorem rows7772 : actualRows7772=WordField.canonicalRows actualModulus 7772 (.band 7765 7738) := by core033_kernel_decide
theorem stats7772 : actualRows7772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7772=5124 := by core033_kernel_decide
theorem rows7773 : actualRows7773=WordField.canonicalRows actualModulus 7773 (.bnot 7765) := by core033_kernel_decide
theorem stats7773 : actualRows7773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7773=6276 := by core033_kernel_decide
theorem rows7774 : actualRows7774=WordField.canonicalRows actualModulus 7774 (.band 7773 7711) := by core033_kernel_decide
theorem stats7774 : actualRows7774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7774=5124 := by core033_kernel_decide
theorem rows7775 : actualRows7775=WordField.canonicalRows actualModulus 7775 (.bxor 7772 7774) := by core033_kernel_decide
theorem stats7775 : actualRows7775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7775=7428 := by core033_kernel_decide
theorem rows7776 : actualRows7776=WordField.canonicalRows actualModulus 7776 (.badd 7771 7775) := by core033_kernel_decide
theorem stats7776 : actualRows7776.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7776=5388 := by core033_kernel_decide
theorem rows7777 : actualRows7777=WordField.canonicalRows actualModulus 7777 (.literal (BitVec.ofNat 32 3210313671)) := by core033_kernel_decide
theorem stats7777 : actualRows7777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7777=4476 := by core033_kernel_decide
theorem rows7778 : actualRows7778=WordField.canonicalRows actualModulus 7778 (.badd 7776 7777) := by core033_kernel_decide
theorem stats7778 : actualRows7778.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7778=5388 := by core033_kernel_decide
theorem rows7779 : actualRows7779=WordField.canonicalRows actualModulus 7779 (.badd 7778 6568) := by core033_kernel_decide
theorem stats7779 : actualRows7779.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7779=5388 := by core033_kernel_decide
theorem rows7780 : actualRows7780=WordField.canonicalRows actualModulus 7780 (.rotr 7764 2) := by core033_kernel_decide
theorem stats7780 : actualRows7780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7780=5124 := by core033_kernel_decide
theorem rows7781 : actualRows7781=WordField.canonicalRows actualModulus 7781 (.rotr 7764 13) := by core033_kernel_decide
theorem stats7781 : actualRows7781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7781=5124 := by core033_kernel_decide
theorem rows7782 : actualRows7782=WordField.canonicalRows actualModulus 7782 (.bxor 7780 7781) := by core033_kernel_decide
theorem stats7782 : actualRows7782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7782=7428 := by core033_kernel_decide
theorem rows7783 : actualRows7783=WordField.canonicalRows actualModulus 7783 (.rotr 7764 22) := by core033_kernel_decide
theorem stats7783 : actualRows7783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7783=5124 := by core033_kernel_decide
theorem rows7784 : actualRows7784=WordField.canonicalRows actualModulus 7784 (.bxor 7782 7783) := by core033_kernel_decide
theorem stats7784 : actualRows7784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7784=7428 := by core033_kernel_decide
theorem rows7785 : actualRows7785=WordField.canonicalRows actualModulus 7785 (.band 7764 7737) := by core033_kernel_decide
theorem stats7785 : actualRows7785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7785=5124 := by core033_kernel_decide
theorem rows7786 : actualRows7786=WordField.canonicalRows actualModulus 7786 (.band 7764 7710) := by core033_kernel_decide
theorem stats7786 : actualRows7786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7786=5124 := by core033_kernel_decide
def partRows120 : List R1CS.Row := actualRows7723++actualRows7724++actualRows7725++actualRows7726++actualRows7727++actualRows7728++actualRows7729++actualRows7730++actualRows7731++actualRows7732++actualRows7733++actualRows7734++actualRows7735++actualRows7736++actualRows7737++actualRows7738++actualRows7739++actualRows7740++actualRows7741++actualRows7742++actualRows7743++actualRows7744++actualRows7745++actualRows7746++actualRows7747++actualRows7748++actualRows7749++actualRows7750++actualRows7751++actualRows7752++actualRows7753++actualRows7754++actualRows7755++actualRows7756++actualRows7757++actualRows7758++actualRows7759++actualRows7760++actualRows7761++actualRows7762++actualRows7763++actualRows7764++actualRows7765++actualRows7766++actualRows7767++actualRows7768++actualRows7769++actualRows7770++actualRows7771++actualRows7772++actualRows7773++actualRows7774++actualRows7775++actualRows7776++actualRows7777++actualRows7778++actualRows7779++actualRows7780++actualRows7781++actualRows7782++actualRows7783++actualRows7784++actualRows7785++actualRows7786
def partOps120 : List WordIR.Op := [.literal (BitVec.ofNat 32 2821834349),.badd 7722 7723,.badd 7724 6542,.rotr 7710 2,.rotr 7710 13,.bxor 7726 7727,.rotr 7710 22,.bxor 7728 7729,.band 7710 7683,.band 7710 7656,.bxor 7731 7732,.band 7683 7656,.bxor 7733 7734,.badd 7730 7735,.badd 7725 7736,.badd 7629 7725,.rotr 7738 6,.rotr 7738 11,.bxor 7739 7740,.rotr 7738 25,.bxor 7741 7742,.badd 7657 7743,.band 7738 7711,.bnot 7738,.band 7746 7684,.bxor 7745 7747,.badd 7744 7748,.literal (BitVec.ofNat 32 2952996808),.badd 7749 7750,.badd 7751 6555,.rotr 7737 2,.rotr 7737 13,.bxor 7753 7754,.rotr 7737 22,.bxor 7755 7756,.band 7737 7710,.band 7737 7683,.bxor 7758 7759,.band 7710 7683,.bxor 7760 7761,.badd 7757 7762,.badd 7752 7763,.badd 7656 7752,.rotr 7765 6,.rotr 7765 11,.bxor 7766 7767,.rotr 7765 25,.bxor 7768 7769,.badd 7684 7770,.band 7765 7738,.bnot 7765,.band 7773 7711,.bxor 7772 7774,.badd 7771 7775,.literal (BitVec.ofNat 32 3210313671),.badd 7776 7777,.badd 7778 6568,.rotr 7764 2,.rotr 7764 13,.bxor 7780 7781,.rotr 7764 22,.bxor 7782 7783,.band 7764 7737,.band 7764 7710]
theorem partExact120 : partRows120=WordField.rows actualModulus 7723 partOps120 := by
  simp only [partRows120,partOps120,WordField.rows,rows7723,rows7724,rows7725,rows7726,rows7727,rows7728,rows7729,rows7730,rows7731,rows7732,rows7733,rows7734,rows7735,rows7736,rows7737,rows7738,rows7739,rows7740,rows7741,rows7742,rows7743,rows7744,rows7745,rows7746,rows7747,rows7748,rows7749,rows7750,rows7751,rows7752,rows7753,rows7754,rows7755,rows7756,rows7757,rows7758,rows7759,rows7760,rows7761,rows7762,rows7763,rows7764,rows7765,rows7766,rows7767,rows7768,rows7769,rows7770,rows7771,rows7772,rows7773,rows7774,rows7775,rows7776,rows7777,rows7778,rows7779,rows7780,rows7781,rows7782,rows7783,rows7784,rows7785,rows7786,List.append_assoc,List.append_nil]
theorem partLength120 : partOps120.length=64 := by decide
theorem partStats120 : partRows120.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows120=368016 := by
  simp only [partRows120,List.length_append,MatrixRowBlocks.rows_weight_append,stats7723.1,stats7723.2,stats7724.1,stats7724.2,stats7725.1,stats7725.2,stats7726.1,stats7726.2,stats7727.1,stats7727.2,stats7728.1,stats7728.2,stats7729.1,stats7729.2,stats7730.1,stats7730.2,stats7731.1,stats7731.2,stats7732.1,stats7732.2,stats7733.1,stats7733.2,stats7734.1,stats7734.2,stats7735.1,stats7735.2,stats7736.1,stats7736.2,stats7737.1,stats7737.2,stats7738.1,stats7738.2,stats7739.1,stats7739.2,stats7740.1,stats7740.2,stats7741.1,stats7741.2,stats7742.1,stats7742.2,stats7743.1,stats7743.2,stats7744.1,stats7744.2,stats7745.1,stats7745.2,stats7746.1,stats7746.2,stats7747.1,stats7747.2,stats7748.1,stats7748.2,stats7749.1,stats7749.2,stats7750.1,stats7750.2,stats7751.1,stats7751.2,stats7752.1,stats7752.2,stats7753.1,stats7753.2,stats7754.1,stats7754.2,stats7755.1,stats7755.2,stats7756.1,stats7756.2,stats7757.1,stats7757.2,stats7758.1,stats7758.2,stats7759.1,stats7759.2,stats7760.1,stats7760.2,stats7761.1,stats7761.2,stats7762.1,stats7762.2,stats7763.1,stats7763.2,stats7764.1,stats7764.2,stats7765.1,stats7765.2,stats7766.1,stats7766.2,stats7767.1,stats7767.2,stats7768.1,stats7768.2,stats7769.1,stats7769.2,stats7770.1,stats7770.2,stats7771.1,stats7771.2,stats7772.1,stats7772.2,stats7773.1,stats7773.2,stats7774.1,stats7774.2,stats7775.1,stats7775.2,stats7776.1,stats7776.2,stats7777.1,stats7777.2,stats7778.1,stats7778.2,stats7779.1,stats7779.2,stats7780.1,stats7780.2,stats7781.1,stats7781.2,stats7782.1,stats7782.2,stats7783.1,stats7783.2,stats7784.1,stats7784.2,stats7785.1,stats7785.2,stats7786.1,stats7786.2]
  decide
end FrameHashControllerCheckedRows
