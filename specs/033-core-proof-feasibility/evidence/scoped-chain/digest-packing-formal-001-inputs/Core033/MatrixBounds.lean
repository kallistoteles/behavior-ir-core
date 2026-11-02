import Core033.R1CS

namespace Core033.MatrixBounds
open R1CS

theorem linear_count_monotone (p oldCount newCount : Nat) (terms : Linear)
    (shape : linearWellFormed p oldCount terms=true) (larger : oldCount≤newCount) :
    linearWellFormed p newCount terms=true := by
  simp only [linearWellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq] at shape ⊢
  refine ⟨?_,shape.2⟩
  intro term member
  have old:=shape.1 term member
  exact ⟨lt_of_lt_of_le old.1 larger,old.2⟩

theorem linear_values_agree {F : Type} [Field F] (terms : Linear) (left right : Nat → F)
    (same : ∀ term∈terms,left term.wire=right term.wire) : evalLinear left terms=evalLinear right terms := by
  induction terms with
  | nil => rfl
  | cons term rest ih =>
    simp only [evalLinear]
    rw [same term (by simp),ih (by intro t ht;exact same t (List.mem_cons_of_mem term ht))]

theorem bounded_linear_values {F : Type} [Field F] (p count : Nat) (terms : Linear)
    (shape : linearWellFormed p count terms=true) (left right : Nat → F)
    (same : ∀ wire,wire<count → left wire=right wire) : evalLinear left terms=evalLinear right terms := by
  apply linear_values_agree
  intro term member
  simp only [linearWellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq] at shape
  exact same term.wire (shape.1 term member).1

theorem bounded_row_values {F : Type} [Field F] (p count : Nat) (row : Row)
    (shape : linearWellFormed p count row.a=true ∧ linearWellFormed p count row.b=true ∧ linearWellFormed p count row.c=true)
    (left right : Nat → F) (same : ∀ wire,wire<count → left wire=right wire) :
    row.satisfies left ↔ row.satisfies right := by
  simp only [Row.satisfies,bounded_linear_values p count row.a shape.1 left right same,
    bounded_linear_values p count row.b shape.2.1 left right same,
    bounded_linear_values p count row.c shape.2.2 left right same]

end Core033.MatrixBounds
