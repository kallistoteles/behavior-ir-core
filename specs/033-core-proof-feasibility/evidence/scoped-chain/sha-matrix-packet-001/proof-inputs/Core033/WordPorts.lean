import Core033.WordPacking

/- Actual range/decomposition row schemas for full32/64-bit ports. The later
matrix checks must also establish allocation, canonical order and all ports. -/
namespace Core033.WordPorts
open R1CS

def booleanRow (p wire : Nat) : Row :=
  ⟨[⟨wire,1⟩],[⟨0,p-1⟩,⟨wire,1⟩],[]⟩

def negativePowers (p base width : Nat) : Linear :=
  (List.range width).map (fun i=>⟨base+i,p-2^i⟩)

def packingRow (p packed base width : Nat) : Row :=
  ⟨⟨packed,1⟩::negativePowers p base width,[⟨0,1⟩],[]⟩

theorem boolean_row_exact {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1≤p)
    (valuation : Nat → F) (wire : Nat) (one : valuation 0=1) :
    (booleanRow p wire).satisfies valuation ↔ valuation wire*(valuation wire-1)=0 := by
  simp only [booleanRow,Row.satisfies,evalLinear,canonical_negative (F:=F) 1 positive,one,
    Nat.cast_one,one_mul,add_zero,mul_one]
  rw [add_comm (-(1:F)),←sub_eq_add_neg]

theorem negative_powers_meaning {F : Type} [Field F] {p : Nat} [CharP F p]
    (fieldBound : 2^64<p) (base width : Nat) (bound : width≤64) (valuation : Nat → F) :
    evalLinear valuation (negativePowers p base width) = -weighted width (fun i=>valuation (base+i)) := by
  induction width with
  | zero => simp [negativePowers,evalLinear,weighted]
  | succ width ih =>
    simp only [negativePowers,List.range_succ,List.map_append,evalLinear_append]
    have previous:=ih (by omega)
    rw [show evalLinear valuation ((List.range width).map (fun i=>⟨base+i,p-2^i⟩)) =
      -weighted width (fun i=>valuation (base+i)) from previous]
    simp only [List.map_cons,List.map_nil,evalLinear,add_zero]
    rw [canonical_negative (F:=F) (2^width) (power_within_field fieldBound width (by omega))]
    simp [weighted,Nat.cast_pow,mul_comm,add_comm]

theorem packing_row_exact {F : Type} [Field F] {p : Nat} [CharP F p]
    (fieldBound : 2^64<p) (valuation : Nat → F) (packed base width : Nat) (bound : width≤64)
    (one : valuation 0=1) :
    (packingRow p packed base width).satisfies valuation ↔ valuation packed=weighted width (fun i=>valuation (base+i)) := by
  simp only [packingRow,Row.satisfies,evalLinear,Nat.cast_one,one_mul,one,add_zero,mul_one,
    negative_powers_meaning fieldBound base width bound valuation]
  rw [←sub_eq_add_neg,sub_eq_zero]

theorem full_port_sound {F : Type} [Field F] {p : Nat} [CharP F p]
    (fieldBound : 2^64<p) (valuation : Nat → F) (packed base width : Nat) (bound : width≤64)
    (one : valuation 0=1) (bits : ∀ i,i<width → (booleanRow p (base+i)).satisfies valuation)
    (pack : (packingRow p packed base width).satisfies valuation) :
    ∃ word : BitVec width,valuation packed=(word.toNat : F) ∧
      ∀ i,i<width → valuation (base+i)=bitValue (word.getLsbD i) := by
  have positive : 1≤p := by omega
  obtain ⟨word,encoded,weightedValue⟩ := WordPacking.boolean_fields_reify width (fun i=>valuation (base+i))
    (by intro i hi;exact (boolean_row_exact positive valuation _ one).mp (bits i hi))
  exact ⟨word,((packing_row_exact fieldBound valuation packed base width bound one).mp pack).trans weightedValue,encoded⟩

theorem full_port_complete {F : Type} [Field F] {p : Nat} [CharP F p]
    (fieldBound : 2^64<p) (valuation : Nat → F) (packed base width : Nat) (bound : width≤64)
    (one : valuation 0=1) (word : BitVec width) (value : valuation packed=(word.toNat : F))
    (encoded : ∀ i,i<width → valuation (base+i)=bitValue (word.getLsbD i)) :
    (∀ i,i<width → (booleanRow p (base+i)).satisfies valuation) ∧
      (packingRow p packed base width).satisfies valuation := by
  have positive : 1≤p := by omega
  constructor
  · intro i hi
    apply (boolean_row_exact positive valuation _ one).mpr
    rw [encoded i hi]
    cases word.getLsbD i <;> simp [bitValue]
  · apply (packing_row_exact fieldBound valuation packed base width bound one).mpr
    rw [value,weighted_congr width (fun i=>valuation (base+i))
      (fun i=>bitValue (word.getLsbD i)) encoded,WordPacking.weighted_word]

theorem full_port_unique {F : Type} [Field F] {p : Nat} [CharP F p]
    (fieldBound : 2^64<p) (width : Nat) (bound : width≤64) (a b : BitVec width)
    (same : (a.toNat : F)=(b.toNat : F)) : a=b := by
  have range : 2^width≤2^64 := Nat.pow_le_pow_right (by decide) bound
  apply BitVec.eq_of_toNat_eq
  have ha : a.toNat<p := lt_of_lt_of_le a.isLt (Nat.le_of_lt (lt_of_le_of_lt range fieldBound))
  have hb : b.toNat<p := lt_of_lt_of_le b.isLt (Nat.le_of_lt (lt_of_le_of_lt range fieldBound))
  exact CharP.natCast_injOn_Iio F p ha hb same

end Core033.WordPorts
