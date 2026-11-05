import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps130_0 : List Op := [.rotr 8359 25,.bxor 8362 8363,.badd 8278 8364,.band 8359 8332,.bnot 8359,.band 8367 8305,.bxor 8366 8368,.badd 8365 8369]
theorem subChecked130_0 : checkSteps target certificate.alias 8363 subOps130_0=true := by core033_kernel_decide
theorem subLength130_0 : subOps130_0.length=8 := by decide
def subOps130_1 : List Op := [.literal (BitVec.ofNat 32 506948616),.badd 8370 8371,.badd 8372 6854,.rotr 8358 2,.rotr 8358 13,.bxor 8374 8375,.rotr 8358 22,.bxor 8376 8377]
theorem subChecked130_1 : checkSteps target certificate.alias 8371 subOps130_1=true := by core033_kernel_decide
theorem subLength130_1 : subOps130_1.length=8 := by decide
def subOps130_2 : List Op := [.band 8358 8331,.band 8358 8304,.bxor 8379 8380,.band 8331 8304,.bxor 8381 8382,.badd 8378 8383,.badd 8373 8384,.badd 8277 8373]
theorem subChecked130_2 : checkSteps target certificate.alias 8379 subOps130_2=true := by core033_kernel_decide
theorem subLength130_2 : subOps130_2.length=8 := by decide
def subOps130_3 : List Op := [.rotr 8386 6,.rotr 8386 11,.bxor 8387 8388,.rotr 8386 25,.bxor 8389 8390,.badd 8305 8391,.band 8386 8359,.bnot 8386]
theorem subChecked130_3 : checkSteps target certificate.alias 8387 subOps130_3=true := by core033_kernel_decide
theorem subLength130_3 : subOps130_3.length=8 := by decide
def subOps130_4 : List Op := [.band 8394 8332,.bxor 8393 8395,.badd 8392 8396,.literal (BitVec.ofNat 32 659060556),.badd 8397 8398,.badd 8399 6867,.rotr 8385 2,.rotr 8385 13]
theorem subChecked130_4 : checkSteps target certificate.alias 8395 subOps130_4=true := by core033_kernel_decide
theorem subLength130_4 : subOps130_4.length=8 := by decide
def subOps130_5 : List Op := [.bxor 8401 8402,.rotr 8385 22,.bxor 8403 8404,.band 8385 8358,.band 8385 8331,.bxor 8406 8407,.band 8358 8331,.bxor 8408 8409]
theorem subChecked130_5 : checkSteps target certificate.alias 8403 subOps130_5=true := by core033_kernel_decide
theorem subLength130_5 : subOps130_5.length=8 := by decide
def subOps130_6 : List Op := [.badd 8405 8410,.badd 8400 8411,.badd 8304 8400,.rotr 8413 6,.rotr 8413 11,.bxor 8414 8415,.rotr 8413 25,.bxor 8416 8417]
theorem subChecked130_6 : checkSteps target certificate.alias 8411 subOps130_6=true := by core033_kernel_decide
theorem subLength130_6 : subOps130_6.length=8 := by decide
def subOps130_7 : List Op := [.badd 8332 8418,.band 8413 8386,.bnot 8413,.band 8421 8359,.bxor 8420 8422,.badd 8419 8423,.literal (BitVec.ofNat 32 883997877),.badd 8424 8425]
theorem subChecked130_7 : checkSteps target certificate.alias 8419 subOps130_7=true := by core033_kernel_decide
theorem subLength130_7 : subOps130_7.length=8 := by decide
theorem checked130 : checkSteps target certificate.alias 8363 QuotedFrameHashControllerIR.operations130=true := by
  have partition : QuotedFrameHashControllerIR.operations130=(subOps130_0++(subOps130_1++(subOps130_2++(subOps130_3++(subOps130_4++(subOps130_5++(subOps130_6++subOps130_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked130_0,subLength130_0]
  rw [check_steps_append,subChecked130_1,subLength130_1]
  rw [check_steps_append,subChecked130_2,subLength130_2]
  rw [check_steps_append,subChecked130_3,subLength130_3]
  rw [check_steps_append,subChecked130_4,subLength130_4]
  rw [check_steps_append,subChecked130_5,subLength130_5]
  rw [check_steps_append,subChecked130_6,subLength130_6]
  exact subChecked130_7
theorem length130 : QuotedFrameHashControllerIR.operations130.length=64 := by decide
end SegmentedFrameSharing
