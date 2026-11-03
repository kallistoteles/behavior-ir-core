import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked74 : checkSteps target certificate.alias 4779 QuotedFrameHashControllerIR.operations74=true := by core033_kernel_decide
theorem length74 : QuotedFrameHashControllerIR.operations74.length=64 := by decide
end SegmentedFrameSharing
