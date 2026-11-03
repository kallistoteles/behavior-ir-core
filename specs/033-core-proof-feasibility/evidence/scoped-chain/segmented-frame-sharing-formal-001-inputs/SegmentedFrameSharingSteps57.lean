import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked57 : checkSteps target certificate.alias 3691 QuotedFrameHashControllerIR.operations57=true := by core033_kernel_decide
theorem length57 : QuotedFrameHashControllerIR.operations57.length=64 := by decide
end SegmentedFrameSharing
