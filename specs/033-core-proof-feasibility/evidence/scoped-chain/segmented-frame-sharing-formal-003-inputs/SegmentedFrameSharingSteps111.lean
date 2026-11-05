import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps111_0 : List Op := [.bxor 7145 7146,.rotr 7144 25,.bxor 7147 7148,.badd 7063 7149,.band 7144 7117,.bnot 7144,.band 7152 7090,.bxor 7151 7153]
theorem subChecked111_0 : checkSteps target certificate.alias 7147 subOps111_0=true := by core033_kernel_decide
theorem subLength111_0 : subOps111_0.length=8 := by decide
def subOps111_1 : List Op := [.badd 7150 7154,.literal (BitVec.ofNat 32 961987163),.badd 7155 7156,.badd 7157 5194,.rotr 7143 2,.rotr 7143 13,.bxor 7159 7160,.rotr 7143 22]
theorem subChecked111_1 : checkSteps target certificate.alias 7155 subOps111_1=true := by core033_kernel_decide
theorem subLength111_1 : subOps111_1.length=8 := by decide
def subOps111_2 : List Op := [.bxor 7161 7162,.band 7143 7116,.band 7143 7089,.bxor 7164 7165,.band 7116 7089,.bxor 7166 7167,.badd 7163 7168,.badd 7158 7169]
theorem subChecked111_2 : checkSteps target certificate.alias 7163 subOps111_2=true := by core033_kernel_decide
theorem subLength111_2 : subOps111_2.length=8 := by decide
def subOps111_3 : List Op := [.badd 7062 7158,.rotr 7171 6,.rotr 7171 11,.bxor 7172 7173,.rotr 7171 25,.bxor 7174 7175,.badd 7090 7176,.band 7171 7144]
theorem subChecked111_3 : checkSteps target certificate.alias 7171 subOps111_3=true := by core033_kernel_decide
theorem subLength111_3 : subOps111_3.length=8 := by decide
def subOps111_4 : List Op := [.bnot 7171,.band 7179 7117,.bxor 7178 7180,.badd 7177 7181,.literal (BitVec.ofNat 32 1508970993),.badd 7182 7183,.badd 7184 5200,.rotr 7170 2]
theorem subChecked111_4 : checkSteps target certificate.alias 7179 subOps111_4=true := by core033_kernel_decide
theorem subLength111_4 : subOps111_4.length=8 := by decide
def subOps111_5 : List Op := [.rotr 7170 13,.bxor 7186 7187,.rotr 7170 22,.bxor 7188 7189,.band 7170 7143,.band 7170 7116,.bxor 7191 7192,.band 7143 7116]
theorem subChecked111_5 : checkSteps target certificate.alias 7187 subOps111_5=true := by core033_kernel_decide
theorem subLength111_5 : subOps111_5.length=8 := by decide
def subOps111_6 : List Op := [.bxor 7193 7194,.badd 7190 7195,.badd 7185 7196,.badd 7089 7185,.rotr 7198 6,.rotr 7198 11,.bxor 7199 7200,.rotr 7198 25]
theorem subChecked111_6 : checkSteps target certificate.alias 7195 subOps111_6=true := by core033_kernel_decide
theorem subLength111_6 : subOps111_6.length=8 := by decide
def subOps111_7 : List Op := [.bxor 7201 7202,.badd 7117 7203,.band 7198 7171,.bnot 7198,.band 7206 7144,.bxor 7205 7207,.badd 7204 7208,.literal (BitVec.ofNat 32 2453635748)]
theorem subChecked111_7 : checkSteps target certificate.alias 7203 subOps111_7=true := by core033_kernel_decide
theorem subLength111_7 : subOps111_7.length=8 := by decide
theorem checked111 : checkSteps target certificate.alias 7147 QuotedFrameHashControllerIR.operations111=true := by
  have partition : QuotedFrameHashControllerIR.operations111=(subOps111_0++(subOps111_1++(subOps111_2++(subOps111_3++(subOps111_4++(subOps111_5++(subOps111_6++subOps111_7))))))) := rfl
  rw [partition]
  rw [check_steps_append,subChecked111_0,subLength111_0]
  rw [check_steps_append,subChecked111_1,subLength111_1]
  rw [check_steps_append,subChecked111_2,subLength111_2]
  rw [check_steps_append,subChecked111_3,subLength111_3]
  rw [check_steps_append,subChecked111_4,subLength111_4]
  rw [check_steps_append,subChecked111_5,subLength111_5]
  rw [check_steps_append,subChecked111_6,subLength111_6]
  exact subChecked111_7
theorem length111 : QuotedFrameHashControllerIR.operations111.length=64 := by decide
end SegmentedFrameSharing
