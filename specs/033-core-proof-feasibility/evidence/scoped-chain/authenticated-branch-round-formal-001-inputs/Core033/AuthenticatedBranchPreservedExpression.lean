import Core033.AuthenticatedBranchRound

namespace Core033.AuthenticatedBranchPreservedExpression
open WordStage AuthenticatedBranchRound

theorem preserved (index : Nat) (notPhase : index≠0) (notCounter : index≠2)
    (notWork : ¬(35≤index ∧ index<79)) : stateExpression index=Expr.input index := by
  unfold stateExpression
  split_ifs
  all_goals first
    | exact False.elim (notWork (by omega))
    | rfl

theorem evaluated (values : Nat → WordIR.Word) (index : Nat) (notPhase : index≠0)
    (notCounter : index≠2) (notWork : ¬(35≤index ∧ index<79)) :
    (stateExpression index).eval values=values index :=
  congrArg (fun expression : Expr=>expression.eval values)
    (preserved index notPhase notCounter notWork)

end Core033.AuthenticatedBranchPreservedExpression
