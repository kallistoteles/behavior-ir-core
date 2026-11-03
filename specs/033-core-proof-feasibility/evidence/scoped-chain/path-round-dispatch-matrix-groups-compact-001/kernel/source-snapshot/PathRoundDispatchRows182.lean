import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData182
import PathRoundDispatchInstructionMatrixData183
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11691 : actualRows11691=WordField.canonicalRows actualModulus 11691 (.bxor 11688 11690) := by core033_kernel_decide
theorem stats11691 : actualRows11691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11691=7428 := by core033_kernel_decide
theorem rows11692 : actualRows11692=WordField.canonicalRows actualModulus 11692 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11692 : actualRows11692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11692=2964 := by core033_kernel_decide
theorem rows11693 : actualRows11693=WordField.canonicalRows actualModulus 11693 (.bxor 0 11692) := by core033_kernel_decide
theorem stats11693 : actualRows11693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11693=7428 := by core033_kernel_decide
theorem rows11694 : actualRows11694=WordField.canonicalRows actualModulus 11694 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11694 : actualRows11694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11694=2820 := by core033_kernel_decide
theorem rows11695 : actualRows11695=WordField.canonicalRows actualModulus 11695 (.bnot 11694) := by core033_kernel_decide
theorem stats11695 : actualRows11695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11695=6276 := by core033_kernel_decide
theorem rows11696 : actualRows11696=WordField.canonicalRows actualModulus 11696 (.badd 11693 11695) := by core033_kernel_decide
theorem stats11696 : actualRows11696.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11696=5388 := by core033_kernel_decide
theorem rows11697 : actualRows11697=WordField.canonicalRows actualModulus 11697 (.bnot 11696) := by core033_kernel_decide
theorem stats11697 : actualRows11697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11697=6276 := by core033_kernel_decide
theorem rows11698 : actualRows11698=WordField.canonicalRows actualModulus 11698 (.band 11691 11697) := by core033_kernel_decide
theorem stats11698 : actualRows11698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11698=5124 := by core033_kernel_decide
theorem rows11699 : actualRows11699=WordField.canonicalRows actualModulus 11699 (.bxor 11686 11698) := by core033_kernel_decide
theorem stats11699 : actualRows11699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11699=7428 := by core033_kernel_decide
theorem rows11700 : actualRows11700=WordField.canonicalRows actualModulus 11700 (.shr 11699 31) := by core033_kernel_decide
theorem stats11700 : actualRows11700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11700=2892 := by core033_kernel_decide
theorem rows11701 : actualRows11701=WordField.canonicalRows actualModulus 11701 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11701 : actualRows11701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11701=2892 := by core033_kernel_decide
theorem rows11702 : actualRows11702=WordField.canonicalRows actualModulus 11702 (.bxor 11700 11701) := by core033_kernel_decide
theorem stats11702 : actualRows11702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11702=7428 := by core033_kernel_decide
theorem rows11703 : actualRows11703=WordField.canonicalRows actualModulus 11703 (.bnot 11702) := by core033_kernel_decide
theorem stats11703 : actualRows11703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11703=6276 := by core033_kernel_decide
theorem rows11704 : actualRows11704=WordField.canonicalRows actualModulus 11704 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11704 : actualRows11704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11704=2892 := by core033_kernel_decide
theorem rows11705 : actualRows11705=WordField.canonicalRows actualModulus 11705 (.badd 11703 11704) := by core033_kernel_decide
theorem stats11705 : actualRows11705.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11705=5388 := by core033_kernel_decide
theorem rows11706 : actualRows11706=WordField.canonicalRows actualModulus 11706 (.band 11705 9945) := by core033_kernel_decide
theorem stats11706 : actualRows11706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11706=5124 := by core033_kernel_decide
theorem rows11707 : actualRows11707=WordField.canonicalRows actualModulus 11707 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11707 : actualRows11707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11707=2964 := by core033_kernel_decide
theorem rows11708 : actualRows11708=WordField.canonicalRows actualModulus 11708 (.bxor 0 11707) := by core033_kernel_decide
theorem stats11708 : actualRows11708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11708=7428 := by core033_kernel_decide
theorem rows11709 : actualRows11709=WordField.canonicalRows actualModulus 11709 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11709 : actualRows11709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11709=2820 := by core033_kernel_decide
theorem rows11710 : actualRows11710=WordField.canonicalRows actualModulus 11710 (.bnot 11709) := by core033_kernel_decide
theorem stats11710 : actualRows11710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11710=6276 := by core033_kernel_decide
theorem rows11711 : actualRows11711=WordField.canonicalRows actualModulus 11711 (.band 11708 11710) := by core033_kernel_decide
theorem stats11711 : actualRows11711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11711=5124 := by core033_kernel_decide
theorem rows11712 : actualRows11712=WordField.canonicalRows actualModulus 11712 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11712 : actualRows11712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11712=2964 := by core033_kernel_decide
theorem rows11713 : actualRows11713=WordField.canonicalRows actualModulus 11713 (.bxor 0 11712) := by core033_kernel_decide
theorem stats11713 : actualRows11713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11713=7428 := by core033_kernel_decide
theorem rows11714 : actualRows11714=WordField.canonicalRows actualModulus 11714 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11714 : actualRows11714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11714=2820 := by core033_kernel_decide
theorem rows11715 : actualRows11715=WordField.canonicalRows actualModulus 11715 (.bnot 11714) := by core033_kernel_decide
theorem stats11715 : actualRows11715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11715=6276 := by core033_kernel_decide
theorem rows11716 : actualRows11716=WordField.canonicalRows actualModulus 11716 (.bxor 11713 11715) := by core033_kernel_decide
theorem stats11716 : actualRows11716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11716=7428 := by core033_kernel_decide
theorem rows11717 : actualRows11717=WordField.canonicalRows actualModulus 11717 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11717 : actualRows11717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11717=2964 := by core033_kernel_decide
theorem rows11718 : actualRows11718=WordField.canonicalRows actualModulus 11718 (.bxor 0 11717) := by core033_kernel_decide
theorem stats11718 : actualRows11718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11718=7428 := by core033_kernel_decide
theorem rows11719 : actualRows11719=WordField.canonicalRows actualModulus 11719 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11719 : actualRows11719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11719=2820 := by core033_kernel_decide
theorem rows11720 : actualRows11720=WordField.canonicalRows actualModulus 11720 (.bnot 11719) := by core033_kernel_decide
theorem stats11720 : actualRows11720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11720=6276 := by core033_kernel_decide
theorem rows11721 : actualRows11721=WordField.canonicalRows actualModulus 11721 (.badd 11718 11720) := by core033_kernel_decide
theorem stats11721 : actualRows11721.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11721=5388 := by core033_kernel_decide
theorem rows11722 : actualRows11722=WordField.canonicalRows actualModulus 11722 (.bnot 11721) := by core033_kernel_decide
theorem stats11722 : actualRows11722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11722=6276 := by core033_kernel_decide
theorem rows11723 : actualRows11723=WordField.canonicalRows actualModulus 11723 (.band 11716 11722) := by core033_kernel_decide
theorem stats11723 : actualRows11723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11723=5124 := by core033_kernel_decide
theorem rows11724 : actualRows11724=WordField.canonicalRows actualModulus 11724 (.bxor 11711 11723) := by core033_kernel_decide
theorem stats11724 : actualRows11724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11724=7428 := by core033_kernel_decide
theorem rows11725 : actualRows11725=WordField.canonicalRows actualModulus 11725 (.shr 11724 31) := by core033_kernel_decide
theorem stats11725 : actualRows11725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11725=2892 := by core033_kernel_decide
theorem rows11726 : actualRows11726=WordField.canonicalRows actualModulus 11726 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11726 : actualRows11726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11726=2892 := by core033_kernel_decide
theorem rows11727 : actualRows11727=WordField.canonicalRows actualModulus 11727 (.bxor 11725 11726) := by core033_kernel_decide
theorem stats11727 : actualRows11727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11727=7428 := by core033_kernel_decide
theorem rows11728 : actualRows11728=WordField.canonicalRows actualModulus 11728 (.bnot 11727) := by core033_kernel_decide
theorem stats11728 : actualRows11728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11728=6276 := by core033_kernel_decide
theorem rows11729 : actualRows11729=WordField.canonicalRows actualModulus 11729 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11729 : actualRows11729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11729=2892 := by core033_kernel_decide
theorem rows11730 : actualRows11730=WordField.canonicalRows actualModulus 11730 (.badd 11728 11729) := by core033_kernel_decide
theorem stats11730 : actualRows11730.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11730=5388 := by core033_kernel_decide
theorem rows11731 : actualRows11731=WordField.canonicalRows actualModulus 11731 (.bnot 11730) := by core033_kernel_decide
theorem stats11731 : actualRows11731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11731=6276 := by core033_kernel_decide
theorem rows11732 : actualRows11732=WordField.canonicalRows actualModulus 11732 (.band 11731 404) := by core033_kernel_decide
theorem stats11732 : actualRows11732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11732=5124 := by core033_kernel_decide
theorem rows11733 : actualRows11733=WordField.canonicalRows actualModulus 11733 (.bxor 11706 11732) := by core033_kernel_decide
theorem stats11733 : actualRows11733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11733=7428 := by core033_kernel_decide
theorem rows11734 : actualRows11734=WordField.canonicalRows actualModulus 11734 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11734 : actualRows11734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11734=2964 := by core033_kernel_decide
theorem rows11735 : actualRows11735=WordField.canonicalRows actualModulus 11735 (.bxor 0 11734) := by core033_kernel_decide
theorem stats11735 : actualRows11735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11735=7428 := by core033_kernel_decide
theorem rows11736 : actualRows11736=WordField.canonicalRows actualModulus 11736 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11736 : actualRows11736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11736=2820 := by core033_kernel_decide
theorem rows11737 : actualRows11737=WordField.canonicalRows actualModulus 11737 (.bnot 11736) := by core033_kernel_decide
theorem stats11737 : actualRows11737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11737=6276 := by core033_kernel_decide
theorem rows11738 : actualRows11738=WordField.canonicalRows actualModulus 11738 (.band 11735 11737) := by core033_kernel_decide
theorem stats11738 : actualRows11738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11738=5124 := by core033_kernel_decide
theorem rows11739 : actualRows11739=WordField.canonicalRows actualModulus 11739 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11739 : actualRows11739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11739=2964 := by core033_kernel_decide
theorem rows11740 : actualRows11740=WordField.canonicalRows actualModulus 11740 (.bxor 0 11739) := by core033_kernel_decide
theorem stats11740 : actualRows11740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11740=7428 := by core033_kernel_decide
theorem rows11741 : actualRows11741=WordField.canonicalRows actualModulus 11741 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11741 : actualRows11741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11741=2820 := by core033_kernel_decide
theorem rows11742 : actualRows11742=WordField.canonicalRows actualModulus 11742 (.bnot 11741) := by core033_kernel_decide
theorem stats11742 : actualRows11742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11742=6276 := by core033_kernel_decide
theorem rows11743 : actualRows11743=WordField.canonicalRows actualModulus 11743 (.bxor 11740 11742) := by core033_kernel_decide
theorem stats11743 : actualRows11743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11743=7428 := by core033_kernel_decide
theorem rows11744 : actualRows11744=WordField.canonicalRows actualModulus 11744 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11744 : actualRows11744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11744=2964 := by core033_kernel_decide
theorem rows11745 : actualRows11745=WordField.canonicalRows actualModulus 11745 (.bxor 0 11744) := by core033_kernel_decide
theorem stats11745 : actualRows11745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11745=7428 := by core033_kernel_decide
theorem rows11746 : actualRows11746=WordField.canonicalRows actualModulus 11746 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11746 : actualRows11746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11746=2820 := by core033_kernel_decide
theorem rows11747 : actualRows11747=WordField.canonicalRows actualModulus 11747 (.bnot 11746) := by core033_kernel_decide
theorem stats11747 : actualRows11747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11747=6276 := by core033_kernel_decide
theorem rows11748 : actualRows11748=WordField.canonicalRows actualModulus 11748 (.badd 11745 11747) := by core033_kernel_decide
theorem stats11748 : actualRows11748.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11748=5388 := by core033_kernel_decide
theorem rows11749 : actualRows11749=WordField.canonicalRows actualModulus 11749 (.bnot 11748) := by core033_kernel_decide
theorem stats11749 : actualRows11749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11749=6276 := by core033_kernel_decide
theorem rows11750 : actualRows11750=WordField.canonicalRows actualModulus 11750 (.band 11743 11749) := by core033_kernel_decide
theorem stats11750 : actualRows11750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11750=5124 := by core033_kernel_decide
theorem rows11751 : actualRows11751=WordField.canonicalRows actualModulus 11751 (.bxor 11738 11750) := by core033_kernel_decide
theorem stats11751 : actualRows11751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11751=7428 := by core033_kernel_decide
theorem rows11752 : actualRows11752=WordField.canonicalRows actualModulus 11752 (.shr 11751 31) := by core033_kernel_decide
theorem stats11752 : actualRows11752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11752=2892 := by core033_kernel_decide
theorem rows11753 : actualRows11753=WordField.canonicalRows actualModulus 11753 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11753 : actualRows11753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11753=2892 := by core033_kernel_decide
theorem rows11754 : actualRows11754=WordField.canonicalRows actualModulus 11754 (.bxor 11752 11753) := by core033_kernel_decide
theorem stats11754 : actualRows11754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11754=7428 := by core033_kernel_decide
def partRows182 : List R1CS.Row := actualRows11691++actualRows11692++actualRows11693++actualRows11694++actualRows11695++actualRows11696++actualRows11697++actualRows11698++actualRows11699++actualRows11700++actualRows11701++actualRows11702++actualRows11703++actualRows11704++actualRows11705++actualRows11706++actualRows11707++actualRows11708++actualRows11709++actualRows11710++actualRows11711++actualRows11712++actualRows11713++actualRows11714++actualRows11715++actualRows11716++actualRows11717++actualRows11718++actualRows11719++actualRows11720++actualRows11721++actualRows11722++actualRows11723++actualRows11724++actualRows11725++actualRows11726++actualRows11727++actualRows11728++actualRows11729++actualRows11730++actualRows11731++actualRows11732++actualRows11733++actualRows11734++actualRows11735++actualRows11736++actualRows11737++actualRows11738++actualRows11739++actualRows11740++actualRows11741++actualRows11742++actualRows11743++actualRows11744++actualRows11745++actualRows11746++actualRows11747++actualRows11748++actualRows11749++actualRows11750++actualRows11751++actualRows11752++actualRows11753++actualRows11754
def partOps182 : List WordIR.Op := [.bxor 11688 11690,.literal (BitVec.ofNat 32 3),.bxor 0 11692,.literal (BitVec.ofNat 32 0),.bnot 11694,.badd 11693 11695,.bnot 11696,.band 11691 11697,.bxor 11686 11698,.shr 11699 31,.literal (BitVec.ofNat 32 1),.bxor 11700 11701,.bnot 11702,.literal (BitVec.ofNat 32 1),.badd 11703 11704,.band 11705 9945,.literal (BitVec.ofNat 32 3),.bxor 0 11707,.literal (BitVec.ofNat 32 0),.bnot 11709,.band 11708 11710,.literal (BitVec.ofNat 32 3),.bxor 0 11712,.literal (BitVec.ofNat 32 0),.bnot 11714,.bxor 11713 11715,.literal (BitVec.ofNat 32 3),.bxor 0 11717,.literal (BitVec.ofNat 32 0),.bnot 11719,.badd 11718 11720,.bnot 11721,.band 11716 11722,.bxor 11711 11723,.shr 11724 31,.literal (BitVec.ofNat 32 1),.bxor 11725 11726,.bnot 11727,.literal (BitVec.ofNat 32 1),.badd 11728 11729,.bnot 11730,.band 11731 404,.bxor 11706 11732,.literal (BitVec.ofNat 32 3),.bxor 0 11734,.literal (BitVec.ofNat 32 0),.bnot 11736,.band 11735 11737,.literal (BitVec.ofNat 32 3),.bxor 0 11739,.literal (BitVec.ofNat 32 0),.bnot 11741,.bxor 11740 11742,.literal (BitVec.ofNat 32 3),.bxor 0 11744,.literal (BitVec.ofNat 32 0),.bnot 11746,.badd 11745 11747,.bnot 11748,.band 11743 11749,.bxor 11738 11750,.shr 11751 31,.literal (BitVec.ofNat 32 1),.bxor 11752 11753]
theorem partExact182 : partRows182=WordField.rows actualModulus 11691 partOps182 := by
  simp only [partRows182,partOps182,WordField.rows,rows11691,rows11692,rows11693,rows11694,rows11695,rows11696,rows11697,rows11698,rows11699,rows11700,rows11701,rows11702,rows11703,rows11704,rows11705,rows11706,rows11707,rows11708,rows11709,rows11710,rows11711,rows11712,rows11713,rows11714,rows11715,rows11716,rows11717,rows11718,rows11719,rows11720,rows11721,rows11722,rows11723,rows11724,rows11725,rows11726,rows11727,rows11728,rows11729,rows11730,rows11731,rows11732,rows11733,rows11734,rows11735,rows11736,rows11737,rows11738,rows11739,rows11740,rows11741,rows11742,rows11743,rows11744,rows11745,rows11746,rows11747,rows11748,rows11749,rows11750,rows11751,rows11752,rows11753,rows11754,List.append_assoc,List.append_nil]
theorem partLength182 : partOps182.length=64 := by decide
theorem partStats182 : partRows182.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows182=334296 := by
  simp only [partRows182,List.length_append,MatrixRowBlocks.rows_weight_append,stats11691.1,stats11691.2,stats11692.1,stats11692.2,stats11693.1,stats11693.2,stats11694.1,stats11694.2,stats11695.1,stats11695.2,stats11696.1,stats11696.2,stats11697.1,stats11697.2,stats11698.1,stats11698.2,stats11699.1,stats11699.2,stats11700.1,stats11700.2,stats11701.1,stats11701.2,stats11702.1,stats11702.2,stats11703.1,stats11703.2,stats11704.1,stats11704.2,stats11705.1,stats11705.2,stats11706.1,stats11706.2,stats11707.1,stats11707.2,stats11708.1,stats11708.2,stats11709.1,stats11709.2,stats11710.1,stats11710.2,stats11711.1,stats11711.2,stats11712.1,stats11712.2,stats11713.1,stats11713.2,stats11714.1,stats11714.2,stats11715.1,stats11715.2,stats11716.1,stats11716.2,stats11717.1,stats11717.2,stats11718.1,stats11718.2,stats11719.1,stats11719.2,stats11720.1,stats11720.2,stats11721.1,stats11721.2,stats11722.1,stats11722.2,stats11723.1,stats11723.2,stats11724.1,stats11724.2,stats11725.1,stats11725.2,stats11726.1,stats11726.2,stats11727.1,stats11727.2,stats11728.1,stats11728.2,stats11729.1,stats11729.2,stats11730.1,stats11730.2,stats11731.1,stats11731.2,stats11732.1,stats11732.2,stats11733.1,stats11733.2,stats11734.1,stats11734.2,stats11735.1,stats11735.2,stats11736.1,stats11736.2,stats11737.1,stats11737.2,stats11738.1,stats11738.2,stats11739.1,stats11739.2,stats11740.1,stats11740.2,stats11741.1,stats11741.2,stats11742.1,stats11742.2,stats11743.1,stats11743.2,stats11744.1,stats11744.2,stats11745.1,stats11745.2,stats11746.1,stats11746.2,stats11747.1,stats11747.2,stats11748.1,stats11748.2,stats11749.1,stats11749.2,stats11750.1,stats11750.2,stats11751.1,stats11751.2,stats11752.1,stats11752.2,stats11753.1,stats11753.2,stats11754.1,stats11754.2]
  decide
end PathRoundDispatchCheckedRows
