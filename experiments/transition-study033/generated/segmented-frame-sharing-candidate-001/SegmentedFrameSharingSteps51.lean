import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked51 : checkSteps target certificate.alias 3307 QuotedFrameHashControllerIR.operations51=true := by core033_kernel_decide
theorem length51 : QuotedFrameHashControllerIR.operations51.length=64 := by decide
end SegmentedFrameSharing
