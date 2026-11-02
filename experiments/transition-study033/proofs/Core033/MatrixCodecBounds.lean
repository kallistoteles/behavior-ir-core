import Core033.MatrixCodec

namespace Core033.MatrixCodecBounds
open R1CS

def LinearBounds (terms : Linear) : Prop := terms.length≤16777216 ∧
  ∀ term∈terms,term.wire<2^32 ∧ term.coefficient<2^256

def RowBounds (row : Row) : Prop := LinearBounds row.a ∧ LinearBounds row.b ∧ LinearBounds row.c

theorem sorted_interval_length (items : List Nat) : ∀ lower upper,
    items.Pairwise (·<·) → (∀ value∈items,lower≤value ∧ value<upper) → items.length≤upper-lower := by
  induction items with
  | nil => intro lower upper ordered bounds;simp
  | cons value rest ih =>
    intro lower upper ordered bounds
    have pair:=List.pairwise_cons.mp ordered
    have current:=bounds value (by simp)
    have tailBounds : ∀ x∈rest,value+1≤x ∧ x<upper := by
      intro x member
      have before:=pair.1 x member
      have old:=bounds x (List.mem_cons_of_mem value member)
      exact ⟨by omega,old.2⟩
    have tailSize:=ih (value+1) upper pair.2 tailBounds
    simp only [List.length_cons]
    omega

theorem column_admissible (p count : Nat) (terms : Linear) (fieldBound : p<2^256) (countBound : count≤16777216)
    (shape : linearWellFormed p count terms=true) : LinearBounds terms := by
  simp only [linearWellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq] at shape
  have sorted : (terms.map Term.wire).Pairwise (·<·) := by
    simpa only [List.pairwise_map] using shape.2
  have inRange : ∀ value∈terms.map Term.wire,0≤value ∧ value<count := by
    intro value member
    obtain ⟨term,origin,rfl⟩:=List.mem_map.mp member
    exact ⟨by omega,(shape.1 term origin).1⟩
  have lengthBound : terms.length≤count := by
    simpa only [List.length_map,Nat.sub_zero] using sorted_interval_length (terms.map Term.wire) 0 count sorted inRange
  refine ⟨by omega,?_⟩
  intro term member
  have bounds:=shape.1 term member
  exact ⟨by omega,Nat.lt_trans bounds.2.2 fieldBound⟩

theorem matrix_rows_admissible (matrix : R1CS.Matrix) (shape : matrix.wellFormed=true) :
    ∀ row∈matrix.rows,RowBounds row := by
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq] at shape
  obtain ⟨large,fieldBound,countPositive,countBound,portCount,unique⟩:=shape.1.1
  intro row member
  have rowShape:=shape.2 row member
  simp only [Bool.and_eq_true] at rowShape
  exact ⟨column_admissible matrix.modulus matrix.variableCount row.a fieldBound countBound rowShape.1.1,
    column_admissible matrix.modulus matrix.variableCount row.b fieldBound countBound rowShape.1.2,
    column_admissible matrix.modulus matrix.variableCount row.c fieldBound countBound rowShape.2⟩

end Core033.MatrixCodecBounds
