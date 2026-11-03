import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked96 : checkSteps target certificate.alias 6187 QuotedFrameHashControllerIR.operations96=true := by core033_kernel_decide
theorem length96 : QuotedFrameHashControllerIR.operations96.length=64 := by decide
end SegmentedFrameSharing
