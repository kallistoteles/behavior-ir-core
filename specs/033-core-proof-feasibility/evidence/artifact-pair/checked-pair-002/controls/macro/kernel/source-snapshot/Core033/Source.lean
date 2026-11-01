import Core033.IR

/- Independent restricted Rust AST/semantics. There are no statements, loops,
attributes, macros, traits, pointers, heap operations, FFI or panic constructs.
Ordinary pinned compiler/runtime/ISA conformance is the explicit remaining TCB. -/
namespace Core033.Source
open IR

inductive Expr : Ty → Type where
  | wordParameter (index : Fin 128) : Expr .word
  | bitParameter (index : Fin 64) : Expr .bit
  | wordLiteral (value : Word64) : Expr .word
  | bitLiteral (value : Bool) : Expr .bit
  | phaseField : Expr .word
  | microstepField : Expr .word
  | eventField : Expr .word
  | signedLess (left right : Expr .word) : Expr .bit
  | booleanNot (value : Expr .bit) : Expr .bit
  | booleanAnd (left right : Expr .bit) : Expr .bit
  | wrappingAdd (left right : Expr .word) : Expr .word
  | conditional (condition : Expr .bit) (yes no : Expr t) : Expr t

def eval (inputs : Inputs) : Expr t → Value t
  | .wordParameter index => inputs.words index
  | .bitParameter index => inputs.bits index
  | .wordLiteral value => value
  | .bitLiteral value => value
  | .phaseField => inputs.phase
  | .microstepField => inputs.microsteps
  | .eventField => inputs.eventPosition
  | .signedLess left right => decide ((eval inputs left).signed < (eval inputs right).signed)
  | .booleanNot value => !(eval inputs value)
  | .booleanAnd left right => eval inputs left && eval inputs right
  | .wrappingAdd left right => Word64.ofNat ((eval inputs left).raw + (eval inputs right).raw)
  | .conditional condition yes no => if eval inputs condition = true then eval inputs yes else eval inputs no

def lower : IR.Expr t → Expr t
  | .wordInput index => .wordParameter index
  | .bitInput index => .bitParameter index
  | .wordLiteral value => .wordLiteral value
  | .bitLiteral value => .bitLiteral value
  | .phase => .phaseField
  | .microsteps => .microstepField
  | .eventPosition => .eventField
  | .negative value => .signedLess (lower value) (.wordLiteral (Word64.ofNat 0))
  | .notBit value => .booleanNot (lower value)
  | .andBit left right => .booleanAnd (lower left) (lower right)
  | .addWrap left right => .wrappingAdd (lower left) (lower right)
  | .select condition yes no => .conditional (lower condition) (lower yes) (lower no)

theorem zero_signed : (Word64.ofNat 0).signed = 0 := by
  decide

theorem lower_preserves (inputs : Inputs) (expression : IR.Expr t) :
    eval inputs (lower expression) = IR.eval inputs expression := by
  induction expression with
  | wordInput index => rfl
  | bitInput index => rfl
  | wordLiteral value => rfl
  | bitLiteral value => rfl
  | phase => rfl
  | microsteps => rfl
  | eventPosition => rfl
  | negative value ih =>
      simp only [lower, eval, IR.eval, ih, zero_signed]
      apply Bool.eq_iff_iff.mpr
      simp only [decide_eq_true_eq]
      exact Word64.negative_iff _
  | notBit value ih => simp only [lower, eval, IR.eval, ih]
  | andBit left right ihl ihr => simp only [lower, eval, IR.eval, ihl, ihr]
  | addWrap left right ihl ihr => simp only [lower, eval, IR.eval, ihl, ihr, Word64.wrappingAdd]
  | select condition yes no ihc ihy ihn => simp only [lower, eval, IR.eval, ihc, ihy, ihn]

def expectedFirst : Expr .bit :=
  .signedLess (.wordParameter ⟨0, by decide⟩) (.wordLiteral (Word64.ofNat 0))

theorem first_lowering : lower firstPrimitive = expectedFirst := rfl

theorem first_native_meaning (inputs : Inputs) :
    eval inputs expectedFirst = decide ((inputs.words ⟨0, by decide⟩).signed < 0) := by
  simp only [expectedFirst, eval, zero_signed]

end Core033.Source
