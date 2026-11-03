import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked107 : checkSteps target certificate.alias 6891 QuotedFrameHashControllerIR.operations107=true := by core033_kernel_decide
theorem length107 : QuotedFrameHashControllerIR.operations107.length=64 := by decide
end SegmentedFrameSharing
