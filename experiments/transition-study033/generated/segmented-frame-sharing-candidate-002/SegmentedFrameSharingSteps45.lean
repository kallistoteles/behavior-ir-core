import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked45 : checkSteps target certificate.alias 2923 QuotedFrameHashControllerIR.operations45=true := by core033_kernel_decide
theorem length45 : QuotedFrameHashControllerIR.operations45.length=64 := by decide
end SegmentedFrameSharing
