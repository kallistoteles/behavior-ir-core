import Core033.FrameHashControllerTrace
import Core033.PathFrameAdvanceSoundness

namespace Core033.PathFrameThreeStage
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def afterHash (inputs : Nat → Word) :=
  FrameHashControllerState.next (FrameHashControllerState.next inputs)
def rootWords (inputs : Nat → Word) : List Word :=
  (List.range 8).map (fun index=>(PathFrameAdvance.program.eval (afterHash inputs)).getD (11+index) 0)

theorem root_words (inputs : Nat → Word) : rootWords inputs=
    DigestWords.program.eval (fun index=>afterHash inputs (35+index)) := by
  rw [DigestWords.program_meaning]
  apply List.map_congr_left
  intro index member
  exact PathFrameAdvanceSoundness.original_root_word (afterHash inputs) index (List.mem_range.mp member)

theorem original_root_bytes (inputs : Nat → Word) (start : inputs FrameHashController.phasePort=1) :
    (rootWords inputs).flatMap (fun word=>Codec.encodeLE 4 word.toNat)=
      SHA256.digestBytes (PathFrameHashPipeline.message (FrameHashControllerMeaning.frameInputs inputs)) := by
  rw [root_words]
  have exactInputs:=WordInline.input_congr DigestWords.program PathFrameAdvanceMeaning.digest_valid
    (fun index=>afterHash inputs (35+index))
    (fun index=>(SHA256.stateWords (PathFrameHashPipeline.after (FrameHashControllerMeaning.frameInputs inputs)).current).getD index 0)
    (by intro index bound;exact FrameHashControllerTrace.final_sha_word inputs start index bound)
  rw [exactInputs,DigestWords.exact_sha_digest_bytes]
  exact PathFrameHashPipeline.exact_final_bytes _

end Core033.PathFrameThreeStage
