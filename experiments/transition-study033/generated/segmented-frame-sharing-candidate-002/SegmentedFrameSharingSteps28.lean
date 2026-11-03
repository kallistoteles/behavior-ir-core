import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked28 : checkSteps target certificate.alias 1835 QuotedFrameHashControllerIR.operations28=true := by core033_kernel_decide
theorem length28 : QuotedFrameHashControllerIR.operations28.length=64 := by decide
end SegmentedFrameSharing
