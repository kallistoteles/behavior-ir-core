import Core033.WordRowShape

namespace Core033.PackingShape
open R1CS WordField WordRowShape

theorem linear_normalizes (p count : Nat) (terms : Linear) (shape : linearWellFormed p count terms=true) :
    CanonicalLinear.normalize terms=terms := by
  simp only [linearWellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq] at shape
  apply CanonicalShape.normalize_ordered_identity terms shape.2
  intro term member
  exact Nat.ne_of_gt (shape.1 term member).2.1

theorem row_normalizes (p count : Nat) (row : Row) (shape : rowShape p count row=true) :
    CanonicalLinear.normalizeRow row=row := by
  simp only [rowShape,Bool.and_eq_true] at shape
  cases row with
  | mk a b c =>
    change R1CS.Row.mk (CanonicalLinear.normalize a) (CanonicalLinear.normalize b) (CanonicalLinear.normalize c)=_
    rw [linear_normalizes p count a shape.1.1,linear_normalizes p count b shape.1.2,linear_normalizes p count c shape.2]

theorem negative_bounds (p count register : Nat) (large : 2^64<p) (endBound : carry register<count) :
    ∀ term∈WordPorts.negativePowers p (base register+1) 32,
      term.wire<count ∧ 0<term.coefficient ∧ term.coefficient<p := by
  intro term member
  obtain ⟨i,hi,rfl⟩:=List.mem_map.mp member
  have small:=List.mem_range.mp hi
  have powerBound : 2^i≤2^64 := Nat.pow_le_pow_right (by decide) (by omega)
  have powerPositive : 0<2^i := Nat.pow_pos (by decide)
  have wireBound : base register+1+i<count := by unfold carry at endBound;omega
  change base register+1+i<count ∧ 0<p-2^i ∧ p-2^i<p
  exact ⟨wireBound,by omega,by omega⟩

theorem negative_ordered (p register : Nat) :
    (WordPorts.negativePowers p (base register+1) 32).Pairwise (fun a b=>a.wire<b.wire) := by
  simp only [WordPorts.negativePowers,List.pairwise_map]
  exact List.pairwise_lt_range.imp (by intro a b earlier;omega)

theorem packing_raw_shape (p count register : Nat) (large : 2^64<p) (endBound : carry register<count) :
    rowShape p count (packing p register)=true := by
  have firstBound : packed register<count := by unfold packed carry at *;omega
  have countPositive : 0<count := by unfold carry base at endBound;omega
  have pOne : 1<p := by omega
  have tailBounds:=negative_bounds p count register large endBound
  have ordered : (R1CS.Term.mk (packed register) 1::WordPorts.negativePowers p (base register+1) 32).Pairwise
      (fun a b=>a.wire<b.wire) := by
    apply List.pairwise_cons.mpr
    constructor
    · intro term member
      obtain ⟨i,hi,rfl⟩:=List.mem_map.mp member
      change packed register<base register+1+i
      unfold packed
      omega
    · exact negative_ordered p register
  have bounds : ∀ term∈R1CS.Term.mk (packed register) 1::WordPorts.negativePowers p (base register+1) 32,
      term.wire<count ∧ 0<term.coefficient ∧ term.coefficient<p := by
    intro term member
    rcases List.mem_cons.mp member with same|tail
    · subst term
      change packed register<count ∧ 0<1 ∧ 1<p
      exact ⟨firstBound,by decide,pOne⟩
    · exact tailBounds term tail
  have first:=CanonicalShape.linear_shape p count _ bounds ordered
  have second:=CanonicalShape.singleton_shape p count 0 1 countPositive (by decide) pOne
  have third:=CanonicalShape.empty_shape p count
  simpa only [rowShape,packing,WordPorts.packingRow,Bool.and_eq_true] using ⟨⟨first,second⟩,third⟩

theorem packing_normalized_shape (p count register : Nat) (large : 2^64<p) (endBound : carry register<count) :
    rowShape p count (CanonicalLinear.normalizeRow (packing p register))=true := by
  have shape:=packing_raw_shape p count register large endBound
  rw [row_normalizes p count _ shape]
  exact shape

end Core033.PackingShape
