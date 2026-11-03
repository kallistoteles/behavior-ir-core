import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData198
import PairedPathRoundInstructionMatrixData199
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows12704 : actualRows12704=WordField.canonicalRows actualModulus 12704 (.bxor 12701 12703) := by core033_kernel_decide
theorem stats12704 : actualRows12704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12704=7428 := by core033_kernel_decide
theorem rows12705 : actualRows12705=WordField.canonicalRows actualModulus 12705 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12705 : actualRows12705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12705=2964 := by core033_kernel_decide
theorem rows12706 : actualRows12706=WordField.canonicalRows actualModulus 12706 (.bxor 442 12705) := by core033_kernel_decide
theorem stats12706 : actualRows12706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12706=7428 := by core033_kernel_decide
theorem rows12707 : actualRows12707=WordField.canonicalRows actualModulus 12707 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12707 : actualRows12707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12707=2820 := by core033_kernel_decide
theorem rows12708 : actualRows12708=WordField.canonicalRows actualModulus 12708 (.bnot 12707) := by core033_kernel_decide
theorem stats12708 : actualRows12708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12708=6276 := by core033_kernel_decide
theorem rows12709 : actualRows12709=WordField.canonicalRows actualModulus 12709 (.badd 12706 12708) := by core033_kernel_decide
theorem stats12709 : actualRows12709.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12709=5388 := by core033_kernel_decide
theorem rows12710 : actualRows12710=WordField.canonicalRows actualModulus 12710 (.bnot 12709) := by core033_kernel_decide
theorem stats12710 : actualRows12710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12710=6276 := by core033_kernel_decide
theorem rows12711 : actualRows12711=WordField.canonicalRows actualModulus 12711 (.band 12704 12710) := by core033_kernel_decide
theorem stats12711 : actualRows12711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12711=5124 := by core033_kernel_decide
theorem rows12712 : actualRows12712=WordField.canonicalRows actualModulus 12712 (.bxor 12699 12711) := by core033_kernel_decide
theorem stats12712 : actualRows12712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12712=7428 := by core033_kernel_decide
theorem rows12713 : actualRows12713=WordField.canonicalRows actualModulus 12713 (.shr 12712 31) := by core033_kernel_decide
theorem stats12713 : actualRows12713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12713=2892 := by core033_kernel_decide
theorem rows12714 : actualRows12714=WordField.canonicalRows actualModulus 12714 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12714 : actualRows12714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12714=2892 := by core033_kernel_decide
theorem rows12715 : actualRows12715=WordField.canonicalRows actualModulus 12715 (.bxor 12713 12714) := by core033_kernel_decide
theorem stats12715 : actualRows12715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12715=7428 := by core033_kernel_decide
theorem rows12716 : actualRows12716=WordField.canonicalRows actualModulus 12716 (.bnot 12715) := by core033_kernel_decide
theorem stats12716 : actualRows12716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12716=6276 := by core033_kernel_decide
theorem rows12717 : actualRows12717=WordField.canonicalRows actualModulus 12717 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12717 : actualRows12717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12717=2892 := by core033_kernel_decide
theorem rows12718 : actualRows12718=WordField.canonicalRows actualModulus 12718 (.badd 12716 12717) := by core033_kernel_decide
theorem stats12718 : actualRows12718.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12718=5388 := by core033_kernel_decide
theorem rows12719 : actualRows12719=WordField.canonicalRows actualModulus 12719 (.bnot 12718) := by core033_kernel_decide
theorem stats12719 : actualRows12719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12719=6276 := by core033_kernel_decide
theorem rows12720 : actualRows12720=WordField.canonicalRows actualModulus 12720 (.band 12719 9803) := by core033_kernel_decide
theorem stats12720 : actualRows12720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12720=5124 := by core033_kernel_decide
theorem rows12721 : actualRows12721=WordField.canonicalRows actualModulus 12721 (.bxor 12694 12720) := by core033_kernel_decide
theorem stats12721 : actualRows12721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12721=7428 := by core033_kernel_decide
theorem rows12722 : actualRows12722=WordField.canonicalRows actualModulus 12722 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12722 : actualRows12722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12722=2964 := by core033_kernel_decide
theorem rows12723 : actualRows12723=WordField.canonicalRows actualModulus 12723 (.bxor 442 12722) := by core033_kernel_decide
theorem stats12723 : actualRows12723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12723=7428 := by core033_kernel_decide
theorem rows12724 : actualRows12724=WordField.canonicalRows actualModulus 12724 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12724 : actualRows12724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12724=2820 := by core033_kernel_decide
theorem rows12725 : actualRows12725=WordField.canonicalRows actualModulus 12725 (.bnot 12724) := by core033_kernel_decide
theorem stats12725 : actualRows12725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12725=6276 := by core033_kernel_decide
theorem rows12726 : actualRows12726=WordField.canonicalRows actualModulus 12726 (.band 12723 12725) := by core033_kernel_decide
theorem stats12726 : actualRows12726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12726=5124 := by core033_kernel_decide
theorem rows12727 : actualRows12727=WordField.canonicalRows actualModulus 12727 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12727 : actualRows12727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12727=2964 := by core033_kernel_decide
theorem rows12728 : actualRows12728=WordField.canonicalRows actualModulus 12728 (.bxor 442 12727) := by core033_kernel_decide
theorem stats12728 : actualRows12728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12728=7428 := by core033_kernel_decide
theorem rows12729 : actualRows12729=WordField.canonicalRows actualModulus 12729 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12729 : actualRows12729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12729=2820 := by core033_kernel_decide
theorem rows12730 : actualRows12730=WordField.canonicalRows actualModulus 12730 (.bnot 12729) := by core033_kernel_decide
theorem stats12730 : actualRows12730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12730=6276 := by core033_kernel_decide
theorem rows12731 : actualRows12731=WordField.canonicalRows actualModulus 12731 (.bxor 12728 12730) := by core033_kernel_decide
theorem stats12731 : actualRows12731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12731=7428 := by core033_kernel_decide
theorem rows12732 : actualRows12732=WordField.canonicalRows actualModulus 12732 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12732 : actualRows12732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12732=2964 := by core033_kernel_decide
theorem rows12733 : actualRows12733=WordField.canonicalRows actualModulus 12733 (.bxor 442 12732) := by core033_kernel_decide
theorem stats12733 : actualRows12733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12733=7428 := by core033_kernel_decide
theorem rows12734 : actualRows12734=WordField.canonicalRows actualModulus 12734 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12734 : actualRows12734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12734=2820 := by core033_kernel_decide
theorem rows12735 : actualRows12735=WordField.canonicalRows actualModulus 12735 (.bnot 12734) := by core033_kernel_decide
theorem stats12735 : actualRows12735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12735=6276 := by core033_kernel_decide
theorem rows12736 : actualRows12736=WordField.canonicalRows actualModulus 12736 (.badd 12733 12735) := by core033_kernel_decide
theorem stats12736 : actualRows12736.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12736=5388 := by core033_kernel_decide
theorem rows12737 : actualRows12737=WordField.canonicalRows actualModulus 12737 (.bnot 12736) := by core033_kernel_decide
theorem stats12737 : actualRows12737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12737=6276 := by core033_kernel_decide
theorem rows12738 : actualRows12738=WordField.canonicalRows actualModulus 12738 (.band 12731 12737) := by core033_kernel_decide
theorem stats12738 : actualRows12738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12738=5124 := by core033_kernel_decide
theorem rows12739 : actualRows12739=WordField.canonicalRows actualModulus 12739 (.bxor 12726 12738) := by core033_kernel_decide
theorem stats12739 : actualRows12739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12739=7428 := by core033_kernel_decide
theorem rows12740 : actualRows12740=WordField.canonicalRows actualModulus 12740 (.shr 12739 31) := by core033_kernel_decide
theorem stats12740 : actualRows12740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12740=2892 := by core033_kernel_decide
theorem rows12741 : actualRows12741=WordField.canonicalRows actualModulus 12741 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12741 : actualRows12741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12741=2892 := by core033_kernel_decide
theorem rows12742 : actualRows12742=WordField.canonicalRows actualModulus 12742 (.bxor 12740 12741) := by core033_kernel_decide
theorem stats12742 : actualRows12742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12742=7428 := by core033_kernel_decide
theorem rows12743 : actualRows12743=WordField.canonicalRows actualModulus 12743 (.bnot 12742) := by core033_kernel_decide
theorem stats12743 : actualRows12743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12743=6276 := by core033_kernel_decide
theorem rows12744 : actualRows12744=WordField.canonicalRows actualModulus 12744 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12744 : actualRows12744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12744=2892 := by core033_kernel_decide
theorem rows12745 : actualRows12745=WordField.canonicalRows actualModulus 12745 (.badd 12743 12744) := by core033_kernel_decide
theorem stats12745 : actualRows12745.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12745=5388 := by core033_kernel_decide
theorem rows12746 : actualRows12746=WordField.canonicalRows actualModulus 12746 (.band 12745 10355) := by core033_kernel_decide
theorem stats12746 : actualRows12746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12746=5124 := by core033_kernel_decide
theorem rows12747 : actualRows12747=WordField.canonicalRows actualModulus 12747 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12747 : actualRows12747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12747=2964 := by core033_kernel_decide
theorem rows12748 : actualRows12748=WordField.canonicalRows actualModulus 12748 (.bxor 442 12747) := by core033_kernel_decide
theorem stats12748 : actualRows12748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12748=7428 := by core033_kernel_decide
theorem rows12749 : actualRows12749=WordField.canonicalRows actualModulus 12749 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12749 : actualRows12749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12749=2820 := by core033_kernel_decide
theorem rows12750 : actualRows12750=WordField.canonicalRows actualModulus 12750 (.bnot 12749) := by core033_kernel_decide
theorem stats12750 : actualRows12750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12750=6276 := by core033_kernel_decide
theorem rows12751 : actualRows12751=WordField.canonicalRows actualModulus 12751 (.band 12748 12750) := by core033_kernel_decide
theorem stats12751 : actualRows12751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12751=5124 := by core033_kernel_decide
theorem rows12752 : actualRows12752=WordField.canonicalRows actualModulus 12752 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12752 : actualRows12752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12752=2964 := by core033_kernel_decide
theorem rows12753 : actualRows12753=WordField.canonicalRows actualModulus 12753 (.bxor 442 12752) := by core033_kernel_decide
theorem stats12753 : actualRows12753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12753=7428 := by core033_kernel_decide
theorem rows12754 : actualRows12754=WordField.canonicalRows actualModulus 12754 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12754 : actualRows12754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12754=2820 := by core033_kernel_decide
theorem rows12755 : actualRows12755=WordField.canonicalRows actualModulus 12755 (.bnot 12754) := by core033_kernel_decide
theorem stats12755 : actualRows12755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12755=6276 := by core033_kernel_decide
theorem rows12756 : actualRows12756=WordField.canonicalRows actualModulus 12756 (.bxor 12753 12755) := by core033_kernel_decide
theorem stats12756 : actualRows12756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12756=7428 := by core033_kernel_decide
theorem rows12757 : actualRows12757=WordField.canonicalRows actualModulus 12757 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats12757 : actualRows12757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12757=2964 := by core033_kernel_decide
theorem rows12758 : actualRows12758=WordField.canonicalRows actualModulus 12758 (.bxor 442 12757) := by core033_kernel_decide
theorem stats12758 : actualRows12758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12758=7428 := by core033_kernel_decide
theorem rows12759 : actualRows12759=WordField.canonicalRows actualModulus 12759 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats12759 : actualRows12759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12759=2820 := by core033_kernel_decide
theorem rows12760 : actualRows12760=WordField.canonicalRows actualModulus 12760 (.bnot 12759) := by core033_kernel_decide
theorem stats12760 : actualRows12760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12760=6276 := by core033_kernel_decide
theorem rows12761 : actualRows12761=WordField.canonicalRows actualModulus 12761 (.badd 12758 12760) := by core033_kernel_decide
theorem stats12761 : actualRows12761.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows12761=5388 := by core033_kernel_decide
theorem rows12762 : actualRows12762=WordField.canonicalRows actualModulus 12762 (.bnot 12761) := by core033_kernel_decide
theorem stats12762 : actualRows12762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12762=6276 := by core033_kernel_decide
theorem rows12763 : actualRows12763=WordField.canonicalRows actualModulus 12763 (.band 12756 12762) := by core033_kernel_decide
theorem stats12763 : actualRows12763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12763=5124 := by core033_kernel_decide
theorem rows12764 : actualRows12764=WordField.canonicalRows actualModulus 12764 (.bxor 12751 12763) := by core033_kernel_decide
theorem stats12764 : actualRows12764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12764=7428 := by core033_kernel_decide
theorem rows12765 : actualRows12765=WordField.canonicalRows actualModulus 12765 (.shr 12764 31) := by core033_kernel_decide
theorem stats12765 : actualRows12765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12765=2892 := by core033_kernel_decide
theorem rows12766 : actualRows12766=WordField.canonicalRows actualModulus 12766 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats12766 : actualRows12766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12766=2892 := by core033_kernel_decide
theorem rows12767 : actualRows12767=WordField.canonicalRows actualModulus 12767 (.bxor 12765 12766) := by core033_kernel_decide
theorem stats12767 : actualRows12767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows12767=7428 := by core033_kernel_decide
def partRows197 : List R1CS.Row := actualRows12704++actualRows12705++actualRows12706++actualRows12707++actualRows12708++actualRows12709++actualRows12710++actualRows12711++actualRows12712++actualRows12713++actualRows12714++actualRows12715++actualRows12716++actualRows12717++actualRows12718++actualRows12719++actualRows12720++actualRows12721++actualRows12722++actualRows12723++actualRows12724++actualRows12725++actualRows12726++actualRows12727++actualRows12728++actualRows12729++actualRows12730++actualRows12731++actualRows12732++actualRows12733++actualRows12734++actualRows12735++actualRows12736++actualRows12737++actualRows12738++actualRows12739++actualRows12740++actualRows12741++actualRows12742++actualRows12743++actualRows12744++actualRows12745++actualRows12746++actualRows12747++actualRows12748++actualRows12749++actualRows12750++actualRows12751++actualRows12752++actualRows12753++actualRows12754++actualRows12755++actualRows12756++actualRows12757++actualRows12758++actualRows12759++actualRows12760++actualRows12761++actualRows12762++actualRows12763++actualRows12764++actualRows12765++actualRows12766++actualRows12767
def partOps197 : List WordIR.Op := [.bxor 12701 12703,.literal (BitVec.ofNat 32 3),.bxor 442 12705,.literal (BitVec.ofNat 32 0),.bnot 12707,.badd 12706 12708,.bnot 12709,.band 12704 12710,.bxor 12699 12711,.shr 12712 31,.literal (BitVec.ofNat 32 1),.bxor 12713 12714,.bnot 12715,.literal (BitVec.ofNat 32 1),.badd 12716 12717,.bnot 12718,.band 12719 9803,.bxor 12694 12720,.literal (BitVec.ofNat 32 3),.bxor 442 12722,.literal (BitVec.ofNat 32 0),.bnot 12724,.band 12723 12725,.literal (BitVec.ofNat 32 3),.bxor 442 12727,.literal (BitVec.ofNat 32 0),.bnot 12729,.bxor 12728 12730,.literal (BitVec.ofNat 32 3),.bxor 442 12732,.literal (BitVec.ofNat 32 0),.bnot 12734,.badd 12733 12735,.bnot 12736,.band 12731 12737,.bxor 12726 12738,.shr 12739 31,.literal (BitVec.ofNat 32 1),.bxor 12740 12741,.bnot 12742,.literal (BitVec.ofNat 32 1),.badd 12743 12744,.band 12745 10355,.literal (BitVec.ofNat 32 3),.bxor 442 12747,.literal (BitVec.ofNat 32 0),.bnot 12749,.band 12748 12750,.literal (BitVec.ofNat 32 3),.bxor 442 12752,.literal (BitVec.ofNat 32 0),.bnot 12754,.bxor 12753 12755,.literal (BitVec.ofNat 32 3),.bxor 442 12757,.literal (BitVec.ofNat 32 0),.bnot 12759,.badd 12758 12760,.bnot 12761,.band 12756 12762,.bxor 12751 12763,.shr 12764 31,.literal (BitVec.ofNat 32 1),.bxor 12765 12766]
theorem partExact197 : partRows197=WordField.rows actualModulus 12704 partOps197 := by
  simp only [partRows197,partOps197,WordField.rows,rows12704,rows12705,rows12706,rows12707,rows12708,rows12709,rows12710,rows12711,rows12712,rows12713,rows12714,rows12715,rows12716,rows12717,rows12718,rows12719,rows12720,rows12721,rows12722,rows12723,rows12724,rows12725,rows12726,rows12727,rows12728,rows12729,rows12730,rows12731,rows12732,rows12733,rows12734,rows12735,rows12736,rows12737,rows12738,rows12739,rows12740,rows12741,rows12742,rows12743,rows12744,rows12745,rows12746,rows12747,rows12748,rows12749,rows12750,rows12751,rows12752,rows12753,rows12754,rows12755,rows12756,rows12757,rows12758,rows12759,rows12760,rows12761,rows12762,rows12763,rows12764,rows12765,rows12766,rows12767,List.append_assoc,List.append_nil]
theorem partLength197 : partOps197.length=64 := by decide
theorem partStats197 : partRows197.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows197=334296 := by
  simp only [partRows197,List.length_append,MatrixRowBlocks.rows_weight_append,stats12704.1,stats12704.2,stats12705.1,stats12705.2,stats12706.1,stats12706.2,stats12707.1,stats12707.2,stats12708.1,stats12708.2,stats12709.1,stats12709.2,stats12710.1,stats12710.2,stats12711.1,stats12711.2,stats12712.1,stats12712.2,stats12713.1,stats12713.2,stats12714.1,stats12714.2,stats12715.1,stats12715.2,stats12716.1,stats12716.2,stats12717.1,stats12717.2,stats12718.1,stats12718.2,stats12719.1,stats12719.2,stats12720.1,stats12720.2,stats12721.1,stats12721.2,stats12722.1,stats12722.2,stats12723.1,stats12723.2,stats12724.1,stats12724.2,stats12725.1,stats12725.2,stats12726.1,stats12726.2,stats12727.1,stats12727.2,stats12728.1,stats12728.2,stats12729.1,stats12729.2,stats12730.1,stats12730.2,stats12731.1,stats12731.2,stats12732.1,stats12732.2,stats12733.1,stats12733.2,stats12734.1,stats12734.2,stats12735.1,stats12735.2,stats12736.1,stats12736.2,stats12737.1,stats12737.2,stats12738.1,stats12738.2,stats12739.1,stats12739.2,stats12740.1,stats12740.2,stats12741.1,stats12741.2,stats12742.1,stats12742.2,stats12743.1,stats12743.2,stats12744.1,stats12744.2,stats12745.1,stats12745.2,stats12746.1,stats12746.2,stats12747.1,stats12747.2,stats12748.1,stats12748.2,stats12749.1,stats12749.2,stats12750.1,stats12750.2,stats12751.1,stats12751.2,stats12752.1,stats12752.2,stats12753.1,stats12753.2,stats12754.1,stats12754.2,stats12755.1,stats12755.2,stats12756.1,stats12756.2,stats12757.1,stats12757.2,stats12758.1,stats12758.2,stats12759.1,stats12759.2,stats12760.1,stats12760.2,stats12761.1,stats12761.2,stats12762.1,stats12762.2,stats12763.1,stats12763.2,stats12764.1,stats12764.2,stats12765.1,stats12765.2,stats12766.1,stats12766.2,stats12767.1,stats12767.2]
  decide
end QuotedPairedPathRoundCheckedRows
