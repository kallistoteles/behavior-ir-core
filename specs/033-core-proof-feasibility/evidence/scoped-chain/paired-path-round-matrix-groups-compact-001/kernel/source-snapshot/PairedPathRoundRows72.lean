import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData73
import PairedPathRoundInstructionMatrixData74
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows4704 : actualRows4704=WordField.canonicalRows actualModulus 4704 (.band 4703 2118) := by core033_kernel_decide
theorem stats4704 : actualRows4704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4704=5124 := by core033_kernel_decide
theorem rows4705 : actualRows4705=WordField.canonicalRows actualModulus 4705 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4705 : actualRows4705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4705=2892 := by core033_kernel_decide
theorem rows4706 : actualRows4706=WordField.canonicalRows actualModulus 4706 (.bxor 616 4705) := by core033_kernel_decide
theorem stats4706 : actualRows4706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4706=7428 := by core033_kernel_decide
theorem rows4707 : actualRows4707=WordField.canonicalRows actualModulus 4707 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4707 : actualRows4707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4707=2820 := by core033_kernel_decide
theorem rows4708 : actualRows4708=WordField.canonicalRows actualModulus 4708 (.bnot 4707) := by core033_kernel_decide
theorem stats4708 : actualRows4708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4708=6276 := by core033_kernel_decide
theorem rows4709 : actualRows4709=WordField.canonicalRows actualModulus 4709 (.band 4706 4708) := by core033_kernel_decide
theorem stats4709 : actualRows4709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4709=5124 := by core033_kernel_decide
theorem rows4710 : actualRows4710=WordField.canonicalRows actualModulus 4710 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4710 : actualRows4710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4710=2892 := by core033_kernel_decide
theorem rows4711 : actualRows4711=WordField.canonicalRows actualModulus 4711 (.bxor 616 4710) := by core033_kernel_decide
theorem stats4711 : actualRows4711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4711=7428 := by core033_kernel_decide
theorem rows4712 : actualRows4712=WordField.canonicalRows actualModulus 4712 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4712 : actualRows4712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4712=2820 := by core033_kernel_decide
theorem rows4713 : actualRows4713=WordField.canonicalRows actualModulus 4713 (.bnot 4712) := by core033_kernel_decide
theorem stats4713 : actualRows4713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4713=6276 := by core033_kernel_decide
theorem rows4714 : actualRows4714=WordField.canonicalRows actualModulus 4714 (.bxor 4711 4713) := by core033_kernel_decide
theorem stats4714 : actualRows4714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4714=7428 := by core033_kernel_decide
theorem rows4715 : actualRows4715=WordField.canonicalRows actualModulus 4715 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4715 : actualRows4715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4715=2892 := by core033_kernel_decide
theorem rows4716 : actualRows4716=WordField.canonicalRows actualModulus 4716 (.bxor 616 4715) := by core033_kernel_decide
theorem stats4716 : actualRows4716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4716=7428 := by core033_kernel_decide
theorem rows4717 : actualRows4717=WordField.canonicalRows actualModulus 4717 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4717 : actualRows4717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4717=2820 := by core033_kernel_decide
theorem rows4718 : actualRows4718=WordField.canonicalRows actualModulus 4718 (.bnot 4717) := by core033_kernel_decide
theorem stats4718 : actualRows4718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4718=6276 := by core033_kernel_decide
theorem rows4719 : actualRows4719=WordField.canonicalRows actualModulus 4719 (.badd 4716 4718) := by core033_kernel_decide
theorem stats4719 : actualRows4719.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4719=5388 := by core033_kernel_decide
theorem rows4720 : actualRows4720=WordField.canonicalRows actualModulus 4720 (.bnot 4719) := by core033_kernel_decide
theorem stats4720 : actualRows4720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4720=6276 := by core033_kernel_decide
theorem rows4721 : actualRows4721=WordField.canonicalRows actualModulus 4721 (.band 4714 4720) := by core033_kernel_decide
theorem stats4721 : actualRows4721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4721=5124 := by core033_kernel_decide
theorem rows4722 : actualRows4722=WordField.canonicalRows actualModulus 4722 (.bxor 4709 4721) := by core033_kernel_decide
theorem stats4722 : actualRows4722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4722=7428 := by core033_kernel_decide
theorem rows4723 : actualRows4723=WordField.canonicalRows actualModulus 4723 (.shr 4722 31) := by core033_kernel_decide
theorem stats4723 : actualRows4723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4723=2892 := by core033_kernel_decide
theorem rows4724 : actualRows4724=WordField.canonicalRows actualModulus 4724 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4724 : actualRows4724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4724=2892 := by core033_kernel_decide
theorem rows4725 : actualRows4725=WordField.canonicalRows actualModulus 4725 (.bxor 4723 4724) := by core033_kernel_decide
theorem stats4725 : actualRows4725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4725=7428 := by core033_kernel_decide
theorem rows4726 : actualRows4726=WordField.canonicalRows actualModulus 4726 (.bnot 4725) := by core033_kernel_decide
theorem stats4726 : actualRows4726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4726=6276 := by core033_kernel_decide
theorem rows4727 : actualRows4727=WordField.canonicalRows actualModulus 4727 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4727 : actualRows4727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4727=2892 := by core033_kernel_decide
theorem rows4728 : actualRows4728=WordField.canonicalRows actualModulus 4728 (.badd 4726 4727) := by core033_kernel_decide
theorem stats4728 : actualRows4728.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4728=5388 := by core033_kernel_decide
theorem rows4729 : actualRows4729=WordField.canonicalRows actualModulus 4729 (.bnot 4728) := by core033_kernel_decide
theorem stats4729 : actualRows4729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4729=6276 := by core033_kernel_decide
theorem rows4730 : actualRows4730=WordField.canonicalRows actualModulus 4730 (.band 4729 1926) := by core033_kernel_decide
theorem stats4730 : actualRows4730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4730=5124 := by core033_kernel_decide
theorem rows4731 : actualRows4731=WordField.canonicalRows actualModulus 4731 (.bxor 4704 4730) := by core033_kernel_decide
theorem stats4731 : actualRows4731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4731=7428 := by core033_kernel_decide
theorem rows4732 : actualRows4732=WordField.canonicalRows actualModulus 4732 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4732 : actualRows4732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4732=2892 := by core033_kernel_decide
theorem rows4733 : actualRows4733=WordField.canonicalRows actualModulus 4733 (.bxor 616 4732) := by core033_kernel_decide
theorem stats4733 : actualRows4733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4733=7428 := by core033_kernel_decide
theorem rows4734 : actualRows4734=WordField.canonicalRows actualModulus 4734 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4734 : actualRows4734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4734=2820 := by core033_kernel_decide
theorem rows4735 : actualRows4735=WordField.canonicalRows actualModulus 4735 (.bnot 4734) := by core033_kernel_decide
theorem stats4735 : actualRows4735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4735=6276 := by core033_kernel_decide
theorem rows4736 : actualRows4736=WordField.canonicalRows actualModulus 4736 (.band 4733 4735) := by core033_kernel_decide
theorem stats4736 : actualRows4736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4736=5124 := by core033_kernel_decide
theorem rows4737 : actualRows4737=WordField.canonicalRows actualModulus 4737 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4737 : actualRows4737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4737=2892 := by core033_kernel_decide
theorem rows4738 : actualRows4738=WordField.canonicalRows actualModulus 4738 (.bxor 616 4737) := by core033_kernel_decide
theorem stats4738 : actualRows4738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4738=7428 := by core033_kernel_decide
theorem rows4739 : actualRows4739=WordField.canonicalRows actualModulus 4739 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4739 : actualRows4739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4739=2820 := by core033_kernel_decide
theorem rows4740 : actualRows4740=WordField.canonicalRows actualModulus 4740 (.bnot 4739) := by core033_kernel_decide
theorem stats4740 : actualRows4740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4740=6276 := by core033_kernel_decide
theorem rows4741 : actualRows4741=WordField.canonicalRows actualModulus 4741 (.bxor 4738 4740) := by core033_kernel_decide
theorem stats4741 : actualRows4741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4741=7428 := by core033_kernel_decide
theorem rows4742 : actualRows4742=WordField.canonicalRows actualModulus 4742 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4742 : actualRows4742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4742=2892 := by core033_kernel_decide
theorem rows4743 : actualRows4743=WordField.canonicalRows actualModulus 4743 (.bxor 616 4742) := by core033_kernel_decide
theorem stats4743 : actualRows4743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4743=7428 := by core033_kernel_decide
theorem rows4744 : actualRows4744=WordField.canonicalRows actualModulus 4744 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4744 : actualRows4744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4744=2820 := by core033_kernel_decide
theorem rows4745 : actualRows4745=WordField.canonicalRows actualModulus 4745 (.bnot 4744) := by core033_kernel_decide
theorem stats4745 : actualRows4745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4745=6276 := by core033_kernel_decide
theorem rows4746 : actualRows4746=WordField.canonicalRows actualModulus 4746 (.badd 4743 4745) := by core033_kernel_decide
theorem stats4746 : actualRows4746.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4746=5388 := by core033_kernel_decide
theorem rows4747 : actualRows4747=WordField.canonicalRows actualModulus 4747 (.bnot 4746) := by core033_kernel_decide
theorem stats4747 : actualRows4747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4747=6276 := by core033_kernel_decide
theorem rows4748 : actualRows4748=WordField.canonicalRows actualModulus 4748 (.band 4741 4747) := by core033_kernel_decide
theorem stats4748 : actualRows4748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4748=5124 := by core033_kernel_decide
theorem rows4749 : actualRows4749=WordField.canonicalRows actualModulus 4749 (.bxor 4736 4748) := by core033_kernel_decide
theorem stats4749 : actualRows4749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4749=7428 := by core033_kernel_decide
theorem rows4750 : actualRows4750=WordField.canonicalRows actualModulus 4750 (.shr 4749 31) := by core033_kernel_decide
theorem stats4750 : actualRows4750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4750=2892 := by core033_kernel_decide
theorem rows4751 : actualRows4751=WordField.canonicalRows actualModulus 4751 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4751 : actualRows4751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4751=2892 := by core033_kernel_decide
theorem rows4752 : actualRows4752=WordField.canonicalRows actualModulus 4752 (.bxor 4750 4751) := by core033_kernel_decide
theorem stats4752 : actualRows4752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4752=7428 := by core033_kernel_decide
theorem rows4753 : actualRows4753=WordField.canonicalRows actualModulus 4753 (.bnot 4752) := by core033_kernel_decide
theorem stats4753 : actualRows4753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4753=6276 := by core033_kernel_decide
theorem rows4754 : actualRows4754=WordField.canonicalRows actualModulus 4754 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats4754 : actualRows4754.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4754=2892 := by core033_kernel_decide
theorem rows4755 : actualRows4755=WordField.canonicalRows actualModulus 4755 (.badd 4753 4754) := by core033_kernel_decide
theorem stats4755 : actualRows4755.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows4755=5388 := by core033_kernel_decide
theorem rows4756 : actualRows4756=WordField.canonicalRows actualModulus 4756 (.band 4755 2121) := by core033_kernel_decide
theorem stats4756 : actualRows4756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4756=5124 := by core033_kernel_decide
theorem rows4757 : actualRows4757=WordField.canonicalRows actualModulus 4757 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4757 : actualRows4757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4757=2892 := by core033_kernel_decide
theorem rows4758 : actualRows4758=WordField.canonicalRows actualModulus 4758 (.bxor 616 4757) := by core033_kernel_decide
theorem stats4758 : actualRows4758.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4758=7428 := by core033_kernel_decide
theorem rows4759 : actualRows4759=WordField.canonicalRows actualModulus 4759 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4759 : actualRows4759.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4759=2820 := by core033_kernel_decide
theorem rows4760 : actualRows4760=WordField.canonicalRows actualModulus 4760 (.bnot 4759) := by core033_kernel_decide
theorem stats4760 : actualRows4760.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4760=6276 := by core033_kernel_decide
theorem rows4761 : actualRows4761=WordField.canonicalRows actualModulus 4761 (.band 4758 4760) := by core033_kernel_decide
theorem stats4761 : actualRows4761.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4761=5124 := by core033_kernel_decide
theorem rows4762 : actualRows4762=WordField.canonicalRows actualModulus 4762 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4762 : actualRows4762.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4762=2892 := by core033_kernel_decide
theorem rows4763 : actualRows4763=WordField.canonicalRows actualModulus 4763 (.bxor 616 4762) := by core033_kernel_decide
theorem stats4763 : actualRows4763.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4763=7428 := by core033_kernel_decide
theorem rows4764 : actualRows4764=WordField.canonicalRows actualModulus 4764 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats4764 : actualRows4764.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4764=2820 := by core033_kernel_decide
theorem rows4765 : actualRows4765=WordField.canonicalRows actualModulus 4765 (.bnot 4764) := by core033_kernel_decide
theorem stats4765 : actualRows4765.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4765=6276 := by core033_kernel_decide
theorem rows4766 : actualRows4766=WordField.canonicalRows actualModulus 4766 (.bxor 4763 4765) := by core033_kernel_decide
theorem stats4766 : actualRows4766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4766=7428 := by core033_kernel_decide
theorem rows4767 : actualRows4767=WordField.canonicalRows actualModulus 4767 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats4767 : actualRows4767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows4767=2892 := by core033_kernel_decide
def partRows72 : List R1CS.Row := actualRows4704++actualRows4705++actualRows4706++actualRows4707++actualRows4708++actualRows4709++actualRows4710++actualRows4711++actualRows4712++actualRows4713++actualRows4714++actualRows4715++actualRows4716++actualRows4717++actualRows4718++actualRows4719++actualRows4720++actualRows4721++actualRows4722++actualRows4723++actualRows4724++actualRows4725++actualRows4726++actualRows4727++actualRows4728++actualRows4729++actualRows4730++actualRows4731++actualRows4732++actualRows4733++actualRows4734++actualRows4735++actualRows4736++actualRows4737++actualRows4738++actualRows4739++actualRows4740++actualRows4741++actualRows4742++actualRows4743++actualRows4744++actualRows4745++actualRows4746++actualRows4747++actualRows4748++actualRows4749++actualRows4750++actualRows4751++actualRows4752++actualRows4753++actualRows4754++actualRows4755++actualRows4756++actualRows4757++actualRows4758++actualRows4759++actualRows4760++actualRows4761++actualRows4762++actualRows4763++actualRows4764++actualRows4765++actualRows4766++actualRows4767
def partOps72 : List WordIR.Op := [.band 4703 2118,.literal (BitVec.ofNat 32 2),.bxor 616 4705,.literal (BitVec.ofNat 32 0),.bnot 4707,.band 4706 4708,.literal (BitVec.ofNat 32 2),.bxor 616 4710,.literal (BitVec.ofNat 32 0),.bnot 4712,.bxor 4711 4713,.literal (BitVec.ofNat 32 2),.bxor 616 4715,.literal (BitVec.ofNat 32 0),.bnot 4717,.badd 4716 4718,.bnot 4719,.band 4714 4720,.bxor 4709 4721,.shr 4722 31,.literal (BitVec.ofNat 32 1),.bxor 4723 4724,.bnot 4725,.literal (BitVec.ofNat 32 1),.badd 4726 4727,.bnot 4728,.band 4729 1926,.bxor 4704 4730,.literal (BitVec.ofNat 32 2),.bxor 616 4732,.literal (BitVec.ofNat 32 0),.bnot 4734,.band 4733 4735,.literal (BitVec.ofNat 32 2),.bxor 616 4737,.literal (BitVec.ofNat 32 0),.bnot 4739,.bxor 4738 4740,.literal (BitVec.ofNat 32 2),.bxor 616 4742,.literal (BitVec.ofNat 32 0),.bnot 4744,.badd 4743 4745,.bnot 4746,.band 4741 4747,.bxor 4736 4748,.shr 4749 31,.literal (BitVec.ofNat 32 1),.bxor 4750 4751,.bnot 4752,.literal (BitVec.ofNat 32 1),.badd 4753 4754,.band 4755 2121,.literal (BitVec.ofNat 32 2),.bxor 616 4757,.literal (BitVec.ofNat 32 0),.bnot 4759,.band 4758 4760,.literal (BitVec.ofNat 32 2),.bxor 616 4762,.literal (BitVec.ofNat 32 0),.bnot 4764,.bxor 4763 4765,.literal (BitVec.ofNat 32 2)]
theorem partExact72 : partRows72=WordField.rows actualModulus 4704 partOps72 := by
  simp only [partRows72,partOps72,WordField.rows,rows4704,rows4705,rows4706,rows4707,rows4708,rows4709,rows4710,rows4711,rows4712,rows4713,rows4714,rows4715,rows4716,rows4717,rows4718,rows4719,rows4720,rows4721,rows4722,rows4723,rows4724,rows4725,rows4726,rows4727,rows4728,rows4729,rows4730,rows4731,rows4732,rows4733,rows4734,rows4735,rows4736,rows4737,rows4738,rows4739,rows4740,rows4741,rows4742,rows4743,rows4744,rows4745,rows4746,rows4747,rows4748,rows4749,rows4750,rows4751,rows4752,rows4753,rows4754,rows4755,rows4756,rows4757,rows4758,rows4759,rows4760,rows4761,rows4762,rows4763,rows4764,rows4765,rows4766,rows4767,List.append_assoc,List.append_nil]
theorem partLength72 : partOps72.length=64 := by decide
theorem partStats72 : partRows72.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows72=328920 := by
  simp only [partRows72,List.length_append,MatrixRowBlocks.rows_weight_append,stats4704.1,stats4704.2,stats4705.1,stats4705.2,stats4706.1,stats4706.2,stats4707.1,stats4707.2,stats4708.1,stats4708.2,stats4709.1,stats4709.2,stats4710.1,stats4710.2,stats4711.1,stats4711.2,stats4712.1,stats4712.2,stats4713.1,stats4713.2,stats4714.1,stats4714.2,stats4715.1,stats4715.2,stats4716.1,stats4716.2,stats4717.1,stats4717.2,stats4718.1,stats4718.2,stats4719.1,stats4719.2,stats4720.1,stats4720.2,stats4721.1,stats4721.2,stats4722.1,stats4722.2,stats4723.1,stats4723.2,stats4724.1,stats4724.2,stats4725.1,stats4725.2,stats4726.1,stats4726.2,stats4727.1,stats4727.2,stats4728.1,stats4728.2,stats4729.1,stats4729.2,stats4730.1,stats4730.2,stats4731.1,stats4731.2,stats4732.1,stats4732.2,stats4733.1,stats4733.2,stats4734.1,stats4734.2,stats4735.1,stats4735.2,stats4736.1,stats4736.2,stats4737.1,stats4737.2,stats4738.1,stats4738.2,stats4739.1,stats4739.2,stats4740.1,stats4740.2,stats4741.1,stats4741.2,stats4742.1,stats4742.2,stats4743.1,stats4743.2,stats4744.1,stats4744.2,stats4745.1,stats4745.2,stats4746.1,stats4746.2,stats4747.1,stats4747.2,stats4748.1,stats4748.2,stats4749.1,stats4749.2,stats4750.1,stats4750.2,stats4751.1,stats4751.2,stats4752.1,stats4752.2,stats4753.1,stats4753.2,stats4754.1,stats4754.2,stats4755.1,stats4755.2,stats4756.1,stats4756.2,stats4757.1,stats4757.2,stats4758.1,stats4758.2,stats4759.1,stats4759.2,stats4760.1,stats4760.2,stats4761.1,stats4761.2,stats4762.1,stats4762.2,stats4763.1,stats4763.2,stats4764.1,stats4764.2,stats4765.1,stats4765.2,stats4766.1,stats4766.2,stats4767.1,stats4767.2]
  decide
end PairedPathRoundCheckedRows
