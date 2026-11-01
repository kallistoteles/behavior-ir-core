import Core033.IR

namespace Core033.Bits

def value : Nat → (Nat → Bool) → Nat
  | 0, _ => 0
  | n+1, bits => value n bits + if bits n then 2^n else 0

theorem bound (n : Nat) (bits : Nat → Bool) : value n bits < 2^n := by
  induction n with
  | zero => simp [value]
  | succ n ih =>
      cases h : bits n <;> simp [value, h, Nat.pow_succ] <;> omega

theorem congr (n : Nat) (a b : Nat → Bool) (h : ∀ i, i < n → a i = b i) : value n a = value n b := by
  induction n with
  | zero => rfl
  | succ n ih =>
      have lower := ih (fun i hi => h i (by omega))
      simp only [value, lower, h n (by omega)]

theorem exists_value (n v : Nat) (hv : v < 2^n) : ∃ bits : Nat → Bool, value n bits = v := by
  induction n generalizing v with
  | zero =>
      have hz : v = 0 := by simpa using hv
      subst v
      exact ⟨fun _ => false, rfl⟩
  | succ n ih =>
      by_cases low : v < 2^n
      · obtain ⟨bits, hb⟩ := ih v low
        let extended := fun i => if i = n then false else bits i
        have hp : value n extended = value n bits := congr n _ _ (by intro i hi; simp [extended, show i ≠ n by omega])
        refine ⟨extended, ?_⟩
        change value n extended + (if extended n then 2^n else 0) = v
        rw [hp, hb]
        simp [extended]
      · have hlow : v - 2^n < 2^n := by
          rw [Nat.pow_succ] at hv
          omega
        obtain ⟨bits, hb⟩ := ih (v - 2^n) hlow
        let extended := fun i => if i = n then true else bits i
        have hp : value n extended = value n bits := congr n _ _ (by intro i hi; simp [extended, show i ≠ n by omega])
        refine ⟨extended, ?_⟩
        simp only [value, hp, hb]
        simp only [extended, ↓reduceIte]
        omega

theorem high_bit (bits : Nat → Bool) : 2^63 ≤ value 64 bits ↔ bits 63 = true := by
  have h := bound 63 bits
  change 2^63 ≤ value 63 bits + (if bits 63 then 2^63 else 0) ↔ bits 63 = true
  cases hb : bits 63 <;> simp [hb] at * <;> omega

theorem word_high_bit (word : IR.Word64) : IR.half ≤ word.raw ↔ word.negative = true := by
  have h := word.low.isLt
  cases hn : word.negative <;> simp [IR.Word64.raw, hn] at * <;> omega

end Core033.Bits
