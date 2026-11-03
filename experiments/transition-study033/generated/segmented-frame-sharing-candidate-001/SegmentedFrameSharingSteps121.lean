import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked121 : checkSteps target certificate.alias 7787 QuotedFrameHashControllerIR.operations121=true := by core033_kernel_decide
theorem length121 : QuotedFrameHashControllerIR.operations121.length=64 := by decide
end SegmentedFrameSharing
