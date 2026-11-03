import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked111 : checkSteps target certificate.alias 7147 QuotedFrameHashControllerIR.operations111=true := by core033_kernel_decide
theorem length111 : QuotedFrameHashControllerIR.operations111.length=64 := by decide
end SegmentedFrameSharing
