import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps110_0 : List Op := [.band 7062 1452,.band 7062 1505,.bxor 7083 7084,.band 1452 1505,.bxor 7085 7086,.badd 7082 7087,.badd 7077 7088,.badd 1558 7077]
theorem subChecked110_0 : checkSteps target certificate.alias 7083 subOps110_0=true := by core033_kernel_decide
theorem subLength110_0 : subOps110_0.length=8 := by decide
def subOps110_1 : List Op := [.rotr 7090 6,.rotr 7090 11,.bxor 7091 7092,.rotr 7090 25,.bxor 7093 7094,.badd 1717 7095,.band 7090 7063,.bnot 7090]
theorem subChecked110_1 : checkSteps target certificate.alias 7091 subOps110_1=true := by core033_kernel_decide
theorem subLength110_1 : subOps110_1.length=8 := by decide
def subOps110_2 : List Op := [.band 7098 1664,.bxor 7097 7099,.badd 7096 7100,.literal (BitVec.ofNat 32 3049323471),.badd 7101 7102,.badd 7103 5182,.rotr 7089 2,.rotr 7089 13]
theorem subChecked110_2 : checkSteps target certificate.alias 7099 subOps110_2=true := by core033_kernel_decide
theorem subLength110_2 : subOps110_2.length=8 := by decide
def subOps110_3 : List Op := [.bxor 7105 7106,.rotr 7089 22,.bxor 7107 7108,.band 7089 7062,.band 7089 1452,.bxor 7110 7111,.band 7062 1452,.bxor 7112 7113]
theorem subChecked110_3 : checkSteps target certificate.alias 7107 subOps110_3=true := by core033_kernel_decide
theorem subLength110_3 : subOps110_3.length=8 := by decide
def subOps110_4 : List Op := [.badd 7109 7114,.badd 7104 7115,.badd 1505 7104,.rotr 7117 6,.rotr 7117 11,.bxor 7118 7119,.rotr 7117 25,.bxor 7120 7121]
theorem subChecked110_4 : checkSteps target certificate.alias 7115 subOps110_4=true := by core033_kernel_decide
theorem subLength110_4 : subOps110_4.length=8 := by decide
def subOps110_5 : List Op := [.badd 1664 7122,.band 7117 7090,.bnot 7117,.band 7125 7063,.bxor 7124 7126,.badd 7123 7127,.literal (BitVec.ofNat 32 3921009573),.badd 7128 7129]
theorem subChecked110_5 : checkSteps target certificate.alias 7123 subOps110_5=true := by core033_kernel_decide
theorem subLength110_5 : subOps110_5.length=8 := by decide
def subOps110_6 : List Op := [.badd 7130 5188,.rotr 7116 2,.rotr 7116 13,.bxor 7132 7133,.rotr 7116 22,.bxor 7134 7135,.band 7116 7089,.band 7116 7062]
theorem subChecked110_6 : checkSteps target certificate.alias 7131 subOps110_6=true := by core033_kernel_decide
theorem subLength110_6 : subOps110_6.length=8 := by decide
def subOps110_7 : List Op := [.bxor 7137 7138,.band 7089 7062,.bxor 7139 7140,.badd 7136 7141,.badd 7131 7142,.badd 1452 7131,.rotr 7144 6,.rotr 7144 11]
theorem subChecked110_7 : checkSteps target certificate.alias 7139 subOps110_7=true := by core033_kernel_decide
theorem subLength110_7 : subOps110_7.length=8 := by decide
theorem checked110 : checkSteps target certificate.alias 7083 QuotedFrameHashControllerIR.operations110=true := by
  have partition : QuotedFrameHashControllerIR.operations110=(subOps110_0++(subOps110_1++(subOps110_2++(subOps110_3++(subOps110_4++(subOps110_5++(subOps110_6++subOps110_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked110_0,subLength110_0]
  rw [check_steps_append,subChecked110_1,subLength110_1]
  rw [check_steps_append,subChecked110_2,subLength110_2]
  rw [check_steps_append,subChecked110_3,subLength110_3]
  rw [check_steps_append,subChecked110_4,subLength110_4]
  rw [check_steps_append,subChecked110_5,subLength110_5]
  rw [check_steps_append,subChecked110_6,subLength110_6]
  exact subChecked110_7
theorem length110 : QuotedFrameHashControllerIR.operations110.length=64 := by decide
end SegmentedFrameSharing
