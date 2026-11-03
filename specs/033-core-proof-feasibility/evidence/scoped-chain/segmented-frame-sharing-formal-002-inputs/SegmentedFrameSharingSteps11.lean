import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked11 : checkSteps target certificate.alias 747 QuotedFrameHashControllerIR.operations11=true := by core033_kernel_decide
theorem length11 : QuotedFrameHashControllerIR.operations11.length=64 := by decide
end SegmentedFrameSharing
