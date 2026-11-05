import SegmentedFrameSharingSuffixBlock8
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem steps_checked : checkSteps target certificate.alias QuotedFrameHashControllerIR.program.inputCount QuotedFrameHashControllerIR.program.operations=true := by
  exact suffix0
theorem certificate_checked : check QuotedFrameHashControllerIR.program target certificate=true := by
  simp only [check,input_count_checked,(program_check_exact _).mpr QuotedFrameHashControllerIR.program_valid,target_checked,alias_length_checked,inputs_checked,outputs_checked,steps_checked,Bool.and_self]
theorem complete_meaning (inputs : Nat → Word) : QuotedFrameHashControllerIR.program.eval inputs=target.eval inputs :=
  checked_program_meaning _ _ _ certificate_checked inputs
end SegmentedFrameSharing
