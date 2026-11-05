import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData166
import AuthenticatedBranchRoundInstructionMatrixData167
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows10678 : actualRows10678=WordField.canonicalRows actualModulus 10678 (.badd 10676 10677) := by core033_kernel_decide
theorem stats10678 : actualRows10678.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10678=5388 := by core033_kernel_decide
theorem rows10679 : actualRows10679=WordField.canonicalRows actualModulus 10679 (.band 10678 759) := by core033_kernel_decide
theorem stats10679 : actualRows10679.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10679=5124 := by core033_kernel_decide
theorem rows10680 : actualRows10680=WordField.canonicalRows actualModulus 10680 (.bnot 10609) := by core033_kernel_decide
theorem stats10680 : actualRows10680.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10680=6276 := by core033_kernel_decide
theorem rows10681 : actualRows10681=WordField.canonicalRows actualModulus 10681 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10681 : actualRows10681.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10681=2892 := by core033_kernel_decide
theorem rows10682 : actualRows10682=WordField.canonicalRows actualModulus 10682 (.badd 10680 10681) := by core033_kernel_decide
theorem stats10682 : actualRows10682.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10682=5388 := by core033_kernel_decide
theorem rows10683 : actualRows10683=WordField.canonicalRows actualModulus 10683 (.bnot 10682) := by core033_kernel_decide
theorem stats10683 : actualRows10683.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10683=6276 := by core033_kernel_decide
theorem rows10684 : actualRows10684=WordField.canonicalRows actualModulus 10684 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10684 : actualRows10684.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10684=2820 := by core033_kernel_decide
theorem rows10685 : actualRows10685=WordField.canonicalRows actualModulus 10685 (.band 10683 10684) := by core033_kernel_decide
theorem stats10685 : actualRows10685.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10685=5124 := by core033_kernel_decide
theorem rows10686 : actualRows10686=WordField.canonicalRows actualModulus 10686 (.bxor 10679 10685) := by core033_kernel_decide
theorem stats10686 : actualRows10686.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10686=7428 := by core033_kernel_decide
theorem rows10687 : actualRows10687=WordField.canonicalRows actualModulus 10687 (.bnot 10609) := by core033_kernel_decide
theorem stats10687 : actualRows10687.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10687=6276 := by core033_kernel_decide
theorem rows10688 : actualRows10688=WordField.canonicalRows actualModulus 10688 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10688 : actualRows10688.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10688=2892 := by core033_kernel_decide
theorem rows10689 : actualRows10689=WordField.canonicalRows actualModulus 10689 (.badd 10687 10688) := by core033_kernel_decide
theorem stats10689 : actualRows10689.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10689=5388 := by core033_kernel_decide
theorem rows10690 : actualRows10690=WordField.canonicalRows actualModulus 10690 (.band 10689 770) := by core033_kernel_decide
theorem stats10690 : actualRows10690.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10690=5124 := by core033_kernel_decide
theorem rows10691 : actualRows10691=WordField.canonicalRows actualModulus 10691 (.bnot 10609) := by core033_kernel_decide
theorem stats10691 : actualRows10691.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10691=6276 := by core033_kernel_decide
theorem rows10692 : actualRows10692=WordField.canonicalRows actualModulus 10692 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10692 : actualRows10692.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10692=2892 := by core033_kernel_decide
theorem rows10693 : actualRows10693=WordField.canonicalRows actualModulus 10693 (.badd 10691 10692) := by core033_kernel_decide
theorem stats10693 : actualRows10693.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10693=5388 := by core033_kernel_decide
theorem rows10694 : actualRows10694=WordField.canonicalRows actualModulus 10694 (.bnot 10693) := by core033_kernel_decide
theorem stats10694 : actualRows10694.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10694=6276 := by core033_kernel_decide
theorem rows10695 : actualRows10695=WordField.canonicalRows actualModulus 10695 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10695 : actualRows10695.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10695=2820 := by core033_kernel_decide
theorem rows10696 : actualRows10696=WordField.canonicalRows actualModulus 10696 (.band 10694 10695) := by core033_kernel_decide
theorem stats10696 : actualRows10696.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10696=5124 := by core033_kernel_decide
theorem rows10697 : actualRows10697=WordField.canonicalRows actualModulus 10697 (.bxor 10690 10696) := by core033_kernel_decide
theorem stats10697 : actualRows10697.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10697=7428 := by core033_kernel_decide
theorem rows10698 : actualRows10698=WordField.canonicalRows actualModulus 10698 (.bnot 10609) := by core033_kernel_decide
theorem stats10698 : actualRows10698.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10698=6276 := by core033_kernel_decide
theorem rows10699 : actualRows10699=WordField.canonicalRows actualModulus 10699 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10699 : actualRows10699.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10699=2892 := by core033_kernel_decide
theorem rows10700 : actualRows10700=WordField.canonicalRows actualModulus 10700 (.badd 10698 10699) := by core033_kernel_decide
theorem stats10700 : actualRows10700.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10700=5388 := by core033_kernel_decide
theorem rows10701 : actualRows10701=WordField.canonicalRows actualModulus 10701 (.band 10700 781) := by core033_kernel_decide
theorem stats10701 : actualRows10701.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10701=5124 := by core033_kernel_decide
theorem rows10702 : actualRows10702=WordField.canonicalRows actualModulus 10702 (.bnot 10609) := by core033_kernel_decide
theorem stats10702 : actualRows10702.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10702=6276 := by core033_kernel_decide
theorem rows10703 : actualRows10703=WordField.canonicalRows actualModulus 10703 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10703 : actualRows10703.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10703=2892 := by core033_kernel_decide
theorem rows10704 : actualRows10704=WordField.canonicalRows actualModulus 10704 (.badd 10702 10703) := by core033_kernel_decide
theorem stats10704 : actualRows10704.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10704=5388 := by core033_kernel_decide
theorem rows10705 : actualRows10705=WordField.canonicalRows actualModulus 10705 (.bnot 10704) := by core033_kernel_decide
theorem stats10705 : actualRows10705.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10705=6276 := by core033_kernel_decide
theorem rows10706 : actualRows10706=WordField.canonicalRows actualModulus 10706 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10706 : actualRows10706.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10706=2820 := by core033_kernel_decide
theorem rows10707 : actualRows10707=WordField.canonicalRows actualModulus 10707 (.band 10705 10706) := by core033_kernel_decide
theorem stats10707 : actualRows10707.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10707=5124 := by core033_kernel_decide
theorem rows10708 : actualRows10708=WordField.canonicalRows actualModulus 10708 (.bxor 10701 10707) := by core033_kernel_decide
theorem stats10708 : actualRows10708.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10708=7428 := by core033_kernel_decide
theorem rows10709 : actualRows10709=WordField.canonicalRows actualModulus 10709 (.bnot 10609) := by core033_kernel_decide
theorem stats10709 : actualRows10709.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10709=6276 := by core033_kernel_decide
theorem rows10710 : actualRows10710=WordField.canonicalRows actualModulus 10710 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10710 : actualRows10710.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10710=2892 := by core033_kernel_decide
theorem rows10711 : actualRows10711=WordField.canonicalRows actualModulus 10711 (.badd 10709 10710) := by core033_kernel_decide
theorem stats10711 : actualRows10711.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10711=5388 := by core033_kernel_decide
theorem rows10712 : actualRows10712=WordField.canonicalRows actualModulus 10712 (.band 10711 792) := by core033_kernel_decide
theorem stats10712 : actualRows10712.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10712=5124 := by core033_kernel_decide
theorem rows10713 : actualRows10713=WordField.canonicalRows actualModulus 10713 (.bnot 10609) := by core033_kernel_decide
theorem stats10713 : actualRows10713.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10713=6276 := by core033_kernel_decide
theorem rows10714 : actualRows10714=WordField.canonicalRows actualModulus 10714 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10714 : actualRows10714.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10714=2892 := by core033_kernel_decide
theorem rows10715 : actualRows10715=WordField.canonicalRows actualModulus 10715 (.badd 10713 10714) := by core033_kernel_decide
theorem stats10715 : actualRows10715.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10715=5388 := by core033_kernel_decide
theorem rows10716 : actualRows10716=WordField.canonicalRows actualModulus 10716 (.bnot 10715) := by core033_kernel_decide
theorem stats10716 : actualRows10716.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10716=6276 := by core033_kernel_decide
theorem rows10717 : actualRows10717=WordField.canonicalRows actualModulus 10717 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10717 : actualRows10717.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10717=2820 := by core033_kernel_decide
theorem rows10718 : actualRows10718=WordField.canonicalRows actualModulus 10718 (.band 10716 10717) := by core033_kernel_decide
theorem stats10718 : actualRows10718.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10718=5124 := by core033_kernel_decide
theorem rows10719 : actualRows10719=WordField.canonicalRows actualModulus 10719 (.bxor 10712 10718) := by core033_kernel_decide
theorem stats10719 : actualRows10719.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10719=7428 := by core033_kernel_decide
theorem rows10720 : actualRows10720=WordField.canonicalRows actualModulus 10720 (.bnot 10609) := by core033_kernel_decide
theorem stats10720 : actualRows10720.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10720=6276 := by core033_kernel_decide
theorem rows10721 : actualRows10721=WordField.canonicalRows actualModulus 10721 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10721 : actualRows10721.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10721=2892 := by core033_kernel_decide
theorem rows10722 : actualRows10722=WordField.canonicalRows actualModulus 10722 (.badd 10720 10721) := by core033_kernel_decide
theorem stats10722 : actualRows10722.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10722=5388 := by core033_kernel_decide
theorem rows10723 : actualRows10723=WordField.canonicalRows actualModulus 10723 (.band 10722 803) := by core033_kernel_decide
theorem stats10723 : actualRows10723.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10723=5124 := by core033_kernel_decide
theorem rows10724 : actualRows10724=WordField.canonicalRows actualModulus 10724 (.bnot 10609) := by core033_kernel_decide
theorem stats10724 : actualRows10724.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10724=6276 := by core033_kernel_decide
theorem rows10725 : actualRows10725=WordField.canonicalRows actualModulus 10725 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10725 : actualRows10725.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10725=2892 := by core033_kernel_decide
theorem rows10726 : actualRows10726=WordField.canonicalRows actualModulus 10726 (.badd 10724 10725) := by core033_kernel_decide
theorem stats10726 : actualRows10726.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10726=5388 := by core033_kernel_decide
theorem rows10727 : actualRows10727=WordField.canonicalRows actualModulus 10727 (.bnot 10726) := by core033_kernel_decide
theorem stats10727 : actualRows10727.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10727=6276 := by core033_kernel_decide
theorem rows10728 : actualRows10728=WordField.canonicalRows actualModulus 10728 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10728 : actualRows10728.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10728=2820 := by core033_kernel_decide
theorem rows10729 : actualRows10729=WordField.canonicalRows actualModulus 10729 (.band 10727 10728) := by core033_kernel_decide
theorem stats10729 : actualRows10729.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10729=5124 := by core033_kernel_decide
theorem rows10730 : actualRows10730=WordField.canonicalRows actualModulus 10730 (.bxor 10723 10729) := by core033_kernel_decide
theorem stats10730 : actualRows10730.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10730=7428 := by core033_kernel_decide
theorem rows10731 : actualRows10731=WordField.canonicalRows actualModulus 10731 (.bnot 10609) := by core033_kernel_decide
theorem stats10731 : actualRows10731.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10731=6276 := by core033_kernel_decide
theorem rows10732 : actualRows10732=WordField.canonicalRows actualModulus 10732 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10732 : actualRows10732.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10732=2892 := by core033_kernel_decide
theorem rows10733 : actualRows10733=WordField.canonicalRows actualModulus 10733 (.badd 10731 10732) := by core033_kernel_decide
theorem stats10733 : actualRows10733.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10733=5388 := by core033_kernel_decide
theorem rows10734 : actualRows10734=WordField.canonicalRows actualModulus 10734 (.band 10733 823) := by core033_kernel_decide
theorem stats10734 : actualRows10734.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10734=5124 := by core033_kernel_decide
theorem rows10735 : actualRows10735=WordField.canonicalRows actualModulus 10735 (.bnot 10609) := by core033_kernel_decide
theorem stats10735 : actualRows10735.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10735=6276 := by core033_kernel_decide
theorem rows10736 : actualRows10736=WordField.canonicalRows actualModulus 10736 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats10736 : actualRows10736.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10736=2892 := by core033_kernel_decide
theorem rows10737 : actualRows10737=WordField.canonicalRows actualModulus 10737 (.badd 10735 10736) := by core033_kernel_decide
theorem stats10737 : actualRows10737.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows10737=5388 := by core033_kernel_decide
theorem rows10738 : actualRows10738=WordField.canonicalRows actualModulus 10738 (.bnot 10737) := by core033_kernel_decide
theorem stats10738 : actualRows10738.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10738=6276 := by core033_kernel_decide
theorem rows10739 : actualRows10739=WordField.canonicalRows actualModulus 10739 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats10739 : actualRows10739.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10739=2820 := by core033_kernel_decide
theorem rows10740 : actualRows10740=WordField.canonicalRows actualModulus 10740 (.band 10738 10739) := by core033_kernel_decide
theorem stats10740 : actualRows10740.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10740=5124 := by core033_kernel_decide
theorem rows10741 : actualRows10741=WordField.canonicalRows actualModulus 10741 (.bxor 10734 10740) := by core033_kernel_decide
theorem stats10741 : actualRows10741.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows10741=7428 := by core033_kernel_decide
def partRows165 : List R1CS.Row := actualRows10678++actualRows10679++actualRows10680++actualRows10681++actualRows10682++actualRows10683++actualRows10684++actualRows10685++actualRows10686++actualRows10687++actualRows10688++actualRows10689++actualRows10690++actualRows10691++actualRows10692++actualRows10693++actualRows10694++actualRows10695++actualRows10696++actualRows10697++actualRows10698++actualRows10699++actualRows10700++actualRows10701++actualRows10702++actualRows10703++actualRows10704++actualRows10705++actualRows10706++actualRows10707++actualRows10708++actualRows10709++actualRows10710++actualRows10711++actualRows10712++actualRows10713++actualRows10714++actualRows10715++actualRows10716++actualRows10717++actualRows10718++actualRows10719++actualRows10720++actualRows10721++actualRows10722++actualRows10723++actualRows10724++actualRows10725++actualRows10726++actualRows10727++actualRows10728++actualRows10729++actualRows10730++actualRows10731++actualRows10732++actualRows10733++actualRows10734++actualRows10735++actualRows10736++actualRows10737++actualRows10738++actualRows10739++actualRows10740++actualRows10741
def partOps165 : List WordIR.Op := [.badd 10676 10677,.band 10678 759,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10680 10681,.bnot 10682,.literal (BitVec.ofNat 32 0),.band 10683 10684,.bxor 10679 10685,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10687 10688,.band 10689 770,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10691 10692,.bnot 10693,.literal (BitVec.ofNat 32 0),.band 10694 10695,.bxor 10690 10696,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10698 10699,.band 10700 781,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10702 10703,.bnot 10704,.literal (BitVec.ofNat 32 0),.band 10705 10706,.bxor 10701 10707,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10709 10710,.band 10711 792,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10713 10714,.bnot 10715,.literal (BitVec.ofNat 32 0),.band 10716 10717,.bxor 10712 10718,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10720 10721,.band 10722 803,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10724 10725,.bnot 10726,.literal (BitVec.ofNat 32 0),.band 10727 10728,.bxor 10723 10729,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10731 10732,.band 10733 823,.bnot 10609,.literal (BitVec.ofNat 32 1),.badd 10735 10736,.bnot 10737,.literal (BitVec.ofNat 32 0),.band 10738 10739,.bxor 10734 10740]
theorem partExact165 : partRows165=WordField.rows actualModulus 10678 partOps165 := by
  simp only [partRows165,partOps165,WordField.rows,rows10678,rows10679,rows10680,rows10681,rows10682,rows10683,rows10684,rows10685,rows10686,rows10687,rows10688,rows10689,rows10690,rows10691,rows10692,rows10693,rows10694,rows10695,rows10696,rows10697,rows10698,rows10699,rows10700,rows10701,rows10702,rows10703,rows10704,rows10705,rows10706,rows10707,rows10708,rows10709,rows10710,rows10711,rows10712,rows10713,rows10714,rows10715,rows10716,rows10717,rows10718,rows10719,rows10720,rows10721,rows10722,rows10723,rows10724,rows10725,rows10726,rows10727,rows10728,rows10729,rows10730,rows10731,rows10732,rows10733,rows10734,rows10735,rows10736,rows10737,rows10738,rows10739,rows10740,rows10741,List.append_assoc,List.append_nil]
theorem partLength165 : partOps165.length=64 := by decide
theorem partStats165 : partRows165.length=2188 ∧ MatrixRowBlocks.rowsWeight partRows165=326136 := by
  simp only [partRows165,List.length_append,MatrixRowBlocks.rows_weight_append,stats10678.1,stats10678.2,stats10679.1,stats10679.2,stats10680.1,stats10680.2,stats10681.1,stats10681.2,stats10682.1,stats10682.2,stats10683.1,stats10683.2,stats10684.1,stats10684.2,stats10685.1,stats10685.2,stats10686.1,stats10686.2,stats10687.1,stats10687.2,stats10688.1,stats10688.2,stats10689.1,stats10689.2,stats10690.1,stats10690.2,stats10691.1,stats10691.2,stats10692.1,stats10692.2,stats10693.1,stats10693.2,stats10694.1,stats10694.2,stats10695.1,stats10695.2,stats10696.1,stats10696.2,stats10697.1,stats10697.2,stats10698.1,stats10698.2,stats10699.1,stats10699.2,stats10700.1,stats10700.2,stats10701.1,stats10701.2,stats10702.1,stats10702.2,stats10703.1,stats10703.2,stats10704.1,stats10704.2,stats10705.1,stats10705.2,stats10706.1,stats10706.2,stats10707.1,stats10707.2,stats10708.1,stats10708.2,stats10709.1,stats10709.2,stats10710.1,stats10710.2,stats10711.1,stats10711.2,stats10712.1,stats10712.2,stats10713.1,stats10713.2,stats10714.1,stats10714.2,stats10715.1,stats10715.2,stats10716.1,stats10716.2,stats10717.1,stats10717.2,stats10718.1,stats10718.2,stats10719.1,stats10719.2,stats10720.1,stats10720.2,stats10721.1,stats10721.2,stats10722.1,stats10722.2,stats10723.1,stats10723.2,stats10724.1,stats10724.2,stats10725.1,stats10725.2,stats10726.1,stats10726.2,stats10727.1,stats10727.2,stats10728.1,stats10728.2,stats10729.1,stats10729.2,stats10730.1,stats10730.2,stats10731.1,stats10731.2,stats10732.1,stats10732.2,stats10733.1,stats10733.2,stats10734.1,stats10734.2,stats10735.1,stats10735.2,stats10736.1,stats10736.2,stats10737.1,stats10737.2,stats10738.1,stats10738.2,stats10739.1,stats10739.2,stats10740.1,stats10740.2,stats10741.1,stats10741.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
