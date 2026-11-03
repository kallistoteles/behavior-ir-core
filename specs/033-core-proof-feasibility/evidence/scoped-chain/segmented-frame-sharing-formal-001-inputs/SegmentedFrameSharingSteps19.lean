import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked19 : checkSteps target certificate.alias 1259 QuotedFrameHashControllerIR.operations19=true := by core033_kernel_decide
theorem length19 : QuotedFrameHashControllerIR.operations19.length=64 := by decide
end SegmentedFrameSharing
