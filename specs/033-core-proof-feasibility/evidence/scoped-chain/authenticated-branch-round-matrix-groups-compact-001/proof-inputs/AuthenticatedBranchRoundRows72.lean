import ActualAuthenticatedBranchRoundIR
import Core033.AuthenticatedBranchRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData73
import AuthenticatedBranchRoundInstructionMatrixData74
namespace AuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4726 : actualRows4726=WordField.canonicalRows actualModulus 4726 (.badd 4723 4725) := by core033_kernel_decide
theorem stats4726 : actualRows4726.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4726=5388 := by core033_kernel_decide
theorem rows4727 : actualRows4727=WordField.canonicalRows actualModulus 4727 (.bnot 4726) := by core033_kernel_decide
theorem stats4727 : actualRows4727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4727=6276 := by core033_kernel_decide
theorem rows4728 : actualRows4728=WordField.canonicalRows actualModulus 4728 (.band 4721 4727) := by core033_kernel_decide
theorem stats4728 : actualRows4728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4728=5124 := by core033_kernel_decide
theorem rows4729 : actualRows4729=WordField.canonicalRows actualModulus 4729 (.bxor 4716 4728) := by core033_kernel_decide
theorem stats4729 : actualRows4729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4729=7428 := by core033_kernel_decide
theorem rows4730 : actualRows4730=WordField.canonicalRows actualModulus 4730 (.shr 4729 31) := by core033_kernel_decide
theorem stats4730 : actualRows4730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4730=2892 := by core033_kernel_decide
theorem rows4731 : actualRows4731=WordField.canonicalRows actualModulus 4731 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4731 : actualRows4731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4731=2892 := by core033_kernel_decide
theorem rows4732 : actualRows4732=WordField.canonicalRows actualModulus 4732 (.bxor 4730 4731) := by core033_kernel_decide
theorem stats4732 : actualRows4732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4732=7428 := by core033_kernel_decide
theorem rows4733 : actualRows4733=WordField.canonicalRows actualModulus 4733 (.bnot 4732) := by core033_kernel_decide
theorem stats4733 : actualRows4733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4733=6276 := by core033_kernel_decide
theorem rows4734 : actualRows4734=WordField.canonicalRows actualModulus 4734 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4734 : actualRows4734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4734=2892 := by core033_kernel_decide
theorem rows4735 : actualRows4735=WordField.canonicalRows actualModulus 4735 (.badd 4733 4734) := by core033_kernel_decide
theorem stats4735 : actualRows4735.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4735=5388 := by core033_kernel_decide
theorem rows4736 : actualRows4736=WordField.canonicalRows actualModulus 4736 (.bnot 4735) := by core033_kernel_decide
theorem stats4736 : actualRows4736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4736=6276 := by core033_kernel_decide
theorem rows4737 : actualRows4737=WordField.canonicalRows actualModulus 4737 (.band 4736 2570) := by core033_kernel_decide
theorem stats4737 : actualRows4737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4737=5124 := by core033_kernel_decide
theorem rows4738 : actualRows4738=WordField.canonicalRows actualModulus 4738 (.bxor 4711 4737) := by core033_kernel_decide
theorem stats4738 : actualRows4738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4738=7428 := by core033_kernel_decide
theorem rows4739 : actualRows4739=WordField.canonicalRows actualModulus 4739 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4739 : actualRows4739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4739=2892 := by core033_kernel_decide
theorem rows4740 : actualRows4740=WordField.canonicalRows actualModulus 4740 (.bxor 1299 4739) := by core033_kernel_decide
theorem stats4740 : actualRows4740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4740=7428 := by core033_kernel_decide
theorem rows4741 : actualRows4741=WordField.canonicalRows actualModulus 4741 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4741 : actualRows4741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4741=2820 := by core033_kernel_decide
theorem rows4742 : actualRows4742=WordField.canonicalRows actualModulus 4742 (.bnot 4741) := by core033_kernel_decide
theorem stats4742 : actualRows4742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4742=6276 := by core033_kernel_decide
theorem rows4743 : actualRows4743=WordField.canonicalRows actualModulus 4743 (.band 4740 4742) := by core033_kernel_decide
theorem stats4743 : actualRows4743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4743=5124 := by core033_kernel_decide
theorem rows4744 : actualRows4744=WordField.canonicalRows actualModulus 4744 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4744 : actualRows4744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4744=2892 := by core033_kernel_decide
theorem rows4745 : actualRows4745=WordField.canonicalRows actualModulus 4745 (.bxor 1299 4744) := by core033_kernel_decide
theorem stats4745 : actualRows4745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4745=7428 := by core033_kernel_decide
theorem rows4746 : actualRows4746=WordField.canonicalRows actualModulus 4746 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4746 : actualRows4746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4746=2820 := by core033_kernel_decide
theorem rows4747 : actualRows4747=WordField.canonicalRows actualModulus 4747 (.bnot 4746) := by core033_kernel_decide
theorem stats4747 : actualRows4747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4747=6276 := by core033_kernel_decide
theorem rows4748 : actualRows4748=WordField.canonicalRows actualModulus 4748 (.bxor 4745 4747) := by core033_kernel_decide
theorem stats4748 : actualRows4748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4748=7428 := by core033_kernel_decide
theorem rows4749 : actualRows4749=WordField.canonicalRows actualModulus 4749 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4749 : actualRows4749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4749=2892 := by core033_kernel_decide
theorem rows4750 : actualRows4750=WordField.canonicalRows actualModulus 4750 (.bxor 1299 4749) := by core033_kernel_decide
theorem stats4750 : actualRows4750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4750=7428 := by core033_kernel_decide
theorem rows4751 : actualRows4751=WordField.canonicalRows actualModulus 4751 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4751 : actualRows4751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4751=2820 := by core033_kernel_decide
theorem rows4752 : actualRows4752=WordField.canonicalRows actualModulus 4752 (.bnot 4751) := by core033_kernel_decide
theorem stats4752 : actualRows4752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4752=6276 := by core033_kernel_decide
theorem rows4753 : actualRows4753=WordField.canonicalRows actualModulus 4753 (.badd 4750 4752) := by core033_kernel_decide
theorem stats4753 : actualRows4753.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4753=5388 := by core033_kernel_decide
theorem rows4754 : actualRows4754=WordField.canonicalRows actualModulus 4754 (.bnot 4753) := by core033_kernel_decide
theorem stats4754 : actualRows4754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4754=6276 := by core033_kernel_decide
theorem rows4755 : actualRows4755=WordField.canonicalRows actualModulus 4755 (.band 4748 4754) := by core033_kernel_decide
theorem stats4755 : actualRows4755.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4755=5124 := by core033_kernel_decide
theorem rows4756 : actualRows4756=WordField.canonicalRows actualModulus 4756 (.bxor 4743 4755) := by core033_kernel_decide
theorem stats4756 : actualRows4756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4756=7428 := by core033_kernel_decide
theorem rows4757 : actualRows4757=WordField.canonicalRows actualModulus 4757 (.shr 4756 31) := by core033_kernel_decide
theorem stats4757 : actualRows4757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4757=2892 := by core033_kernel_decide
theorem rows4758 : actualRows4758=WordField.canonicalRows actualModulus 4758 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4758 : actualRows4758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4758=2892 := by core033_kernel_decide
theorem rows4759 : actualRows4759=WordField.canonicalRows actualModulus 4759 (.bxor 4757 4758) := by core033_kernel_decide
theorem stats4759 : actualRows4759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4759=7428 := by core033_kernel_decide
theorem rows4760 : actualRows4760=WordField.canonicalRows actualModulus 4760 (.bnot 4759) := by core033_kernel_decide
theorem stats4760 : actualRows4760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4760=6276 := by core033_kernel_decide
theorem rows4761 : actualRows4761=WordField.canonicalRows actualModulus 4761 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4761 : actualRows4761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4761=2892 := by core033_kernel_decide
theorem rows4762 : actualRows4762=WordField.canonicalRows actualModulus 4762 (.badd 4760 4761) := by core033_kernel_decide
theorem stats4762 : actualRows4762.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4762=5388 := by core033_kernel_decide
theorem rows4763 : actualRows4763=WordField.canonicalRows actualModulus 4763 (.band 4762 2765) := by core033_kernel_decide
theorem stats4763 : actualRows4763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4763=5124 := by core033_kernel_decide
theorem rows4764 : actualRows4764=WordField.canonicalRows actualModulus 4764 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4764 : actualRows4764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4764=2892 := by core033_kernel_decide
theorem rows4765 : actualRows4765=WordField.canonicalRows actualModulus 4765 (.bxor 1299 4764) := by core033_kernel_decide
theorem stats4765 : actualRows4765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4765=7428 := by core033_kernel_decide
theorem rows4766 : actualRows4766=WordField.canonicalRows actualModulus 4766 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4766 : actualRows4766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4766=2820 := by core033_kernel_decide
theorem rows4767 : actualRows4767=WordField.canonicalRows actualModulus 4767 (.bnot 4766) := by core033_kernel_decide
theorem stats4767 : actualRows4767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4767=6276 := by core033_kernel_decide
theorem rows4768 : actualRows4768=WordField.canonicalRows actualModulus 4768 (.band 4765 4767) := by core033_kernel_decide
theorem stats4768 : actualRows4768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4768=5124 := by core033_kernel_decide
theorem rows4769 : actualRows4769=WordField.canonicalRows actualModulus 4769 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4769 : actualRows4769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4769=2892 := by core033_kernel_decide
theorem rows4770 : actualRows4770=WordField.canonicalRows actualModulus 4770 (.bxor 1299 4769) := by core033_kernel_decide
theorem stats4770 : actualRows4770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4770=7428 := by core033_kernel_decide
theorem rows4771 : actualRows4771=WordField.canonicalRows actualModulus 4771 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4771 : actualRows4771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4771=2820 := by core033_kernel_decide
theorem rows4772 : actualRows4772=WordField.canonicalRows actualModulus 4772 (.bnot 4771) := by core033_kernel_decide
theorem stats4772 : actualRows4772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4772=6276 := by core033_kernel_decide
theorem rows4773 : actualRows4773=WordField.canonicalRows actualModulus 4773 (.bxor 4770 4772) := by core033_kernel_decide
theorem stats4773 : actualRows4773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4773=7428 := by core033_kernel_decide
theorem rows4774 : actualRows4774=WordField.canonicalRows actualModulus 4774 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4774 : actualRows4774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4774=2892 := by core033_kernel_decide
theorem rows4775 : actualRows4775=WordField.canonicalRows actualModulus 4775 (.bxor 1299 4774) := by core033_kernel_decide
theorem stats4775 : actualRows4775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4775=7428 := by core033_kernel_decide
theorem rows4776 : actualRows4776=WordField.canonicalRows actualModulus 4776 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4776 : actualRows4776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4776=2820 := by core033_kernel_decide
theorem rows4777 : actualRows4777=WordField.canonicalRows actualModulus 4777 (.bnot 4776) := by core033_kernel_decide
theorem stats4777 : actualRows4777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4777=6276 := by core033_kernel_decide
theorem rows4778 : actualRows4778=WordField.canonicalRows actualModulus 4778 (.badd 4775 4777) := by core033_kernel_decide
theorem stats4778 : actualRows4778.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4778=5388 := by core033_kernel_decide
theorem rows4779 : actualRows4779=WordField.canonicalRows actualModulus 4779 (.bnot 4778) := by core033_kernel_decide
theorem stats4779 : actualRows4779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4779=6276 := by core033_kernel_decide
theorem rows4780 : actualRows4780=WordField.canonicalRows actualModulus 4780 (.band 4773 4779) := by core033_kernel_decide
theorem stats4780 : actualRows4780.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4780=5124 := by core033_kernel_decide
theorem rows4781 : actualRows4781=WordField.canonicalRows actualModulus 4781 (.bxor 4768 4780) := by core033_kernel_decide
theorem stats4781 : actualRows4781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4781=7428 := by core033_kernel_decide
theorem rows4782 : actualRows4782=WordField.canonicalRows actualModulus 4782 (.shr 4781 31) := by core033_kernel_decide
theorem stats4782 : actualRows4782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4782=2892 := by core033_kernel_decide
theorem rows4783 : actualRows4783=WordField.canonicalRows actualModulus 4783 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4783 : actualRows4783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4783=2892 := by core033_kernel_decide
theorem rows4784 : actualRows4784=WordField.canonicalRows actualModulus 4784 (.bxor 4782 4783) := by core033_kernel_decide
theorem stats4784 : actualRows4784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4784=7428 := by core033_kernel_decide
theorem rows4785 : actualRows4785=WordField.canonicalRows actualModulus 4785 (.bnot 4784) := by core033_kernel_decide
theorem stats4785 : actualRows4785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4785=6276 := by core033_kernel_decide
theorem rows4786 : actualRows4786=WordField.canonicalRows actualModulus 4786 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4786 : actualRows4786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4786=2892 := by core033_kernel_decide
theorem rows4787 : actualRows4787=WordField.canonicalRows actualModulus 4787 (.badd 4785 4786) := by core033_kernel_decide
theorem stats4787 : actualRows4787.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4787=5388 := by core033_kernel_decide
theorem rows4788 : actualRows4788=WordField.canonicalRows actualModulus 4788 (.bnot 4787) := by core033_kernel_decide
theorem stats4788 : actualRows4788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4788=6276 := by core033_kernel_decide
theorem rows4789 : actualRows4789=WordField.canonicalRows actualModulus 4789 (.band 4788 2573) := by core033_kernel_decide
theorem stats4789 : actualRows4789.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4789=5124 := by core033_kernel_decide
def partRows72 : List R1CS.Row := actualRows4726++actualRows4727++actualRows4728++actualRows4729++actualRows4730++actualRows4731++actualRows4732++actualRows4733++actualRows4734++actualRows4735++actualRows4736++actualRows4737++actualRows4738++actualRows4739++actualRows4740++actualRows4741++actualRows4742++actualRows4743++actualRows4744++actualRows4745++actualRows4746++actualRows4747++actualRows4748++actualRows4749++actualRows4750++actualRows4751++actualRows4752++actualRows4753++actualRows4754++actualRows4755++actualRows4756++actualRows4757++actualRows4758++actualRows4759++actualRows4760++actualRows4761++actualRows4762++actualRows4763++actualRows4764++actualRows4765++actualRows4766++actualRows4767++actualRows4768++actualRows4769++actualRows4770++actualRows4771++actualRows4772++actualRows4773++actualRows4774++actualRows4775++actualRows4776++actualRows4777++actualRows4778++actualRows4779++actualRows4780++actualRows4781++actualRows4782++actualRows4783++actualRows4784++actualRows4785++actualRows4786++actualRows4787++actualRows4788++actualRows4789
def partOps72 : List WordIR.Op := [.badd 4723 4725,.bnot 4726,.band 4721 4727,.bxor 4716 4728,.shr 4729 31,.literal (BitVec.ofNat 32 1),.bxor 4730 4731,.bnot 4732,.literal (BitVec.ofNat 32 1),.badd 4733 4734,.bnot 4735,.band 4736 2570,.bxor 4711 4737,.literal (BitVec.ofNat 32 2),.bxor 1299 4739,.literal (BitVec.ofNat 32 0),.bnot 4741,.band 4740 4742,.literal (BitVec.ofNat 32 2),.bxor 1299 4744,.literal (BitVec.ofNat 32 0),.bnot 4746,.bxor 4745 4747,.literal (BitVec.ofNat 32 2),.bxor 1299 4749,.literal (BitVec.ofNat 32 0),.bnot 4751,.badd 4750 4752,.bnot 4753,.band 4748 4754,.bxor 4743 4755,.shr 4756 31,.literal (BitVec.ofNat 32 1),.bxor 4757 4758,.bnot 4759,.literal (BitVec.ofNat 32 1),.badd 4760 4761,.band 4762 2765,.literal (BitVec.ofNat 32 2),.bxor 1299 4764,.literal (BitVec.ofNat 32 0),.bnot 4766,.band 4765 4767,.literal (BitVec.ofNat 32 2),.bxor 1299 4769,.literal (BitVec.ofNat 32 0),.bnot 4771,.bxor 4770 4772,.literal (BitVec.ofNat 32 2),.bxor 1299 4774,.literal (BitVec.ofNat 32 0),.bnot 4776,.badd 4775 4777,.bnot 4778,.band 4773 4779,.bxor 4768 4780,.shr 4781 31,.literal (BitVec.ofNat 32 1),.bxor 4782 4783,.bnot 4784,.literal (BitVec.ofNat 32 1),.badd 4785 4786,.bnot 4787,.band 4788 2573]
theorem partExact72 : partRows72=WordField.rows actualModulus 4726 partOps72 := by
  simp only [partRows72,partOps72,WordField.rows,rows4726,rows4727,rows4728,rows4729,rows4730,rows4731,rows4732,rows4733,rows4734,rows4735,rows4736,rows4737,rows4738,rows4739,rows4740,rows4741,rows4742,rows4743,rows4744,rows4745,rows4746,rows4747,rows4748,rows4749,rows4750,rows4751,rows4752,rows4753,rows4754,rows4755,rows4756,rows4757,rows4758,rows4759,rows4760,rows4761,rows4762,rows4763,rows4764,rows4765,rows4766,rows4767,rows4768,rows4769,rows4770,rows4771,rows4772,rows4773,rows4774,rows4775,rows4776,rows4777,rows4778,rows4779,rows4780,rows4781,rows4782,rows4783,rows4784,rows4785,rows4786,rows4787,rows4788,rows4789,List.append_assoc,List.append_nil]
theorem partLength72 : partOps72.length=64 := by decide
theorem partStats72 : partRows72.length=2182 ∧ MatrixRowBlocks.rowsWeight partRows72=332904 := by
  simp only [partRows72,List.length_append,MatrixRowBlocks.rows_weight_append,stats4726.1,stats4726.2,stats4727.1,stats4727.2,stats4728.1,stats4728.2,stats4729.1,stats4729.2,stats4730.1,stats4730.2,stats4731.1,stats4731.2,stats4732.1,stats4732.2,stats4733.1,stats4733.2,stats4734.1,stats4734.2,stats4735.1,stats4735.2,stats4736.1,stats4736.2,stats4737.1,stats4737.2,stats4738.1,stats4738.2,stats4739.1,stats4739.2,stats4740.1,stats4740.2,stats4741.1,stats4741.2,stats4742.1,stats4742.2,stats4743.1,stats4743.2,stats4744.1,stats4744.2,stats4745.1,stats4745.2,stats4746.1,stats4746.2,stats4747.1,stats4747.2,stats4748.1,stats4748.2,stats4749.1,stats4749.2,stats4750.1,stats4750.2,stats4751.1,stats4751.2,stats4752.1,stats4752.2,stats4753.1,stats4753.2,stats4754.1,stats4754.2,stats4755.1,stats4755.2,stats4756.1,stats4756.2,stats4757.1,stats4757.2,stats4758.1,stats4758.2,stats4759.1,stats4759.2,stats4760.1,stats4760.2,stats4761.1,stats4761.2,stats4762.1,stats4762.2,stats4763.1,stats4763.2,stats4764.1,stats4764.2,stats4765.1,stats4765.2,stats4766.1,stats4766.2,stats4767.1,stats4767.2,stats4768.1,stats4768.2,stats4769.1,stats4769.2,stats4770.1,stats4770.2,stats4771.1,stats4771.2,stats4772.1,stats4772.2,stats4773.1,stats4773.2,stats4774.1,stats4774.2,stats4775.1,stats4775.2,stats4776.1,stats4776.2,stats4777.1,stats4777.2,stats4778.1,stats4778.2,stats4779.1,stats4779.2,stats4780.1,stats4780.2,stats4781.1,stats4781.2,stats4782.1,stats4782.2,stats4783.1,stats4783.2,stats4784.1,stats4784.2,stats4785.1,stats4785.2,stats4786.1,stats4786.2,stats4787.1,stats4787.2,stats4788.1,stats4788.2,stats4789.1,stats4789.2]
  decide
end AuthenticatedBranchRoundCheckedRows
