import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked127 : checkSteps target certificate.alias 8171 QuotedFrameHashControllerIR.operations127=true := by core033_kernel_decide
theorem length127 : QuotedFrameHashControllerIR.operations127.length=64 := by decide
end SegmentedFrameSharing
