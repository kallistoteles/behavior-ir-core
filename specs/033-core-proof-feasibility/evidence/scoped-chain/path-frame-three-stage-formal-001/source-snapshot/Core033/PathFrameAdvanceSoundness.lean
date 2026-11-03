import Core033.PathFrameAdvanceMeaning
import Core033.PathFrameAdvanceGuards

namespace Core033.PathFrameAdvanceSoundness
open WordIR PathFrameAdvance PathFrameAdvanceMeaning
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem state_word (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    (program.eval inputs).getD index 0=stateWord inputs index := by
  rw [program_meaning,PaddingStream.getD_append_cases]
  simp only [List.length_map,List.length_range,if_pos bound,List.getD_eq_getElem?_getD,
    List.getElem?_map,List.getElem?_range bound,Option.map_some,Option.getD_some]

theorem guard_word (inputs : Nat → Word) (index : Nat) :
    (program.eval inputs).getD (43+index) 0=(guardWords inputs).getD index 0 := by
  rw [program_meaning,PaddingStream.getD_append_cases]
  simp only [List.length_map,List.length_range,if_neg (by omega : ¬43+index<43),Nat.add_sub_cancel_left]

theorem forced_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (PathFrameAdvanceGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (index : Nat) (bound : index<7) : (guardWords inputs).getD index 0=1 := by
  rw [←guard_word inputs index]
  exact WordGuardSuffix.forced_output_one large program PathFrameAdvanceGuards.program_valid 43 7
    (by rw [PathFrameAdvanceGuards.output_count]) valuation inputs accepted inputValues index bound

theorem accepted_phase {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (PathFrameAdvanceGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    inputs 0=3 := by
  have one:=forced_one large valuation inputs accepted inputValues 6 (by decide)
  change WordEquality.equalWord (inputs 0) 3=1 at one
  rw [WordEquality.equal_word_exact,BranchAdmission.bool_word_one] at one
  exact of_decide_eq_true one

theorem accepted_counter {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (PathFrameAdvanceGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (inputs 2).toNat<256 := by
  have one:=forced_one large valuation inputs accepted inputValues 5 (by decide)
  change (PathCounterProgram.program.eval (geometryInputs inputs)).getD 2 0=1 at one
  rw [PathCounterProgram.program_meaning] at one
  change ScalarRanges.flag 8 (inputs 2)=1 at one
  rw [ScalarRanges.flag_exact,BranchAdmission.bool_word_one] at one
  exact of_decide_eq_true one

theorem accepted_count_bound {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (PathFrameAdvanceGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    WideControl.Pair.raw ⟨inputs 27,inputs 28⟩+WideControl.Pair.raw ⟨inputs 29,inputs 30⟩≤1048576 := by
  have one:=forced_one large valuation inputs accepted inputValues 0 (by decide)
  change (ParentMetadataProgram.program.eval (metadataInputs inputs)).getD 2 0=1 at one
  rw [ParentMetadataProgram.count_admission,BranchAdmission.bool_word_one] at one
  exact of_decide_eq_true one

theorem boolean_flag (inputs : Nat → Word) (index : Nat) (bound : index<4) :
    (guardWords inputs).getD (1+index) 0=ScalarRanges.flag 1 (inputs (31+index)) := by
  have cases : index=0 ∨ index=1 ∨ index=2 ∨ index=3 := by omega
  rcases cases with rfl|rfl|rfl|rfl
  all_goals change (ParentMetadataProgram.program.eval (metadataInputs inputs)).getD _ 0=_
  all_goals rw [ParentMetadataProgram.program_meaning]
  all_goals rfl

theorem accepted_child_booleans {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (PathFrameAdvanceGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ index,index<4 → ∃ value,BooleanValues.decode (inputs (31+index))=some value := by
  intro index bound
  apply (BooleanValues.guard_admits_exactly_booleans _).mp
  rw [←boolean_flag inputs index bound]
  exact forced_one large valuation inputs accepted inputValues (1+index) (by omega)

theorem original_root_word (inputs : Nat → Word) (index : Nat) (bound : index<8) :
    (program.eval inputs).getD (11+index) 0=ByteOrder.byteSwap (inputs (35+index)) := by
  rw [state_word inputs (11+index) (by omega)]
  simp only [stateWord,if_neg (by omega : 11+index≠0),if_neg (by omega : 11+index≠2),
    if_pos (by omega : 11≤11+index ∧ 11+index<19),Nat.add_sub_cancel_left]
  rw [DigestWords.program_meaning]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some,digestInputs,digestPorts]

theorem counter_word (inputs : Nat → Word) : (program.eval inputs).getD 2 0=inputs 2+1 := by
  rw [state_word inputs 2 (by decide)]
  change (PathCounterProgram.program.eval (geometryInputs inputs)).getD 0 0=_
  rw [PathCounterProgram.program_meaning]
  rfl

theorem accepted_unwrapped_counter {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (PathFrameAdvanceGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ((program.eval inputs).getD 2 0).toNat=(inputs 2).toNat+1 := by
  rw [counter_word]
  exact (PathCounterProgram.branch_coordinates (inputs 2) (accepted_counter large valuation inputs accepted inputValues)).1

end Core033.PathFrameAdvanceSoundness
