import Core033.BlockIngress
import Core033.PaddingStream
import Core033.GuardMatrix
import Core033.WordMatrixOutputs

namespace Core033.BlockIngressGuards
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000
open R1CS
abbrev program := BlockIngress.program

def wires : List Nat := (List.range 64).map (fun index=>WordMatrix.outputBase program+(index+16))
def compile (p : Nat) : Matrix := GuardMatrix.force (WordMatrix.compile p program) wires

theorem output_count : program.outputs.length=80 := by decide

theorem guard_output (inputs : Nat → WordIR.Word) (index : Nat) (bound : index<64) :
    (program.eval inputs).getD (index+16) 0=BlockIngress.byteGuard (inputs index) := by
  rw [BlockIngress.program_meaning,PaddingStream.getD_append_cases]
  simp only [List.length_map,List.length_range,if_neg (show ¬index+16<16 by omega)]
  rw [show index+16-16=index by omega]
  simp only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some]

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount := by
  intro wire member
  unfold wires at member
  obtain ⟨index,indexMember,equalWire⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp indexMember
  subst wire
  have positive : 0<WordMatrix.outputBase program := by unfold WordMatrix.outputBase;omega
  constructor
  · omega
  · change WordMatrix.outputBase program+(index+16)<WordMatrix.outputBase program+program.outputs.length
    rw [output_count]
    omega

theorem accepted_bytes {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ index,index<64 → (inputs index).toNat<256 := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted
  intro index bound
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    forced.1 inputValues (index+16) (by rw [output_count];omega)
  have member : WordMatrix.outputBase program+(index+16)∈wires :=
    List.mem_map.mpr ⟨index,List.mem_range.mpr bound,rfl⟩
  have wordOne:=evaluated.symm.trans (forced.2 _ member)
  rw [guard_output inputs index bound,BlockIngress.byte_guard_exact] at wordOne
  exact of_decide_eq_true (GuardMatrix.bool_word_forced_true _ wordOne)

theorem accepted_packed_words {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F))
    (index : Nat) (bound : index<16) :
    BlockIngress.pack (inputs (4*index)) (inputs (4*index+1)) (inputs (4*index+2)) (inputs (4*index+3))=
      BitVec.ofNat 32 ((inputs (4*index)).toNat*16777216+(inputs (4*index+1)).toNat*65536+
        (inputs (4*index+2)).toNat*256+(inputs (4*index+3)).toNat) := by
  have bounded:=accepted_bytes large valid valuation inputs accepted inputValues
  exact BlockIngress.pack_exact _ _ _ _ (bounded _ (by omega)) (bounded _ (by omega)) (bounded _ (by omega))

theorem bytes_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (inputs : Nat → WordIR.Word)
    (bounded : ∀ index,index<64 → (inputs index).toNat<256) :
    ∃ valuation : Nat → F,(compile p).satisfies valuation ∧
      ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F) := by
  obtain ⟨valuation,satisfied,inputValues,_⟩:=WordMatrix.matrix_complete (F:=F) large program valid inputs
  refine ⟨valuation,?_,inputValues⟩
  apply (GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mpr
  refine ⟨satisfied,?_⟩
  intro wire member
  unfold wires at member
  obtain ⟨index,indexMember,equalWire⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp indexMember
  subst wire
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    satisfied inputValues (index+16) (by rw [output_count];omega)
  rw [guard_output inputs index bound,BlockIngress.byte_guard_exact,
    show decide ((inputs index).toNat<256)=true from decide_eq_true (bounded index bound)] at evaluated
  have oneNat : (WordControl.boolWord true).toNat=1 := by decide
  simpa only [oneNat,Nat.cast_one] using evaluated

end Core033.BlockIngressGuards
