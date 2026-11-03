import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData119
import PairedPathRoundInstructionMatrixData120
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7648 : actualRows7648=WordField.canonicalRows actualModulus 7648 (.bxor 7646 7647) := by core033_kernel_decide
theorem stats7648 : actualRows7648.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7648=7428 := by core033_kernel_decide
theorem rows7649 : actualRows7649=WordField.canonicalRows actualModulus 7649 (.badd 7648 7565) := by core033_kernel_decide
theorem stats7649 : actualRows7649.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7649=5388 := by core033_kernel_decide
theorem rows7650 : actualRows7650=WordField.canonicalRows actualModulus 7650 (.rotr 7461 7) := by core033_kernel_decide
theorem stats7650 : actualRows7650.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7650=5124 := by core033_kernel_decide
theorem rows7651 : actualRows7651=WordField.canonicalRows actualModulus 7651 (.rotr 7461 18) := by core033_kernel_decide
theorem stats7651 : actualRows7651.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7651=5124 := by core033_kernel_decide
theorem rows7652 : actualRows7652=WordField.canonicalRows actualModulus 7652 (.bxor 7650 7651) := by core033_kernel_decide
theorem stats7652 : actualRows7652.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7652=7428 := by core033_kernel_decide
theorem rows7653 : actualRows7653=WordField.canonicalRows actualModulus 7653 (.shr 7461 3) := by core033_kernel_decide
theorem stats7653 : actualRows7653.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7653=4908 := by core033_kernel_decide
theorem rows7654 : actualRows7654=WordField.canonicalRows actualModulus 7654 (.bxor 7652 7653) := by core033_kernel_decide
theorem stats7654 : actualRows7654.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7654=7428 := by core033_kernel_decide
theorem rows7655 : actualRows7655=WordField.canonicalRows actualModulus 7655 (.badd 7649 7654) := by core033_kernel_decide
theorem stats7655 : actualRows7655.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7655=5388 := by core033_kernel_decide
theorem rows7656 : actualRows7656=WordField.canonicalRows actualModulus 7656 (.badd 7655 6296) := by core033_kernel_decide
theorem stats7656 : actualRows7656.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7656=5388 := by core033_kernel_decide
theorem rows7657 : actualRows7657=WordField.canonicalRows actualModulus 7657 (.rotr 7643 17) := by core033_kernel_decide
theorem stats7657 : actualRows7657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7657=5124 := by core033_kernel_decide
theorem rows7658 : actualRows7658=WordField.canonicalRows actualModulus 7658 (.rotr 7643 19) := by core033_kernel_decide
theorem stats7658 : actualRows7658.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7658=5124 := by core033_kernel_decide
theorem rows7659 : actualRows7659=WordField.canonicalRows actualModulus 7659 (.bxor 7657 7658) := by core033_kernel_decide
theorem stats7659 : actualRows7659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7659=7428 := by core033_kernel_decide
theorem rows7660 : actualRows7660=WordField.canonicalRows actualModulus 7660 (.shr 7643 10) := by core033_kernel_decide
theorem stats7660 : actualRows7660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7660=4404 := by core033_kernel_decide
theorem rows7661 : actualRows7661=WordField.canonicalRows actualModulus 7661 (.bxor 7659 7660) := by core033_kernel_decide
theorem stats7661 : actualRows7661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7661=7428 := by core033_kernel_decide
theorem rows7662 : actualRows7662=WordField.canonicalRows actualModulus 7662 (.badd 7661 7578) := by core033_kernel_decide
theorem stats7662 : actualRows7662.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7662=5388 := by core033_kernel_decide
theorem rows7663 : actualRows7663=WordField.canonicalRows actualModulus 7663 (.rotr 7474 7) := by core033_kernel_decide
theorem stats7663 : actualRows7663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7663=5124 := by core033_kernel_decide
theorem rows7664 : actualRows7664=WordField.canonicalRows actualModulus 7664 (.rotr 7474 18) := by core033_kernel_decide
theorem stats7664 : actualRows7664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7664=5124 := by core033_kernel_decide
theorem rows7665 : actualRows7665=WordField.canonicalRows actualModulus 7665 (.bxor 7663 7664) := by core033_kernel_decide
theorem stats7665 : actualRows7665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7665=7428 := by core033_kernel_decide
theorem rows7666 : actualRows7666=WordField.canonicalRows actualModulus 7666 (.shr 7474 3) := by core033_kernel_decide
theorem stats7666 : actualRows7666.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7666=4908 := by core033_kernel_decide
theorem rows7667 : actualRows7667=WordField.canonicalRows actualModulus 7667 (.bxor 7665 7666) := by core033_kernel_decide
theorem stats7667 : actualRows7667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7667=7428 := by core033_kernel_decide
theorem rows7668 : actualRows7668=WordField.canonicalRows actualModulus 7668 (.badd 7662 7667) := by core033_kernel_decide
theorem stats7668 : actualRows7668.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7668=5388 := by core033_kernel_decide
theorem rows7669 : actualRows7669=WordField.canonicalRows actualModulus 7669 (.badd 7668 7461) := by core033_kernel_decide
theorem stats7669 : actualRows7669.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7669=5388 := by core033_kernel_decide
theorem rows7670 : actualRows7670=WordField.canonicalRows actualModulus 7670 (.rotr 7656 17) := by core033_kernel_decide
theorem stats7670 : actualRows7670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7670=5124 := by core033_kernel_decide
theorem rows7671 : actualRows7671=WordField.canonicalRows actualModulus 7671 (.rotr 7656 19) := by core033_kernel_decide
theorem stats7671 : actualRows7671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7671=5124 := by core033_kernel_decide
theorem rows7672 : actualRows7672=WordField.canonicalRows actualModulus 7672 (.bxor 7670 7671) := by core033_kernel_decide
theorem stats7672 : actualRows7672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7672=7428 := by core033_kernel_decide
theorem rows7673 : actualRows7673=WordField.canonicalRows actualModulus 7673 (.shr 7656 10) := by core033_kernel_decide
theorem stats7673 : actualRows7673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7673=4404 := by core033_kernel_decide
theorem rows7674 : actualRows7674=WordField.canonicalRows actualModulus 7674 (.bxor 7672 7673) := by core033_kernel_decide
theorem stats7674 : actualRows7674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7674=7428 := by core033_kernel_decide
theorem rows7675 : actualRows7675=WordField.canonicalRows actualModulus 7675 (.badd 7674 7591) := by core033_kernel_decide
theorem stats7675 : actualRows7675.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7675=5388 := by core033_kernel_decide
theorem rows7676 : actualRows7676=WordField.canonicalRows actualModulus 7676 (.rotr 7487 7) := by core033_kernel_decide
theorem stats7676 : actualRows7676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7676=5124 := by core033_kernel_decide
theorem rows7677 : actualRows7677=WordField.canonicalRows actualModulus 7677 (.rotr 7487 18) := by core033_kernel_decide
theorem stats7677 : actualRows7677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7677=5124 := by core033_kernel_decide
theorem rows7678 : actualRows7678=WordField.canonicalRows actualModulus 7678 (.bxor 7676 7677) := by core033_kernel_decide
theorem stats7678 : actualRows7678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7678=7428 := by core033_kernel_decide
theorem rows7679 : actualRows7679=WordField.canonicalRows actualModulus 7679 (.shr 7487 3) := by core033_kernel_decide
theorem stats7679 : actualRows7679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7679=4908 := by core033_kernel_decide
theorem rows7680 : actualRows7680=WordField.canonicalRows actualModulus 7680 (.bxor 7678 7679) := by core033_kernel_decide
theorem stats7680 : actualRows7680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7680=7428 := by core033_kernel_decide
theorem rows7681 : actualRows7681=WordField.canonicalRows actualModulus 7681 (.badd 7675 7680) := by core033_kernel_decide
theorem stats7681 : actualRows7681.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7681=5388 := by core033_kernel_decide
theorem rows7682 : actualRows7682=WordField.canonicalRows actualModulus 7682 (.badd 7681 7474) := by core033_kernel_decide
theorem stats7682 : actualRows7682.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7682=5388 := by core033_kernel_decide
theorem rows7683 : actualRows7683=WordField.canonicalRows actualModulus 7683 (.rotr 7669 17) := by core033_kernel_decide
theorem stats7683 : actualRows7683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7683=5124 := by core033_kernel_decide
theorem rows7684 : actualRows7684=WordField.canonicalRows actualModulus 7684 (.rotr 7669 19) := by core033_kernel_decide
theorem stats7684 : actualRows7684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7684=5124 := by core033_kernel_decide
theorem rows7685 : actualRows7685=WordField.canonicalRows actualModulus 7685 (.bxor 7683 7684) := by core033_kernel_decide
theorem stats7685 : actualRows7685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7685=7428 := by core033_kernel_decide
theorem rows7686 : actualRows7686=WordField.canonicalRows actualModulus 7686 (.shr 7669 10) := by core033_kernel_decide
theorem stats7686 : actualRows7686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7686=4404 := by core033_kernel_decide
theorem rows7687 : actualRows7687=WordField.canonicalRows actualModulus 7687 (.bxor 7685 7686) := by core033_kernel_decide
theorem stats7687 : actualRows7687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7687=7428 := by core033_kernel_decide
theorem rows7688 : actualRows7688=WordField.canonicalRows actualModulus 7688 (.badd 7687 7604) := by core033_kernel_decide
theorem stats7688 : actualRows7688.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7688=5388 := by core033_kernel_decide
theorem rows7689 : actualRows7689=WordField.canonicalRows actualModulus 7689 (.rotr 7500 7) := by core033_kernel_decide
theorem stats7689 : actualRows7689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7689=5124 := by core033_kernel_decide
theorem rows7690 : actualRows7690=WordField.canonicalRows actualModulus 7690 (.rotr 7500 18) := by core033_kernel_decide
theorem stats7690 : actualRows7690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7690=5124 := by core033_kernel_decide
theorem rows7691 : actualRows7691=WordField.canonicalRows actualModulus 7691 (.bxor 7689 7690) := by core033_kernel_decide
theorem stats7691 : actualRows7691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7691=7428 := by core033_kernel_decide
theorem rows7692 : actualRows7692=WordField.canonicalRows actualModulus 7692 (.shr 7500 3) := by core033_kernel_decide
theorem stats7692 : actualRows7692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7692=4908 := by core033_kernel_decide
theorem rows7693 : actualRows7693=WordField.canonicalRows actualModulus 7693 (.bxor 7691 7692) := by core033_kernel_decide
theorem stats7693 : actualRows7693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7693=7428 := by core033_kernel_decide
theorem rows7694 : actualRows7694=WordField.canonicalRows actualModulus 7694 (.badd 7688 7693) := by core033_kernel_decide
theorem stats7694 : actualRows7694.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7694=5388 := by core033_kernel_decide
theorem rows7695 : actualRows7695=WordField.canonicalRows actualModulus 7695 (.badd 7694 7487) := by core033_kernel_decide
theorem stats7695 : actualRows7695.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7695=5388 := by core033_kernel_decide
theorem rows7696 : actualRows7696=WordField.canonicalRows actualModulus 7696 (.rotr 7682 17) := by core033_kernel_decide
theorem stats7696 : actualRows7696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7696=5124 := by core033_kernel_decide
theorem rows7697 : actualRows7697=WordField.canonicalRows actualModulus 7697 (.rotr 7682 19) := by core033_kernel_decide
theorem stats7697 : actualRows7697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7697=5124 := by core033_kernel_decide
theorem rows7698 : actualRows7698=WordField.canonicalRows actualModulus 7698 (.bxor 7696 7697) := by core033_kernel_decide
theorem stats7698 : actualRows7698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7698=7428 := by core033_kernel_decide
theorem rows7699 : actualRows7699=WordField.canonicalRows actualModulus 7699 (.shr 7682 10) := by core033_kernel_decide
theorem stats7699 : actualRows7699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7699=4404 := by core033_kernel_decide
theorem rows7700 : actualRows7700=WordField.canonicalRows actualModulus 7700 (.bxor 7698 7699) := by core033_kernel_decide
theorem stats7700 : actualRows7700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7700=7428 := by core033_kernel_decide
theorem rows7701 : actualRows7701=WordField.canonicalRows actualModulus 7701 (.badd 7700 7617) := by core033_kernel_decide
theorem stats7701 : actualRows7701.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7701=5388 := by core033_kernel_decide
theorem rows7702 : actualRows7702=WordField.canonicalRows actualModulus 7702 (.rotr 7513 7) := by core033_kernel_decide
theorem stats7702 : actualRows7702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7702=5124 := by core033_kernel_decide
theorem rows7703 : actualRows7703=WordField.canonicalRows actualModulus 7703 (.rotr 7513 18) := by core033_kernel_decide
theorem stats7703 : actualRows7703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7703=5124 := by core033_kernel_decide
theorem rows7704 : actualRows7704=WordField.canonicalRows actualModulus 7704 (.bxor 7702 7703) := by core033_kernel_decide
theorem stats7704 : actualRows7704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7704=7428 := by core033_kernel_decide
theorem rows7705 : actualRows7705=WordField.canonicalRows actualModulus 7705 (.shr 7513 3) := by core033_kernel_decide
theorem stats7705 : actualRows7705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7705=4908 := by core033_kernel_decide
theorem rows7706 : actualRows7706=WordField.canonicalRows actualModulus 7706 (.bxor 7704 7705) := by core033_kernel_decide
theorem stats7706 : actualRows7706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7706=7428 := by core033_kernel_decide
theorem rows7707 : actualRows7707=WordField.canonicalRows actualModulus 7707 (.badd 7701 7706) := by core033_kernel_decide
theorem stats7707 : actualRows7707.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7707=5388 := by core033_kernel_decide
theorem rows7708 : actualRows7708=WordField.canonicalRows actualModulus 7708 (.badd 7707 7500) := by core033_kernel_decide
theorem stats7708 : actualRows7708.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7708=5388 := by core033_kernel_decide
theorem rows7709 : actualRows7709=WordField.canonicalRows actualModulus 7709 (.rotr 7695 17) := by core033_kernel_decide
theorem stats7709 : actualRows7709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7709=5124 := by core033_kernel_decide
theorem rows7710 : actualRows7710=WordField.canonicalRows actualModulus 7710 (.rotr 7695 19) := by core033_kernel_decide
theorem stats7710 : actualRows7710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7710=5124 := by core033_kernel_decide
theorem rows7711 : actualRows7711=WordField.canonicalRows actualModulus 7711 (.bxor 7709 7710) := by core033_kernel_decide
theorem stats7711 : actualRows7711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7711=7428 := by core033_kernel_decide
def partRows118 : List R1CS.Row := actualRows7648++actualRows7649++actualRows7650++actualRows7651++actualRows7652++actualRows7653++actualRows7654++actualRows7655++actualRows7656++actualRows7657++actualRows7658++actualRows7659++actualRows7660++actualRows7661++actualRows7662++actualRows7663++actualRows7664++actualRows7665++actualRows7666++actualRows7667++actualRows7668++actualRows7669++actualRows7670++actualRows7671++actualRows7672++actualRows7673++actualRows7674++actualRows7675++actualRows7676++actualRows7677++actualRows7678++actualRows7679++actualRows7680++actualRows7681++actualRows7682++actualRows7683++actualRows7684++actualRows7685++actualRows7686++actualRows7687++actualRows7688++actualRows7689++actualRows7690++actualRows7691++actualRows7692++actualRows7693++actualRows7694++actualRows7695++actualRows7696++actualRows7697++actualRows7698++actualRows7699++actualRows7700++actualRows7701++actualRows7702++actualRows7703++actualRows7704++actualRows7705++actualRows7706++actualRows7707++actualRows7708++actualRows7709++actualRows7710++actualRows7711
def partOps118 : List WordIR.Op := [.bxor 7646 7647,.badd 7648 7565,.rotr 7461 7,.rotr 7461 18,.bxor 7650 7651,.shr 7461 3,.bxor 7652 7653,.badd 7649 7654,.badd 7655 6296,.rotr 7643 17,.rotr 7643 19,.bxor 7657 7658,.shr 7643 10,.bxor 7659 7660,.badd 7661 7578,.rotr 7474 7,.rotr 7474 18,.bxor 7663 7664,.shr 7474 3,.bxor 7665 7666,.badd 7662 7667,.badd 7668 7461,.rotr 7656 17,.rotr 7656 19,.bxor 7670 7671,.shr 7656 10,.bxor 7672 7673,.badd 7674 7591,.rotr 7487 7,.rotr 7487 18,.bxor 7676 7677,.shr 7487 3,.bxor 7678 7679,.badd 7675 7680,.badd 7681 7474,.rotr 7669 17,.rotr 7669 19,.bxor 7683 7684,.shr 7669 10,.bxor 7685 7686,.badd 7687 7604,.rotr 7500 7,.rotr 7500 18,.bxor 7689 7690,.shr 7500 3,.bxor 7691 7692,.badd 7688 7693,.badd 7694 7487,.rotr 7682 17,.rotr 7682 19,.bxor 7696 7697,.shr 7682 10,.bxor 7698 7699,.badd 7700 7617,.rotr 7513 7,.rotr 7513 18,.bxor 7702 7703,.shr 7513 3,.bxor 7704 7705,.badd 7701 7706,.badd 7707 7500,.rotr 7695 17,.rotr 7695 19,.bxor 7709 7710]
theorem partExact118 : partRows118=WordField.rows actualModulus 7648 partOps118 := by
  simp only [partRows118,partOps118,WordField.rows,rows7648,rows7649,rows7650,rows7651,rows7652,rows7653,rows7654,rows7655,rows7656,rows7657,rows7658,rows7659,rows7660,rows7661,rows7662,rows7663,rows7664,rows7665,rows7666,rows7667,rows7668,rows7669,rows7670,rows7671,rows7672,rows7673,rows7674,rows7675,rows7676,rows7677,rows7678,rows7679,rows7680,rows7681,rows7682,rows7683,rows7684,rows7685,rows7686,rows7687,rows7688,rows7689,rows7690,rows7691,rows7692,rows7693,rows7694,rows7695,rows7696,rows7697,rows7698,rows7699,rows7700,rows7701,rows7702,rows7703,rows7704,rows7705,rows7706,rows7707,rows7708,rows7709,rows7710,rows7711,List.append_assoc,List.append_nil]
theorem partLength118 : partOps118.length=64 := by decide
theorem partStats118 : partRows118.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows118=374016 := by
  simp only [partRows118,List.length_append,MatrixRowBlocks.rows_weight_append,stats7648.1,stats7648.2,stats7649.1,stats7649.2,stats7650.1,stats7650.2,stats7651.1,stats7651.2,stats7652.1,stats7652.2,stats7653.1,stats7653.2,stats7654.1,stats7654.2,stats7655.1,stats7655.2,stats7656.1,stats7656.2,stats7657.1,stats7657.2,stats7658.1,stats7658.2,stats7659.1,stats7659.2,stats7660.1,stats7660.2,stats7661.1,stats7661.2,stats7662.1,stats7662.2,stats7663.1,stats7663.2,stats7664.1,stats7664.2,stats7665.1,stats7665.2,stats7666.1,stats7666.2,stats7667.1,stats7667.2,stats7668.1,stats7668.2,stats7669.1,stats7669.2,stats7670.1,stats7670.2,stats7671.1,stats7671.2,stats7672.1,stats7672.2,stats7673.1,stats7673.2,stats7674.1,stats7674.2,stats7675.1,stats7675.2,stats7676.1,stats7676.2,stats7677.1,stats7677.2,stats7678.1,stats7678.2,stats7679.1,stats7679.2,stats7680.1,stats7680.2,stats7681.1,stats7681.2,stats7682.1,stats7682.2,stats7683.1,stats7683.2,stats7684.1,stats7684.2,stats7685.1,stats7685.2,stats7686.1,stats7686.2,stats7687.1,stats7687.2,stats7688.1,stats7688.2,stats7689.1,stats7689.2,stats7690.1,stats7690.2,stats7691.1,stats7691.2,stats7692.1,stats7692.2,stats7693.1,stats7693.2,stats7694.1,stats7694.2,stats7695.1,stats7695.2,stats7696.1,stats7696.2,stats7697.1,stats7697.2,stats7698.1,stats7698.2,stats7699.1,stats7699.2,stats7700.1,stats7700.2,stats7701.1,stats7701.2,stats7702.1,stats7702.2,stats7703.1,stats7703.2,stats7704.1,stats7704.2,stats7705.1,stats7705.2,stats7706.1,stats7706.2,stats7707.1,stats7707.2,stats7708.1,stats7708.2,stats7709.1,stats7709.2,stats7710.1,stats7710.2,stats7711.1,stats7711.2]
  decide
end PairedPathRoundCheckedRows
