import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps122_0 : List Op := [.bxor 7849 7850,.badd 7765 7851,.band 7846 7819,.bnot 7846,.band 7854 7792,.bxor 7853 7855,.badd 7852 7856,.literal (BitVec.ofNat 32 113926993)]
theorem subChecked122_0 : checkSteps target certificate.alias 7851 subOps122_0=true := by core033_kernel_decide
theorem subLength122_0 : subOps122_0.length=8 := by decide
def subOps122_1 : List Op := [.badd 7857 7858,.badd 7859 6607,.rotr 7845 2,.rotr 7845 13,.bxor 7861 7862,.rotr 7845 22,.bxor 7863 7864,.band 7845 7818]
theorem subChecked122_1 : checkSteps target certificate.alias 7859 subOps122_1=true := by core033_kernel_decide
theorem subLength122_1 : subOps122_1.length=8 := by decide
def subOps122_2 : List Op := [.band 7845 7791,.bxor 7866 7867,.band 7818 7791,.bxor 7868 7869,.badd 7865 7870,.badd 7860 7871,.badd 7764 7860,.rotr 7873 6]
theorem subChecked122_2 : checkSteps target certificate.alias 7867 subOps122_2=true := by core033_kernel_decide
theorem subLength122_2 : subOps122_2.length=8 := by decide
def subOps122_3 : List Op := [.rotr 7873 11,.bxor 7874 7875,.rotr 7873 25,.bxor 7876 7877,.badd 7792 7878,.band 7873 7846,.bnot 7873,.band 7881 7819]
theorem subChecked122_3 : checkSteps target certificate.alias 7875 subOps122_3=true := by core033_kernel_decide
theorem subLength122_3 : subOps122_3.length=8 := by decide
def subOps122_4 : List Op := [.bxor 7880 7882,.badd 7879 7883,.literal (BitVec.ofNat 32 338241895),.badd 7884 7885,.badd 7886 6620,.rotr 7872 2,.rotr 7872 13,.bxor 7888 7889]
theorem subChecked122_4 : checkSteps target certificate.alias 7883 subOps122_4=true := by core033_kernel_decide
theorem subLength122_4 : subOps122_4.length=8 := by decide
def subOps122_5 : List Op := [.rotr 7872 22,.bxor 7890 7891,.band 7872 7845,.band 7872 7818,.bxor 7893 7894,.band 7845 7818,.bxor 7895 7896,.badd 7892 7897]
theorem subChecked122_5 : checkSteps target certificate.alias 7891 subOps122_5=true := by core033_kernel_decide
theorem subLength122_5 : subOps122_5.length=8 := by decide
def subOps122_6 : List Op := [.badd 7887 7898,.badd 7791 7887,.rotr 7900 6,.rotr 7900 11,.bxor 7901 7902,.rotr 7900 25,.bxor 7903 7904,.badd 7819 7905]
theorem subChecked122_6 : checkSteps target certificate.alias 7899 subOps122_6=true := by core033_kernel_decide
theorem subLength122_6 : subOps122_6.length=8 := by decide
def subOps122_7 : List Op := [.band 7900 7873,.bnot 7900,.band 7908 7846,.bxor 7907 7909,.badd 7906 7910,.literal (BitVec.ofNat 32 666307205),.badd 7911 7912,.badd 7913 6633]
theorem subChecked122_7 : checkSteps target certificate.alias 7907 subOps122_7=true := by core033_kernel_decide
theorem subLength122_7 : subOps122_7.length=8 := by decide
theorem checked122 : checkSteps target certificate.alias 7851 QuotedFrameHashControllerIR.operations122=true := by
  have partition : QuotedFrameHashControllerIR.operations122=subOps122_0++subOps122_1++subOps122_2++subOps122_3++subOps122_4++subOps122_5++subOps122_6++subOps122_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked122_0,subLength122_0]
  rw [check_steps_append,subChecked122_1,subLength122_1]
  rw [check_steps_append,subChecked122_2,subLength122_2]
  rw [check_steps_append,subChecked122_3,subLength122_3]
  rw [check_steps_append,subChecked122_4,subLength122_4]
  rw [check_steps_append,subChecked122_5,subLength122_5]
  rw [check_steps_append,subChecked122_6,subLength122_6]
  exact subChecked122_7
theorem length122 : QuotedFrameHashControllerIR.operations122.length=64 := by decide
end SegmentedFrameSharing
