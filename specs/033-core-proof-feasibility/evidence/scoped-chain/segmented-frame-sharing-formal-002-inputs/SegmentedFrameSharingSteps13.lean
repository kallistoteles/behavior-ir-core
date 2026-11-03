import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked13 : checkSteps target certificate.alias 875 QuotedFrameHashControllerIR.operations13=true := by core033_kernel_decide
theorem length13 : QuotedFrameHashControllerIR.operations13.length=64 := by decide
end SegmentedFrameSharing
