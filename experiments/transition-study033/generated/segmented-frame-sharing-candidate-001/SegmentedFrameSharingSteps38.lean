import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked38 : checkSteps target certificate.alias 2475 QuotedFrameHashControllerIR.operations38=true := by core033_kernel_decide
theorem length38 : QuotedFrameHashControllerIR.operations38.length=64 := by decide
end SegmentedFrameSharing
