import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked105 : checkSteps target certificate.alias 6763 QuotedFrameHashControllerIR.operations105=true := by core033_kernel_decide
theorem length105 : QuotedFrameHashControllerIR.operations105.length=64 := by decide
end SegmentedFrameSharing
