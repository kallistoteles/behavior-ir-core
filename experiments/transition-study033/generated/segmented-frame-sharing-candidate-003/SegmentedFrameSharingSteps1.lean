import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked1 : checkSteps target certificate.alias 107 QuotedFrameHashControllerIR.operations1=true := by core033_kernel_decide
theorem length1 : QuotedFrameHashControllerIR.operations1.length=64 := by decide
end SegmentedFrameSharing
