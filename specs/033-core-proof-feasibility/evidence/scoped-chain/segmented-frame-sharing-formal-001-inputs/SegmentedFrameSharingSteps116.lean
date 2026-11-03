import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked116 : checkSteps target certificate.alias 7467 QuotedFrameHashControllerIR.operations116=true := by core033_kernel_decide
theorem length116 : QuotedFrameHashControllerIR.operations116.length=64 := by decide
end SegmentedFrameSharing
