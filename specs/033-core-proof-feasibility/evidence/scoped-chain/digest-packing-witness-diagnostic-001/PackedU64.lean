import Core033.WordPorts

/- A full u64 output is constrained by two already range-checked u32 values.
No carry reduction or truncated high half is allowed. Global allocation and
actual primitive artifacts are separate mandatory obligations. -/
namespace Core033.PackedU64
open R1CS
abbrev Word := BitVec 32

def natural (low high : Word) : Nat := low.toNat+4294967296*high.toNat

theorem natural_range (low high : Word) : natural low high<2^64 := by
  have a:=low.isLt
  have b:=high.isLt
  unfold natural
  omega

def value (low high : Word) : BitVec 64 := BitVec.ofNat 64 (natural low high)

theorem value_exact (low high : Word) : (value low high).toNat=natural low high :=
  Nat.mod_eq_of_lt (natural_range low high)

def row (p low high output : Nat) : Row :=
  ⟨[⟨low,1⟩,⟨high,4294967296⟩,⟨output,p-1⟩],[⟨0,1⟩],[]⟩

theorem row_exact {F : Type} [Field F] {p : Nat} [CharP F p] (large : 2^64<p)
    (valuation : Nat → F) (low high output : Nat) (a b : Word)
    (one : valuation 0=1) (lowValue : valuation low=(a.toNat : F))
    (highValue : valuation high=(b.toNat : F)) :
    (row p low high output).satisfies valuation ↔ valuation output=((value a b).toNat : F) := by
  simp only [row,Row.satisfies,evalLinear,Nat.cast_one,one,one_mul,add_zero,mul_one,
    canonical_negative (F:=F) 1 (by omega : 1≤p),neg_one_mul,lowValue,highValue,
    value_exact,natural,Nat.cast_add,Nat.cast_mul,Nat.cast_ofNat]
  rw [←add_assoc,←sub_eq_add_neg,sub_eq_zero,eq_comm]

theorem full_u64_output_unique {F : Type} [Field F] {p : Nat} [CharP F p]
    (large : 2^64<p) (a b : Word) (claimed : BitVec 64)
    (same : (claimed.toNat : F)=((value a b).toNat : F)) : claimed=value a b :=
  WordPorts.full_port_unique large 64 (by decide) claimed (value a b) same

theorem canonical_row_shape (p count low high output : Nat) (large : 2^64<p)
    (first : low<high) (second : high<output) (last : output<count) :
    linearWellFormed p count (row p low high output).a=true ∧
    linearWellFormed p count (row p low high output).b=true ∧
    linearWellFormed p count (row p low high output).c=true := by
  have small : 1<p := by omega
  have power : 4294967296<p := by omega
  have nonzero : 0<p-1 ∧ p-1<p := by omega
  have lowBound : low<count := by omega
  have highBound : high<count := by omega
  have allBefore : low<output := by omega
  have countPositive : 0<count := by omega
  simp [row,linearWellFormed,small,power,nonzero,lowBound,highBound,last,first,second,allBefore,countPositive]

end Core033.PackedU64
