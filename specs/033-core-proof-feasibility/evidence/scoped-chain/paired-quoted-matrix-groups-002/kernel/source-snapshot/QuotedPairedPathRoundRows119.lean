import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData120
import PairedPathRoundInstructionMatrixData121
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7712 : actualRows7712=WordField.canonicalRows actualModulus 7712 (.shr 7695 10) := by core033_kernel_decide
theorem stats7712 : actualRows7712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7712=4404 := by core033_kernel_decide
theorem rows7713 : actualRows7713=WordField.canonicalRows actualModulus 7713 (.bxor 7711 7712) := by core033_kernel_decide
theorem stats7713 : actualRows7713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7713=7428 := by core033_kernel_decide
theorem rows7714 : actualRows7714=WordField.canonicalRows actualModulus 7714 (.badd 7713 7630) := by core033_kernel_decide
theorem stats7714 : actualRows7714.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7714=5388 := by core033_kernel_decide
theorem rows7715 : actualRows7715=WordField.canonicalRows actualModulus 7715 (.rotr 7526 7) := by core033_kernel_decide
theorem stats7715 : actualRows7715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7715=5124 := by core033_kernel_decide
theorem rows7716 : actualRows7716=WordField.canonicalRows actualModulus 7716 (.rotr 7526 18) := by core033_kernel_decide
theorem stats7716 : actualRows7716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7716=5124 := by core033_kernel_decide
theorem rows7717 : actualRows7717=WordField.canonicalRows actualModulus 7717 (.bxor 7715 7716) := by core033_kernel_decide
theorem stats7717 : actualRows7717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7717=7428 := by core033_kernel_decide
theorem rows7718 : actualRows7718=WordField.canonicalRows actualModulus 7718 (.shr 7526 3) := by core033_kernel_decide
theorem stats7718 : actualRows7718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7718=4908 := by core033_kernel_decide
theorem rows7719 : actualRows7719=WordField.canonicalRows actualModulus 7719 (.bxor 7717 7718) := by core033_kernel_decide
theorem stats7719 : actualRows7719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7719=7428 := by core033_kernel_decide
theorem rows7720 : actualRows7720=WordField.canonicalRows actualModulus 7720 (.badd 7714 7719) := by core033_kernel_decide
theorem stats7720 : actualRows7720.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7720=5388 := by core033_kernel_decide
theorem rows7721 : actualRows7721=WordField.canonicalRows actualModulus 7721 (.badd 7720 7513) := by core033_kernel_decide
theorem stats7721 : actualRows7721.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7721=5388 := by core033_kernel_decide
theorem rows7722 : actualRows7722=WordField.canonicalRows actualModulus 7722 (.rotr 7708 17) := by core033_kernel_decide
theorem stats7722 : actualRows7722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7722=5124 := by core033_kernel_decide
theorem rows7723 : actualRows7723=WordField.canonicalRows actualModulus 7723 (.rotr 7708 19) := by core033_kernel_decide
theorem stats7723 : actualRows7723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7723=5124 := by core033_kernel_decide
theorem rows7724 : actualRows7724=WordField.canonicalRows actualModulus 7724 (.bxor 7722 7723) := by core033_kernel_decide
theorem stats7724 : actualRows7724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7724=7428 := by core033_kernel_decide
theorem rows7725 : actualRows7725=WordField.canonicalRows actualModulus 7725 (.shr 7708 10) := by core033_kernel_decide
theorem stats7725 : actualRows7725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7725=4404 := by core033_kernel_decide
theorem rows7726 : actualRows7726=WordField.canonicalRows actualModulus 7726 (.bxor 7724 7725) := by core033_kernel_decide
theorem stats7726 : actualRows7726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7726=7428 := by core033_kernel_decide
theorem rows7727 : actualRows7727=WordField.canonicalRows actualModulus 7727 (.badd 7726 7643) := by core033_kernel_decide
theorem stats7727 : actualRows7727.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7727=5388 := by core033_kernel_decide
theorem rows7728 : actualRows7728=WordField.canonicalRows actualModulus 7728 (.rotr 7539 7) := by core033_kernel_decide
theorem stats7728 : actualRows7728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7728=5124 := by core033_kernel_decide
theorem rows7729 : actualRows7729=WordField.canonicalRows actualModulus 7729 (.rotr 7539 18) := by core033_kernel_decide
theorem stats7729 : actualRows7729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7729=5124 := by core033_kernel_decide
theorem rows7730 : actualRows7730=WordField.canonicalRows actualModulus 7730 (.bxor 7728 7729) := by core033_kernel_decide
theorem stats7730 : actualRows7730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7730=7428 := by core033_kernel_decide
theorem rows7731 : actualRows7731=WordField.canonicalRows actualModulus 7731 (.shr 7539 3) := by core033_kernel_decide
theorem stats7731 : actualRows7731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7731=4908 := by core033_kernel_decide
theorem rows7732 : actualRows7732=WordField.canonicalRows actualModulus 7732 (.bxor 7730 7731) := by core033_kernel_decide
theorem stats7732 : actualRows7732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7732=7428 := by core033_kernel_decide
theorem rows7733 : actualRows7733=WordField.canonicalRows actualModulus 7733 (.badd 7727 7732) := by core033_kernel_decide
theorem stats7733 : actualRows7733.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7733=5388 := by core033_kernel_decide
theorem rows7734 : actualRows7734=WordField.canonicalRows actualModulus 7734 (.badd 7733 7526) := by core033_kernel_decide
theorem stats7734 : actualRows7734.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7734=5388 := by core033_kernel_decide
theorem rows7735 : actualRows7735=WordField.canonicalRows actualModulus 7735 (.rotr 7721 17) := by core033_kernel_decide
theorem stats7735 : actualRows7735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7735=5124 := by core033_kernel_decide
theorem rows7736 : actualRows7736=WordField.canonicalRows actualModulus 7736 (.rotr 7721 19) := by core033_kernel_decide
theorem stats7736 : actualRows7736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7736=5124 := by core033_kernel_decide
theorem rows7737 : actualRows7737=WordField.canonicalRows actualModulus 7737 (.bxor 7735 7736) := by core033_kernel_decide
theorem stats7737 : actualRows7737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7737=7428 := by core033_kernel_decide
theorem rows7738 : actualRows7738=WordField.canonicalRows actualModulus 7738 (.shr 7721 10) := by core033_kernel_decide
theorem stats7738 : actualRows7738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7738=4404 := by core033_kernel_decide
theorem rows7739 : actualRows7739=WordField.canonicalRows actualModulus 7739 (.bxor 7737 7738) := by core033_kernel_decide
theorem stats7739 : actualRows7739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7739=7428 := by core033_kernel_decide
theorem rows7740 : actualRows7740=WordField.canonicalRows actualModulus 7740 (.badd 7739 7656) := by core033_kernel_decide
theorem stats7740 : actualRows7740.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7740=5388 := by core033_kernel_decide
theorem rows7741 : actualRows7741=WordField.canonicalRows actualModulus 7741 (.rotr 7552 7) := by core033_kernel_decide
theorem stats7741 : actualRows7741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7741=5124 := by core033_kernel_decide
theorem rows7742 : actualRows7742=WordField.canonicalRows actualModulus 7742 (.rotr 7552 18) := by core033_kernel_decide
theorem stats7742 : actualRows7742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7742=5124 := by core033_kernel_decide
theorem rows7743 : actualRows7743=WordField.canonicalRows actualModulus 7743 (.bxor 7741 7742) := by core033_kernel_decide
theorem stats7743 : actualRows7743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7743=7428 := by core033_kernel_decide
theorem rows7744 : actualRows7744=WordField.canonicalRows actualModulus 7744 (.shr 7552 3) := by core033_kernel_decide
theorem stats7744 : actualRows7744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7744=4908 := by core033_kernel_decide
theorem rows7745 : actualRows7745=WordField.canonicalRows actualModulus 7745 (.bxor 7743 7744) := by core033_kernel_decide
theorem stats7745 : actualRows7745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7745=7428 := by core033_kernel_decide
theorem rows7746 : actualRows7746=WordField.canonicalRows actualModulus 7746 (.badd 7740 7745) := by core033_kernel_decide
theorem stats7746 : actualRows7746.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7746=5388 := by core033_kernel_decide
theorem rows7747 : actualRows7747=WordField.canonicalRows actualModulus 7747 (.badd 7746 7539) := by core033_kernel_decide
theorem stats7747 : actualRows7747.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7747=5388 := by core033_kernel_decide
theorem rows7748 : actualRows7748=WordField.canonicalRows actualModulus 7748 (.rotr 7734 17) := by core033_kernel_decide
theorem stats7748 : actualRows7748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7748=5124 := by core033_kernel_decide
theorem rows7749 : actualRows7749=WordField.canonicalRows actualModulus 7749 (.rotr 7734 19) := by core033_kernel_decide
theorem stats7749 : actualRows7749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7749=5124 := by core033_kernel_decide
theorem rows7750 : actualRows7750=WordField.canonicalRows actualModulus 7750 (.bxor 7748 7749) := by core033_kernel_decide
theorem stats7750 : actualRows7750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7750=7428 := by core033_kernel_decide
theorem rows7751 : actualRows7751=WordField.canonicalRows actualModulus 7751 (.shr 7734 10) := by core033_kernel_decide
theorem stats7751 : actualRows7751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7751=4404 := by core033_kernel_decide
theorem rows7752 : actualRows7752=WordField.canonicalRows actualModulus 7752 (.bxor 7750 7751) := by core033_kernel_decide
theorem stats7752 : actualRows7752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7752=7428 := by core033_kernel_decide
theorem rows7753 : actualRows7753=WordField.canonicalRows actualModulus 7753 (.badd 7752 7669) := by core033_kernel_decide
theorem stats7753 : actualRows7753.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7753=5388 := by core033_kernel_decide
theorem rows7754 : actualRows7754=WordField.canonicalRows actualModulus 7754 (.rotr 7565 7) := by core033_kernel_decide
theorem stats7754 : actualRows7754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7754=5124 := by core033_kernel_decide
theorem rows7755 : actualRows7755=WordField.canonicalRows actualModulus 7755 (.rotr 7565 18) := by core033_kernel_decide
theorem stats7755 : actualRows7755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7755=5124 := by core033_kernel_decide
theorem rows7756 : actualRows7756=WordField.canonicalRows actualModulus 7756 (.bxor 7754 7755) := by core033_kernel_decide
theorem stats7756 : actualRows7756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7756=7428 := by core033_kernel_decide
theorem rows7757 : actualRows7757=WordField.canonicalRows actualModulus 7757 (.shr 7565 3) := by core033_kernel_decide
theorem stats7757 : actualRows7757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7757=4908 := by core033_kernel_decide
theorem rows7758 : actualRows7758=WordField.canonicalRows actualModulus 7758 (.bxor 7756 7757) := by core033_kernel_decide
theorem stats7758 : actualRows7758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7758=7428 := by core033_kernel_decide
theorem rows7759 : actualRows7759=WordField.canonicalRows actualModulus 7759 (.badd 7753 7758) := by core033_kernel_decide
theorem stats7759 : actualRows7759.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7759=5388 := by core033_kernel_decide
theorem rows7760 : actualRows7760=WordField.canonicalRows actualModulus 7760 (.badd 7759 7552) := by core033_kernel_decide
theorem stats7760 : actualRows7760.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7760=5388 := by core033_kernel_decide
theorem rows7761 : actualRows7761=WordField.canonicalRows actualModulus 7761 (.rotr 7747 17) := by core033_kernel_decide
theorem stats7761 : actualRows7761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7761=5124 := by core033_kernel_decide
theorem rows7762 : actualRows7762=WordField.canonicalRows actualModulus 7762 (.rotr 7747 19) := by core033_kernel_decide
theorem stats7762 : actualRows7762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7762=5124 := by core033_kernel_decide
theorem rows7763 : actualRows7763=WordField.canonicalRows actualModulus 7763 (.bxor 7761 7762) := by core033_kernel_decide
theorem stats7763 : actualRows7763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7763=7428 := by core033_kernel_decide
theorem rows7764 : actualRows7764=WordField.canonicalRows actualModulus 7764 (.shr 7747 10) := by core033_kernel_decide
theorem stats7764 : actualRows7764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7764=4404 := by core033_kernel_decide
theorem rows7765 : actualRows7765=WordField.canonicalRows actualModulus 7765 (.bxor 7763 7764) := by core033_kernel_decide
theorem stats7765 : actualRows7765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7765=7428 := by core033_kernel_decide
theorem rows7766 : actualRows7766=WordField.canonicalRows actualModulus 7766 (.badd 7765 7682) := by core033_kernel_decide
theorem stats7766 : actualRows7766.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7766=5388 := by core033_kernel_decide
theorem rows7767 : actualRows7767=WordField.canonicalRows actualModulus 7767 (.rotr 7578 7) := by core033_kernel_decide
theorem stats7767 : actualRows7767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7767=5124 := by core033_kernel_decide
theorem rows7768 : actualRows7768=WordField.canonicalRows actualModulus 7768 (.rotr 7578 18) := by core033_kernel_decide
theorem stats7768 : actualRows7768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7768=5124 := by core033_kernel_decide
theorem rows7769 : actualRows7769=WordField.canonicalRows actualModulus 7769 (.bxor 7767 7768) := by core033_kernel_decide
theorem stats7769 : actualRows7769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7769=7428 := by core033_kernel_decide
theorem rows7770 : actualRows7770=WordField.canonicalRows actualModulus 7770 (.shr 7578 3) := by core033_kernel_decide
theorem stats7770 : actualRows7770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7770=4908 := by core033_kernel_decide
theorem rows7771 : actualRows7771=WordField.canonicalRows actualModulus 7771 (.bxor 7769 7770) := by core033_kernel_decide
theorem stats7771 : actualRows7771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7771=7428 := by core033_kernel_decide
theorem rows7772 : actualRows7772=WordField.canonicalRows actualModulus 7772 (.badd 7766 7771) := by core033_kernel_decide
theorem stats7772 : actualRows7772.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7772=5388 := by core033_kernel_decide
theorem rows7773 : actualRows7773=WordField.canonicalRows actualModulus 7773 (.badd 7772 7565) := by core033_kernel_decide
theorem stats7773 : actualRows7773.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7773=5388 := by core033_kernel_decide
theorem rows7774 : actualRows7774=WordField.canonicalRows actualModulus 7774 (.rotr 7760 17) := by core033_kernel_decide
theorem stats7774 : actualRows7774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7774=5124 := by core033_kernel_decide
theorem rows7775 : actualRows7775=WordField.canonicalRows actualModulus 7775 (.rotr 7760 19) := by core033_kernel_decide
theorem stats7775 : actualRows7775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7775=5124 := by core033_kernel_decide
def partRows119 : List R1CS.Row := actualRows7712++actualRows7713++actualRows7714++actualRows7715++actualRows7716++actualRows7717++actualRows7718++actualRows7719++actualRows7720++actualRows7721++actualRows7722++actualRows7723++actualRows7724++actualRows7725++actualRows7726++actualRows7727++actualRows7728++actualRows7729++actualRows7730++actualRows7731++actualRows7732++actualRows7733++actualRows7734++actualRows7735++actualRows7736++actualRows7737++actualRows7738++actualRows7739++actualRows7740++actualRows7741++actualRows7742++actualRows7743++actualRows7744++actualRows7745++actualRows7746++actualRows7747++actualRows7748++actualRows7749++actualRows7750++actualRows7751++actualRows7752++actualRows7753++actualRows7754++actualRows7755++actualRows7756++actualRows7757++actualRows7758++actualRows7759++actualRows7760++actualRows7761++actualRows7762++actualRows7763++actualRows7764++actualRows7765++actualRows7766++actualRows7767++actualRows7768++actualRows7769++actualRows7770++actualRows7771++actualRows7772++actualRows7773++actualRows7774++actualRows7775
def partOps119 : List WordIR.Op := [.shr 7695 10,.bxor 7711 7712,.badd 7713 7630,.rotr 7526 7,.rotr 7526 18,.bxor 7715 7716,.shr 7526 3,.bxor 7717 7718,.badd 7714 7719,.badd 7720 7513,.rotr 7708 17,.rotr 7708 19,.bxor 7722 7723,.shr 7708 10,.bxor 7724 7725,.badd 7726 7643,.rotr 7539 7,.rotr 7539 18,.bxor 7728 7729,.shr 7539 3,.bxor 7730 7731,.badd 7727 7732,.badd 7733 7526,.rotr 7721 17,.rotr 7721 19,.bxor 7735 7736,.shr 7721 10,.bxor 7737 7738,.badd 7739 7656,.rotr 7552 7,.rotr 7552 18,.bxor 7741 7742,.shr 7552 3,.bxor 7743 7744,.badd 7740 7745,.badd 7746 7539,.rotr 7734 17,.rotr 7734 19,.bxor 7748 7749,.shr 7734 10,.bxor 7750 7751,.badd 7752 7669,.rotr 7565 7,.rotr 7565 18,.bxor 7754 7755,.shr 7565 3,.bxor 7756 7757,.badd 7753 7758,.badd 7759 7552,.rotr 7747 17,.rotr 7747 19,.bxor 7761 7762,.shr 7747 10,.bxor 7763 7764,.badd 7765 7682,.rotr 7578 7,.rotr 7578 18,.bxor 7767 7768,.shr 7578 3,.bxor 7769 7770,.badd 7766 7771,.badd 7772 7565,.rotr 7760 17,.rotr 7760 19]
theorem partExact119 : partRows119=WordField.rows actualModulus 7712 partOps119 := by
  simp only [partRows119,partOps119,WordField.rows,rows7712,rows7713,rows7714,rows7715,rows7716,rows7717,rows7718,rows7719,rows7720,rows7721,rows7722,rows7723,rows7724,rows7725,rows7726,rows7727,rows7728,rows7729,rows7730,rows7731,rows7732,rows7733,rows7734,rows7735,rows7736,rows7737,rows7738,rows7739,rows7740,rows7741,rows7742,rows7743,rows7744,rows7745,rows7746,rows7747,rows7748,rows7749,rows7750,rows7751,rows7752,rows7753,rows7754,rows7755,rows7756,rows7757,rows7758,rows7759,rows7760,rows7761,rows7762,rows7763,rows7764,rows7765,rows7766,rows7767,rows7768,rows7769,rows7770,rows7771,rows7772,rows7773,rows7774,rows7775,List.append_assoc,List.append_nil]
theorem partLength119 : partOps119.length=64 := by decide
theorem partStats119 : partRows119.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows119=370992 := by
  simp only [partRows119,List.length_append,MatrixRowBlocks.rows_weight_append,stats7712.1,stats7712.2,stats7713.1,stats7713.2,stats7714.1,stats7714.2,stats7715.1,stats7715.2,stats7716.1,stats7716.2,stats7717.1,stats7717.2,stats7718.1,stats7718.2,stats7719.1,stats7719.2,stats7720.1,stats7720.2,stats7721.1,stats7721.2,stats7722.1,stats7722.2,stats7723.1,stats7723.2,stats7724.1,stats7724.2,stats7725.1,stats7725.2,stats7726.1,stats7726.2,stats7727.1,stats7727.2,stats7728.1,stats7728.2,stats7729.1,stats7729.2,stats7730.1,stats7730.2,stats7731.1,stats7731.2,stats7732.1,stats7732.2,stats7733.1,stats7733.2,stats7734.1,stats7734.2,stats7735.1,stats7735.2,stats7736.1,stats7736.2,stats7737.1,stats7737.2,stats7738.1,stats7738.2,stats7739.1,stats7739.2,stats7740.1,stats7740.2,stats7741.1,stats7741.2,stats7742.1,stats7742.2,stats7743.1,stats7743.2,stats7744.1,stats7744.2,stats7745.1,stats7745.2,stats7746.1,stats7746.2,stats7747.1,stats7747.2,stats7748.1,stats7748.2,stats7749.1,stats7749.2,stats7750.1,stats7750.2,stats7751.1,stats7751.2,stats7752.1,stats7752.2,stats7753.1,stats7753.2,stats7754.1,stats7754.2,stats7755.1,stats7755.2,stats7756.1,stats7756.2,stats7757.1,stats7757.2,stats7758.1,stats7758.2,stats7759.1,stats7759.2,stats7760.1,stats7760.2,stats7761.1,stats7761.2,stats7762.1,stats7762.2,stats7763.1,stats7763.2,stats7764.1,stats7764.2,stats7765.1,stats7765.2,stats7766.1,stats7766.2,stats7767.1,stats7767.2,stats7768.1,stats7768.2,stats7769.1,stats7769.2,stats7770.1,stats7770.2,stats7771.1,stats7771.2,stats7772.1,stats7772.2,stats7773.1,stats7773.2,stats7774.1,stats7774.2,stats7775.1,stats7775.2]
  decide
end QuotedPairedPathRoundCheckedRows
