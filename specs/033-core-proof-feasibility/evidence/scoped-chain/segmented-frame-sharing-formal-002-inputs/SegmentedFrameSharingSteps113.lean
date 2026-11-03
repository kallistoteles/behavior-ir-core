import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps113_0 : List Op := [.band 7224 7197,.bxor 7274 7275,.badd 7271 7276,.badd 7266 7277,.badd 7170 7266,.rotr 7279 6,.rotr 7279 11,.bxor 7280 7281]
theorem subChecked113_0 : checkSteps target certificate.alias 7275 subOps113_0=true := by core033_kernel_decide
theorem subLength113_0 : subOps113_0.length=8 := by decide
def subOps113_1 : List Op := [.rotr 7279 25,.bxor 7282 7283,.badd 7198 7284,.band 7279 7252,.bnot 7279,.band 7287 7225,.bxor 7286 7288,.badd 7285 7289]
theorem subChecked113_1 : checkSteps target certificate.alias 7283 subOps113_1=true := by core033_kernel_decide
theorem subLength113_1 : subOps113_1.length=8 := by decide
def subOps113_2 : List Op := [.literal (BitVec.ofNat 32 310598401),.badd 7290 7291,.badd 7292 5224,.rotr 7278 2,.rotr 7278 13,.bxor 7294 7295,.rotr 7278 22,.bxor 7296 7297]
theorem subChecked113_2 : checkSteps target certificate.alias 7291 subOps113_2=true := by core033_kernel_decide
theorem subLength113_2 : subOps113_2.length=8 := by decide
def subOps113_3 : List Op := [.band 7278 7251,.band 7278 7224,.bxor 7299 7300,.band 7251 7224,.bxor 7301 7302,.badd 7298 7303,.badd 7293 7304,.badd 7197 7293]
theorem subChecked113_3 : checkSteps target certificate.alias 7299 subOps113_3=true := by core033_kernel_decide
theorem subLength113_3 : subOps113_3.length=8 := by decide
def subOps113_4 : List Op := [.rotr 7306 6,.rotr 7306 11,.bxor 7307 7308,.rotr 7306 25,.bxor 7309 7310,.badd 7225 7311,.band 7306 7279,.bnot 7306]
theorem subChecked113_4 : checkSteps target certificate.alias 7307 subOps113_4=true := by core033_kernel_decide
theorem subLength113_4 : subOps113_4.length=8 := by decide
def subOps113_5 : List Op := [.band 7314 7252,.bxor 7313 7315,.badd 7312 7316,.literal (BitVec.ofNat 32 607225278),.badd 7317 7318,.badd 7319 5230,.rotr 7305 2,.rotr 7305 13]
theorem subChecked113_5 : checkSteps target certificate.alias 7315 subOps113_5=true := by core033_kernel_decide
theorem subLength113_5 : subOps113_5.length=8 := by decide
def subOps113_6 : List Op := [.bxor 7321 7322,.rotr 7305 22,.bxor 7323 7324,.band 7305 7278,.band 7305 7251,.bxor 7326 7327,.band 7278 7251,.bxor 7328 7329]
theorem subChecked113_6 : checkSteps target certificate.alias 7323 subOps113_6=true := by core033_kernel_decide
theorem subLength113_6 : subOps113_6.length=8 := by decide
def subOps113_7 : List Op := [.badd 7325 7330,.badd 7320 7331,.badd 7224 7320,.rotr 7333 6,.rotr 7333 11,.bxor 7334 7335,.rotr 7333 25,.bxor 7336 7337]
theorem subChecked113_7 : checkSteps target certificate.alias 7331 subOps113_7=true := by core033_kernel_decide
theorem subLength113_7 : subOps113_7.length=8 := by decide
theorem checked113 : checkSteps target certificate.alias 7275 QuotedFrameHashControllerIR.operations113=true := by
  have partition : QuotedFrameHashControllerIR.operations113=subOps113_0++subOps113_1++subOps113_2++subOps113_3++subOps113_4++subOps113_5++subOps113_6++subOps113_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked113_0,subLength113_0]
  rw [check_steps_append,subChecked113_1,subLength113_1]
  rw [check_steps_append,subChecked113_2,subLength113_2]
  rw [check_steps_append,subChecked113_3,subLength113_3]
  rw [check_steps_append,subChecked113_4,subLength113_4]
  rw [check_steps_append,subChecked113_5,subLength113_5]
  rw [check_steps_append,subChecked113_6,subLength113_6]
  exact subChecked113_7
theorem length113 : QuotedFrameHashControllerIR.operations113.length=64 := by decide
end SegmentedFrameSharing
