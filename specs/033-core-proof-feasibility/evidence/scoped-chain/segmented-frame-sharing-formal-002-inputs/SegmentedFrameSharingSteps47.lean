import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked47 : checkSteps target certificate.alias 3051 QuotedFrameHashControllerIR.operations47=true := by core033_kernel_decide
theorem length47 : QuotedFrameHashControllerIR.operations47.length=64 := by decide
end SegmentedFrameSharing
