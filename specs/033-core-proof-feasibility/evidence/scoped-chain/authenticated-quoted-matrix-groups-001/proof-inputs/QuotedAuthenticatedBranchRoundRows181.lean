import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData182
import AuthenticatedBranchRoundInstructionMatrixData183
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11702 : actualRows11702=WordField.canonicalRows actualModulus 11702 (.bnot 11701) := by core033_kernel_decide
theorem stats11702 : actualRows11702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11702=6276 := by core033_kernel_decide
theorem rows11703 : actualRows11703=WordField.canonicalRows actualModulus 11703 (.badd 11700 11702) := by core033_kernel_decide
theorem stats11703 : actualRows11703.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11703=5388 := by core033_kernel_decide
theorem rows11704 : actualRows11704=WordField.canonicalRows actualModulus 11704 (.bnot 11703) := by core033_kernel_decide
theorem stats11704 : actualRows11704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11704=6276 := by core033_kernel_decide
theorem rows11705 : actualRows11705=WordField.canonicalRows actualModulus 11705 (.band 11698 11704) := by core033_kernel_decide
theorem stats11705 : actualRows11705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11705=5124 := by core033_kernel_decide
theorem rows11706 : actualRows11706=WordField.canonicalRows actualModulus 11706 (.bxor 11693 11705) := by core033_kernel_decide
theorem stats11706 : actualRows11706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11706=7428 := by core033_kernel_decide
theorem rows11707 : actualRows11707=WordField.canonicalRows actualModulus 11707 (.shr 11706 31) := by core033_kernel_decide
theorem stats11707 : actualRows11707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11707=2892 := by core033_kernel_decide
theorem rows11708 : actualRows11708=WordField.canonicalRows actualModulus 11708 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11708 : actualRows11708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11708=2892 := by core033_kernel_decide
theorem rows11709 : actualRows11709=WordField.canonicalRows actualModulus 11709 (.bxor 11707 11708) := by core033_kernel_decide
theorem stats11709 : actualRows11709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11709=7428 := by core033_kernel_decide
theorem rows11710 : actualRows11710=WordField.canonicalRows actualModulus 11710 (.bnot 11709) := by core033_kernel_decide
theorem stats11710 : actualRows11710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11710=6276 := by core033_kernel_decide
theorem rows11711 : actualRows11711=WordField.canonicalRows actualModulus 11711 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11711 : actualRows11711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11711=2892 := by core033_kernel_decide
theorem rows11712 : actualRows11712=WordField.canonicalRows actualModulus 11712 (.badd 11710 11711) := by core033_kernel_decide
theorem stats11712 : actualRows11712.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11712=5388 := by core033_kernel_decide
theorem rows11713 : actualRows11713=WordField.canonicalRows actualModulus 11713 (.band 11712 10675) := by core033_kernel_decide
theorem stats11713 : actualRows11713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11713=5124 := by core033_kernel_decide
theorem rows11714 : actualRows11714=WordField.canonicalRows actualModulus 11714 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11714 : actualRows11714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11714=2964 := by core033_kernel_decide
theorem rows11715 : actualRows11715=WordField.canonicalRows actualModulus 11715 (.bxor 693 11714) := by core033_kernel_decide
theorem stats11715 : actualRows11715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11715=7428 := by core033_kernel_decide
theorem rows11716 : actualRows11716=WordField.canonicalRows actualModulus 11716 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11716 : actualRows11716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11716=2820 := by core033_kernel_decide
theorem rows11717 : actualRows11717=WordField.canonicalRows actualModulus 11717 (.bnot 11716) := by core033_kernel_decide
theorem stats11717 : actualRows11717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11717=6276 := by core033_kernel_decide
theorem rows11718 : actualRows11718=WordField.canonicalRows actualModulus 11718 (.band 11715 11717) := by core033_kernel_decide
theorem stats11718 : actualRows11718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11718=5124 := by core033_kernel_decide
theorem rows11719 : actualRows11719=WordField.canonicalRows actualModulus 11719 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11719 : actualRows11719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11719=2964 := by core033_kernel_decide
theorem rows11720 : actualRows11720=WordField.canonicalRows actualModulus 11720 (.bxor 693 11719) := by core033_kernel_decide
theorem stats11720 : actualRows11720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11720=7428 := by core033_kernel_decide
theorem rows11721 : actualRows11721=WordField.canonicalRows actualModulus 11721 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11721 : actualRows11721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11721=2820 := by core033_kernel_decide
theorem rows11722 : actualRows11722=WordField.canonicalRows actualModulus 11722 (.bnot 11721) := by core033_kernel_decide
theorem stats11722 : actualRows11722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11722=6276 := by core033_kernel_decide
theorem rows11723 : actualRows11723=WordField.canonicalRows actualModulus 11723 (.bxor 11720 11722) := by core033_kernel_decide
theorem stats11723 : actualRows11723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11723=7428 := by core033_kernel_decide
theorem rows11724 : actualRows11724=WordField.canonicalRows actualModulus 11724 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11724 : actualRows11724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11724=2964 := by core033_kernel_decide
theorem rows11725 : actualRows11725=WordField.canonicalRows actualModulus 11725 (.bxor 693 11724) := by core033_kernel_decide
theorem stats11725 : actualRows11725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11725=7428 := by core033_kernel_decide
theorem rows11726 : actualRows11726=WordField.canonicalRows actualModulus 11726 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11726 : actualRows11726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11726=2820 := by core033_kernel_decide
theorem rows11727 : actualRows11727=WordField.canonicalRows actualModulus 11727 (.bnot 11726) := by core033_kernel_decide
theorem stats11727 : actualRows11727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11727=6276 := by core033_kernel_decide
theorem rows11728 : actualRows11728=WordField.canonicalRows actualModulus 11728 (.badd 11725 11727) := by core033_kernel_decide
theorem stats11728 : actualRows11728.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11728=5388 := by core033_kernel_decide
theorem rows11729 : actualRows11729=WordField.canonicalRows actualModulus 11729 (.bnot 11728) := by core033_kernel_decide
theorem stats11729 : actualRows11729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11729=6276 := by core033_kernel_decide
theorem rows11730 : actualRows11730=WordField.canonicalRows actualModulus 11730 (.band 11723 11729) := by core033_kernel_decide
theorem stats11730 : actualRows11730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11730=5124 := by core033_kernel_decide
theorem rows11731 : actualRows11731=WordField.canonicalRows actualModulus 11731 (.bxor 11718 11730) := by core033_kernel_decide
theorem stats11731 : actualRows11731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11731=7428 := by core033_kernel_decide
theorem rows11732 : actualRows11732=WordField.canonicalRows actualModulus 11732 (.shr 11731 31) := by core033_kernel_decide
theorem stats11732 : actualRows11732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11732=2892 := by core033_kernel_decide
theorem rows11733 : actualRows11733=WordField.canonicalRows actualModulus 11733 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11733 : actualRows11733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11733=2892 := by core033_kernel_decide
theorem rows11734 : actualRows11734=WordField.canonicalRows actualModulus 11734 (.bxor 11732 11733) := by core033_kernel_decide
theorem stats11734 : actualRows11734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11734=7428 := by core033_kernel_decide
theorem rows11735 : actualRows11735=WordField.canonicalRows actualModulus 11735 (.bnot 11734) := by core033_kernel_decide
theorem stats11735 : actualRows11735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11735=6276 := by core033_kernel_decide
theorem rows11736 : actualRows11736=WordField.canonicalRows actualModulus 11736 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11736 : actualRows11736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11736=2892 := by core033_kernel_decide
theorem rows11737 : actualRows11737=WordField.canonicalRows actualModulus 11737 (.badd 11735 11736) := by core033_kernel_decide
theorem stats11737 : actualRows11737.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11737=5388 := by core033_kernel_decide
theorem rows11738 : actualRows11738=WordField.canonicalRows actualModulus 11738 (.bnot 11737) := by core033_kernel_decide
theorem stats11738 : actualRows11738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11738=6276 := by core033_kernel_decide
theorem rows11739 : actualRows11739=WordField.canonicalRows actualModulus 11739 (.band 11738 1354) := by core033_kernel_decide
theorem stats11739 : actualRows11739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11739=5124 := by core033_kernel_decide
theorem rows11740 : actualRows11740=WordField.canonicalRows actualModulus 11740 (.bxor 11713 11739) := by core033_kernel_decide
theorem stats11740 : actualRows11740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11740=7428 := by core033_kernel_decide
theorem rows11741 : actualRows11741=WordField.canonicalRows actualModulus 11741 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11741 : actualRows11741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11741=2964 := by core033_kernel_decide
theorem rows11742 : actualRows11742=WordField.canonicalRows actualModulus 11742 (.bxor 693 11741) := by core033_kernel_decide
theorem stats11742 : actualRows11742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11742=7428 := by core033_kernel_decide
theorem rows11743 : actualRows11743=WordField.canonicalRows actualModulus 11743 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11743 : actualRows11743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11743=2820 := by core033_kernel_decide
theorem rows11744 : actualRows11744=WordField.canonicalRows actualModulus 11744 (.bnot 11743) := by core033_kernel_decide
theorem stats11744 : actualRows11744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11744=6276 := by core033_kernel_decide
theorem rows11745 : actualRows11745=WordField.canonicalRows actualModulus 11745 (.band 11742 11744) := by core033_kernel_decide
theorem stats11745 : actualRows11745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11745=5124 := by core033_kernel_decide
theorem rows11746 : actualRows11746=WordField.canonicalRows actualModulus 11746 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11746 : actualRows11746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11746=2964 := by core033_kernel_decide
theorem rows11747 : actualRows11747=WordField.canonicalRows actualModulus 11747 (.bxor 693 11746) := by core033_kernel_decide
theorem stats11747 : actualRows11747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11747=7428 := by core033_kernel_decide
theorem rows11748 : actualRows11748=WordField.canonicalRows actualModulus 11748 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11748 : actualRows11748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11748=2820 := by core033_kernel_decide
theorem rows11749 : actualRows11749=WordField.canonicalRows actualModulus 11749 (.bnot 11748) := by core033_kernel_decide
theorem stats11749 : actualRows11749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11749=6276 := by core033_kernel_decide
theorem rows11750 : actualRows11750=WordField.canonicalRows actualModulus 11750 (.bxor 11747 11749) := by core033_kernel_decide
theorem stats11750 : actualRows11750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11750=7428 := by core033_kernel_decide
theorem rows11751 : actualRows11751=WordField.canonicalRows actualModulus 11751 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11751 : actualRows11751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11751=2964 := by core033_kernel_decide
theorem rows11752 : actualRows11752=WordField.canonicalRows actualModulus 11752 (.bxor 693 11751) := by core033_kernel_decide
theorem stats11752 : actualRows11752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11752=7428 := by core033_kernel_decide
theorem rows11753 : actualRows11753=WordField.canonicalRows actualModulus 11753 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11753 : actualRows11753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11753=2820 := by core033_kernel_decide
theorem rows11754 : actualRows11754=WordField.canonicalRows actualModulus 11754 (.bnot 11753) := by core033_kernel_decide
theorem stats11754 : actualRows11754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11754=6276 := by core033_kernel_decide
theorem rows11755 : actualRows11755=WordField.canonicalRows actualModulus 11755 (.badd 11752 11754) := by core033_kernel_decide
theorem stats11755 : actualRows11755.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11755=5388 := by core033_kernel_decide
theorem rows11756 : actualRows11756=WordField.canonicalRows actualModulus 11756 (.bnot 11755) := by core033_kernel_decide
theorem stats11756 : actualRows11756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11756=6276 := by core033_kernel_decide
theorem rows11757 : actualRows11757=WordField.canonicalRows actualModulus 11757 (.band 11750 11756) := by core033_kernel_decide
theorem stats11757 : actualRows11757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11757=5124 := by core033_kernel_decide
theorem rows11758 : actualRows11758=WordField.canonicalRows actualModulus 11758 (.bxor 11745 11757) := by core033_kernel_decide
theorem stats11758 : actualRows11758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11758=7428 := by core033_kernel_decide
theorem rows11759 : actualRows11759=WordField.canonicalRows actualModulus 11759 (.shr 11758 31) := by core033_kernel_decide
theorem stats11759 : actualRows11759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11759=2892 := by core033_kernel_decide
theorem rows11760 : actualRows11760=WordField.canonicalRows actualModulus 11760 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11760 : actualRows11760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11760=2892 := by core033_kernel_decide
theorem rows11761 : actualRows11761=WordField.canonicalRows actualModulus 11761 (.bxor 11759 11760) := by core033_kernel_decide
theorem stats11761 : actualRows11761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11761=7428 := by core033_kernel_decide
theorem rows11762 : actualRows11762=WordField.canonicalRows actualModulus 11762 (.bnot 11761) := by core033_kernel_decide
theorem stats11762 : actualRows11762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11762=6276 := by core033_kernel_decide
theorem rows11763 : actualRows11763=WordField.canonicalRows actualModulus 11763 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11763 : actualRows11763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11763=2892 := by core033_kernel_decide
theorem rows11764 : actualRows11764=WordField.canonicalRows actualModulus 11764 (.badd 11762 11763) := by core033_kernel_decide
theorem stats11764 : actualRows11764.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11764=5388 := by core033_kernel_decide
theorem rows11765 : actualRows11765=WordField.canonicalRows actualModulus 11765 (.band 11764 10686) := by core033_kernel_decide
theorem stats11765 : actualRows11765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11765=5124 := by core033_kernel_decide
def partRows181 : List R1CS.Row := actualRows11702++actualRows11703++actualRows11704++actualRows11705++actualRows11706++actualRows11707++actualRows11708++actualRows11709++actualRows11710++actualRows11711++actualRows11712++actualRows11713++actualRows11714++actualRows11715++actualRows11716++actualRows11717++actualRows11718++actualRows11719++actualRows11720++actualRows11721++actualRows11722++actualRows11723++actualRows11724++actualRows11725++actualRows11726++actualRows11727++actualRows11728++actualRows11729++actualRows11730++actualRows11731++actualRows11732++actualRows11733++actualRows11734++actualRows11735++actualRows11736++actualRows11737++actualRows11738++actualRows11739++actualRows11740++actualRows11741++actualRows11742++actualRows11743++actualRows11744++actualRows11745++actualRows11746++actualRows11747++actualRows11748++actualRows11749++actualRows11750++actualRows11751++actualRows11752++actualRows11753++actualRows11754++actualRows11755++actualRows11756++actualRows11757++actualRows11758++actualRows11759++actualRows11760++actualRows11761++actualRows11762++actualRows11763++actualRows11764++actualRows11765
def partOps181 : List WordIR.Op := [.bnot 11701,.badd 11700 11702,.bnot 11703,.band 11698 11704,.bxor 11693 11705,.shr 11706 31,.literal (BitVec.ofNat 32 1),.bxor 11707 11708,.bnot 11709,.literal (BitVec.ofNat 32 1),.badd 11710 11711,.band 11712 10675,.literal (BitVec.ofNat 32 3),.bxor 693 11714,.literal (BitVec.ofNat 32 0),.bnot 11716,.band 11715 11717,.literal (BitVec.ofNat 32 3),.bxor 693 11719,.literal (BitVec.ofNat 32 0),.bnot 11721,.bxor 11720 11722,.literal (BitVec.ofNat 32 3),.bxor 693 11724,.literal (BitVec.ofNat 32 0),.bnot 11726,.badd 11725 11727,.bnot 11728,.band 11723 11729,.bxor 11718 11730,.shr 11731 31,.literal (BitVec.ofNat 32 1),.bxor 11732 11733,.bnot 11734,.literal (BitVec.ofNat 32 1),.badd 11735 11736,.bnot 11737,.band 11738 1354,.bxor 11713 11739,.literal (BitVec.ofNat 32 3),.bxor 693 11741,.literal (BitVec.ofNat 32 0),.bnot 11743,.band 11742 11744,.literal (BitVec.ofNat 32 3),.bxor 693 11746,.literal (BitVec.ofNat 32 0),.bnot 11748,.bxor 11747 11749,.literal (BitVec.ofNat 32 3),.bxor 693 11751,.literal (BitVec.ofNat 32 0),.bnot 11753,.badd 11752 11754,.bnot 11755,.band 11750 11756,.bxor 11745 11757,.shr 11758 31,.literal (BitVec.ofNat 32 1),.bxor 11759 11760,.bnot 11761,.literal (BitVec.ofNat 32 1),.badd 11762 11763,.band 11764 10686]
theorem partExact181 : partRows181=WordField.rows actualModulus 11702 partOps181 := by
  simp only [partRows181,partOps181,WordField.rows,rows11702,rows11703,rows11704,rows11705,rows11706,rows11707,rows11708,rows11709,rows11710,rows11711,rows11712,rows11713,rows11714,rows11715,rows11716,rows11717,rows11718,rows11719,rows11720,rows11721,rows11722,rows11723,rows11724,rows11725,rows11726,rows11727,rows11728,rows11729,rows11730,rows11731,rows11732,rows11733,rows11734,rows11735,rows11736,rows11737,rows11738,rows11739,rows11740,rows11741,rows11742,rows11743,rows11744,rows11745,rows11746,rows11747,rows11748,rows11749,rows11750,rows11751,rows11752,rows11753,rows11754,rows11755,rows11756,rows11757,rows11758,rows11759,rows11760,rows11761,rows11762,rows11763,rows11764,rows11765,List.append_assoc,List.append_nil]
theorem partLength181 : partOps181.length=64 := by decide
theorem partStats181 : partRows181.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows181=333336 := by
  simp only [partRows181,List.length_append,MatrixRowBlocks.rows_weight_append,stats11702.1,stats11702.2,stats11703.1,stats11703.2,stats11704.1,stats11704.2,stats11705.1,stats11705.2,stats11706.1,stats11706.2,stats11707.1,stats11707.2,stats11708.1,stats11708.2,stats11709.1,stats11709.2,stats11710.1,stats11710.2,stats11711.1,stats11711.2,stats11712.1,stats11712.2,stats11713.1,stats11713.2,stats11714.1,stats11714.2,stats11715.1,stats11715.2,stats11716.1,stats11716.2,stats11717.1,stats11717.2,stats11718.1,stats11718.2,stats11719.1,stats11719.2,stats11720.1,stats11720.2,stats11721.1,stats11721.2,stats11722.1,stats11722.2,stats11723.1,stats11723.2,stats11724.1,stats11724.2,stats11725.1,stats11725.2,stats11726.1,stats11726.2,stats11727.1,stats11727.2,stats11728.1,stats11728.2,stats11729.1,stats11729.2,stats11730.1,stats11730.2,stats11731.1,stats11731.2,stats11732.1,stats11732.2,stats11733.1,stats11733.2,stats11734.1,stats11734.2,stats11735.1,stats11735.2,stats11736.1,stats11736.2,stats11737.1,stats11737.2,stats11738.1,stats11738.2,stats11739.1,stats11739.2,stats11740.1,stats11740.2,stats11741.1,stats11741.2,stats11742.1,stats11742.2,stats11743.1,stats11743.2,stats11744.1,stats11744.2,stats11745.1,stats11745.2,stats11746.1,stats11746.2,stats11747.1,stats11747.2,stats11748.1,stats11748.2,stats11749.1,stats11749.2,stats11750.1,stats11750.2,stats11751.1,stats11751.2,stats11752.1,stats11752.2,stats11753.1,stats11753.2,stats11754.1,stats11754.2,stats11755.1,stats11755.2,stats11756.1,stats11756.2,stats11757.1,stats11757.2,stats11758.1,stats11758.2,stats11759.1,stats11759.2,stats11760.1,stats11760.2,stats11761.1,stats11761.2,stats11762.1,stats11762.2,stats11763.1,stats11763.2,stats11764.1,stats11764.2,stats11765.1,stats11765.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
