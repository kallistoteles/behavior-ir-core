import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData13
import ActualMatrixData14
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows856 : actualRows856=WordField.canonicalRows actualModulus 856 (.band 835 808) := by core033_kernel_decide
theorem stats856 : actualRows856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows856=5124 := by core033_kernel_decide
theorem rows857 : actualRows857=WordField.canonicalRows actualModulus 857 (.band 835 781) := by core033_kernel_decide
theorem stats857 : actualRows857.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows857=5124 := by core033_kernel_decide
theorem rows858 : actualRows858=WordField.canonicalRows actualModulus 858 (.bxor 856 857) := by core033_kernel_decide
theorem stats858 : actualRows858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows858=7428 := by core033_kernel_decide
theorem rows859 : actualRows859=WordField.canonicalRows actualModulus 859 (.band 808 781) := by core033_kernel_decide
theorem stats859 : actualRows859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows859=5124 := by core033_kernel_decide
theorem rows860 : actualRows860=WordField.canonicalRows actualModulus 860 (.bxor 858 859) := by core033_kernel_decide
theorem stats860 : actualRows860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows860=7428 := by core033_kernel_decide
theorem rows861 : actualRows861=WordField.canonicalRows actualModulus 861 (.badd 855 860) := by core033_kernel_decide
theorem stats861 : actualRows861.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows861=5388 := by core033_kernel_decide
theorem rows862 : actualRows862=WordField.canonicalRows actualModulus 862 (.badd 850 861) := by core033_kernel_decide
theorem stats862 : actualRows862.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows862=5388 := by core033_kernel_decide
theorem rows863 : actualRows863=WordField.canonicalRows actualModulus 863 (.badd 754 850) := by core033_kernel_decide
theorem stats863 : actualRows863.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows863=5388 := by core033_kernel_decide
theorem rows864 : actualRows864=WordField.canonicalRows actualModulus 864 (.rotr 863 6) := by core033_kernel_decide
theorem stats864 : actualRows864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows864=5124 := by core033_kernel_decide
theorem rows865 : actualRows865=WordField.canonicalRows actualModulus 865 (.rotr 863 11) := by core033_kernel_decide
theorem stats865 : actualRows865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows865=5124 := by core033_kernel_decide
theorem rows866 : actualRows866=WordField.canonicalRows actualModulus 866 (.bxor 864 865) := by core033_kernel_decide
theorem stats866 : actualRows866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows866=7428 := by core033_kernel_decide
theorem rows867 : actualRows867=WordField.canonicalRows actualModulus 867 (.rotr 863 25) := by core033_kernel_decide
theorem stats867 : actualRows867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows867=5124 := by core033_kernel_decide
theorem rows868 : actualRows868=WordField.canonicalRows actualModulus 868 (.bxor 866 867) := by core033_kernel_decide
theorem stats868 : actualRows868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows868=7428 := by core033_kernel_decide
theorem rows869 : actualRows869=WordField.canonicalRows actualModulus 869 (.badd 782 868) := by core033_kernel_decide
theorem stats869 : actualRows869.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows869=5388 := by core033_kernel_decide
theorem rows870 : actualRows870=WordField.canonicalRows actualModulus 870 (.band 863 836) := by core033_kernel_decide
theorem stats870 : actualRows870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows870=5124 := by core033_kernel_decide
theorem rows871 : actualRows871=WordField.canonicalRows actualModulus 871 (.bnot 863) := by core033_kernel_decide
theorem stats871 : actualRows871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows871=6276 := by core033_kernel_decide
theorem rows872 : actualRows872=WordField.canonicalRows actualModulus 872 (.band 871 809) := by core033_kernel_decide
theorem stats872 : actualRows872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows872=5124 := by core033_kernel_decide
theorem rows873 : actualRows873=WordField.canonicalRows actualModulus 873 (.bxor 870 872) := by core033_kernel_decide
theorem stats873 : actualRows873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows873=7428 := by core033_kernel_decide
theorem rows874 : actualRows874=WordField.canonicalRows actualModulus 874 (.badd 869 873) := by core033_kernel_decide
theorem stats874 : actualRows874.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows874=5388 := by core033_kernel_decide
theorem rows875 : actualRows875=WordField.canonicalRows actualModulus 875 (.literal (BitVec.ofNat 32 3624381080)) := by core033_kernel_decide
theorem stats875 : actualRows875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows875=3828 := by core033_kernel_decide
theorem rows876 : actualRows876=WordField.canonicalRows actualModulus 876 (.badd 874 875) := by core033_kernel_decide
theorem stats876 : actualRows876.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows876=5388 := by core033_kernel_decide
theorem rows877 : actualRows877=WordField.canonicalRows actualModulus 877 (.badd 876 16) := by core033_kernel_decide
theorem stats877 : actualRows877.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows877=5388 := by core033_kernel_decide
theorem rows878 : actualRows878=WordField.canonicalRows actualModulus 878 (.rotr 862 2) := by core033_kernel_decide
theorem stats878 : actualRows878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows878=5124 := by core033_kernel_decide
theorem rows879 : actualRows879=WordField.canonicalRows actualModulus 879 (.rotr 862 13) := by core033_kernel_decide
theorem stats879 : actualRows879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows879=5124 := by core033_kernel_decide
theorem rows880 : actualRows880=WordField.canonicalRows actualModulus 880 (.bxor 878 879) := by core033_kernel_decide
theorem stats880 : actualRows880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows880=7428 := by core033_kernel_decide
theorem rows881 : actualRows881=WordField.canonicalRows actualModulus 881 (.rotr 862 22) := by core033_kernel_decide
theorem stats881 : actualRows881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows881=5124 := by core033_kernel_decide
theorem rows882 : actualRows882=WordField.canonicalRows actualModulus 882 (.bxor 880 881) := by core033_kernel_decide
theorem stats882 : actualRows882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows882=7428 := by core033_kernel_decide
theorem rows883 : actualRows883=WordField.canonicalRows actualModulus 883 (.band 862 835) := by core033_kernel_decide
theorem stats883 : actualRows883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows883=5124 := by core033_kernel_decide
theorem rows884 : actualRows884=WordField.canonicalRows actualModulus 884 (.band 862 808) := by core033_kernel_decide
theorem stats884 : actualRows884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows884=5124 := by core033_kernel_decide
theorem rows885 : actualRows885=WordField.canonicalRows actualModulus 885 (.bxor 883 884) := by core033_kernel_decide
theorem stats885 : actualRows885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows885=7428 := by core033_kernel_decide
theorem rows886 : actualRows886=WordField.canonicalRows actualModulus 886 (.band 835 808) := by core033_kernel_decide
theorem stats886 : actualRows886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows886=5124 := by core033_kernel_decide
theorem rows887 : actualRows887=WordField.canonicalRows actualModulus 887 (.bxor 885 886) := by core033_kernel_decide
theorem stats887 : actualRows887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows887=7428 := by core033_kernel_decide
theorem rows888 : actualRows888=WordField.canonicalRows actualModulus 888 (.badd 882 887) := by core033_kernel_decide
theorem stats888 : actualRows888.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows888=5388 := by core033_kernel_decide
theorem rows889 : actualRows889=WordField.canonicalRows actualModulus 889 (.badd 877 888) := by core033_kernel_decide
theorem stats889 : actualRows889.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows889=5388 := by core033_kernel_decide
theorem rows890 : actualRows890=WordField.canonicalRows actualModulus 890 (.badd 781 877) := by core033_kernel_decide
theorem stats890 : actualRows890.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows890=5388 := by core033_kernel_decide
theorem rows891 : actualRows891=WordField.canonicalRows actualModulus 891 (.rotr 890 6) := by core033_kernel_decide
theorem stats891 : actualRows891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows891=5124 := by core033_kernel_decide
theorem rows892 : actualRows892=WordField.canonicalRows actualModulus 892 (.rotr 890 11) := by core033_kernel_decide
theorem stats892 : actualRows892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows892=5124 := by core033_kernel_decide
theorem rows893 : actualRows893=WordField.canonicalRows actualModulus 893 (.bxor 891 892) := by core033_kernel_decide
theorem stats893 : actualRows893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows893=7428 := by core033_kernel_decide
theorem rows894 : actualRows894=WordField.canonicalRows actualModulus 894 (.rotr 890 25) := by core033_kernel_decide
theorem stats894 : actualRows894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows894=5124 := by core033_kernel_decide
theorem rows895 : actualRows895=WordField.canonicalRows actualModulus 895 (.bxor 893 894) := by core033_kernel_decide
theorem stats895 : actualRows895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows895=7428 := by core033_kernel_decide
theorem rows896 : actualRows896=WordField.canonicalRows actualModulus 896 (.badd 809 895) := by core033_kernel_decide
theorem stats896 : actualRows896.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows896=5388 := by core033_kernel_decide
theorem rows897 : actualRows897=WordField.canonicalRows actualModulus 897 (.band 890 863) := by core033_kernel_decide
theorem stats897 : actualRows897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows897=5124 := by core033_kernel_decide
theorem rows898 : actualRows898=WordField.canonicalRows actualModulus 898 (.bnot 890) := by core033_kernel_decide
theorem stats898 : actualRows898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows898=6276 := by core033_kernel_decide
theorem rows899 : actualRows899=WordField.canonicalRows actualModulus 899 (.band 898 836) := by core033_kernel_decide
theorem stats899 : actualRows899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows899=5124 := by core033_kernel_decide
theorem rows900 : actualRows900=WordField.canonicalRows actualModulus 900 (.bxor 897 899) := by core033_kernel_decide
theorem stats900 : actualRows900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows900=7428 := by core033_kernel_decide
theorem rows901 : actualRows901=WordField.canonicalRows actualModulus 901 (.badd 896 900) := by core033_kernel_decide
theorem stats901 : actualRows901.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows901=5388 := by core033_kernel_decide
theorem rows902 : actualRows902=WordField.canonicalRows actualModulus 902 (.literal (BitVec.ofNat 32 310598401)) := by core033_kernel_decide
theorem stats902 : actualRows902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows902=3612 := by core033_kernel_decide
theorem rows903 : actualRows903=WordField.canonicalRows actualModulus 903 (.badd 901 902) := by core033_kernel_decide
theorem stats903 : actualRows903.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows903=5388 := by core033_kernel_decide
theorem rows904 : actualRows904=WordField.canonicalRows actualModulus 904 (.badd 903 17) := by core033_kernel_decide
theorem stats904 : actualRows904.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows904=5388 := by core033_kernel_decide
theorem rows905 : actualRows905=WordField.canonicalRows actualModulus 905 (.rotr 889 2) := by core033_kernel_decide
theorem stats905 : actualRows905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows905=5124 := by core033_kernel_decide
theorem rows906 : actualRows906=WordField.canonicalRows actualModulus 906 (.rotr 889 13) := by core033_kernel_decide
theorem stats906 : actualRows906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows906=5124 := by core033_kernel_decide
theorem rows907 : actualRows907=WordField.canonicalRows actualModulus 907 (.bxor 905 906) := by core033_kernel_decide
theorem stats907 : actualRows907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows907=7428 := by core033_kernel_decide
theorem rows908 : actualRows908=WordField.canonicalRows actualModulus 908 (.rotr 889 22) := by core033_kernel_decide
theorem stats908 : actualRows908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows908=5124 := by core033_kernel_decide
theorem rows909 : actualRows909=WordField.canonicalRows actualModulus 909 (.bxor 907 908) := by core033_kernel_decide
theorem stats909 : actualRows909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows909=7428 := by core033_kernel_decide
theorem rows910 : actualRows910=WordField.canonicalRows actualModulus 910 (.band 889 862) := by core033_kernel_decide
theorem stats910 : actualRows910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows910=5124 := by core033_kernel_decide
theorem rows911 : actualRows911=WordField.canonicalRows actualModulus 911 (.band 889 835) := by core033_kernel_decide
theorem stats911 : actualRows911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows911=5124 := by core033_kernel_decide
theorem rows912 : actualRows912=WordField.canonicalRows actualModulus 912 (.bxor 910 911) := by core033_kernel_decide
theorem stats912 : actualRows912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows912=7428 := by core033_kernel_decide
theorem rows913 : actualRows913=WordField.canonicalRows actualModulus 913 (.band 862 835) := by core033_kernel_decide
theorem stats913 : actualRows913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows913=5124 := by core033_kernel_decide
theorem rows914 : actualRows914=WordField.canonicalRows actualModulus 914 (.bxor 912 913) := by core033_kernel_decide
theorem stats914 : actualRows914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows914=7428 := by core033_kernel_decide
theorem rows915 : actualRows915=WordField.canonicalRows actualModulus 915 (.badd 909 914) := by core033_kernel_decide
theorem stats915 : actualRows915.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows915=5388 := by core033_kernel_decide
theorem rows916 : actualRows916=WordField.canonicalRows actualModulus 916 (.badd 904 915) := by core033_kernel_decide
theorem stats916 : actualRows916.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows916=5388 := by core033_kernel_decide
theorem rows917 : actualRows917=WordField.canonicalRows actualModulus 917 (.badd 808 904) := by core033_kernel_decide
theorem stats917 : actualRows917.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows917=5388 := by core033_kernel_decide
theorem rows918 : actualRows918=WordField.canonicalRows actualModulus 918 (.rotr 917 6) := by core033_kernel_decide
theorem stats918 : actualRows918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows918=5124 := by core033_kernel_decide
theorem rows919 : actualRows919=WordField.canonicalRows actualModulus 919 (.rotr 917 11) := by core033_kernel_decide
theorem stats919 : actualRows919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows919=5124 := by core033_kernel_decide
def partRows13 : List R1CS.Row := actualRows856++actualRows857++actualRows858++actualRows859++actualRows860++actualRows861++actualRows862++actualRows863++actualRows864++actualRows865++actualRows866++actualRows867++actualRows868++actualRows869++actualRows870++actualRows871++actualRows872++actualRows873++actualRows874++actualRows875++actualRows876++actualRows877++actualRows878++actualRows879++actualRows880++actualRows881++actualRows882++actualRows883++actualRows884++actualRows885++actualRows886++actualRows887++actualRows888++actualRows889++actualRows890++actualRows891++actualRows892++actualRows893++actualRows894++actualRows895++actualRows896++actualRows897++actualRows898++actualRows899++actualRows900++actualRows901++actualRows902++actualRows903++actualRows904++actualRows905++actualRows906++actualRows907++actualRows908++actualRows909++actualRows910++actualRows911++actualRows912++actualRows913++actualRows914++actualRows915++actualRows916++actualRows917++actualRows918++actualRows919
def partOps13 : List WordIR.Op := [.band 835 808,.band 835 781,.bxor 856 857,.band 808 781,.bxor 858 859,.badd 855 860,.badd 850 861,.badd 754 850,.rotr 863 6,.rotr 863 11,.bxor 864 865,.rotr 863 25,.bxor 866 867,.badd 782 868,.band 863 836,.bnot 863,.band 871 809,.bxor 870 872,.badd 869 873,.literal (BitVec.ofNat 32 3624381080),.badd 874 875,.badd 876 16,.rotr 862 2,.rotr 862 13,.bxor 878 879,.rotr 862 22,.bxor 880 881,.band 862 835,.band 862 808,.bxor 883 884,.band 835 808,.bxor 885 886,.badd 882 887,.badd 877 888,.badd 781 877,.rotr 890 6,.rotr 890 11,.bxor 891 892,.rotr 890 25,.bxor 893 894,.badd 809 895,.band 890 863,.bnot 890,.band 898 836,.bxor 897 899,.badd 896 900,.literal (BitVec.ofNat 32 310598401),.badd 901 902,.badd 903 17,.rotr 889 2,.rotr 889 13,.bxor 905 906,.rotr 889 22,.bxor 907 908,.band 889 862,.band 889 835,.bxor 910 911,.band 862 835,.bxor 912 913,.badd 909 914,.badd 904 915,.badd 808 904,.rotr 917 6,.rotr 917 11]
theorem partRowsExact13 : partRows13=WordField.rows actualModulus 856 partOps13 := by
  simp only [partRows13,partOps13,WordField.rows,rows856,rows857,rows858,rows859,rows860,rows861,rows862,rows863,rows864,rows865,rows866,rows867,rows868,rows869,rows870,rows871,rows872,rows873,rows874,rows875,rows876,rows877,rows878,rows879,rows880,rows881,rows882,rows883,rows884,rows885,rows886,rows887,rows888,rows889,rows890,rows891,rows892,rows893,rows894,rows895,rows896,rows897,rows898,rows899,rows900,rows901,rows902,rows903,rows904,rows905,rows906,rows907,rows908,rows909,rows910,rows911,rows912,rows913,rows914,rows915,rows916,rows917,rows918,rows919,List.append_assoc,List.append_nil]
theorem partOpsLength13 : partOps13.length=64 := by decide
theorem partStats13 : partRows13.length=2193 ∧ MatrixRowBlocks.rowsWeight partRows13=368784 := by
  simp only [partRows13,List.length_append,MatrixRowBlocks.rows_weight_append,stats856.1,stats856.2,stats857.1,stats857.2,stats858.1,stats858.2,stats859.1,stats859.2,stats860.1,stats860.2,stats861.1,stats861.2,stats862.1,stats862.2,stats863.1,stats863.2,stats864.1,stats864.2,stats865.1,stats865.2,stats866.1,stats866.2,stats867.1,stats867.2,stats868.1,stats868.2,stats869.1,stats869.2,stats870.1,stats870.2,stats871.1,stats871.2,stats872.1,stats872.2,stats873.1,stats873.2,stats874.1,stats874.2,stats875.1,stats875.2,stats876.1,stats876.2,stats877.1,stats877.2,stats878.1,stats878.2,stats879.1,stats879.2,stats880.1,stats880.2,stats881.1,stats881.2,stats882.1,stats882.2,stats883.1,stats883.2,stats884.1,stats884.2,stats885.1,stats885.2,stats886.1,stats886.2,stats887.1,stats887.2,stats888.1,stats888.2,stats889.1,stats889.2,stats890.1,stats890.2,stats891.1,stats891.2,stats892.1,stats892.2,stats893.1,stats893.2,stats894.1,stats894.2,stats895.1,stats895.2,stats896.1,stats896.2,stats897.1,stats897.2,stats898.1,stats898.2,stats899.1,stats899.2,stats900.1,stats900.2,stats901.1,stats901.2,stats902.1,stats902.2,stats903.1,stats903.2,stats904.1,stats904.2,stats905.1,stats905.2,stats906.1,stats906.2,stats907.1,stats907.2,stats908.1,stats908.2,stats909.1,stats909.2,stats910.1,stats910.2,stats911.1,stats911.2,stats912.1,stats912.2,stats913.1,stats913.2,stats914.1,stats914.2,stats915.1,stats915.2,stats916.1,stats916.2,stats917.1,stats917.2,stats918.1,stats918.2,stats919.1,stats919.2]
  decide
end ActualSHAMatrixRows
