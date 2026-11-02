import Core033.DigestWords
import Core033.PackedU64
import Core033.MatrixBounds
import Core033.WordMatrixShape
import Core033.WordMatrixWitness
import Core033.WordSourceValidity
import Core033.KernelDecide

namespace Core033.DigestPacking
open R1CS
abbrev program := DigestWords.program

def source (p : Nat) : R1CS.Matrix := WordMatrix.compile p program

def bindRows (p : Nat) : List Row := (List.finRange 4).map (fun limb=>
  PackedU64.row p (WordMatrix.outputBase program+2*limb.val)
    (WordMatrix.outputBase program+2*limb.val+1) ((source p).variableCount+limb.val))

def compile (p : Nat) : R1CS.Matrix :=
  let original:=source p
  {original with variableCount:=original.variableCount+4,
    privatePorts:=original.privatePorts++original.outputPorts,
    outputPorts:=List.range' original.variableCount 4,rows:=original.rows++bindRows p}

theorem program_counts : program.inputCount=8 ∧ program.operations.length=56 ∧ program.outputs.length=8 := by
  core033_kernel_decide

theorem program_valid : program.Valid :=
  WordSourceValidity.safe_program_valid program ((WordSource.check_safe_exact _).mp (by core033_kernel_decide))

theorem layout (p : Nat) : (source p).variableCount=2185 ∧ WordMatrix.outputBase program=2177 ∧
    (compile p).variableCount=2189 ∧ (compile p).outputPorts=List.range' 2185 4 := by
  simp only [compile,source,WordMatrix.compile,WordMatrix.wordCount,WordMatrix.outputBase,
    program_counts.1,program_counts.2.1,program_counts.2.2]

theorem source_output_sound {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : (source p).satisfies valuation)
    (inputValues : ∀ i,i<8 → valuation (WordField.packed i)=((inputs i).toNat : F))
    (position : Nat) (bound : position<8) :
    valuation (WordMatrix.outputBase program+position)=((ByteOrder.byteSwap (inputs position)).toNat : F) := by
  have posBound : position<program.outputs.length := by rw [program_counts.2.2];exact bound
  let register:=program.outputs[position]'posBound
  have found : program.outputs[position]?=some register := List.getElem?_eq_getElem posBound
  have checked:=WordMatrix.matrix_sound_at_output large program program_valid valuation inputs
    satisfied inputValues position register found
  have evaluated:=congrArg (fun words : List WordIR.Word=>words.getD position 0) (DigestWords.program_meaning inputs)
  simp only [WordIR.Program.eval,List.getD_eq_getElem?_getD,List.getElem?_map,found,
    List.getElem?_range bound,Option.map_some,Option.getD_some] at evaluated
  rw [evaluated] at checked
  exact checked

theorem source_satisfied {F : Type} [Field F] (p : Nat) (valuation : Nat → F)
    (satisfied : (compile p).satisfies valuation) : (source p).satisfies valuation := by
  refine ⟨satisfied.1,?_⟩
  intro row member
  exact satisfied.2 row (List.mem_append_left (bindRows p) member)

theorem full_limb_sound {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : (compile p).satisfies valuation)
    (inputValues : ∀ i,i<8 → valuation (WordField.packed i)=((inputs i).toNat : F)) (limb : Fin 4) :
    valuation ((source p).variableCount+limb.val)=
      ((ByteLimbCodec.packPair (inputs (2*limb.val)) (inputs (2*limb.val+1))) : F) := by
  have original:=source_satisfied p valuation satisfied
  have low:=source_output_sound large valuation inputs original inputValues (2*limb.val) (by omega)
  have high:=source_output_sound large valuation inputs original inputValues (2*limb.val+1) (by omega)
  have member : PackedU64.row p (WordMatrix.outputBase program+2*limb.val)
      (WordMatrix.outputBase program+2*limb.val+1) ((source p).variableCount+limb.val)∈bindRows p :=
    List.mem_map.mpr ⟨limb,List.mem_finRange limb,rfl⟩
  have checked:=satisfied.2 _ (List.mem_append_right (source p).rows member)
  have result:=(PackedU64.row_exact large valuation _ _ _ _ _ satisfied.1 low high).mp checked
  simpa only [PackedU64.value_exact,PackedU64.natural,ByteLimbCodec.packPair] using result

end Core033.DigestPacking
