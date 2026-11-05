import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked43 : checkSteps target certificate.alias 2795 QuotedFrameHashControllerIR.operations43=true := by core033_kernel_decide
theorem length43 : QuotedFrameHashControllerIR.operations43.length=64 := by decide
end SegmentedFrameSharing
