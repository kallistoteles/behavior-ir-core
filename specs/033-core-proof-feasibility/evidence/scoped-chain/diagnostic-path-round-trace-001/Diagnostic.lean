import Core033.PathRoundDispatchPorts
import Core033.PathRoundDispatchGuards
import Core033.PathFrameThreeStage

namespace Core033.PathRoundDispatchTrace
open WordIR PathRoundDispatch
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def next (inputs : Nat → Word) (index : Nat) := (program.eval inputs).getD index 0

theorem hash_state (inputs : Nat → Word) (phase : inputs 0=1 ∨ inputs 0=2)
    (index : Nat) (bound : index<43) : next inputs index=FrameHashControllerState.next inputs index :=
  (PathRoundDispatchPorts.state_word inputs index bound).trans
    (PathRoundDispatchMeaning.active_hash_state inputs phase index)

theorem first_phase (inputs : Nat → Word) (phase : inputs 0=1) : next inputs 0=2 := by
  rw [hash_state inputs (Or.inl phase) 0 (by decide),FrameHashControllerState.next_phase]
  change (if inputs 0=2 then 3 else 2)=2
  rw [phase]
  decide

theorem twice_state (inputs : Nat → Word) (phase : inputs 0=1)
    (index : Nat) (bound : index<43) : next (next inputs) index=
      FrameHashControllerState.next (FrameHashControllerState.next inputs) index := by
  rw [hash_state (next inputs) (Or.inr (first_phase inputs phase)) index bound]
  have same:=WordInline.input_congr FrameHashController.program FrameHashControllerValidity.program_valid
    (next inputs) (FrameHashControllerState.next inputs)
    (by intro position bounded;exact hash_state inputs (Or.inl phase) position bounded)
  exact congrArg (fun words : List Word=>words.getD index 0) same

theorem second_phase (inputs : Nat → Word) (phase : inputs 0=1) : next (next inputs) 0=3 := by
  rw [hash_state (next inputs) (Or.inr (first_phase inputs phase)) 0 (by decide),FrameHashControllerState.next_phase]
  change (if next inputs 0=2 then 3 else 2)=3
  rw [first_phase inputs phase]
  decide

theorem third_state (inputs : Nat → Word) (phase : inputs 0=1)
    (index : Nat) (bound : index<43) : next (next (next inputs)) index=
      (PathFrameAdvance.program.eval (PathFrameThreeStage.afterHash inputs)).getD index 0 := by
  rw [next,PathRoundDispatchPorts.state_word _ index bound,
    PathRoundDispatchMeaning.active_advance_state _ (second_phase inputs phase)]
  have same:=WordInline.input_congr PathFrameAdvance.program PathFrameAdvanceGuards.program_valid
    (next (next inputs)) (PathFrameThreeStage.afterHash inputs)
    (by intro position bounded;exact twice_state inputs phase position bounded)
  exact congrArg (fun words : List Word=>words.getD index 0) same

theorem complete_original_root_bytes (inputs : Nat → Word) (phase : inputs 0=1) :
    ((List.range 8).map (fun index=>next (next (next inputs)) (11+index))).flatMap
      (fun word=>Codec.encodeLE 4 word.toNat)=
        SHA256.digestBytes (PathFrameHashPipeline.message (FrameHashControllerMeaning.frameInputs inputs)) := by
  have roots : (List.range 8).map (fun index=>next (next (next inputs)) (11+index))=
      PathFrameThreeStage.rootWords inputs := by
    apply List.map_congr_left
    intro index member
    exact third_state inputs phase (11+index) (by have :=List.mem_range.mp member;omega)
  rw [roots]
  exact PathFrameThreeStage.original_root_bytes inputs phase

theorem return_phase (inputs : Nat → Word) (phase : inputs 0=1) : next (next (next inputs)) 0=4 := by
  rw [third_state inputs phase 0 (by decide),PathFrameAdvanceSoundness.state_word _ 0 (by decide)]
  rfl

theorem accepted_phase {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (PathRoundDispatchGuards.compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    inputs 0=1 ∨ inputs 0=2 ∨ inputs 0=3 := by
  have one:=PathRoundDispatchGuards.forced_one large valuation inputs accepted inputValues 89 (by decide)
  change (program.eval inputs).getD 132 0=1 at one
  rw [PathRoundDispatchPorts.phase_flag,BranchAdmission.bool_word_one] at one
  exact of_decide_eq_true one

theorem returned_state_rejects_step {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word) (returned : inputs 0=4)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ¬(PathRoundDispatchGuards.compile p).satisfies valuation := by
  intro accepted
  have phases:=accepted_phase large valuation inputs accepted inputValues
  rw [returned] at phases
  exact (by decide : ¬((4 : Word)=1 ∨ 4=2 ∨ 4=3)) phases

end Core033.PathRoundDispatchTrace
