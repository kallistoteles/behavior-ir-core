import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked56 : checkSteps target certificate.alias 3627 QuotedFrameHashControllerIR.operations56=true := by core033_kernel_decide
theorem length56 : QuotedFrameHashControllerIR.operations56.length=64 := by decide
end SegmentedFrameSharing
