import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked115 : checkSteps target certificate.alias 7403 QuotedFrameHashControllerIR.operations115=true := by core033_kernel_decide
theorem length115 : QuotedFrameHashControllerIR.operations115.length=64 := by decide
end SegmentedFrameSharing
