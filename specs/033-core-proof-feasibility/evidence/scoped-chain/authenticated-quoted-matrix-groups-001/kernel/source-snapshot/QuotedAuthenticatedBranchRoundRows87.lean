import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData88
import AuthenticatedBranchRoundInstructionMatrixData89
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows5686 : actualRows5686=WordField.canonicalRows actualModulus 5686 (.bxor 1299 5685) := by core033_kernel_decide
theorem stats5686 : actualRows5686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5686=7428 := by core033_kernel_decide
theorem rows5687 : actualRows5687=WordField.canonicalRows actualModulus 5687 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5687 : actualRows5687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5687=2820 := by core033_kernel_decide
theorem rows5688 : actualRows5688=WordField.canonicalRows actualModulus 5688 (.bnot 5687) := by core033_kernel_decide
theorem stats5688 : actualRows5688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5688=6276 := by core033_kernel_decide
theorem rows5689 : actualRows5689=WordField.canonicalRows actualModulus 5689 (.badd 5686 5688) := by core033_kernel_decide
theorem stats5689 : actualRows5689.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5689=5388 := by core033_kernel_decide
theorem rows5690 : actualRows5690=WordField.canonicalRows actualModulus 5690 (.bnot 5689) := by core033_kernel_decide
theorem stats5690 : actualRows5690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5690=6276 := by core033_kernel_decide
theorem rows5691 : actualRows5691=WordField.canonicalRows actualModulus 5691 (.band 5684 5690) := by core033_kernel_decide
theorem stats5691 : actualRows5691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5691=5124 := by core033_kernel_decide
theorem rows5692 : actualRows5692=WordField.canonicalRows actualModulus 5692 (.bxor 5679 5691) := by core033_kernel_decide
theorem stats5692 : actualRows5692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5692=7428 := by core033_kernel_decide
theorem rows5693 : actualRows5693=WordField.canonicalRows actualModulus 5693 (.shr 5692 31) := by core033_kernel_decide
theorem stats5693 : actualRows5693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5693=2892 := by core033_kernel_decide
theorem rows5694 : actualRows5694=WordField.canonicalRows actualModulus 5694 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5694 : actualRows5694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5694=2892 := by core033_kernel_decide
theorem rows5695 : actualRows5695=WordField.canonicalRows actualModulus 5695 (.bxor 5693 5694) := by core033_kernel_decide
theorem stats5695 : actualRows5695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5695=7428 := by core033_kernel_decide
theorem rows5696 : actualRows5696=WordField.canonicalRows actualModulus 5696 (.bnot 5695) := by core033_kernel_decide
theorem stats5696 : actualRows5696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5696=6276 := by core033_kernel_decide
theorem rows5697 : actualRows5697=WordField.canonicalRows actualModulus 5697 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5697 : actualRows5697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5697=2892 := by core033_kernel_decide
theorem rows5698 : actualRows5698=WordField.canonicalRows actualModulus 5698 (.badd 5696 5697) := by core033_kernel_decide
theorem stats5698 : actualRows5698.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5698=5388 := by core033_kernel_decide
theorem rows5699 : actualRows5699=WordField.canonicalRows actualModulus 5699 (.band 5698 2819) := by core033_kernel_decide
theorem stats5699 : actualRows5699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5699=5124 := by core033_kernel_decide
theorem rows5700 : actualRows5700=WordField.canonicalRows actualModulus 5700 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5700 : actualRows5700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5700=2892 := by core033_kernel_decide
theorem rows5701 : actualRows5701=WordField.canonicalRows actualModulus 5701 (.bxor 1299 5700) := by core033_kernel_decide
theorem stats5701 : actualRows5701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5701=7428 := by core033_kernel_decide
theorem rows5702 : actualRows5702=WordField.canonicalRows actualModulus 5702 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5702 : actualRows5702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5702=2820 := by core033_kernel_decide
theorem rows5703 : actualRows5703=WordField.canonicalRows actualModulus 5703 (.bnot 5702) := by core033_kernel_decide
theorem stats5703 : actualRows5703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5703=6276 := by core033_kernel_decide
theorem rows5704 : actualRows5704=WordField.canonicalRows actualModulus 5704 (.band 5701 5703) := by core033_kernel_decide
theorem stats5704 : actualRows5704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5704=5124 := by core033_kernel_decide
theorem rows5705 : actualRows5705=WordField.canonicalRows actualModulus 5705 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5705 : actualRows5705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5705=2892 := by core033_kernel_decide
theorem rows5706 : actualRows5706=WordField.canonicalRows actualModulus 5706 (.bxor 1299 5705) := by core033_kernel_decide
theorem stats5706 : actualRows5706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5706=7428 := by core033_kernel_decide
theorem rows5707 : actualRows5707=WordField.canonicalRows actualModulus 5707 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5707 : actualRows5707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5707=2820 := by core033_kernel_decide
theorem rows5708 : actualRows5708=WordField.canonicalRows actualModulus 5708 (.bnot 5707) := by core033_kernel_decide
theorem stats5708 : actualRows5708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5708=6276 := by core033_kernel_decide
theorem rows5709 : actualRows5709=WordField.canonicalRows actualModulus 5709 (.bxor 5706 5708) := by core033_kernel_decide
theorem stats5709 : actualRows5709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5709=7428 := by core033_kernel_decide
theorem rows5710 : actualRows5710=WordField.canonicalRows actualModulus 5710 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5710 : actualRows5710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5710=2892 := by core033_kernel_decide
theorem rows5711 : actualRows5711=WordField.canonicalRows actualModulus 5711 (.bxor 1299 5710) := by core033_kernel_decide
theorem stats5711 : actualRows5711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5711=7428 := by core033_kernel_decide
theorem rows5712 : actualRows5712=WordField.canonicalRows actualModulus 5712 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5712 : actualRows5712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5712=2820 := by core033_kernel_decide
theorem rows5713 : actualRows5713=WordField.canonicalRows actualModulus 5713 (.bnot 5712) := by core033_kernel_decide
theorem stats5713 : actualRows5713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5713=6276 := by core033_kernel_decide
theorem rows5714 : actualRows5714=WordField.canonicalRows actualModulus 5714 (.badd 5711 5713) := by core033_kernel_decide
theorem stats5714 : actualRows5714.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5714=5388 := by core033_kernel_decide
theorem rows5715 : actualRows5715=WordField.canonicalRows actualModulus 5715 (.bnot 5714) := by core033_kernel_decide
theorem stats5715 : actualRows5715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5715=6276 := by core033_kernel_decide
theorem rows5716 : actualRows5716=WordField.canonicalRows actualModulus 5716 (.band 5709 5715) := by core033_kernel_decide
theorem stats5716 : actualRows5716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5716=5124 := by core033_kernel_decide
theorem rows5717 : actualRows5717=WordField.canonicalRows actualModulus 5717 (.bxor 5704 5716) := by core033_kernel_decide
theorem stats5717 : actualRows5717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5717=7428 := by core033_kernel_decide
theorem rows5718 : actualRows5718=WordField.canonicalRows actualModulus 5718 (.shr 5717 31) := by core033_kernel_decide
theorem stats5718 : actualRows5718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5718=2892 := by core033_kernel_decide
theorem rows5719 : actualRows5719=WordField.canonicalRows actualModulus 5719 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5719 : actualRows5719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5719=2892 := by core033_kernel_decide
theorem rows5720 : actualRows5720=WordField.canonicalRows actualModulus 5720 (.bxor 5718 5719) := by core033_kernel_decide
theorem stats5720 : actualRows5720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5720=7428 := by core033_kernel_decide
theorem rows5721 : actualRows5721=WordField.canonicalRows actualModulus 5721 (.bnot 5720) := by core033_kernel_decide
theorem stats5721 : actualRows5721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5721=6276 := by core033_kernel_decide
theorem rows5722 : actualRows5722=WordField.canonicalRows actualModulus 5722 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5722 : actualRows5722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5722=2892 := by core033_kernel_decide
theorem rows5723 : actualRows5723=WordField.canonicalRows actualModulus 5723 (.badd 5721 5722) := by core033_kernel_decide
theorem stats5723 : actualRows5723.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5723=5388 := by core033_kernel_decide
theorem rows5724 : actualRows5724=WordField.canonicalRows actualModulus 5724 (.bnot 5723) := by core033_kernel_decide
theorem stats5724 : actualRows5724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5724=6276 := by core033_kernel_decide
theorem rows5725 : actualRows5725=WordField.canonicalRows actualModulus 5725 (.band 5724 2627) := by core033_kernel_decide
theorem stats5725 : actualRows5725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5725=5124 := by core033_kernel_decide
theorem rows5726 : actualRows5726=WordField.canonicalRows actualModulus 5726 (.bxor 5699 5725) := by core033_kernel_decide
theorem stats5726 : actualRows5726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5726=7428 := by core033_kernel_decide
theorem rows5727 : actualRows5727=WordField.canonicalRows actualModulus 5727 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5727 : actualRows5727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5727=2892 := by core033_kernel_decide
theorem rows5728 : actualRows5728=WordField.canonicalRows actualModulus 5728 (.bxor 1299 5727) := by core033_kernel_decide
theorem stats5728 : actualRows5728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5728=7428 := by core033_kernel_decide
theorem rows5729 : actualRows5729=WordField.canonicalRows actualModulus 5729 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5729 : actualRows5729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5729=2820 := by core033_kernel_decide
theorem rows5730 : actualRows5730=WordField.canonicalRows actualModulus 5730 (.bnot 5729) := by core033_kernel_decide
theorem stats5730 : actualRows5730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5730=6276 := by core033_kernel_decide
theorem rows5731 : actualRows5731=WordField.canonicalRows actualModulus 5731 (.band 5728 5730) := by core033_kernel_decide
theorem stats5731 : actualRows5731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5731=5124 := by core033_kernel_decide
theorem rows5732 : actualRows5732=WordField.canonicalRows actualModulus 5732 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5732 : actualRows5732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5732=2892 := by core033_kernel_decide
theorem rows5733 : actualRows5733=WordField.canonicalRows actualModulus 5733 (.bxor 1299 5732) := by core033_kernel_decide
theorem stats5733 : actualRows5733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5733=7428 := by core033_kernel_decide
theorem rows5734 : actualRows5734=WordField.canonicalRows actualModulus 5734 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5734 : actualRows5734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5734=2820 := by core033_kernel_decide
theorem rows5735 : actualRows5735=WordField.canonicalRows actualModulus 5735 (.bnot 5734) := by core033_kernel_decide
theorem stats5735 : actualRows5735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5735=6276 := by core033_kernel_decide
theorem rows5736 : actualRows5736=WordField.canonicalRows actualModulus 5736 (.bxor 5733 5735) := by core033_kernel_decide
theorem stats5736 : actualRows5736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5736=7428 := by core033_kernel_decide
theorem rows5737 : actualRows5737=WordField.canonicalRows actualModulus 5737 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats5737 : actualRows5737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5737=2892 := by core033_kernel_decide
theorem rows5738 : actualRows5738=WordField.canonicalRows actualModulus 5738 (.bxor 1299 5737) := by core033_kernel_decide
theorem stats5738 : actualRows5738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5738=7428 := by core033_kernel_decide
theorem rows5739 : actualRows5739=WordField.canonicalRows actualModulus 5739 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats5739 : actualRows5739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5739=2820 := by core033_kernel_decide
theorem rows5740 : actualRows5740=WordField.canonicalRows actualModulus 5740 (.bnot 5739) := by core033_kernel_decide
theorem stats5740 : actualRows5740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5740=6276 := by core033_kernel_decide
theorem rows5741 : actualRows5741=WordField.canonicalRows actualModulus 5741 (.badd 5738 5740) := by core033_kernel_decide
theorem stats5741 : actualRows5741.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows5741=5388 := by core033_kernel_decide
theorem rows5742 : actualRows5742=WordField.canonicalRows actualModulus 5742 (.bnot 5741) := by core033_kernel_decide
theorem stats5742 : actualRows5742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5742=6276 := by core033_kernel_decide
theorem rows5743 : actualRows5743=WordField.canonicalRows actualModulus 5743 (.band 5736 5742) := by core033_kernel_decide
theorem stats5743 : actualRows5743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5743=5124 := by core033_kernel_decide
theorem rows5744 : actualRows5744=WordField.canonicalRows actualModulus 5744 (.bxor 5731 5743) := by core033_kernel_decide
theorem stats5744 : actualRows5744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5744=7428 := by core033_kernel_decide
theorem rows5745 : actualRows5745=WordField.canonicalRows actualModulus 5745 (.shr 5744 31) := by core033_kernel_decide
theorem stats5745 : actualRows5745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5745=2892 := by core033_kernel_decide
theorem rows5746 : actualRows5746=WordField.canonicalRows actualModulus 5746 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5746 : actualRows5746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5746=2892 := by core033_kernel_decide
theorem rows5747 : actualRows5747=WordField.canonicalRows actualModulus 5747 (.bxor 5745 5746) := by core033_kernel_decide
theorem stats5747 : actualRows5747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5747=7428 := by core033_kernel_decide
theorem rows5748 : actualRows5748=WordField.canonicalRows actualModulus 5748 (.bnot 5747) := by core033_kernel_decide
theorem stats5748 : actualRows5748.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5748=6276 := by core033_kernel_decide
theorem rows5749 : actualRows5749=WordField.canonicalRows actualModulus 5749 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats5749 : actualRows5749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows5749=2892 := by core033_kernel_decide
def partRows87 : List R1CS.Row := actualRows5686++actualRows5687++actualRows5688++actualRows5689++actualRows5690++actualRows5691++actualRows5692++actualRows5693++actualRows5694++actualRows5695++actualRows5696++actualRows5697++actualRows5698++actualRows5699++actualRows5700++actualRows5701++actualRows5702++actualRows5703++actualRows5704++actualRows5705++actualRows5706++actualRows5707++actualRows5708++actualRows5709++actualRows5710++actualRows5711++actualRows5712++actualRows5713++actualRows5714++actualRows5715++actualRows5716++actualRows5717++actualRows5718++actualRows5719++actualRows5720++actualRows5721++actualRows5722++actualRows5723++actualRows5724++actualRows5725++actualRows5726++actualRows5727++actualRows5728++actualRows5729++actualRows5730++actualRows5731++actualRows5732++actualRows5733++actualRows5734++actualRows5735++actualRows5736++actualRows5737++actualRows5738++actualRows5739++actualRows5740++actualRows5741++actualRows5742++actualRows5743++actualRows5744++actualRows5745++actualRows5746++actualRows5747++actualRows5748++actualRows5749
def partOps87 : List WordIR.Op := [.bxor 1299 5685,.literal (BitVec.ofNat 32 0),.bnot 5687,.badd 5686 5688,.bnot 5689,.band 5684 5690,.bxor 5679 5691,.shr 5692 31,.literal (BitVec.ofNat 32 1),.bxor 5693 5694,.bnot 5695,.literal (BitVec.ofNat 32 1),.badd 5696 5697,.band 5698 2819,.literal (BitVec.ofNat 32 2),.bxor 1299 5700,.literal (BitVec.ofNat 32 0),.bnot 5702,.band 5701 5703,.literal (BitVec.ofNat 32 2),.bxor 1299 5705,.literal (BitVec.ofNat 32 0),.bnot 5707,.bxor 5706 5708,.literal (BitVec.ofNat 32 2),.bxor 1299 5710,.literal (BitVec.ofNat 32 0),.bnot 5712,.badd 5711 5713,.bnot 5714,.band 5709 5715,.bxor 5704 5716,.shr 5717 31,.literal (BitVec.ofNat 32 1),.bxor 5718 5719,.bnot 5720,.literal (BitVec.ofNat 32 1),.badd 5721 5722,.bnot 5723,.band 5724 2627,.bxor 5699 5725,.literal (BitVec.ofNat 32 2),.bxor 1299 5727,.literal (BitVec.ofNat 32 0),.bnot 5729,.band 5728 5730,.literal (BitVec.ofNat 32 2),.bxor 1299 5732,.literal (BitVec.ofNat 32 0),.bnot 5734,.bxor 5733 5735,.literal (BitVec.ofNat 32 2),.bxor 1299 5737,.literal (BitVec.ofNat 32 0),.bnot 5739,.badd 5738 5740,.bnot 5741,.band 5736 5742,.bxor 5731 5743,.shr 5744 31,.literal (BitVec.ofNat 32 1),.bxor 5745 5746,.bnot 5747,.literal (BitVec.ofNat 32 1)]
theorem partExact87 : partRows87=WordField.rows actualModulus 5686 partOps87 := by
  simp only [partRows87,partOps87,WordField.rows,rows5686,rows5687,rows5688,rows5689,rows5690,rows5691,rows5692,rows5693,rows5694,rows5695,rows5696,rows5697,rows5698,rows5699,rows5700,rows5701,rows5702,rows5703,rows5704,rows5705,rows5706,rows5707,rows5708,rows5709,rows5710,rows5711,rows5712,rows5713,rows5714,rows5715,rows5716,rows5717,rows5718,rows5719,rows5720,rows5721,rows5722,rows5723,rows5724,rows5725,rows5726,rows5727,rows5728,rows5729,rows5730,rows5731,rows5732,rows5733,rows5734,rows5735,rows5736,rows5737,rows5738,rows5739,rows5740,rows5741,rows5742,rows5743,rows5744,rows5745,rows5746,rows5747,rows5748,rows5749,List.append_assoc,List.append_nil]
theorem partLength87 : partOps87.length=64 := by decide
theorem partStats87 : partRows87.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows87=332640 := by
  simp only [partRows87,List.length_append,MatrixRowBlocks.rows_weight_append,stats5686.1,stats5686.2,stats5687.1,stats5687.2,stats5688.1,stats5688.2,stats5689.1,stats5689.2,stats5690.1,stats5690.2,stats5691.1,stats5691.2,stats5692.1,stats5692.2,stats5693.1,stats5693.2,stats5694.1,stats5694.2,stats5695.1,stats5695.2,stats5696.1,stats5696.2,stats5697.1,stats5697.2,stats5698.1,stats5698.2,stats5699.1,stats5699.2,stats5700.1,stats5700.2,stats5701.1,stats5701.2,stats5702.1,stats5702.2,stats5703.1,stats5703.2,stats5704.1,stats5704.2,stats5705.1,stats5705.2,stats5706.1,stats5706.2,stats5707.1,stats5707.2,stats5708.1,stats5708.2,stats5709.1,stats5709.2,stats5710.1,stats5710.2,stats5711.1,stats5711.2,stats5712.1,stats5712.2,stats5713.1,stats5713.2,stats5714.1,stats5714.2,stats5715.1,stats5715.2,stats5716.1,stats5716.2,stats5717.1,stats5717.2,stats5718.1,stats5718.2,stats5719.1,stats5719.2,stats5720.1,stats5720.2,stats5721.1,stats5721.2,stats5722.1,stats5722.2,stats5723.1,stats5723.2,stats5724.1,stats5724.2,stats5725.1,stats5725.2,stats5726.1,stats5726.2,stats5727.1,stats5727.2,stats5728.1,stats5728.2,stats5729.1,stats5729.2,stats5730.1,stats5730.2,stats5731.1,stats5731.2,stats5732.1,stats5732.2,stats5733.1,stats5733.2,stats5734.1,stats5734.2,stats5735.1,stats5735.2,stats5736.1,stats5736.2,stats5737.1,stats5737.2,stats5738.1,stats5738.2,stats5739.1,stats5739.2,stats5740.1,stats5740.2,stats5741.1,stats5741.2,stats5742.1,stats5742.2,stats5743.1,stats5743.2,stats5744.1,stats5744.2,stats5745.1,stats5745.2,stats5746.1,stats5746.2,stats5747.1,stats5747.2,stats5748.1,stats5748.2,stats5749.1,stats5749.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
