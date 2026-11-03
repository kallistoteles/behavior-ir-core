import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked123 : checkSteps target certificate.alias 7915 QuotedFrameHashControllerIR.operations123=true := by core033_kernel_decide
theorem length123 : QuotedFrameHashControllerIR.operations123.length=64 := by decide
end SegmentedFrameSharing
