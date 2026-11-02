import Core033.WordControl
import Core033.PackedAdd32
import Core033.IR

namespace Core033.WideControl
open WordControl

structure Pair where
  low : Word
  high : Word
  deriving DecidableEq

def Pair.raw (word : Pair) : Nat := word.low.toNat+4294967296*word.high.toNat

theorem pair_raw_bound (word : Pair) : word.raw<2^64 := by
  have low:=word.low.isLt
  have high:=word.high.isLt
  unfold Pair.raw
  omega

def ofRaw (value : Nat) : Pair := ⟨BitVec.ofNat 32 value,BitVec.ofNat 32 (value/4294967296)⟩

theorem of_raw_value (value : Nat) : (ofRaw value).raw=value%2^64 := by
  change value%4294967296+4294967296*(value/4294967296%4294967296)=value%2^64
  exact Nat.mod_mul.symm

theorem low_split (a b : Word) :
    a.toNat+b.toNat=(a+b).toNat+4294967296*(carryWord a b).toNat := by
  have ha:=a.isLt
  have hb:=b.isLt
  have ho:=(a+b).isLt
  have carryValue : (carryWord a b).toNat=(decide (2^32≤a.toNat+b.toNat)).toNat := by
    rw [carry_word_exact]
    cases decide (2^32≤a.toNat+b.toNat) <;> rfl
  rw [carryValue]
  exact (PackedAdd32.natural_witness _ _ _ (by omega) ho).mpr ⟨rfl,rfl⟩

def add (a b : Pair) : Pair := ⟨a.low+b.low,a.high+b.high+carryWord a.low b.low⟩

theorem pair_add_exact (a b : Pair) : (add a b).raw=(a.raw+b.raw)%2^64 := by
  have split:=low_split a.low b.low
  have carryRange : (carryWord a.low b.low).toNat≤1 := by
    rw [carry_word_exact]
    exact bool_word_range _
  have la:=a.low.isLt
  have lb:=b.low.isLt
  have ha:=a.high.isLt
  have hb:=b.high.isLt
  have lo:=(a.low+b.low).isLt
  simp only [add,Pair.raw,BitVec.toNat_add]
  simp only [BitVec.toNat_add] at split
  omega

def toIR (word : Pair) : IR.Word64 := IR.Word64.ofNat word.raw

theorem to_ir_raw (word : Pair) : (toIR word).raw=word.raw := by
  rw [toIR,IR.Word64.raw_ofNat]
  exact Nat.mod_eq_of_lt (pair_raw_bound word)

theorem wrapping_add_refines_ir (a b : Pair) :
    (toIR (add a b)).raw=((toIR a).wrappingAdd (toIR b)).raw := by
  rw [to_ir_raw,IR.Word64.wrappingAdd_meaning,to_ir_raw,to_ir_raw,pair_add_exact]
  rfl

def selectPair (condition : Bool) (yes no : Pair) : Pair :=
  ⟨selectWord condition yes.low no.low,selectWord condition yes.high no.high⟩

theorem select_pair_exact (condition : Bool) (yes no : Pair) : selectPair condition yes no=(if condition then yes else no) := by
  cases condition <;> simp [selectPair,select_word_exact]

end Core033.WideControl
