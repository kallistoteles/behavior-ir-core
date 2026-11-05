import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps124_0 : List Op := [.badd 7973 7978,.badd 7968 7979,.badd 7872 7968,.rotr 7981 6,.rotr 7981 11,.bxor 7982 7983,.rotr 7981 25,.bxor 7984 7985]
theorem subChecked124_0 : checkSteps target certificate.alias 7979 subOps124_0=true := by core033_kernel_decide
theorem subLength124_0 : subOps124_0.length=8 := by decide
def subOps124_1 : List Op := [.badd 7900 7986,.band 7981 7954,.bnot 7981,.band 7989 7927,.bxor 7988 7990,.badd 7987 7991,.literal (BitVec.ofNat 32 1396182291),.badd 7992 7993]
theorem subChecked124_1 : checkSteps target certificate.alias 7987 subOps124_1=true := by core033_kernel_decide
theorem subLength124_1 : subOps124_1.length=8 := by decide
def subOps124_2 : List Op := [.badd 7994 6672,.rotr 7980 2,.rotr 7980 13,.bxor 7996 7997,.rotr 7980 22,.bxor 7998 7999,.band 7980 7953,.band 7980 7926]
theorem subChecked124_2 : checkSteps target certificate.alias 7995 subOps124_2=true := by core033_kernel_decide
theorem subLength124_2 : subOps124_2.length=8 := by decide
def subOps124_3 : List Op := [.bxor 8001 8002,.band 7953 7926,.bxor 8003 8004,.badd 8000 8005,.badd 7995 8006,.badd 7899 7995,.rotr 8008 6,.rotr 8008 11]
theorem subChecked124_3 : checkSteps target certificate.alias 8003 subOps124_3=true := by core033_kernel_decide
theorem subLength124_3 : subOps124_3.length=8 := by decide
def subOps124_4 : List Op := [.bxor 8009 8010,.rotr 8008 25,.bxor 8011 8012,.badd 7927 8013,.band 8008 7981,.bnot 8008,.band 8016 7954,.bxor 8015 8017]
theorem subChecked124_4 : checkSteps target certificate.alias 8011 subOps124_4=true := by core033_kernel_decide
theorem subLength124_4 : subOps124_4.length=8 := by decide
def subOps124_5 : List Op := [.badd 8014 8018,.literal (BitVec.ofNat 32 1695183700),.badd 8019 8020,.badd 8021 6685,.rotr 8007 2,.rotr 8007 13,.bxor 8023 8024,.rotr 8007 22]
theorem subChecked124_5 : checkSteps target certificate.alias 8019 subOps124_5=true := by core033_kernel_decide
theorem subLength124_5 : subOps124_5.length=8 := by decide
def subOps124_6 : List Op := [.bxor 8025 8026,.band 8007 7980,.band 8007 7953,.bxor 8028 8029,.band 7980 7953,.bxor 8030 8031,.badd 8027 8032,.badd 8022 8033]
theorem subChecked124_6 : checkSteps target certificate.alias 8027 subOps124_6=true := by core033_kernel_decide
theorem subLength124_6 : subOps124_6.length=8 := by decide
def subOps124_7 : List Op := [.badd 7926 8022,.rotr 8035 6,.rotr 8035 11,.bxor 8036 8037,.rotr 8035 25,.bxor 8038 8039,.badd 7954 8040,.band 8035 8008]
theorem subChecked124_7 : checkSteps target certificate.alias 8035 subOps124_7=true := by core033_kernel_decide
theorem subLength124_7 : subOps124_7.length=8 := by decide
theorem checked124 : checkSteps target certificate.alias 7979 QuotedFrameHashControllerIR.operations124=true := by
  have partition : QuotedFrameHashControllerIR.operations124=(subOps124_0++(subOps124_1++(subOps124_2++(subOps124_3++(subOps124_4++(subOps124_5++(subOps124_6++subOps124_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked124_0,subLength124_0]
  rw [check_steps_append,subChecked124_1,subLength124_1]
  rw [check_steps_append,subChecked124_2,subLength124_2]
  rw [check_steps_append,subChecked124_3,subLength124_3]
  rw [check_steps_append,subChecked124_4,subLength124_4]
  rw [check_steps_append,subChecked124_5,subLength124_5]
  rw [check_steps_append,subChecked124_6,subLength124_6]
  exact subChecked124_7
theorem length124 : QuotedFrameHashControllerIR.operations124.length=64 := by decide
end SegmentedFrameSharing
