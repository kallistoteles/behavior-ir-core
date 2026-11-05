import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps123_0 : List Op := [.rotr 7899 2,.rotr 7899 13,.bxor 7915 7916,.rotr 7899 22,.bxor 7917 7918,.band 7899 7872,.band 7899 7845,.bxor 7920 7921]
theorem subChecked123_0 : checkSteps target certificate.alias 7915 subOps123_0=true := by core033_kernel_decide
theorem subLength123_0 : subOps123_0.length=8 := by decide
def subOps123_1 : List Op := [.band 7872 7845,.bxor 7922 7923,.badd 7919 7924,.badd 7914 7925,.badd 7818 7914,.rotr 7927 6,.rotr 7927 11,.bxor 7928 7929]
theorem subChecked123_1 : checkSteps target certificate.alias 7923 subOps123_1=true := by core033_kernel_decide
theorem subLength123_1 : subOps123_1.length=8 := by decide
def subOps123_2 : List Op := [.rotr 7927 25,.bxor 7930 7931,.badd 7846 7932,.band 7927 7900,.bnot 7927,.band 7935 7873,.bxor 7934 7936,.badd 7933 7937]
theorem subChecked123_2 : checkSteps target certificate.alias 7931 subOps123_2=true := by core033_kernel_decide
theorem subLength123_2 : subOps123_2.length=8 := by decide
def subOps123_3 : List Op := [.literal (BitVec.ofNat 32 773529912),.badd 7938 7939,.badd 7940 6646,.rotr 7926 2,.rotr 7926 13,.bxor 7942 7943,.rotr 7926 22,.bxor 7944 7945]
theorem subChecked123_3 : checkSteps target certificate.alias 7939 subOps123_3=true := by core033_kernel_decide
theorem subLength123_3 : subOps123_3.length=8 := by decide
def subOps123_4 : List Op := [.band 7926 7899,.band 7926 7872,.bxor 7947 7948,.band 7899 7872,.bxor 7949 7950,.badd 7946 7951,.badd 7941 7952,.badd 7845 7941]
theorem subChecked123_4 : checkSteps target certificate.alias 7947 subOps123_4=true := by core033_kernel_decide
theorem subLength123_4 : subOps123_4.length=8 := by decide
def subOps123_5 : List Op := [.rotr 7954 6,.rotr 7954 11,.bxor 7955 7956,.rotr 7954 25,.bxor 7957 7958,.badd 7873 7959,.band 7954 7927,.bnot 7954]
theorem subChecked123_5 : checkSteps target certificate.alias 7955 subOps123_5=true := by core033_kernel_decide
theorem subLength123_5 : subOps123_5.length=8 := by decide
def subOps123_6 : List Op := [.band 7962 7900,.bxor 7961 7963,.badd 7960 7964,.literal (BitVec.ofNat 32 1294757372),.badd 7965 7966,.badd 7967 6659,.rotr 7953 2,.rotr 7953 13]
theorem subChecked123_6 : checkSteps target certificate.alias 7963 subOps123_6=true := by core033_kernel_decide
theorem subLength123_6 : subOps123_6.length=8 := by decide
def subOps123_7 : List Op := [.bxor 7969 7970,.rotr 7953 22,.bxor 7971 7972,.band 7953 7926,.band 7953 7899,.bxor 7974 7975,.band 7926 7899,.bxor 7976 7977]
theorem subChecked123_7 : checkSteps target certificate.alias 7971 subOps123_7=true := by core033_kernel_decide
theorem subLength123_7 : subOps123_7.length=8 := by decide
theorem checked123 : checkSteps target certificate.alias 7915 QuotedFrameHashControllerIR.operations123=true := by
  have partition : QuotedFrameHashControllerIR.operations123=(subOps123_0++(subOps123_1++(subOps123_2++(subOps123_3++(subOps123_4++(subOps123_5++(subOps123_6++subOps123_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked123_0,subLength123_0]
  rw [check_steps_append,subChecked123_1,subLength123_1]
  rw [check_steps_append,subChecked123_2,subLength123_2]
  rw [check_steps_append,subChecked123_3,subLength123_3]
  rw [check_steps_append,subChecked123_4,subLength123_4]
  rw [check_steps_append,subChecked123_5,subLength123_5]
  rw [check_steps_append,subChecked123_6,subLength123_6]
  exact subChecked123_7
theorem length123 : QuotedFrameHashControllerIR.operations123.length=64 := by decide
end SegmentedFrameSharing
