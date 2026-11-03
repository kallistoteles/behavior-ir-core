import SegmentedFrameSharingData
namespace SegmentedFrameSharing
open Core033 WordIR WordSharingCertificate
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem checked100 : checkSteps target certificate.alias 6443 QuotedFrameHashControllerIR.operations100=true := by core033_kernel_decide
theorem length100 : QuotedFrameHashControllerIR.operations100.length=64 := by decide
end SegmentedFrameSharing
