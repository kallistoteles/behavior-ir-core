import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps132_0 : List Op := [.bxor 8489 8490,.badd 8486 8491,.badd 8481 8492,.badd 8385 8481,.rotr 8494 6,.rotr 8494 11,.bxor 8495 8496,.rotr 8494 25]
theorem subChecked132_0 : checkSteps target certificate.alias 8491 subOps132_0=true := by core033_kernel_decide
theorem subLength132_0 : subOps132_0.length=8 := by decide
def subOps132_1 : List Op := [.bxor 8497 8498,.badd 8413 8499,.band 8494 8467,.bnot 8494,.band 8502 8440,.bxor 8501 8503,.badd 8500 8504,.literal (BitVec.ofNat 32 1537002063)]
theorem subChecked132_1 : checkSteps target certificate.alias 8499 subOps132_1=true := by core033_kernel_decide
theorem subLength132_1 : subOps132_1.length=8 := by decide
def subOps132_2 : List Op := [.badd 8505 8506,.badd 8507 6919,.rotr 8493 2,.rotr 8493 13,.bxor 8509 8510,.rotr 8493 22,.bxor 8511 8512,.band 8493 8466]
theorem subChecked132_2 : checkSteps target certificate.alias 8507 subOps132_2=true := by core033_kernel_decide
theorem subLength132_2 : subOps132_2.length=8 := by decide
def subOps132_3 : List Op := [.band 8493 8439,.bxor 8514 8515,.band 8466 8439,.bxor 8516 8517,.badd 8513 8518,.badd 8508 8519,.badd 8412 8508,.rotr 8521 6]
theorem subChecked132_3 : checkSteps target certificate.alias 8515 subOps132_3=true := by core033_kernel_decide
theorem subLength132_3 : subOps132_3.length=8 := by decide
def subOps132_4 : List Op := [.rotr 8521 11,.bxor 8522 8523,.rotr 8521 25,.bxor 8524 8525,.badd 8440 8526,.band 8521 8494,.bnot 8521,.band 8529 8467]
theorem subChecked132_4 : checkSteps target certificate.alias 8523 subOps132_4=true := by core033_kernel_decide
theorem subLength132_4 : subOps132_4.length=8 := by decide
def subOps132_5 : List Op := [.bxor 8528 8530,.badd 8527 8531,.literal (BitVec.ofNat 32 1747873779),.badd 8532 8533,.badd 8534 6932,.rotr 8520 2,.rotr 8520 13,.bxor 8536 8537]
theorem subChecked132_5 : checkSteps target certificate.alias 8531 subOps132_5=true := by core033_kernel_decide
theorem subLength132_5 : subOps132_5.length=8 := by decide
def subOps132_6 : List Op := [.rotr 8520 22,.bxor 8538 8539,.band 8520 8493,.band 8520 8466,.bxor 8541 8542,.band 8493 8466,.bxor 8543 8544,.badd 8540 8545]
theorem subChecked132_6 : checkSteps target certificate.alias 8539 subOps132_6=true := by core033_kernel_decide
theorem subLength132_6 : subOps132_6.length=8 := by decide
def subOps132_7 : List Op := [.badd 8535 8546,.badd 8439 8535,.rotr 8548 6,.rotr 8548 11,.bxor 8549 8550,.rotr 8548 25,.bxor 8551 8552,.badd 8467 8553]
theorem subChecked132_7 : checkSteps target certificate.alias 8547 subOps132_7=true := by core033_kernel_decide
theorem subLength132_7 : subOps132_7.length=8 := by decide
theorem checked132 : checkSteps target certificate.alias 8491 QuotedFrameHashControllerIR.operations132=true := by
  have partition : QuotedFrameHashControllerIR.operations132=(subOps132_0++(subOps132_1++(subOps132_2++(subOps132_3++(subOps132_4++(subOps132_5++(subOps132_6++subOps132_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked132_0,subLength132_0]
  rw [check_steps_append,subChecked132_1,subLength132_1]
  rw [check_steps_append,subChecked132_2,subLength132_2]
  rw [check_steps_append,subChecked132_3,subLength132_3]
  rw [check_steps_append,subChecked132_4,subLength132_4]
  rw [check_steps_append,subChecked132_5,subLength132_5]
  rw [check_steps_append,subChecked132_6,subLength132_6]
  exact subChecked132_7
theorem length132 : QuotedFrameHashControllerIR.operations132.length=64 := by decide
end SegmentedFrameSharing
