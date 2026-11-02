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
  simp [validate,parsed,different]

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

theorem row_subset_preserves_shape (matrix : R1CS.Matrix) (shape : matrix.wellFormed=true)
    (rows : List Row) (subset : ∀ row∈rows,row∈matrix.rows) :
    ({matrix with rows:=rows} : R1CS.Matrix).wellFormed=true := by
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true] at shape ⊢
  exact ⟨shape.1,by intro row member;exact shape.2 row (subset row member)⟩

theorem linear_modulus_monotone (oldModulus newModulus count : Nat) (terms : Linear)
    (shape : linearWellFormed oldModulus count terms=true) (larger : oldModulus≤newModulus) :
    linearWellFormed newModulus count terms=true := by
  simp only [linearWellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq] at shape ⊢
  refine ⟨?_,shape.2⟩
  intro term member
  have old:=shape.1 term member
  exact ⟨old.1,old.2.1,lt_of_lt_of_le old.2.2 larger⟩

theorem modulus_increase_preserves_shape (matrix : R1CS.Matrix) (shape : matrix.wellFormed=true)
    (modulus : Nat) (larger : matrix.modulus≤modulus) (fieldBound : modulus<2^256) :
    ({matrix with modulus:=modulus} : R1CS.Matrix).wellFormed=true := by
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq] at shape ⊢
  obtain ⟨large,oldField,countPositive,countBound,portLength,unique⟩:=shape.1.1
  refine ⟨⟨⟨lt_of_lt_of_le large larger,fieldBound,countPositive,countBound,portLength,unique⟩,shape.1.2⟩,?_⟩
  intro row member
  have old:=shape.2 row member
  exact ⟨⟨linear_modulus_monotone _ _ _ _ old.1.1 larger,
    linear_modulus_monotone _ _ _ _ old.1.2 larger⟩,
    linear_modulus_monotone _ _ _ _ old.2 larger⟩

theorem replacement_rows_preserve_shape (matrix : R1CS.Matrix) (shape : matrix.wellFormed=true)
    (rows : List Row) (valid : ∀ row∈rows,
      linearWellFormed matrix.modulus matrix.variableCount row.a=true ∧
      linearWellFormed matrix.modulus matrix.variableCount row.b=true ∧
      linearWellFormed matrix.modulus matrix.variableCount row.c=true) :
    ({matrix with rows:=rows} : R1CS.Matrix).wellFormed=true := by
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true] at shape ⊢
  refine ⟨shape.1,?_⟩
  intro row member
  have checked:=valid row member
  exact ⟨⟨checked.1,checked.2.1⟩,checked.2.2⟩

theorem rows_are_well_formed (matrix : R1CS.Matrix) (shape : matrix.wellFormed=true) (row : Row)
    (member : row∈matrix.rows) :
    linearWellFormed matrix.modulus matrix.variableCount row.a=true ∧
    linearWellFormed matrix.modulus matrix.variableCount row.b=true ∧
    linearWellFormed matrix.modulus matrix.variableCount row.c=true := by
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true] at shape
  have checked:=shape.2 row member
  exact ⟨checked.1.1,checked.1.2,checked.2⟩

end Core033.MatrixPacket
