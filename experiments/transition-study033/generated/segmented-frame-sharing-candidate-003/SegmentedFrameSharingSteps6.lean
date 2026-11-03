import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked6 : checkSteps target certificate.alias 427 QuotedFrameHashControllerIR.operations6=true := by core033_kernel_decide
theorem length6 : QuotedFrameHashControllerIR.operations6.length=64 := by decide
end SegmentedFrameSharing
