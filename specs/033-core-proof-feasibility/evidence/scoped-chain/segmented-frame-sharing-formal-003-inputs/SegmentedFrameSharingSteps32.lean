import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked32 : checkSteps target certificate.alias 2091 QuotedFrameHashControllerIR.operations32=true := by core033_kernel_decide
theorem length32 : QuotedFrameHashControllerIR.operations32.length=64 := by decide
end SegmentedFrameSharing
