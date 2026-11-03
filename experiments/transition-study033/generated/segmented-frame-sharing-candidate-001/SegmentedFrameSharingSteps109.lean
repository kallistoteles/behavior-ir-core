import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked109 : checkSteps target certificate.alias 7019 QuotedFrameHashControllerIR.operations109=true := by core033_kernel_decide
theorem length109 : QuotedFrameHashControllerIR.operations109.length=64 := by decide
end SegmentedFrameSharing
