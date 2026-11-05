import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData183
import AuthenticatedBranchRoundInstructionMatrixData184
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows11766 : actualRows11766=WordField.canonicalRows actualModulus 11766 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11766 : actualRows11766.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11766=2964 := by core033_kernel_decide
theorem rows11767 : actualRows11767=WordField.canonicalRows actualModulus 11767 (.bxor 693 11766) := by core033_kernel_decide
theorem stats11767 : actualRows11767.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11767=7428 := by core033_kernel_decide
theorem rows11768 : actualRows11768=WordField.canonicalRows actualModulus 11768 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11768 : actualRows11768.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11768=2820 := by core033_kernel_decide
theorem rows11769 : actualRows11769=WordField.canonicalRows actualModulus 11769 (.bnot 11768) := by core033_kernel_decide
theorem stats11769 : actualRows11769.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11769=6276 := by core033_kernel_decide
theorem rows11770 : actualRows11770=WordField.canonicalRows actualModulus 11770 (.band 11767 11769) := by core033_kernel_decide
theorem stats11770 : actualRows11770.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11770=5124 := by core033_kernel_decide
theorem rows11771 : actualRows11771=WordField.canonicalRows actualModulus 11771 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11771 : actualRows11771.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11771=2964 := by core033_kernel_decide
theorem rows11772 : actualRows11772=WordField.canonicalRows actualModulus 11772 (.bxor 693 11771) := by core033_kernel_decide
theorem stats11772 : actualRows11772.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11772=7428 := by core033_kernel_decide
theorem rows11773 : actualRows11773=WordField.canonicalRows actualModulus 11773 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11773 : actualRows11773.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11773=2820 := by core033_kernel_decide
theorem rows11774 : actualRows11774=WordField.canonicalRows actualModulus 11774 (.bnot 11773) := by core033_kernel_decide
theorem stats11774 : actualRows11774.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11774=6276 := by core033_kernel_decide
theorem rows11775 : actualRows11775=WordField.canonicalRows actualModulus 11775 (.bxor 11772 11774) := by core033_kernel_decide
theorem stats11775 : actualRows11775.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11775=7428 := by core033_kernel_decide
theorem rows11776 : actualRows11776=WordField.canonicalRows actualModulus 11776 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11776 : actualRows11776.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11776=2964 := by core033_kernel_decide
theorem rows11777 : actualRows11777=WordField.canonicalRows actualModulus 11777 (.bxor 693 11776) := by core033_kernel_decide
theorem stats11777 : actualRows11777.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11777=7428 := by core033_kernel_decide
theorem rows11778 : actualRows11778=WordField.canonicalRows actualModulus 11778 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11778 : actualRows11778.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11778=2820 := by core033_kernel_decide
theorem rows11779 : actualRows11779=WordField.canonicalRows actualModulus 11779 (.bnot 11778) := by core033_kernel_decide
theorem stats11779 : actualRows11779.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11779=6276 := by core033_kernel_decide
theorem rows11780 : actualRows11780=WordField.canonicalRows actualModulus 11780 (.badd 11777 11779) := by core033_kernel_decide
theorem stats11780 : actualRows11780.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11780=5388 := by core033_kernel_decide
theorem rows11781 : actualRows11781=WordField.canonicalRows actualModulus 11781 (.bnot 11780) := by core033_kernel_decide
theorem stats11781 : actualRows11781.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11781=6276 := by core033_kernel_decide
theorem rows11782 : actualRows11782=WordField.canonicalRows actualModulus 11782 (.band 11775 11781) := by core033_kernel_decide
theorem stats11782 : actualRows11782.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11782=5124 := by core033_kernel_decide
theorem rows11783 : actualRows11783=WordField.canonicalRows actualModulus 11783 (.bxor 11770 11782) := by core033_kernel_decide
theorem stats11783 : actualRows11783.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11783=7428 := by core033_kernel_decide
theorem rows11784 : actualRows11784=WordField.canonicalRows actualModulus 11784 (.shr 11783 31) := by core033_kernel_decide
theorem stats11784 : actualRows11784.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11784=2892 := by core033_kernel_decide
theorem rows11785 : actualRows11785=WordField.canonicalRows actualModulus 11785 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11785 : actualRows11785.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11785=2892 := by core033_kernel_decide
theorem rows11786 : actualRows11786=WordField.canonicalRows actualModulus 11786 (.bxor 11784 11785) := by core033_kernel_decide
theorem stats11786 : actualRows11786.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11786=7428 := by core033_kernel_decide
theorem rows11787 : actualRows11787=WordField.canonicalRows actualModulus 11787 (.bnot 11786) := by core033_kernel_decide
theorem stats11787 : actualRows11787.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11787=6276 := by core033_kernel_decide
theorem rows11788 : actualRows11788=WordField.canonicalRows actualModulus 11788 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11788 : actualRows11788.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11788=2892 := by core033_kernel_decide
theorem rows11789 : actualRows11789=WordField.canonicalRows actualModulus 11789 (.badd 11787 11788) := by core033_kernel_decide
theorem stats11789 : actualRows11789.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11789=5388 := by core033_kernel_decide
theorem rows11790 : actualRows11790=WordField.canonicalRows actualModulus 11790 (.bnot 11789) := by core033_kernel_decide
theorem stats11790 : actualRows11790.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11790=6276 := by core033_kernel_decide
theorem rows11791 : actualRows11791=WordField.canonicalRows actualModulus 11791 (.band 11790 1365) := by core033_kernel_decide
theorem stats11791 : actualRows11791.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11791=5124 := by core033_kernel_decide
theorem rows11792 : actualRows11792=WordField.canonicalRows actualModulus 11792 (.bxor 11765 11791) := by core033_kernel_decide
theorem stats11792 : actualRows11792.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11792=7428 := by core033_kernel_decide
theorem rows11793 : actualRows11793=WordField.canonicalRows actualModulus 11793 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11793 : actualRows11793.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11793=2964 := by core033_kernel_decide
theorem rows11794 : actualRows11794=WordField.canonicalRows actualModulus 11794 (.bxor 693 11793) := by core033_kernel_decide
theorem stats11794 : actualRows11794.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11794=7428 := by core033_kernel_decide
theorem rows11795 : actualRows11795=WordField.canonicalRows actualModulus 11795 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11795 : actualRows11795.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11795=2820 := by core033_kernel_decide
theorem rows11796 : actualRows11796=WordField.canonicalRows actualModulus 11796 (.bnot 11795) := by core033_kernel_decide
theorem stats11796 : actualRows11796.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11796=6276 := by core033_kernel_decide
theorem rows11797 : actualRows11797=WordField.canonicalRows actualModulus 11797 (.band 11794 11796) := by core033_kernel_decide
theorem stats11797 : actualRows11797.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11797=5124 := by core033_kernel_decide
theorem rows11798 : actualRows11798=WordField.canonicalRows actualModulus 11798 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11798 : actualRows11798.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11798=2964 := by core033_kernel_decide
theorem rows11799 : actualRows11799=WordField.canonicalRows actualModulus 11799 (.bxor 693 11798) := by core033_kernel_decide
theorem stats11799 : actualRows11799.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11799=7428 := by core033_kernel_decide
theorem rows11800 : actualRows11800=WordField.canonicalRows actualModulus 11800 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11800 : actualRows11800.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11800=2820 := by core033_kernel_decide
theorem rows11801 : actualRows11801=WordField.canonicalRows actualModulus 11801 (.bnot 11800) := by core033_kernel_decide
theorem stats11801 : actualRows11801.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11801=6276 := by core033_kernel_decide
theorem rows11802 : actualRows11802=WordField.canonicalRows actualModulus 11802 (.bxor 11799 11801) := by core033_kernel_decide
theorem stats11802 : actualRows11802.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11802=7428 := by core033_kernel_decide
theorem rows11803 : actualRows11803=WordField.canonicalRows actualModulus 11803 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11803 : actualRows11803.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11803=2964 := by core033_kernel_decide
theorem rows11804 : actualRows11804=WordField.canonicalRows actualModulus 11804 (.bxor 693 11803) := by core033_kernel_decide
theorem stats11804 : actualRows11804.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11804=7428 := by core033_kernel_decide
theorem rows11805 : actualRows11805=WordField.canonicalRows actualModulus 11805 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11805 : actualRows11805.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11805=2820 := by core033_kernel_decide
theorem rows11806 : actualRows11806=WordField.canonicalRows actualModulus 11806 (.bnot 11805) := by core033_kernel_decide
theorem stats11806 : actualRows11806.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11806=6276 := by core033_kernel_decide
theorem rows11807 : actualRows11807=WordField.canonicalRows actualModulus 11807 (.badd 11804 11806) := by core033_kernel_decide
theorem stats11807 : actualRows11807.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11807=5388 := by core033_kernel_decide
theorem rows11808 : actualRows11808=WordField.canonicalRows actualModulus 11808 (.bnot 11807) := by core033_kernel_decide
theorem stats11808 : actualRows11808.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11808=6276 := by core033_kernel_decide
theorem rows11809 : actualRows11809=WordField.canonicalRows actualModulus 11809 (.band 11802 11808) := by core033_kernel_decide
theorem stats11809 : actualRows11809.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11809=5124 := by core033_kernel_decide
theorem rows11810 : actualRows11810=WordField.canonicalRows actualModulus 11810 (.bxor 11797 11809) := by core033_kernel_decide
theorem stats11810 : actualRows11810.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11810=7428 := by core033_kernel_decide
theorem rows11811 : actualRows11811=WordField.canonicalRows actualModulus 11811 (.shr 11810 31) := by core033_kernel_decide
theorem stats11811 : actualRows11811.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11811=2892 := by core033_kernel_decide
theorem rows11812 : actualRows11812=WordField.canonicalRows actualModulus 11812 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11812 : actualRows11812.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11812=2892 := by core033_kernel_decide
theorem rows11813 : actualRows11813=WordField.canonicalRows actualModulus 11813 (.bxor 11811 11812) := by core033_kernel_decide
theorem stats11813 : actualRows11813.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11813=7428 := by core033_kernel_decide
theorem rows11814 : actualRows11814=WordField.canonicalRows actualModulus 11814 (.bnot 11813) := by core033_kernel_decide
theorem stats11814 : actualRows11814.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11814=6276 := by core033_kernel_decide
theorem rows11815 : actualRows11815=WordField.canonicalRows actualModulus 11815 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats11815 : actualRows11815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11815=2892 := by core033_kernel_decide
theorem rows11816 : actualRows11816=WordField.canonicalRows actualModulus 11816 (.badd 11814 11815) := by core033_kernel_decide
theorem stats11816 : actualRows11816.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows11816=5388 := by core033_kernel_decide
theorem rows11817 : actualRows11817=WordField.canonicalRows actualModulus 11817 (.band 11816 10697) := by core033_kernel_decide
theorem stats11817 : actualRows11817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11817=5124 := by core033_kernel_decide
theorem rows11818 : actualRows11818=WordField.canonicalRows actualModulus 11818 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11818 : actualRows11818.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11818=2964 := by core033_kernel_decide
theorem rows11819 : actualRows11819=WordField.canonicalRows actualModulus 11819 (.bxor 693 11818) := by core033_kernel_decide
theorem stats11819 : actualRows11819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11819=7428 := by core033_kernel_decide
theorem rows11820 : actualRows11820=WordField.canonicalRows actualModulus 11820 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11820 : actualRows11820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11820=2820 := by core033_kernel_decide
theorem rows11821 : actualRows11821=WordField.canonicalRows actualModulus 11821 (.bnot 11820) := by core033_kernel_decide
theorem stats11821 : actualRows11821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11821=6276 := by core033_kernel_decide
theorem rows11822 : actualRows11822=WordField.canonicalRows actualModulus 11822 (.band 11819 11821) := by core033_kernel_decide
theorem stats11822 : actualRows11822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11822=5124 := by core033_kernel_decide
theorem rows11823 : actualRows11823=WordField.canonicalRows actualModulus 11823 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11823 : actualRows11823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11823=2964 := by core033_kernel_decide
theorem rows11824 : actualRows11824=WordField.canonicalRows actualModulus 11824 (.bxor 693 11823) := by core033_kernel_decide
theorem stats11824 : actualRows11824.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11824=7428 := by core033_kernel_decide
theorem rows11825 : actualRows11825=WordField.canonicalRows actualModulus 11825 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats11825 : actualRows11825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11825=2820 := by core033_kernel_decide
theorem rows11826 : actualRows11826=WordField.canonicalRows actualModulus 11826 (.bnot 11825) := by core033_kernel_decide
theorem stats11826 : actualRows11826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11826=6276 := by core033_kernel_decide
theorem rows11827 : actualRows11827=WordField.canonicalRows actualModulus 11827 (.bxor 11824 11826) := by core033_kernel_decide
theorem stats11827 : actualRows11827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11827=7428 := by core033_kernel_decide
theorem rows11828 : actualRows11828=WordField.canonicalRows actualModulus 11828 (.literal (BitVec.ofNat 32 3)) := by core033_kernel_decide
theorem stats11828 : actualRows11828.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11828=2964 := by core033_kernel_decide
theorem rows11829 : actualRows11829=WordField.canonicalRows actualModulus 11829 (.bxor 693 11828) := by core033_kernel_decide
theorem stats11829 : actualRows11829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows11829=7428 := by core033_kernel_decide
def partRows182 : List R1CS.Row := actualRows11766++actualRows11767++actualRows11768++actualRows11769++actualRows11770++actualRows11771++actualRows11772++actualRows11773++actualRows11774++actualRows11775++actualRows11776++actualRows11777++actualRows11778++actualRows11779++actualRows11780++actualRows11781++actualRows11782++actualRows11783++actualRows11784++actualRows11785++actualRows11786++actualRows11787++actualRows11788++actualRows11789++actualRows11790++actualRows11791++actualRows11792++actualRows11793++actualRows11794++actualRows11795++actualRows11796++actualRows11797++actualRows11798++actualRows11799++actualRows11800++actualRows11801++actualRows11802++actualRows11803++actualRows11804++actualRows11805++actualRows11806++actualRows11807++actualRows11808++actualRows11809++actualRows11810++actualRows11811++actualRows11812++actualRows11813++actualRows11814++actualRows11815++actualRows11816++actualRows11817++actualRows11818++actualRows11819++actualRows11820++actualRows11821++actualRows11822++actualRows11823++actualRows11824++actualRows11825++actualRows11826++actualRows11827++actualRows11828++actualRows11829
def partOps182 : List WordIR.Op := [.literal (BitVec.ofNat 32 3),.bxor 693 11766,.literal (BitVec.ofNat 32 0),.bnot 11768,.band 11767 11769,.literal (BitVec.ofNat 32 3),.bxor 693 11771,.literal (BitVec.ofNat 32 0),.bnot 11773,.bxor 11772 11774,.literal (BitVec.ofNat 32 3),.bxor 693 11776,.literal (BitVec.ofNat 32 0),.bnot 11778,.badd 11777 11779,.bnot 11780,.band 11775 11781,.bxor 11770 11782,.shr 11783 31,.literal (BitVec.ofNat 32 1),.bxor 11784 11785,.bnot 11786,.literal (BitVec.ofNat 32 1),.badd 11787 11788,.bnot 11789,.band 11790 1365,.bxor 11765 11791,.literal (BitVec.ofNat 32 3),.bxor 693 11793,.literal (BitVec.ofNat 32 0),.bnot 11795,.band 11794 11796,.literal (BitVec.ofNat 32 3),.bxor 693 11798,.literal (BitVec.ofNat 32 0),.bnot 11800,.bxor 11799 11801,.literal (BitVec.ofNat 32 3),.bxor 693 11803,.literal (BitVec.ofNat 32 0),.bnot 11805,.badd 11804 11806,.bnot 11807,.band 11802 11808,.bxor 11797 11809,.shr 11810 31,.literal (BitVec.ofNat 32 1),.bxor 11811 11812,.bnot 11813,.literal (BitVec.ofNat 32 1),.badd 11814 11815,.band 11816 10697,.literal (BitVec.ofNat 32 3),.bxor 693 11818,.literal (BitVec.ofNat 32 0),.bnot 11820,.band 11819 11821,.literal (BitVec.ofNat 32 3),.bxor 693 11823,.literal (BitVec.ofNat 32 0),.bnot 11825,.bxor 11824 11826,.literal (BitVec.ofNat 32 3),.bxor 693 11828]
theorem partExact182 : partRows182=WordField.rows actualModulus 11766 partOps182 := by
  simp only [partRows182,partOps182,WordField.rows,rows11766,rows11767,rows11768,rows11769,rows11770,rows11771,rows11772,rows11773,rows11774,rows11775,rows11776,rows11777,rows11778,rows11779,rows11780,rows11781,rows11782,rows11783,rows11784,rows11785,rows11786,rows11787,rows11788,rows11789,rows11790,rows11791,rows11792,rows11793,rows11794,rows11795,rows11796,rows11797,rows11798,rows11799,rows11800,rows11801,rows11802,rows11803,rows11804,rows11805,rows11806,rows11807,rows11808,rows11809,rows11810,rows11811,rows11812,rows11813,rows11814,rows11815,rows11816,rows11817,rows11818,rows11819,rows11820,rows11821,rows11822,rows11823,rows11824,rows11825,rows11826,rows11827,rows11828,rows11829,List.append_assoc,List.append_nil]
theorem partLength182 : partOps182.length=64 := by decide
theorem partStats182 : partRows182.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows182=331872 := by
  simp only [partRows182,List.length_append,MatrixRowBlocks.rows_weight_append,stats11766.1,stats11766.2,stats11767.1,stats11767.2,stats11768.1,stats11768.2,stats11769.1,stats11769.2,stats11770.1,stats11770.2,stats11771.1,stats11771.2,stats11772.1,stats11772.2,stats11773.1,stats11773.2,stats11774.1,stats11774.2,stats11775.1,stats11775.2,stats11776.1,stats11776.2,stats11777.1,stats11777.2,stats11778.1,stats11778.2,stats11779.1,stats11779.2,stats11780.1,stats11780.2,stats11781.1,stats11781.2,stats11782.1,stats11782.2,stats11783.1,stats11783.2,stats11784.1,stats11784.2,stats11785.1,stats11785.2,stats11786.1,stats11786.2,stats11787.1,stats11787.2,stats11788.1,stats11788.2,stats11789.1,stats11789.2,stats11790.1,stats11790.2,stats11791.1,stats11791.2,stats11792.1,stats11792.2,stats11793.1,stats11793.2,stats11794.1,stats11794.2,stats11795.1,stats11795.2,stats11796.1,stats11796.2,stats11797.1,stats11797.2,stats11798.1,stats11798.2,stats11799.1,stats11799.2,stats11800.1,stats11800.2,stats11801.1,stats11801.2,stats11802.1,stats11802.2,stats11803.1,stats11803.2,stats11804.1,stats11804.2,stats11805.1,stats11805.2,stats11806.1,stats11806.2,stats11807.1,stats11807.2,stats11808.1,stats11808.2,stats11809.1,stats11809.2,stats11810.1,stats11810.2,stats11811.1,stats11811.2,stats11812.1,stats11812.2,stats11813.1,stats11813.2,stats11814.1,stats11814.2,stats11815.1,stats11815.2,stats11816.1,stats11816.2,stats11817.1,stats11817.2,stats11818.1,stats11818.2,stats11819.1,stats11819.2,stats11820.1,stats11820.2,stats11821.1,stats11821.2,stats11822.1,stats11822.2,stats11823.1,stats11823.2,stats11824.1,stats11824.2,stats11825.1,stats11825.2,stats11826.1,stats11826.2,stats11827.1,stats11827.2,stats11828.1,stats11828.2,stats11829.1,stats11829.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
