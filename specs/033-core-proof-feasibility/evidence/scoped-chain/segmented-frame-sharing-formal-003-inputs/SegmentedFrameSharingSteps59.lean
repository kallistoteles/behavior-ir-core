import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked59 : checkSteps target certificate.alias 3819 QuotedFrameHashControllerIR.operations59=true := by core033_kernel_decide
theorem length59 : QuotedFrameHashControllerIR.operations59.length=64 := by decide
end SegmentedFrameSharing
