import Core033.PairedPathRound

namespace Core033.PairedPathPreservedExpression
open WordStage PairedPathRound

theorem preserved (index : Nat) (notPhase : index≠0) (notCounter : index≠2)
    (notWork : ¬(47≤index ∧ index<79)) : stateExpression index=Expr.input index := by
  unfold stateExpression
  split_ifs with phase counter sha oldParent newParent
  · exact False.elim (notPhase phase)
  · exact False.elim (notCounter counter)
  · have forbidden : 47≤index ∧ index<79 := by omega
    exact False.elim (notWork forbidden)
  · have forbidden : 47≤index ∧ index<79 := by omega
    exact False.elim (notWork forbidden)
  · have forbidden : 47≤index ∧ index<79 := by omega
    exact False.elim (notWork forbidden)
  · rfl

end Core033.PairedPathPreservedExpression
