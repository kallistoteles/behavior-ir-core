import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked25 : checkSteps target certificate.alias 1643 QuotedFrameHashControllerIR.operations25=true := by core033_kernel_decide
theorem length25 : QuotedFrameHashControllerIR.operations25.length=64 := by decide
end SegmentedFrameSharing
