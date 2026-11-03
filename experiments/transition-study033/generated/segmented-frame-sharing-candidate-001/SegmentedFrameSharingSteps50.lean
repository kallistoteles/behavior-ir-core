import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked50 : checkSteps target certificate.alias 3243 QuotedFrameHashControllerIR.operations50=true := by core033_kernel_decide
theorem length50 : QuotedFrameHashControllerIR.operations50.length=64 := by decide
end SegmentedFrameSharing
