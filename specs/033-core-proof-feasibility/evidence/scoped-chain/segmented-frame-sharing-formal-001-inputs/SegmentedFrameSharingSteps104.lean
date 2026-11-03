import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked104 : checkSteps target certificate.alias 6699 QuotedFrameHashControllerIR.operations104=true := by core033_kernel_decide
theorem length104 : QuotedFrameHashControllerIR.operations104.length=64 := by decide
end SegmentedFrameSharing
