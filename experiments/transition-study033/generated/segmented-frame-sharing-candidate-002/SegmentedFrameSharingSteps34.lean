import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked34 : checkSteps target certificate.alias 2219 QuotedFrameHashControllerIR.operations34=true := by core033_kernel_decide
theorem length34 : QuotedFrameHashControllerIR.operations34.length=64 := by decide
end SegmentedFrameSharing
