import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked91 : checkSteps target certificate.alias 5867 QuotedFrameHashControllerIR.operations91=true := by core033_kernel_decide
theorem length91 : QuotedFrameHashControllerIR.operations91.length=64 := by decide
end SegmentedFrameSharing
