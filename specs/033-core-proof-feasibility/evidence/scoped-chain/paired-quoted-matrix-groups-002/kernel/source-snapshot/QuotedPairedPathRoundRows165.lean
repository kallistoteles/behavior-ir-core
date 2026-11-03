import QuotedPairedPathRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData166
import PairedPathRoundInstructionMatrixData167
namespace QuotedPairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10656 : actualRows10656=WordField.canonicalRows actualModulus 10656 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10656 : actualRows10656.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10656=2820 := by core033_kernel_decide
theorem rows10657 : actualRows10657=WordField.canonicalRows actualModulus 10657 (.bnot 10656) := by core033_kernel_decide
theorem stats10657 : actualRows10657.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10657=6276 := by core033_kernel_decide
theorem rows10658 : actualRows10658=WordField.canonicalRows actualModulus 10658 (.badd 10655 10657) := by core033_kernel_decide
theorem stats10658 : actualRows10658.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10658=5388 := by core033_kernel_decide
theorem rows10659 : actualRows10659=WordField.canonicalRows actualModulus 10659 (.bnot 10658) := by core033_kernel_decide
theorem stats10659 : actualRows10659.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10659=6276 := by core033_kernel_decide
theorem rows10660 : actualRows10660=WordField.canonicalRows actualModulus 10660 (.band 10654 10659) := by core033_kernel_decide
theorem stats10660 : actualRows10660.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10660=5124 := by core033_kernel_decide
theorem rows10661 : actualRows10661=WordField.canonicalRows actualModulus 10661 (.bxor 10650 10660) := by core033_kernel_decide
theorem stats10661 : actualRows10661.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10661=7428 := by core033_kernel_decide
theorem rows10662 : actualRows10662=WordField.canonicalRows actualModulus 10662 (.shr 10661 31) := by core033_kernel_decide
theorem stats10662 : actualRows10662.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10662=2892 := by core033_kernel_decide
theorem rows10663 : actualRows10663=WordField.canonicalRows actualModulus 10663 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10663 : actualRows10663.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10663=2892 := by core033_kernel_decide
theorem rows10664 : actualRows10664=WordField.canonicalRows actualModulus 10664 (.bxor 10662 10663) := by core033_kernel_decide
theorem stats10664 : actualRows10664.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10664=7428 := by core033_kernel_decide
theorem rows10665 : actualRows10665=WordField.canonicalRows actualModulus 10665 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10665 : actualRows10665.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10665=2892 := by core033_kernel_decide
theorem rows10666 : actualRows10666=WordField.canonicalRows actualModulus 10666 (.badd 9959 10665) := by core033_kernel_decide
theorem stats10666 : actualRows10666.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10666=5388 := by core033_kernel_decide
theorem rows10667 : actualRows10667=WordField.canonicalRows actualModulus 10667 (.bnot 9959) := by core033_kernel_decide
theorem stats10667 : actualRows10667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10667=6276 := by core033_kernel_decide
theorem rows10668 : actualRows10668=WordField.canonicalRows actualModulus 10668 (.literal (BitVec.ofNat 32 255)) := by core033_kernel_decide
theorem stats10668 : actualRows10668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10668=3396 := by core033_kernel_decide
theorem rows10669 : actualRows10669=WordField.canonicalRows actualModulus 10669 (.band 10667 10668) := by core033_kernel_decide
theorem stats10669 : actualRows10669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10669=5124 := by core033_kernel_decide
theorem rows10670 : actualRows10670=WordField.canonicalRows actualModulus 10670 (.shr 9959 8) := by core033_kernel_decide
theorem stats10670 : actualRows10670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10670=4548 := by core033_kernel_decide
theorem rows10671 : actualRows10671=WordField.canonicalRows actualModulus 10671 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10671 : actualRows10671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10671=2820 := by core033_kernel_decide
theorem rows10672 : actualRows10672=WordField.canonicalRows actualModulus 10672 (.bnot 10671) := by core033_kernel_decide
theorem stats10672 : actualRows10672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10672=6276 := by core033_kernel_decide
theorem rows10673 : actualRows10673=WordField.canonicalRows actualModulus 10673 (.band 10670 10672) := by core033_kernel_decide
theorem stats10673 : actualRows10673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10673=5124 := by core033_kernel_decide
theorem rows10674 : actualRows10674=WordField.canonicalRows actualModulus 10674 (.shr 9959 8) := by core033_kernel_decide
theorem stats10674 : actualRows10674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10674=4548 := by core033_kernel_decide
theorem rows10675 : actualRows10675=WordField.canonicalRows actualModulus 10675 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10675 : actualRows10675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10675=2820 := by core033_kernel_decide
theorem rows10676 : actualRows10676=WordField.canonicalRows actualModulus 10676 (.bnot 10675) := by core033_kernel_decide
theorem stats10676 : actualRows10676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10676=6276 := by core033_kernel_decide
theorem rows10677 : actualRows10677=WordField.canonicalRows actualModulus 10677 (.bxor 10674 10676) := by core033_kernel_decide
theorem stats10677 : actualRows10677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10677=7428 := by core033_kernel_decide
theorem rows10678 : actualRows10678=WordField.canonicalRows actualModulus 10678 (.shr 9959 8) := by core033_kernel_decide
theorem stats10678 : actualRows10678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10678=4548 := by core033_kernel_decide
theorem rows10679 : actualRows10679=WordField.canonicalRows actualModulus 10679 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10679 : actualRows10679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10679=2820 := by core033_kernel_decide
theorem rows10680 : actualRows10680=WordField.canonicalRows actualModulus 10680 (.bnot 10679) := by core033_kernel_decide
theorem stats10680 : actualRows10680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10680=6276 := by core033_kernel_decide
theorem rows10681 : actualRows10681=WordField.canonicalRows actualModulus 10681 (.badd 10678 10680) := by core033_kernel_decide
theorem stats10681 : actualRows10681.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10681=5388 := by core033_kernel_decide
theorem rows10682 : actualRows10682=WordField.canonicalRows actualModulus 10682 (.bnot 10681) := by core033_kernel_decide
theorem stats10682 : actualRows10682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10682=6276 := by core033_kernel_decide
theorem rows10683 : actualRows10683=WordField.canonicalRows actualModulus 10683 (.band 10677 10682) := by core033_kernel_decide
theorem stats10683 : actualRows10683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10683=5124 := by core033_kernel_decide
theorem rows10684 : actualRows10684=WordField.canonicalRows actualModulus 10684 (.bxor 10673 10683) := by core033_kernel_decide
theorem stats10684 : actualRows10684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10684=7428 := by core033_kernel_decide
theorem rows10685 : actualRows10685=WordField.canonicalRows actualModulus 10685 (.shr 10684 31) := by core033_kernel_decide
theorem stats10685 : actualRows10685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10685=2892 := by core033_kernel_decide
theorem rows10686 : actualRows10686=WordField.canonicalRows actualModulus 10686 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10686 : actualRows10686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10686=2892 := by core033_kernel_decide
theorem rows10687 : actualRows10687=WordField.canonicalRows actualModulus 10687 (.bxor 10685 10686) := by core033_kernel_decide
theorem stats10687 : actualRows10687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10687=7428 := by core033_kernel_decide
theorem rows10688 : actualRows10688=WordField.canonicalRows actualModulus 10688 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10688 : actualRows10688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10688=2892 := by core033_kernel_decide
theorem rows10689 : actualRows10689=WordField.canonicalRows actualModulus 10689 (.bxor 9959 10688) := by core033_kernel_decide
theorem stats10689 : actualRows10689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10689=7428 := by core033_kernel_decide
theorem rows10690 : actualRows10690=WordField.canonicalRows actualModulus 10690 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10690 : actualRows10690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10690=2820 := by core033_kernel_decide
theorem rows10691 : actualRows10691=WordField.canonicalRows actualModulus 10691 (.bnot 10690) := by core033_kernel_decide
theorem stats10691 : actualRows10691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10691=6276 := by core033_kernel_decide
theorem rows10692 : actualRows10692=WordField.canonicalRows actualModulus 10692 (.band 10689 10691) := by core033_kernel_decide
theorem stats10692 : actualRows10692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10692=5124 := by core033_kernel_decide
theorem rows10693 : actualRows10693=WordField.canonicalRows actualModulus 10693 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10693 : actualRows10693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10693=2892 := by core033_kernel_decide
theorem rows10694 : actualRows10694=WordField.canonicalRows actualModulus 10694 (.bxor 9959 10693) := by core033_kernel_decide
theorem stats10694 : actualRows10694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10694=7428 := by core033_kernel_decide
theorem rows10695 : actualRows10695=WordField.canonicalRows actualModulus 10695 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10695 : actualRows10695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10695=2820 := by core033_kernel_decide
theorem rows10696 : actualRows10696=WordField.canonicalRows actualModulus 10696 (.bnot 10695) := by core033_kernel_decide
theorem stats10696 : actualRows10696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10696=6276 := by core033_kernel_decide
theorem rows10697 : actualRows10697=WordField.canonicalRows actualModulus 10697 (.bxor 10694 10696) := by core033_kernel_decide
theorem stats10697 : actualRows10697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10697=7428 := by core033_kernel_decide
theorem rows10698 : actualRows10698=WordField.canonicalRows actualModulus 10698 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10698 : actualRows10698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10698=2892 := by core033_kernel_decide
theorem rows10699 : actualRows10699=WordField.canonicalRows actualModulus 10699 (.bxor 9959 10698) := by core033_kernel_decide
theorem stats10699 : actualRows10699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10699=7428 := by core033_kernel_decide
theorem rows10700 : actualRows10700=WordField.canonicalRows actualModulus 10700 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10700 : actualRows10700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10700=2820 := by core033_kernel_decide
theorem rows10701 : actualRows10701=WordField.canonicalRows actualModulus 10701 (.bnot 10700) := by core033_kernel_decide
theorem stats10701 : actualRows10701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10701=6276 := by core033_kernel_decide
theorem rows10702 : actualRows10702=WordField.canonicalRows actualModulus 10702 (.badd 10699 10701) := by core033_kernel_decide
theorem stats10702 : actualRows10702.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10702=5388 := by core033_kernel_decide
theorem rows10703 : actualRows10703=WordField.canonicalRows actualModulus 10703 (.bnot 10702) := by core033_kernel_decide
theorem stats10703 : actualRows10703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10703=6276 := by core033_kernel_decide
theorem rows10704 : actualRows10704=WordField.canonicalRows actualModulus 10704 (.band 10697 10703) := by core033_kernel_decide
theorem stats10704 : actualRows10704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10704=5124 := by core033_kernel_decide
theorem rows10705 : actualRows10705=WordField.canonicalRows actualModulus 10705 (.bxor 10692 10704) := by core033_kernel_decide
theorem stats10705 : actualRows10705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10705=7428 := by core033_kernel_decide
theorem rows10706 : actualRows10706=WordField.canonicalRows actualModulus 10706 (.shr 10705 31) := by core033_kernel_decide
theorem stats10706 : actualRows10706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10706=2892 := by core033_kernel_decide
theorem rows10707 : actualRows10707=WordField.canonicalRows actualModulus 10707 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10707 : actualRows10707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10707=2892 := by core033_kernel_decide
theorem rows10708 : actualRows10708=WordField.canonicalRows actualModulus 10708 (.bxor 10706 10707) := by core033_kernel_decide
theorem stats10708 : actualRows10708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10708=7428 := by core033_kernel_decide
theorem rows10709 : actualRows10709=WordField.canonicalRows actualModulus 10709 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10709 : actualRows10709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10709=2892 := by core033_kernel_decide
theorem rows10710 : actualRows10710=WordField.canonicalRows actualModulus 10710 (.bnot 10709) := by core033_kernel_decide
theorem stats10710 : actualRows10710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10710=6276 := by core033_kernel_decide
theorem rows10711 : actualRows10711=WordField.canonicalRows actualModulus 10711 (.band 9959 10710) := by core033_kernel_decide
theorem stats10711 : actualRows10711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10711=5124 := by core033_kernel_decide
theorem rows10712 : actualRows10712=WordField.canonicalRows actualModulus 10712 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10712 : actualRows10712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10712=2892 := by core033_kernel_decide
theorem rows10713 : actualRows10713=WordField.canonicalRows actualModulus 10713 (.bnot 10712) := by core033_kernel_decide
theorem stats10713 : actualRows10713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10713=6276 := by core033_kernel_decide
theorem rows10714 : actualRows10714=WordField.canonicalRows actualModulus 10714 (.bxor 9959 10713) := by core033_kernel_decide
theorem stats10714 : actualRows10714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10714=7428 := by core033_kernel_decide
theorem rows10715 : actualRows10715=WordField.canonicalRows actualModulus 10715 (.literal (BitVec.ofNat 32 256)) := by core033_kernel_decide
theorem stats10715 : actualRows10715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10715=2892 := by core033_kernel_decide
theorem rows10716 : actualRows10716=WordField.canonicalRows actualModulus 10716 (.bnot 10715) := by core033_kernel_decide
theorem stats10716 : actualRows10716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10716=6276 := by core033_kernel_decide
theorem rows10717 : actualRows10717=WordField.canonicalRows actualModulus 10717 (.badd 9959 10716) := by core033_kernel_decide
theorem stats10717 : actualRows10717.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10717=5388 := by core033_kernel_decide
theorem rows10718 : actualRows10718=WordField.canonicalRows actualModulus 10718 (.bnot 10717) := by core033_kernel_decide
theorem stats10718 : actualRows10718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10718=6276 := by core033_kernel_decide
theorem rows10719 : actualRows10719=WordField.canonicalRows actualModulus 10719 (.band 10714 10718) := by core033_kernel_decide
theorem stats10719 : actualRows10719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10719=5124 := by core033_kernel_decide
def partRows165 : List R1CS.Row := actualRows10656++actualRows10657++actualRows10658++actualRows10659++actualRows10660++actualRows10661++actualRows10662++actualRows10663++actualRows10664++actualRows10665++actualRows10666++actualRows10667++actualRows10668++actualRows10669++actualRows10670++actualRows10671++actualRows10672++actualRows10673++actualRows10674++actualRows10675++actualRows10676++actualRows10677++actualRows10678++actualRows10679++actualRows10680++actualRows10681++actualRows10682++actualRows10683++actualRows10684++actualRows10685++actualRows10686++actualRows10687++actualRows10688++actualRows10689++actualRows10690++actualRows10691++actualRows10692++actualRows10693++actualRows10694++actualRows10695++actualRows10696++actualRows10697++actualRows10698++actualRows10699++actualRows10700++actualRows10701++actualRows10702++actualRows10703++actualRows10704++actualRows10705++actualRows10706++actualRows10707++actualRows10708++actualRows10709++actualRows10710++actualRows10711++actualRows10712++actualRows10713++actualRows10714++actualRows10715++actualRows10716++actualRows10717++actualRows10718++actualRows10719
def partOps165 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 10656,.badd 10655 10657,.bnot 10658,.band 10654 10659,.bxor 10650 10660,.shr 10661 31,.literal (BitVec.ofNat 32 1),.bxor 10662 10663,.literal (BitVec.ofNat 32 1),.badd 9959 10665,.bnot 9959,.literal (BitVec.ofNat 32 255),.band 10667 10668,.shr 9959 8,.literal (BitVec.ofNat 32 0),.bnot 10671,.band 10670 10672,.shr 9959 8,.literal (BitVec.ofNat 32 0),.bnot 10675,.bxor 10674 10676,.shr 9959 8,.literal (BitVec.ofNat 32 0),.bnot 10679,.badd 10678 10680,.bnot 10681,.band 10677 10682,.bxor 10673 10683,.shr 10684 31,.literal (BitVec.ofNat 32 1),.bxor 10685 10686,.literal (BitVec.ofNat 32 256),.bxor 9959 10688,.literal (BitVec.ofNat 32 0),.bnot 10690,.band 10689 10691,.literal (BitVec.ofNat 32 256),.bxor 9959 10693,.literal (BitVec.ofNat 32 0),.bnot 10695,.bxor 10694 10696,.literal (BitVec.ofNat 32 256),.bxor 9959 10698,.literal (BitVec.ofNat 32 0),.bnot 10700,.badd 10699 10701,.bnot 10702,.band 10697 10703,.bxor 10692 10704,.shr 10705 31,.literal (BitVec.ofNat 32 1),.bxor 10706 10707,.literal (BitVec.ofNat 32 256),.bnot 10709,.band 9959 10710,.literal (BitVec.ofNat 32 256),.bnot 10712,.bxor 9959 10713,.literal (BitVec.ofNat 32 256),.bnot 10715,.badd 9959 10716,.bnot 10717,.band 10714 10718]
theorem partExact165 : partRows165=WordField.rows actualModulus 10656 partOps165 := by
  simp only [partRows165,partOps165,WordField.rows,rows10656,rows10657,rows10658,rows10659,rows10660,rows10661,rows10662,rows10663,rows10664,rows10665,rows10666,rows10667,rows10668,rows10669,rows10670,rows10671,rows10672,rows10673,rows10674,rows10675,rows10676,rows10677,rows10678,rows10679,rows10680,rows10681,rows10682,rows10683,rows10684,rows10685,rows10686,rows10687,rows10688,rows10689,rows10690,rows10691,rows10692,rows10693,rows10694,rows10695,rows10696,rows10697,rows10698,rows10699,rows10700,rows10701,rows10702,rows10703,rows10704,rows10705,rows10706,rows10707,rows10708,rows10709,rows10710,rows10711,rows10712,rows10713,rows10714,rows10715,rows10716,rows10717,rows10718,rows10719,List.append_assoc,List.append_nil]
theorem partLength165 : partOps165.length=64 := by decide
theorem partStats165 : partRows165.length=2181 ∧ MatrixRowBlocks.rowsWeight partRows165=325584 := by
  simp only [partRows165,List.length_append,MatrixRowBlocks.rows_weight_append,stats10656.1,stats10656.2,stats10657.1,stats10657.2,stats10658.1,stats10658.2,stats10659.1,stats10659.2,stats10660.1,stats10660.2,stats10661.1,stats10661.2,stats10662.1,stats10662.2,stats10663.1,stats10663.2,stats10664.1,stats10664.2,stats10665.1,stats10665.2,stats10666.1,stats10666.2,stats10667.1,stats10667.2,stats10668.1,stats10668.2,stats10669.1,stats10669.2,stats10670.1,stats10670.2,stats10671.1,stats10671.2,stats10672.1,stats10672.2,stats10673.1,stats10673.2,stats10674.1,stats10674.2,stats10675.1,stats10675.2,stats10676.1,stats10676.2,stats10677.1,stats10677.2,stats10678.1,stats10678.2,stats10679.1,stats10679.2,stats10680.1,stats10680.2,stats10681.1,stats10681.2,stats10682.1,stats10682.2,stats10683.1,stats10683.2,stats10684.1,stats10684.2,stats10685.1,stats10685.2,stats10686.1,stats10686.2,stats10687.1,stats10687.2,stats10688.1,stats10688.2,stats10689.1,stats10689.2,stats10690.1,stats10690.2,stats10691.1,stats10691.2,stats10692.1,stats10692.2,stats10693.1,stats10693.2,stats10694.1,stats10694.2,stats10695.1,stats10695.2,stats10696.1,stats10696.2,stats10697.1,stats10697.2,stats10698.1,stats10698.2,stats10699.1,stats10699.2,stats10700.1,stats10700.2,stats10701.1,stats10701.2,stats10702.1,stats10702.2,stats10703.1,stats10703.2,stats10704.1,stats10704.2,stats10705.1,stats10705.2,stats10706.1,stats10706.2,stats10707.1,stats10707.2,stats10708.1,stats10708.2,stats10709.1,stats10709.2,stats10710.1,stats10710.2,stats10711.1,stats10711.2,stats10712.1,stats10712.2,stats10713.1,stats10713.2,stats10714.1,stats10714.2,stats10715.1,stats10715.2,stats10716.1,stats10716.2,stats10717.1,stats10717.2,stats10718.1,stats10718.2,stats10719.1,stats10719.2]
  decide
end QuotedPairedPathRoundCheckedRows
