import QuotedAuthenticatedBranchRoundIR
import ActualAuthenticatedBranchRoundIR
namespace AuthenticatedBranchRoundQuotedBinding
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
/- A real new kernel bridge; no renamed precompiled module or native semantic assertion. -/
theorem actual_program_exact : QuotedAuthenticatedBranchRoundIR.program=ActualAuthenticatedBranchRoundIR.program := by rfl
theorem original_model_exact : QuotedAuthenticatedBranchRoundIR.program=Core033.AuthenticatedBranchRound.program :=
  actual_program_exact.trans ActualAuthenticatedBranchRoundIR.ir_exact
end AuthenticatedBranchRoundQuotedBinding
