import Core033.HashBlockProgram

namespace Core033.HashBlockMeaning
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def typedInputs (state : SHA256.HashState) (bytes : SHA256.Bytes) (index : Nat) : Word :=
  if index<8 then (SHA256.stateWords state).getD index 0 else BlockIngress.byteInputs bytes (index-8)

theorem ingress_typed (state : SHA256.HashState) (bytes : SHA256.Bytes) :
    HashBlockProgram.ingressInputs (typedInputs state bytes)=BlockIngress.byteInputs bytes := by
  funext index
  simp only [HashBlockProgram.ingressInputs,typedInputs,if_neg (by omega : ¬8+index<8),Nat.add_sub_cancel_left]

theorem compression_typed (state : SHA256.HashState) (bytes : SHA256.Bytes) :
    HashBlockProgram.compressionInputs (typedInputs state bytes)=HashPipeline.compressionInputs state bytes := by
  funext index
  unfold HashBlockProgram.compressionInputs HashPipeline.compressionInputs
  rw [ingress_typed]
  by_cases bound : index<8
  · simp only [if_pos bound,typedInputs]
  · simp only [if_neg bound,HashPipeline.ingressWords]

theorem complete_typed_block (state : SHA256.HashState) (bytes : SHA256.Bytes) :
    HashBlockProgram.program.eval (typedInputs state bytes)=
      SHA256.stateWords (SHA256.compress state (SHA256.parseBlock bytes))++List.replicate 64 1 := by
  rw [HashBlockProgram.program_meaning,compression_typed,HashPipeline.compression_exact]
  congr 1
  have guards : (List.range 64).map (fun index=>BlockIngress.byteGuard (typedInputs state bytes (8+index)))=
      (List.range 64).map (fun _=>1) := by
    apply List.map_congr_left
    intro index member
    simp only [typedInputs,if_neg (by omega : ¬8+index<8),Nat.add_sub_cancel_left,
      BlockIngress.byte_input_guard]
  rw [guards]
  simp only [List.map_const',List.length_range]

theorem admission_output (inputs : Nat → Word) (index : Nat) (bound : index<64) :
    (HashBlockProgram.program.eval inputs).getD (8+index) 0=BlockIngress.byteGuard (inputs (8+index)) := by
  rw [HashBlockProgram.program_meaning,PaddingStream.getD_append_cases]
  have length : (SHAMaterialized.program.eval (HashBlockProgram.compressionInputs inputs)).length=8 := by
    simp only [WordIR.Program.eval,List.length_map,HashBlockProgram.sha_arity]
  rw [length,if_neg (by omega),Nat.add_sub_cancel_left]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,Option.map_some,Option.getD_some]

theorem admitted_bytes (inputs : Nat → Word)
    (accepted : ∀ index,index<64 → (HashBlockProgram.program.eval inputs).getD (8+index) 0=1) :
    ∀ index,index<64 → (inputs (8+index)).toNat<256 := by
  intro index bound
  apply BlockIngress.accepted_byte_is_bounded
  rw [←admission_output inputs index bound]
  exact accepted index bound

end Core033.HashBlockMeaning
