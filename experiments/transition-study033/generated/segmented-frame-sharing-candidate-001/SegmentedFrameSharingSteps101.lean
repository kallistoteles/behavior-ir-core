import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked101 : checkSteps target certificate.alias 6507 QuotedFrameHashControllerIR.operations101=true := by core033_kernel_decide
theorem length101 : QuotedFrameHashControllerIR.operations101.length=64 := by decide
end SegmentedFrameSharing
