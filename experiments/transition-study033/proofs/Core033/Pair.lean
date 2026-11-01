import Core033.SourceParser
import Core033.Matrix

namespace Core033.Pair

/-- Both actual artifacts refer to the same full-range signed word and the same
IR result. No generator equality, finite comparison or hash is this bridge. -/
theorem actual_pair_sound [Field F] [CharP F R1CS.pallasScalarModulus]
    (source matrix : List UInt8) (inputs : IR.Inputs) (output : F)
    (sourceChecked : SourceParser.validate source = true)
    (matrixChecked : Matrix.validate matrix = true)
    (relation : Matrix.Denotes matrix ((inputs.words ⟨0, by decide⟩).raw : F) output) :
    SourceParser.NativeDenotes source inputs (IR.eval inputs IR.firstPrimitive) ∧
    output = R1CS.bitValue (IR.eval inputs IR.firstPrimitive) := by
  constructor
  · exact SourceParser.actual_bytes_sound source inputs sourceChecked
  · exact Matrix.actual_matrix_sound matrix (inputs.words ⟨0, by decide⟩) output matrixChecked relation

theorem actual_pair_complete [Field F] [CharP F R1CS.pallasScalarModulus]
    (source matrix : List UInt8) (inputs : IR.Inputs)
    (sourceChecked : SourceParser.validate source = true)
    (matrixChecked : Matrix.validate matrix = true) :
    SourceParser.NativeDenotes source inputs (IR.eval inputs IR.firstPrimitive) ∧
    Matrix.Denotes matrix ((inputs.words ⟨0, by decide⟩).raw : F)
      (R1CS.bitValue (IR.eval inputs IR.firstPrimitive)) := by
  exact ⟨SourceParser.actual_bytes_sound source inputs sourceChecked,
    Matrix.actual_matrix_complete matrix (inputs.words ⟨0, by decide⟩) matrixChecked⟩

end Core033.Pair
