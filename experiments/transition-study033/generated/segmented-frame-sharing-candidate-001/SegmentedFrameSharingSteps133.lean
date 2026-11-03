import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked133 : checkSteps target certificate.alias 8555 QuotedFrameHashControllerIR.operations133=true := by core033_kernel_decide
theorem length133 : QuotedFrameHashControllerIR.operations133.length=64 := by decide
end SegmentedFrameSharing
