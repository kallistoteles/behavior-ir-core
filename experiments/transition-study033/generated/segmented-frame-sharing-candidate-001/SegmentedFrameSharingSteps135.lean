import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked135 : checkSteps target certificate.alias 8683 QuotedFrameHashControllerIR.operations135=true := by core033_kernel_decide
theorem length135 : QuotedFrameHashControllerIR.operations135.length=64 := by decide
end SegmentedFrameSharing
