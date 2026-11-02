import Core033.SHA256Compiled
import Core033.KernelDecide
set_option Elab.async false
set_option maxRecDepth 262144
set_option maxHeartbeats 8000000
theorem count_exact : Core033.SHA256Compiled.program.operations.length = 2360 := by core033_kernel_decide
