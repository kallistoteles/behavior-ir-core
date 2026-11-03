import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked10 : checkSteps target certificate.alias 683 QuotedFrameHashControllerIR.operations10=true := by core033_kernel_decide
theorem length10 : QuotedFrameHashControllerIR.operations10.length=64 := by decide
end SegmentedFrameSharing
