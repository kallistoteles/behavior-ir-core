import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData120
import AuthenticatedBranchRoundInstructionMatrixData121
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7734 : actualRows7734=WordField.canonicalRows actualModulus 7734 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7734 : actualRows7734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7734=2892 := by core033_kernel_decide
theorem rows7735 : actualRows7735=WordField.canonicalRows actualModulus 7735 (.bxor 7733 7734) := by core033_kernel_decide
theorem stats7735 : actualRows7735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7735=7428 := by core033_kernel_decide
theorem rows7736 : actualRows7736=WordField.canonicalRows actualModulus 7736 (.shr 5778 8) := by core033_kernel_decide
theorem stats7736 : actualRows7736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7736=4548 := by core033_kernel_decide
theorem rows7737 : actualRows7737=WordField.canonicalRows actualModulus 7737 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7737 : actualRows7737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7737=2820 := by core033_kernel_decide
theorem rows7738 : actualRows7738=WordField.canonicalRows actualModulus 7738 (.bnot 7737) := by core033_kernel_decide
theorem stats7738 : actualRows7738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7738=6276 := by core033_kernel_decide
theorem rows7739 : actualRows7739=WordField.canonicalRows actualModulus 7739 (.band 7736 7738) := by core033_kernel_decide
theorem stats7739 : actualRows7739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7739=5124 := by core033_kernel_decide
theorem rows7740 : actualRows7740=WordField.canonicalRows actualModulus 7740 (.shr 5778 8) := by core033_kernel_decide
theorem stats7740 : actualRows7740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7740=4548 := by core033_kernel_decide
theorem rows7741 : actualRows7741=WordField.canonicalRows actualModulus 7741 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7741 : actualRows7741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7741=2820 := by core033_kernel_decide
theorem rows7742 : actualRows7742=WordField.canonicalRows actualModulus 7742 (.bnot 7741) := by core033_kernel_decide
theorem stats7742 : actualRows7742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7742=6276 := by core033_kernel_decide
theorem rows7743 : actualRows7743=WordField.canonicalRows actualModulus 7743 (.bxor 7740 7742) := by core033_kernel_decide
theorem stats7743 : actualRows7743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7743=7428 := by core033_kernel_decide
theorem rows7744 : actualRows7744=WordField.canonicalRows actualModulus 7744 (.shr 5778 8) := by core033_kernel_decide
theorem stats7744 : actualRows7744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7744=4548 := by core033_kernel_decide
theorem rows7745 : actualRows7745=WordField.canonicalRows actualModulus 7745 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7745 : actualRows7745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7745=2820 := by core033_kernel_decide
theorem rows7746 : actualRows7746=WordField.canonicalRows actualModulus 7746 (.bnot 7745) := by core033_kernel_decide
theorem stats7746 : actualRows7746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7746=6276 := by core033_kernel_decide
theorem rows7747 : actualRows7747=WordField.canonicalRows actualModulus 7747 (.badd 7744 7746) := by core033_kernel_decide
theorem stats7747 : actualRows7747.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7747=5388 := by core033_kernel_decide
theorem rows7748 : actualRows7748=WordField.canonicalRows actualModulus 7748 (.bnot 7747) := by core033_kernel_decide
theorem stats7748 : actualRows7748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7748=6276 := by core033_kernel_decide
theorem rows7749 : actualRows7749=WordField.canonicalRows actualModulus 7749 (.band 7743 7748) := by core033_kernel_decide
theorem stats7749 : actualRows7749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7749=5124 := by core033_kernel_decide
theorem rows7750 : actualRows7750=WordField.canonicalRows actualModulus 7750 (.bxor 7739 7749) := by core033_kernel_decide
theorem stats7750 : actualRows7750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7750=7428 := by core033_kernel_decide
theorem rows7751 : actualRows7751=WordField.canonicalRows actualModulus 7751 (.shr 7750 31) := by core033_kernel_decide
theorem stats7751 : actualRows7751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7751=2892 := by core033_kernel_decide
theorem rows7752 : actualRows7752=WordField.canonicalRows actualModulus 7752 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7752 : actualRows7752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7752=2892 := by core033_kernel_decide
theorem rows7753 : actualRows7753=WordField.canonicalRows actualModulus 7753 (.bxor 7751 7752) := by core033_kernel_decide
theorem stats7753 : actualRows7753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7753=7428 := by core033_kernel_decide
theorem rows7754 : actualRows7754=WordField.canonicalRows actualModulus 7754 (.shr 5830 8) := by core033_kernel_decide
theorem stats7754 : actualRows7754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7754=4548 := by core033_kernel_decide
theorem rows7755 : actualRows7755=WordField.canonicalRows actualModulus 7755 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7755 : actualRows7755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7755=2820 := by core033_kernel_decide
theorem rows7756 : actualRows7756=WordField.canonicalRows actualModulus 7756 (.bnot 7755) := by core033_kernel_decide
theorem stats7756 : actualRows7756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7756=6276 := by core033_kernel_decide
theorem rows7757 : actualRows7757=WordField.canonicalRows actualModulus 7757 (.band 7754 7756) := by core033_kernel_decide
theorem stats7757 : actualRows7757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7757=5124 := by core033_kernel_decide
theorem rows7758 : actualRows7758=WordField.canonicalRows actualModulus 7758 (.shr 5830 8) := by core033_kernel_decide
theorem stats7758 : actualRows7758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7758=4548 := by core033_kernel_decide
theorem rows7759 : actualRows7759=WordField.canonicalRows actualModulus 7759 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7759 : actualRows7759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7759=2820 := by core033_kernel_decide
theorem rows7760 : actualRows7760=WordField.canonicalRows actualModulus 7760 (.bnot 7759) := by core033_kernel_decide
theorem stats7760 : actualRows7760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7760=6276 := by core033_kernel_decide
theorem rows7761 : actualRows7761=WordField.canonicalRows actualModulus 7761 (.bxor 7758 7760) := by core033_kernel_decide
theorem stats7761 : actualRows7761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7761=7428 := by core033_kernel_decide
theorem rows7762 : actualRows7762=WordField.canonicalRows actualModulus 7762 (.shr 5830 8) := by core033_kernel_decide
theorem stats7762 : actualRows7762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7762=4548 := by core033_kernel_decide
theorem rows7763 : actualRows7763=WordField.canonicalRows actualModulus 7763 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7763 : actualRows7763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7763=2820 := by core033_kernel_decide
theorem rows7764 : actualRows7764=WordField.canonicalRows actualModulus 7764 (.bnot 7763) := by core033_kernel_decide
theorem stats7764 : actualRows7764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7764=6276 := by core033_kernel_decide
theorem rows7765 : actualRows7765=WordField.canonicalRows actualModulus 7765 (.badd 7762 7764) := by core033_kernel_decide
theorem stats7765 : actualRows7765.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7765=5388 := by core033_kernel_decide
theorem rows7766 : actualRows7766=WordField.canonicalRows actualModulus 7766 (.bnot 7765) := by core033_kernel_decide
theorem stats7766 : actualRows7766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7766=6276 := by core033_kernel_decide
theorem rows7767 : actualRows7767=WordField.canonicalRows actualModulus 7767 (.band 7761 7766) := by core033_kernel_decide
theorem stats7767 : actualRows7767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7767=5124 := by core033_kernel_decide
theorem rows7768 : actualRows7768=WordField.canonicalRows actualModulus 7768 (.bxor 7757 7767) := by core033_kernel_decide
theorem stats7768 : actualRows7768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7768=7428 := by core033_kernel_decide
theorem rows7769 : actualRows7769=WordField.canonicalRows actualModulus 7769 (.shr 7768 31) := by core033_kernel_decide
theorem stats7769 : actualRows7769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7769=2892 := by core033_kernel_decide
theorem rows7770 : actualRows7770=WordField.canonicalRows actualModulus 7770 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7770 : actualRows7770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7770=2892 := by core033_kernel_decide
theorem rows7771 : actualRows7771=WordField.canonicalRows actualModulus 7771 (.bxor 7769 7770) := by core033_kernel_decide
theorem stats7771 : actualRows7771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7771=7428 := by core033_kernel_decide
theorem rows7772 : actualRows7772=WordField.canonicalRows actualModulus 7772 (.shr 5882 8) := by core033_kernel_decide
theorem stats7772 : actualRows7772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7772=4548 := by core033_kernel_decide
theorem rows7773 : actualRows7773=WordField.canonicalRows actualModulus 7773 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7773 : actualRows7773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7773=2820 := by core033_kernel_decide
theorem rows7774 : actualRows7774=WordField.canonicalRows actualModulus 7774 (.bnot 7773) := by core033_kernel_decide
theorem stats7774 : actualRows7774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7774=6276 := by core033_kernel_decide
theorem rows7775 : actualRows7775=WordField.canonicalRows actualModulus 7775 (.band 7772 7774) := by core033_kernel_decide
theorem stats7775 : actualRows7775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7775=5124 := by core033_kernel_decide
theorem rows7776 : actualRows7776=WordField.canonicalRows actualModulus 7776 (.shr 5882 8) := by core033_kernel_decide
theorem stats7776 : actualRows7776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7776=4548 := by core033_kernel_decide
theorem rows7777 : actualRows7777=WordField.canonicalRows actualModulus 7777 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7777 : actualRows7777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7777=2820 := by core033_kernel_decide
theorem rows7778 : actualRows7778=WordField.canonicalRows actualModulus 7778 (.bnot 7777) := by core033_kernel_decide
theorem stats7778 : actualRows7778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7778=6276 := by core033_kernel_decide
theorem rows7779 : actualRows7779=WordField.canonicalRows actualModulus 7779 (.bxor 7776 7778) := by core033_kernel_decide
theorem stats7779 : actualRows7779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7779=7428 := by core033_kernel_decide
theorem rows7780 : actualRows7780=WordField.canonicalRows actualModulus 7780 (.shr 5882 8) := by core033_kernel_decide
theorem stats7780 : actualRows7780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7780=4548 := by core033_kernel_decide
theorem rows7781 : actualRows7781=WordField.canonicalRows actualModulus 7781 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7781 : actualRows7781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7781=2820 := by core033_kernel_decide
theorem rows7782 : actualRows7782=WordField.canonicalRows actualModulus 7782 (.bnot 7781) := by core033_kernel_decide
theorem stats7782 : actualRows7782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7782=6276 := by core033_kernel_decide
theorem rows7783 : actualRows7783=WordField.canonicalRows actualModulus 7783 (.badd 7780 7782) := by core033_kernel_decide
theorem stats7783 : actualRows7783.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7783=5388 := by core033_kernel_decide
theorem rows7784 : actualRows7784=WordField.canonicalRows actualModulus 7784 (.bnot 7783) := by core033_kernel_decide
theorem stats7784 : actualRows7784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7784=6276 := by core033_kernel_decide
theorem rows7785 : actualRows7785=WordField.canonicalRows actualModulus 7785 (.band 7779 7784) := by core033_kernel_decide
theorem stats7785 : actualRows7785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7785=5124 := by core033_kernel_decide
theorem rows7786 : actualRows7786=WordField.canonicalRows actualModulus 7786 (.bxor 7775 7785) := by core033_kernel_decide
theorem stats7786 : actualRows7786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7786=7428 := by core033_kernel_decide
theorem rows7787 : actualRows7787=WordField.canonicalRows actualModulus 7787 (.shr 7786 31) := by core033_kernel_decide
theorem stats7787 : actualRows7787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7787=2892 := by core033_kernel_decide
theorem rows7788 : actualRows7788=WordField.canonicalRows actualModulus 7788 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats7788 : actualRows7788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7788=2892 := by core033_kernel_decide
theorem rows7789 : actualRows7789=WordField.canonicalRows actualModulus 7789 (.bxor 7787 7788) := by core033_kernel_decide
theorem stats7789 : actualRows7789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7789=7428 := by core033_kernel_decide
theorem rows7790 : actualRows7790=WordField.canonicalRows actualModulus 7790 (.shr 5934 8) := by core033_kernel_decide
theorem stats7790 : actualRows7790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7790=4548 := by core033_kernel_decide
theorem rows7791 : actualRows7791=WordField.canonicalRows actualModulus 7791 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7791 : actualRows7791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7791=2820 := by core033_kernel_decide
theorem rows7792 : actualRows7792=WordField.canonicalRows actualModulus 7792 (.bnot 7791) := by core033_kernel_decide
theorem stats7792 : actualRows7792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7792=6276 := by core033_kernel_decide
theorem rows7793 : actualRows7793=WordField.canonicalRows actualModulus 7793 (.band 7790 7792) := by core033_kernel_decide
theorem stats7793 : actualRows7793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7793=5124 := by core033_kernel_decide
theorem rows7794 : actualRows7794=WordField.canonicalRows actualModulus 7794 (.shr 5934 8) := by core033_kernel_decide
theorem stats7794 : actualRows7794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7794=4548 := by core033_kernel_decide
theorem rows7795 : actualRows7795=WordField.canonicalRows actualModulus 7795 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats7795 : actualRows7795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7795=2820 := by core033_kernel_decide
theorem rows7796 : actualRows7796=WordField.canonicalRows actualModulus 7796 (.bnot 7795) := by core033_kernel_decide
theorem stats7796 : actualRows7796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7796=6276 := by core033_kernel_decide
theorem rows7797 : actualRows7797=WordField.canonicalRows actualModulus 7797 (.bxor 7794 7796) := by core033_kernel_decide
theorem stats7797 : actualRows7797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7797=7428 := by core033_kernel_decide
def partRows119 : List R1CS.Row := actualRows7734++actualRows7735++actualRows7736++actualRows7737++actualRows7738++actualRows7739++actualRows7740++actualRows7741++actualRows7742++actualRows7743++actualRows7744++actualRows7745++actualRows7746++actualRows7747++actualRows7748++actualRows7749++actualRows7750++actualRows7751++actualRows7752++actualRows7753++actualRows7754++actualRows7755++actualRows7756++actualRows7757++actualRows7758++actualRows7759++actualRows7760++actualRows7761++actualRows7762++actualRows7763++actualRows7764++actualRows7765++actualRows7766++actualRows7767++actualRows7768++actualRows7769++actualRows7770++actualRows7771++actualRows7772++actualRows7773++actualRows7774++actualRows7775++actualRows7776++actualRows7777++actualRows7778++actualRows7779++actualRows7780++actualRows7781++actualRows7782++actualRows7783++actualRows7784++actualRows7785++actualRows7786++actualRows7787++actualRows7788++actualRows7789++actualRows7790++actualRows7791++actualRows7792++actualRows7793++actualRows7794++actualRows7795++actualRows7796++actualRows7797
def partOps119 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 7733 7734,.shr 5778 8,.literal (BitVec.ofNat 32 0),.bnot 7737,.band 7736 7738,.shr 5778 8,.literal (BitVec.ofNat 32 0),.bnot 7741,.bxor 7740 7742,.shr 5778 8,.literal (BitVec.ofNat 32 0),.bnot 7745,.badd 7744 7746,.bnot 7747,.band 7743 7748,.bxor 7739 7749,.shr 7750 31,.literal (BitVec.ofNat 32 1),.bxor 7751 7752,.shr 5830 8,.literal (BitVec.ofNat 32 0),.bnot 7755,.band 7754 7756,.shr 5830 8,.literal (BitVec.ofNat 32 0),.bnot 7759,.bxor 7758 7760,.shr 5830 8,.literal (BitVec.ofNat 32 0),.bnot 7763,.badd 7762 7764,.bnot 7765,.band 7761 7766,.bxor 7757 7767,.shr 7768 31,.literal (BitVec.ofNat 32 1),.bxor 7769 7770,.shr 5882 8,.literal (BitVec.ofNat 32 0),.bnot 7773,.band 7772 7774,.shr 5882 8,.literal (BitVec.ofNat 32 0),.bnot 7777,.bxor 7776 7778,.shr 5882 8,.literal (BitVec.ofNat 32 0),.bnot 7781,.badd 7780 7782,.bnot 7783,.band 7779 7784,.bxor 7775 7785,.shr 7786 31,.literal (BitVec.ofNat 32 1),.bxor 7787 7788,.shr 5934 8,.literal (BitVec.ofNat 32 0),.bnot 7791,.band 7790 7792,.shr 5934 8,.literal (BitVec.ofNat 32 0),.bnot 7795,.bxor 7794 7796]
theorem partExact119 : partRows119=WordField.rows actualModulus 7734 partOps119 := by
  simp only [partRows119,partOps119,WordField.rows,rows7734,rows7735,rows7736,rows7737,rows7738,rows7739,rows7740,rows7741,rows7742,rows7743,rows7744,rows7745,rows7746,rows7747,rows7748,rows7749,rows7750,rows7751,rows7752,rows7753,rows7754,rows7755,rows7756,rows7757,rows7758,rows7759,rows7760,rows7761,rows7762,rows7763,rows7764,rows7765,rows7766,rows7767,rows7768,rows7769,rows7770,rows7771,rows7772,rows7773,rows7774,rows7775,rows7776,rows7777,rows7778,rows7779,rows7780,rows7781,rows7782,rows7783,rows7784,rows7785,rows7786,rows7787,rows7788,rows7789,rows7790,rows7791,rows7792,rows7793,rows7794,rows7795,rows7796,rows7797,List.append_assoc,List.append_nil]
theorem partLength119 : partOps119.length=64 := by decide
theorem partStats119 : partRows119.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows119=322896 := by
  simp only [partRows119,List.length_append,MatrixRowBlocks.rows_weight_append,stats7734.1,stats7734.2,stats7735.1,stats7735.2,stats7736.1,stats7736.2,stats7737.1,stats7737.2,stats7738.1,stats7738.2,stats7739.1,stats7739.2,stats7740.1,stats7740.2,stats7741.1,stats7741.2,stats7742.1,stats7742.2,stats7743.1,stats7743.2,stats7744.1,stats7744.2,stats7745.1,stats7745.2,stats7746.1,stats7746.2,stats7747.1,stats7747.2,stats7748.1,stats7748.2,stats7749.1,stats7749.2,stats7750.1,stats7750.2,stats7751.1,stats7751.2,stats7752.1,stats7752.2,stats7753.1,stats7753.2,stats7754.1,stats7754.2,stats7755.1,stats7755.2,stats7756.1,stats7756.2,stats7757.1,stats7757.2,stats7758.1,stats7758.2,stats7759.1,stats7759.2,stats7760.1,stats7760.2,stats7761.1,stats7761.2,stats7762.1,stats7762.2,stats7763.1,stats7763.2,stats7764.1,stats7764.2,stats7765.1,stats7765.2,stats7766.1,stats7766.2,stats7767.1,stats7767.2,stats7768.1,stats7768.2,stats7769.1,stats7769.2,stats7770.1,stats7770.2,stats7771.1,stats7771.2,stats7772.1,stats7772.2,stats7773.1,stats7773.2,stats7774.1,stats7774.2,stats7775.1,stats7775.2,stats7776.1,stats7776.2,stats7777.1,stats7777.2,stats7778.1,stats7778.2,stats7779.1,stats7779.2,stats7780.1,stats7780.2,stats7781.1,stats7781.2,stats7782.1,stats7782.2,stats7783.1,stats7783.2,stats7784.1,stats7784.2,stats7785.1,stats7785.2,stats7786.1,stats7786.2,stats7787.1,stats7787.2,stats7788.1,stats7788.2,stats7789.1,stats7789.2,stats7790.1,stats7790.2,stats7791.1,stats7791.2,stats7792.1,stats7792.2,stats7793.1,stats7793.2,stats7794.1,stats7794.2,stats7795.1,stats7795.2,stats7796.1,stats7796.2,stats7797.1,stats7797.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
