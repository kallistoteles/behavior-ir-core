import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked21 : checkSteps target certificate.alias 1387 QuotedFrameHashControllerIR.operations21=true := by core033_kernel_decide
theorem length21 : QuotedFrameHashControllerIR.operations21.length=64 := by decide
end SegmentedFrameSharing
