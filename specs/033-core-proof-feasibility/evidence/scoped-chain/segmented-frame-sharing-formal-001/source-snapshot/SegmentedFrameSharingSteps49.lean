import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked49 : checkSteps target certificate.alias 3179 QuotedFrameHashControllerIR.operations49=true := by core033_kernel_decide
theorem length49 : QuotedFrameHashControllerIR.operations49.length=64 := by decide
end SegmentedFrameSharing
