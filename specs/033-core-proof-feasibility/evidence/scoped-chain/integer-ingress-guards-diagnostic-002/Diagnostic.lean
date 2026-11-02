import Core033.IntegerIngress
import Core033.GuardMatrix
import Core033.WordMatrixOutputs

namespace Core033.IntegerIngressGuards
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000
open R1CS
abbrev program := IntegerIngress.program

def wires : List Nat := (List.range 8).map (fun index=>WordMatrix.outputBase program+(index+2))
def compile (p : Nat) : Matrix := GuardMatrix.force (WordMatrix.compile p program) wires

theorem output_count : program.outputs.length=10 := by decide

theorem guard_output (inputs : Nat → WordIR.Word) (index : Nat) (bound : index<8) :
    (program.eval inputs).getD (index+2) 0=BlockIngress.byteGuard (inputs index) := by
  rw [IntegerIngress.program_meaning]
  change (_::_::_).getD (index+1+1) 0=_
  rw [List.getD_cons_succ,List.getD_cons_succ]
  simp only [List.nil_append,List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,
    Option.map_some,Option.getD_some]

theorem guard_wire_bounds (p : Nat) : ∀ wire∈wires,
    0<wire ∧ wire<(WordMatrix.compile p program).variableCount := by
  intro wire member
  unfold wires at member
  obtain ⟨index,member,rfl⟩:=List.mem_map.mp member
  have bound:=List.mem_range.mp member
  have positive : 0<WordMatrix.outputBase program := by unfold WordMatrix.outputBase;omega
  constructor
  · omega
  · change WordMatrix.outputBase program+(index+2)<WordMatrix.outputBase program+program.outputs.length
    rw [output_count]
    omega

theorem accepted_bytes {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    ∀ index,index<8 → (inputs index).toNat<256 := by
  have forced:=(GuardMatrix.satisfaction_exact (WordMatrix.compile p program) wires rfl valuation).mp accepted
  intro index bound
  have evaluated:=WordMatrixOutputs.evaluated_output large program valid valuation inputs
    forced.1 inputValues (index+2) (by rw [output_count];omega)
  have member : WordMatrix.outputBase program+(index+2)∈wires :=
    List.mem_map.mpr ⟨index,List.mem_range.mpr bound,rfl⟩
  have wordOne:=evaluated.symm.trans (forced.2 _ member)
  rw [guard_output inputs index bound,BlockIngress.byte_guard_exact] at wordOne
  exact of_decide_eq_true (GuardMatrix.bool_word_forced_true _ wordOne)

theorem accepted_integer {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valid : program.Valid) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : (compile p).satisfies valuation)
    (inputValues : ∀ index,index<program.inputCount → valuation (WordField.packed index)=((inputs index).toNat : F)) :
    (IntegerIngress.packLE (inputs 0) (inputs 1) (inputs 2) (inputs 3)).toNat+
      4294967296*(IntegerIngress.packLE (inputs 4) (inputs 5) (inputs 6) (inputs 7)).toNat=
        Codec.decodeLE ((List.range 8).map (fun index=>UInt8.ofNat (inputs index).toNat)) :=
  IntegerIngress.full_u64_exact inputs (accepted_bytes large valid valuation inputs accepted inputValues)

end Core033.IntegerIngressGuards
