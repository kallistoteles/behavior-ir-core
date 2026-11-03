import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked64 : checkSteps target certificate.alias 4139 QuotedFrameHashControllerIR.operations64=true := by core033_kernel_decide
theorem length64 : QuotedFrameHashControllerIR.operations64.length=64 := by decide
end SegmentedFrameSharing
