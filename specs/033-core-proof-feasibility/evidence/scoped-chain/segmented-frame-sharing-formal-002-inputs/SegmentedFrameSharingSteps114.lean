import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps114_0 : List Op := [.badd 7252 7338,.band 7333 7306,.bnot 7333,.band 7341 7279,.bxor 7340 7342,.badd 7339 7343,.literal (BitVec.ofNat 32 1426881987),.badd 7344 7345]
theorem subChecked114_0 : checkSteps target certificate.alias 7339 subOps114_0=true := by core033_kernel_decide
theorem subLength114_0 : subOps114_0.length=8 := by decide
def subOps114_1 : List Op := [.badd 7346 5236,.rotr 7332 2,.rotr 7332 13,.bxor 7348 7349,.rotr 7332 22,.bxor 7350 7351,.band 7332 7305,.band 7332 7278]
theorem subChecked114_1 : checkSteps target certificate.alias 7347 subOps114_1=true := by core033_kernel_decide
theorem subLength114_1 : subOps114_1.length=8 := by decide
def subOps114_2 : List Op := [.bxor 7353 7354,.band 7305 7278,.bxor 7355 7356,.badd 7352 7357,.badd 7347 7358,.badd 7251 7347,.rotr 7360 6,.rotr 7360 11]
theorem subChecked114_2 : checkSteps target certificate.alias 7355 subOps114_2=true := by core033_kernel_decide
theorem subLength114_2 : subOps114_2.length=8 := by decide
def subOps114_3 : List Op := [.bxor 7361 7362,.rotr 7360 25,.bxor 7363 7364,.badd 7279 7365,.band 7360 7333,.bnot 7360,.band 7368 7306,.bxor 7367 7369]
theorem subChecked114_3 : checkSteps target certificate.alias 7363 subOps114_3=true := by core033_kernel_decide
theorem subLength114_3 : subOps114_3.length=8 := by decide
def subOps114_4 : List Op := [.badd 7366 7370,.literal (BitVec.ofNat 32 1925078388),.badd 7371 7372,.badd 7373 5242,.rotr 7359 2,.rotr 7359 13,.bxor 7375 7376,.rotr 7359 22]
theorem subChecked114_4 : checkSteps target certificate.alias 7371 subOps114_4=true := by core033_kernel_decide
theorem subLength114_4 : subOps114_4.length=8 := by decide
def subOps114_5 : List Op := [.bxor 7377 7378,.band 7359 7332,.band 7359 7305,.bxor 7380 7381,.band 7332 7305,.bxor 7382 7383,.badd 7379 7384,.badd 7374 7385]
theorem subChecked114_5 : checkSteps target certificate.alias 7379 subOps114_5=true := by core033_kernel_decide
theorem subLength114_5 : subOps114_5.length=8 := by decide
def subOps114_6 : List Op := [.badd 7278 7374,.rotr 7387 6,.rotr 7387 11,.bxor 7388 7389,.rotr 7387 25,.bxor 7390 7391,.badd 7306 7392,.band 7387 7360]
theorem subChecked114_6 : checkSteps target certificate.alias 7387 subOps114_6=true := by core033_kernel_decide
theorem subLength114_6 : subOps114_6.length=8 := by decide
def subOps114_7 : List Op := [.bnot 7387,.band 7395 7333,.bxor 7394 7396,.badd 7393 7397,.literal (BitVec.ofNat 32 2162078206),.badd 7398 7399,.badd 7400 5248,.rotr 7386 2]
theorem subChecked114_7 : checkSteps target certificate.alias 7395 subOps114_7=true := by core033_kernel_decide
theorem subLength114_7 : subOps114_7.length=8 := by decide
theorem checked114 : checkSteps target certificate.alias 7339 QuotedFrameHashControllerIR.operations114=true := by
  have partition : QuotedFrameHashControllerIR.operations114=subOps114_0++subOps114_1++subOps114_2++subOps114_3++subOps114_4++subOps114_5++subOps114_6++subOps114_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked114_0,subLength114_0]
  rw [check_steps_append,subChecked114_1,subLength114_1]
  rw [check_steps_append,subChecked114_2,subLength114_2]
  rw [check_steps_append,subChecked114_3,subLength114_3]
  rw [check_steps_append,subChecked114_4,subLength114_4]
  rw [check_steps_append,subChecked114_5,subLength114_5]
  rw [check_steps_append,subChecked114_6,subLength114_6]
  exact subChecked114_7
theorem length114 : QuotedFrameHashControllerIR.operations114.length=64 := by decide
end SegmentedFrameSharing
