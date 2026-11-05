import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps116_0 : List Op := [.badd 7455 7466,.badd 7359 7455,.rotr 7468 6,.rotr 7468 11,.bxor 7469 7470,.rotr 7468 25,.bxor 7471 7472,.badd 7387 7473]
theorem subChecked116_0 : checkSteps target certificate.alias 7467 subOps116_0=true := by core033_kernel_decide
theorem subLength116_0 : subOps116_0.length=8 := by decide
def subOps116_1 : List Op := [.band 7468 7441,.bnot 7468,.band 7476 7414,.bxor 7475 7477,.badd 7474 7478,.literal (BitVec.ofNat 32 3835390401),.badd 7479 7480,.badd 7481 6425]
theorem subChecked116_1 : checkSteps target certificate.alias 7475 subOps116_1=true := by core033_kernel_decide
theorem subLength116_1 : subOps116_1.length=8 := by decide
def subOps116_2 : List Op := [.rotr 7467 2,.rotr 7467 13,.bxor 7483 7484,.rotr 7467 22,.bxor 7485 7486,.band 7467 7440,.band 7467 7413,.bxor 7488 7489]
theorem subChecked116_2 : checkSteps target certificate.alias 7483 subOps116_2=true := by core033_kernel_decide
theorem subLength116_2 : subOps116_2.length=8 := by decide
def subOps116_3 : List Op := [.band 7440 7413,.bxor 7490 7491,.badd 7487 7492,.badd 7482 7493,.badd 7386 7482,.rotr 7495 6,.rotr 7495 11,.bxor 7496 7497]
theorem subChecked116_3 : checkSteps target certificate.alias 7491 subOps116_3=true := by core033_kernel_decide
theorem subLength116_3 : subOps116_3.length=8 := by decide
def subOps116_4 : List Op := [.rotr 7495 25,.bxor 7498 7499,.badd 7414 7500,.band 7495 7468,.bnot 7495,.band 7503 7441,.bxor 7502 7504,.badd 7501 7505]
theorem subChecked116_4 : checkSteps target certificate.alias 7499 subOps116_4=true := by core033_kernel_decide
theorem subLength116_4 : subOps116_4.length=8 := by decide
def subOps116_5 : List Op := [.literal (BitVec.ofNat 32 4022224774),.badd 7506 7507,.badd 7508 6438,.rotr 7494 2,.rotr 7494 13,.bxor 7510 7511,.rotr 7494 22,.bxor 7512 7513]
theorem subChecked116_5 : checkSteps target certificate.alias 7507 subOps116_5=true := by core033_kernel_decide
theorem subLength116_5 : subOps116_5.length=8 := by decide
def subOps116_6 : List Op := [.band 7494 7467,.band 7494 7440,.bxor 7515 7516,.band 7467 7440,.bxor 7517 7518,.badd 7514 7519,.badd 7509 7520,.badd 7413 7509]
theorem subChecked116_6 : checkSteps target certificate.alias 7515 subOps116_6=true := by core033_kernel_decide
theorem subLength116_6 : subOps116_6.length=8 := by decide
def subOps116_7 : List Op := [.rotr 7522 6,.rotr 7522 11,.bxor 7523 7524,.rotr 7522 25,.bxor 7525 7526,.badd 7441 7527,.band 7522 7495,.bnot 7522]
theorem subChecked116_7 : checkSteps target certificate.alias 7523 subOps116_7=true := by core033_kernel_decide
theorem subLength116_7 : subOps116_7.length=8 := by decide
theorem checked116 : checkSteps target certificate.alias 7467 QuotedFrameHashControllerIR.operations116=true := by
  have partition : QuotedFrameHashControllerIR.operations116=(subOps116_0++(subOps116_1++(subOps116_2++(subOps116_3++(subOps116_4++(subOps116_5++(subOps116_6++subOps116_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked116_0,subLength116_0]
  rw [check_steps_append,subChecked116_1,subLength116_1]
  rw [check_steps_append,subChecked116_2,subLength116_2]
  rw [check_steps_append,subChecked116_3,subLength116_3]
  rw [check_steps_append,subChecked116_4,subLength116_4]
  rw [check_steps_append,subChecked116_5,subLength116_5]
  rw [check_steps_append,subChecked116_6,subLength116_6]
  exact subChecked116_7
theorem length116 : QuotedFrameHashControllerIR.operations116.length=64 := by decide
end SegmentedFrameSharing
