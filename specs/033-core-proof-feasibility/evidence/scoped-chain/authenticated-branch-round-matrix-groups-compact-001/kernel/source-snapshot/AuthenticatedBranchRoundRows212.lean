import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData213
import AuthenticatedBranchRoundInstructionMatrixData214
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13686 : actualRows13686=WordField.canonicalRows actualModulus 13686 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats13686 : actualRows13686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13686=2892 := by core033_kernel_decide
theorem rows13687 : actualRows13687=WordField.canonicalRows actualModulus 13687 (.bxor 693 13686) := by core033_kernel_decide
theorem stats13687 : actualRows13687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13687=7428 := by core033_kernel_decide
theorem rows13688 : actualRows13688=WordField.canonicalRows actualModulus 13688 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13688 : actualRows13688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13688=2820 := by core033_kernel_decide
theorem rows13689 : actualRows13689=WordField.canonicalRows actualModulus 13689 (.bnot 13688) := by core033_kernel_decide
theorem stats13689 : actualRows13689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13689=6276 := by core033_kernel_decide
theorem rows13690 : actualRows13690=WordField.canonicalRows actualModulus 13690 (.band 13687 13689) := by core033_kernel_decide
theorem stats13690 : actualRows13690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13690=5124 := by core033_kernel_decide
theorem rows13691 : actualRows13691=WordField.canonicalRows actualModulus 13691 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats13691 : actualRows13691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13691=2892 := by core033_kernel_decide
theorem rows13692 : actualRows13692=WordField.canonicalRows actualModulus 13692 (.bxor 693 13691) := by core033_kernel_decide
theorem stats13692 : actualRows13692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13692=7428 := by core033_kernel_decide
theorem rows13693 : actualRows13693=WordField.canonicalRows actualModulus 13693 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13693 : actualRows13693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13693=2820 := by core033_kernel_decide
theorem rows13694 : actualRows13694=WordField.canonicalRows actualModulus 13694 (.bnot 13693) := by core033_kernel_decide
theorem stats13694 : actualRows13694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13694=6276 := by core033_kernel_decide
theorem rows13695 : actualRows13695=WordField.canonicalRows actualModulus 13695 (.bxor 13692 13694) := by core033_kernel_decide
theorem stats13695 : actualRows13695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13695=7428 := by core033_kernel_decide
theorem rows13696 : actualRows13696=WordField.canonicalRows actualModulus 13696 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats13696 : actualRows13696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13696=2892 := by core033_kernel_decide
theorem rows13697 : actualRows13697=WordField.canonicalRows actualModulus 13697 (.bxor 693 13696) := by core033_kernel_decide
theorem stats13697 : actualRows13697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13697=7428 := by core033_kernel_decide
theorem rows13698 : actualRows13698=WordField.canonicalRows actualModulus 13698 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13698 : actualRows13698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13698=2820 := by core033_kernel_decide
theorem rows13699 : actualRows13699=WordField.canonicalRows actualModulus 13699 (.bnot 13698) := by core033_kernel_decide
theorem stats13699 : actualRows13699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13699=6276 := by core033_kernel_decide
theorem rows13700 : actualRows13700=WordField.canonicalRows actualModulus 13700 (.badd 13697 13699) := by core033_kernel_decide
theorem stats13700 : actualRows13700.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13700=5388 := by core033_kernel_decide
theorem rows13701 : actualRows13701=WordField.canonicalRows actualModulus 13701 (.bnot 13700) := by core033_kernel_decide
theorem stats13701 : actualRows13701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13701=6276 := by core033_kernel_decide
theorem rows13702 : actualRows13702=WordField.canonicalRows actualModulus 13702 (.band 13695 13701) := by core033_kernel_decide
theorem stats13702 : actualRows13702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13702=5124 := by core033_kernel_decide
theorem rows13703 : actualRows13703=WordField.canonicalRows actualModulus 13703 (.bxor 13690 13702) := by core033_kernel_decide
theorem stats13703 : actualRows13703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13703=7428 := by core033_kernel_decide
theorem rows13704 : actualRows13704=WordField.canonicalRows actualModulus 13704 (.shr 13703 31) := by core033_kernel_decide
theorem stats13704 : actualRows13704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13704=2892 := by core033_kernel_decide
theorem rows13705 : actualRows13705=WordField.canonicalRows actualModulus 13705 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13705 : actualRows13705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13705=2892 := by core033_kernel_decide
theorem rows13706 : actualRows13706=WordField.canonicalRows actualModulus 13706 (.bxor 13704 13705) := by core033_kernel_decide
theorem stats13706 : actualRows13706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13706=7428 := by core033_kernel_decide
theorem rows13707 : actualRows13707=WordField.canonicalRows actualModulus 13707 (.bxor 13685 13706) := by core033_kernel_decide
theorem stats13707 : actualRows13707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13707=7428 := by core033_kernel_decide
theorem rows13708 : actualRows13708=WordField.canonicalRows actualModulus 13708 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13708 : actualRows13708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13708=2964 := by core033_kernel_decide
theorem rows13709 : actualRows13709=WordField.canonicalRows actualModulus 13709 (.bxor 693 13708) := by core033_kernel_decide
theorem stats13709 : actualRows13709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13709=7428 := by core033_kernel_decide
theorem rows13710 : actualRows13710=WordField.canonicalRows actualModulus 13710 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13710 : actualRows13710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13710=2820 := by core033_kernel_decide
theorem rows13711 : actualRows13711=WordField.canonicalRows actualModulus 13711 (.bnot 13710) := by core033_kernel_decide
theorem stats13711 : actualRows13711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13711=6276 := by core033_kernel_decide
theorem rows13712 : actualRows13712=WordField.canonicalRows actualModulus 13712 (.band 13709 13711) := by core033_kernel_decide
theorem stats13712 : actualRows13712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13712=5124 := by core033_kernel_decide
theorem rows13713 : actualRows13713=WordField.canonicalRows actualModulus 13713 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13713 : actualRows13713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13713=2964 := by core033_kernel_decide
theorem rows13714 : actualRows13714=WordField.canonicalRows actualModulus 13714 (.bxor 693 13713) := by core033_kernel_decide
theorem stats13714 : actualRows13714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13714=7428 := by core033_kernel_decide
theorem rows13715 : actualRows13715=WordField.canonicalRows actualModulus 13715 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13715 : actualRows13715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13715=2820 := by core033_kernel_decide
theorem rows13716 : actualRows13716=WordField.canonicalRows actualModulus 13716 (.bnot 13715) := by core033_kernel_decide
theorem stats13716 : actualRows13716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13716=6276 := by core033_kernel_decide
theorem rows13717 : actualRows13717=WordField.canonicalRows actualModulus 13717 (.bxor 13714 13716) := by core033_kernel_decide
theorem stats13717 : actualRows13717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13717=7428 := by core033_kernel_decide
theorem rows13718 : actualRows13718=WordField.canonicalRows actualModulus 13718 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats13718 : actualRows13718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13718=2964 := by core033_kernel_decide
theorem rows13719 : actualRows13719=WordField.canonicalRows actualModulus 13719 (.bxor 693 13718) := by core033_kernel_decide
theorem stats13719 : actualRows13719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13719=7428 := by core033_kernel_decide
theorem rows13720 : actualRows13720=WordField.canonicalRows actualModulus 13720 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats13720 : actualRows13720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13720=2820 := by core033_kernel_decide
theorem rows13721 : actualRows13721=WordField.canonicalRows actualModulus 13721 (.bnot 13720) := by core033_kernel_decide
theorem stats13721 : actualRows13721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13721=6276 := by core033_kernel_decide
theorem rows13722 : actualRows13722=WordField.canonicalRows actualModulus 13722 (.badd 13719 13721) := by core033_kernel_decide
theorem stats13722 : actualRows13722.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13722=5388 := by core033_kernel_decide
theorem rows13723 : actualRows13723=WordField.canonicalRows actualModulus 13723 (.bnot 13722) := by core033_kernel_decide
theorem stats13723 : actualRows13723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13723=6276 := by core033_kernel_decide
theorem rows13724 : actualRows13724=WordField.canonicalRows actualModulus 13724 (.band 13717 13723) := by core033_kernel_decide
theorem stats13724 : actualRows13724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13724=5124 := by core033_kernel_decide
theorem rows13725 : actualRows13725=WordField.canonicalRows actualModulus 13725 (.bxor 13712 13724) := by core033_kernel_decide
theorem stats13725 : actualRows13725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13725=7428 := by core033_kernel_decide
theorem rows13726 : actualRows13726=WordField.canonicalRows actualModulus 13726 (.shr 13725 31) := by core033_kernel_decide
theorem stats13726 : actualRows13726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13726=2892 := by core033_kernel_decide
theorem rows13727 : actualRows13727=WordField.canonicalRows actualModulus 13727 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13727 : actualRows13727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13727=2892 := by core033_kernel_decide
theorem rows13728 : actualRows13728=WordField.canonicalRows actualModulus 13728 (.bxor 13726 13727) := by core033_kernel_decide
theorem stats13728 : actualRows13728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13728=7428 := by core033_kernel_decide
theorem rows13729 : actualRows13729=WordField.canonicalRows actualModulus 13729 (.bxor 13707 13728) := by core033_kernel_decide
theorem stats13729 : actualRows13729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13729=7428 := by core033_kernel_decide
theorem rows13730 : actualRows13730=WordField.canonicalRows actualModulus 13730 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13730 : actualRows13730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13730=2892 := by core033_kernel_decide
theorem rows13731 : actualRows13731=WordField.canonicalRows actualModulus 13731 (.badd 0 13730) := by core033_kernel_decide
theorem stats13731 : actualRows13731.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13731=5388 := by core033_kernel_decide
theorem rows13732 : actualRows13732=WordField.canonicalRows actualModulus 13732 (.bnot 440) := by core033_kernel_decide
theorem stats13732 : actualRows13732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13732=6276 := by core033_kernel_decide
theorem rows13733 : actualRows13733=WordField.canonicalRows actualModulus 13733 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13733 : actualRows13733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13733=2892 := by core033_kernel_decide
theorem rows13734 : actualRows13734=WordField.canonicalRows actualModulus 13734 (.badd 13732 13733) := by core033_kernel_decide
theorem stats13734 : actualRows13734.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13734=5388 := by core033_kernel_decide
theorem rows13735 : actualRows13735=WordField.canonicalRows actualModulus 13735 (.band 13734 11584) := by core033_kernel_decide
theorem stats13735 : actualRows13735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13735=5124 := by core033_kernel_decide
theorem rows13736 : actualRows13736=WordField.canonicalRows actualModulus 13736 (.bnot 440) := by core033_kernel_decide
theorem stats13736 : actualRows13736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13736=6276 := by core033_kernel_decide
theorem rows13737 : actualRows13737=WordField.canonicalRows actualModulus 13737 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13737 : actualRows13737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13737=2892 := by core033_kernel_decide
theorem rows13738 : actualRows13738=WordField.canonicalRows actualModulus 13738 (.badd 13736 13737) := by core033_kernel_decide
theorem stats13738 : actualRows13738.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13738=5388 := by core033_kernel_decide
theorem rows13739 : actualRows13739=WordField.canonicalRows actualModulus 13739 (.bnot 13738) := by core033_kernel_decide
theorem stats13739 : actualRows13739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13739=6276 := by core033_kernel_decide
theorem rows13740 : actualRows13740=WordField.canonicalRows actualModulus 13740 (.band 13739 2) := by core033_kernel_decide
theorem stats13740 : actualRows13740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13740=5124 := by core033_kernel_decide
theorem rows13741 : actualRows13741=WordField.canonicalRows actualModulus 13741 (.bxor 13735 13740) := by core033_kernel_decide
theorem stats13741 : actualRows13741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13741=7428 := by core033_kernel_decide
theorem rows13742 : actualRows13742=WordField.canonicalRows actualModulus 13742 (.bnot 398) := by core033_kernel_decide
theorem stats13742 : actualRows13742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13742=6276 := by core033_kernel_decide
theorem rows13743 : actualRows13743=WordField.canonicalRows actualModulus 13743 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13743 : actualRows13743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13743=2892 := by core033_kernel_decide
theorem rows13744 : actualRows13744=WordField.canonicalRows actualModulus 13744 (.badd 13742 13743) := by core033_kernel_decide
theorem stats13744 : actualRows13744.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13744=5388 := by core033_kernel_decide
theorem rows13745 : actualRows13745=WordField.canonicalRows actualModulus 13745 (.band 13744 12052) := by core033_kernel_decide
theorem stats13745 : actualRows13745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13745=5124 := by core033_kernel_decide
theorem rows13746 : actualRows13746=WordField.canonicalRows actualModulus 13746 (.bnot 398) := by core033_kernel_decide
theorem stats13746 : actualRows13746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13746=6276 := by core033_kernel_decide
theorem rows13747 : actualRows13747=WordField.canonicalRows actualModulus 13747 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13747 : actualRows13747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13747=2892 := by core033_kernel_decide
theorem rows13748 : actualRows13748=WordField.canonicalRows actualModulus 13748 (.badd 13746 13747) := by core033_kernel_decide
theorem stats13748 : actualRows13748.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13748=5388 := by core033_kernel_decide
theorem rows13749 : actualRows13749=WordField.canonicalRows actualModulus 13749 (.bnot 13748) := by core033_kernel_decide
theorem stats13749 : actualRows13749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13749=6276 := by core033_kernel_decide
def partRows212 : List R1CS.Row := actualRows13686++actualRows13687++actualRows13688++actualRows13689++actualRows13690++actualRows13691++actualRows13692++actualRows13693++actualRows13694++actualRows13695++actualRows13696++actualRows13697++actualRows13698++actualRows13699++actualRows13700++actualRows13701++actualRows13702++actualRows13703++actualRows13704++actualRows13705++actualRows13706++actualRows13707++actualRows13708++actualRows13709++actualRows13710++actualRows13711++actualRows13712++actualRows13713++actualRows13714++actualRows13715++actualRows13716++actualRows13717++actualRows13718++actualRows13719++actualRows13720++actualRows13721++actualRows13722++actualRows13723++actualRows13724++actualRows13725++actualRows13726++actualRows13727++actualRows13728++actualRows13729++actualRows13730++actualRows13731++actualRows13732++actualRows13733++actualRows13734++actualRows13735++actualRows13736++actualRows13737++actualRows13738++actualRows13739++actualRows13740++actualRows13741++actualRows13742++actualRows13743++actualRows13744++actualRows13745++actualRows13746++actualRows13747++actualRows13748++actualRows13749
def partOps212 : List WordIR.Op := [.literal (BitVec.ofNat 32 2),.bxor 693 13686,.literal (BitVec.ofNat 32 0),.bnot 13688,.band 13687 13689,.literal (BitVec.ofNat 32 2),.bxor 693 13691,.literal (BitVec.ofNat 32 0),.bnot 13693,.bxor 13692 13694,.literal (BitVec.ofNat 32 2),.bxor 693 13696,.literal (BitVec.ofNat 32 0),.bnot 13698,.badd 13697 13699,.bnot 13700,.band 13695 13701,.bxor 13690 13702,.shr 13703 31,.literal (BitVec.ofNat 32 1),.bxor 13704 13705,.bxor 13685 13706,.literal (BitVec.ofNat 32 3),.bxor 693 13708,.literal (BitVec.ofNat 32 0),.bnot 13710,.band 13709 13711,.literal (BitVec.ofNat 32 3),.bxor 693 13713,.literal (BitVec.ofNat 32 0),.bnot 13715,.bxor 13714 13716,.literal (BitVec.ofNat 32 3),.bxor 693 13718,.literal (BitVec.ofNat 32 0),.bnot 13720,.badd 13719 13721,.bnot 13722,.band 13717 13723,.bxor 13712 13724,.shr 13725 31,.literal (BitVec.ofNat 32 1),.bxor 13726 13727,.bxor 13707 13728,.literal (BitVec.ofNat 32 1),.badd 0 13730,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 13732 13733,.band 13734 11584,.bnot 440,.literal (BitVec.ofNat 32 1),.badd 13736 13737,.bnot 13738,.band 13739 2,.bxor 13735 13740,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13742 13743,.band 13744 12052,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13746 13747,.bnot 13748]
theorem partExact212 : partRows212=WordField.rows actualModulus 13686 partOps212 := by
  simp only [partRows212,partOps212,WordField.rows,rows13686,rows13687,rows13688,rows13689,rows13690,rows13691,rows13692,rows13693,rows13694,rows13695,rows13696,rows13697,rows13698,rows13699,rows13700,rows13701,rows13702,rows13703,rows13704,rows13705,rows13706,rows13707,rows13708,rows13709,rows13710,rows13711,rows13712,rows13713,rows13714,rows13715,rows13716,rows13717,rows13718,rows13719,rows13720,rows13721,rows13722,rows13723,rows13724,rows13725,rows13726,rows13727,rows13728,rows13729,rows13730,rows13731,rows13732,rows13733,rows13734,rows13735,rows13736,rows13737,rows13738,rows13739,rows13740,rows13741,rows13742,rows13743,rows13744,rows13745,rows13746,rows13747,rows13748,rows13749,List.append_assoc,List.append_nil]
theorem partLength212 : partOps212.length=64 := by decide
theorem partStats212 : partRows212.length=2183 ∧ MatrixRowBlocks.rowsWeight partRows212=333384 := by
  simp only [partRows212,List.length_append,MatrixRowBlocks.rows_weight_append,stats13686.1,stats13686.2,stats13687.1,stats13687.2,stats13688.1,stats13688.2,stats13689.1,stats13689.2,stats13690.1,stats13690.2,stats13691.1,stats13691.2,stats13692.1,stats13692.2,stats13693.1,stats13693.2,stats13694.1,stats13694.2,stats13695.1,stats13695.2,stats13696.1,stats13696.2,stats13697.1,stats13697.2,stats13698.1,stats13698.2,stats13699.1,stats13699.2,stats13700.1,stats13700.2,stats13701.1,stats13701.2,stats13702.1,stats13702.2,stats13703.1,stats13703.2,stats13704.1,stats13704.2,stats13705.1,stats13705.2,stats13706.1,stats13706.2,stats13707.1,stats13707.2,stats13708.1,stats13708.2,stats13709.1,stats13709.2,stats13710.1,stats13710.2,stats13711.1,stats13711.2,stats13712.1,stats13712.2,stats13713.1,stats13713.2,stats13714.1,stats13714.2,stats13715.1,stats13715.2,stats13716.1,stats13716.2,stats13717.1,stats13717.2,stats13718.1,stats13718.2,stats13719.1,stats13719.2,stats13720.1,stats13720.2,stats13721.1,stats13721.2,stats13722.1,stats13722.2,stats13723.1,stats13723.2,stats13724.1,stats13724.2,stats13725.1,stats13725.2,stats13726.1,stats13726.2,stats13727.1,stats13727.2,stats13728.1,stats13728.2,stats13729.1,stats13729.2,stats13730.1,stats13730.2,stats13731.1,stats13731.2,stats13732.1,stats13732.2,stats13733.1,stats13733.2,stats13734.1,stats13734.2,stats13735.1,stats13735.2,stats13736.1,stats13736.2,stats13737.1,stats13737.2,stats13738.1,stats13738.2,stats13739.1,stats13739.2,stats13740.1,stats13740.2,stats13741.1,stats13741.2,stats13742.1,stats13742.2,stats13743.1,stats13743.2,stats13744.1,stats13744.2,stats13745.1,stats13745.2,stats13746.1,stats13746.2,stats13747.1,stats13747.2,stats13748.1,stats13748.2,stats13749.1,stats13749.2]
  decide
end AuthenticatedBranchRoundCheckedRows
