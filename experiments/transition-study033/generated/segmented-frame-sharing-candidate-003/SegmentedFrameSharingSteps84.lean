import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked84 : checkSteps target certificate.alias 5419 QuotedFrameHashControllerIR.operations84=true := by core033_kernel_decide
theorem length84 : QuotedFrameHashControllerIR.operations84.length=64 := by decide
end SegmentedFrameSharing
