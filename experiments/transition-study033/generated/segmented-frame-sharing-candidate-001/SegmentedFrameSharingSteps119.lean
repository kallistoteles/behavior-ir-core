import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked119 : checkSteps target certificate.alias 7659 QuotedFrameHashControllerIR.operations119=true := by core033_kernel_decide
theorem length119 : QuotedFrameHashControllerIR.operations119.length=64 := by decide
end SegmentedFrameSharing
