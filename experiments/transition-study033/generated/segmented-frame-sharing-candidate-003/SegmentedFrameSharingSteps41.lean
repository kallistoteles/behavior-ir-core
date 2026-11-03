import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked41 : checkSteps target certificate.alias 2667 QuotedFrameHashControllerIR.operations41=true := by core033_kernel_decide
theorem length41 : QuotedFrameHashControllerIR.operations41.length=64 := by decide
end SegmentedFrameSharing
