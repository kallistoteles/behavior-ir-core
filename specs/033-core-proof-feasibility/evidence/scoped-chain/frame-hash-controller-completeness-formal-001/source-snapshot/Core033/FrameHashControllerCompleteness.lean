import Core033.FrameHashControllerGuards
import Core033.FrameHashControllerTrace

namespace Core033.FrameHashControllerCompleteness
open WordIR FrameHashController FrameHashControllerMeaning FrameHashControllerState
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

theorem hash_flag (inputs : Nat → Word) (position : Nat) (bound : position<64) :
    (program.eval inputs).getD (60+position) 0=
      (HashBlockProgram.program.eval (hashInputs inputs)).getD (8+position) 0 := by
  rw [program_meaning]
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_cons,List.length_nil,
    List.length_map,List.length_range,List.length_take,List.length_drop,hash_length,
    show min 8 72=8 by decide,show 72-8=64 by decide,Nat.zero_add]
  rw [if_pos (by omega : 60+position<1+34+8+17+64),if_neg (by omega : ¬60+position<1+34+8+17)]
  rw [show 60+position-(1+34+8+17)=position by omega]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_drop]

theorem phase_flag_one (inputs : Nat → Word) (phase : inputs phasePort=1 ∨ inputs phasePort=2) :
    (program.eval inputs).getD 124 0=1 := by
  rw [FrameHashControllerGuards.phase_flag,FrameHashControllerControl.phase_admission,
    original_kept_after_hash inputs phasePort (by decide)]
  exact phase

theorem first_hash_flags (inputs : Nat → Word) (phase : inputs phasePort=1)
    (index : Nat) (bound : index<64) :
    (program.eval inputs).getD (60+index) 0=1 := by
  rw [hash_flag inputs index bound,FrameHashControllerHash.first_hash inputs phase,
    PaddingStream.getD_append_cases]
  have length : (SHA256.stateWords (PathFrameHashPipeline.first (frameInputs inputs)).current).length=8 := rfl
  rw [length,if_neg (by omega : ¬8+index<8),Nat.add_sub_cancel_left]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_replicate,if_pos bound,Option.getD_some]

theorem second_hash_flags (inputs : Nat → Word) (phase : inputs phasePort=2)
    (continuation : ∀ index,index<8 → inputs (shaPort index)=
      (SHA256.stateWords (PathFrameHashPipeline.first (frameInputs inputs)).current).getD index 0)
    (index : Nat) (bound : index<64) :
    (program.eval inputs).getD (60+index) 0=1 := by
  rw [hash_flag inputs index bound,FrameHashControllerHash.second_hash inputs phase continuation,
    PaddingStream.getD_append_cases]
  have length : (SHA256.stateWords (PathFrameHashPipeline.after (frameInputs inputs)).current).length=8 := rfl
  rw [length,if_neg (by omega : ¬8+index<8),Nat.add_sub_cancel_left]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_replicate,if_pos bound,Option.getD_some]

theorem all_first_flags (inputs : Nat → Word) (phase : inputs phasePort=1)
    (frame : ∀ position,position<17 → (PathFrameProgram.program.eval (frameInputs inputs)).getD (115+position) 0=1) :
    ∀ position,position<82 → (program.eval inputs).getD (43+position) 0=1 := by
  intro position bound
  by_cases inFrame : position<17
  · rw [FrameHashControllerGuards.frame_flag inputs position inFrame]
    exact frame position inFrame
  · by_cases inHash : position<81
    · rw [show 43+position=60+(position-17) by omega]
      exact first_hash_flags inputs phase (position-17) (by omega)
    · have last : position=81 := by omega
      subst position
      exact phase_flag_one inputs (Or.inl phase)

theorem first_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (inputs : Nat → Word) (phase : inputs phasePort=1)
    (frame : ∀ position,position<17 → (PathFrameProgram.program.eval (frameInputs inputs)).getD (115+position) 0=1) :
    ∃ valuation : Nat → F,(FrameHashControllerGuards.compile p).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) :=
  WordGuardSuffix.admitted_complete large program FrameHashControllerValidity.program_valid 43 82
    (by rw [FrameHashControllerGuards.output_count]) inputs (all_first_flags inputs phase frame)

theorem all_second_flags (inputs : Nat → Word) (phase : inputs phasePort=2)
    (continuation : ∀ index,index<8 → inputs (shaPort index)=
      (SHA256.stateWords (PathFrameHashPipeline.first (frameInputs inputs)).current).getD index 0)
    (frame : ∀ position,position<17 → (PathFrameProgram.program.eval (frameInputs inputs)).getD (115+position) 0=1) :
    ∀ position,position<82 → (program.eval inputs).getD (43+position) 0=1 := by
  intro position bound
  by_cases inFrame : position<17
  · rw [FrameHashControllerGuards.frame_flag inputs position inFrame]
    exact frame position inFrame
  · by_cases inHash : position<81
    · rw [show 43+position=60+(position-17) by omega]
      exact second_hash_flags inputs phase continuation (position-17) (by omega)
    · have last : position=81 := by omega
      subst position
      exact phase_flag_one inputs (Or.inr phase)

theorem second_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (inputs : Nat → Word) (phase : inputs phasePort=2)
    (continuation : ∀ index,index<8 → inputs (shaPort index)=
      (SHA256.stateWords (PathFrameHashPipeline.first (frameInputs inputs)).current).getD index 0)
    (frame : ∀ position,position<17 → (PathFrameProgram.program.eval (frameInputs inputs)).getD (115+position) 0=1) :
    ∃ valuation : Nat → F,(FrameHashControllerGuards.compile p).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) :=
  WordGuardSuffix.admitted_complete large program FrameHashControllerValidity.program_valid 43 82
    (by rw [FrameHashControllerGuards.output_count]) inputs (all_second_flags inputs phase continuation frame)

theorem next_frame_flags (inputs : Nat → Word)
    (frame : ∀ position,position<17 → (PathFrameProgram.program.eval (frameInputs inputs)).getD (115+position) 0=1) :
    ∀ position,position<17 → (PathFrameProgram.program.eval (frameInputs (next inputs))).getD (115+position) 0=1 := by
  rw [FrameHashControllerTrace.preserved_program]
  exact frame

theorem both_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (inputs : Nat → Word) (phase : inputs phasePort=1)
    (frame : ∀ position,position<17 → (PathFrameProgram.program.eval (frameInputs inputs)).getD (115+position) 0=1) :
    ∃ first second : Nat → F,
      (FrameHashControllerGuards.compile p).satisfies first ∧
      (FrameHashControllerGuards.compile p).satisfies second ∧
      (∀ index,index<program.inputCount → first (WordField.packed index)=((inputs index).toNat : F)) ∧
      (∀ index,index<program.inputCount → second (WordField.packed index)=(((next inputs) index).toNat : F)) ∧
      ∀ index,index<43 → first (WordMatrix.outputBase program+index)=second (WordField.packed index) := by
  obtain ⟨first,firstAccepted,firstInputs⟩:=first_complete (F:=F) large inputs phase frame
  obtain ⟨second,secondAccepted,secondInputs⟩:=second_complete (F:=F) large (next inputs)
    (FrameHashControllerTrace.starts_second_phase inputs phase)
    (FrameHashControllerTrace.actual_continuation inputs phase) (next_frame_flags inputs frame)
  refine ⟨first,second,firstAccepted,secondAccepted,firstInputs,secondInputs,?_⟩
  intro index bound
  have base:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program)
    FrameHashControllerGuards.wires rfl first).mp firstAccepted
  have output:=WordMatrixOutputs.evaluated_output large program FrameHashControllerValidity.program_valid
    first inputs base.1 firstInputs index (by rw [FrameHashControllerGuards.output_count];omega)
  exact output.trans (secondInputs index bound).symm

end Core033.FrameHashControllerCompleteness
