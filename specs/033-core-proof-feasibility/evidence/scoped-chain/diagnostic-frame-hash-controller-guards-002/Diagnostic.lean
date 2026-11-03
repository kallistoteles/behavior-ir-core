import Core033.FrameHashControllerState
import Core033.FrameHashControllerValidity
import Core033.WordGuardSuffix

namespace Core033.FrameHashControllerGuards
open WordIR FrameHashController FrameHashControllerMeaning FrameHashControllerState
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval

def wires := WordGuardSuffix.wires program 43 82
def compile (p : Nat) := WordGuardSuffix.compile p program 43 82

theorem hash_output_count : hashed.1.length=72 := by
  change (HashBlockProgram.program.outputs.map _).length=72
  simp only [List.length_map,HashBlockProgram.program,HashBlockProgram.outputs,
    List.length_append,List.length_range]

theorem final_output_count : finalized.1.length=2 :=
  WordSequenceOutputs.arity hashed.2 [phaseExpression,admissionExpression]

theorem output_count : program.outputs.length=125 := by
  simp only [program,outputs,List.length_append,List.length_take,List.length_drop,
    List.length_map,List.length_range,hash_output_count,final_output_count]
  decide

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount :=
  WordGuardSuffix.wire_bounds p program 43 82 (by rw [output_count])

theorem frame_flag (inputs : Nat → Word) (position : Nat) (bound : position<17) :
    (program.eval inputs).getD (43+position) 0=
      (PathFrameProgram.program.eval (frameInputs inputs)).getD (115+position) 0 := by
  rw [program_meaning]
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_cons,List.length_nil,
    List.length_map,List.length_range,List.length_take,List.length_drop,hash_length,
    show min 8 72=8 by decide,show 72-8=64 by decide,Nat.zero_add]
  rw [if_pos (by omega : 43+position<1+34+8+17+64),if_pos (by omega : 43+position<1+34+8+17),
    if_neg (by omega : ¬43+position<1+34+8)]
  rw [show 43+position-(1+34+8)=position by omega]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,Option.map_some,Option.getD_some]

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

theorem phase_flag (inputs : Nat → Word) :
    (program.eval inputs).getD 124 0=admissionExpression.eval (hashed.2.values inputs) := by
  rw [program_meaning]
  simp only [PaddingStream.getD_append_cases,List.length_append,List.length_cons,List.length_nil,
    List.length_map,List.length_range,List.length_take,List.length_drop,hash_length,
    show min 8 72=8 by decide,show 72-8=64 by decide,Nat.zero_add]
  rw [if_neg (by decide : ¬124<1+34+8+17+64)]
  rfl

theorem forced_one {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<82) : (program.eval inputs).getD (43+position) 0=1 :=
  WordGuardSuffix.forced_output_one large program FrameHashControllerValidity.program_valid 43 82
    (by rw [output_count]) valuation inputs accepted inputValues position bound

theorem accepted_phase {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    inputs phasePort=1 ∨ inputs phasePort=2 := by
  have one:=forced_one large valuation inputs accepted inputValues 81 (by decide)
  change (program.eval inputs).getD 124 0=1 at one
  rw [phase_flag,FrameHashControllerControl.phase_admission,
    original_kept_after_hash inputs phasePort (by decide)] at one
  exact one

theorem accepted_frame_flags {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ position,position<17 → (PathFrameProgram.program.eval (frameInputs inputs)).getD (115+position) 0=1 := by
  intro position bound
  rw [←frame_flag inputs position bound]
  exact forced_one large valuation inputs accepted inputValues position (by omega)

end Core033.FrameHashControllerGuards
