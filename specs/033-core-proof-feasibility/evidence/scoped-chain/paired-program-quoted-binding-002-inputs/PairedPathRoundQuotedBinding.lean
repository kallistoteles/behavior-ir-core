import QuotedPairedPathRoundIR
import ActualPairedPathRoundIR
namespace PairedPathRoundQuotedBinding
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
/- A real new kernel bridge; no renamed precompiled module or native semantic assertion. -/
theorem actual_program_exact : QuotedPairedPathRoundIR.program=ActualPairedPathRoundIR.program := by rfl
theorem original_model_exact : QuotedPairedPathRoundIR.program=Core033.PairedPathRound.program :=
  actual_program_exact.trans ActualPairedPathRoundIR.ir_exact
end PairedPathRoundQuotedBinding
