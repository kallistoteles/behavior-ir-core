import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps131_0 : List Op := [.badd 8426 6880,.rotr 8412 2,.rotr 8412 13,.bxor 8428 8429,.rotr 8412 22,.bxor 8430 8431,.band 8412 8385,.band 8412 8358]
theorem subChecked131_0 : checkSteps target certificate.alias 8427 subOps131_0=true := by core033_kernel_decide
theorem subLength131_0 : subOps131_0.length=8 := by decide
def subOps131_1 : List Op := [.bxor 8433 8434,.band 8385 8358,.bxor 8435 8436,.badd 8432 8437,.badd 8427 8438,.badd 8331 8427,.rotr 8440 6,.rotr 8440 11]
theorem subChecked131_1 : checkSteps target certificate.alias 8435 subOps131_1=true := by core033_kernel_decide
theorem subLength131_1 : subOps131_1.length=8 := by decide
def subOps131_2 : List Op := [.bxor 8441 8442,.rotr 8440 25,.bxor 8443 8444,.badd 8359 8445,.band 8440 8413,.bnot 8440,.band 8448 8386,.bxor 8447 8449]
theorem subChecked131_2 : checkSteps target certificate.alias 8443 subOps131_2=true := by core033_kernel_decide
theorem subLength131_2 : subOps131_2.length=8 := by decide
def subOps131_3 : List Op := [.badd 8446 8450,.literal (BitVec.ofNat 32 958139571),.badd 8451 8452,.badd 8453 6893,.rotr 8439 2,.rotr 8439 13,.bxor 8455 8456,.rotr 8439 22]
theorem subChecked131_3 : checkSteps target certificate.alias 8451 subOps131_3=true := by core033_kernel_decide
theorem subLength131_3 : subOps131_3.length=8 := by decide
def subOps131_4 : List Op := [.bxor 8457 8458,.band 8439 8412,.band 8439 8385,.bxor 8460 8461,.band 8412 8385,.bxor 8462 8463,.badd 8459 8464,.badd 8454 8465]
theorem subChecked131_4 : checkSteps target certificate.alias 8459 subOps131_4=true := by core033_kernel_decide
theorem subLength131_4 : subOps131_4.length=8 := by decide
def subOps131_5 : List Op := [.badd 8358 8454,.rotr 8467 6,.rotr 8467 11,.bxor 8468 8469,.rotr 8467 25,.bxor 8470 8471,.badd 8386 8472,.band 8467 8440]
theorem subChecked131_5 : checkSteps target certificate.alias 8467 subOps131_5=true := by core033_kernel_decide
theorem subLength131_5 : subOps131_5.length=8 := by decide
def subOps131_6 : List Op := [.bnot 8467,.band 8475 8413,.bxor 8474 8476,.badd 8473 8477,.literal (BitVec.ofNat 32 1322822218),.badd 8478 8479,.badd 8480 6906,.rotr 8466 2]
theorem subChecked131_6 : checkSteps target certificate.alias 8475 subOps131_6=true := by core033_kernel_decide
theorem subLength131_6 : subOps131_6.length=8 := by decide
def subOps131_7 : List Op := [.rotr 8466 13,.bxor 8482 8483,.rotr 8466 22,.bxor 8484 8485,.band 8466 8439,.band 8466 8412,.bxor 8487 8488,.band 8439 8412]
theorem subChecked131_7 : checkSteps target certificate.alias 8483 subOps131_7=true := by core033_kernel_decide
theorem subLength131_7 : subOps131_7.length=8 := by decide
theorem checked131 : checkSteps target certificate.alias 8427 QuotedFrameHashControllerIR.operations131=true := by
  have partition : QuotedFrameHashControllerIR.operations131=(subOps131_0++(subOps131_1++(subOps131_2++(subOps131_3++(subOps131_4++(subOps131_5++(subOps131_6++subOps131_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked131_0,subLength131_0]
  rw [check_steps_append,subChecked131_1,subLength131_1]
  rw [check_steps_append,subChecked131_2,subLength131_2]
  rw [check_steps_append,subChecked131_3,subLength131_3]
  rw [check_steps_append,subChecked131_4,subLength131_4]
  rw [check_steps_append,subChecked131_5,subLength131_5]
  rw [check_steps_append,subChecked131_6,subLength131_6]
  exact subChecked131_7
theorem length131 : QuotedFrameHashControllerIR.operations131.length=64 := by decide
end SegmentedFrameSharing
