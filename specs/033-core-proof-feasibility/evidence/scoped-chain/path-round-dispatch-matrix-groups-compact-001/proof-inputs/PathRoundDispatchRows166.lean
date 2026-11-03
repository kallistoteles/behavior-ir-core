import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData166
import PathRoundDispatchInstructionMatrixData167
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10667 : actualRows10667=WordField.canonicalRows actualModulus 10667 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10667 : actualRows10667.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10667=2964 := by core033_kernel_decide
theorem rows10668 : actualRows10668=WordField.canonicalRows actualModulus 10668 (.bxor 0 10667) := by core033_kernel_decide
theorem stats10668 : actualRows10668.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10668=7428 := by core033_kernel_decide
theorem rows10669 : actualRows10669=WordField.canonicalRows actualModulus 10669 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10669 : actualRows10669.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10669=2820 := by core033_kernel_decide
theorem rows10670 : actualRows10670=WordField.canonicalRows actualModulus 10670 (.bnot 10669) := by core033_kernel_decide
theorem stats10670 : actualRows10670.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10670=6276 := by core033_kernel_decide
theorem rows10671 : actualRows10671=WordField.canonicalRows actualModulus 10671 (.band 10668 10670) := by core033_kernel_decide
theorem stats10671 : actualRows10671.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10671=5124 := by core033_kernel_decide
theorem rows10672 : actualRows10672=WordField.canonicalRows actualModulus 10672 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10672 : actualRows10672.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10672=2964 := by core033_kernel_decide
theorem rows10673 : actualRows10673=WordField.canonicalRows actualModulus 10673 (.bxor 0 10672) := by core033_kernel_decide
theorem stats10673 : actualRows10673.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10673=7428 := by core033_kernel_decide
theorem rows10674 : actualRows10674=WordField.canonicalRows actualModulus 10674 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10674 : actualRows10674.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10674=2820 := by core033_kernel_decide
theorem rows10675 : actualRows10675=WordField.canonicalRows actualModulus 10675 (.bnot 10674) := by core033_kernel_decide
theorem stats10675 : actualRows10675.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10675=6276 := by core033_kernel_decide
theorem rows10676 : actualRows10676=WordField.canonicalRows actualModulus 10676 (.bxor 10673 10675) := by core033_kernel_decide
theorem stats10676 : actualRows10676.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10676=7428 := by core033_kernel_decide
theorem rows10677 : actualRows10677=WordField.canonicalRows actualModulus 10677 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10677 : actualRows10677.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10677=2964 := by core033_kernel_decide
theorem rows10678 : actualRows10678=WordField.canonicalRows actualModulus 10678 (.bxor 0 10677) := by core033_kernel_decide
theorem stats10678 : actualRows10678.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10678=7428 := by core033_kernel_decide
theorem rows10679 : actualRows10679=WordField.canonicalRows actualModulus 10679 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10679 : actualRows10679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10679=2820 := by core033_kernel_decide
theorem rows10680 : actualRows10680=WordField.canonicalRows actualModulus 10680 (.bnot 10679) := by core033_kernel_decide
theorem stats10680 : actualRows10680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10680=6276 := by core033_kernel_decide
theorem rows10681 : actualRows10681=WordField.canonicalRows actualModulus 10681 (.badd 10678 10680) := by core033_kernel_decide
theorem stats10681 : actualRows10681.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10681=5388 := by core033_kernel_decide
theorem rows10682 : actualRows10682=WordField.canonicalRows actualModulus 10682 (.bnot 10681) := by core033_kernel_decide
theorem stats10682 : actualRows10682.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10682=6276 := by core033_kernel_decide
theorem rows10683 : actualRows10683=WordField.canonicalRows actualModulus 10683 (.band 10676 10682) := by core033_kernel_decide
theorem stats10683 : actualRows10683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10683=5124 := by core033_kernel_decide
theorem rows10684 : actualRows10684=WordField.canonicalRows actualModulus 10684 (.bxor 10671 10683) := by core033_kernel_decide
theorem stats10684 : actualRows10684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10684=7428 := by core033_kernel_decide
theorem rows10685 : actualRows10685=WordField.canonicalRows actualModulus 10685 (.shr 10684 31) := by core033_kernel_decide
theorem stats10685 : actualRows10685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10685=2892 := by core033_kernel_decide
theorem rows10686 : actualRows10686=WordField.canonicalRows actualModulus 10686 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10686 : actualRows10686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10686=2892 := by core033_kernel_decide
theorem rows10687 : actualRows10687=WordField.canonicalRows actualModulus 10687 (.bxor 10685 10686) := by core033_kernel_decide
theorem stats10687 : actualRows10687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10687=7428 := by core033_kernel_decide
theorem rows10688 : actualRows10688=WordField.canonicalRows actualModulus 10688 (.bnot 10687) := by core033_kernel_decide
theorem stats10688 : actualRows10688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10688=6276 := by core033_kernel_decide
theorem rows10689 : actualRows10689=WordField.canonicalRows actualModulus 10689 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10689 : actualRows10689.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10689=2892 := by core033_kernel_decide
theorem rows10690 : actualRows10690=WordField.canonicalRows actualModulus 10690 (.badd 10688 10689) := by core033_kernel_decide
theorem stats10690 : actualRows10690.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10690=5388 := by core033_kernel_decide
theorem rows10691 : actualRows10691=WordField.canonicalRows actualModulus 10691 (.bnot 10690) := by core033_kernel_decide
theorem stats10691 : actualRows10691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10691=6276 := by core033_kernel_decide
theorem rows10692 : actualRows10692=WordField.canonicalRows actualModulus 10692 (.band 10691 184) := by core033_kernel_decide
theorem stats10692 : actualRows10692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10692=5124 := by core033_kernel_decide
theorem rows10693 : actualRows10693=WordField.canonicalRows actualModulus 10693 (.bxor 10666 10692) := by core033_kernel_decide
theorem stats10693 : actualRows10693.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10693=7428 := by core033_kernel_decide
theorem rows10694 : actualRows10694=WordField.canonicalRows actualModulus 10694 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10694 : actualRows10694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10694=2964 := by core033_kernel_decide
theorem rows10695 : actualRows10695=WordField.canonicalRows actualModulus 10695 (.bxor 0 10694) := by core033_kernel_decide
theorem stats10695 : actualRows10695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10695=7428 := by core033_kernel_decide
theorem rows10696 : actualRows10696=WordField.canonicalRows actualModulus 10696 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10696 : actualRows10696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10696=2820 := by core033_kernel_decide
theorem rows10697 : actualRows10697=WordField.canonicalRows actualModulus 10697 (.bnot 10696) := by core033_kernel_decide
theorem stats10697 : actualRows10697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10697=6276 := by core033_kernel_decide
theorem rows10698 : actualRows10698=WordField.canonicalRows actualModulus 10698 (.band 10695 10697) := by core033_kernel_decide
theorem stats10698 : actualRows10698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10698=5124 := by core033_kernel_decide
theorem rows10699 : actualRows10699=WordField.canonicalRows actualModulus 10699 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10699 : actualRows10699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10699=2964 := by core033_kernel_decide
theorem rows10700 : actualRows10700=WordField.canonicalRows actualModulus 10700 (.bxor 0 10699) := by core033_kernel_decide
theorem stats10700 : actualRows10700.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10700=7428 := by core033_kernel_decide
theorem rows10701 : actualRows10701=WordField.canonicalRows actualModulus 10701 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10701 : actualRows10701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10701=2820 := by core033_kernel_decide
theorem rows10702 : actualRows10702=WordField.canonicalRows actualModulus 10702 (.bnot 10701) := by core033_kernel_decide
theorem stats10702 : actualRows10702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10702=6276 := by core033_kernel_decide
theorem rows10703 : actualRows10703=WordField.canonicalRows actualModulus 10703 (.bxor 10700 10702) := by core033_kernel_decide
theorem stats10703 : actualRows10703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10703=7428 := by core033_kernel_decide
theorem rows10704 : actualRows10704=WordField.canonicalRows actualModulus 10704 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10704 : actualRows10704.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10704=2964 := by core033_kernel_decide
theorem rows10705 : actualRows10705=WordField.canonicalRows actualModulus 10705 (.bxor 0 10704) := by core033_kernel_decide
theorem stats10705 : actualRows10705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10705=7428 := by core033_kernel_decide
theorem rows10706 : actualRows10706=WordField.canonicalRows actualModulus 10706 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10706 : actualRows10706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10706=2820 := by core033_kernel_decide
theorem rows10707 : actualRows10707=WordField.canonicalRows actualModulus 10707 (.bnot 10706) := by core033_kernel_decide
theorem stats10707 : actualRows10707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10707=6276 := by core033_kernel_decide
theorem rows10708 : actualRows10708=WordField.canonicalRows actualModulus 10708 (.badd 10705 10707) := by core033_kernel_decide
theorem stats10708 : actualRows10708.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10708=5388 := by core033_kernel_decide
theorem rows10709 : actualRows10709=WordField.canonicalRows actualModulus 10709 (.bnot 10708) := by core033_kernel_decide
theorem stats10709 : actualRows10709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10709=6276 := by core033_kernel_decide
theorem rows10710 : actualRows10710=WordField.canonicalRows actualModulus 10710 (.band 10703 10709) := by core033_kernel_decide
theorem stats10710 : actualRows10710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10710=5124 := by core033_kernel_decide
theorem rows10711 : actualRows10711=WordField.canonicalRows actualModulus 10711 (.bxor 10698 10710) := by core033_kernel_decide
theorem stats10711 : actualRows10711.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10711=7428 := by core033_kernel_decide
theorem rows10712 : actualRows10712=WordField.canonicalRows actualModulus 10712 (.shr 10711 31) := by core033_kernel_decide
theorem stats10712 : actualRows10712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10712=2892 := by core033_kernel_decide
theorem rows10713 : actualRows10713=WordField.canonicalRows actualModulus 10713 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10713 : actualRows10713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10713=2892 := by core033_kernel_decide
theorem rows10714 : actualRows10714=WordField.canonicalRows actualModulus 10714 (.bxor 10712 10713) := by core033_kernel_decide
theorem stats10714 : actualRows10714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10714=7428 := by core033_kernel_decide
theorem rows10715 : actualRows10715=WordField.canonicalRows actualModulus 10715 (.bnot 10714) := by core033_kernel_decide
theorem stats10715 : actualRows10715.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10715=6276 := by core033_kernel_decide
theorem rows10716 : actualRows10716=WordField.canonicalRows actualModulus 10716 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10716 : actualRows10716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10716=2892 := by core033_kernel_decide
theorem rows10717 : actualRows10717=WordField.canonicalRows actualModulus 10717 (.badd 10715 10716) := by core033_kernel_decide
theorem stats10717 : actualRows10717.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10717=5388 := by core033_kernel_decide
theorem rows10718 : actualRows10718=WordField.canonicalRows actualModulus 10718 (.band 10717 9516) := by core033_kernel_decide
theorem stats10718 : actualRows10718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10718=5124 := by core033_kernel_decide
theorem rows10719 : actualRows10719=WordField.canonicalRows actualModulus 10719 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10719 : actualRows10719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10719=2964 := by core033_kernel_decide
theorem rows10720 : actualRows10720=WordField.canonicalRows actualModulus 10720 (.bxor 0 10719) := by core033_kernel_decide
theorem stats10720 : actualRows10720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10720=7428 := by core033_kernel_decide
theorem rows10721 : actualRows10721=WordField.canonicalRows actualModulus 10721 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10721 : actualRows10721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10721=2820 := by core033_kernel_decide
theorem rows10722 : actualRows10722=WordField.canonicalRows actualModulus 10722 (.bnot 10721) := by core033_kernel_decide
theorem stats10722 : actualRows10722.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10722=6276 := by core033_kernel_decide
theorem rows10723 : actualRows10723=WordField.canonicalRows actualModulus 10723 (.band 10720 10722) := by core033_kernel_decide
theorem stats10723 : actualRows10723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10723=5124 := by core033_kernel_decide
theorem rows10724 : actualRows10724=WordField.canonicalRows actualModulus 10724 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10724 : actualRows10724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10724=2964 := by core033_kernel_decide
theorem rows10725 : actualRows10725=WordField.canonicalRows actualModulus 10725 (.bxor 0 10724) := by core033_kernel_decide
theorem stats10725 : actualRows10725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10725=7428 := by core033_kernel_decide
theorem rows10726 : actualRows10726=WordField.canonicalRows actualModulus 10726 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10726 : actualRows10726.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10726=2820 := by core033_kernel_decide
theorem rows10727 : actualRows10727=WordField.canonicalRows actualModulus 10727 (.bnot 10726) := by core033_kernel_decide
theorem stats10727 : actualRows10727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10727=6276 := by core033_kernel_decide
theorem rows10728 : actualRows10728=WordField.canonicalRows actualModulus 10728 (.bxor 10725 10727) := by core033_kernel_decide
theorem stats10728 : actualRows10728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10728=7428 := by core033_kernel_decide
theorem rows10729 : actualRows10729=WordField.canonicalRows actualModulus 10729 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats10729 : actualRows10729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10729=2964 := by core033_kernel_decide
theorem rows10730 : actualRows10730=WordField.canonicalRows actualModulus 10730 (.bxor 0 10729) := by core033_kernel_decide
theorem stats10730 : actualRows10730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10730=7428 := by core033_kernel_decide
def partRows166 : List R1CS.Row := actualRows10667++actualRows10668++actualRows10669++actualRows10670++actualRows10671++actualRows10672++actualRows10673++actualRows10674++actualRows10675++actualRows10676++actualRows10677++actualRows10678++actualRows10679++actualRows10680++actualRows10681++actualRows10682++actualRows10683++actualRows10684++actualRows10685++actualRows10686++actualRows10687++actualRows10688++actualRows10689++actualRows10690++actualRows10691++actualRows10692++actualRows10693++actualRows10694++actualRows10695++actualRows10696++actualRows10697++actualRows10698++actualRows10699++actualRows10700++actualRows10701++actualRows10702++actualRows10703++actualRows10704++actualRows10705++actualRows10706++actualRows10707++actualRows10708++actualRows10709++actualRows10710++actualRows10711++actualRows10712++actualRows10713++actualRows10714++actualRows10715++actualRows10716++actualRows10717++actualRows10718++actualRows10719++actualRows10720++actualRows10721++actualRows10722++actualRows10723++actualRows10724++actualRows10725++actualRows10726++actualRows10727++actualRows10728++actualRows10729++actualRows10730
def partOps166 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 0 10667,.literal (BitVec.ofNat 32 0),.bnot 10669,.band 10668 10670,.literal (BitVec.ofNat 32 3),.bxor 0 10672,.literal (BitVec.ofNat 32 0),.bnot 10674,.bxor 10673 10675,.literal (BitVec.ofNat 32 3),.bxor 0 10677,.literal (BitVec.ofNat 32 0),.bnot 10679,.badd 10678 10680,.bnot 10681,.band 10676 10682,.bxor 10671 10683,.shr 10684 31,.literal (BitVec.ofNat 32 1),.bxor 10685 10686,.bnot 10687,.literal (BitVec.ofNat 32 1),.badd 10688 10689,.bnot 10690,.band 10691 184,.bxor 10666 10692,.literal (BitVec.ofNat 32 3),.bxor 0 10694,.literal (BitVec.ofNat 32 0),.bnot 10696,.band 10695 10697,.literal (BitVec.ofNat 32 3),.bxor 0 10699,.literal (BitVec.ofNat 32 0),.bnot 10701,.bxor 10700 10702,.literal (BitVec.ofNat 32 3),.bxor 0 10704,.literal (BitVec.ofNat 32 0),.bnot 10706,.badd 10705 10707,.bnot 10708,.band 10703 10709,.bxor 10698 10710,.shr 10711 31,.literal (BitVec.ofNat 32 1),.bxor 10712 10713,.bnot 10714,.literal (BitVec.ofNat 32 1),.badd 10715 10716,.band 10717 9516,.literal (BitVec.ofNat 32 3),.bxor 0 10719,.literal (BitVec.ofNat 32 0),.bnot 10721,.band 10720 10722,.literal (BitVec.ofNat 32 3),.bxor 0 10724,.literal (BitVec.ofNat 32 0),.bnot 10726,.bxor 10725 10727,.literal (BitVec.ofNat 32 3),.bxor 0 10729]
theorem partExact166 : partRows166=WordField.rows actualModulus 10667 partOps166 := by
  simp only [partRows166,partOps166,WordField.rows,rows10667,rows10668,rows10669,rows10670,rows10671,rows10672,rows10673,rows10674,rows10675,rows10676,rows10677,rows10678,rows10679,rows10680,rows10681,rows10682,rows10683,rows10684,rows10685,rows10686,rows10687,rows10688,rows10689,rows10690,rows10691,rows10692,rows10693,rows10694,rows10695,rows10696,rows10697,rows10698,rows10699,rows10700,rows10701,rows10702,rows10703,rows10704,rows10705,rows10706,rows10707,rows10708,rows10709,rows10710,rows10711,rows10712,rows10713,rows10714,rows10715,rows10716,rows10717,rows10718,rows10719,rows10720,rows10721,rows10722,rows10723,rows10724,rows10725,rows10726,rows10727,rows10728,rows10729,rows10730,List.append_assoc,List.append_nil]
theorem partLength166 : partOps166.length=64 := by decide
theorem partStats166 : partRows166.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows166=331872 := by
  simp only [partRows166,List.length_append,MatrixRowBlocks.rows_weight_append,stats10667.1,stats10667.2,stats10668.1,stats10668.2,stats10669.1,stats10669.2,stats10670.1,stats10670.2,stats10671.1,stats10671.2,stats10672.1,stats10672.2,stats10673.1,stats10673.2,stats10674.1,stats10674.2,stats10675.1,stats10675.2,stats10676.1,stats10676.2,stats10677.1,stats10677.2,stats10678.1,stats10678.2,stats10679.1,stats10679.2,stats10680.1,stats10680.2,stats10681.1,stats10681.2,stats10682.1,stats10682.2,stats10683.1,stats10683.2,stats10684.1,stats10684.2,stats10685.1,stats10685.2,stats10686.1,stats10686.2,stats10687.1,stats10687.2,stats10688.1,stats10688.2,stats10689.1,stats10689.2,stats10690.1,stats10690.2,stats10691.1,stats10691.2,stats10692.1,stats10692.2,stats10693.1,stats10693.2,stats10694.1,stats10694.2,stats10695.1,stats10695.2,stats10696.1,stats10696.2,stats10697.1,stats10697.2,stats10698.1,stats10698.2,stats10699.1,stats10699.2,stats10700.1,stats10700.2,stats10701.1,stats10701.2,stats10702.1,stats10702.2,stats10703.1,stats10703.2,stats10704.1,stats10704.2,stats10705.1,stats10705.2,stats10706.1,stats10706.2,stats10707.1,stats10707.2,stats10708.1,stats10708.2,stats10709.1,stats10709.2,stats10710.1,stats10710.2,stats10711.1,stats10711.2,stats10712.1,stats10712.2,stats10713.1,stats10713.2,stats10714.1,stats10714.2,stats10715.1,stats10715.2,stats10716.1,stats10716.2,stats10717.1,stats10717.2,stats10718.1,stats10718.2,stats10719.1,stats10719.2,stats10720.1,stats10720.2,stats10721.1,stats10721.2,stats10722.1,stats10722.2,stats10723.1,stats10723.2,stats10724.1,stats10724.2,stats10725.1,stats10725.2,stats10726.1,stats10726.2,stats10727.1,stats10727.2,stats10728.1,stats10728.2,stats10729.1,stats10729.2,stats10730.1,stats10730.2]
  decide
end PathRoundDispatchCheckedRows
