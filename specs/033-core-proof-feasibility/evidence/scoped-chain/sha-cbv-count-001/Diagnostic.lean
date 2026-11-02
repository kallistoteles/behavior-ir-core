import Core033.SHA256Compiled
import Lean.Elab.Tactic.Cbv
set_option Elab.async false
set_option cbv.warning false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
theorem result : Core033.SHA256Compiled.program.operations.length = 2360 := by decide_cbv
