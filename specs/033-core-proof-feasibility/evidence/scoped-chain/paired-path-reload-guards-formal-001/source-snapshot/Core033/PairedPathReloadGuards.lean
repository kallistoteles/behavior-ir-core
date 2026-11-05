import Core033.PairedPathReload
import Core033.WordSourceValidity
import Core033.WordGuardSuffix
import Core033.KernelDecide

/- Guarded program model only. Actual source/matrix bytes, Nova's 96-state /
12-private-input embedding and complete global control still require binding. -/
namespace Core033.PairedPathReloadGuards
open WordIR PairedPathReload
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem program_valid : program.Valid :=
  WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp (by core033_kernel_decide))

theorem output_count : program.outputs.length=99 := by core033_kernel_decide

def compile (p : Nat) := WordGuardSuffix.compile p program 96 3

def expectedGuards (inputs : Nat → Word) : List Word :=
  [WordEquality.equalWord (inputs 0) 7,WordControl.lessWord 0 (inputs 2),WordControl.lessWord (inputs 2) 256]

theorem state_output (inputs : Nat → Word) (index : Nat) (bound : index<96) :
    (program.eval inputs).getD index 0=reloaded inputs index := by
  rw [program_meaning]
  simp only [List.getD_eq_getElem?_getD]
  rw [List.getElem?_append_left (by simp only [List.length_map,List.length_range];exact bound)]
  simp only [List.getElem?_map,List.getElem?_range bound,Option.map_some,Option.getD_some]

theorem guard_output (inputs : Nat → Word) (index : Nat) (bound : index<3) :
    (program.eval inputs).getD (96+index) 0=(expectedGuards inputs).getD index 0 := by
  rw [program_meaning]
  simp only [List.getD_eq_getElem?_getD]
  rw [List.getElem?_append_right (by simp only [List.length_map,List.length_range];omega)]
  simp only [List.length_map,List.length_range,Nat.add_sub_cancel_left]
  rfl

theorem forced_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<108 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (index : Nat) (bound : index<3) : (expectedGuards inputs).getD index 0=1 :=
  (guard_output inputs index bound).symm.trans
    (WordGuardSuffix.forced_output_one large program program_valid 96 3 (by rw [output_count])
      valuation inputs accepted inputValues index bound)

theorem accepted_admission {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<108 → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    inputs 0=7 ∧ 0<(inputs 2).toNat ∧ (inputs 2).toNat<256 := by
  apply (admission_exact inputs).mp
  have first:=forced_one large valuation inputs accepted inputValues 0 (by decide)
  have second:=forced_one large valuation inputs accepted inputValues 1 (by decide)
  have third:=forced_one large valuation inputs accepted inputValues 2 (by decide)
  exact ⟨first,second,third⟩

theorem admitted_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (inputs : Nat → Word)
    (admitted : inputs 0=7 ∧ 0<(inputs 2).toNat ∧ (inputs 2).toNat<256) :
    ∃ valuation : Nat → F,(compile p).satisfies valuation ∧
      ∀ index,index<108 → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  apply WordGuardSuffix.admitted_complete large program program_valid 96 3 (by rw [output_count]) inputs
  intro index bound
  rw [guard_output inputs index bound]
  have flags:=(admission_exact inputs).mpr admitted
  have alternatives : index=0 ∨ index=1 ∨ index=2 := by omega
  rcases alternatives with rfl|rfl|rfl
  · exact flags.1
  · exact flags.2.1
  · exact flags.2.2

end Core033.PairedPathReloadGuards
