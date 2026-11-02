import Core033.Bits
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.CharP.Basic

/- Canonical field constraints, not an abstract assertion that a circuit is K.
Algebraic results quantify over standard fields of the declared characteristic.
The selected crypto field implementation is ordinary crypto TCB; no custom
native/source/matrix/Core-semantic axiom is introduced. -/
namespace Core033.R1CS

def pallasScalarModulus : Nat :=
  0x40000000000000000000000000000000224698fc0994a8dd8c46eb2100000001

theorem modulus_larger_than_word : 2^64 < pallasScalarModulus := by decide

structure Term where
  wire : Nat
  coefficient : Nat
  deriving DecidableEq, Repr

abbrev Linear := List Term
structure Row where
  a : Linear
  b : Linear
  c : Linear
  deriving DecidableEq, Repr

structure Matrix where
  modulus : Nat
  variableCount : Nat
  inputPorts : List Nat
  privatePorts : List Nat
  outputPorts : List Nat
  constantOne : Nat
  rows : List Row
  deriving DecidableEq, Repr

def evalLinear [Field F] (valuation : Nat → F) : Linear → F
  | [] => 0
  | term :: rest => (term.coefficient : F) * valuation term.wire + evalLinear valuation rest

def Row.satisfies [Field F] (row : Row) (valuation : Nat → F) : Prop :=
  evalLinear valuation row.a * evalLinear valuation row.b = evalLinear valuation row.c

def Matrix.satisfies [Field F] (matrix : Matrix) (valuation : Nat → F) : Prop :=
  valuation matrix.constantOne = 1 ∧ ∀ row ∈ matrix.rows, row.satisfies valuation

def bitRow (p index : Nat) : Row :=
  ⟨[⟨3+index, 1⟩], [⟨0, p-1⟩, ⟨3+index, 1⟩], []⟩

def decompositionRow (p : Nat) : Row :=
  ⟨⟨1, 1⟩ :: (List.range 64).map (fun i => ⟨3+i, p-2^i⟩), [⟨0, 1⟩], []⟩

def outputRow (p : Nat) : Row :=
  ⟨[⟨2, 1⟩, ⟨66, p-1⟩], [⟨0, 1⟩], []⟩

def compileNegative (p : Nat) : Matrix :=
  ⟨p, 67, [1], (List.range 64).map (3+·), [2], 0,
    (List.range 64).map (bitRow p) ++ [decompositionRow p, outputRow p]⟩

def linearWellFormed (p count : Nat) (terms : Linear) : Bool :=
  terms.all (fun term => decide (term.wire < count ∧ 0 < term.coefficient ∧ term.coefficient < p)) &&
  decide (terms.Pairwise (fun a b => a.wire < b.wire))

def Matrix.wellFormed (matrix : Matrix) : Bool :=
  let ports := matrix.inputPorts ++ matrix.privatePorts ++ matrix.outputPorts ++ [matrix.constantOne]
  decide (2^64 < matrix.modulus ∧ matrix.modulus < 2^256 ∧
    0 < matrix.variableCount ∧ matrix.variableCount ≤ 16777216 ∧
    ports.length = matrix.variableCount ∧ ports.Nodup) &&
  ports.all (fun wire => decide (wire < matrix.variableCount)) &&
  matrix.rows.all (fun row => linearWellFormed matrix.modulus matrix.variableCount row.a &&
    linearWellFormed matrix.modulus matrix.variableCount row.b && linearWellFormed matrix.modulus matrix.variableCount row.c)

theorem exported_layout :
    (compileNegative pallasScalarModulus).modulus = pallasScalarModulus ∧
    (compileNegative pallasScalarModulus).variableCount = 67 ∧
    (compileNegative pallasScalarModulus).inputPorts = [1] ∧
    (compileNegative pallasScalarModulus).outputPorts = [2] ∧
    (compileNegative pallasScalarModulus).constantOne = 0 ∧
    (compileNegative pallasScalarModulus).privatePorts.length = 64 ∧
    (compileNegative pallasScalarModulus).rows.length = 66 := by decide

theorem exported_wellFormed : (compileNegative pallasScalarModulus).wellFormed = true := by decide

section Algebra
variable {F : Type} [Field F] {p : Nat} [CharP F p]

theorem canonical_negative (n : Nat) (hn : n ≤ p) : ((p-n : Nat) : F) = -(n : F) := by
  rw [Nat.cast_sub hn, (CharP.cast_eq_zero_iff F p p).mpr (dvd_refl p), zero_sub]

theorem boolean_sound (x : F) (h : x * (x-1) = 0) : x = 0 ∨ x = 1 := by
  rcases mul_eq_zero.mp h with hzero | hone
  · exact Or.inl hzero
  · exact Or.inr (sub_eq_zero.mp hone)

theorem bitRow_meaning (hp : 1 ≤ p) (index : Nat) (valuation : Nat → F)
    (hone : valuation 0 = 1) :
    (bitRow p index).satisfies valuation ↔ valuation (3+index) = 0 ∨ valuation (3+index) = 1 := by
  simp only [Row.satisfies, bitRow, evalLinear, Nat.cast_one, one_mul, add_zero,
    canonical_negative 1 hp, hone, mul_one]
  rw [add_comm (-(1:F)), ← sub_eq_add_neg]
  constructor
  · exact boolean_sound _
  · intro h
    rcases h with h | h <;> simp [h]

def weighted : Nat → (Nat → F) → F
  | 0, _ => 0
  | n+1, bits => weighted n bits + bits n * (2:F)^n

def bitValue (bit : Bool) : F := if bit then 1 else 0

theorem weighted_cast (n : Nat) (bits : Nat → Bool) :
    weighted n (fun i => bitValue (bits i)) = (Bits.value n bits : F) := by
  induction n with
  | zero => simp [weighted, Bits.value]
  | succ n ih =>
      simp only [weighted, Bits.value, Nat.cast_add, ih]
      cases h : bits n <;> simp [bitValue, Nat.cast_pow]

theorem weighted_congr (n : Nat) (a b : Nat → F) (h : ∀ i, i < n → a i = b i) :
    weighted n a = weighted n b := by
  induction n with
  | zero => rfl
  | succ n ih =>
      have lower := ih (fun i hi => h i (by omega))
      simp only [weighted, lower, h n (by omega)]

theorem bitValue_injective (a b : Bool) : bitValue (F:=F) a = bitValue b ↔ a = b := by
  cases a <;> cases b <;> simp [bitValue]

theorem evalLinear_append (valuation : Nat → F) (a b : Linear) :
    evalLinear valuation (a ++ b) = evalLinear valuation a + evalLinear valuation b := by
  induction a with
  | nil => simp [evalLinear]
  | cons term rest ih => simp [evalLinear, ih, add_assoc]

theorem power_within_field (hp : 2^64 < p) (i : Nat) (hi : i < 64) : 2^i ≤ p := by
  have hpow : 2^i ≤ 2^64 := Nat.pow_le_pow_right (by decide) (by omega)
  omega

theorem negative_terms (hp : 2^64 < p) (n : Nat) (hn : n ≤ 64) (valuation : Nat → F) :
    evalLinear valuation ((List.range n).map (fun i => ⟨3+i, p-2^i⟩)) =
      -weighted n (fun i => valuation (3+i)) := by
  induction n with
  | zero => simp [evalLinear, weighted]
  | succ n ih =>
      rw [List.range_succ, List.map_append, evalLinear_append]
      rw [ih (by omega)]
      simp only [List.map_cons, List.map_nil, evalLinear, add_zero]
      rw [canonical_negative (2^n) (power_within_field hp n (by omega))]
      simp [weighted, Nat.cast_pow, mul_comm, add_comm]

theorem decomposition_meaning (hp : 2^64 < p) (valuation : Nat → F) (hone : valuation 0 = 1) :
    (decompositionRow p).satisfies valuation ↔ valuation 1 = weighted 64 (fun i => valuation (3+i)) := by
  change (((1:Nat):F) * valuation 1 + evalLinear valuation ((List.range 64).map (fun i => ⟨3+i,p-2^i⟩))) *
    (((1:Nat):F) * valuation 0 + 0) = 0 ↔ _
  rw [negative_terms hp 64 (by decide)]
  simp only [hone, Nat.cast_one, one_mul, mul_one, add_zero, ← sub_eq_add_neg, sub_eq_zero]

theorem output_meaning (hp : 1 ≤ p) (valuation : Nat → F) (hone : valuation 0 = 1) :
    (outputRow p).satisfies valuation ↔ valuation 2 = valuation 66 := by
  change (((1:Nat):F) * valuation 2 + (((p-1:Nat):F) * valuation 66 + 0)) *
    (((1:Nat):F) * valuation 0 + 0) = 0 ↔ _
  rw [canonical_negative 1 hp]
  simp only [hone, Nat.cast_one, one_mul, mul_one, neg_one_mul, add_zero, ← sub_eq_add_neg, sub_eq_zero]

theorem compiled_satisfaction (hp : 2^64 < p) (valuation : Nat → F) :
    (compileNegative p).satisfies valuation ↔
      valuation 0 = 1 ∧
      (∀ i, i < 64 → valuation (3+i) = 0 ∨ valuation (3+i) = 1) ∧
      valuation 1 = weighted 64 (fun i => valuation (3+i)) ∧ valuation 2 = valuation 66 := by
  have hpone : 1 ≤ p := by omega
  change (valuation 0 = 1 ∧ ∀ row ∈ (List.range 64).map (bitRow p) ++ [decompositionRow p,outputRow p], row.satisfies valuation) ↔ _
  constructor
  · rintro ⟨hone,hrows⟩
    refine ⟨hone,?_,?_,?_⟩
    · intro i hi
      apply (bitRow_meaning hpone i valuation hone).mp
      apply hrows
      apply List.mem_append.mpr
      exact Or.inl (List.mem_map.mpr ⟨i,List.mem_range.mpr hi,rfl⟩)
    · apply (decomposition_meaning hp valuation hone).mp
      exact hrows _ (List.mem_append.mpr (Or.inr (by simp)))
    · apply (output_meaning hpone valuation hone).mp
      exact hrows _ (List.mem_append.mpr (Or.inr (by simp)))
  · rintro ⟨hone,hbits,hdecomposition,houtput⟩
    refine ⟨hone,?_⟩
    intro row hrow
    rcases List.mem_append.mp hrow with hfront | hback
    · obtain ⟨i,hi,rfl⟩ := List.mem_map.mp hfront
      exact (bitRow_meaning hpone i valuation hone).mpr (hbits i (List.mem_range.mp hi))
    · simp only [List.mem_cons,List.not_mem_nil,or_false] at hback
      rcases hback with rfl | rfl
      · exact (decomposition_meaning hp valuation hone).mpr hdecomposition
      · exact (output_meaning hpone valuation hone).mpr houtput

theorem compiled_sound (hp : 2^64 < p) (word : IR.Word64) (valuation : Nat → F)
    (hsat : (compileNegative p).satisfies valuation) (hinput : valuation 1 = (word.raw : F)) :
    valuation 2 = bitValue word.negative := by
  classical
  obtain ⟨hone,hboolean,hdecomposition,houtput⟩ := (compiled_satisfaction hp valuation).mp hsat
  let bits : Nat → Bool := fun i => decide (valuation (3+i) = 1)
  have hbits : ∀ i, i < 64 → valuation (3+i) = bitValue (bits i) := by
    intro i hi
    rcases hboolean i hi with hz | ho
    · simp [bits, hz, bitValue]
    · simp [bits, ho, bitValue]
  have hweighted : weighted 64 (fun i => valuation (3+i)) = (Bits.value 64 bits : F) :=
    (weighted_congr 64 _ _ hbits).trans (weighted_cast 64 bits)
  have hcast : (word.raw : F) = (Bits.value 64 bits : F) :=
    hinput.symm.trans (hdecomposition.trans hweighted)
  have hnat : word.raw = Bits.value 64 bits :=
    CharP.natCast_injOn_Iio F p (lt_trans word.raw_bound hp) (lt_trans (Bits.bound 64 bits) hp) hcast
  have hflag : bits 63 = word.negative := by
    apply Bool.eq_iff_iff.mpr
    rw [← Bits.high_bit bits, ← Bits.word_high_bit word]
    change (2^63 ≤ Bits.value 64 bits) ↔ (2^63 ≤ word.raw)
    rw [hnat]
  exact houtput.trans ((hbits 63 (by decide)).trans (congrArg bitValue hflag))

theorem compiled_complete (hp : 2^64 < p) (word : IR.Word64) :
    ∃ valuation : Nat → F,
      (compileNegative p).satisfies valuation ∧
      valuation 1 = (word.raw : F) ∧ valuation 2 = bitValue word.negative := by
  obtain ⟨bits,hvalue⟩ := Bits.exists_value 64 word.raw word.raw_bound
  let valuation : Nat → F := fun wire =>
    if wire = 0 then 1 else if wire = 1 then (word.raw : F) else
    if wire = 2 then bitValue word.negative else bitValue (bits (wire-3))
  have hzero : valuation 0 = 1 := by simp [valuation]
  have hone : valuation 1 = (word.raw : F) := by simp [valuation]
  have htwo : valuation 2 = bitValue word.negative := by simp [valuation]
  have hbits : ∀ i, i < 64 → valuation (3+i) = bitValue (bits i) := by
    intro i hi
    have h1 : 3+i ≠ 1 := by omega
    have h2 : 3+i ≠ 2 := by omega
    simp [valuation,h1,h2]
  have hflag : bits 63 = word.negative := by
    apply Bool.eq_iff_iff.mpr
    rw [← Bits.high_bit bits, ← Bits.word_high_bit word]
    change (2^63 ≤ Bits.value 64 bits) ↔ (2^63 ≤ word.raw)
    rw [hvalue]
  refine ⟨valuation,?_,hone,htwo⟩
  apply (compiled_satisfaction hp valuation).mpr
  refine ⟨hzero,?_,?_,?_⟩
  · intro i hi
    rw [hbits i hi]
    cases bits i <;> simp [bitValue]
  · rw [hone, weighted_congr 64 _ _ hbits, weighted_cast, hvalue]
  · rw [htwo, hbits 63 (by decide), hflag]

end Algebra
end Core033.R1CS
