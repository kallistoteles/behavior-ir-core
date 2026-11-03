import Core033.FrameHashControllerState
import Core033.FrameHashControllerHash

/- Exactly two actual controller calls from phase one. This local component
contract does not establish a public K endpoint or initialized machine. -/
namespace Core033.FrameHashControllerTrace
open WordIR FrameHashController FrameHashControllerMeaning FrameHashControllerState
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordInline.inline WordSequence.compileAll WordStage.compile WordStage.emit WordIR.Program.eval

theorem preserved_program (inputs : Nat → Word) :
    PathFrameProgram.program.eval (frameInputs (next inputs))=PathFrameProgram.program.eval (frameInputs inputs) :=
  WordInline.input_congr PathFrameProgram.program PathFrameProgram.program_valid
    (frameInputs (next inputs)) (frameInputs inputs)
    (fun index bound=>preserved_frame inputs index bound)

theorem preserved_message (inputs : Nat → Word) :
    PathFrameHashPipeline.message (frameInputs (next inputs))=PathFrameHashPipeline.message (frameInputs inputs) := by
  change ((PathFrameProgram.program.eval (frameInputs (next inputs))).take 115).map _=
    ((PathFrameProgram.program.eval (frameInputs inputs)).take 115).map _
  rw [preserved_program inputs]

theorem preserved_first (inputs : Nat → Word) :
    PathFrameHashPipeline.first (frameInputs (next inputs))=PathFrameHashPipeline.first (frameInputs inputs) :=
  congrArg (fun message=>HashStream.next (HashStream.start message)) (preserved_message inputs)

theorem preserved_after (inputs : Nat → Word) :
    PathFrameHashPipeline.after (frameInputs (next inputs))=PathFrameHashPipeline.after (frameInputs inputs) :=
  congrArg (fun message=>HashStream.next (HashStream.next (HashStream.start message))) (preserved_message inputs)

theorem starts_second_phase (inputs : Nat → Word) (phase : inputs phasePort=1) : (next inputs) phasePort=2 := by
  change next inputs 0=2
  have different : inputs phasePort≠2 := by rw [phase];decide
  rw [next_phase,if_neg different]

theorem first_sha (inputs : Nat → Word) (phase : inputs phasePort=1)
    (index : Nat) (bound : index<8) :
    next inputs (shaPort index)=
      (SHA256.stateWords (PathFrameHashPipeline.first (frameInputs inputs)).current).getD index 0 := by
  rw [next_sha inputs index bound,FrameHashControllerHash.first_hash inputs phase,PaddingStream.getD_append_cases]
  have length : (SHA256.stateWords (PathFrameHashPipeline.first (frameInputs inputs)).current).length=8 := rfl
  rw [length,if_pos bound]

theorem actual_continuation (inputs : Nat → Word) (phase : inputs phasePort=1) :
    ∀ index,index<8 → (next inputs) (shaPort index)=
      (SHA256.stateWords (PathFrameHashPipeline.first (frameInputs (next inputs))).current).getD index 0 := by
  intro index bound
  rw [preserved_first inputs]
  exact first_sha inputs phase index bound

theorem final_sha_word (inputs : Nat → Word) (phase : inputs phasePort=1)
    (index : Nat) (bound : index<8) :
    next (next inputs) (shaPort index)=
      (SHA256.stateWords (PathFrameHashPipeline.after (frameInputs inputs)).current).getD index 0 := by
  rw [next_sha (next inputs) index bound,
    FrameHashControllerHash.second_hash (next inputs) (starts_second_phase inputs phase) (actual_continuation inputs phase),
    PaddingStream.getD_append_cases]
  have length : (SHA256.stateWords (PathFrameHashPipeline.after (frameInputs (next inputs))).current).length=8 := rfl
  rw [length,if_pos bound,preserved_after inputs]

theorem finished_phase (inputs : Nat → Word) (phase : inputs phasePort=1) : next (next inputs) phasePort=3 := by
  change next (next inputs) 0=3
  rw [next_phase,if_pos (starts_second_phase inputs phase)]

theorem preserved_all_frame_fields (inputs : Nat → Word) (index : Nat) (bound : index<34) :
    next (next inputs) (framePort index)=inputs (framePort index) :=
  (preserved_frame (next inputs) index bound).trans (preserved_frame inputs index bound)

theorem eight_lookup_words (words : List Word) (length : words.length=8) :
    (List.range 8).map (fun index=>words.getD index 0)=words := by
  apply List.ext_getElem
  · simp only [List.length_map,List.length_range,length]
  · intro index left right
    have bound : index<8 := by simpa only [List.length_map,List.length_range] using left
    simp only [List.getElem_map,List.getElem_range,List.getD_eq_getElem?_getD,
      List.getElem?_eq_getElem right,Option.getD_some]

def digestWords (inputs : Nat → Word) : List Word :=
  (List.range 8).map (fun index=>next (next inputs) (shaPort index))

theorem complete_words (inputs : Nat → Word) (phase : inputs phasePort=1) :
    digestWords inputs=SHA256.stateWords (PathFrameHashPipeline.after (frameInputs inputs)).current := by
  have words : digestWords inputs=(List.range 8).map
      (fun index=>(SHA256.stateWords (PathFrameHashPipeline.after (frameInputs inputs)).current).getD index 0) := by
    apply List.map_congr_left
    intro index member
    exact final_sha_word inputs phase index (List.mem_range.mp member)
  exact words.trans (eight_lookup_words _ rfl)

theorem complete_digest (inputs : Nat → Word) (phase : inputs phasePort=1) :
    (digestWords inputs).flatMap SHA256.wordBytes=SHA256.digestBytes (PathFrameHashPipeline.message (frameInputs inputs)) := by
  rw [complete_words inputs phase]
  exact PathFrameHashPipeline.exact_final_bytes (frameInputs inputs)

end Core033.FrameHashControllerTrace
