import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked122 : checkSteps target certificate.alias 7851 QuotedFrameHashControllerIR.operations122=true := by core033_kernel_decide
theorem length122 : QuotedFrameHashControllerIR.operations122.length=64 := by decide
end SegmentedFrameSharing
