import Core033.PairedPathRound

namespace Core033.PairedPathPreservedExpression
open WordStage PairedPathRound

theorem preserved (index : Nat) (notPhase : index≠0) (notCounter : index≠2)
    (notWork : ¬(47≤index ∧ index<79)) : stateExpression index=Expr.input index := by
  unfold stateExpression
  split_ifs
  all_goals first
    | exact False.elim (notWork (by omega))
    | rfl

end Core033.PairedPathPreservedExpression
