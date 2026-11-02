import Core033.MatrixCodecPayload

namespace Core033.MatrixPacket
open R1CS MatrixCodec

/-- The expected relation is the independently proved compilation. Shape-only
acceptance never authorizes a different decoded relation. -/
def validate (expected : R1CS.Matrix) (bytes : Bytes) : Bool :=
  match Matrix.parse bytes with
  | none => false
  | some actual => decide (actual=expected)

theorem decoded_acceptance (expected actual : R1CS.Matrix) (bytes : Bytes)
    (parsed : Matrix.parse bytes=some actual) :
    validate expected bytes=true ↔ actual=expected := by
  simp only [validate,parsed,decide_eq_true_eq]

theorem decoded_mismatch_rejected (expected actual : R1CS.Matrix) (bytes : Bytes)
    (parsed : Matrix.parse bytes=some actual) (different : actual≠expected) :
    validate expected bytes=false := by
  simp only [validate,parsed,decide_eq_false_iff_not,different]

theorem malformed_rejected (expected : R1CS.Matrix) (bytes : Bytes) (failed : Matrix.parse bytes=none) :
    validate expected bytes=false := by simp only [validate,failed]

theorem canonical_expected_accepted (expected : R1CS.Matrix) (shape : expected.wellFormed=true)
    (rowBound : 0<expected.rows.length ∧ expected.rows.length≤16777216)
    (byteBound : (encode expected).length≤1073741824) : validate expected (encode expected)=true := by
  exact (decoded_acceptance expected expected _
    (MatrixCodecPayload.matrix_roundtrip expected shape rowBound byteBound)).mpr rfl

theorem decoded_modulus_change_rejected (expected actual : R1CS.Matrix) (bytes : Bytes)
    (parsed : Matrix.parse bytes=some actual) (different : actual.modulus≠expected.modulus) :
    validate expected bytes=false :=
  decoded_mismatch_rejected expected actual bytes parsed (by intro same;exact different (congrArg R1CS.Matrix.modulus same))

theorem decoded_constraint_deletion_rejected (expected actual : R1CS.Matrix) (bytes : Bytes)
    (parsed : Matrix.parse bytes=some actual) (different : actual.rows.length≠expected.rows.length) :
    validate expected bytes=false :=
  decoded_mismatch_rejected expected actual bytes parsed (by intro same;exact different (congrArg (fun matrix=>matrix.rows.length) same))

theorem decoded_public_output_change_rejected (expected actual : R1CS.Matrix) (bytes : Bytes)
    (parsed : Matrix.parse bytes=some actual) (different : actual.outputPorts≠expected.outputPorts) :
    validate expected bytes=false :=
  decoded_mismatch_rejected expected actual bytes parsed (by intro same;exact different (congrArg R1CS.Matrix.outputPorts same))

end Core033.MatrixPacket
