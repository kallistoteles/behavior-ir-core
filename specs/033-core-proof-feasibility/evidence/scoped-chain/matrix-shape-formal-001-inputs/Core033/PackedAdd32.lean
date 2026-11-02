import Core033.R1CS
import Core033.SHA256

/- Packed SHA helper addition. Range-checked 32-bit words plus one Boolean
carry prevent field aliases. This is SHA wrapping addition, not a shortcut for
Core Int64 overflow or counters. Actual matrix allocation remains to be checked. -/
namespace Core033.PackedAdd32
open R1CS
abbrev Word := SHA256.Word

theorem natural_witness (sum output : Nat) (carry : Bool) (sumBound : sum<2^33) (outputBound : output<2^32) :
    sum=output+2^32*carry.toNat ↔ output=sum%2^32 ∧ carry=decide (2^32≤sum) := by
  cases carry <;> simp [Bool.toNat] <;> omega

theorem carry_cast {F : Type} [Field F] (carry : Bool) : ((carry.toNat : Nat) : F)=bitValue carry := by
  cases carry <;> simp [Bool.toNat,bitValue]

theorem packed_add_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (x y output : Word) (carry : Bool) :
    (x.toNat : F)+(y.toNat : F)=(output.toNat : F)+(2^32 : F)*bitValue carry ↔
      output=x+y ∧ carry=decide (2^32≤x.toNat+y.toNat) := by
  have hx:=x.isLt
  have hy:=y.isLt
  have ho:=output.isLt
  have sumBound : x.toNat+y.toNat<2^33 := by omega
  have carryBound : carry.toNat≤1 := by cases carry <;> decide
  have leftBound : x.toNat+y.toNat<p := by omega
  have rightBound : output.toNat+2^32*carry.toNat<p := by omega
  have fieldExact : ((x.toNat : F)+(y.toNat : F)=(output.toNat : F)+(2^32 : F)*bitValue carry) ↔
      x.toNat+y.toNat=output.toNat+2^32*carry.toNat := by
    constructor
    · intro same
      apply CharP.natCast_injOn_Iio F p leftBound rightBound
      simpa only [Nat.cast_add,Nat.cast_mul,Nat.cast_pow,Nat.cast_ofNat,carry_cast] using same
    · intro same
      have cast:=congrArg (fun n : Nat => (n : F)) same
      simpa only [Nat.cast_add,Nat.cast_mul,Nat.cast_pow,Nat.cast_ofNat,carry_cast] using cast
  rw [fieldExact,natural_witness _ _ carry sumBound ho]
  constructor
  · rintro ⟨value,flag⟩
    refine ⟨?_,flag⟩
    apply BitVec.eq_of_toNat_eq
    simpa only [BitVec.toNat_add] using value
  · rintro ⟨value,flag⟩
    refine ⟨?_,flag⟩
    rw [value,BitVec.toNat_add]

def row (p a b output carry : Nat) : Row :=
  ⟨[⟨a,1⟩,⟨b,1⟩,⟨output,p-1⟩,⟨carry,p-2^32⟩],[⟨0,1⟩],[]⟩

theorem row_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (a b output carry : Nat) (one : valuation 0=1)
    (x y result : Word) (overflow : Bool)
    (inputA : valuation a=(x.toNat : F)) (inputB : valuation b=(y.toNat : F))
    (outputValue : valuation output=(result.toNat : F)) (carryValue : valuation carry=bitValue overflow) :
    (row p a b output carry).satisfies valuation ↔ result=x+y ∧ overflow=decide (2^32≤x.toNat+y.toNat) := by
  have largeOne : 1≤p := by omega
  have largeWord : 2^32≤p := by omega
  rw [← packed_add_exact (F:=F) fieldBound x y result overflow]
  simp only [row,Row.satisfies,evalLinear,one,inputA,inputB,outputValue,carryValue,
    canonical_negative (F:=F) 1 largeOne,canonical_negative (F:=F) (2^32) largeWord]
  simp
  rw [← add_assoc,← neg_add,← sub_eq_add_neg,sub_eq_zero]
  have power : (4294967296 : F)=(2 : F)^32 := by
    simpa only [Nat.cast_ofNat] using (Nat.cast_pow (α:=F) 2 32)
  rw [power]

end Core033.PackedAdd32
