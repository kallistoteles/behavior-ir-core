import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData135
import FrameHashControllerInstructionMatrixData136
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8683 : actualRows8683=WordField.canonicalRows actualModulus 8683 (.badd 8574 8670) := by core033_kernel_decide
theorem stats8683 : actualRows8683.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8683=5388 := by core033_kernel_decide
theorem rows8684 : actualRows8684=WordField.canonicalRows actualModulus 8684 (.rotr 8683 6) := by core033_kernel_decide
theorem stats8684 : actualRows8684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8684=5124 := by core033_kernel_decide
theorem rows8685 : actualRows8685=WordField.canonicalRows actualModulus 8685 (.rotr 8683 11) := by core033_kernel_decide
theorem stats8685 : actualRows8685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8685=5124 := by core033_kernel_decide
theorem rows8686 : actualRows8686=WordField.canonicalRows actualModulus 8686 (.bxor 8684 8685) := by core033_kernel_decide
theorem stats8686 : actualRows8686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8686=7428 := by core033_kernel_decide
theorem rows8687 : actualRows8687=WordField.canonicalRows actualModulus 8687 (.rotr 8683 25) := by core033_kernel_decide
theorem stats8687 : actualRows8687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8687=5124 := by core033_kernel_decide
theorem rows8688 : actualRows8688=WordField.canonicalRows actualModulus 8688 (.bxor 8686 8687) := by core033_kernel_decide
theorem stats8688 : actualRows8688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8688=7428 := by core033_kernel_decide
theorem rows8689 : actualRows8689=WordField.canonicalRows actualModulus 8689 (.badd 8602 8688) := by core033_kernel_decide
theorem stats8689 : actualRows8689.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8689=5388 := by core033_kernel_decide
theorem rows8690 : actualRows8690=WordField.canonicalRows actualModulus 8690 (.band 8683 8656) := by core033_kernel_decide
theorem stats8690 : actualRows8690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8690=5124 := by core033_kernel_decide
theorem rows8691 : actualRows8691=WordField.canonicalRows actualModulus 8691 (.bnot 8683) := by core033_kernel_decide
theorem stats8691 : actualRows8691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8691=6276 := by core033_kernel_decide
theorem rows8692 : actualRows8692=WordField.canonicalRows actualModulus 8692 (.band 8691 8629) := by core033_kernel_decide
theorem stats8692 : actualRows8692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8692=5124 := by core033_kernel_decide
theorem rows8693 : actualRows8693=WordField.canonicalRows actualModulus 8693 (.bxor 8690 8692) := by core033_kernel_decide
theorem stats8693 : actualRows8693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8693=7428 := by core033_kernel_decide
theorem rows8694 : actualRows8694=WordField.canonicalRows actualModulus 8694 (.badd 8689 8693) := by core033_kernel_decide
theorem stats8694 : actualRows8694.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8694=5388 := by core033_kernel_decide
theorem rows8695 : actualRows8695=WordField.canonicalRows actualModulus 8695 (.literal (BitVec.ofNat 32 2756734187)) := by core033_kernel_decide
theorem stats8695 : actualRows8695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8695=3900 := by core033_kernel_decide
theorem rows8696 : actualRows8696=WordField.canonicalRows actualModulus 8696 (.badd 8694 8695) := by core033_kernel_decide
theorem stats8696 : actualRows8696.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8696=5388 := by core033_kernel_decide
theorem rows8697 : actualRows8697=WordField.canonicalRows actualModulus 8697 (.badd 8696 7010) := by core033_kernel_decide
theorem stats8697 : actualRows8697.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8697=5388 := by core033_kernel_decide
theorem rows8698 : actualRows8698=WordField.canonicalRows actualModulus 8698 (.rotr 8682 2) := by core033_kernel_decide
theorem stats8698 : actualRows8698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8698=5124 := by core033_kernel_decide
theorem rows8699 : actualRows8699=WordField.canonicalRows actualModulus 8699 (.rotr 8682 13) := by core033_kernel_decide
theorem stats8699 : actualRows8699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8699=5124 := by core033_kernel_decide
theorem rows8700 : actualRows8700=WordField.canonicalRows actualModulus 8700 (.bxor 8698 8699) := by core033_kernel_decide
theorem stats8700 : actualRows8700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8700=7428 := by core033_kernel_decide
theorem rows8701 : actualRows8701=WordField.canonicalRows actualModulus 8701 (.rotr 8682 22) := by core033_kernel_decide
theorem stats8701 : actualRows8701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8701=5124 := by core033_kernel_decide
theorem rows8702 : actualRows8702=WordField.canonicalRows actualModulus 8702 (.bxor 8700 8701) := by core033_kernel_decide
theorem stats8702 : actualRows8702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8702=7428 := by core033_kernel_decide
theorem rows8703 : actualRows8703=WordField.canonicalRows actualModulus 8703 (.band 8682 8655) := by core033_kernel_decide
theorem stats8703 : actualRows8703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8703=5124 := by core033_kernel_decide
theorem rows8704 : actualRows8704=WordField.canonicalRows actualModulus 8704 (.band 8682 8628) := by core033_kernel_decide
theorem stats8704 : actualRows8704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8704=5124 := by core033_kernel_decide
theorem rows8705 : actualRows8705=WordField.canonicalRows actualModulus 8705 (.bxor 8703 8704) := by core033_kernel_decide
theorem stats8705 : actualRows8705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8705=7428 := by core033_kernel_decide
theorem rows8706 : actualRows8706=WordField.canonicalRows actualModulus 8706 (.band 8655 8628) := by core033_kernel_decide
theorem stats8706 : actualRows8706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8706=5124 := by core033_kernel_decide
theorem rows8707 : actualRows8707=WordField.canonicalRows actualModulus 8707 (.bxor 8705 8706) := by core033_kernel_decide
theorem stats8707 : actualRows8707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8707=7428 := by core033_kernel_decide
theorem rows8708 : actualRows8708=WordField.canonicalRows actualModulus 8708 (.badd 8702 8707) := by core033_kernel_decide
theorem stats8708 : actualRows8708.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8708=5388 := by core033_kernel_decide
theorem rows8709 : actualRows8709=WordField.canonicalRows actualModulus 8709 (.badd 8697 8708) := by core033_kernel_decide
theorem stats8709 : actualRows8709.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8709=5388 := by core033_kernel_decide
theorem rows8710 : actualRows8710=WordField.canonicalRows actualModulus 8710 (.badd 8601 8697) := by core033_kernel_decide
theorem stats8710 : actualRows8710.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8710=5388 := by core033_kernel_decide
theorem rows8711 : actualRows8711=WordField.canonicalRows actualModulus 8711 (.rotr 8710 6) := by core033_kernel_decide
theorem stats8711 : actualRows8711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8711=5124 := by core033_kernel_decide
theorem rows8712 : actualRows8712=WordField.canonicalRows actualModulus 8712 (.rotr 8710 11) := by core033_kernel_decide
theorem stats8712 : actualRows8712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8712=5124 := by core033_kernel_decide
theorem rows8713 : actualRows8713=WordField.canonicalRows actualModulus 8713 (.bxor 8711 8712) := by core033_kernel_decide
theorem stats8713 : actualRows8713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8713=7428 := by core033_kernel_decide
theorem rows8714 : actualRows8714=WordField.canonicalRows actualModulus 8714 (.rotr 8710 25) := by core033_kernel_decide
theorem stats8714 : actualRows8714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8714=5124 := by core033_kernel_decide
theorem rows8715 : actualRows8715=WordField.canonicalRows actualModulus 8715 (.bxor 8713 8714) := by core033_kernel_decide
theorem stats8715 : actualRows8715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8715=7428 := by core033_kernel_decide
theorem rows8716 : actualRows8716=WordField.canonicalRows actualModulus 8716 (.badd 8629 8715) := by core033_kernel_decide
theorem stats8716 : actualRows8716.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8716=5388 := by core033_kernel_decide
theorem rows8717 : actualRows8717=WordField.canonicalRows actualModulus 8717 (.band 8710 8683) := by core033_kernel_decide
theorem stats8717 : actualRows8717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8717=5124 := by core033_kernel_decide
theorem rows8718 : actualRows8718=WordField.canonicalRows actualModulus 8718 (.bnot 8710) := by core033_kernel_decide
theorem stats8718 : actualRows8718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8718=6276 := by core033_kernel_decide
theorem rows8719 : actualRows8719=WordField.canonicalRows actualModulus 8719 (.band 8718 8656) := by core033_kernel_decide
theorem stats8719 : actualRows8719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8719=5124 := by core033_kernel_decide
theorem rows8720 : actualRows8720=WordField.canonicalRows actualModulus 8720 (.bxor 8717 8719) := by core033_kernel_decide
theorem stats8720 : actualRows8720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8720=7428 := by core033_kernel_decide
theorem rows8721 : actualRows8721=WordField.canonicalRows actualModulus 8721 (.badd 8716 8720) := by core033_kernel_decide
theorem stats8721 : actualRows8721.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8721=5388 := by core033_kernel_decide
theorem rows8722 : actualRows8722=WordField.canonicalRows actualModulus 8722 (.literal (BitVec.ofNat 32 3204031479)) := by core033_kernel_decide
theorem stats8722 : actualRows8722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8722=4476 := by core033_kernel_decide
theorem rows8723 : actualRows8723=WordField.canonicalRows actualModulus 8723 (.badd 8721 8722) := by core033_kernel_decide
theorem stats8723 : actualRows8723.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8723=5388 := by core033_kernel_decide
theorem rows8724 : actualRows8724=WordField.canonicalRows actualModulus 8724 (.badd 8723 7023) := by core033_kernel_decide
theorem stats8724 : actualRows8724.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8724=5388 := by core033_kernel_decide
theorem rows8725 : actualRows8725=WordField.canonicalRows actualModulus 8725 (.rotr 8709 2) := by core033_kernel_decide
theorem stats8725 : actualRows8725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8725=5124 := by core033_kernel_decide
theorem rows8726 : actualRows8726=WordField.canonicalRows actualModulus 8726 (.rotr 8709 13) := by core033_kernel_decide
theorem stats8726 : actualRows8726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8726=5124 := by core033_kernel_decide
theorem rows8727 : actualRows8727=WordField.canonicalRows actualModulus 8727 (.bxor 8725 8726) := by core033_kernel_decide
theorem stats8727 : actualRows8727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8727=7428 := by core033_kernel_decide
theorem rows8728 : actualRows8728=WordField.canonicalRows actualModulus 8728 (.rotr 8709 22) := by core033_kernel_decide
theorem stats8728 : actualRows8728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8728=5124 := by core033_kernel_decide
theorem rows8729 : actualRows8729=WordField.canonicalRows actualModulus 8729 (.bxor 8727 8728) := by core033_kernel_decide
theorem stats8729 : actualRows8729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8729=7428 := by core033_kernel_decide
theorem rows8730 : actualRows8730=WordField.canonicalRows actualModulus 8730 (.band 8709 8682) := by core033_kernel_decide
theorem stats8730 : actualRows8730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8730=5124 := by core033_kernel_decide
theorem rows8731 : actualRows8731=WordField.canonicalRows actualModulus 8731 (.band 8709 8655) := by core033_kernel_decide
theorem stats8731 : actualRows8731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8731=5124 := by core033_kernel_decide
theorem rows8732 : actualRows8732=WordField.canonicalRows actualModulus 8732 (.bxor 8730 8731) := by core033_kernel_decide
theorem stats8732 : actualRows8732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8732=7428 := by core033_kernel_decide
theorem rows8733 : actualRows8733=WordField.canonicalRows actualModulus 8733 (.band 8682 8655) := by core033_kernel_decide
theorem stats8733 : actualRows8733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8733=5124 := by core033_kernel_decide
theorem rows8734 : actualRows8734=WordField.canonicalRows actualModulus 8734 (.bxor 8732 8733) := by core033_kernel_decide
theorem stats8734 : actualRows8734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8734=7428 := by core033_kernel_decide
theorem rows8735 : actualRows8735=WordField.canonicalRows actualModulus 8735 (.badd 8729 8734) := by core033_kernel_decide
theorem stats8735 : actualRows8735.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8735=5388 := by core033_kernel_decide
theorem rows8736 : actualRows8736=WordField.canonicalRows actualModulus 8736 (.badd 8724 8735) := by core033_kernel_decide
theorem stats8736 : actualRows8736.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8736=5388 := by core033_kernel_decide
theorem rows8737 : actualRows8737=WordField.canonicalRows actualModulus 8737 (.badd 8628 8724) := by core033_kernel_decide
theorem stats8737 : actualRows8737.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8737=5388 := by core033_kernel_decide
theorem rows8738 : actualRows8738=WordField.canonicalRows actualModulus 8738 (.rotr 8737 6) := by core033_kernel_decide
theorem stats8738 : actualRows8738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8738=5124 := by core033_kernel_decide
theorem rows8739 : actualRows8739=WordField.canonicalRows actualModulus 8739 (.rotr 8737 11) := by core033_kernel_decide
theorem stats8739 : actualRows8739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8739=5124 := by core033_kernel_decide
theorem rows8740 : actualRows8740=WordField.canonicalRows actualModulus 8740 (.bxor 8738 8739) := by core033_kernel_decide
theorem stats8740 : actualRows8740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8740=7428 := by core033_kernel_decide
theorem rows8741 : actualRows8741=WordField.canonicalRows actualModulus 8741 (.rotr 8737 25) := by core033_kernel_decide
theorem stats8741 : actualRows8741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8741=5124 := by core033_kernel_decide
theorem rows8742 : actualRows8742=WordField.canonicalRows actualModulus 8742 (.bxor 8740 8741) := by core033_kernel_decide
theorem stats8742 : actualRows8742.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8742=7428 := by core033_kernel_decide
theorem rows8743 : actualRows8743=WordField.canonicalRows actualModulus 8743 (.badd 8656 8742) := by core033_kernel_decide
theorem stats8743 : actualRows8743.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8743=5388 := by core033_kernel_decide
theorem rows8744 : actualRows8744=WordField.canonicalRows actualModulus 8744 (.band 8737 8710) := by core033_kernel_decide
theorem stats8744 : actualRows8744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8744=5124 := by core033_kernel_decide
theorem rows8745 : actualRows8745=WordField.canonicalRows actualModulus 8745 (.bnot 8737) := by core033_kernel_decide
theorem stats8745 : actualRows8745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8745=6276 := by core033_kernel_decide
theorem rows8746 : actualRows8746=WordField.canonicalRows actualModulus 8746 (.band 8745 8683) := by core033_kernel_decide
theorem stats8746 : actualRows8746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8746=5124 := by core033_kernel_decide
def partRows135 : List R1CS.Row := actualRows8683++actualRows8684++actualRows8685++actualRows8686++actualRows8687++actualRows8688++actualRows8689++actualRows8690++actualRows8691++actualRows8692++actualRows8693++actualRows8694++actualRows8695++actualRows8696++actualRows8697++actualRows8698++actualRows8699++actualRows8700++actualRows8701++actualRows8702++actualRows8703++actualRows8704++actualRows8705++actualRows8706++actualRows8707++actualRows8708++actualRows8709++actualRows8710++actualRows8711++actualRows8712++actualRows8713++actualRows8714++actualRows8715++actualRows8716++actualRows8717++actualRows8718++actualRows8719++actualRows8720++actualRows8721++actualRows8722++actualRows8723++actualRows8724++actualRows8725++actualRows8726++actualRows8727++actualRows8728++actualRows8729++actualRows8730++actualRows8731++actualRows8732++actualRows8733++actualRows8734++actualRows8735++actualRows8736++actualRows8737++actualRows8738++actualRows8739++actualRows8740++actualRows8741++actualRows8742++actualRows8743++actualRows8744++actualRows8745++actualRows8746
def partOps135 : List WordIR.Op := [.badd 8574 8670,.rotr 8683 6,.rotr 8683 11,.bxor 8684 8685,.rotr 8683 25,.bxor 8686 8687,.badd 8602 8688,.band 8683 8656,.bnot 8683,.band 8691 8629,.bxor 8690 8692,.badd 8689 8693,.literal (BitVec.ofNat 32 2756734187),.badd 8694 8695,.badd 8696 7010,.rotr 8682 2,.rotr 8682 13,.bxor 8698 8699,.rotr 8682 22,.bxor 8700 8701,.band 8682 8655,.band 8682 8628,.bxor 8703 8704,.band 8655 8628,.bxor 8705 8706,.badd 8702 8707,.badd 8697 8708,.badd 8601 8697,.rotr 8710 6,.rotr 8710 11,.bxor 8711 8712,.rotr 8710 25,.bxor 8713 8714,.badd 8629 8715,.band 8710 8683,.bnot 8710,.band 8718 8656,.bxor 8717 8719,.badd 8716 8720,.literal (BitVec.ofNat 32 3204031479),.badd 8721 8722,.badd 8723 7023,.rotr 8709 2,.rotr 8709 13,.bxor 8725 8726,.rotr 8709 22,.bxor 8727 8728,.band 8709 8682,.band 8709 8655,.bxor 8730 8731,.band 8682 8655,.bxor 8732 8733,.badd 8729 8734,.badd 8724 8735,.badd 8628 8724,.rotr 8737 6,.rotr 8737 11,.bxor 8738 8739,.rotr 8737 25,.bxor 8740 8741,.badd 8656 8742,.band 8737 8710,.bnot 8737,.band 8745 8683]
theorem partExact135 : partRows135=WordField.rows actualModulus 8683 partOps135 := by
  simp only [partRows135,partOps135,WordField.rows,rows8683,rows8684,rows8685,rows8686,rows8687,rows8688,rows8689,rows8690,rows8691,rows8692,rows8693,rows8694,rows8695,rows8696,rows8697,rows8698,rows8699,rows8700,rows8701,rows8702,rows8703,rows8704,rows8705,rows8706,rows8707,rows8708,rows8709,rows8710,rows8711,rows8712,rows8713,rows8714,rows8715,rows8716,rows8717,rows8718,rows8719,rows8720,rows8721,rows8722,rows8723,rows8724,rows8725,rows8726,rows8727,rows8728,rows8729,rows8730,rows8731,rows8732,rows8733,rows8734,rows8735,rows8736,rows8737,rows8738,rows8739,rows8740,rows8741,rows8742,rows8743,rows8744,rows8745,rows8746,List.append_assoc,List.append_nil]
theorem partLength135 : partOps135.length=64 := by decide
theorem partStats135 : partRows135.length=2192 ∧ MatrixRowBlocks.rowsWeight partRows135=370608 := by
  simp only [partRows135,List.length_append,MatrixRowBlocks.rows_weight_append,stats8683.1,stats8683.2,stats8684.1,stats8684.2,stats8685.1,stats8685.2,stats8686.1,stats8686.2,stats8687.1,stats8687.2,stats8688.1,stats8688.2,stats8689.1,stats8689.2,stats8690.1,stats8690.2,stats8691.1,stats8691.2,stats8692.1,stats8692.2,stats8693.1,stats8693.2,stats8694.1,stats8694.2,stats8695.1,stats8695.2,stats8696.1,stats8696.2,stats8697.1,stats8697.2,stats8698.1,stats8698.2,stats8699.1,stats8699.2,stats8700.1,stats8700.2,stats8701.1,stats8701.2,stats8702.1,stats8702.2,stats8703.1,stats8703.2,stats8704.1,stats8704.2,stats8705.1,stats8705.2,stats8706.1,stats8706.2,stats8707.1,stats8707.2,stats8708.1,stats8708.2,stats8709.1,stats8709.2,stats8710.1,stats8710.2,stats8711.1,stats8711.2,stats8712.1,stats8712.2,stats8713.1,stats8713.2,stats8714.1,stats8714.2,stats8715.1,stats8715.2,stats8716.1,stats8716.2,stats8717.1,stats8717.2,stats8718.1,stats8718.2,stats8719.1,stats8719.2,stats8720.1,stats8720.2,stats8721.1,stats8721.2,stats8722.1,stats8722.2,stats8723.1,stats8723.2,stats8724.1,stats8724.2,stats8725.1,stats8725.2,stats8726.1,stats8726.2,stats8727.1,stats8727.2,stats8728.1,stats8728.2,stats8729.1,stats8729.2,stats8730.1,stats8730.2,stats8731.1,stats8731.2,stats8732.1,stats8732.2,stats8733.1,stats8733.2,stats8734.1,stats8734.2,stats8735.1,stats8735.2,stats8736.1,stats8736.2,stats8737.1,stats8737.2,stats8738.1,stats8738.2,stats8739.1,stats8739.2,stats8740.1,stats8740.2,stats8741.1,stats8741.2,stats8742.1,stats8742.2,stats8743.1,stats8743.2,stats8744.1,stats8744.2,stats8745.1,stats8745.2,stats8746.1,stats8746.2]
  decide
end FrameHashControllerCheckedRows
