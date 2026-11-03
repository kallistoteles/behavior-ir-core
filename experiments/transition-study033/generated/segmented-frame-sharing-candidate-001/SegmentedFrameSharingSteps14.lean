import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked14 : checkSteps target certificate.alias 939 QuotedFrameHashControllerIR.operations14=true := by core033_kernel_decide
theorem length14 : QuotedFrameHashControllerIR.operations14.length=64 := by decide
end SegmentedFrameSharing
