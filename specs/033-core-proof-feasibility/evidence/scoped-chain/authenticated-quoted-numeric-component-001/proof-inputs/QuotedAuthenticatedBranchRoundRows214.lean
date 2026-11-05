import QuotedAuthenticatedBranchRoundIR
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import AuthenticatedBranchRoundInstructionMatrixData215
import AuthenticatedBranchRoundInstructionMatrixData216
namespace QuotedAuthenticatedBranchRoundCheckedRows
open Core033 AuthenticatedBranchRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows13814 : actualRows13814=WordField.canonicalRows actualModulus 13814 (.badd 13812 13813) := by core033_kernel_decide
theorem stats13814 : actualRows13814.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13814=5388 := by core033_kernel_decide
theorem rows13815 : actualRows13815=WordField.canonicalRows actualModulus 13815 (.band 13814 12416) := by core033_kernel_decide
theorem stats13815 : actualRows13815.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13815=5124 := by core033_kernel_decide
theorem rows13816 : actualRows13816=WordField.canonicalRows actualModulus 13816 (.bnot 398) := by core033_kernel_decide
theorem stats13816 : actualRows13816.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13816=6276 := by core033_kernel_decide
theorem rows13817 : actualRows13817=WordField.canonicalRows actualModulus 13817 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13817 : actualRows13817.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13817=2892 := by core033_kernel_decide
theorem rows13818 : actualRows13818=WordField.canonicalRows actualModulus 13818 (.badd 13816 13817) := by core033_kernel_decide
theorem stats13818 : actualRows13818.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13818=5388 := by core033_kernel_decide
theorem rows13819 : actualRows13819=WordField.canonicalRows actualModulus 13819 (.bnot 13818) := by core033_kernel_decide
theorem stats13819 : actualRows13819.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13819=6276 := by core033_kernel_decide
theorem rows13820 : actualRows13820=WordField.canonicalRows actualModulus 13820 (.band 13819 42) := by core033_kernel_decide
theorem stats13820 : actualRows13820.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13820=5124 := by core033_kernel_decide
theorem rows13821 : actualRows13821=WordField.canonicalRows actualModulus 13821 (.bxor 13815 13820) := by core033_kernel_decide
theorem stats13821 : actualRows13821.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13821=7428 := by core033_kernel_decide
theorem rows13822 : actualRows13822=WordField.canonicalRows actualModulus 13822 (.bnot 398) := by core033_kernel_decide
theorem stats13822 : actualRows13822.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13822=6276 := by core033_kernel_decide
theorem rows13823 : actualRows13823=WordField.canonicalRows actualModulus 13823 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13823 : actualRows13823.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13823=2892 := by core033_kernel_decide
theorem rows13824 : actualRows13824=WordField.canonicalRows actualModulus 13824 (.badd 13822 13823) := by core033_kernel_decide
theorem stats13824 : actualRows13824.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13824=5388 := by core033_kernel_decide
theorem rows13825 : actualRows13825=WordField.canonicalRows actualModulus 13825 (.band 13824 12884) := by core033_kernel_decide
theorem stats13825 : actualRows13825.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13825=5124 := by core033_kernel_decide
theorem rows13826 : actualRows13826=WordField.canonicalRows actualModulus 13826 (.bnot 398) := by core033_kernel_decide
theorem stats13826 : actualRows13826.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13826=6276 := by core033_kernel_decide
theorem rows13827 : actualRows13827=WordField.canonicalRows actualModulus 13827 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13827 : actualRows13827.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13827=2892 := by core033_kernel_decide
theorem rows13828 : actualRows13828=WordField.canonicalRows actualModulus 13828 (.badd 13826 13827) := by core033_kernel_decide
theorem stats13828 : actualRows13828.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13828=5388 := by core033_kernel_decide
theorem rows13829 : actualRows13829=WordField.canonicalRows actualModulus 13829 (.bnot 13828) := by core033_kernel_decide
theorem stats13829 : actualRows13829.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13829=6276 := by core033_kernel_decide
theorem rows13830 : actualRows13830=WordField.canonicalRows actualModulus 13830 (.band 13829 43) := by core033_kernel_decide
theorem stats13830 : actualRows13830.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13830=5124 := by core033_kernel_decide
theorem rows13831 : actualRows13831=WordField.canonicalRows actualModulus 13831 (.bxor 13825 13830) := by core033_kernel_decide
theorem stats13831 : actualRows13831.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13831=7428 := by core033_kernel_decide
theorem rows13832 : actualRows13832=WordField.canonicalRows actualModulus 13832 (.bnot 398) := by core033_kernel_decide
theorem stats13832 : actualRows13832.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13832=6276 := by core033_kernel_decide
theorem rows13833 : actualRows13833=WordField.canonicalRows actualModulus 13833 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13833 : actualRows13833.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13833=2892 := by core033_kernel_decide
theorem rows13834 : actualRows13834=WordField.canonicalRows actualModulus 13834 (.badd 13832 13833) := by core033_kernel_decide
theorem stats13834 : actualRows13834.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13834=5388 := by core033_kernel_decide
theorem rows13835 : actualRows13835=WordField.canonicalRows actualModulus 13835 (.band 13834 12936) := by core033_kernel_decide
theorem stats13835 : actualRows13835.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13835=5124 := by core033_kernel_decide
theorem rows13836 : actualRows13836=WordField.canonicalRows actualModulus 13836 (.bnot 398) := by core033_kernel_decide
theorem stats13836 : actualRows13836.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13836=6276 := by core033_kernel_decide
theorem rows13837 : actualRows13837=WordField.canonicalRows actualModulus 13837 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13837 : actualRows13837.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13837=2892 := by core033_kernel_decide
theorem rows13838 : actualRows13838=WordField.canonicalRows actualModulus 13838 (.badd 13836 13837) := by core033_kernel_decide
theorem stats13838 : actualRows13838.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13838=5388 := by core033_kernel_decide
theorem rows13839 : actualRows13839=WordField.canonicalRows actualModulus 13839 (.bnot 13838) := by core033_kernel_decide
theorem stats13839 : actualRows13839.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13839=6276 := by core033_kernel_decide
theorem rows13840 : actualRows13840=WordField.canonicalRows actualModulus 13840 (.band 13839 44) := by core033_kernel_decide
theorem stats13840 : actualRows13840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13840=5124 := by core033_kernel_decide
theorem rows13841 : actualRows13841=WordField.canonicalRows actualModulus 13841 (.bxor 13835 13840) := by core033_kernel_decide
theorem stats13841 : actualRows13841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13841=7428 := by core033_kernel_decide
theorem rows13842 : actualRows13842=WordField.canonicalRows actualModulus 13842 (.bnot 398) := by core033_kernel_decide
theorem stats13842 : actualRows13842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13842=6276 := by core033_kernel_decide
theorem rows13843 : actualRows13843=WordField.canonicalRows actualModulus 13843 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13843 : actualRows13843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13843=2892 := by core033_kernel_decide
theorem rows13844 : actualRows13844=WordField.canonicalRows actualModulus 13844 (.badd 13842 13843) := by core033_kernel_decide
theorem stats13844 : actualRows13844.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13844=5388 := by core033_kernel_decide
theorem rows13845 : actualRows13845=WordField.canonicalRows actualModulus 13845 (.band 13844 13092) := by core033_kernel_decide
theorem stats13845 : actualRows13845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13845=5124 := by core033_kernel_decide
theorem rows13846 : actualRows13846=WordField.canonicalRows actualModulus 13846 (.bnot 398) := by core033_kernel_decide
theorem stats13846 : actualRows13846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13846=6276 := by core033_kernel_decide
theorem rows13847 : actualRows13847=WordField.canonicalRows actualModulus 13847 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13847 : actualRows13847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13847=2892 := by core033_kernel_decide
theorem rows13848 : actualRows13848=WordField.canonicalRows actualModulus 13848 (.badd 13846 13847) := by core033_kernel_decide
theorem stats13848 : actualRows13848.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13848=5388 := by core033_kernel_decide
theorem rows13849 : actualRows13849=WordField.canonicalRows actualModulus 13849 (.bnot 13848) := by core033_kernel_decide
theorem stats13849 : actualRows13849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13849=6276 := by core033_kernel_decide
theorem rows13850 : actualRows13850=WordField.canonicalRows actualModulus 13850 (.band 13849 45) := by core033_kernel_decide
theorem stats13850 : actualRows13850.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13850=5124 := by core033_kernel_decide
theorem rows13851 : actualRows13851=WordField.canonicalRows actualModulus 13851 (.bxor 13845 13850) := by core033_kernel_decide
theorem stats13851 : actualRows13851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13851=7428 := by core033_kernel_decide
theorem rows13852 : actualRows13852=WordField.canonicalRows actualModulus 13852 (.bnot 398) := by core033_kernel_decide
theorem stats13852 : actualRows13852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13852=6276 := by core033_kernel_decide
theorem rows13853 : actualRows13853=WordField.canonicalRows actualModulus 13853 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13853 : actualRows13853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13853=2892 := by core033_kernel_decide
theorem rows13854 : actualRows13854=WordField.canonicalRows actualModulus 13854 (.badd 13852 13853) := by core033_kernel_decide
theorem stats13854 : actualRows13854.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13854=5388 := by core033_kernel_decide
theorem rows13855 : actualRows13855=WordField.canonicalRows actualModulus 13855 (.band 13854 13196) := by core033_kernel_decide
theorem stats13855 : actualRows13855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13855=5124 := by core033_kernel_decide
theorem rows13856 : actualRows13856=WordField.canonicalRows actualModulus 13856 (.bnot 398) := by core033_kernel_decide
theorem stats13856 : actualRows13856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13856=6276 := by core033_kernel_decide
theorem rows13857 : actualRows13857=WordField.canonicalRows actualModulus 13857 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13857 : actualRows13857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13857=2892 := by core033_kernel_decide
theorem rows13858 : actualRows13858=WordField.canonicalRows actualModulus 13858 (.badd 13856 13857) := by core033_kernel_decide
theorem stats13858 : actualRows13858.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13858=5388 := by core033_kernel_decide
theorem rows13859 : actualRows13859=WordField.canonicalRows actualModulus 13859 (.bnot 13858) := by core033_kernel_decide
theorem stats13859 : actualRows13859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13859=6276 := by core033_kernel_decide
theorem rows13860 : actualRows13860=WordField.canonicalRows actualModulus 13860 (.band 13859 46) := by core033_kernel_decide
theorem stats13860 : actualRows13860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13860=5124 := by core033_kernel_decide
theorem rows13861 : actualRows13861=WordField.canonicalRows actualModulus 13861 (.bxor 13855 13860) := by core033_kernel_decide
theorem stats13861 : actualRows13861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13861=7428 := by core033_kernel_decide
theorem rows13862 : actualRows13862=WordField.canonicalRows actualModulus 13862 (.bnot 419) := by core033_kernel_decide
theorem stats13862 : actualRows13862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13862=6276 := by core033_kernel_decide
theorem rows13863 : actualRows13863=WordField.canonicalRows actualModulus 13863 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13863 : actualRows13863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13863=2892 := by core033_kernel_decide
theorem rows13864 : actualRows13864=WordField.canonicalRows actualModulus 13864 (.badd 13862 13863) := by core033_kernel_decide
theorem stats13864 : actualRows13864.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13864=5388 := by core033_kernel_decide
theorem rows13865 : actualRows13865=WordField.canonicalRows actualModulus 13865 (.band 13864 12052) := by core033_kernel_decide
theorem stats13865 : actualRows13865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13865=5124 := by core033_kernel_decide
theorem rows13866 : actualRows13866=WordField.canonicalRows actualModulus 13866 (.bnot 419) := by core033_kernel_decide
theorem stats13866 : actualRows13866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13866=6276 := by core033_kernel_decide
theorem rows13867 : actualRows13867=WordField.canonicalRows actualModulus 13867 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13867 : actualRows13867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13867=2892 := by core033_kernel_decide
theorem rows13868 : actualRows13868=WordField.canonicalRows actualModulus 13868 (.badd 13866 13867) := by core033_kernel_decide
theorem stats13868 : actualRows13868.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13868=5388 := by core033_kernel_decide
theorem rows13869 : actualRows13869=WordField.canonicalRows actualModulus 13869 (.bnot 13868) := by core033_kernel_decide
theorem stats13869 : actualRows13869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13869=6276 := by core033_kernel_decide
theorem rows13870 : actualRows13870=WordField.canonicalRows actualModulus 13870 (.band 13869 55) := by core033_kernel_decide
theorem stats13870 : actualRows13870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13870=5124 := by core033_kernel_decide
theorem rows13871 : actualRows13871=WordField.canonicalRows actualModulus 13871 (.bxor 13865 13870) := by core033_kernel_decide
theorem stats13871 : actualRows13871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13871=7428 := by core033_kernel_decide
theorem rows13872 : actualRows13872=WordField.canonicalRows actualModulus 13872 (.bnot 419) := by core033_kernel_decide
theorem stats13872 : actualRows13872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13872=6276 := by core033_kernel_decide
theorem rows13873 : actualRows13873=WordField.canonicalRows actualModulus 13873 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13873 : actualRows13873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13873=2892 := by core033_kernel_decide
theorem rows13874 : actualRows13874=WordField.canonicalRows actualModulus 13874 (.badd 13872 13873) := by core033_kernel_decide
theorem stats13874 : actualRows13874.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows13874=5388 := by core033_kernel_decide
theorem rows13875 : actualRows13875=WordField.canonicalRows actualModulus 13875 (.band 13874 12104) := by core033_kernel_decide
theorem stats13875 : actualRows13875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13875=5124 := by core033_kernel_decide
theorem rows13876 : actualRows13876=WordField.canonicalRows actualModulus 13876 (.bnot 419) := by core033_kernel_decide
theorem stats13876 : actualRows13876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13876=6276 := by core033_kernel_decide
theorem rows13877 : actualRows13877=WordField.canonicalRows actualModulus 13877 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats13877 : actualRows13877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows13877=2892 := by core033_kernel_decide
def partRows214 : List R1CS.Row := actualRows13814++actualRows13815++actualRows13816++actualRows13817++actualRows13818++actualRows13819++actualRows13820++actualRows13821++actualRows13822++actualRows13823++actualRows13824++actualRows13825++actualRows13826++actualRows13827++actualRows13828++actualRows13829++actualRows13830++actualRows13831++actualRows13832++actualRows13833++actualRows13834++actualRows13835++actualRows13836++actualRows13837++actualRows13838++actualRows13839++actualRows13840++actualRows13841++actualRows13842++actualRows13843++actualRows13844++actualRows13845++actualRows13846++actualRows13847++actualRows13848++actualRows13849++actualRows13850++actualRows13851++actualRows13852++actualRows13853++actualRows13854++actualRows13855++actualRows13856++actualRows13857++actualRows13858++actualRows13859++actualRows13860++actualRows13861++actualRows13862++actualRows13863++actualRows13864++actualRows13865++actualRows13866++actualRows13867++actualRows13868++actualRows13869++actualRows13870++actualRows13871++actualRows13872++actualRows13873++actualRows13874++actualRows13875++actualRows13876++actualRows13877
def partOps214 : List WordIR.Op := [.badd 13812 13813,.band 13814 12416,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13816 13817,.bnot 13818,.band 13819 42,.bxor 13815 13820,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13822 13823,.band 13824 12884,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13826 13827,.bnot 13828,.band 13829 43,.bxor 13825 13830,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13832 13833,.band 13834 12936,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13836 13837,.bnot 13838,.band 13839 44,.bxor 13835 13840,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13842 13843,.band 13844 13092,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13846 13847,.bnot 13848,.band 13849 45,.bxor 13845 13850,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13852 13853,.band 13854 13196,.bnot 398,.literal (BitVec.ofNat 32 1),.badd 13856 13857,.bnot 13858,.band 13859 46,.bxor 13855 13860,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13862 13863,.band 13864 12052,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13866 13867,.bnot 13868,.band 13869 55,.bxor 13865 13870,.bnot 419,.literal (BitVec.ofNat 32 1),.badd 13872 13873,.band 13874 12104,.bnot 419,.literal (BitVec.ofNat 32 1)]
theorem partExact214 : partRows214=WordField.rows actualModulus 13814 partOps214 := by
  simp only [partRows214,partOps214,WordField.rows,rows13814,rows13815,rows13816,rows13817,rows13818,rows13819,rows13820,rows13821,rows13822,rows13823,rows13824,rows13825,rows13826,rows13827,rows13828,rows13829,rows13830,rows13831,rows13832,rows13833,rows13834,rows13835,rows13836,rows13837,rows13838,rows13839,rows13840,rows13841,rows13842,rows13843,rows13844,rows13845,rows13846,rows13847,rows13848,rows13849,rows13850,rows13851,rows13852,rows13853,rows13854,rows13855,rows13856,rows13857,rows13858,rows13859,rows13860,rows13861,rows13862,rows13863,rows13864,rows13865,rows13866,rows13867,rows13868,rows13869,rows13870,rows13871,rows13872,rows13873,rows13874,rows13875,rows13876,rows13877,List.append_assoc,List.append_nil]
theorem partLength214 : partOps214.length=64 := by decide
theorem partStats214 : partRows214.length=2189 ∧ MatrixRowBlocks.rowsWeight partRows214=338064 := by
  simp only [partRows214,List.length_append,MatrixRowBlocks.rows_weight_append,stats13814.1,stats13814.2,stats13815.1,stats13815.2,stats13816.1,stats13816.2,stats13817.1,stats13817.2,stats13818.1,stats13818.2,stats13819.1,stats13819.2,stats13820.1,stats13820.2,stats13821.1,stats13821.2,stats13822.1,stats13822.2,stats13823.1,stats13823.2,stats13824.1,stats13824.2,stats13825.1,stats13825.2,stats13826.1,stats13826.2,stats13827.1,stats13827.2,stats13828.1,stats13828.2,stats13829.1,stats13829.2,stats13830.1,stats13830.2,stats13831.1,stats13831.2,stats13832.1,stats13832.2,stats13833.1,stats13833.2,stats13834.1,stats13834.2,stats13835.1,stats13835.2,stats13836.1,stats13836.2,stats13837.1,stats13837.2,stats13838.1,stats13838.2,stats13839.1,stats13839.2,stats13840.1,stats13840.2,stats13841.1,stats13841.2,stats13842.1,stats13842.2,stats13843.1,stats13843.2,stats13844.1,stats13844.2,stats13845.1,stats13845.2,stats13846.1,stats13846.2,stats13847.1,stats13847.2,stats13848.1,stats13848.2,stats13849.1,stats13849.2,stats13850.1,stats13850.2,stats13851.1,stats13851.2,stats13852.1,stats13852.2,stats13853.1,stats13853.2,stats13854.1,stats13854.2,stats13855.1,stats13855.2,stats13856.1,stats13856.2,stats13857.1,stats13857.2,stats13858.1,stats13858.2,stats13859.1,stats13859.2,stats13860.1,stats13860.2,stats13861.1,stats13861.2,stats13862.1,stats13862.2,stats13863.1,stats13863.2,stats13864.1,stats13864.2,stats13865.1,stats13865.2,stats13866.1,stats13866.2,stats13867.1,stats13867.2,stats13868.1,stats13868.2,stats13869.1,stats13869.2,stats13870.1,stats13870.2,stats13871.1,stats13871.2,stats13872.1,stats13872.2,stats13873.1,stats13873.2,stats13874.1,stats13874.2,stats13875.1,stats13875.2,stats13876.1,stats13876.2,stats13877.1,stats13877.2]
  decide
end QuotedAuthenticatedBranchRoundCheckedRows
