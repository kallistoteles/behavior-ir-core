import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData135
import AuthenticatedBranchRoundInstructionMatrixData136
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows8694 : actualRows8694=WordField.canonicalRows actualModulus 8694 (.shr 8677 10) := by core033_kernel_decide
theorem stats8694 : actualRows8694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8694=4404 := by core033_kernel_decide
theorem rows8695 : actualRows8695=WordField.canonicalRows actualModulus 8695 (.bxor 8693 8694) := by core033_kernel_decide
theorem stats8695 : actualRows8695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8695=7428 := by core033_kernel_decide
theorem rows8696 : actualRows8696=WordField.canonicalRows actualModulus 8696 (.badd 8695 8612) := by core033_kernel_decide
theorem stats8696 : actualRows8696.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8696=5388 := by core033_kernel_decide
theorem rows8697 : actualRows8697=WordField.canonicalRows actualModulus 8697 (.rotr 8508 7) := by core033_kernel_decide
theorem stats8697 : actualRows8697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8697=5124 := by core033_kernel_decide
theorem rows8698 : actualRows8698=WordField.canonicalRows actualModulus 8698 (.rotr 8508 18) := by core033_kernel_decide
theorem stats8698 : actualRows8698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8698=5124 := by core033_kernel_decide
theorem rows8699 : actualRows8699=WordField.canonicalRows actualModulus 8699 (.bxor 8697 8698) := by core033_kernel_decide
theorem stats8699 : actualRows8699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8699=7428 := by core033_kernel_decide
theorem rows8700 : actualRows8700=WordField.canonicalRows actualModulus 8700 (.shr 8508 3) := by core033_kernel_decide
theorem stats8700 : actualRows8700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8700=4908 := by core033_kernel_decide
theorem rows8701 : actualRows8701=WordField.canonicalRows actualModulus 8701 (.bxor 8699 8700) := by core033_kernel_decide
theorem stats8701 : actualRows8701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8701=7428 := by core033_kernel_decide
theorem rows8702 : actualRows8702=WordField.canonicalRows actualModulus 8702 (.badd 8696 8701) := by core033_kernel_decide
theorem stats8702 : actualRows8702.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8702=5388 := by core033_kernel_decide
theorem rows8703 : actualRows8703=WordField.canonicalRows actualModulus 8703 (.badd 8702 8495) := by core033_kernel_decide
theorem stats8703 : actualRows8703.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8703=5388 := by core033_kernel_decide
theorem rows8704 : actualRows8704=WordField.canonicalRows actualModulus 8704 (.rotr 8690 17) := by core033_kernel_decide
theorem stats8704 : actualRows8704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8704=5124 := by core033_kernel_decide
theorem rows8705 : actualRows8705=WordField.canonicalRows actualModulus 8705 (.rotr 8690 19) := by core033_kernel_decide
theorem stats8705 : actualRows8705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8705=5124 := by core033_kernel_decide
theorem rows8706 : actualRows8706=WordField.canonicalRows actualModulus 8706 (.bxor 8704 8705) := by core033_kernel_decide
theorem stats8706 : actualRows8706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8706=7428 := by core033_kernel_decide
theorem rows8707 : actualRows8707=WordField.canonicalRows actualModulus 8707 (.shr 8690 10) := by core033_kernel_decide
theorem stats8707 : actualRows8707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8707=4404 := by core033_kernel_decide
theorem rows8708 : actualRows8708=WordField.canonicalRows actualModulus 8708 (.bxor 8706 8707) := by core033_kernel_decide
theorem stats8708 : actualRows8708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8708=7428 := by core033_kernel_decide
theorem rows8709 : actualRows8709=WordField.canonicalRows actualModulus 8709 (.badd 8708 8625) := by core033_kernel_decide
theorem stats8709 : actualRows8709.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8709=5388 := by core033_kernel_decide
theorem rows8710 : actualRows8710=WordField.canonicalRows actualModulus 8710 (.rotr 8521 7) := by core033_kernel_decide
theorem stats8710 : actualRows8710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8710=5124 := by core033_kernel_decide
theorem rows8711 : actualRows8711=WordField.canonicalRows actualModulus 8711 (.rotr 8521 18) := by core033_kernel_decide
theorem stats8711 : actualRows8711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8711=5124 := by core033_kernel_decide
theorem rows8712 : actualRows8712=WordField.canonicalRows actualModulus 8712 (.bxor 8710 8711) := by core033_kernel_decide
theorem stats8712 : actualRows8712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8712=7428 := by core033_kernel_decide
theorem rows8713 : actualRows8713=WordField.canonicalRows actualModulus 8713 (.shr 8521 3) := by core033_kernel_decide
theorem stats8713 : actualRows8713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8713=4908 := by core033_kernel_decide
theorem rows8714 : actualRows8714=WordField.canonicalRows actualModulus 8714 (.bxor 8712 8713) := by core033_kernel_decide
theorem stats8714 : actualRows8714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8714=7428 := by core033_kernel_decide
theorem rows8715 : actualRows8715=WordField.canonicalRows actualModulus 8715 (.badd 8709 8714) := by core033_kernel_decide
theorem stats8715 : actualRows8715.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8715=5388 := by core033_kernel_decide
theorem rows8716 : actualRows8716=WordField.canonicalRows actualModulus 8716 (.badd 8715 8508) := by core033_kernel_decide
theorem stats8716 : actualRows8716.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8716=5388 := by core033_kernel_decide
theorem rows8717 : actualRows8717=WordField.canonicalRows actualModulus 8717 (.rotr 8703 17) := by core033_kernel_decide
theorem stats8717 : actualRows8717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8717=5124 := by core033_kernel_decide
theorem rows8718 : actualRows8718=WordField.canonicalRows actualModulus 8718 (.rotr 8703 19) := by core033_kernel_decide
theorem stats8718 : actualRows8718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8718=5124 := by core033_kernel_decide
theorem rows8719 : actualRows8719=WordField.canonicalRows actualModulus 8719 (.bxor 8717 8718) := by core033_kernel_decide
theorem stats8719 : actualRows8719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8719=7428 := by core033_kernel_decide
theorem rows8720 : actualRows8720=WordField.canonicalRows actualModulus 8720 (.shr 8703 10) := by core033_kernel_decide
theorem stats8720 : actualRows8720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8720=4404 := by core033_kernel_decide
theorem rows8721 : actualRows8721=WordField.canonicalRows actualModulus 8721 (.bxor 8719 8720) := by core033_kernel_decide
theorem stats8721 : actualRows8721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8721=7428 := by core033_kernel_decide
theorem rows8722 : actualRows8722=WordField.canonicalRows actualModulus 8722 (.badd 8721 8638) := by core033_kernel_decide
theorem stats8722 : actualRows8722.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8722=5388 := by core033_kernel_decide
theorem rows8723 : actualRows8723=WordField.canonicalRows actualModulus 8723 (.rotr 8534 7) := by core033_kernel_decide
theorem stats8723 : actualRows8723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8723=5124 := by core033_kernel_decide
theorem rows8724 : actualRows8724=WordField.canonicalRows actualModulus 8724 (.rotr 8534 18) := by core033_kernel_decide
theorem stats8724 : actualRows8724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8724=5124 := by core033_kernel_decide
theorem rows8725 : actualRows8725=WordField.canonicalRows actualModulus 8725 (.bxor 8723 8724) := by core033_kernel_decide
theorem stats8725 : actualRows8725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8725=7428 := by core033_kernel_decide
theorem rows8726 : actualRows8726=WordField.canonicalRows actualModulus 8726 (.shr 8534 3) := by core033_kernel_decide
theorem stats8726 : actualRows8726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8726=4908 := by core033_kernel_decide
theorem rows8727 : actualRows8727=WordField.canonicalRows actualModulus 8727 (.bxor 8725 8726) := by core033_kernel_decide
theorem stats8727 : actualRows8727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8727=7428 := by core033_kernel_decide
theorem rows8728 : actualRows8728=WordField.canonicalRows actualModulus 8728 (.badd 8722 8727) := by core033_kernel_decide
theorem stats8728 : actualRows8728.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8728=5388 := by core033_kernel_decide
theorem rows8729 : actualRows8729=WordField.canonicalRows actualModulus 8729 (.badd 8728 8521) := by core033_kernel_decide
theorem stats8729 : actualRows8729.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8729=5388 := by core033_kernel_decide
theorem rows8730 : actualRows8730=WordField.canonicalRows actualModulus 8730 (.rotr 8716 17) := by core033_kernel_decide
theorem stats8730 : actualRows8730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8730=5124 := by core033_kernel_decide
theorem rows8731 : actualRows8731=WordField.canonicalRows actualModulus 8731 (.rotr 8716 19) := by core033_kernel_decide
theorem stats8731 : actualRows8731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8731=5124 := by core033_kernel_decide
theorem rows8732 : actualRows8732=WordField.canonicalRows actualModulus 8732 (.bxor 8730 8731) := by core033_kernel_decide
theorem stats8732 : actualRows8732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8732=7428 := by core033_kernel_decide
theorem rows8733 : actualRows8733=WordField.canonicalRows actualModulus 8733 (.shr 8716 10) := by core033_kernel_decide
theorem stats8733 : actualRows8733.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8733=4404 := by core033_kernel_decide
theorem rows8734 : actualRows8734=WordField.canonicalRows actualModulus 8734 (.bxor 8732 8733) := by core033_kernel_decide
theorem stats8734 : actualRows8734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8734=7428 := by core033_kernel_decide
theorem rows8735 : actualRows8735=WordField.canonicalRows actualModulus 8735 (.badd 8734 8651) := by core033_kernel_decide
theorem stats8735 : actualRows8735.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8735=5388 := by core033_kernel_decide
theorem rows8736 : actualRows8736=WordField.canonicalRows actualModulus 8736 (.rotr 8547 7) := by core033_kernel_decide
theorem stats8736 : actualRows8736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8736=5124 := by core033_kernel_decide
theorem rows8737 : actualRows8737=WordField.canonicalRows actualModulus 8737 (.rotr 8547 18) := by core033_kernel_decide
theorem stats8737 : actualRows8737.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8737=5124 := by core033_kernel_decide
theorem rows8738 : actualRows8738=WordField.canonicalRows actualModulus 8738 (.bxor 8736 8737) := by core033_kernel_decide
theorem stats8738 : actualRows8738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8738=7428 := by core033_kernel_decide
theorem rows8739 : actualRows8739=WordField.canonicalRows actualModulus 8739 (.shr 8547 3) := by core033_kernel_decide
theorem stats8739 : actualRows8739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8739=4908 := by core033_kernel_decide
theorem rows8740 : actualRows8740=WordField.canonicalRows actualModulus 8740 (.bxor 8738 8739) := by core033_kernel_decide
theorem stats8740 : actualRows8740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8740=7428 := by core033_kernel_decide
theorem rows8741 : actualRows8741=WordField.canonicalRows actualModulus 8741 (.badd 8735 8740) := by core033_kernel_decide
theorem stats8741 : actualRows8741.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8741=5388 := by core033_kernel_decide
theorem rows8742 : actualRows8742=WordField.canonicalRows actualModulus 8742 (.badd 8741 8534) := by core033_kernel_decide
theorem stats8742 : actualRows8742.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8742=5388 := by core033_kernel_decide
theorem rows8743 : actualRows8743=WordField.canonicalRows actualModulus 8743 (.rotr 8729 17) := by core033_kernel_decide
theorem stats8743 : actualRows8743.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8743=5124 := by core033_kernel_decide
theorem rows8744 : actualRows8744=WordField.canonicalRows actualModulus 8744 (.rotr 8729 19) := by core033_kernel_decide
theorem stats8744 : actualRows8744.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8744=5124 := by core033_kernel_decide
theorem rows8745 : actualRows8745=WordField.canonicalRows actualModulus 8745 (.bxor 8743 8744) := by core033_kernel_decide
theorem stats8745 : actualRows8745.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8745=7428 := by core033_kernel_decide
theorem rows8746 : actualRows8746=WordField.canonicalRows actualModulus 8746 (.shr 8729 10) := by core033_kernel_decide
theorem stats8746 : actualRows8746.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8746=4404 := by core033_kernel_decide
theorem rows8747 : actualRows8747=WordField.canonicalRows actualModulus 8747 (.bxor 8745 8746) := by core033_kernel_decide
theorem stats8747 : actualRows8747.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8747=7428 := by core033_kernel_decide
theorem rows8748 : actualRows8748=WordField.canonicalRows actualModulus 8748 (.badd 8747 8664) := by core033_kernel_decide
theorem stats8748 : actualRows8748.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8748=5388 := by core033_kernel_decide
theorem rows8749 : actualRows8749=WordField.canonicalRows actualModulus 8749 (.rotr 8560 7) := by core033_kernel_decide
theorem stats8749 : actualRows8749.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8749=5124 := by core033_kernel_decide
theorem rows8750 : actualRows8750=WordField.canonicalRows actualModulus 8750 (.rotr 8560 18) := by core033_kernel_decide
theorem stats8750 : actualRows8750.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8750=5124 := by core033_kernel_decide
theorem rows8751 : actualRows8751=WordField.canonicalRows actualModulus 8751 (.bxor 8749 8750) := by core033_kernel_decide
theorem stats8751 : actualRows8751.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8751=7428 := by core033_kernel_decide
theorem rows8752 : actualRows8752=WordField.canonicalRows actualModulus 8752 (.shr 8560 3) := by core033_kernel_decide
theorem stats8752 : actualRows8752.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8752=4908 := by core033_kernel_decide
theorem rows8753 : actualRows8753=WordField.canonicalRows actualModulus 8753 (.bxor 8751 8752) := by core033_kernel_decide
theorem stats8753 : actualRows8753.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8753=7428 := by core033_kernel_decide
theorem rows8754 : actualRows8754=WordField.canonicalRows actualModulus 8754 (.badd 8748 8753) := by core033_kernel_decide
theorem stats8754 : actualRows8754.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8754=5388 := by core033_kernel_decide
theorem rows8755 : actualRows8755=WordField.canonicalRows actualModulus 8755 (.badd 8754 8547) := by core033_kernel_decide
theorem stats8755 : actualRows8755.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows8755=5388 := by core033_kernel_decide
theorem rows8756 : actualRows8756=WordField.canonicalRows actualModulus 8756 (.rotr 3383 6) := by core033_kernel_decide
theorem stats8756 : actualRows8756.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8756=5124 := by core033_kernel_decide
theorem rows8757 : actualRows8757=WordField.canonicalRows actualModulus 8757 (.rotr 3383 11) := by core033_kernel_decide
theorem stats8757 : actualRows8757.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows8757=5124 := by core033_kernel_decide
def partRows134 : List R1CS.Row := actualRows8694++actualRows8695++actualRows8696++actualRows8697++actualRows8698++actualRows8699++actualRows8700++actualRows8701++actualRows8702++actualRows8703++actualRows8704++actualRows8705++actualRows8706++actualRows8707++actualRows8708++actualRows8709++actualRows8710++actualRows8711++actualRows8712++actualRows8713++actualRows8714++actualRows8715++actualRows8716++actualRows8717++actualRows8718++actualRows8719++actualRows8720++actualRows8721++actualRows8722++actualRows8723++actualRows8724++actualRows8725++actualRows8726++actualRows8727++actualRows8728++actualRows8729++actualRows8730++actualRows8731++actualRows8732++actualRows8733++actualRows8734++actualRows8735++actualRows8736++actualRows8737++actualRows8738++actualRows8739++actualRows8740++actualRows8741++actualRows8742++actualRows8743++actualRows8744++actualRows8745++actualRows8746++actualRows8747++actualRows8748++actualRows8749++actualRows8750++actualRows8751++actualRows8752++actualRows8753++actualRows8754++actualRows8755++actualRows8756++actualRows8757
def partOps134 : List WordIR.Op := [.shr 8677 10,.bxor 8693 8694,.badd 8695 8612,.rotr 8508 7,.rotr 8508 18,.bxor 8697 8698,.shr 8508 3,.bxor 8699 8700,.badd 8696 8701,.badd 8702 8495,.rotr 8690 17,.rotr 8690 19,.bxor 8704 8705,.shr 8690 10,.bxor 8706 8707,.badd 8708 8625,.rotr 8521 7,.rotr 8521 18,.bxor 8710 8711,.shr 8521 3,.bxor 8712 8713,.badd 8709 8714,.badd 8715 8508,.rotr 8703 17,.rotr 8703 19,.bxor 8717 8718,.shr 8703 10,.bxor 8719 8720,.badd 8721 8638,.rotr 8534 7,.rotr 8534 18,.bxor 8723 8724,.shr 8534 3,.bxor 8725 8726,.badd 8722 8727,.badd 8728 8521,.rotr 8716 17,.rotr 8716 19,.bxor 8730 8731,.shr 8716 10,.bxor 8732 8733,.badd 8734 8651,.rotr 8547 7,.rotr 8547 18,.bxor 8736 8737,.shr 8547 3,.bxor 8738 8739,.badd 8735 8740,.badd 8741 8534,.rotr 8729 17,.rotr 8729 19,.bxor 8743 8744,.shr 8729 10,.bxor 8745 8746,.badd 8747 8664,.rotr 8560 7,.rotr 8560 18,.bxor 8749 8750,.shr 8560 3,.bxor 8751 8752,.badd 8748 8753,.badd 8754 8547,.rotr 3383 6,.rotr 3383 11]
theorem partExact134 : partRows134=WordField.rows actualModulus 8694 partOps134 := by
  simp only [partRows134,partOps134,WordField.rows,rows8694,rows8695,rows8696,rows8697,rows8698,rows8699,rows8700,rows8701,rows8702,rows8703,rows8704,rows8705,rows8706,rows8707,rows8708,rows8709,rows8710,rows8711,rows8712,rows8713,rows8714,rows8715,rows8716,rows8717,rows8718,rows8719,rows8720,rows8721,rows8722,rows8723,rows8724,rows8725,rows8726,rows8727,rows8728,rows8729,rows8730,rows8731,rows8732,rows8733,rows8734,rows8735,rows8736,rows8737,rows8738,rows8739,rows8740,rows8741,rows8742,rows8743,rows8744,rows8745,rows8746,rows8747,rows8748,rows8749,rows8750,rows8751,rows8752,rows8753,rows8754,rows8755,rows8756,rows8757,List.append_assoc,List.append_nil]
theorem partLength134 : partOps134.length=64 := by decide
theorem partStats134 : partRows134.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows134=370992 := by
  simp only [partRows134,List.length_append,MatrixRowBlocks.rows_weight_append,stats8694.1,stats8694.2,stats8695.1,stats8695.2,stats8696.1,stats8696.2,stats8697.1,stats8697.2,stats8698.1,stats8698.2,stats8699.1,stats8699.2,stats8700.1,stats8700.2,stats8701.1,stats8701.2,stats8702.1,stats8702.2,stats8703.1,stats8703.2,stats8704.1,stats8704.2,stats8705.1,stats8705.2,stats8706.1,stats8706.2,stats8707.1,stats8707.2,stats8708.1,stats8708.2,stats8709.1,stats8709.2,stats8710.1,stats8710.2,stats8711.1,stats8711.2,stats8712.1,stats8712.2,stats8713.1,stats8713.2,stats8714.1,stats8714.2,stats8715.1,stats8715.2,stats8716.1,stats8716.2,stats8717.1,stats8717.2,stats8718.1,stats8718.2,stats8719.1,stats8719.2,stats8720.1,stats8720.2,stats8721.1,stats8721.2,stats8722.1,stats8722.2,stats8723.1,stats8723.2,stats8724.1,stats8724.2,stats8725.1,stats8725.2,stats8726.1,stats8726.2,stats8727.1,stats8727.2,stats8728.1,stats8728.2,stats8729.1,stats8729.2,stats8730.1,stats8730.2,stats8731.1,stats8731.2,stats8732.1,stats8732.2,stats8733.1,stats8733.2,stats8734.1,stats8734.2,stats8735.1,stats8735.2,stats8736.1,stats8736.2,stats8737.1,stats8737.2,stats8738.1,stats8738.2,stats8739.1,stats8739.2,stats8740.1,stats8740.2,stats8741.1,stats8741.2,stats8742.1,stats8742.2,stats8743.1,stats8743.2,stats8744.1,stats8744.2,stats8745.1,stats8745.2,stats8746.1,stats8746.2,stats8747.1,stats8747.2,stats8748.1,stats8748.2,stats8749.1,stats8749.2,stats8750.1,stats8750.2,stats8751.1,stats8751.2,stats8752.1,stats8752.2,stats8753.1,stats8753.2,stats8754.1,stats8754.2,stats8755.1,stats8755.2,stats8756.1,stats8756.2,stats8757.1,stats8757.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
