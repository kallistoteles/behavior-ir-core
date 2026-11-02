import Core033.ControlPrimitives

namespace Core033.ByteCursor
open WordIR WordControl

def remaining (position limit : Word) : Word := limit-position
def next (position count : Word) : Word := position+count

def allowed (position limit count : Word) : Word :=
  (lessWord limit position ^^^ 1) &&&
    (lessWord (remaining position limit) count ^^^ 1) &&&
      (lessWord 1073741824 limit ^^^ 1)

def Admitted (position limit count : Word) : Prop :=
  position.toNat≤limit.toNat ∧ count.toNat≤limit.toNat-position.toNat ∧ limit.toNat≤1073741824

instance (position limit count : Word) : Decidable (Admitted position limit count) := by
  unfold Admitted
  infer_instance

theorem remaining_exact (position limit : Word) (ordered : position.toNat≤limit.toNat) :
    (remaining position limit).toNat=limit.toNat-position.toNat := by
  simp only [remaining,BitVec.toNat_sub]
  have upper:=limit.isLt
  omega

theorem allowed_exact (position limit count : Word) :
    allowed position limit count=boolWord (decide (Admitted position limit count)) := by
  simp only [allowed,less_word_exact,bool_not,bool_and,
    show (1073741824 : Word).toNat=1073741824 by decide]
  apply congrArg boolWord
  apply Bool.eq_iff_iff.mpr
  by_cases ordered : position.toNat≤limit.toNat
  · rw [remaining_exact position limit ordered]
    simp [Admitted,ordered]
  · simp [Admitted,ordered]
    omega

theorem next_exact (position limit count : Word) (accepted : Admitted position limit count) :
    (next position count).toNat=position.toNat+count.toNat := by
  rw [next,BitVec.toNat_add,Nat.mod_eq_of_lt (by unfold Admitted at accepted;omega)]

theorem next_bounded (position limit count : Word) (accepted : Admitted position limit count) :
    (next position count).toNat≤limit.toNat := by
  rw [next_exact position limit count accepted]
  unfold Admitted at accepted
  omega

theorem remaining_after_exact (position limit count : Word) (accepted : Admitted position limit count) :
    (remaining (next position count) limit).toNat=limit.toNat-position.toNat-count.toNat := by
  rw [remaining_exact _ _ (next_bounded position limit count accepted),next_exact position limit count accepted]
  omega

theorem positive_progress (position limit count : Word) (accepted : Admitted position limit count)
    (positive : 0<count.toNat) : position.toNat<(next position count).toNat := by
  rw [next_exact position limit count accepted]
  omega

theorem exact_endpoint (position limit : Word) (ordered : position.toNat≤limit.toNat) :
    remaining position limit=0 ↔ position=limit := by
  constructor
  · intro zero
    have same:=congrArg BitVec.toNat zero
    rw [remaining_exact position limit ordered] at same
    have zeroNat : (0 : Word).toNat=0 := by decide
    rw [zeroNat] at same
    apply BitVec.eq_of_toNat_eq
    omega
  · intro same
    subst position
    exact BitVec.sub_self _

end Core033.ByteCursor
