import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked30 : checkSteps target certificate.alias 1963 QuotedFrameHashControllerIR.operations30=true := by core033_kernel_decide
theorem length30 : QuotedFrameHashControllerIR.operations30.length=64 := by decide
end SegmentedFrameSharing
