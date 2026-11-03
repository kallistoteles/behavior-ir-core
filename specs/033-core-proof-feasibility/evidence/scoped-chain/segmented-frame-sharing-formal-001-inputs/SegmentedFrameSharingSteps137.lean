import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked137 : checkSteps target certificate.alias 8811 QuotedFrameHashControllerIR.operations137=true := by core033_kernel_decide
theorem length137 : QuotedFrameHashControllerIR.operations137.length=59 := by decide
end SegmentedFrameSharing
