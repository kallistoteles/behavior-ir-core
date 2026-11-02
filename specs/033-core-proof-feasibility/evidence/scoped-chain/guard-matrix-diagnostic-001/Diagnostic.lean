import Core033.WordMatrixShape

namespace Core033.GuardMatrix
open R1CS

/-- A guard is an actual relation constraint, independent of whether its output
is exposed to a host caller or consumed by another proved machine step. -/
def force (matrix : Matrix) (wires : List Nat) : Matrix :=
  {matrix with rows:=matrix.rows++wires.map (fun wire=>SHA256Circuit.literalRow wire true)}

theorem satisfaction_exact {F : Type} [Field F] (matrix : Matrix) (wires : List Nat)
    (zero : matrix.constantOne=0) (valuation : Nat → F) :
    (force matrix wires).satisfies valuation ↔
      matrix.satisfies valuation ∧ ∀ wire∈wires,valuation wire=1 := by
  constructor
  · intro accepted
    have one : valuation 0=1 := by rw [←zero];exact accepted.1
    refine ⟨⟨accepted.1,?_⟩,?_⟩
    · intro row member
      exact accepted.2 row (List.mem_append_left _ member)
    · intro wire member
      have included : SHA256Circuit.literalRow wire true∈(force matrix wires).rows :=
        List.mem_append_right matrix.rows (List.mem_map.mpr ⟨wire,member,rfl⟩)
      exact (SHA256Circuit.literal_row_exact valuation wire true one).mp (accepted.2 _ included)
  · rintro ⟨original,guards⟩
    have one : valuation 0=1 := by rw [←zero];exact original.1
    refine ⟨original.1,?_⟩
    intro row member
    rcases List.mem_append.mp member with old|guard
    · exact original.2 row old
    · obtain ⟨wire,inside,rfl⟩:=List.mem_map.mp guard
      exact (SHA256Circuit.literal_row_exact valuation wire true one).mpr (guards wire inside)

theorem well_formed (matrix : Matrix) (wires : List Nat) (shape : matrix.wellFormed=true)
    (large : 2^64<matrix.modulus)
    (bounds : ∀ wire∈wires,0<wire ∧ wire<matrix.variableCount) :
    (force matrix wires).wellFormed=true := by
  simp only [force,Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true] at shape ⊢
  refine ⟨shape.1,?_⟩
  intro row member
  rcases List.mem_append.mp member with old|guard
  · exact shape.2 row old
  · obtain ⟨wire,inside,rfl⟩:=List.mem_map.mp guard
    have valid:=WordMatrixShape.raw_literal_shape matrix.modulus matrix.variableCount wire
      large (bounds wire inside).1 (bounds wire inside).2 true
    simpa only [WordRowShape.rowShape,Bool.and_eq_true] using valid

theorem bool_word_forced_true {F : Type} [Field F] (bit : Bool)
    (accepted : (((WordControl.boolWord bit).toNat : Nat) : F)=1) : bit=true := by
  cases bit with
  | false => change (0 : F)=1 at accepted;exact False.elim (zero_ne_one accepted)
  | true => rfl

end Core033.GuardMatrix
