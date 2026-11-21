module
public import Aeneas
@[expose] public section

namespace Correspondence036.DoElaboration
open Aeneas.Std
noncomputable section

set_option Aeneas.customDoElab true in
def custom_option_bind {α β : Type} (input : Result (Option α))
    (next : α → Result β) (fallback : Result β) : Result β := do
  let choice ← input
  match choice with
  | none => fallback
  | some value => next value

set_option Aeneas.customDoElab false in
def standard_option_bind {α β : Type} (input : Result (Option α))
    (next : α → Result β) (fallback : Result β) : Result β := do
  let choice ← input
  match choice with
  | none => fallback
  | some value => next value

/-- Standard Lean lowering uses the original Result bind and complete branches. -/
theorem standard_lowering_exact {α β : Type} (input : Result (Option α))
    (next : α → Result β) (fallback : Result β) :
    standard_option_bind input next fallback =
      Aeneas.Std.bind input (fun choice =>
        match choice with | none => fallback | some value => next value) := rfl

/-- The two supported frontends agree for arbitrary values and Result effects. -/
theorem custom_standard_equal {α β : Type} (input : Result (Option α))
    (next : α → Result β) (fallback : Result β) :
    custom_option_bind input next fallback =
      standard_option_bind input next fallback := rfl

#print axioms standard_lowering_exact
#print axioms custom_standard_equal
end
end Correspondence036.DoElaboration
