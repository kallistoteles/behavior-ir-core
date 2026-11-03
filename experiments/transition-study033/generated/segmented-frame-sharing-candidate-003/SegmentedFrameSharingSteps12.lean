import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked12 : checkSteps target certificate.alias 811 QuotedFrameHashControllerIR.operations12=true := by core033_kernel_decide
theorem length12 : QuotedFrameHashControllerIR.operations12.length=64 := by decide
end SegmentedFrameSharing
