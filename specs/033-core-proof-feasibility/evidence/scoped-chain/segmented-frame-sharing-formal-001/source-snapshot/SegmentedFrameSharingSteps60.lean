import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked60 : checkSteps target certificate.alias 3883 QuotedFrameHashControllerIR.operations60=true := by core033_kernel_decide
theorem length60 : QuotedFrameHashControllerIR.operations60.length=64 := by decide
end SegmentedFrameSharing
