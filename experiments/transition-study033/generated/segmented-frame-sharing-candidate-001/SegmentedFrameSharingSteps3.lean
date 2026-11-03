import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked3 : checkSteps target certificate.alias 235 QuotedFrameHashControllerIR.operations3=true := by core033_kernel_decide
theorem length3 : QuotedFrameHashControllerIR.operations3.length=64 := by decide
end SegmentedFrameSharing
