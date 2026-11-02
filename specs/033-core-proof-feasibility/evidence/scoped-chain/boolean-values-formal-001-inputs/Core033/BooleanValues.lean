import Core033.ScalarRanges

namespace Core033.BooleanValues
open WordControl

def decode (word : Word) : Option Bool :=
  if word=0 then some false else if word=1 then some true else none

theorem decoded_reconstructs (word : Word) (value : Bool) (accepted : decode word=some value) :
    boolWord value=word := by
  unfold decode at accepted
  split at accepted
  · rename_i zero
    have same:=Option.some.inj accepted
    subst value
    rw [zero]
    rfl
  · split at accepted
    · rename_i one
      have same:=Option.some.inj accepted
      subst value
      rw [one]
      rfl
    · cases accepted

theorem guard_admits_exactly_booleans (word : Word) :
    ScalarRanges.flag 1 word=1 ↔ ∃ value,decode word=some value := by
  rw [ScalarRanges.flag_exact]
  constructor
  · intro admitted
    have small : word.toNat<2 := by
      by_cases small : word.toNat<2
      · exact small
      · have bad : decide (word.toNat<2^1)=false := by simp [small]
        rw [bad] at admitted
        have zeroNat:=congrArg BitVec.toNat admitted
        change 0=1 at zeroNat
        omega
    rcases (ScalarRanges.boolean_values_exact word).mp small with zero|one
    · exact ⟨false,by simp [decode,zero]⟩
    · exact ⟨true,by simp [decode,one]⟩
  · rintro ⟨value,accepted⟩
    have represented:=decoded_reconstructs word value accepted
    rw [←represented]
    cases value <;> decide

theorem decoded_and (left right : Word) (a b : Bool)
    (leftDecoded : decode left=some a) (rightDecoded : decode right=some b) :
    left &&& right=boolWord (a && b) := by
  rw [←decoded_reconstructs left a leftDecoded,←decoded_reconstructs right b rightDecoded,bool_and]

theorem boolean_complete (value : Bool) : decode (boolWord value)=some value := by
  cases value <;> decide

theorem noncanonical_rejected (word : Word) (invalid : word≠0 ∧ word≠1) : decode word=none := by
  unfold decode
  rw [if_neg invalid.1,if_neg invalid.2]

end Core033.BooleanValues
