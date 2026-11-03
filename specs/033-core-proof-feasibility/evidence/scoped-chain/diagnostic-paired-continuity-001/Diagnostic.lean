import Core033.PairedPathAssignments
import Core033.PairedPathLocalView
import Core033.PairedPathTrace

namespace Core033.PairedPathContinuity
open WordIR PairedPathRound PairedPathTrace
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem original_word (inputs : Nat → Word) (notSix : inputs 0≠6)
    (index : Nat) (positive : 0<index) (bound : index<47) : next inputs index=inputs index := by
  by_cases counter : index=2
  · subst index
    exact (PairedPathAssignments.counter_word inputs).trans (if_neg notSix)
  · exact PairedPathPorts.preserved_original_port inputs index (by omega)
      (by omega) counter (by omega)

theorem continued_sha (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    PairedPathRouting.routedWord (next inputs) (35+index)=
      PathRoundDispatchTrace.next (PairedPathRouting.routedWord inputs) (35+index) :=
  (PairedPathLocalView.sha_word (next inputs) index bound).trans
    (PairedPathAssignments.sha_word inputs index bound)

/- The original counter/address/old and new child/sibling words remain fixed
through each compression pair, and all eight actual SHA words continue exactly.
Full 43-word local state continuity and the six-step digest theorem are next. -/
end Core033.PairedPathContinuity
