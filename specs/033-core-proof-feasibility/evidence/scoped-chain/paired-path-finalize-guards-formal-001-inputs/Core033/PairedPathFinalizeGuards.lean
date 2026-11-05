import Core033.PairedPathFinalize
import Core033.WordSourceValidity
import Core033.WordGuardSuffix
import Core033.KernelDecide

/- Guarded local finalizer model. Actual bytes/embedding/global old-root
selection and complete path execution remain independent required evidence. -/
namespace Core033.PairedPathFinalizeGuards
open WordIR PairedPathFinalize
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem program_valid : program.Valid :=
  WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp (by core033_kernel_decide))

theorem output_count : program.outputs.length=112 := by core033_kernel_decide

def compile (p : Nat) := WordGuardSuffix.compile p program 96 16

theorem state_output (inputs : Nat → Word) (index : Nat) (bound : index<96) :
    (program.eval inputs).getD index 0=finalState inputs index := by
  rw [program_meaning]
  simp only [List.getD_eq_getElem?_getD]
  rw [List.getElem?_append_left (by simp only [List.length_map,List.length_range];exact bound)]
  simp only [List.getElem?_map,List.getElem?_range bound,Option.map_some,Option.getD_some]

theorem guard_output (inputs : Nat → Word) (index : Nat) (bound : index<16) :
    (program.eval inputs).getD (96+index) 0=guardValue inputs index := by
  rw [program_meaning]
  simp only [List.getD_eq_getElem?_getD]
  rw [List.getElem?_append_right (by simp only [List.length_map,List.length_range];omega)]
  simp only [List.length_map,List.length_range,Nat.add_sub_cancel_left,
    List.getElem?_map,List.getElem?_range bound,Option.map_some,Option.getD_some]

theorem forced_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<96 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (index : Nat) (bound : index<16) : guardValue inputs index=1 :=
  (guard_output inputs index bound).symm.trans
    (WordGuardSuffix.forced_output_one large program program_valid 96 16 (by rw [output_count])
      valuation inputs accepted inputValues index bound)

theorem accepted_admission {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<96 → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    Admitted inputs := by
  intro index bound
  exact (guard_exact inputs index).mp (forced_one large valuation inputs accepted inputValues index bound)

theorem admitted_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (inputs : Nat → Word) (admitted : Admitted inputs) :
    ∃ valuation : Nat → F,(compile p).satisfies valuation ∧
      ∀ index,index<96 → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  apply WordGuardSuffix.admitted_complete large program program_valid 96 16 (by rw [output_count]) inputs
  intro index bound
  rw [guard_output inputs index bound]
  exact (guard_exact inputs index).mpr (admitted index bound)

end Core033.PairedPathFinalizeGuards
