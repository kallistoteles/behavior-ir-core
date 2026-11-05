import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps115_0 : List Op := [.rotr 7386 13,.bxor 7402 7403,.rotr 7386 22,.bxor 7404 7405,.band 7386 7359,.band 7386 7332,.bxor 7407 7408,.band 7359 7332]
theorem subChecked115_0 : checkSteps target certificate.alias 7403 subOps115_0=true := by core033_kernel_decide
theorem subLength115_0 : subOps115_0.length=8 := by decide
def subOps115_1 : List Op := [.bxor 7409 7410,.badd 7406 7411,.badd 7401 7412,.badd 7305 7401,.rotr 7414 6,.rotr 7414 11,.bxor 7415 7416,.rotr 7414 25]
theorem subChecked115_1 : checkSteps target certificate.alias 7411 subOps115_1=true := by core033_kernel_decide
theorem subLength115_1 : subOps115_1.length=8 := by decide
def subOps115_2 : List Op := [.bxor 7417 7418,.badd 7333 7419,.band 7414 7387,.bnot 7414,.band 7422 7360,.bxor 7421 7423,.badd 7420 7424,.literal (BitVec.ofNat 32 2614888103)]
theorem subChecked115_2 : checkSteps target certificate.alias 7419 subOps115_2=true := by core033_kernel_decide
theorem subLength115_2 : subOps115_2.length=8 := by decide
def subOps115_3 : List Op := [.badd 7425 7426,.badd 7427 5254,.rotr 7413 2,.rotr 7413 13,.bxor 7429 7430,.rotr 7413 22,.bxor 7431 7432,.band 7413 7386]
theorem subChecked115_3 : checkSteps target certificate.alias 7427 subOps115_3=true := by core033_kernel_decide
theorem subLength115_3 : subOps115_3.length=8 := by decide
def subOps115_4 : List Op := [.band 7413 7359,.bxor 7434 7435,.band 7386 7359,.bxor 7436 7437,.badd 7433 7438,.badd 7428 7439,.badd 7332 7428,.rotr 7441 6]
theorem subChecked115_4 : checkSteps target certificate.alias 7435 subOps115_4=true := by core033_kernel_decide
theorem subLength115_4 : subOps115_4.length=8 := by decide
def subOps115_5 : List Op := [.rotr 7441 11,.bxor 7442 7443,.rotr 7441 25,.bxor 7444 7445,.badd 7360 7446,.band 7441 7414,.bnot 7441,.band 7449 7387]
theorem subChecked115_5 : checkSteps target certificate.alias 7443 subOps115_5=true := by core033_kernel_decide
theorem subLength115_5 : subOps115_5.length=8 := by decide
def subOps115_6 : List Op := [.bxor 7448 7450,.badd 7447 7451,.literal (BitVec.ofNat 32 3248222580),.badd 7452 7453,.badd 7454 5260,.rotr 7440 2,.rotr 7440 13,.bxor 7456 7457]
theorem subChecked115_6 : checkSteps target certificate.alias 7451 subOps115_6=true := by core033_kernel_decide
theorem subLength115_6 : subOps115_6.length=8 := by decide
def subOps115_7 : List Op := [.rotr 7440 22,.bxor 7458 7459,.band 7440 7413,.band 7440 7386,.bxor 7461 7462,.band 7413 7386,.bxor 7463 7464,.badd 7460 7465]
theorem subChecked115_7 : checkSteps target certificate.alias 7459 subOps115_7=true := by core033_kernel_decide
theorem subLength115_7 : subOps115_7.length=8 := by decide
theorem checked115 : checkSteps target certificate.alias 7403 QuotedFrameHashControllerIR.operations115=true := by
  have partition : QuotedFrameHashControllerIR.operations115=(subOps115_0++(subOps115_1++(subOps115_2++(subOps115_3++(subOps115_4++(subOps115_5++(subOps115_6++subOps115_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked115_0,subLength115_0]
  rw [check_steps_append,subChecked115_1,subLength115_1]
  rw [check_steps_append,subChecked115_2,subLength115_2]
  rw [check_steps_append,subChecked115_3,subLength115_3]
  rw [check_steps_append,subChecked115_4,subLength115_4]
  rw [check_steps_append,subChecked115_5,subLength115_5]
  rw [check_steps_append,subChecked115_6,subLength115_6]
  exact subChecked115_7
theorem length115 : QuotedFrameHashControllerIR.operations115.length=64 := by decide
end SegmentedFrameSharing
