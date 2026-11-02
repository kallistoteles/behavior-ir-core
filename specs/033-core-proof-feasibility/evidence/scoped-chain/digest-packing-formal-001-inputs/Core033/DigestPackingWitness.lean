import Core033.DigestPackingShape

namespace Core033.DigestPackingWitness
open R1CS DigestPacking DigestPackingShape
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 4000000

def extend {F : Type} [Field F] (p : Nat) (inputs : Nat → WordIR.Word) (old : Nat → F) (wire : Nat) : F :=
  if wire<(source p).variableCount then old wire else
    (ByteLimbCodec.packPair (inputs (2*(wire-(source p).variableCount)))
      (inputs (2*(wire-(source p).variableCount)+1)) : F)

theorem unchanged {F : Type} [Field F] (p : Nat) (inputs : Nat → WordIR.Word) (old : Nat → F)
    (wire : Nat) (before : wire<(source p).variableCount) : extend p inputs old wire=old wire := by
  simp only [extend,if_pos before]

theorem public_value {F : Type} [Field F] (p : Nat) (inputs : Nat → WordIR.Word) (old : Nat → F) (limb : Nat) :
    extend p inputs old ((source p).variableCount+limb)=
      (ByteLimbCodec.packPair (inputs (2*limb)) (inputs (2*limb+1)) : F) := by
  have after : ¬(source p).variableCount+limb<(source p).variableCount := by omega
  simp only [extend,if_neg after,Nat.add_sub_cancel_left]

theorem preserved_source {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (fieldBound : p<2^256) (inputs : Nat → WordIR.Word) (old : Nat → F)
    (satisfied : (source p).satisfies old) : (source p).satisfies (extend p inputs old) := by
  have shape:=source_shape p large fieldBound
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true] at shape
  have zeroBound : 0<(source p).variableCount := by rw [(layout p).1];decide
  refine ⟨?_,?_⟩
  · change extend p inputs old 0=1
    rw [unchanged p inputs old 0 zeroBound]
    exact satisfied.1
  · intro row member
    have valid:=shape.2 row member
    exact (MatrixBounds.bounded_row_values p (source p).variableCount row
      ⟨valid.1.1,valid.1.2,valid.2⟩ (extend p inputs old) old
      (by intro wire bound;exact unchanged p inputs old wire bound)).mpr (satisfied.2 row member)

theorem complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (fieldBound : p<2^256) (inputs : Nat → WordIR.Word) :
    ∃ valuation : Nat → F,(compile p).satisfies valuation ∧
      (∀ index,index<8 → valuation (WordField.packed index)=((inputs index).toNat : F)) ∧
      ∀ limb : Fin 4,valuation ((source p).variableCount+limb.val)=
        (ByteLimbCodec.packPair (inputs (2*limb.val)) (inputs (2*limb.val+1)) : F) := by
  obtain ⟨old,oldSatisfied,oldInputs,oldOutputs⟩:=WordMatrix.matrix_complete (F:=F) large program program_valid inputs
  have sourceSatisfied : (source p).satisfies old := oldSatisfied
  have preserved:=preserved_source large fieldBound inputs old sourceSatisfied
  have newInputs : ∀ index,index<8 → extend p inputs old (WordField.packed index)=((inputs index).toNat : F) := by
    intro index bound
    have before : WordField.packed index<(source p).variableCount := by
      rw [(layout p).1]
      unfold WordField.packed WordField.base
      omega
    rw [unchanged p inputs old _ before]
    exact oldInputs index bound
  refine ⟨extend p inputs old,?_,newInputs,?_⟩
  · refine ⟨preserved.1,?_⟩
    intro row member
    change row∈(source p).rows++bindRows p at member
    rcases List.mem_append.mp member with original|binding
    · exact preserved.2 row original
    · obtain ⟨limb,inside,rfl⟩:=List.mem_map.mp binding
      have low:=source_output_sound large (extend p inputs old) inputs preserved newInputs (2*limb.val) (by omega)
      have high:=source_output_sound large (extend p inputs old) inputs preserved newInputs (2*limb.val+1) (by omega)
      apply (PackedU64.row_exact large (extend p inputs old) _ _ _ _ _ preserved.1 low high).mpr
      simpa only [PackedU64.value_exact,PackedU64.natural,ByteLimbCodec.packPair] using public_value p inputs old limb.val
  · intro limb
    exact public_value p inputs old limb.val

end Core033.DigestPackingWitness
