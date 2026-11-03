import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked23 : checkSteps target certificate.alias 1515 QuotedFrameHashControllerIR.operations23=true := by core033_kernel_decide
theorem length23 : QuotedFrameHashControllerIR.operations23.length=64 := by decide
end SegmentedFrameSharing
