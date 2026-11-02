import Core033.SHA256Compiled
import Lean.Elab.Tactic.Cbv
import Core033.KernelDecide
set_option Elab.async false
set_option cbv.warning false
set_option cbv.maxSteps 8000000
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
theorem result : Core033.SHA256Compiled.program.operations.length = 2360 := by decide_cbv
