import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData198
import AuthenticatedBranchRoundInstructionMatrixData199
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12726 : actualRows12726=WordField.canonicalRows actualModulus 12726 (.bnot 12725) := by core033_kernel_decide
theorem stats12726 : actualRows12726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12726=6276 := by core033_kernel_decide
theorem rows12727 : actualRows12727=WordField.canonicalRows actualModulus 12727 (.band 12726 1563) := by core033_kernel_decide
theorem stats12727 : actualRows12727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12727=5124 := by core033_kernel_decide
theorem rows12728 : actualRows12728=WordField.canonicalRows actualModulus 12728 (.bxor 12701 12727) := by core033_kernel_decide
theorem stats12728 : actualRows12728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12728=7428 := by core033_kernel_decide
theorem rows12729 : actualRows12729=WordField.canonicalRows actualModulus 12729 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12729 : actualRows12729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12729=2964 := by core033_kernel_decide
theorem rows12730 : actualRows12730=WordField.canonicalRows actualModulus 12730 (.bxor 693 12729) := by core033_kernel_decide
theorem stats12730 : actualRows12730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12730=7428 := by core033_kernel_decide
theorem rows12731 : actualRows12731=WordField.canonicalRows actualModulus 12731 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12731 : actualRows12731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12731=2820 := by core033_kernel_decide
theorem rows12732 : actualRows12732=WordField.canonicalRows actualModulus 12732 (.bnot 12731) := by core033_kernel_decide
theorem stats12732 : actualRows12732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12732=6276 := by core033_kernel_decide
theorem rows12733 : actualRows12733=WordField.canonicalRows actualModulus 12733 (.band 12730 12732) := by core033_kernel_decide
theorem stats12733 : actualRows12733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12733=5124 := by core033_kernel_decide
theorem rows12734 : actualRows12734=WordField.canonicalRows actualModulus 12734 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12734 : actualRows12734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12734=2964 := by core033_kernel_decide
theorem rows12735 : actualRows12735=WordField.canonicalRows actualModulus 12735 (.bxor 693 12734) := by core033_kernel_decide
theorem stats12735 : actualRows12735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12735=7428 := by core033_kernel_decide
theorem rows12736 : actualRows12736=WordField.canonicalRows actualModulus 12736 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12736 : actualRows12736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12736=2820 := by core033_kernel_decide
theorem rows12737 : actualRows12737=WordField.canonicalRows actualModulus 12737 (.bnot 12736) := by core033_kernel_decide
theorem stats12737 : actualRows12737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12737=6276 := by core033_kernel_decide
theorem rows12738 : actualRows12738=WordField.canonicalRows actualModulus 12738 (.bxor 12735 12737) := by core033_kernel_decide
theorem stats12738 : actualRows12738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12738=7428 := by core033_kernel_decide
theorem rows12739 : actualRows12739=WordField.canonicalRows actualModulus 12739 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12739 : actualRows12739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12739=2964 := by core033_kernel_decide
theorem rows12740 : actualRows12740=WordField.canonicalRows actualModulus 12740 (.bxor 693 12739) := by core033_kernel_decide
theorem stats12740 : actualRows12740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12740=7428 := by core033_kernel_decide
theorem rows12741 : actualRows12741=WordField.canonicalRows actualModulus 12741 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12741 : actualRows12741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12741=2820 := by core033_kernel_decide
theorem rows12742 : actualRows12742=WordField.canonicalRows actualModulus 12742 (.bnot 12741) := by core033_kernel_decide
theorem stats12742 : actualRows12742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12742=6276 := by core033_kernel_decide
theorem rows12743 : actualRows12743=WordField.canonicalRows actualModulus 12743 (.badd 12740 12742) := by core033_kernel_decide
theorem stats12743 : actualRows12743.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12743=5388 := by core033_kernel_decide
theorem rows12744 : actualRows12744=WordField.canonicalRows actualModulus 12744 (.bnot 12743) := by core033_kernel_decide
theorem stats12744 : actualRows12744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12744=6276 := by core033_kernel_decide
theorem rows12745 : actualRows12745=WordField.canonicalRows actualModulus 12745 (.band 12738 12744) := by core033_kernel_decide
theorem stats12745 : actualRows12745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12745=5124 := by core033_kernel_decide
theorem rows12746 : actualRows12746=WordField.canonicalRows actualModulus 12746 (.bxor 12733 12745) := by core033_kernel_decide
theorem stats12746 : actualRows12746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12746=7428 := by core033_kernel_decide
theorem rows12747 : actualRows12747=WordField.canonicalRows actualModulus 12747 (.shr 12746 31) := by core033_kernel_decide
theorem stats12747 : actualRows12747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12747=2892 := by core033_kernel_decide
theorem rows12748 : actualRows12748=WordField.canonicalRows actualModulus 12748 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12748 : actualRows12748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12748=2892 := by core033_kernel_decide
theorem rows12749 : actualRows12749=WordField.canonicalRows actualModulus 12749 (.bxor 12747 12748) := by core033_kernel_decide
theorem stats12749 : actualRows12749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12749=7428 := by core033_kernel_decide
theorem rows12750 : actualRows12750=WordField.canonicalRows actualModulus 12750 (.bnot 12749) := by core033_kernel_decide
theorem stats12750 : actualRows12750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12750=6276 := by core033_kernel_decide
theorem rows12751 : actualRows12751=WordField.canonicalRows actualModulus 12751 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12751 : actualRows12751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12751=2892 := by core033_kernel_decide
theorem rows12752 : actualRows12752=WordField.canonicalRows actualModulus 12752 (.badd 12750 12751) := by core033_kernel_decide
theorem stats12752 : actualRows12752.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12752=5388 := by core033_kernel_decide
theorem rows12753 : actualRows12753=WordField.canonicalRows actualModulus 12753 (.band 12752 10895) := by core033_kernel_decide
theorem stats12753 : actualRows12753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12753=5124 := by core033_kernel_decide
theorem rows12754 : actualRows12754=WordField.canonicalRows actualModulus 12754 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12754 : actualRows12754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12754=2964 := by core033_kernel_decide
theorem rows12755 : actualRows12755=WordField.canonicalRows actualModulus 12755 (.bxor 693 12754) := by core033_kernel_decide
theorem stats12755 : actualRows12755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12755=7428 := by core033_kernel_decide
theorem rows12756 : actualRows12756=WordField.canonicalRows actualModulus 12756 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12756 : actualRows12756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12756=2820 := by core033_kernel_decide
theorem rows12757 : actualRows12757=WordField.canonicalRows actualModulus 12757 (.bnot 12756) := by core033_kernel_decide
theorem stats12757 : actualRows12757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12757=6276 := by core033_kernel_decide
theorem rows12758 : actualRows12758=WordField.canonicalRows actualModulus 12758 (.band 12755 12757) := by core033_kernel_decide
theorem stats12758 : actualRows12758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12758=5124 := by core033_kernel_decide
theorem rows12759 : actualRows12759=WordField.canonicalRows actualModulus 12759 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12759 : actualRows12759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12759=2964 := by core033_kernel_decide
theorem rows12760 : actualRows12760=WordField.canonicalRows actualModulus 12760 (.bxor 693 12759) := by core033_kernel_decide
theorem stats12760 : actualRows12760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12760=7428 := by core033_kernel_decide
theorem rows12761 : actualRows12761=WordField.canonicalRows actualModulus 12761 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12761 : actualRows12761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12761=2820 := by core033_kernel_decide
theorem rows12762 : actualRows12762=WordField.canonicalRows actualModulus 12762 (.bnot 12761) := by core033_kernel_decide
theorem stats12762 : actualRows12762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12762=6276 := by core033_kernel_decide
theorem rows12763 : actualRows12763=WordField.canonicalRows actualModulus 12763 (.bxor 12760 12762) := by core033_kernel_decide
theorem stats12763 : actualRows12763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12763=7428 := by core033_kernel_decide
theorem rows12764 : actualRows12764=WordField.canonicalRows actualModulus 12764 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12764 : actualRows12764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12764=2964 := by core033_kernel_decide
theorem rows12765 : actualRows12765=WordField.canonicalRows actualModulus 12765 (.bxor 693 12764) := by core033_kernel_decide
theorem stats12765 : actualRows12765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12765=7428 := by core033_kernel_decide
theorem rows12766 : actualRows12766=WordField.canonicalRows actualModulus 12766 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12766 : actualRows12766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12766=2820 := by core033_kernel_decide
theorem rows12767 : actualRows12767=WordField.canonicalRows actualModulus 12767 (.bnot 12766) := by core033_kernel_decide
theorem stats12767 : actualRows12767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12767=6276 := by core033_kernel_decide
theorem rows12768 : actualRows12768=WordField.canonicalRows actualModulus 12768 (.badd 12765 12767) := by core033_kernel_decide
theorem stats12768 : actualRows12768.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12768=5388 := by core033_kernel_decide
theorem rows12769 : actualRows12769=WordField.canonicalRows actualModulus 12769 (.bnot 12768) := by core033_kernel_decide
theorem stats12769 : actualRows12769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12769=6276 := by core033_kernel_decide
theorem rows12770 : actualRows12770=WordField.canonicalRows actualModulus 12770 (.band 12763 12769) := by core033_kernel_decide
theorem stats12770 : actualRows12770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12770=5124 := by core033_kernel_decide
theorem rows12771 : actualRows12771=WordField.canonicalRows actualModulus 12771 (.bxor 12758 12770) := by core033_kernel_decide
theorem stats12771 : actualRows12771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12771=7428 := by core033_kernel_decide
theorem rows12772 : actualRows12772=WordField.canonicalRows actualModulus 12772 (.shr 12771 31) := by core033_kernel_decide
theorem stats12772 : actualRows12772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12772=2892 := by core033_kernel_decide
theorem rows12773 : actualRows12773=WordField.canonicalRows actualModulus 12773 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12773 : actualRows12773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12773=2892 := by core033_kernel_decide
theorem rows12774 : actualRows12774=WordField.canonicalRows actualModulus 12774 (.bxor 12772 12773) := by core033_kernel_decide
theorem stats12774 : actualRows12774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12774=7428 := by core033_kernel_decide
theorem rows12775 : actualRows12775=WordField.canonicalRows actualModulus 12775 (.bnot 12774) := by core033_kernel_decide
theorem stats12775 : actualRows12775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12775=6276 := by core033_kernel_decide
theorem rows12776 : actualRows12776=WordField.canonicalRows actualModulus 12776 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12776 : actualRows12776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12776=2892 := by core033_kernel_decide
theorem rows12777 : actualRows12777=WordField.canonicalRows actualModulus 12777 (.badd 12775 12776) := by core033_kernel_decide
theorem stats12777 : actualRows12777.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12777=5388 := by core033_kernel_decide
theorem rows12778 : actualRows12778=WordField.canonicalRows actualModulus 12778 (.bnot 12777) := by core033_kernel_decide
theorem stats12778 : actualRows12778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12778=6276 := by core033_kernel_decide
theorem rows12779 : actualRows12779=WordField.canonicalRows actualModulus 12779 (.band 12778 1574) := by core033_kernel_decide
theorem stats12779 : actualRows12779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12779=5124 := by core033_kernel_decide
theorem rows12780 : actualRows12780=WordField.canonicalRows actualModulus 12780 (.bxor 12753 12779) := by core033_kernel_decide
theorem stats12780 : actualRows12780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12780=7428 := by core033_kernel_decide
theorem rows12781 : actualRows12781=WordField.canonicalRows actualModulus 12781 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12781 : actualRows12781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12781=2964 := by core033_kernel_decide
theorem rows12782 : actualRows12782=WordField.canonicalRows actualModulus 12782 (.bxor 693 12781) := by core033_kernel_decide
theorem stats12782 : actualRows12782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12782=7428 := by core033_kernel_decide
theorem rows12783 : actualRows12783=WordField.canonicalRows actualModulus 12783 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12783 : actualRows12783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12783=2820 := by core033_kernel_decide
theorem rows12784 : actualRows12784=WordField.canonicalRows actualModulus 12784 (.bnot 12783) := by core033_kernel_decide
theorem stats12784 : actualRows12784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12784=6276 := by core033_kernel_decide
theorem rows12785 : actualRows12785=WordField.canonicalRows actualModulus 12785 (.band 12782 12784) := by core033_kernel_decide
theorem stats12785 : actualRows12785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12785=5124 := by core033_kernel_decide
theorem rows12786 : actualRows12786=WordField.canonicalRows actualModulus 12786 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12786 : actualRows12786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12786=2964 := by core033_kernel_decide
theorem rows12787 : actualRows12787=WordField.canonicalRows actualModulus 12787 (.bxor 693 12786) := by core033_kernel_decide
theorem stats12787 : actualRows12787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12787=7428 := by core033_kernel_decide
theorem rows12788 : actualRows12788=WordField.canonicalRows actualModulus 12788 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12788 : actualRows12788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12788=2820 := by core033_kernel_decide
theorem rows12789 : actualRows12789=WordField.canonicalRows actualModulus 12789 (.bnot 12788) := by core033_kernel_decide
theorem stats12789 : actualRows12789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12789=6276 := by core033_kernel_decide
def partRows197 : List R1CS.Row := actualRows12726++actualRows12727++actualRows12728++actualRows12729++actualRows12730++actualRows12731++actualRows12732++actualRows12733++actualRows12734++actualRows12735++actualRows12736++actualRows12737++actualRows12738++actualRows12739++actualRows12740++actualRows12741++actualRows12742++actualRows12743++actualRows12744++actualRows12745++actualRows12746++actualRows12747++actualRows12748++actualRows12749++actualRows12750++actualRows12751++actualRows12752++actualRows12753++actualRows12754++actualRows12755++actualRows12756++actualRows12757++actualRows12758++actualRows12759++actualRows12760++actualRows12761++actualRows12762++actualRows12763++actualRows12764++actualRows12765++actualRows12766++actualRows12767++actualRows12768++actualRows12769++actualRows12770++actualRows12771++actualRows12772++actualRows12773++actualRows12774++actualRows12775++actualRows12776++actualRows12777++actualRows12778++actualRows12779++actualRows12780++actualRows12781++actualRows12782++actualRows12783++actualRows12784++actualRows12785++actualRows12786++actualRows12787++actualRows12788++actualRows12789
def partOps197 : List WordIR.Op := [.bnot 12725,.band 12726 1563,.bxor 12701 12727,.literal (BitVec.ofNat 32 3),.bxor 693 12729,.literal (BitVec.ofNat 32 0),.bnot 12731,.band 12730 12732,.literal (BitVec.ofNat 32 3),.bxor 693 12734,.literal (BitVec.ofNat 32 0),.bnot 12736,.bxor 12735 12737,.literal (BitVec.ofNat 32 3),.bxor 693 12739,.literal (BitVec.ofNat 32 0),.bnot 12741,.badd 12740 12742,.bnot 12743,.band 12738 12744,.bxor 12733 12745,.shr 12746 31,.literal (BitVec.ofNat 32 1),.bxor 12747 12748,.bnot 12749,.literal (BitVec.ofNat 32 1),.badd 12750 12751,.band 12752 10895,.literal (BitVec.ofNat 32 3),.bxor 693 12754,.literal (BitVec.ofNat 32 0),.bnot 12756,.band 12755 12757,.literal (BitVec.ofNat 32 3),.bxor 693 12759,.literal (BitVec.ofNat 32 0),.bnot 12761,.bxor 12760 12762,.literal (BitVec.ofNat 32 3),.bxor 693 12764,.literal (BitVec.ofNat 32 0),.bnot 12766,.badd 12765 12767,.bnot 12768,.band 12763 12769,.bxor 12758 12770,.shr 12771 31,.literal (BitVec.ofNat 32 1),.bxor 12772 12773,.bnot 12774,.literal (BitVec.ofNat 32 1),.badd 12775 12776,.bnot 12777,.band 12778 1574,.bxor 12753 12779,.literal (BitVec.ofNat 32 3),.bxor 693 12781,.literal (BitVec.ofNat 32 0),.bnot 12783,.band 12782 12784,.literal (BitVec.ofNat 32 3),.bxor 693 12786,.literal (BitVec.ofNat 32 0),.bnot 12788]
theorem partExact197 : partRows197=WordField.rows actualModulus 12726 partOps197 := by
  simp only [partRows197,partOps197,WordField.rows,rows12726,rows12727,rows12728,rows12729,rows12730,rows12731,rows12732,rows12733,rows12734,rows12735,rows12736,rows12737,rows12738,rows12739,rows12740,rows12741,rows12742,rows12743,rows12744,rows12745,rows12746,rows12747,rows12748,rows12749,rows12750,rows12751,rows12752,rows12753,rows12754,rows12755,rows12756,rows12757,rows12758,rows12759,rows12760,rows12761,rows12762,rows12763,rows12764,rows12765,rows12766,rows12767,rows12768,rows12769,rows12770,rows12771,rows12772,rows12773,rows12774,rows12775,rows12776,rows12777,rows12778,rows12779,rows12780,rows12781,rows12782,rows12783,rows12784,rows12785,rows12786,rows12787,rows12788,rows12789,List.append_assoc,List.append_nil]
theorem partLength197 : partOps197.length=64 := by decide
theorem partStats197 : partRows197.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows197=332880 := by
  simp only [partRows197,List.length_append,MatrixRowBlocks.rows_weight_append,stats12726.1,stats12726.2,stats12727.1,stats12727.2,stats12728.1,stats12728.2,stats12729.1,stats12729.2,stats12730.1,stats12730.2,stats12731.1,stats12731.2,stats12732.1,stats12732.2,stats12733.1,stats12733.2,stats12734.1,stats12734.2,stats12735.1,stats12735.2,stats12736.1,stats12736.2,stats12737.1,stats12737.2,stats12738.1,stats12738.2,stats12739.1,stats12739.2,stats12740.1,stats12740.2,stats12741.1,stats12741.2,stats12742.1,stats12742.2,stats12743.1,stats12743.2,stats12744.1,stats12744.2,stats12745.1,stats12745.2,stats12746.1,stats12746.2,stats12747.1,stats12747.2,stats12748.1,stats12748.2,stats12749.1,stats12749.2,stats12750.1,stats12750.2,stats12751.1,stats12751.2,stats12752.1,stats12752.2,stats12753.1,stats12753.2,stats12754.1,stats12754.2,stats12755.1,stats12755.2,stats12756.1,stats12756.2,stats12757.1,stats12757.2,stats12758.1,stats12758.2,stats12759.1,stats12759.2,stats12760.1,stats12760.2,stats12761.1,stats12761.2,stats12762.1,stats12762.2,stats12763.1,stats12763.2,stats12764.1,stats12764.2,stats12765.1,stats12765.2,stats12766.1,stats12766.2,stats12767.1,stats12767.2,stats12768.1,stats12768.2,stats12769.1,stats12769.2,stats12770.1,stats12770.2,stats12771.1,stats12771.2,stats12772.1,stats12772.2,stats12773.1,stats12773.2,stats12774.1,stats12774.2,stats12775.1,stats12775.2,stats12776.1,stats12776.2,stats12777.1,stats12777.2,stats12778.1,stats12778.2,stats12779.1,stats12779.2,stats12780.1,stats12780.2,stats12781.1,stats12781.2,stats12782.1,stats12782.2,stats12783.1,stats12783.2,stats12784.1,stats12784.2,stats12785.1,stats12785.2,stats12786.1,stats12786.2,stats12787.1,stats12787.2,stats12788.1,stats12788.2,stats12789.1,stats12789.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
