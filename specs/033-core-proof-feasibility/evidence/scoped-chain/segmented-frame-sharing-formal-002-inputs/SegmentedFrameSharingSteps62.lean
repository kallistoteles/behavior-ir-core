import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked62 : checkSteps target certificate.alias 4011 QuotedFrameHashControllerIR.operations62=true := by core033_kernel_decide
theorem length62 : QuotedFrameHashControllerIR.operations62.length=64 := by decide
end SegmentedFrameSharing
