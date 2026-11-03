import ActualPathRoundDispatchIR
import Core033.PathRoundDispatch
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PathRoundDispatchInstructionMatrixData44
import PathRoundDispatchInstructionMatrixData45
namespace PathRoundDispatchCheckedRows
open Core033 PathRoundDispatchInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2859 : actualRows2859=WordField.canonicalRows actualModulus 2859 (.bxor 2832 2858) := by core033_kernel_decide
theorem stats2859 : actualRows2859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2859=7428 := by core033_kernel_decide
theorem rows2860 : actualRows2860=WordField.canonicalRows actualModulus 2860 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2860 : actualRows2860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2860=2892 := by core033_kernel_decide
theorem rows2861 : actualRows2861=WordField.canonicalRows actualModulus 2861 (.bxor 96 2860) := by core033_kernel_decide
theorem stats2861 : actualRows2861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2861=7428 := by core033_kernel_decide
theorem rows2862 : actualRows2862=WordField.canonicalRows actualModulus 2862 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2862 : actualRows2862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2862=2820 := by core033_kernel_decide
theorem rows2863 : actualRows2863=WordField.canonicalRows actualModulus 2863 (.bnot 2862) := by core033_kernel_decide
theorem stats2863 : actualRows2863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2863=6276 := by core033_kernel_decide
theorem rows2864 : actualRows2864=WordField.canonicalRows actualModulus 2864 (.band 2861 2863) := by core033_kernel_decide
theorem stats2864 : actualRows2864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2864=5124 := by core033_kernel_decide
theorem rows2865 : actualRows2865=WordField.canonicalRows actualModulus 2865 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2865 : actualRows2865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2865=2892 := by core033_kernel_decide
theorem rows2866 : actualRows2866=WordField.canonicalRows actualModulus 2866 (.bxor 96 2865) := by core033_kernel_decide
theorem stats2866 : actualRows2866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2866=7428 := by core033_kernel_decide
theorem rows2867 : actualRows2867=WordField.canonicalRows actualModulus 2867 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2867 : actualRows2867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2867=2820 := by core033_kernel_decide
theorem rows2868 : actualRows2868=WordField.canonicalRows actualModulus 2868 (.bnot 2867) := by core033_kernel_decide
theorem stats2868 : actualRows2868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2868=6276 := by core033_kernel_decide
theorem rows2869 : actualRows2869=WordField.canonicalRows actualModulus 2869 (.bxor 2866 2868) := by core033_kernel_decide
theorem stats2869 : actualRows2869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2869=7428 := by core033_kernel_decide
theorem rows2870 : actualRows2870=WordField.canonicalRows actualModulus 2870 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2870 : actualRows2870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2870=2892 := by core033_kernel_decide
theorem rows2871 : actualRows2871=WordField.canonicalRows actualModulus 2871 (.bxor 96 2870) := by core033_kernel_decide
theorem stats2871 : actualRows2871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2871=7428 := by core033_kernel_decide
theorem rows2872 : actualRows2872=WordField.canonicalRows actualModulus 2872 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2872 : actualRows2872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2872=2820 := by core033_kernel_decide
theorem rows2873 : actualRows2873=WordField.canonicalRows actualModulus 2873 (.bnot 2872) := by core033_kernel_decide
theorem stats2873 : actualRows2873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2873=6276 := by core033_kernel_decide
theorem rows2874 : actualRows2874=WordField.canonicalRows actualModulus 2874 (.badd 2871 2873) := by core033_kernel_decide
theorem stats2874 : actualRows2874.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2874=5388 := by core033_kernel_decide
theorem rows2875 : actualRows2875=WordField.canonicalRows actualModulus 2875 (.bnot 2874) := by core033_kernel_decide
theorem stats2875 : actualRows2875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2875=6276 := by core033_kernel_decide
theorem rows2876 : actualRows2876=WordField.canonicalRows actualModulus 2876 (.band 2869 2875) := by core033_kernel_decide
theorem stats2876 : actualRows2876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2876=5124 := by core033_kernel_decide
theorem rows2877 : actualRows2877=WordField.canonicalRows actualModulus 2877 (.bxor 2864 2876) := by core033_kernel_decide
theorem stats2877 : actualRows2877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2877=7428 := by core033_kernel_decide
theorem rows2878 : actualRows2878=WordField.canonicalRows actualModulus 2878 (.shr 2877 31) := by core033_kernel_decide
theorem stats2878 : actualRows2878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2878=2892 := by core033_kernel_decide
theorem rows2879 : actualRows2879=WordField.canonicalRows actualModulus 2879 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2879 : actualRows2879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2879=2892 := by core033_kernel_decide
theorem rows2880 : actualRows2880=WordField.canonicalRows actualModulus 2880 (.bxor 2878 2879) := by core033_kernel_decide
theorem stats2880 : actualRows2880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2880=7428 := by core033_kernel_decide
theorem rows2881 : actualRows2881=WordField.canonicalRows actualModulus 2881 (.bnot 2880) := by core033_kernel_decide
theorem stats2881 : actualRows2881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2881=6276 := by core033_kernel_decide
theorem rows2882 : actualRows2882=WordField.canonicalRows actualModulus 2882 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2882 : actualRows2882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2882=2892 := by core033_kernel_decide
theorem rows2883 : actualRows2883=WordField.canonicalRows actualModulus 2883 (.badd 2881 2882) := by core033_kernel_decide
theorem stats2883 : actualRows2883.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2883=5388 := by core033_kernel_decide
theorem rows2884 : actualRows2884=WordField.canonicalRows actualModulus 2884 (.band 2883 1523) := by core033_kernel_decide
theorem stats2884 : actualRows2884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2884=5124 := by core033_kernel_decide
theorem rows2885 : actualRows2885=WordField.canonicalRows actualModulus 2885 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2885 : actualRows2885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2885=2892 := by core033_kernel_decide
theorem rows2886 : actualRows2886=WordField.canonicalRows actualModulus 2886 (.bxor 96 2885) := by core033_kernel_decide
theorem stats2886 : actualRows2886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2886=7428 := by core033_kernel_decide
theorem rows2887 : actualRows2887=WordField.canonicalRows actualModulus 2887 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2887 : actualRows2887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2887=2820 := by core033_kernel_decide
theorem rows2888 : actualRows2888=WordField.canonicalRows actualModulus 2888 (.bnot 2887) := by core033_kernel_decide
theorem stats2888 : actualRows2888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2888=6276 := by core033_kernel_decide
theorem rows2889 : actualRows2889=WordField.canonicalRows actualModulus 2889 (.band 2886 2888) := by core033_kernel_decide
theorem stats2889 : actualRows2889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2889=5124 := by core033_kernel_decide
theorem rows2890 : actualRows2890=WordField.canonicalRows actualModulus 2890 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2890 : actualRows2890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2890=2892 := by core033_kernel_decide
theorem rows2891 : actualRows2891=WordField.canonicalRows actualModulus 2891 (.bxor 96 2890) := by core033_kernel_decide
theorem stats2891 : actualRows2891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2891=7428 := by core033_kernel_decide
theorem rows2892 : actualRows2892=WordField.canonicalRows actualModulus 2892 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2892 : actualRows2892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2892=2820 := by core033_kernel_decide
theorem rows2893 : actualRows2893=WordField.canonicalRows actualModulus 2893 (.bnot 2892) := by core033_kernel_decide
theorem stats2893 : actualRows2893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2893=6276 := by core033_kernel_decide
theorem rows2894 : actualRows2894=WordField.canonicalRows actualModulus 2894 (.bxor 2891 2893) := by core033_kernel_decide
theorem stats2894 : actualRows2894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2894=7428 := by core033_kernel_decide
theorem rows2895 : actualRows2895=WordField.canonicalRows actualModulus 2895 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2895 : actualRows2895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2895=2892 := by core033_kernel_decide
theorem rows2896 : actualRows2896=WordField.canonicalRows actualModulus 2896 (.bxor 96 2895) := by core033_kernel_decide
theorem stats2896 : actualRows2896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2896=7428 := by core033_kernel_decide
theorem rows2897 : actualRows2897=WordField.canonicalRows actualModulus 2897 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2897 : actualRows2897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2897=2820 := by core033_kernel_decide
theorem rows2898 : actualRows2898=WordField.canonicalRows actualModulus 2898 (.bnot 2897) := by core033_kernel_decide
theorem stats2898 : actualRows2898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2898=6276 := by core033_kernel_decide
theorem rows2899 : actualRows2899=WordField.canonicalRows actualModulus 2899 (.badd 2896 2898) := by core033_kernel_decide
theorem stats2899 : actualRows2899.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2899=5388 := by core033_kernel_decide
theorem rows2900 : actualRows2900=WordField.canonicalRows actualModulus 2900 (.bnot 2899) := by core033_kernel_decide
theorem stats2900 : actualRows2900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2900=6276 := by core033_kernel_decide
theorem rows2901 : actualRows2901=WordField.canonicalRows actualModulus 2901 (.band 2894 2900) := by core033_kernel_decide
theorem stats2901 : actualRows2901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2901=5124 := by core033_kernel_decide
theorem rows2902 : actualRows2902=WordField.canonicalRows actualModulus 2902 (.bxor 2889 2901) := by core033_kernel_decide
theorem stats2902 : actualRows2902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2902=7428 := by core033_kernel_decide
theorem rows2903 : actualRows2903=WordField.canonicalRows actualModulus 2903 (.shr 2902 31) := by core033_kernel_decide
theorem stats2903 : actualRows2903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2903=2892 := by core033_kernel_decide
theorem rows2904 : actualRows2904=WordField.canonicalRows actualModulus 2904 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2904 : actualRows2904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2904=2892 := by core033_kernel_decide
theorem rows2905 : actualRows2905=WordField.canonicalRows actualModulus 2905 (.bxor 2903 2904) := by core033_kernel_decide
theorem stats2905 : actualRows2905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2905=7428 := by core033_kernel_decide
theorem rows2906 : actualRows2906=WordField.canonicalRows actualModulus 2906 (.bnot 2905) := by core033_kernel_decide
theorem stats2906 : actualRows2906.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2906=6276 := by core033_kernel_decide
theorem rows2907 : actualRows2907=WordField.canonicalRows actualModulus 2907 (.literal (BitVec.ofNat 32 1)) := by core033_kernel_decide
theorem stats2907 : actualRows2907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2907=2892 := by core033_kernel_decide
theorem rows2908 : actualRows2908=WordField.canonicalRows actualModulus 2908 (.badd 2906 2907) := by core033_kernel_decide
theorem stats2908 : actualRows2908.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows2908=5388 := by core033_kernel_decide
theorem rows2909 : actualRows2909=WordField.canonicalRows actualModulus 2909 (.bnot 2908) := by core033_kernel_decide
theorem stats2909 : actualRows2909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2909=6276 := by core033_kernel_decide
theorem rows2910 : actualRows2910=WordField.canonicalRows actualModulus 2910 (.band 2909 1353) := by core033_kernel_decide
theorem stats2910 : actualRows2910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2910=5124 := by core033_kernel_decide
theorem rows2911 : actualRows2911=WordField.canonicalRows actualModulus 2911 (.bxor 2884 2910) := by core033_kernel_decide
theorem stats2911 : actualRows2911.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2911=7428 := by core033_kernel_decide
theorem rows2912 : actualRows2912=WordField.canonicalRows actualModulus 2912 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2912 : actualRows2912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2912=2892 := by core033_kernel_decide
theorem rows2913 : actualRows2913=WordField.canonicalRows actualModulus 2913 (.bxor 96 2912) := by core033_kernel_decide
theorem stats2913 : actualRows2913.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2913=7428 := by core033_kernel_decide
theorem rows2914 : actualRows2914=WordField.canonicalRows actualModulus 2914 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2914 : actualRows2914.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2914=2820 := by core033_kernel_decide
theorem rows2915 : actualRows2915=WordField.canonicalRows actualModulus 2915 (.bnot 2914) := by core033_kernel_decide
theorem stats2915 : actualRows2915.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2915=6276 := by core033_kernel_decide
theorem rows2916 : actualRows2916=WordField.canonicalRows actualModulus 2916 (.band 2913 2915) := by core033_kernel_decide
theorem stats2916 : actualRows2916.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2916=5124 := by core033_kernel_decide
theorem rows2917 : actualRows2917=WordField.canonicalRows actualModulus 2917 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2917 : actualRows2917.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2917=2892 := by core033_kernel_decide
theorem rows2918 : actualRows2918=WordField.canonicalRows actualModulus 2918 (.bxor 96 2917) := by core033_kernel_decide
theorem stats2918 : actualRows2918.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2918=7428 := by core033_kernel_decide
theorem rows2919 : actualRows2919=WordField.canonicalRows actualModulus 2919 (.literal (BitVec.ofNat 32 0)) := by core033_kernel_decide
theorem stats2919 : actualRows2919.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2919=2820 := by core033_kernel_decide
theorem rows2920 : actualRows2920=WordField.canonicalRows actualModulus 2920 (.bnot 2919) := by core033_kernel_decide
theorem stats2920 : actualRows2920.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2920=6276 := by core033_kernel_decide
theorem rows2921 : actualRows2921=WordField.canonicalRows actualModulus 2921 (.bxor 2918 2920) := by core033_kernel_decide
theorem stats2921 : actualRows2921.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2921=7428 := by core033_kernel_decide
theorem rows2922 : actualRows2922=WordField.canonicalRows actualModulus 2922 (.literal (BitVec.ofNat 32 2)) := by core033_kernel_decide
theorem stats2922 : actualRows2922.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows2922=2892 := by core033_kernel_decide
def partRows44 : List R1CS.Row := actualRows2859++actualRows2860++actualRows2861++actualRows2862++actualRows2863++actualRows2864++actualRows2865++actualRows2866++actualRows2867++actualRows2868++actualRows2869++actualRows2870++actualRows2871++actualRows2872++actualRows2873++actualRows2874++actualRows2875++actualRows2876++actualRows2877++actualRows2878++actualRows2879++actualRows2880++actualRows2881++actualRows2882++actualRows2883++actualRows2884++actualRows2885++actualRows2886++actualRows2887++actualRows2888++actualRows2889++actualRows2890++actualRows2891++actualRows2892++actualRows2893++actualRows2894++actualRows2895++actualRows2896++actualRows2897++actualRows2898++actualRows2899++actualRows2900++actualRows2901++actualRows2902++actualRows2903++actualRows2904++actualRows2905++actualRows2906++actualRows2907++actualRows2908++actualRows2909++actualRows2910++actualRows2911++actualRows2912++actualRows2913++actualRows2914++actualRows2915++actualRows2916++actualRows2917++actualRows2918++actualRows2919++actualRows2920++actualRows2921++actualRows2922
def partOps44 : List WordIR.Op := [.bxor 2832 2858,.literal (BitVec.ofNat 32 2),.bxor 96 2860,.literal (BitVec.ofNat 32 0),.bnot 2862,.band 2861 2863,.literal (BitVec.ofNat 32 2),.bxor 96 2865,.literal (BitVec.ofNat 32 0),.bnot 2867,.bxor 2866 2868,.literal (BitVec.ofNat 32 2),.bxor 96 2870,.literal (BitVec.ofNat 32 0),.bnot 2872,.badd 2871 2873,.bnot 2874,.band 2869 2875,.bxor 2864 2876,.shr 2877 31,.literal (BitVec.ofNat 32 1),.bxor 2878 2879,.bnot 2880,.literal (BitVec.ofNat 32 1),.badd 2881 2882,.band 2883 1523,.literal (BitVec.ofNat 32 2),.bxor 96 2885,.literal (BitVec.ofNat 32 0),.bnot 2887,.band 2886 2888,.literal (BitVec.ofNat 32 2),.bxor 96 2890,.literal (BitVec.ofNat 32 0),.bnot 2892,.bxor 2891 2893,.literal (BitVec.ofNat 32 2),.bxor 96 2895,.literal (BitVec.ofNat 32 0),.bnot 2897,.badd 2896 2898,.bnot 2899,.band 2894 2900,.bxor 2889 2901,.shr 2902 31,.literal (BitVec.ofNat 32 1),.bxor 2903 2904,.bnot 2905,.literal (BitVec.ofNat 32 1),.badd 2906 2907,.bnot 2908,.band 2909 1353,.bxor 2884 2910,.literal (BitVec.ofNat 32 2),.bxor 96 2912,.literal (BitVec.ofNat 32 0),.bnot 2914,.band 2913 2915,.literal (BitVec.ofNat 32 2),.bxor 96 2917,.literal (BitVec.ofNat 32 0),.bnot 2919,.bxor 2918 2920,.literal (BitVec.ofNat 32 2)]
theorem partExact44 : partRows44=WordField.rows actualModulus 2859 partOps44 := by
  simp only [partRows44,partOps44,WordField.rows,rows2859,rows2860,rows2861,rows2862,rows2863,rows2864,rows2865,rows2866,rows2867,rows2868,rows2869,rows2870,rows2871,rows2872,rows2873,rows2874,rows2875,rows2876,rows2877,rows2878,rows2879,rows2880,rows2881,rows2882,rows2883,rows2884,rows2885,rows2886,rows2887,rows2888,rows2889,rows2890,rows2891,rows2892,rows2893,rows2894,rows2895,rows2896,rows2897,rows2898,rows2899,rows2900,rows2901,rows2902,rows2903,rows2904,rows2905,rows2906,rows2907,rows2908,rows2909,rows2910,rows2911,rows2912,rows2913,rows2914,rows2915,rows2916,rows2917,rows2918,rows2919,rows2920,rows2921,rows2922,List.append_assoc,List.append_nil]
theorem partLength44 : partOps44.length=64 := by decide
theorem partStats44 : partRows44.length=2180 ∧ MatrixRowBlocks.rowsWeight partRows44=331224 := by
  simp only [partRows44,List.length_append,MatrixRowBlocks.rows_weight_append,stats2859.1,stats2859.2,stats2860.1,stats2860.2,stats2861.1,stats2861.2,stats2862.1,stats2862.2,stats2863.1,stats2863.2,stats2864.1,stats2864.2,stats2865.1,stats2865.2,stats2866.1,stats2866.2,stats2867.1,stats2867.2,stats2868.1,stats2868.2,stats2869.1,stats2869.2,stats2870.1,stats2870.2,stats2871.1,stats2871.2,stats2872.1,stats2872.2,stats2873.1,stats2873.2,stats2874.1,stats2874.2,stats2875.1,stats2875.2,stats2876.1,stats2876.2,stats2877.1,stats2877.2,stats2878.1,stats2878.2,stats2879.1,stats2879.2,stats2880.1,stats2880.2,stats2881.1,stats2881.2,stats2882.1,stats2882.2,stats2883.1,stats2883.2,stats2884.1,stats2884.2,stats2885.1,stats2885.2,stats2886.1,stats2886.2,stats2887.1,stats2887.2,stats2888.1,stats2888.2,stats2889.1,stats2889.2,stats2890.1,stats2890.2,stats2891.1,stats2891.2,stats2892.1,stats2892.2,stats2893.1,stats2893.2,stats2894.1,stats2894.2,stats2895.1,stats2895.2,stats2896.1,stats2896.2,stats2897.1,stats2897.2,stats2898.1,stats2898.2,stats2899.1,stats2899.2,stats2900.1,stats2900.2,stats2901.1,stats2901.2,stats2902.1,stats2902.2,stats2903.1,stats2903.2,stats2904.1,stats2904.2,stats2905.1,stats2905.2,stats2906.1,stats2906.2,stats2907.1,stats2907.2,stats2908.1,stats2908.2,stats2909.1,stats2909.2,stats2910.1,stats2910.2,stats2911.1,stats2911.2,stats2912.1,stats2912.2,stats2913.1,stats2913.2,stats2914.1,stats2914.2,stats2915.1,stats2915.2,stats2916.1,stats2916.2,stats2917.1,stats2917.2,stats2918.1,stats2918.2,stats2919.1,stats2919.2,stats2920.1,stats2920.2,stats2921.1,stats2921.2,stats2922.1,stats2922.2]
  decide
end PathRoundDispatchCheckedRows
