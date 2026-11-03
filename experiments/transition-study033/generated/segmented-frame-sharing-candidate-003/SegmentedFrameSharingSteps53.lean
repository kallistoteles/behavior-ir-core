import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked53 : checkSteps target certificate.alias 3435 QuotedFrameHashControllerIR.operations53=true := by core033_kernel_decide
theorem length53 : QuotedFrameHashControllerIR.operations53.length=64 := by decide
end SegmentedFrameSharing
