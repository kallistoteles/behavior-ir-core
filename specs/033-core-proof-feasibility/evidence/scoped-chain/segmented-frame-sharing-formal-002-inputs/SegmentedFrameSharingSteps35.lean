import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked35 : checkSteps target certificate.alias 2283 QuotedFrameHashControllerIR.operations35=true := by core033_kernel_decide
theorem length35 : QuotedFrameHashControllerIR.operations35.length=64 := by decide
end SegmentedFrameSharing
