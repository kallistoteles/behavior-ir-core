import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked126 : checkSteps target certificate.alias 8107 QuotedFrameHashControllerIR.operations126=true := by core033_kernel_decide
theorem length126 : QuotedFrameHashControllerIR.operations126.length=64 := by decide
end SegmentedFrameSharing
