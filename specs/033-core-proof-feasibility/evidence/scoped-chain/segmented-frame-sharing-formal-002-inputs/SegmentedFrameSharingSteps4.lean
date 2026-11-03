import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked4 : checkSteps target certificate.alias 299 QuotedFrameHashControllerIR.operations4=true := by core033_kernel_decide
theorem length4 : QuotedFrameHashControllerIR.operations4.length=64 := by decide
end SegmentedFrameSharing
