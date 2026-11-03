import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked125 : checkSteps target certificate.alias 8043 QuotedFrameHashControllerIR.operations125=true := by core033_kernel_decide
theorem length125 : QuotedFrameHashControllerIR.operations125.length=64 := by decide
end SegmentedFrameSharing
