import Core033.FrameHashController

namespace Core033.FrameHashControllerValidity
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem program_valid : FrameHashController.program.Valid := by
  apply WordSourceValidity.safe_program_valid
  apply (WordSource.check_safe_exact _).mp
  core033_kernel_decide

end Core033.FrameHashControllerValidity
