module
public import Aeneas

public meta section
open Lean

/-- Use the original constructor with an explicit kernel-checked length proof.
Reduction avoids simplifying every byte of a closed native array literal;
nonliteral applications retain the original simplifier fallback. -/
macro "Array.make " n:term:max values:term:max : term => do
  let original := mkIdent ``Aeneas.Std.Array.make
  `($original $n $values (by
    set_option maxRecDepth 32768 in
      first | rfl | simp))

end

@[expose] public section
namespace Correspondence036.ArrayLiteralProofs
open Aeneas.Std

/-- Proof selection cannot alter array data or its result. -/
theorem proof_argument_irrelevant {α : Type} (n : Usize) (values : List α)
    (h₁ h₂ : values.length = n.val) :
    Aeneas.Std.Array.make n values h₁ = Aeneas.Std.Array.make n values h₂ := rfl

/-- The original constructor preserves the complete list, for arbitrary values. -/
theorem data_exact {α : Type} (n : Usize) (values : List α)
    (h : values.length = n.val) :
    (Aeneas.Std.Array.make n values h).val = values := by
  exact Aeneas.Std.Array.make_val n values h

end Correspondence036.ArrayLiteralProofs
