import Reuse035.Imports
namespace Reuse035
def prohibited : ParentPhase → Bool
 | .openState => false
 | .gone | .abandoned => true
def project (s : State np nc) : Safety.Lifecycle.State np nc :=
 ⟨fun p => (s.parents p).map prohibited,
  fun i => (s.children i).map fun row => ⟨row.owner, decide (row.phase=.terminal)⟩⟩
end Reuse035
