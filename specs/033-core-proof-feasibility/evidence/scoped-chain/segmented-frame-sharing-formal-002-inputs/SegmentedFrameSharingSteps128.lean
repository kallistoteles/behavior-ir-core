import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def subOps128_0 : List Op := [.badd 8230 8234,.literal (BitVec.ofNat 32 3516065817),.badd 8235 8236,.badd 8237 6789,.rotr 8223 2,.rotr 8223 13,.bxor 8239 8240,.rotr 8223 22]
theorem subChecked128_0 : checkSteps target certificate.alias 8235 subOps128_0=true := by core033_kernel_decide
theorem subLength128_0 : subOps128_0.length=8 := by decide
def subOps128_1 : List Op := [.bxor 8241 8242,.band 8223 8196,.band 8223 8169,.bxor 8244 8245,.band 8196 8169,.bxor 8246 8247,.badd 8243 8248,.badd 8238 8249]
theorem subChecked128_1 : checkSteps target certificate.alias 8243 subOps128_1=true := by core033_kernel_decide
theorem subLength128_1 : subOps128_1.length=8 := by decide
def subOps128_2 : List Op := [.badd 8142 8238,.rotr 8251 6,.rotr 8251 11,.bxor 8252 8253,.rotr 8251 25,.bxor 8254 8255,.badd 8170 8256,.band 8251 8224]
theorem subChecked128_2 : checkSteps target certificate.alias 8251 subOps128_2=true := by core033_kernel_decide
theorem subLength128_2 : subOps128_2.length=8 := by decide
def subOps128_3 : List Op := [.bnot 8251,.band 8259 8197,.bxor 8258 8260,.badd 8257 8261,.literal (BitVec.ofNat 32 3600352804),.badd 8262 8263,.badd 8264 6802,.rotr 8250 2]
theorem subChecked128_3 : checkSteps target certificate.alias 8259 subOps128_3=true := by core033_kernel_decide
theorem subLength128_3 : subOps128_3.length=8 := by decide
def subOps128_4 : List Op := [.rotr 8250 13,.bxor 8266 8267,.rotr 8250 22,.bxor 8268 8269,.band 8250 8223,.band 8250 8196,.bxor 8271 8272,.band 8223 8196]
theorem subChecked128_4 : checkSteps target certificate.alias 8267 subOps128_4=true := by core033_kernel_decide
theorem subLength128_4 : subOps128_4.length=8 := by decide
def subOps128_5 : List Op := [.bxor 8273 8274,.badd 8270 8275,.badd 8265 8276,.badd 8169 8265,.rotr 8278 6,.rotr 8278 11,.bxor 8279 8280,.rotr 8278 25]
theorem subChecked128_5 : checkSteps target certificate.alias 8275 subOps128_5=true := by core033_kernel_decide
theorem subLength128_5 : subOps128_5.length=8 := by decide
def subOps128_6 : List Op := [.bxor 8281 8282,.badd 8197 8283,.band 8278 8251,.bnot 8278,.band 8286 8224,.bxor 8285 8287,.badd 8284 8288,.literal (BitVec.ofNat 32 4094571909)]
theorem subChecked128_6 : checkSteps target certificate.alias 8283 subOps128_6=true := by core033_kernel_decide
theorem subLength128_6 : subOps128_6.length=8 := by decide
def subOps128_7 : List Op := [.badd 8289 8290,.badd 8291 6815,.rotr 8277 2,.rotr 8277 13,.bxor 8293 8294,.rotr 8277 22,.bxor 8295 8296,.band 8277 8250]
theorem subChecked128_7 : checkSteps target certificate.alias 8291 subOps128_7=true := by core033_kernel_decide
theorem subLength128_7 : subOps128_7.length=8 := by decide
theorem checked128 : checkSteps target certificate.alias 8235 QuotedFrameHashControllerIR.operations128=true := by
  have partition : QuotedFrameHashControllerIR.operations128=subOps128_0++subOps128_1++subOps128_2++subOps128_3++subOps128_4++subOps128_5++subOps128_6++subOps128_7 := rfl
  rw [partition]
  rw [check_steps_append,subChecked128_0,subLength128_0]
  rw [check_steps_append,subChecked128_1,subLength128_1]
  rw [check_steps_append,subChecked128_2,subLength128_2]
  rw [check_steps_append,subChecked128_3,subLength128_3]
  rw [check_steps_append,subChecked128_4,subLength128_4]
  rw [check_steps_append,subChecked128_5,subLength128_5]
  rw [check_steps_append,subChecked128_6,subLength128_6]
  exact subChecked128_7
theorem length128 : QuotedFrameHashControllerIR.operations128.length=64 := by decide
end SegmentedFrameSharing
