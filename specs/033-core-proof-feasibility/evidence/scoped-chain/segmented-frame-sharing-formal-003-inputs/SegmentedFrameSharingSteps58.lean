import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked58 : checkSteps target certificate.alias 3755 QuotedFrameHashControllerIR.operations58=true := by core033_kernel_decide
theorem length58 : QuotedFrameHashControllerIR.operations58.length=64 := by decide
end SegmentedFrameSharing
