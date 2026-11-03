import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData135
import PairedPathRoundInstructionMatrixData136
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8672 : actualRows8672=WordField.canonicalRows actualModulus 8672 (.badd 8585 8671) := by core033_kernel_decide
theorem stats8672 : actualRows8672.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8672=5388 := by core033_kernel_decide
theorem rows8673 : actualRows8673=WordField.canonicalRows actualModulus 8673 (.band 8666 8639) := by core033_kernel_decide
theorem stats8673 : actualRows8673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8673=5124 := by core033_kernel_decide
theorem rows8674 : actualRows8674=WordField.canonicalRows actualModulus 8674 (.bnot 8666) := by core033_kernel_decide
theorem stats8674 : actualRows8674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8674=6276 := by core033_kernel_decide
theorem rows8675 : actualRows8675=WordField.canonicalRows actualModulus 8675 (.band 8674 8612) := by core033_kernel_decide
theorem stats8675 : actualRows8675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8675=5124 := by core033_kernel_decide
theorem rows8676 : actualRows8676=WordField.canonicalRows actualModulus 8676 (.bxor 8673 8675) := by core033_kernel_decide
theorem stats8676 : actualRows8676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8676=7428 := by core033_kernel_decide
theorem rows8677 : actualRows8677=WordField.canonicalRows actualModulus 8677 (.badd 8672 8676) := by core033_kernel_decide
theorem stats8677 : actualRows8677.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8677=5388 := by core033_kernel_decide
theorem rows8678 : actualRows8678=WordField.canonicalRows actualModulus 8678 (.literal (BitVec.ofNat 32 1555081692)) := by core033_kernel_decide
theorem stats8678 : actualRows8678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8678=3972 := by core033_kernel_decide
theorem rows8679 : actualRows8679=WordField.canonicalRows actualModulus 8679 (.badd 8677 8678) := by core033_kernel_decide
theorem stats8679 : actualRows8679.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8679=5388 := by core033_kernel_decide
theorem rows8680 : actualRows8680=WordField.canonicalRows actualModulus 8680 (.badd 8679 7539) := by core033_kernel_decide
theorem stats8680 : actualRows8680.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8680=5388 := by core033_kernel_decide
theorem rows8681 : actualRows8681=WordField.canonicalRows actualModulus 8681 (.rotr 8665 2) := by core033_kernel_decide
theorem stats8681 : actualRows8681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8681=5124 := by core033_kernel_decide
theorem rows8682 : actualRows8682=WordField.canonicalRows actualModulus 8682 (.rotr 8665 13) := by core033_kernel_decide
theorem stats8682 : actualRows8682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8682=5124 := by core033_kernel_decide
theorem rows8683 : actualRows8683=WordField.canonicalRows actualModulus 8683 (.bxor 8681 8682) := by core033_kernel_decide
theorem stats8683 : actualRows8683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8683=7428 := by core033_kernel_decide
theorem rows8684 : actualRows8684=WordField.canonicalRows actualModulus 8684 (.rotr 8665 22) := by core033_kernel_decide
theorem stats8684 : actualRows8684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8684=5124 := by core033_kernel_decide
theorem rows8685 : actualRows8685=WordField.canonicalRows actualModulus 8685 (.bxor 8683 8684) := by core033_kernel_decide
theorem stats8685 : actualRows8685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8685=7428 := by core033_kernel_decide
theorem rows8686 : actualRows8686=WordField.canonicalRows actualModulus 8686 (.band 8665 8638) := by core033_kernel_decide
theorem stats8686 : actualRows8686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8686=5124 := by core033_kernel_decide
theorem rows8687 : actualRows8687=WordField.canonicalRows actualModulus 8687 (.band 8665 8611) := by core033_kernel_decide
theorem stats8687 : actualRows8687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8687=5124 := by core033_kernel_decide
theorem rows8688 : actualRows8688=WordField.canonicalRows actualModulus 8688 (.bxor 8686 8687) := by core033_kernel_decide
theorem stats8688 : actualRows8688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8688=7428 := by core033_kernel_decide
theorem rows8689 : actualRows8689=WordField.canonicalRows actualModulus 8689 (.band 8638 8611) := by core033_kernel_decide
theorem stats8689 : actualRows8689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8689=5124 := by core033_kernel_decide
theorem rows8690 : actualRows8690=WordField.canonicalRows actualModulus 8690 (.bxor 8688 8689) := by core033_kernel_decide
theorem stats8690 : actualRows8690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8690=7428 := by core033_kernel_decide
theorem rows8691 : actualRows8691=WordField.canonicalRows actualModulus 8691 (.badd 8685 8690) := by core033_kernel_decide
theorem stats8691 : actualRows8691.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8691=5388 := by core033_kernel_decide
theorem rows8692 : actualRows8692=WordField.canonicalRows actualModulus 8692 (.badd 8680 8691) := by core033_kernel_decide
theorem stats8692 : actualRows8692.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8692=5388 := by core033_kernel_decide
theorem rows8693 : actualRows8693=WordField.canonicalRows actualModulus 8693 (.badd 8584 8680) := by core033_kernel_decide
theorem stats8693 : actualRows8693.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8693=5388 := by core033_kernel_decide
theorem rows8694 : actualRows8694=WordField.canonicalRows actualModulus 8694 (.rotr 8693 6) := by core033_kernel_decide
theorem stats8694 : actualRows8694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8694=5124 := by core033_kernel_decide
theorem rows8695 : actualRows8695=WordField.canonicalRows actualModulus 8695 (.rotr 8693 11) := by core033_kernel_decide
theorem stats8695 : actualRows8695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8695=5124 := by core033_kernel_decide
theorem rows8696 : actualRows8696=WordField.canonicalRows actualModulus 8696 (.bxor 8694 8695) := by core033_kernel_decide
theorem stats8696 : actualRows8696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8696=7428 := by core033_kernel_decide
theorem rows8697 : actualRows8697=WordField.canonicalRows actualModulus 8697 (.rotr 8693 25) := by core033_kernel_decide
theorem stats8697 : actualRows8697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8697=5124 := by core033_kernel_decide
theorem rows8698 : actualRows8698=WordField.canonicalRows actualModulus 8698 (.bxor 8696 8697) := by core033_kernel_decide
theorem stats8698 : actualRows8698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8698=7428 := by core033_kernel_decide
theorem rows8699 : actualRows8699=WordField.canonicalRows actualModulus 8699 (.badd 8612 8698) := by core033_kernel_decide
theorem stats8699 : actualRows8699.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8699=5388 := by core033_kernel_decide
theorem rows8700 : actualRows8700=WordField.canonicalRows actualModulus 8700 (.band 8693 8666) := by core033_kernel_decide
theorem stats8700 : actualRows8700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8700=5124 := by core033_kernel_decide
theorem rows8701 : actualRows8701=WordField.canonicalRows actualModulus 8701 (.bnot 8693) := by core033_kernel_decide
theorem stats8701 : actualRows8701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8701=6276 := by core033_kernel_decide
theorem rows8702 : actualRows8702=WordField.canonicalRows actualModulus 8702 (.band 8701 8639) := by core033_kernel_decide
theorem stats8702 : actualRows8702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8702=5124 := by core033_kernel_decide
theorem rows8703 : actualRows8703=WordField.canonicalRows actualModulus 8703 (.bxor 8700 8702) := by core033_kernel_decide
theorem stats8703 : actualRows8703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8703=7428 := by core033_kernel_decide
theorem rows8704 : actualRows8704=WordField.canonicalRows actualModulus 8704 (.badd 8699 8703) := by core033_kernel_decide
theorem stats8704 : actualRows8704.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8704=5388 := by core033_kernel_decide
theorem rows8705 : actualRows8705=WordField.canonicalRows actualModulus 8705 (.literal (BitVec.ofNat 32 1996064986)) := by core033_kernel_decide
theorem stats8705 : actualRows8705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8705=4116 := by core033_kernel_decide
theorem rows8706 : actualRows8706=WordField.canonicalRows actualModulus 8706 (.badd 8704 8705) := by core033_kernel_decide
theorem stats8706 : actualRows8706.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8706=5388 := by core033_kernel_decide
theorem rows8707 : actualRows8707=WordField.canonicalRows actualModulus 8707 (.badd 8706 7552) := by core033_kernel_decide
theorem stats8707 : actualRows8707.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8707=5388 := by core033_kernel_decide
theorem rows8708 : actualRows8708=WordField.canonicalRows actualModulus 8708 (.rotr 8692 2) := by core033_kernel_decide
theorem stats8708 : actualRows8708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8708=5124 := by core033_kernel_decide
theorem rows8709 : actualRows8709=WordField.canonicalRows actualModulus 8709 (.rotr 8692 13) := by core033_kernel_decide
theorem stats8709 : actualRows8709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8709=5124 := by core033_kernel_decide
theorem rows8710 : actualRows8710=WordField.canonicalRows actualModulus 8710 (.bxor 8708 8709) := by core033_kernel_decide
theorem stats8710 : actualRows8710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8710=7428 := by core033_kernel_decide
theorem rows8711 : actualRows8711=WordField.canonicalRows actualModulus 8711 (.rotr 8692 22) := by core033_kernel_decide
theorem stats8711 : actualRows8711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8711=5124 := by core033_kernel_decide
theorem rows8712 : actualRows8712=WordField.canonicalRows actualModulus 8712 (.bxor 8710 8711) := by core033_kernel_decide
theorem stats8712 : actualRows8712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8712=7428 := by core033_kernel_decide
theorem rows8713 : actualRows8713=WordField.canonicalRows actualModulus 8713 (.band 8692 8665) := by core033_kernel_decide
theorem stats8713 : actualRows8713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8713=5124 := by core033_kernel_decide
theorem rows8714 : actualRows8714=WordField.canonicalRows actualModulus 8714 (.band 8692 8638) := by core033_kernel_decide
theorem stats8714 : actualRows8714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8714=5124 := by core033_kernel_decide
theorem rows8715 : actualRows8715=WordField.canonicalRows actualModulus 8715 (.bxor 8713 8714) := by core033_kernel_decide
theorem stats8715 : actualRows8715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8715=7428 := by core033_kernel_decide
theorem rows8716 : actualRows8716=WordField.canonicalRows actualModulus 8716 (.band 8665 8638) := by core033_kernel_decide
theorem stats8716 : actualRows8716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8716=5124 := by core033_kernel_decide
theorem rows8717 : actualRows8717=WordField.canonicalRows actualModulus 8717 (.bxor 8715 8716) := by core033_kernel_decide
theorem stats8717 : actualRows8717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8717=7428 := by core033_kernel_decide
theorem rows8718 : actualRows8718=WordField.canonicalRows actualModulus 8718 (.badd 8712 8717) := by core033_kernel_decide
theorem stats8718 : actualRows8718.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8718=5388 := by core033_kernel_decide
theorem rows8719 : actualRows8719=WordField.canonicalRows actualModulus 8719 (.badd 8707 8718) := by core033_kernel_decide
theorem stats8719 : actualRows8719.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8719=5388 := by core033_kernel_decide
theorem rows8720 : actualRows8720=WordField.canonicalRows actualModulus 8720 (.badd 8611 8707) := by core033_kernel_decide
theorem stats8720 : actualRows8720.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8720=5388 := by core033_kernel_decide
theorem rows8721 : actualRows8721=WordField.canonicalRows actualModulus 8721 (.rotr 8720 6) := by core033_kernel_decide
theorem stats8721 : actualRows8721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8721=5124 := by core033_kernel_decide
theorem rows8722 : actualRows8722=WordField.canonicalRows actualModulus 8722 (.rotr 8720 11) := by core033_kernel_decide
theorem stats8722 : actualRows8722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8722=5124 := by core033_kernel_decide
theorem rows8723 : actualRows8723=WordField.canonicalRows actualModulus 8723 (.bxor 8721 8722) := by core033_kernel_decide
theorem stats8723 : actualRows8723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8723=7428 := by core033_kernel_decide
theorem rows8724 : actualRows8724=WordField.canonicalRows actualModulus 8724 (.rotr 8720 25) := by core033_kernel_decide
theorem stats8724 : actualRows8724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8724=5124 := by core033_kernel_decide
theorem rows8725 : actualRows8725=WordField.canonicalRows actualModulus 8725 (.bxor 8723 8724) := by core033_kernel_decide
theorem stats8725 : actualRows8725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8725=7428 := by core033_kernel_decide
theorem rows8726 : actualRows8726=WordField.canonicalRows actualModulus 8726 (.badd 8639 8725) := by core033_kernel_decide
theorem stats8726 : actualRows8726.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8726=5388 := by core033_kernel_decide
theorem rows8727 : actualRows8727=WordField.canonicalRows actualModulus 8727 (.band 8720 8693) := by core033_kernel_decide
theorem stats8727 : actualRows8727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8727=5124 := by core033_kernel_decide
theorem rows8728 : actualRows8728=WordField.canonicalRows actualModulus 8728 (.bnot 8720) := by core033_kernel_decide
theorem stats8728 : actualRows8728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8728=6276 := by core033_kernel_decide
theorem rows8729 : actualRows8729=WordField.canonicalRows actualModulus 8729 (.band 8728 8666) := by core033_kernel_decide
theorem stats8729 : actualRows8729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8729=5124 := by core033_kernel_decide
theorem rows8730 : actualRows8730=WordField.canonicalRows actualModulus 8730 (.bxor 8727 8729) := by core033_kernel_decide
theorem stats8730 : actualRows8730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8730=7428 := by core033_kernel_decide
theorem rows8731 : actualRows8731=WordField.canonicalRows actualModulus 8731 (.badd 8726 8730) := by core033_kernel_decide
theorem stats8731 : actualRows8731.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8731=5388 := by core033_kernel_decide
theorem rows8732 : actualRows8732=WordField.canonicalRows actualModulus 8732 (.literal (BitVec.ofNat 32 2554220882)) := by core033_kernel_decide
theorem stats8732 : actualRows8732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8732=3828 := by core033_kernel_decide
theorem rows8733 : actualRows8733=WordField.canonicalRows actualModulus 8733 (.badd 8731 8732) := by core033_kernel_decide
theorem stats8733 : actualRows8733.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8733=5388 := by core033_kernel_decide
theorem rows8734 : actualRows8734=WordField.canonicalRows actualModulus 8734 (.badd 8733 7565) := by core033_kernel_decide
theorem stats8734 : actualRows8734.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8734=5388 := by core033_kernel_decide
theorem rows8735 : actualRows8735=WordField.canonicalRows actualModulus 8735 (.rotr 8719 2) := by core033_kernel_decide
theorem stats8735 : actualRows8735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8735=5124 := by core033_kernel_decide
def partRows134 : List R1CS.Row := actualRows8672++actualRows8673++actualRows8674++actualRows8675++actualRows8676++actualRows8677++actualRows8678++actualRows8679++actualRows8680++actualRows8681++actualRows8682++actualRows8683++actualRows8684++actualRows8685++actualRows8686++actualRows8687++actualRows8688++actualRows8689++actualRows8690++actualRows8691++actualRows8692++actualRows8693++actualRows8694++actualRows8695++actualRows8696++actualRows8697++actualRows8698++actualRows8699++actualRows8700++actualRows8701++actualRows8702++actualRows8703++actualRows8704++actualRows8705++actualRows8706++actualRows8707++actualRows8708++actualRows8709++actualRows8710++actualRows8711++actualRows8712++actualRows8713++actualRows8714++actualRows8715++actualRows8716++actualRows8717++actualRows8718++actualRows8719++actualRows8720++actualRows8721++actualRows8722++actualRows8723++actualRows8724++actualRows8725++actualRows8726++actualRows8727++actualRows8728++actualRows8729++actualRows8730++actualRows8731++actualRows8732++actualRows8733++actualRows8734++actualRows8735
def partOps134 : List WordIR.Op := [.badd 8585 8671,.band 8666 8639,.bnot 8666,.band 8674 8612,.bxor 8673 8675,.badd 8672 8676,.literal (BitVec.ofNat 32 1555081692),.badd 8677 8678,.badd 8679 7539,.rotr 8665 2,.rotr 8665 13,.bxor 8681 8682,.rotr 8665 22,.bxor 8683 8684,.band 8665 8638,.band 8665 8611,.bxor 8686 8687,.band 8638 8611,.bxor 8688 8689,.badd 8685 8690,.badd 8680 8691,.badd 8584 8680,.rotr 8693 6,.rotr 8693 11,.bxor 8694 8695,.rotr 8693 25,.bxor 8696 8697,.badd 8612 8698,.band 8693 8666,.bnot 8693,.band 8701 8639,.bxor 8700 8702,.badd 8699 8703,.literal (BitVec.ofNat 32 1996064986),.badd 8704 8705,.badd 8706 7552,.rotr 8692 2,.rotr 8692 13,.bxor 8708 8709,.rotr 8692 22,.bxor 8710 8711,.band 8692 8665,.band 8692 8638,.bxor 8713 8714,.band 8665 8638,.bxor 8715 8716,.badd 8712 8717,.badd 8707 8718,.badd 8611 8707,.rotr 8720 6,.rotr 8720 11,.bxor 8721 8722,.rotr 8720 25,.bxor 8723 8724,.badd 8639 8725,.band 8720 8693,.bnot 8720,.band 8728 8666,.bxor 8727 8729,.badd 8726 8730,.literal (BitVec.ofNat 32 2554220882),.badd 8731 8732,.badd 8733 7565,.rotr 8719 2]
theorem partExact134 : partRows134=WordField.rows actualModulus 8672 partOps134 := by
  simp only [partRows134,partOps134,WordField.rows,rows8672,rows8673,rows8674,rows8675,rows8676,rows8677,rows8678,rows8679,rows8680,rows8681,rows8682,rows8683,rows8684,rows8685,rows8686,rows8687,rows8688,rows8689,rows8690,rows8691,rows8692,rows8693,rows8694,rows8695,rows8696,rows8697,rows8698,rows8699,rows8700,rows8701,rows8702,rows8703,rows8704,rows8705,rows8706,rows8707,rows8708,rows8709,rows8710,rows8711,rows8712,rows8713,rows8714,rows8715,rows8716,rows8717,rows8718,rows8719,rows8720,rows8721,rows8722,rows8723,rows8724,rows8725,rows8726,rows8727,rows8728,rows8729,rows8730,rows8731,rows8732,rows8733,rows8734,rows8735,List.append_assoc,List.append_nil]
theorem partLength134 : partOps134.length=64 := by decide
theorem partStats134 : partRows134.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows134=367248 := by
  simp only [partRows134,List.length_append,MatrixRowBlocks.rows_weight_append,stats8672.1,stats8672.2,stats8673.1,stats8673.2,stats8674.1,stats8674.2,stats8675.1,stats8675.2,stats8676.1,stats8676.2,stats8677.1,stats8677.2,stats8678.1,stats8678.2,stats8679.1,stats8679.2,stats8680.1,stats8680.2,stats8681.1,stats8681.2,stats8682.1,stats8682.2,stats8683.1,stats8683.2,stats8684.1,stats8684.2,stats8685.1,stats8685.2,stats8686.1,stats8686.2,stats8687.1,stats8687.2,stats8688.1,stats8688.2,stats8689.1,stats8689.2,stats8690.1,stats8690.2,stats8691.1,stats8691.2,stats8692.1,stats8692.2,stats8693.1,stats8693.2,stats8694.1,stats8694.2,stats8695.1,stats8695.2,stats8696.1,stats8696.2,stats8697.1,stats8697.2,stats8698.1,stats8698.2,stats8699.1,stats8699.2,stats8700.1,stats8700.2,stats8701.1,stats8701.2,stats8702.1,stats8702.2,stats8703.1,stats8703.2,stats8704.1,stats8704.2,stats8705.1,stats8705.2,stats8706.1,stats8706.2,stats8707.1,stats8707.2,stats8708.1,stats8708.2,stats8709.1,stats8709.2,stats8710.1,stats8710.2,stats8711.1,stats8711.2,stats8712.1,stats8712.2,stats8713.1,stats8713.2,stats8714.1,stats8714.2,stats8715.1,stats8715.2,stats8716.1,stats8716.2,stats8717.1,stats8717.2,stats8718.1,stats8718.2,stats8719.1,stats8719.2,stats8720.1,stats8720.2,stats8721.1,stats8721.2,stats8722.1,stats8722.2,stats8723.1,stats8723.2,stats8724.1,stats8724.2,stats8725.1,stats8725.2,stats8726.1,stats8726.2,stats8727.1,stats8727.2,stats8728.1,stats8728.2,stats8729.1,stats8729.2,stats8730.1,stats8730.2,stats8731.1,stats8731.2,stats8732.1,stats8732.2,stats8733.1,stats8733.2,stats8734.1,stats8734.2,stats8735.1,stats8735.2]
  decide
end QuotedPairedPathRoundCheckedRows
