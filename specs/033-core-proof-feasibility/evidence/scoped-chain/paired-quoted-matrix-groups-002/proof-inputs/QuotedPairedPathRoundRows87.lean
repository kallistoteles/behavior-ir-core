import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData88
import PairedPathRoundInstructionMatrixData89
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5664 : actualRows5664=WordField.canonicalRows actualModulus 5664 (.bxor 5662 5663) := by core033_kernel_decide
theorem stats5664 : actualRows5664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5664=7428 := by core033_kernel_decide
theorem rows5665 : actualRows5665=WordField.canonicalRows actualModulus 5665 (.bnot 5664) := by core033_kernel_decide
theorem stats5665 : actualRows5665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5665=6276 := by core033_kernel_decide
theorem rows5666 : actualRows5666=WordField.canonicalRows actualModulus 5666 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5666 : actualRows5666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5666=2892 := by core033_kernel_decide
theorem rows5667 : actualRows5667=WordField.canonicalRows actualModulus 5667 (.badd 5665 5666) := by core033_kernel_decide
theorem stats5667 : actualRows5667.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5667=5388 := by core033_kernel_decide
theorem rows5668 : actualRows5668=WordField.canonicalRows actualModulus 5668 (.bnot 5667) := by core033_kernel_decide
theorem stats5668 : actualRows5668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5668=6276 := by core033_kernel_decide
theorem rows5669 : actualRows5669=WordField.canonicalRows actualModulus 5669 (.band 5668 1980) := by core033_kernel_decide
theorem stats5669 : actualRows5669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5669=5124 := by core033_kernel_decide
theorem rows5670 : actualRows5670=WordField.canonicalRows actualModulus 5670 (.bxor 5643 5669) := by core033_kernel_decide
theorem stats5670 : actualRows5670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5670=7428 := by core033_kernel_decide
theorem rows5671 : actualRows5671=WordField.canonicalRows actualModulus 5671 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5671 : actualRows5671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5671=2892 := by core033_kernel_decide
theorem rows5672 : actualRows5672=WordField.canonicalRows actualModulus 5672 (.bxor 616 5671) := by core033_kernel_decide
theorem stats5672 : actualRows5672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5672=7428 := by core033_kernel_decide
theorem rows5673 : actualRows5673=WordField.canonicalRows actualModulus 5673 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5673 : actualRows5673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5673=2820 := by core033_kernel_decide
theorem rows5674 : actualRows5674=WordField.canonicalRows actualModulus 5674 (.bnot 5673) := by core033_kernel_decide
theorem stats5674 : actualRows5674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5674=6276 := by core033_kernel_decide
theorem rows5675 : actualRows5675=WordField.canonicalRows actualModulus 5675 (.band 5672 5674) := by core033_kernel_decide
theorem stats5675 : actualRows5675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5675=5124 := by core033_kernel_decide
theorem rows5676 : actualRows5676=WordField.canonicalRows actualModulus 5676 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5676 : actualRows5676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5676=2892 := by core033_kernel_decide
theorem rows5677 : actualRows5677=WordField.canonicalRows actualModulus 5677 (.bxor 616 5676) := by core033_kernel_decide
theorem stats5677 : actualRows5677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5677=7428 := by core033_kernel_decide
theorem rows5678 : actualRows5678=WordField.canonicalRows actualModulus 5678 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5678 : actualRows5678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5678=2820 := by core033_kernel_decide
theorem rows5679 : actualRows5679=WordField.canonicalRows actualModulus 5679 (.bnot 5678) := by core033_kernel_decide
theorem stats5679 : actualRows5679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5679=6276 := by core033_kernel_decide
theorem rows5680 : actualRows5680=WordField.canonicalRows actualModulus 5680 (.bxor 5677 5679) := by core033_kernel_decide
theorem stats5680 : actualRows5680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5680=7428 := by core033_kernel_decide
theorem rows5681 : actualRows5681=WordField.canonicalRows actualModulus 5681 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5681 : actualRows5681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5681=2892 := by core033_kernel_decide
theorem rows5682 : actualRows5682=WordField.canonicalRows actualModulus 5682 (.bxor 616 5681) := by core033_kernel_decide
theorem stats5682 : actualRows5682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5682=7428 := by core033_kernel_decide
theorem rows5683 : actualRows5683=WordField.canonicalRows actualModulus 5683 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5683 : actualRows5683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5683=2820 := by core033_kernel_decide
theorem rows5684 : actualRows5684=WordField.canonicalRows actualModulus 5684 (.bnot 5683) := by core033_kernel_decide
theorem stats5684 : actualRows5684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5684=6276 := by core033_kernel_decide
theorem rows5685 : actualRows5685=WordField.canonicalRows actualModulus 5685 (.badd 5682 5684) := by core033_kernel_decide
theorem stats5685 : actualRows5685.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5685=5388 := by core033_kernel_decide
theorem rows5686 : actualRows5686=WordField.canonicalRows actualModulus 5686 (.bnot 5685) := by core033_kernel_decide
theorem stats5686 : actualRows5686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5686=6276 := by core033_kernel_decide
theorem rows5687 : actualRows5687=WordField.canonicalRows actualModulus 5687 (.band 5680 5686) := by core033_kernel_decide
theorem stats5687 : actualRows5687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5687=5124 := by core033_kernel_decide
theorem rows5688 : actualRows5688=WordField.canonicalRows actualModulus 5688 (.bxor 5675 5687) := by core033_kernel_decide
theorem stats5688 : actualRows5688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5688=7428 := by core033_kernel_decide
theorem rows5689 : actualRows5689=WordField.canonicalRows actualModulus 5689 (.shr 5688 31) := by core033_kernel_decide
theorem stats5689 : actualRows5689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5689=2892 := by core033_kernel_decide
theorem rows5690 : actualRows5690=WordField.canonicalRows actualModulus 5690 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5690 : actualRows5690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5690=2892 := by core033_kernel_decide
theorem rows5691 : actualRows5691=WordField.canonicalRows actualModulus 5691 (.bxor 5689 5690) := by core033_kernel_decide
theorem stats5691 : actualRows5691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5691=7428 := by core033_kernel_decide
theorem rows5692 : actualRows5692=WordField.canonicalRows actualModulus 5692 (.bnot 5691) := by core033_kernel_decide
theorem stats5692 : actualRows5692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5692=6276 := by core033_kernel_decide
theorem rows5693 : actualRows5693=WordField.canonicalRows actualModulus 5693 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5693 : actualRows5693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5693=2892 := by core033_kernel_decide
theorem rows5694 : actualRows5694=WordField.canonicalRows actualModulus 5694 (.badd 5692 5693) := by core033_kernel_decide
theorem stats5694 : actualRows5694.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5694=5388 := by core033_kernel_decide
theorem rows5695 : actualRows5695=WordField.canonicalRows actualModulus 5695 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5695 : actualRows5695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5695=2820 := by core033_kernel_decide
theorem rows5696 : actualRows5696=WordField.canonicalRows actualModulus 5696 (.band 5694 5695) := by core033_kernel_decide
theorem stats5696 : actualRows5696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5696=5124 := by core033_kernel_decide
theorem rows5697 : actualRows5697=WordField.canonicalRows actualModulus 5697 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5697 : actualRows5697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5697=2892 := by core033_kernel_decide
theorem rows5698 : actualRows5698=WordField.canonicalRows actualModulus 5698 (.bxor 616 5697) := by core033_kernel_decide
theorem stats5698 : actualRows5698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5698=7428 := by core033_kernel_decide
theorem rows5699 : actualRows5699=WordField.canonicalRows actualModulus 5699 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5699 : actualRows5699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5699=2820 := by core033_kernel_decide
theorem rows5700 : actualRows5700=WordField.canonicalRows actualModulus 5700 (.bnot 5699) := by core033_kernel_decide
theorem stats5700 : actualRows5700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5700=6276 := by core033_kernel_decide
theorem rows5701 : actualRows5701=WordField.canonicalRows actualModulus 5701 (.band 5698 5700) := by core033_kernel_decide
theorem stats5701 : actualRows5701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5701=5124 := by core033_kernel_decide
theorem rows5702 : actualRows5702=WordField.canonicalRows actualModulus 5702 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5702 : actualRows5702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5702=2892 := by core033_kernel_decide
theorem rows5703 : actualRows5703=WordField.canonicalRows actualModulus 5703 (.bxor 616 5702) := by core033_kernel_decide
theorem stats5703 : actualRows5703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5703=7428 := by core033_kernel_decide
theorem rows5704 : actualRows5704=WordField.canonicalRows actualModulus 5704 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5704 : actualRows5704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5704=2820 := by core033_kernel_decide
theorem rows5705 : actualRows5705=WordField.canonicalRows actualModulus 5705 (.bnot 5704) := by core033_kernel_decide
theorem stats5705 : actualRows5705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5705=6276 := by core033_kernel_decide
theorem rows5706 : actualRows5706=WordField.canonicalRows actualModulus 5706 (.bxor 5703 5705) := by core033_kernel_decide
theorem stats5706 : actualRows5706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5706=7428 := by core033_kernel_decide
theorem rows5707 : actualRows5707=WordField.canonicalRows actualModulus 5707 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5707 : actualRows5707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5707=2892 := by core033_kernel_decide
theorem rows5708 : actualRows5708=WordField.canonicalRows actualModulus 5708 (.bxor 616 5707) := by core033_kernel_decide
theorem stats5708 : actualRows5708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5708=7428 := by core033_kernel_decide
theorem rows5709 : actualRows5709=WordField.canonicalRows actualModulus 5709 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5709 : actualRows5709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5709=2820 := by core033_kernel_decide
theorem rows5710 : actualRows5710=WordField.canonicalRows actualModulus 5710 (.bnot 5709) := by core033_kernel_decide
theorem stats5710 : actualRows5710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5710=6276 := by core033_kernel_decide
theorem rows5711 : actualRows5711=WordField.canonicalRows actualModulus 5711 (.badd 5708 5710) := by core033_kernel_decide
theorem stats5711 : actualRows5711.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5711=5388 := by core033_kernel_decide
theorem rows5712 : actualRows5712=WordField.canonicalRows actualModulus 5712 (.bnot 5711) := by core033_kernel_decide
theorem stats5712 : actualRows5712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5712=6276 := by core033_kernel_decide
theorem rows5713 : actualRows5713=WordField.canonicalRows actualModulus 5713 (.band 5706 5712) := by core033_kernel_decide
theorem stats5713 : actualRows5713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5713=5124 := by core033_kernel_decide
theorem rows5714 : actualRows5714=WordField.canonicalRows actualModulus 5714 (.bxor 5701 5713) := by core033_kernel_decide
theorem stats5714 : actualRows5714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5714=7428 := by core033_kernel_decide
theorem rows5715 : actualRows5715=WordField.canonicalRows actualModulus 5715 (.shr 5714 31) := by core033_kernel_decide
theorem stats5715 : actualRows5715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5715=2892 := by core033_kernel_decide
theorem rows5716 : actualRows5716=WordField.canonicalRows actualModulus 5716 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5716 : actualRows5716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5716=2892 := by core033_kernel_decide
theorem rows5717 : actualRows5717=WordField.canonicalRows actualModulus 5717 (.bxor 5715 5716) := by core033_kernel_decide
theorem stats5717 : actualRows5717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5717=7428 := by core033_kernel_decide
theorem rows5718 : actualRows5718=WordField.canonicalRows actualModulus 5718 (.bnot 5717) := by core033_kernel_decide
theorem stats5718 : actualRows5718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5718=6276 := by core033_kernel_decide
theorem rows5719 : actualRows5719=WordField.canonicalRows actualModulus 5719 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5719 : actualRows5719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5719=2892 := by core033_kernel_decide
theorem rows5720 : actualRows5720=WordField.canonicalRows actualModulus 5720 (.badd 5718 5719) := by core033_kernel_decide
theorem stats5720 : actualRows5720.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5720=5388 := by core033_kernel_decide
theorem rows5721 : actualRows5721=WordField.canonicalRows actualModulus 5721 (.bnot 5720) := by core033_kernel_decide
theorem stats5721 : actualRows5721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5721=6276 := by core033_kernel_decide
theorem rows5722 : actualRows5722=WordField.canonicalRows actualModulus 5722 (.band 5721 1983) := by core033_kernel_decide
theorem stats5722 : actualRows5722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5722=5124 := by core033_kernel_decide
theorem rows5723 : actualRows5723=WordField.canonicalRows actualModulus 5723 (.bxor 5696 5722) := by core033_kernel_decide
theorem stats5723 : actualRows5723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5723=7428 := by core033_kernel_decide
theorem rows5724 : actualRows5724=WordField.canonicalRows actualModulus 5724 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5724 : actualRows5724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5724=2892 := by core033_kernel_decide
theorem rows5725 : actualRows5725=WordField.canonicalRows actualModulus 5725 (.bxor 616 5724) := by core033_kernel_decide
theorem stats5725 : actualRows5725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5725=7428 := by core033_kernel_decide
theorem rows5726 : actualRows5726=WordField.canonicalRows actualModulus 5726 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5726 : actualRows5726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5726=2820 := by core033_kernel_decide
theorem rows5727 : actualRows5727=WordField.canonicalRows actualModulus 5727 (.bnot 5726) := by core033_kernel_decide
theorem stats5727 : actualRows5727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5727=6276 := by core033_kernel_decide
def partRows87 : List R1CS.Row := actualRows5664++actualRows5665++actualRows5666++actualRows5667++actualRows5668++actualRows5669++actualRows5670++actualRows5671++actualRows5672++actualRows5673++actualRows5674++actualRows5675++actualRows5676++actualRows5677++actualRows5678++actualRows5679++actualRows5680++actualRows5681++actualRows5682++actualRows5683++actualRows5684++actualRows5685++actualRows5686++actualRows5687++actualRows5688++actualRows5689++actualRows5690++actualRows5691++actualRows5692++actualRows5693++actualRows5694++actualRows5695++actualRows5696++actualRows5697++actualRows5698++actualRows5699++actualRows5700++actualRows5701++actualRows5702++actualRows5703++actualRows5704++actualRows5705++actualRows5706++actualRows5707++actualRows5708++actualRows5709++actualRows5710++actualRows5711++actualRows5712++actualRows5713++actualRows5714++actualRows5715++actualRows5716++actualRows5717++actualRows5718++actualRows5719++actualRows5720++actualRows5721++actualRows5722++actualRows5723++actualRows5724++actualRows5725++actualRows5726++actualRows5727
def partOps87 : List WordIR.Op := [.bxor 5662 5663,.bnot 5664,.literal (BitVec.ofNat 32 1),.badd 5665 5666,.bnot 5667,.band 5668 1980,.bxor 5643 5669,.literal (BitVec.ofNat 32 2),.bxor 616 5671,.literal (BitVec.ofNat 32 0),.bnot 5673,.band 5672 5674,.literal (BitVec.ofNat 32 2),.bxor 616 5676,.literal (BitVec.ofNat 32 0),.bnot 5678,.bxor 5677 5679,.literal (BitVec.ofNat 32 2),.bxor 616 5681,.literal (BitVec.ofNat 32 0),.bnot 5683,.badd 5682 5684,.bnot 5685,.band 5680 5686,.bxor 5675 5687,.shr 5688 31,.literal (BitVec.ofNat 32 1),.bxor 5689 5690,.bnot 5691,.literal (BitVec.ofNat 32 1),.badd 5692 5693,.literal (BitVec.ofNat 32 0),.band 5694 5695,.literal (BitVec.ofNat 32 2),.bxor 616 5697,.literal (BitVec.ofNat 32 0),.bnot 5699,.band 5698 5700,.literal (BitVec.ofNat 32 2),.bxor 616 5702,.literal (BitVec.ofNat 32 0),.bnot 5704,.bxor 5703 5705,.literal (BitVec.ofNat 32 2),.bxor 616 5707,.literal (BitVec.ofNat 32 0),.bnot 5709,.badd 5708 5710,.bnot 5711,.band 5706 5712,.bxor 5701 5713,.shr 5714 31,.literal (BitVec.ofNat 32 1),.bxor 5715 5716,.bnot 5717,.literal (BitVec.ofNat 32 1),.badd 5718 5719,.bnot 5720,.band 5721 1983,.bxor 5696 5722,.literal (BitVec.ofNat 32 2),.bxor 616 5724,.literal (BitVec.ofNat 32 0),.bnot 5726]
theorem partExact87 : partRows87=WordField.rows actualModulus 5664 partOps87 := by
  simp only [partRows87,partOps87,WordField.rows,rows5664,rows5665,rows5666,rows5667,rows5668,rows5669,rows5670,rows5671,rows5672,rows5673,rows5674,rows5675,rows5676,rows5677,rows5678,rows5679,rows5680,rows5681,rows5682,rows5683,rows5684,rows5685,rows5686,rows5687,rows5688,rows5689,rows5690,rows5691,rows5692,rows5693,rows5694,rows5695,rows5696,rows5697,rows5698,rows5699,rows5700,rows5701,rows5702,rows5703,rows5704,rows5705,rows5706,rows5707,rows5708,rows5709,rows5710,rows5711,rows5712,rows5713,rows5714,rows5715,rows5716,rows5717,rows5718,rows5719,rows5720,rows5721,rows5722,rows5723,rows5724,rows5725,rows5726,rows5727,List.append_assoc,List.append_nil]
theorem partLength87 : partOps87.length=64 := by decide
theorem partStats87 : partRows87.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows87=332568 := by
  simp only [partRows87,List.length_append,MatrixRowBlocks.rows_weight_append,stats5664.1,stats5664.2,stats5665.1,stats5665.2,stats5666.1,stats5666.2,stats5667.1,stats5667.2,stats5668.1,stats5668.2,stats5669.1,stats5669.2,stats5670.1,stats5670.2,stats5671.1,stats5671.2,stats5672.1,stats5672.2,stats5673.1,stats5673.2,stats5674.1,stats5674.2,stats5675.1,stats5675.2,stats5676.1,stats5676.2,stats5677.1,stats5677.2,stats5678.1,stats5678.2,stats5679.1,stats5679.2,stats5680.1,stats5680.2,stats5681.1,stats5681.2,stats5682.1,stats5682.2,stats5683.1,stats5683.2,stats5684.1,stats5684.2,stats5685.1,stats5685.2,stats5686.1,stats5686.2,stats5687.1,stats5687.2,stats5688.1,stats5688.2,stats5689.1,stats5689.2,stats5690.1,stats5690.2,stats5691.1,stats5691.2,stats5692.1,stats5692.2,stats5693.1,stats5693.2,stats5694.1,stats5694.2,stats5695.1,stats5695.2,stats5696.1,stats5696.2,stats5697.1,stats5697.2,stats5698.1,stats5698.2,stats5699.1,stats5699.2,stats5700.1,stats5700.2,stats5701.1,stats5701.2,stats5702.1,stats5702.2,stats5703.1,stats5703.2,stats5704.1,stats5704.2,stats5705.1,stats5705.2,stats5706.1,stats5706.2,stats5707.1,stats5707.2,stats5708.1,stats5708.2,stats5709.1,stats5709.2,stats5710.1,stats5710.2,stats5711.1,stats5711.2,stats5712.1,stats5712.2,stats5713.1,stats5713.2,stats5714.1,stats5714.2,stats5715.1,stats5715.2,stats5716.1,stats5716.2,stats5717.1,stats5717.2,stats5718.1,stats5718.2,stats5719.1,stats5719.2,stats5720.1,stats5720.2,stats5721.1,stats5721.2,stats5722.1,stats5722.2,stats5723.1,stats5723.2,stats5724.1,stats5724.2,stats5725.1,stats5725.2,stats5726.1,stats5726.2,stats5727.1,stats5727.2]
  decide
end QuotedPairedPathRoundCheckedRows
