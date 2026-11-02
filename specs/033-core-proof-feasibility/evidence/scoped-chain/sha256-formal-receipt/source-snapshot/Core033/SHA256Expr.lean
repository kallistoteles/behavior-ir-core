import Core033.SHA256Words

namespace Core033.SHA256Expr
open R1CS SHA256Circuit SHA256Words

inductive Expr where
  | input (index : Fin 24)
  | literal (word : Word)
  | band (a b : Expr)
  | bxor (a b : Expr)
  | bnot (a : Expr)
  | badd (a b : Expr)
  | rotr (a : Expr) (shift : Nat)
  | shr (a : Expr) (shift : Nat)

def eval (inputs : Fin 24 → Word) : Expr → Word
  | .input index => inputs index
  | .literal word => word
  | .band a b => eval inputs a &&& eval inputs b
  | .bxor a b => eval inputs a ^^^ eval inputs b
  | .bnot a => ~~~(eval inputs a)
  | .badd a b => eval inputs a + eval inputs b
  | .rotr a shift => (eval inputs a).rotateRight shift
  | .shr a shift => (eval inputs a).ushiftRight shift

/-- Every constructor discharges actual numeric polynomial rows or an exact
wire permutation. No SHA oracle or assumed word-operation correctness appears. -/
inductive Realizes {F : Type} [Field F] (p : Nat) (valuation : Nat → F) (inputs : Fin 24 → Wires) : Expr → Wires → Prop where
  | input (index : Fin 24) : Realizes p valuation inputs (.input index) (inputs index)
  | literal (word : Word) (output : Wires)
      (rows : ∀ i, (literalRow (output i) (word.getLsbD i.val)).satisfies valuation) :
      Realizes p valuation inputs (.literal word) output
  | band {a b : Expr} {left right output : Wires}
      (first : Realizes p valuation inputs a left) (second : Realizes p valuation inputs b right)
      (rows : ∀ i, (andRow (left i) (right i) (output i)).satisfies valuation) :
      Realizes p valuation inputs (.band a b) output
  | bxor {a b : Expr} {left right output : Wires}
      (first : Realizes p valuation inputs a left) (second : Realizes p valuation inputs b right)
      (rows : ∀ i, (xorRow p (left i) (right i) (output i)).satisfies valuation) :
      Realizes p valuation inputs (.bxor a b) output
  | bnot {a : Expr} {input output : Wires} (child : Realizes p valuation inputs a input)
      (rows : ∀ i, (notRow p (input i) (output i)).satisfies valuation) :
      Realizes p valuation inputs (.bnot a) output
  | badd {a b : Expr} {left right output : Wires}
      (first : Realizes p valuation inputs a left) (second : Realizes p valuation inputs b right)
      (carry : Fin 33 → Nat) (scratch : Fin 32 → AdderScratch)
      (rows : AddWord p valuation left right output carry scratch) :
      Realizes p valuation inputs (.badd a b) output
  | rotr {a : Expr} {input : Wires} (child : Realizes p valuation inputs a input) (shift : Nat) :
      Realizes p valuation inputs (.rotr a shift) (rotated input shift)
  | shr {a : Expr} {input : Wires} (child : Realizes p valuation inputs a input) (shift zeroWire : Nat)
      (zero : valuation zeroWire = 0) :
      Realizes p valuation inputs (.shr a shift) (shifted input shift zeroWire)

theorem realizes_sound {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (valuation : Nat → F) (inputWires : Fin 24 → Wires) (inputs : Fin 24 → Word)
    (one : valuation 0 = 1) (encoded : ∀ i, Encodes valuation (inputWires i) (inputs i))
    (expr : Expr) (output : Wires) (relation : Realizes p valuation inputWires expr output) :
    Encodes valuation output (eval inputs expr) := by
  induction relation with
  | input index => exact encoded index
  | literal word output rows =>
      intro index
      exact (literal_row_exact valuation (output index) _ one).mp (rows index)
  | band first second rows ihl ihr => exact (and_word_exact valuation _ _ _ _ _ ihl ihr).mp rows
  | bxor first second rows ihl ihr => exact (xor_word_exact positive valuation _ _ _ _ _ ihl ihr).mp rows
  | bnot child rows ih => exact (not_word_exact positive valuation _ _ _ one ih).mp rows
  | badd first second carry scratch rows ihl ihr =>
      exact add_word_sound positive valuation _ _ _ carry scratch _ _ ihl ihr rows
  | rotr child shift ih => exact rotation_exact valuation _ _ shift ih
  | shr child shift zeroWire zero ih => exact shift_exact valuation _ _ shift zeroWire ih zero

end Core033.SHA256Expr
