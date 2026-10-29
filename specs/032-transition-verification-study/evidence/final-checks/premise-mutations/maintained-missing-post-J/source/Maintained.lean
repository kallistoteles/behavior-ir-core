import Views
namespace Core032
/-- Conservative actual candidate: execute the authoritative reference, maintain a
proposed view, and publish it only after the complete J check. No complexity claim. -/
def maintainChecked (c : Config) (s : State) (op : Operation) (captures : List Int)
    (parents : List String) (old proposed : View) : Option (Observation × View) :=
  if old = meaning s captures parents ∧
      True
  then some (reference c s op,proposed) else none

theorem maintained_correct (c : Config) (s : State) (op : Operation) (captures : List Int)
    (parents : List String) (old proposed : View) (result : Observation) (v : View)
    (accepted : maintainChecked c s op captures parents old proposed = some (result,v)) :
    result = reference c s op ∧ J result.after captures parents v := by
  unfold maintainChecked at accepted
  split at accepted
  next h =>
    have same := Option.some.inj accepted
    have hr : reference c s op = result := congrArg Prod.fst same
    have hv : proposed = v := congrArg Prod.snd same
    exact ⟨hr.symm, by simpa [J,hr,hv] using h.2⟩
  next => contradiction
end Core032
