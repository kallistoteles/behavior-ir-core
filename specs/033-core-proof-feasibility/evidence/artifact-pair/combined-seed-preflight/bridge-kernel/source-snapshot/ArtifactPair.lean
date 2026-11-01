import ArtifactSource
import ArtifactMatrix
import Core033.Pair
namespace ArtifactPair
theorem actual_sound {F : Type} [Field F] [CharP F Core033.R1CS.pallasScalarModulus]
 (inputs : Core033.IR.Inputs) (output : F)
 (relation : Core033.Matrix.Denotes ArtifactMatrix.actualBytes ((inputs.words ⟨0, by decide⟩).raw : F) output) :
 Core033.SourceParser.NativeDenotes ArtifactSource.actualBytes inputs (Core033.IR.eval inputs Core033.IR.firstPrimitive) ∧
 output = Core033.R1CS.bitValue (Core033.IR.eval inputs Core033.IR.firstPrimitive) :=
 Core033.Pair.actual_pair_sound _ _ inputs output ArtifactSource.actual_validated ArtifactMatrix.actual_validated relation
theorem actual_complete {F : Type} [Field F] [CharP F Core033.R1CS.pallasScalarModulus]
 (inputs : Core033.IR.Inputs) :
 Core033.SourceParser.NativeDenotes ArtifactSource.actualBytes inputs (Core033.IR.eval inputs Core033.IR.firstPrimitive) ∧
 Core033.Matrix.Denotes ArtifactMatrix.actualBytes ((inputs.words ⟨0, by decide⟩).raw : F)
  (Core033.R1CS.bitValue (Core033.IR.eval inputs Core033.IR.firstPrimitive)) :=
 Core033.Pair.actual_pair_complete _ _ inputs ArtifactSource.actual_validated ArtifactMatrix.actual_validated
end ArtifactPair
