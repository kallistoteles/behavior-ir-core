import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps118_0 : List Op := [.bxor 7593 7594,.band 7575 7548,.band 7575 7521,.bxor 7596 7597,.band 7548 7521,.bxor 7598 7599,.badd 7595 7600,.badd 7590 7601]
theorem subChecked118_0 : checkSteps target certificate.alias 7595 subOps118_0=true := by core033_kernel_decide
theorem subLength118_0 : subOps118_0.length=8 := by decide
def subOps118_1 : List Op := [.badd 7494 7590,.rotr 7603 6,.rotr 7603 11,.bxor 7604 7605,.rotr 7603 25,.bxor 7606 7607,.badd 7522 7608,.band 7603 7576]
theorem subChecked118_1 : checkSteps target certificate.alias 7603 subOps118_1=true := by core033_kernel_decide
theorem subLength118_1 : subOps118_1.length=8 := by decide
def subOps118_2 : List Op := [.bnot 7603,.band 7611 7549,.bxor 7610 7612,.badd 7609 7613,.literal (BitVec.ofNat 32 1249150122),.badd 7614 7615,.badd 7616 6490,.rotr 7602 2]
theorem subChecked118_2 : checkSteps target certificate.alias 7611 subOps118_2=true := by core033_kernel_decide
theorem subLength118_2 : subOps118_2.length=8 := by decide
def subOps118_3 : List Op := [.rotr 7602 13,.bxor 7618 7619,.rotr 7602 22,.bxor 7620 7621,.band 7602 7575,.band 7602 7548,.bxor 7623 7624,.band 7575 7548]
theorem subChecked118_3 : checkSteps target certificate.alias 7619 subOps118_3=true := by core033_kernel_decide
theorem subLength118_3 : subOps118_3.length=8 := by decide
def subOps118_4 : List Op := [.bxor 7625 7626,.badd 7622 7627,.badd 7617 7628,.badd 7521 7617,.rotr 7630 6,.rotr 7630 11,.bxor 7631 7632,.rotr 7630 25]
theorem subChecked118_4 : checkSteps target certificate.alias 7627 subOps118_4=true := by core033_kernel_decide
theorem subLength118_4 : subOps118_4.length=8 := by decide
def subOps118_5 : List Op := [.bxor 7633 7634,.badd 7549 7635,.band 7630 7603,.bnot 7630,.band 7638 7576,.bxor 7637 7639,.badd 7636 7640,.literal (BitVec.ofNat 32 1555081692)]
theorem subChecked118_5 : checkSteps target certificate.alias 7635 subOps118_5=true := by core033_kernel_decide
theorem subLength118_5 : subOps118_5.length=8 := by decide
def subOps118_6 : List Op := [.badd 7641 7642,.badd 7643 6503,.rotr 7629 2,.rotr 7629 13,.bxor 7645 7646,.rotr 7629 22,.bxor 7647 7648,.band 7629 7602]
theorem subChecked118_6 : checkSteps target certificate.alias 7643 subOps118_6=true := by core033_kernel_decide
theorem subLength118_6 : subOps118_6.length=8 := by decide
def subOps118_7 : List Op := [.band 7629 7575,.bxor 7650 7651,.band 7602 7575,.bxor 7652 7653,.badd 7649 7654,.badd 7644 7655,.badd 7548 7644,.rotr 7657 6]
theorem subChecked118_7 : checkSteps target certificate.alias 7651 subOps118_7=true := by core033_kernel_decide
theorem subLength118_7 : subOps118_7.length=8 := by decide
theorem checked118 : checkSteps target certificate.alias 7595 QuotedFrameHashControllerIR.operations118=true := by
  have partition : QuotedFrameHashControllerIR.operations118=(subOps118_0++(subOps118_1++(subOps118_2++(subOps118_3++(subOps118_4++(subOps118_5++(subOps118_6++subOps118_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked118_0,subLength118_0]
  rw [check_steps_append,subChecked118_1,subLength118_1]
  rw [check_steps_append,subChecked118_2,subLength118_2]
  rw [check_steps_append,subChecked118_3,subLength118_3]
  rw [check_steps_append,subChecked118_4,subLength118_4]
  rw [check_steps_append,subChecked118_5,subLength118_5]
  rw [check_steps_append,subChecked118_6,subLength118_6]
  exact subChecked118_7
theorem length118 : QuotedFrameHashControllerIR.operations118.length=64 := by decide
end SegmentedFrameSharing
