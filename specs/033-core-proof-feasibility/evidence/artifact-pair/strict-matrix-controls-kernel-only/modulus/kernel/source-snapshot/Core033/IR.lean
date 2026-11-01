import Std

/- Typed value-only microstep IR, independent of any emitted Rust or matrix.
All array positions have finite static types. Modular helper arithmetic is not
Core's checked Int64 arithmetic and grants no language-level overflow shortcut. -/
namespace Core033.IR

def half : Nat := 2^63
def modulus64 : Nat := 2^64

structure Word64 where
  low : Fin half
  negative : Bool
  deriving DecidableEq

def Word64.raw (w : Word64) : Nat := w.low.val + if w.negative then half else 0
def Word64.signed (w : Word64) : Int := (w.low.val : Int) - if w.negative then (half : Int) else 0

theorem Word64.raw_bound (w : Word64) : w.raw < modulus64 := by
  have h := w.low.isLt
  cases hn : w.negative <;> simp [Word64.raw, hn, half, modulus64] at * <;> omega

theorem Word64.signed_bounds (w : Word64) :
    -(2^63 : Int) ≤ w.signed ∧ w.signed < (2^63 : Int) := by
  have h := w.low.isLt
  cases hn : w.negative <;> simp [Word64.signed, hn, half] at * <;> omega

theorem Word64.negative_iff (w : Word64) : (w.signed < 0) ↔ w.negative = true := by
  have h := w.low.isLt
  cases hn : w.negative <;> simp [Word64.signed, hn, half] at * <;> omega

def Word64.ofNat (n : Nat) : Word64 :=
  ⟨⟨n % half, Nat.mod_lt _ (by decide)⟩, decide (half ≤ n % modulus64)⟩

theorem Word64.raw_ofNat (n : Nat) : (Word64.ofNat n).raw = n % modulus64 := by
  have h := Nat.mod_lt n (show 0 < modulus64 by decide)
  have hmod : n % half = (n % modulus64) % half := by
    exact (Nat.mod_mod_of_dvd n (show half ∣ modulus64 by decide)).symm
  simp only [Word64.ofNat, Word64.raw, decide_eq_true_eq]
  rw [hmod]
  split <;> simp [half, modulus64] at * <;> omega

def Word64.wrappingAdd (a b : Word64) : Word64 := Word64.ofNat (a.raw + b.raw)

theorem Word64.wrappingAdd_meaning (a b : Word64) :
    (a.wrappingAdd b).raw = (a.raw + b.raw) % modulus64 := Word64.raw_ofNat _

inductive Ty where
  | word | bit

abbrev Value : Ty → Type
  | .word => Word64
  | .bit => Bool

structure Inputs where
  words : Fin 128 → Word64
  bits : Fin 64 → Bool
  phase : Word64
  microsteps : Word64
  eventPosition : Word64

inductive Expr : Ty → Type where
  | wordInput (index : Fin 128) : Expr .word
  | bitInput (index : Fin 64) : Expr .bit
  | wordLiteral (value : Word64) : Expr .word
  | bitLiteral (value : Bool) : Expr .bit
  | phase : Expr .word
  | microsteps : Expr .word
  | eventPosition : Expr .word
  | negative (value : Expr .word) : Expr .bit
  | notBit (value : Expr .bit) : Expr .bit
  | andBit (left right : Expr .bit) : Expr .bit
  | addWrap (left right : Expr .word) : Expr .word
  | select (condition : Expr .bit) (yes no : Expr t) : Expr t

def eval (inputs : Inputs) : Expr t → Value t
  | .wordInput index => inputs.words index
  | .bitInput index => inputs.bits index
  | .wordLiteral value => value
  | .bitLiteral value => value
  | .phase => inputs.phase
  | .microsteps => inputs.microsteps
  | .eventPosition => inputs.eventPosition
  | .negative value => (eval inputs value).negative
  | .notBit value => !(eval inputs value)
  | .andBit left right => eval inputs left && eval inputs right
  | .addWrap left right => (eval inputs left).wrappingAdd (eval inputs right)
  | .select condition yes no => if eval inputs condition = true then eval inputs yes else eval inputs no

def firstPrimitive : Expr .bit := .negative (.wordInput ⟨0, by decide⟩)

theorem firstPrimitive_signed_meaning (inputs : Inputs) :
    eval inputs firstPrimitive = decide ((inputs.words ⟨0, by decide⟩).signed < 0) := by
  simp only [firstPrimitive, eval]
  apply Bool.eq_iff_iff.mpr
  simp only [decide_eq_true_eq]
  exact (Word64.negative_iff _).symm

end Core033.IR
