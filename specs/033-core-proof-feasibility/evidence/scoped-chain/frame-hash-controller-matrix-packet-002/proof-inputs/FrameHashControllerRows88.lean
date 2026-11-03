import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData88
import FrameHashControllerInstructionMatrixData89
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5675 : actualRows5675=WordField.canonicalRows actualModulus 5675 (.shr 3071 8) := by core033_kernel_decide
theorem stats5675 : actualRows5675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5675=4548 := by core033_kernel_decide
theorem rows5676 : actualRows5676=WordField.canonicalRows actualModulus 5676 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5676 : actualRows5676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5676=2820 := by core033_kernel_decide
theorem rows5677 : actualRows5677=WordField.canonicalRows actualModulus 5677 (.bnot 5676) := by core033_kernel_decide
theorem stats5677 : actualRows5677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5677=6276 := by core033_kernel_decide
theorem rows5678 : actualRows5678=WordField.canonicalRows actualModulus 5678 (.band 5675 5677) := by core033_kernel_decide
theorem stats5678 : actualRows5678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5678=5124 := by core033_kernel_decide
theorem rows5679 : actualRows5679=WordField.canonicalRows actualModulus 5679 (.shr 3071 8) := by core033_kernel_decide
theorem stats5679 : actualRows5679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5679=4548 := by core033_kernel_decide
theorem rows5680 : actualRows5680=WordField.canonicalRows actualModulus 5680 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5680 : actualRows5680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5680=2820 := by core033_kernel_decide
theorem rows5681 : actualRows5681=WordField.canonicalRows actualModulus 5681 (.bnot 5680) := by core033_kernel_decide
theorem stats5681 : actualRows5681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5681=6276 := by core033_kernel_decide
theorem rows5682 : actualRows5682=WordField.canonicalRows actualModulus 5682 (.bxor 5679 5681) := by core033_kernel_decide
theorem stats5682 : actualRows5682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5682=7428 := by core033_kernel_decide
theorem rows5683 : actualRows5683=WordField.canonicalRows actualModulus 5683 (.shr 3071 8) := by core033_kernel_decide
theorem stats5683 : actualRows5683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5683=4548 := by core033_kernel_decide
theorem rows5684 : actualRows5684=WordField.canonicalRows actualModulus 5684 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5684 : actualRows5684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5684=2820 := by core033_kernel_decide
theorem rows5685 : actualRows5685=WordField.canonicalRows actualModulus 5685 (.bnot 5684) := by core033_kernel_decide
theorem stats5685 : actualRows5685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5685=6276 := by core033_kernel_decide
theorem rows5686 : actualRows5686=WordField.canonicalRows actualModulus 5686 (.badd 5683 5685) := by core033_kernel_decide
theorem stats5686 : actualRows5686.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5686=5388 := by core033_kernel_decide
theorem rows5687 : actualRows5687=WordField.canonicalRows actualModulus 5687 (.bnot 5686) := by core033_kernel_decide
theorem stats5687 : actualRows5687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5687=6276 := by core033_kernel_decide
theorem rows5688 : actualRows5688=WordField.canonicalRows actualModulus 5688 (.band 5682 5687) := by core033_kernel_decide
theorem stats5688 : actualRows5688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5688=5124 := by core033_kernel_decide
theorem rows5689 : actualRows5689=WordField.canonicalRows actualModulus 5689 (.bxor 5678 5688) := by core033_kernel_decide
theorem stats5689 : actualRows5689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5689=7428 := by core033_kernel_decide
theorem rows5690 : actualRows5690=WordField.canonicalRows actualModulus 5690 (.shr 5689 31) := by core033_kernel_decide
theorem stats5690 : actualRows5690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5690=2892 := by core033_kernel_decide
theorem rows5691 : actualRows5691=WordField.canonicalRows actualModulus 5691 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5691 : actualRows5691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5691=2892 := by core033_kernel_decide
theorem rows5692 : actualRows5692=WordField.canonicalRows actualModulus 5692 (.bxor 5690 5691) := by core033_kernel_decide
theorem stats5692 : actualRows5692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5692=7428 := by core033_kernel_decide
theorem rows5693 : actualRows5693=WordField.canonicalRows actualModulus 5693 (.shr 3123 8) := by core033_kernel_decide
theorem stats5693 : actualRows5693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5693=4548 := by core033_kernel_decide
theorem rows5694 : actualRows5694=WordField.canonicalRows actualModulus 5694 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5694 : actualRows5694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5694=2820 := by core033_kernel_decide
theorem rows5695 : actualRows5695=WordField.canonicalRows actualModulus 5695 (.bnot 5694) := by core033_kernel_decide
theorem stats5695 : actualRows5695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5695=6276 := by core033_kernel_decide
theorem rows5696 : actualRows5696=WordField.canonicalRows actualModulus 5696 (.band 5693 5695) := by core033_kernel_decide
theorem stats5696 : actualRows5696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5696=5124 := by core033_kernel_decide
theorem rows5697 : actualRows5697=WordField.canonicalRows actualModulus 5697 (.shr 3123 8) := by core033_kernel_decide
theorem stats5697 : actualRows5697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5697=4548 := by core033_kernel_decide
theorem rows5698 : actualRows5698=WordField.canonicalRows actualModulus 5698 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5698 : actualRows5698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5698=2820 := by core033_kernel_decide
theorem rows5699 : actualRows5699=WordField.canonicalRows actualModulus 5699 (.bnot 5698) := by core033_kernel_decide
theorem stats5699 : actualRows5699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5699=6276 := by core033_kernel_decide
theorem rows5700 : actualRows5700=WordField.canonicalRows actualModulus 5700 (.bxor 5697 5699) := by core033_kernel_decide
theorem stats5700 : actualRows5700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5700=7428 := by core033_kernel_decide
theorem rows5701 : actualRows5701=WordField.canonicalRows actualModulus 5701 (.shr 3123 8) := by core033_kernel_decide
theorem stats5701 : actualRows5701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5701=4548 := by core033_kernel_decide
theorem rows5702 : actualRows5702=WordField.canonicalRows actualModulus 5702 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5702 : actualRows5702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5702=2820 := by core033_kernel_decide
theorem rows5703 : actualRows5703=WordField.canonicalRows actualModulus 5703 (.bnot 5702) := by core033_kernel_decide
theorem stats5703 : actualRows5703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5703=6276 := by core033_kernel_decide
theorem rows5704 : actualRows5704=WordField.canonicalRows actualModulus 5704 (.badd 5701 5703) := by core033_kernel_decide
theorem stats5704 : actualRows5704.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5704=5388 := by core033_kernel_decide
theorem rows5705 : actualRows5705=WordField.canonicalRows actualModulus 5705 (.bnot 5704) := by core033_kernel_decide
theorem stats5705 : actualRows5705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5705=6276 := by core033_kernel_decide
theorem rows5706 : actualRows5706=WordField.canonicalRows actualModulus 5706 (.band 5700 5705) := by core033_kernel_decide
theorem stats5706 : actualRows5706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5706=5124 := by core033_kernel_decide
theorem rows5707 : actualRows5707=WordField.canonicalRows actualModulus 5707 (.bxor 5696 5706) := by core033_kernel_decide
theorem stats5707 : actualRows5707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5707=7428 := by core033_kernel_decide
theorem rows5708 : actualRows5708=WordField.canonicalRows actualModulus 5708 (.shr 5707 31) := by core033_kernel_decide
theorem stats5708 : actualRows5708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5708=2892 := by core033_kernel_decide
theorem rows5709 : actualRows5709=WordField.canonicalRows actualModulus 5709 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5709 : actualRows5709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5709=2892 := by core033_kernel_decide
theorem rows5710 : actualRows5710=WordField.canonicalRows actualModulus 5710 (.bxor 5708 5709) := by core033_kernel_decide
theorem stats5710 : actualRows5710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5710=7428 := by core033_kernel_decide
theorem rows5711 : actualRows5711=WordField.canonicalRows actualModulus 5711 (.shr 3175 8) := by core033_kernel_decide
theorem stats5711 : actualRows5711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5711=4548 := by core033_kernel_decide
theorem rows5712 : actualRows5712=WordField.canonicalRows actualModulus 5712 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5712 : actualRows5712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5712=2820 := by core033_kernel_decide
theorem rows5713 : actualRows5713=WordField.canonicalRows actualModulus 5713 (.bnot 5712) := by core033_kernel_decide
theorem stats5713 : actualRows5713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5713=6276 := by core033_kernel_decide
theorem rows5714 : actualRows5714=WordField.canonicalRows actualModulus 5714 (.band 5711 5713) := by core033_kernel_decide
theorem stats5714 : actualRows5714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5714=5124 := by core033_kernel_decide
theorem rows5715 : actualRows5715=WordField.canonicalRows actualModulus 5715 (.shr 3175 8) := by core033_kernel_decide
theorem stats5715 : actualRows5715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5715=4548 := by core033_kernel_decide
theorem rows5716 : actualRows5716=WordField.canonicalRows actualModulus 5716 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5716 : actualRows5716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5716=2820 := by core033_kernel_decide
theorem rows5717 : actualRows5717=WordField.canonicalRows actualModulus 5717 (.bnot 5716) := by core033_kernel_decide
theorem stats5717 : actualRows5717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5717=6276 := by core033_kernel_decide
theorem rows5718 : actualRows5718=WordField.canonicalRows actualModulus 5718 (.bxor 5715 5717) := by core033_kernel_decide
theorem stats5718 : actualRows5718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5718=7428 := by core033_kernel_decide
theorem rows5719 : actualRows5719=WordField.canonicalRows actualModulus 5719 (.shr 3175 8) := by core033_kernel_decide
theorem stats5719 : actualRows5719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5719=4548 := by core033_kernel_decide
theorem rows5720 : actualRows5720=WordField.canonicalRows actualModulus 5720 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5720 : actualRows5720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5720=2820 := by core033_kernel_decide
theorem rows5721 : actualRows5721=WordField.canonicalRows actualModulus 5721 (.bnot 5720) := by core033_kernel_decide
theorem stats5721 : actualRows5721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5721=6276 := by core033_kernel_decide
theorem rows5722 : actualRows5722=WordField.canonicalRows actualModulus 5722 (.badd 5719 5721) := by core033_kernel_decide
theorem stats5722 : actualRows5722.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5722=5388 := by core033_kernel_decide
theorem rows5723 : actualRows5723=WordField.canonicalRows actualModulus 5723 (.bnot 5722) := by core033_kernel_decide
theorem stats5723 : actualRows5723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5723=6276 := by core033_kernel_decide
theorem rows5724 : actualRows5724=WordField.canonicalRows actualModulus 5724 (.band 5718 5723) := by core033_kernel_decide
theorem stats5724 : actualRows5724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5724=5124 := by core033_kernel_decide
theorem rows5725 : actualRows5725=WordField.canonicalRows actualModulus 5725 (.bxor 5714 5724) := by core033_kernel_decide
theorem stats5725 : actualRows5725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5725=7428 := by core033_kernel_decide
theorem rows5726 : actualRows5726=WordField.canonicalRows actualModulus 5726 (.shr 5725 31) := by core033_kernel_decide
theorem stats5726 : actualRows5726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5726=2892 := by core033_kernel_decide
theorem rows5727 : actualRows5727=WordField.canonicalRows actualModulus 5727 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5727 : actualRows5727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5727=2892 := by core033_kernel_decide
theorem rows5728 : actualRows5728=WordField.canonicalRows actualModulus 5728 (.bxor 5726 5727) := by core033_kernel_decide
theorem stats5728 : actualRows5728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5728=7428 := by core033_kernel_decide
theorem rows5729 : actualRows5729=WordField.canonicalRows actualModulus 5729 (.shr 3227 8) := by core033_kernel_decide
theorem stats5729 : actualRows5729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5729=4548 := by core033_kernel_decide
theorem rows5730 : actualRows5730=WordField.canonicalRows actualModulus 5730 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5730 : actualRows5730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5730=2820 := by core033_kernel_decide
theorem rows5731 : actualRows5731=WordField.canonicalRows actualModulus 5731 (.bnot 5730) := by core033_kernel_decide
theorem stats5731 : actualRows5731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5731=6276 := by core033_kernel_decide
theorem rows5732 : actualRows5732=WordField.canonicalRows actualModulus 5732 (.band 5729 5731) := by core033_kernel_decide
theorem stats5732 : actualRows5732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5732=5124 := by core033_kernel_decide
theorem rows5733 : actualRows5733=WordField.canonicalRows actualModulus 5733 (.shr 3227 8) := by core033_kernel_decide
theorem stats5733 : actualRows5733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5733=4548 := by core033_kernel_decide
theorem rows5734 : actualRows5734=WordField.canonicalRows actualModulus 5734 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5734 : actualRows5734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5734=2820 := by core033_kernel_decide
theorem rows5735 : actualRows5735=WordField.canonicalRows actualModulus 5735 (.bnot 5734) := by core033_kernel_decide
theorem stats5735 : actualRows5735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5735=6276 := by core033_kernel_decide
theorem rows5736 : actualRows5736=WordField.canonicalRows actualModulus 5736 (.bxor 5733 5735) := by core033_kernel_decide
theorem stats5736 : actualRows5736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5736=7428 := by core033_kernel_decide
theorem rows5737 : actualRows5737=WordField.canonicalRows actualModulus 5737 (.shr 3227 8) := by core033_kernel_decide
theorem stats5737 : actualRows5737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5737=4548 := by core033_kernel_decide
theorem rows5738 : actualRows5738=WordField.canonicalRows actualModulus 5738 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5738 : actualRows5738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5738=2820 := by core033_kernel_decide
def partRows88 : List R1CS.Row := actualRows5675++actualRows5676++actualRows5677++actualRows5678++actualRows5679++actualRows5680++actualRows5681++actualRows5682++actualRows5683++actualRows5684++actualRows5685++actualRows5686++actualRows5687++actualRows5688++actualRows5689++actualRows5690++actualRows5691++actualRows5692++actualRows5693++actualRows5694++actualRows5695++actualRows5696++actualRows5697++actualRows5698++actualRows5699++actualRows5700++actualRows5701++actualRows5702++actualRows5703++actualRows5704++actualRows5705++actualRows5706++actualRows5707++actualRows5708++actualRows5709++actualRows5710++actualRows5711++actualRows5712++actualRows5713++actualRows5714++actualRows5715++actualRows5716++actualRows5717++actualRows5718++actualRows5719++actualRows5720++actualRows5721++actualRows5722++actualRows5723++actualRows5724++actualRows5725++actualRows5726++actualRows5727++actualRows5728++actualRows5729++actualRows5730++actualRows5731++actualRows5732++actualRows5733++actualRows5734++actualRows5735++actualRows5736++actualRows5737++actualRows5738
def partOps88 : List WordIR.Op := [.shr 3071 8,.literal (BitVec.ofNat 32 0),.bnot 5676,.band 5675 5677,.shr 3071 8,.literal (BitVec.ofNat 32 0),.bnot 5680,.bxor 5679 5681,.shr 3071 8,.literal (BitVec.ofNat 32 0),.bnot 5684,.badd 5683 5685,.bnot 5686,.band 5682 5687,.bxor 5678 5688,.shr 5689 31,.literal (BitVec.ofNat 32 1),.bxor 5690 5691,.shr 3123 8,.literal (BitVec.ofNat 32 0),.bnot 5694,.band 5693 5695,.shr 3123 8,.literal (BitVec.ofNat 32 0),.bnot 5698,.bxor 5697 5699,.shr 3123 8,.literal (BitVec.ofNat 32 0),.bnot 5702,.badd 5701 5703,.bnot 5704,.band 5700 5705,.bxor 5696 5706,.shr 5707 31,.literal (BitVec.ofNat 32 1),.bxor 5708 5709,.shr 3175 8,.literal (BitVec.ofNat 32 0),.bnot 5712,.band 5711 5713,.shr 3175 8,.literal (BitVec.ofNat 32 0),.bnot 5716,.bxor 5715 5717,.shr 3175 8,.literal (BitVec.ofNat 32 0),.bnot 5720,.badd 5719 5721,.bnot 5722,.band 5718 5723,.bxor 5714 5724,.shr 5725 31,.literal (BitVec.ofNat 32 1),.bxor 5726 5727,.shr 3227 8,.literal (BitVec.ofNat 32 0),.bnot 5730,.band 5729 5731,.shr 3227 8,.literal (BitVec.ofNat 32 0),.bnot 5734,.bxor 5733 5735,.shr 3227 8,.literal (BitVec.ofNat 32 0)]
theorem partExact88 : partRows88=WordField.rows actualModulus 5675 partOps88 := by
  simp only [partRows88,partOps88,WordField.rows,rows5675,rows5676,rows5677,rows5678,rows5679,rows5680,rows5681,rows5682,rows5683,rows5684,rows5685,rows5686,rows5687,rows5688,rows5689,rows5690,rows5691,rows5692,rows5693,rows5694,rows5695,rows5696,rows5697,rows5698,rows5699,rows5700,rows5701,rows5702,rows5703,rows5704,rows5705,rows5706,rows5707,rows5708,rows5709,rows5710,rows5711,rows5712,rows5713,rows5714,rows5715,rows5716,rows5717,rows5718,rows5719,rows5720,rows5721,rows5722,rows5723,rows5724,rows5725,rows5726,rows5727,rows5728,rows5729,rows5730,rows5731,rows5732,rows5733,rows5734,rows5735,rows5736,rows5737,rows5738,List.append_assoc,List.append_nil]
theorem partLength88 : partOps88.length=64 := by decide
theorem partStats88 : partRows88.length=2179 ∧ MatrixRowBlocks.rowsWeight partRows88=319944 := by
  simp only [partRows88,List.length_append,MatrixRowBlocks.rows_weight_append,stats5675.1,stats5675.2,stats5676.1,stats5676.2,stats5677.1,stats5677.2,stats5678.1,stats5678.2,stats5679.1,stats5679.2,stats5680.1,stats5680.2,stats5681.1,stats5681.2,stats5682.1,stats5682.2,stats5683.1,stats5683.2,stats5684.1,stats5684.2,stats5685.1,stats5685.2,stats5686.1,stats5686.2,stats5687.1,stats5687.2,stats5688.1,stats5688.2,stats5689.1,stats5689.2,stats5690.1,stats5690.2,stats5691.1,stats5691.2,stats5692.1,stats5692.2,stats5693.1,stats5693.2,stats5694.1,stats5694.2,stats5695.1,stats5695.2,stats5696.1,stats5696.2,stats5697.1,stats5697.2,stats5698.1,stats5698.2,stats5699.1,stats5699.2,stats5700.1,stats5700.2,stats5701.1,stats5701.2,stats5702.1,stats5702.2,stats5703.1,stats5703.2,stats5704.1,stats5704.2,stats5705.1,stats5705.2,stats5706.1,stats5706.2,stats5707.1,stats5707.2,stats5708.1,stats5708.2,stats5709.1,stats5709.2,stats5710.1,stats5710.2,stats5711.1,stats5711.2,stats5712.1,stats5712.2,stats5713.1,stats5713.2,stats5714.1,stats5714.2,stats5715.1,stats5715.2,stats5716.1,stats5716.2,stats5717.1,stats5717.2,stats5718.1,stats5718.2,stats5719.1,stats5719.2,stats5720.1,stats5720.2,stats5721.1,stats5721.2,stats5722.1,stats5722.2,stats5723.1,stats5723.2,stats5724.1,stats5724.2,stats5725.1,stats5725.2,stats5726.1,stats5726.2,stats5727.1,stats5727.2,stats5728.1,stats5728.2,stats5729.1,stats5729.2,stats5730.1,stats5730.2,stats5731.1,stats5731.2,stats5732.1,stats5732.2,stats5733.1,stats5733.2,stats5734.1,stats5734.2,stats5735.1,stats5735.2,stats5736.1,stats5736.2,stats5737.1,stats5737.2,stats5738.1,stats5738.2]
  decide
end FrameHashControllerCheckedRows
