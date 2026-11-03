import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked55 : checkSteps target certificate.alias 3563 QuotedFrameHashControllerIR.operations55=true := by core033_kernel_decide
theorem length55 : QuotedFrameHashControllerIR.operations55.length=64 := by decide
end SegmentedFrameSharing
