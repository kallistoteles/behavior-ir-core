import ActualFrameHashControllerIR
import Core033.FrameHashController
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import FrameHashControllerInstructionMatrixData122
import FrameHashControllerInstructionMatrixData123
namespace FrameHashControllerCheckedRows
open Core033 FrameHashControllerInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7851 : actualRows7851=WordField.canonicalRows actualModulus 7851 (.bxor 7849 7850) := by core033_kernel_decide
theorem stats7851 : actualRows7851.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7851=7428 := by core033_kernel_decide
theorem rows7852 : actualRows7852=WordField.canonicalRows actualModulus 7852 (.badd 7765 7851) := by core033_kernel_decide
theorem stats7852 : actualRows7852.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7852=5388 := by core033_kernel_decide
theorem rows7853 : actualRows7853=WordField.canonicalRows actualModulus 7853 (.band 7846 7819) := by core033_kernel_decide
theorem stats7853 : actualRows7853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7853=5124 := by core033_kernel_decide
theorem rows7854 : actualRows7854=WordField.canonicalRows actualModulus 7854 (.bnot 7846) := by core033_kernel_decide
theorem stats7854 : actualRows7854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7854=6276 := by core033_kernel_decide
theorem rows7855 : actualRows7855=WordField.canonicalRows actualModulus 7855 (.band 7854 7792) := by core033_kernel_decide
theorem stats7855 : actualRows7855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7855=5124 := by core033_kernel_decide
theorem rows7856 : actualRows7856=WordField.canonicalRows actualModulus 7856 (.bxor 7853 7855) := by core033_kernel_decide
theorem stats7856 : actualRows7856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7856=7428 := by core033_kernel_decide
theorem rows7857 : actualRows7857=WordField.canonicalRows actualModulus 7857 (.badd 7852 7856) := by core033_kernel_decide
theorem stats7857 : actualRows7857.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7857=5388 := by core033_kernel_decide
theorem rows7858 : actualRows7858=WordField.canonicalRows actualModulus 7858 (.literal (BitVec.ofNat 32 113926993)) := by core033_kernel_decide
theorem stats7858 : actualRows7858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7858=3756 := by core033_kernel_decide
theorem rows7859 : actualRows7859=WordField.canonicalRows actualModulus 7859 (.badd 7857 7858) := by core033_kernel_decide
theorem stats7859 : actualRows7859.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7859=5388 := by core033_kernel_decide
theorem rows7860 : actualRows7860=WordField.canonicalRows actualModulus 7860 (.badd 7859 6607) := by core033_kernel_decide
theorem stats7860 : actualRows7860.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7860=5388 := by core033_kernel_decide
theorem rows7861 : actualRows7861=WordField.canonicalRows actualModulus 7861 (.rotr 7845 2) := by core033_kernel_decide
theorem stats7861 : actualRows7861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7861=5124 := by core033_kernel_decide
theorem rows7862 : actualRows7862=WordField.canonicalRows actualModulus 7862 (.rotr 7845 13) := by core033_kernel_decide
theorem stats7862 : actualRows7862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7862=5124 := by core033_kernel_decide
theorem rows7863 : actualRows7863=WordField.canonicalRows actualModulus 7863 (.bxor 7861 7862) := by core033_kernel_decide
theorem stats7863 : actualRows7863.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7863=7428 := by core033_kernel_decide
theorem rows7864 : actualRows7864=WordField.canonicalRows actualModulus 7864 (.rotr 7845 22) := by core033_kernel_decide
theorem stats7864 : actualRows7864.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7864=5124 := by core033_kernel_decide
theorem rows7865 : actualRows7865=WordField.canonicalRows actualModulus 7865 (.bxor 7863 7864) := by core033_kernel_decide
theorem stats7865 : actualRows7865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7865=7428 := by core033_kernel_decide
theorem rows7866 : actualRows7866=WordField.canonicalRows actualModulus 7866 (.band 7845 7818) := by core033_kernel_decide
theorem stats7866 : actualRows7866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7866=5124 := by core033_kernel_decide
theorem rows7867 : actualRows7867=WordField.canonicalRows actualModulus 7867 (.band 7845 7791) := by core033_kernel_decide
theorem stats7867 : actualRows7867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7867=5124 := by core033_kernel_decide
theorem rows7868 : actualRows7868=WordField.canonicalRows actualModulus 7868 (.bxor 7866 7867) := by core033_kernel_decide
theorem stats7868 : actualRows7868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7868=7428 := by core033_kernel_decide
theorem rows7869 : actualRows7869=WordField.canonicalRows actualModulus 7869 (.band 7818 7791) := by core033_kernel_decide
theorem stats7869 : actualRows7869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7869=5124 := by core033_kernel_decide
theorem rows7870 : actualRows7870=WordField.canonicalRows actualModulus 7870 (.bxor 7868 7869) := by core033_kernel_decide
theorem stats7870 : actualRows7870.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7870=7428 := by core033_kernel_decide
theorem rows7871 : actualRows7871=WordField.canonicalRows actualModulus 7871 (.badd 7865 7870) := by core033_kernel_decide
theorem stats7871 : actualRows7871.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7871=5388 := by core033_kernel_decide
theorem rows7872 : actualRows7872=WordField.canonicalRows actualModulus 7872 (.badd 7860 7871) := by core033_kernel_decide
theorem stats7872 : actualRows7872.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7872=5388 := by core033_kernel_decide
theorem rows7873 : actualRows7873=WordField.canonicalRows actualModulus 7873 (.badd 7764 7860) := by core033_kernel_decide
theorem stats7873 : actualRows7873.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7873=5388 := by core033_kernel_decide
theorem rows7874 : actualRows7874=WordField.canonicalRows actualModulus 7874 (.rotr 7873 6) := by core033_kernel_decide
theorem stats7874 : actualRows7874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7874=5124 := by core033_kernel_decide
theorem rows7875 : actualRows7875=WordField.canonicalRows actualModulus 7875 (.rotr 7873 11) := by core033_kernel_decide
theorem stats7875 : actualRows7875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7875=5124 := by core033_kernel_decide
theorem rows7876 : actualRows7876=WordField.canonicalRows actualModulus 7876 (.bxor 7874 7875) := by core033_kernel_decide
theorem stats7876 : actualRows7876.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7876=7428 := by core033_kernel_decide
theorem rows7877 : actualRows7877=WordField.canonicalRows actualModulus 7877 (.rotr 7873 25) := by core033_kernel_decide
theorem stats7877 : actualRows7877.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7877=5124 := by core033_kernel_decide
theorem rows7878 : actualRows7878=WordField.canonicalRows actualModulus 7878 (.bxor 7876 7877) := by core033_kernel_decide
theorem stats7878 : actualRows7878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7878=7428 := by core033_kernel_decide
theorem rows7879 : actualRows7879=WordField.canonicalRows actualModulus 7879 (.badd 7792 7878) := by core033_kernel_decide
theorem stats7879 : actualRows7879.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7879=5388 := by core033_kernel_decide
theorem rows7880 : actualRows7880=WordField.canonicalRows actualModulus 7880 (.band 7873 7846) := by core033_kernel_decide
theorem stats7880 : actualRows7880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7880=5124 := by core033_kernel_decide
theorem rows7881 : actualRows7881=WordField.canonicalRows actualModulus 7881 (.bnot 7873) := by core033_kernel_decide
theorem stats7881 : actualRows7881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7881=6276 := by core033_kernel_decide
theorem rows7882 : actualRows7882=WordField.canonicalRows actualModulus 7882 (.band 7881 7819) := by core033_kernel_decide
theorem stats7882 : actualRows7882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7882=5124 := by core033_kernel_decide
theorem rows7883 : actualRows7883=WordField.canonicalRows actualModulus 7883 (.bxor 7880 7882) := by core033_kernel_decide
theorem stats7883 : actualRows7883.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7883=7428 := by core033_kernel_decide
theorem rows7884 : actualRows7884=WordField.canonicalRows actualModulus 7884 (.badd 7879 7883) := by core033_kernel_decide
theorem stats7884 : actualRows7884.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7884=5388 := by core033_kernel_decide
theorem rows7885 : actualRows7885=WordField.canonicalRows actualModulus 7885 (.literal (BitVec.ofNat 32 338241895)) := by core033_kernel_decide
theorem stats7885 : actualRows7885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7885=3756 := by core033_kernel_decide
theorem rows7886 : actualRows7886=WordField.canonicalRows actualModulus 7886 (.badd 7884 7885) := by core033_kernel_decide
theorem stats7886 : actualRows7886.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7886=5388 := by core033_kernel_decide
theorem rows7887 : actualRows7887=WordField.canonicalRows actualModulus 7887 (.badd 7886 6620) := by core033_kernel_decide
theorem stats7887 : actualRows7887.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7887=5388 := by core033_kernel_decide
theorem rows7888 : actualRows7888=WordField.canonicalRows actualModulus 7888 (.rotr 7872 2) := by core033_kernel_decide
theorem stats7888 : actualRows7888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7888=5124 := by core033_kernel_decide
theorem rows7889 : actualRows7889=WordField.canonicalRows actualModulus 7889 (.rotr 7872 13) := by core033_kernel_decide
theorem stats7889 : actualRows7889.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7889=5124 := by core033_kernel_decide
theorem rows7890 : actualRows7890=WordField.canonicalRows actualModulus 7890 (.bxor 7888 7889) := by core033_kernel_decide
theorem stats7890 : actualRows7890.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7890=7428 := by core033_kernel_decide
theorem rows7891 : actualRows7891=WordField.canonicalRows actualModulus 7891 (.rotr 7872 22) := by core033_kernel_decide
theorem stats7891 : actualRows7891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7891=5124 := by core033_kernel_decide
theorem rows7892 : actualRows7892=WordField.canonicalRows actualModulus 7892 (.bxor 7890 7891) := by core033_kernel_decide
theorem stats7892 : actualRows7892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7892=7428 := by core033_kernel_decide
theorem rows7893 : actualRows7893=WordField.canonicalRows actualModulus 7893 (.band 7872 7845) := by core033_kernel_decide
theorem stats7893 : actualRows7893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7893=5124 := by core033_kernel_decide
theorem rows7894 : actualRows7894=WordField.canonicalRows actualModulus 7894 (.band 7872 7818) := by core033_kernel_decide
theorem stats7894 : actualRows7894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7894=5124 := by core033_kernel_decide
theorem rows7895 : actualRows7895=WordField.canonicalRows actualModulus 7895 (.bxor 7893 7894) := by core033_kernel_decide
theorem stats7895 : actualRows7895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7895=7428 := by core033_kernel_decide
theorem rows7896 : actualRows7896=WordField.canonicalRows actualModulus 7896 (.band 7845 7818) := by core033_kernel_decide
theorem stats7896 : actualRows7896.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7896=5124 := by core033_kernel_decide
theorem rows7897 : actualRows7897=WordField.canonicalRows actualModulus 7897 (.bxor 7895 7896) := by core033_kernel_decide
theorem stats7897 : actualRows7897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7897=7428 := by core033_kernel_decide
theorem rows7898 : actualRows7898=WordField.canonicalRows actualModulus 7898 (.badd 7892 7897) := by core033_kernel_decide
theorem stats7898 : actualRows7898.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7898=5388 := by core033_kernel_decide
theorem rows7899 : actualRows7899=WordField.canonicalRows actualModulus 7899 (.badd 7887 7898) := by core033_kernel_decide
theorem stats7899 : actualRows7899.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7899=5388 := by core033_kernel_decide
theorem rows7900 : actualRows7900=WordField.canonicalRows actualModulus 7900 (.badd 7791 7887) := by core033_kernel_decide
theorem stats7900 : actualRows7900.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7900=5388 := by core033_kernel_decide
theorem rows7901 : actualRows7901=WordField.canonicalRows actualModulus 7901 (.rotr 7900 6) := by core033_kernel_decide
theorem stats7901 : actualRows7901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7901=5124 := by core033_kernel_decide
theorem rows7902 : actualRows7902=WordField.canonicalRows actualModulus 7902 (.rotr 7900 11) := by core033_kernel_decide
theorem stats7902 : actualRows7902.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7902=5124 := by core033_kernel_decide
theorem rows7903 : actualRows7903=WordField.canonicalRows actualModulus 7903 (.bxor 7901 7902) := by core033_kernel_decide
theorem stats7903 : actualRows7903.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7903=7428 := by core033_kernel_decide
theorem rows7904 : actualRows7904=WordField.canonicalRows actualModulus 7904 (.rotr 7900 25) := by core033_kernel_decide
theorem stats7904 : actualRows7904.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7904=5124 := by core033_kernel_decide
theorem rows7905 : actualRows7905=WordField.canonicalRows actualModulus 7905 (.bxor 7903 7904) := by core033_kernel_decide
theorem stats7905 : actualRows7905.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7905=7428 := by core033_kernel_decide
theorem rows7906 : actualRows7906=WordField.canonicalRows actualModulus 7906 (.badd 7819 7905) := by core033_kernel_decide
theorem stats7906 : actualRows7906.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7906=5388 := by core033_kernel_decide
theorem rows7907 : actualRows7907=WordField.canonicalRows actualModulus 7907 (.band 7900 7873) := by core033_kernel_decide
theorem stats7907 : actualRows7907.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7907=5124 := by core033_kernel_decide
theorem rows7908 : actualRows7908=WordField.canonicalRows actualModulus 7908 (.bnot 7900) := by core033_kernel_decide
theorem stats7908 : actualRows7908.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7908=6276 := by core033_kernel_decide
theorem rows7909 : actualRows7909=WordField.canonicalRows actualModulus 7909 (.band 7908 7846) := by core033_kernel_decide
theorem stats7909 : actualRows7909.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7909=5124 := by core033_kernel_decide
theorem rows7910 : actualRows7910=WordField.canonicalRows actualModulus 7910 (.bxor 7907 7909) := by core033_kernel_decide
theorem stats7910 : actualRows7910.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7910=7428 := by core033_kernel_decide
theorem rows7911 : actualRows7911=WordField.canonicalRows actualModulus 7911 (.badd 7906 7910) := by core033_kernel_decide
theorem stats7911 : actualRows7911.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7911=5388 := by core033_kernel_decide
theorem rows7912 : actualRows7912=WordField.canonicalRows actualModulus 7912 (.literal (BitVec.ofNat 32 666307205)) := by core033_kernel_decide
theorem stats7912 : actualRows7912.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7912=3900 := by core033_kernel_decide
theorem rows7913 : actualRows7913=WordField.canonicalRows actualModulus 7913 (.badd 7911 7912) := by core033_kernel_decide
theorem stats7913 : actualRows7913.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7913=5388 := by core033_kernel_decide
theorem rows7914 : actualRows7914=WordField.canonicalRows actualModulus 7914 (.badd 7913 6633) := by core033_kernel_decide
theorem stats7914 : actualRows7914.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7914=5388 := by core033_kernel_decide
def partRows122 : List R1CS.Row := actualRows7851++actualRows7852++actualRows7853++actualRows7854++actualRows7855++actualRows7856++actualRows7857++actualRows7858++actualRows7859++actualRows7860++actualRows7861++actualRows7862++actualRows7863++actualRows7864++actualRows7865++actualRows7866++actualRows7867++actualRows7868++actualRows7869++actualRows7870++actualRows7871++actualRows7872++actualRows7873++actualRows7874++actualRows7875++actualRows7876++actualRows7877++actualRows7878++actualRows7879++actualRows7880++actualRows7881++actualRows7882++actualRows7883++actualRows7884++actualRows7885++actualRows7886++actualRows7887++actualRows7888++actualRows7889++actualRows7890++actualRows7891++actualRows7892++actualRows7893++actualRows7894++actualRows7895++actualRows7896++actualRows7897++actualRows7898++actualRows7899++actualRows7900++actualRows7901++actualRows7902++actualRows7903++actualRows7904++actualRows7905++actualRows7906++actualRows7907++actualRows7908++actualRows7909++actualRows7910++actualRows7911++actualRows7912++actualRows7913++actualRows7914
def partOps122 : List WordIR.Op := [.bxor 7849 7850,.badd 7765 7851,.band 7846 7819,.bnot 7846,.band 7854 7792,.bxor 7853 7855,.badd 7852 7856,.literal (BitVec.ofNat 32 113926993),.badd 7857 7858,.badd 7859 6607,.rotr 7845 2,.rotr 7845 13,.bxor 7861 7862,.rotr 7845 22,.bxor 7863 7864,.band 7845 7818,.band 7845 7791,.bxor 7866 7867,.band 7818 7791,.bxor 7868 7869,.badd 7865 7870,.badd 7860 7871,.badd 7764 7860,.rotr 7873 6,.rotr 7873 11,.bxor 7874 7875,.rotr 7873 25,.bxor 7876 7877,.badd 7792 7878,.band 7873 7846,.bnot 7873,.band 7881 7819,.bxor 7880 7882,.badd 7879 7883,.literal (BitVec.ofNat 32 338241895),.badd 7884 7885,.badd 7886 6620,.rotr 7872 2,.rotr 7872 13,.bxor 7888 7889,.rotr 7872 22,.bxor 7890 7891,.band 7872 7845,.band 7872 7818,.bxor 7893 7894,.band 7845 7818,.bxor 7895 7896,.badd 7892 7897,.badd 7887 7898,.badd 7791 7887,.rotr 7900 6,.rotr 7900 11,.bxor 7901 7902,.rotr 7900 25,.bxor 7903 7904,.badd 7819 7905,.band 7900 7873,.bnot 7900,.band 7908 7846,.bxor 7907 7909,.badd 7906 7910,.literal (BitVec.ofNat 32 666307205),.badd 7911 7912,.badd 7913 6633]
theorem partExact122 : partRows122=WordField.rows actualModulus 7851 partOps122 := by
  simp only [partRows122,partOps122,WordField.rows,rows7851,rows7852,rows7853,rows7854,rows7855,rows7856,rows7857,rows7858,rows7859,rows7860,rows7861,rows7862,rows7863,rows7864,rows7865,rows7866,rows7867,rows7868,rows7869,rows7870,rows7871,rows7872,rows7873,rows7874,rows7875,rows7876,rows7877,rows7878,rows7879,rows7880,rows7881,rows7882,rows7883,rows7884,rows7885,rows7886,rows7887,rows7888,rows7889,rows7890,rows7891,rows7892,rows7893,rows7894,rows7895,rows7896,rows7897,rows7898,rows7899,rows7900,rows7901,rows7902,rows7903,rows7904,rows7905,rows7906,rows7907,rows7908,rows7909,rows7910,rows7911,rows7912,rows7913,rows7914,List.append_assoc,List.append_nil]
theorem partLength122 : partOps122.length=64 := by decide
theorem partStats122 : partRows122.length=2194 ∧ MatrixRowBlocks.rowsWeight partRows122=369048 := by
  simp only [partRows122,List.length_append,MatrixRowBlocks.rows_weight_append,stats7851.1,stats7851.2,stats7852.1,stats7852.2,stats7853.1,stats7853.2,stats7854.1,stats7854.2,stats7855.1,stats7855.2,stats7856.1,stats7856.2,stats7857.1,stats7857.2,stats7858.1,stats7858.2,stats7859.1,stats7859.2,stats7860.1,stats7860.2,stats7861.1,stats7861.2,stats7862.1,stats7862.2,stats7863.1,stats7863.2,stats7864.1,stats7864.2,stats7865.1,stats7865.2,stats7866.1,stats7866.2,stats7867.1,stats7867.2,stats7868.1,stats7868.2,stats7869.1,stats7869.2,stats7870.1,stats7870.2,stats7871.1,stats7871.2,stats7872.1,stats7872.2,stats7873.1,stats7873.2,stats7874.1,stats7874.2,stats7875.1,stats7875.2,stats7876.1,stats7876.2,stats7877.1,stats7877.2,stats7878.1,stats7878.2,stats7879.1,stats7879.2,stats7880.1,stats7880.2,stats7881.1,stats7881.2,stats7882.1,stats7882.2,stats7883.1,stats7883.2,stats7884.1,stats7884.2,stats7885.1,stats7885.2,stats7886.1,stats7886.2,stats7887.1,stats7887.2,stats7888.1,stats7888.2,stats7889.1,stats7889.2,stats7890.1,stats7890.2,stats7891.1,stats7891.2,stats7892.1,stats7892.2,stats7893.1,stats7893.2,stats7894.1,stats7894.2,stats7895.1,stats7895.2,stats7896.1,stats7896.2,stats7897.1,stats7897.2,stats7898.1,stats7898.2,stats7899.1,stats7899.2,stats7900.1,stats7900.2,stats7901.1,stats7901.2,stats7902.1,stats7902.2,stats7903.1,stats7903.2,stats7904.1,stats7904.2,stats7905.1,stats7905.2,stats7906.1,stats7906.2,stats7907.1,stats7907.2,stats7908.1,stats7908.2,stats7909.1,stats7909.2,stats7910.1,stats7910.2,stats7911.1,stats7911.2,stats7912.1,stats7912.2,stats7913.1,stats7913.2,stats7914.1,stats7914.2]
  decide
end FrameHashControllerCheckedRows
