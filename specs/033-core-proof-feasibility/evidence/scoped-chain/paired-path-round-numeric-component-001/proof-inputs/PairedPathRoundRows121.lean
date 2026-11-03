import ActualPairedPathRoundIR
import Core033.PairedPathRound
import Core033.GuardMatrix
import Core033.MatrixRowBlocks
import Core033.KernelDecide
import PairedPathRoundInstructionMatrixData122
import PairedPathRoundInstructionMatrixData123
namespace PairedPathRoundCheckedRows
open Core033 PairedPathRoundInstructionData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows7840 : actualRows7840=WordField.canonicalRows actualModulus 7840 (.rotr 7825 19) := by core033_kernel_decide
theorem stats7840 : actualRows7840.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7840=5124 := by core033_kernel_decide
theorem rows7841 : actualRows7841=WordField.canonicalRows actualModulus 7841 (.bxor 7839 7840) := by core033_kernel_decide
theorem stats7841 : actualRows7841.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7841=7428 := by core033_kernel_decide
theorem rows7842 : actualRows7842=WordField.canonicalRows actualModulus 7842 (.shr 7825 10) := by core033_kernel_decide
theorem stats7842 : actualRows7842.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7842=4404 := by core033_kernel_decide
theorem rows7843 : actualRows7843=WordField.canonicalRows actualModulus 7843 (.bxor 7841 7842) := by core033_kernel_decide
theorem stats7843 : actualRows7843.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7843=7428 := by core033_kernel_decide
theorem rows7844 : actualRows7844=WordField.canonicalRows actualModulus 7844 (.badd 7843 7760) := by core033_kernel_decide
theorem stats7844 : actualRows7844.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7844=5388 := by core033_kernel_decide
theorem rows7845 : actualRows7845=WordField.canonicalRows actualModulus 7845 (.rotr 7656 7) := by core033_kernel_decide
theorem stats7845 : actualRows7845.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7845=5124 := by core033_kernel_decide
theorem rows7846 : actualRows7846=WordField.canonicalRows actualModulus 7846 (.rotr 7656 18) := by core033_kernel_decide
theorem stats7846 : actualRows7846.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7846=5124 := by core033_kernel_decide
theorem rows7847 : actualRows7847=WordField.canonicalRows actualModulus 7847 (.bxor 7845 7846) := by core033_kernel_decide
theorem stats7847 : actualRows7847.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7847=7428 := by core033_kernel_decide
theorem rows7848 : actualRows7848=WordField.canonicalRows actualModulus 7848 (.shr 7656 3) := by core033_kernel_decide
theorem stats7848 : actualRows7848.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7848=4908 := by core033_kernel_decide
theorem rows7849 : actualRows7849=WordField.canonicalRows actualModulus 7849 (.bxor 7847 7848) := by core033_kernel_decide
theorem stats7849 : actualRows7849.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7849=7428 := by core033_kernel_decide
theorem rows7850 : actualRows7850=WordField.canonicalRows actualModulus 7850 (.badd 7844 7849) := by core033_kernel_decide
theorem stats7850 : actualRows7850.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7850=5388 := by core033_kernel_decide
theorem rows7851 : actualRows7851=WordField.canonicalRows actualModulus 7851 (.badd 7850 7643) := by core033_kernel_decide
theorem stats7851 : actualRows7851.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7851=5388 := by core033_kernel_decide
theorem rows7852 : actualRows7852=WordField.canonicalRows actualModulus 7852 (.rotr 7838 17) := by core033_kernel_decide
theorem stats7852 : actualRows7852.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7852=5124 := by core033_kernel_decide
theorem rows7853 : actualRows7853=WordField.canonicalRows actualModulus 7853 (.rotr 7838 19) := by core033_kernel_decide
theorem stats7853 : actualRows7853.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7853=5124 := by core033_kernel_decide
theorem rows7854 : actualRows7854=WordField.canonicalRows actualModulus 7854 (.bxor 7852 7853) := by core033_kernel_decide
theorem stats7854 : actualRows7854.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7854=7428 := by core033_kernel_decide
theorem rows7855 : actualRows7855=WordField.canonicalRows actualModulus 7855 (.shr 7838 10) := by core033_kernel_decide
theorem stats7855 : actualRows7855.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7855=4404 := by core033_kernel_decide
theorem rows7856 : actualRows7856=WordField.canonicalRows actualModulus 7856 (.bxor 7854 7855) := by core033_kernel_decide
theorem stats7856 : actualRows7856.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7856=7428 := by core033_kernel_decide
theorem rows7857 : actualRows7857=WordField.canonicalRows actualModulus 7857 (.badd 7856 7773) := by core033_kernel_decide
theorem stats7857 : actualRows7857.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7857=5388 := by core033_kernel_decide
theorem rows7858 : actualRows7858=WordField.canonicalRows actualModulus 7858 (.rotr 7669 7) := by core033_kernel_decide
theorem stats7858 : actualRows7858.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7858=5124 := by core033_kernel_decide
theorem rows7859 : actualRows7859=WordField.canonicalRows actualModulus 7859 (.rotr 7669 18) := by core033_kernel_decide
theorem stats7859 : actualRows7859.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7859=5124 := by core033_kernel_decide
theorem rows7860 : actualRows7860=WordField.canonicalRows actualModulus 7860 (.bxor 7858 7859) := by core033_kernel_decide
theorem stats7860 : actualRows7860.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7860=7428 := by core033_kernel_decide
theorem rows7861 : actualRows7861=WordField.canonicalRows actualModulus 7861 (.shr 7669 3) := by core033_kernel_decide
theorem stats7861 : actualRows7861.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7861=4908 := by core033_kernel_decide
theorem rows7862 : actualRows7862=WordField.canonicalRows actualModulus 7862 (.bxor 7860 7861) := by core033_kernel_decide
theorem stats7862 : actualRows7862.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7862=7428 := by core033_kernel_decide
theorem rows7863 : actualRows7863=WordField.canonicalRows actualModulus 7863 (.badd 7857 7862) := by core033_kernel_decide
theorem stats7863 : actualRows7863.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7863=5388 := by core033_kernel_decide
theorem rows7864 : actualRows7864=WordField.canonicalRows actualModulus 7864 (.badd 7863 7656) := by core033_kernel_decide
theorem stats7864 : actualRows7864.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7864=5388 := by core033_kernel_decide
theorem rows7865 : actualRows7865=WordField.canonicalRows actualModulus 7865 (.rotr 7851 17) := by core033_kernel_decide
theorem stats7865 : actualRows7865.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7865=5124 := by core033_kernel_decide
theorem rows7866 : actualRows7866=WordField.canonicalRows actualModulus 7866 (.rotr 7851 19) := by core033_kernel_decide
theorem stats7866 : actualRows7866.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7866=5124 := by core033_kernel_decide
theorem rows7867 : actualRows7867=WordField.canonicalRows actualModulus 7867 (.bxor 7865 7866) := by core033_kernel_decide
theorem stats7867 : actualRows7867.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7867=7428 := by core033_kernel_decide
theorem rows7868 : actualRows7868=WordField.canonicalRows actualModulus 7868 (.shr 7851 10) := by core033_kernel_decide
theorem stats7868 : actualRows7868.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7868=4404 := by core033_kernel_decide
theorem rows7869 : actualRows7869=WordField.canonicalRows actualModulus 7869 (.bxor 7867 7868) := by core033_kernel_decide
theorem stats7869 : actualRows7869.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7869=7428 := by core033_kernel_decide
theorem rows7870 : actualRows7870=WordField.canonicalRows actualModulus 7870 (.badd 7869 7786) := by core033_kernel_decide
theorem stats7870 : actualRows7870.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7870=5388 := by core033_kernel_decide
theorem rows7871 : actualRows7871=WordField.canonicalRows actualModulus 7871 (.rotr 7682 7) := by core033_kernel_decide
theorem stats7871 : actualRows7871.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7871=5124 := by core033_kernel_decide
theorem rows7872 : actualRows7872=WordField.canonicalRows actualModulus 7872 (.rotr 7682 18) := by core033_kernel_decide
theorem stats7872 : actualRows7872.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7872=5124 := by core033_kernel_decide
theorem rows7873 : actualRows7873=WordField.canonicalRows actualModulus 7873 (.bxor 7871 7872) := by core033_kernel_decide
theorem stats7873 : actualRows7873.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7873=7428 := by core033_kernel_decide
theorem rows7874 : actualRows7874=WordField.canonicalRows actualModulus 7874 (.shr 7682 3) := by core033_kernel_decide
theorem stats7874 : actualRows7874.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7874=4908 := by core033_kernel_decide
theorem rows7875 : actualRows7875=WordField.canonicalRows actualModulus 7875 (.bxor 7873 7874) := by core033_kernel_decide
theorem stats7875 : actualRows7875.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7875=7428 := by core033_kernel_decide
theorem rows7876 : actualRows7876=WordField.canonicalRows actualModulus 7876 (.badd 7870 7875) := by core033_kernel_decide
theorem stats7876 : actualRows7876.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7876=5388 := by core033_kernel_decide
theorem rows7877 : actualRows7877=WordField.canonicalRows actualModulus 7877 (.badd 7876 7669) := by core033_kernel_decide
theorem stats7877 : actualRows7877.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7877=5388 := by core033_kernel_decide
theorem rows7878 : actualRows7878=WordField.canonicalRows actualModulus 7878 (.rotr 7864 17) := by core033_kernel_decide
theorem stats7878 : actualRows7878.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7878=5124 := by core033_kernel_decide
theorem rows7879 : actualRows7879=WordField.canonicalRows actualModulus 7879 (.rotr 7864 19) := by core033_kernel_decide
theorem stats7879 : actualRows7879.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7879=5124 := by core033_kernel_decide
theorem rows7880 : actualRows7880=WordField.canonicalRows actualModulus 7880 (.bxor 7878 7879) := by core033_kernel_decide
theorem stats7880 : actualRows7880.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7880=7428 := by core033_kernel_decide
theorem rows7881 : actualRows7881=WordField.canonicalRows actualModulus 7881 (.shr 7864 10) := by core033_kernel_decide
theorem stats7881 : actualRows7881.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7881=4404 := by core033_kernel_decide
theorem rows7882 : actualRows7882=WordField.canonicalRows actualModulus 7882 (.bxor 7880 7881) := by core033_kernel_decide
theorem stats7882 : actualRows7882.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7882=7428 := by core033_kernel_decide
theorem rows7883 : actualRows7883=WordField.canonicalRows actualModulus 7883 (.badd 7882 7799) := by core033_kernel_decide
theorem stats7883 : actualRows7883.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7883=5388 := by core033_kernel_decide
theorem rows7884 : actualRows7884=WordField.canonicalRows actualModulus 7884 (.rotr 7695 7) := by core033_kernel_decide
theorem stats7884 : actualRows7884.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7884=5124 := by core033_kernel_decide
theorem rows7885 : actualRows7885=WordField.canonicalRows actualModulus 7885 (.rotr 7695 18) := by core033_kernel_decide
theorem stats7885 : actualRows7885.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7885=5124 := by core033_kernel_decide
theorem rows7886 : actualRows7886=WordField.canonicalRows actualModulus 7886 (.bxor 7884 7885) := by core033_kernel_decide
theorem stats7886 : actualRows7886.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7886=7428 := by core033_kernel_decide
theorem rows7887 : actualRows7887=WordField.canonicalRows actualModulus 7887 (.shr 7695 3) := by core033_kernel_decide
theorem stats7887 : actualRows7887.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7887=4908 := by core033_kernel_decide
theorem rows7888 : actualRows7888=WordField.canonicalRows actualModulus 7888 (.bxor 7886 7887) := by core033_kernel_decide
theorem stats7888 : actualRows7888.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7888=7428 := by core033_kernel_decide
theorem rows7889 : actualRows7889=WordField.canonicalRows actualModulus 7889 (.badd 7883 7888) := by core033_kernel_decide
theorem stats7889 : actualRows7889.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7889=5388 := by core033_kernel_decide
theorem rows7890 : actualRows7890=WordField.canonicalRows actualModulus 7890 (.badd 7889 7682) := by core033_kernel_decide
theorem stats7890 : actualRows7890.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7890=5388 := by core033_kernel_decide
theorem rows7891 : actualRows7891=WordField.canonicalRows actualModulus 7891 (.rotr 7877 17) := by core033_kernel_decide
theorem stats7891 : actualRows7891.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7891=5124 := by core033_kernel_decide
theorem rows7892 : actualRows7892=WordField.canonicalRows actualModulus 7892 (.rotr 7877 19) := by core033_kernel_decide
theorem stats7892 : actualRows7892.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7892=5124 := by core033_kernel_decide
theorem rows7893 : actualRows7893=WordField.canonicalRows actualModulus 7893 (.bxor 7891 7892) := by core033_kernel_decide
theorem stats7893 : actualRows7893.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7893=7428 := by core033_kernel_decide
theorem rows7894 : actualRows7894=WordField.canonicalRows actualModulus 7894 (.shr 7877 10) := by core033_kernel_decide
theorem stats7894 : actualRows7894.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7894=4404 := by core033_kernel_decide
theorem rows7895 : actualRows7895=WordField.canonicalRows actualModulus 7895 (.bxor 7893 7894) := by core033_kernel_decide
theorem stats7895 : actualRows7895.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7895=7428 := by core033_kernel_decide
theorem rows7896 : actualRows7896=WordField.canonicalRows actualModulus 7896 (.badd 7895 7812) := by core033_kernel_decide
theorem stats7896 : actualRows7896.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7896=5388 := by core033_kernel_decide
theorem rows7897 : actualRows7897=WordField.canonicalRows actualModulus 7897 (.rotr 7708 7) := by core033_kernel_decide
theorem stats7897 : actualRows7897.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7897=5124 := by core033_kernel_decide
theorem rows7898 : actualRows7898=WordField.canonicalRows actualModulus 7898 (.rotr 7708 18) := by core033_kernel_decide
theorem stats7898 : actualRows7898.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7898=5124 := by core033_kernel_decide
theorem rows7899 : actualRows7899=WordField.canonicalRows actualModulus 7899 (.bxor 7897 7898) := by core033_kernel_decide
theorem stats7899 : actualRows7899.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7899=7428 := by core033_kernel_decide
theorem rows7900 : actualRows7900=WordField.canonicalRows actualModulus 7900 (.shr 7708 3) := by core033_kernel_decide
theorem stats7900 : actualRows7900.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7900=4908 := by core033_kernel_decide
theorem rows7901 : actualRows7901=WordField.canonicalRows actualModulus 7901 (.bxor 7899 7900) := by core033_kernel_decide
theorem stats7901 : actualRows7901.length=34 ∧ MatrixRowBlocks.rowsWeight actualRows7901=7428 := by core033_kernel_decide
theorem rows7902 : actualRows7902=WordField.canonicalRows actualModulus 7902 (.badd 7896 7901) := by core033_kernel_decide
theorem stats7902 : actualRows7902.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7902=5388 := by core033_kernel_decide
theorem rows7903 : actualRows7903=WordField.canonicalRows actualModulus 7903 (.badd 7902 7695) := by core033_kernel_decide
theorem stats7903 : actualRows7903.length=35 ∧ MatrixRowBlocks.rowsWeight actualRows7903=5388 := by core033_kernel_decide
def partRows121 : List R1CS.Row := actualRows7840++actualRows7841++actualRows7842++actualRows7843++actualRows7844++actualRows7845++actualRows7846++actualRows7847++actualRows7848++actualRows7849++actualRows7850++actualRows7851++actualRows7852++actualRows7853++actualRows7854++actualRows7855++actualRows7856++actualRows7857++actualRows7858++actualRows7859++actualRows7860++actualRows7861++actualRows7862++actualRows7863++actualRows7864++actualRows7865++actualRows7866++actualRows7867++actualRows7868++actualRows7869++actualRows7870++actualRows7871++actualRows7872++actualRows7873++actualRows7874++actualRows7875++actualRows7876++actualRows7877++actualRows7878++actualRows7879++actualRows7880++actualRows7881++actualRows7882++actualRows7883++actualRows7884++actualRows7885++actualRows7886++actualRows7887++actualRows7888++actualRows7889++actualRows7890++actualRows7891++actualRows7892++actualRows7893++actualRows7894++actualRows7895++actualRows7896++actualRows7897++actualRows7898++actualRows7899++actualRows7900++actualRows7901++actualRows7902++actualRows7903
def partOps121 : List WordIR.Op := [.rotr 7825 19,.bxor 7839 7840,.shr 7825 10,.bxor 7841 7842,.badd 7843 7760,.rotr 7656 7,.rotr 7656 18,.bxor 7845 7846,.shr 7656 3,.bxor 7847 7848,.badd 7844 7849,.badd 7850 7643,.rotr 7838 17,.rotr 7838 19,.bxor 7852 7853,.shr 7838 10,.bxor 7854 7855,.badd 7856 7773,.rotr 7669 7,.rotr 7669 18,.bxor 7858 7859,.shr 7669 3,.bxor 7860 7861,.badd 7857 7862,.badd 7863 7656,.rotr 7851 17,.rotr 7851 19,.bxor 7865 7866,.shr 7851 10,.bxor 7867 7868,.badd 7869 7786,.rotr 7682 7,.rotr 7682 18,.bxor 7871 7872,.shr 7682 3,.bxor 7873 7874,.badd 7870 7875,.badd 7876 7669,.rotr 7864 17,.rotr 7864 19,.bxor 7878 7879,.shr 7864 10,.bxor 7880 7881,.badd 7882 7799,.rotr 7695 7,.rotr 7695 18,.bxor 7884 7885,.shr 7695 3,.bxor 7886 7887,.badd 7883 7888,.badd 7889 7682,.rotr 7877 17,.rotr 7877 19,.bxor 7891 7892,.shr 7877 10,.bxor 7893 7894,.badd 7895 7812,.rotr 7708 7,.rotr 7708 18,.bxor 7897 7898,.shr 7708 3,.bxor 7899 7900,.badd 7896 7901,.badd 7902 7695]
theorem partExact121 : partRows121=WordField.rows actualModulus 7840 partOps121 := by
  simp only [partRows121,partOps121,WordField.rows,rows7840,rows7841,rows7842,rows7843,rows7844,rows7845,rows7846,rows7847,rows7848,rows7849,rows7850,rows7851,rows7852,rows7853,rows7854,rows7855,rows7856,rows7857,rows7858,rows7859,rows7860,rows7861,rows7862,rows7863,rows7864,rows7865,rows7866,rows7867,rows7868,rows7869,rows7870,rows7871,rows7872,rows7873,rows7874,rows7875,rows7876,rows7877,rows7878,rows7879,rows7880,rows7881,rows7882,rows7883,rows7884,rows7885,rows7886,rows7887,rows7888,rows7889,rows7890,rows7891,rows7892,rows7893,rows7894,rows7895,rows7896,rows7897,rows7898,rows7899,rows7900,rows7901,rows7902,rows7903,List.append_assoc,List.append_nil]
theorem partLength121 : partOps121.length=64 := by decide
theorem partStats121 : partRows121.length=2191 ∧ MatrixRowBlocks.rowsWeight partRows121=373296 := by
  simp only [partRows121,List.length_append,MatrixRowBlocks.rows_weight_append,stats7840.1,stats7840.2,stats7841.1,stats7841.2,stats7842.1,stats7842.2,stats7843.1,stats7843.2,stats7844.1,stats7844.2,stats7845.1,stats7845.2,stats7846.1,stats7846.2,stats7847.1,stats7847.2,stats7848.1,stats7848.2,stats7849.1,stats7849.2,stats7850.1,stats7850.2,stats7851.1,stats7851.2,stats7852.1,stats7852.2,stats7853.1,stats7853.2,stats7854.1,stats7854.2,stats7855.1,stats7855.2,stats7856.1,stats7856.2,stats7857.1,stats7857.2,stats7858.1,stats7858.2,stats7859.1,stats7859.2,stats7860.1,stats7860.2,stats7861.1,stats7861.2,stats7862.1,stats7862.2,stats7863.1,stats7863.2,stats7864.1,stats7864.2,stats7865.1,stats7865.2,stats7866.1,stats7866.2,stats7867.1,stats7867.2,stats7868.1,stats7868.2,stats7869.1,stats7869.2,stats7870.1,stats7870.2,stats7871.1,stats7871.2,stats7872.1,stats7872.2,stats7873.1,stats7873.2,stats7874.1,stats7874.2,stats7875.1,stats7875.2,stats7876.1,stats7876.2,stats7877.1,stats7877.2,stats7878.1,stats7878.2,stats7879.1,stats7879.2,stats7880.1,stats7880.2,stats7881.1,stats7881.2,stats7882.1,stats7882.2,stats7883.1,stats7883.2,stats7884.1,stats7884.2,stats7885.1,stats7885.2,stats7886.1,stats7886.2,stats7887.1,stats7887.2,stats7888.1,stats7888.2,stats7889.1,stats7889.2,stats7890.1,stats7890.2,stats7891.1,stats7891.2,stats7892.1,stats7892.2,stats7893.1,stats7893.2,stats7894.1,stats7894.2,stats7895.1,stats7895.2,stats7896.1,stats7896.2,stats7897.1,stats7897.2,stats7898.1,stats7898.2,stats7899.1,stats7899.2,stats7900.1,stats7900.2,stats7901.1,stats7901.2,stats7902.1,stats7902.2,stats7903.1,stats7903.2]
  decide
end PairedPathRoundCheckedRows
