import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked134 : checkSteps target certificate.alias 8619 QuotedFrameHashControllerIR.operations134=true := by core033_kernel_decide
theorem length134 : QuotedFrameHashControllerIR.operations134.length=64 := by decide
end SegmentedFrameSharing
