module
public import Aeneas
@[expose] public section

namespace Correspondence036.NeverCall
open Aeneas.Std

/-- The continuation law is independent of the effect representation. The
    original action and bind are identical on both sides; neither may be erased. -/
theorem arbitrary_effect_continuation_irrelevant {M : Type → Type} {α : Type}
    (bindNever : M Never → (Never → M α) → M α) (action : M Never)
    (first second : Never → M α) :
    bindNever action first = bindNever action second := by
  apply congrArg (fun continuation => bindNever action continuation)
  funext impossible
  cases impossible

/-- Candidate model law only: the call itself remains present. A computation
    returning Rust's empty type has no observable normal continuation. -/
theorem continuation_irrelevant {α : Type} (call : Result Never)
    (first second : Never → Result α) :
    Aeneas.Std.bind call first = Aeneas.Std.bind call second := by
  apply congrArg (fun continuation => Aeneas.Std.bind call continuation)
  funext impossible
  cases impossible

/-- Replacing an impossible continuation must preserve the callee's actual
    error, rather than substitute a generic panic for the whole call. -/
theorem failure_preserved {α : Type} (error : Error)
    (continuation : Never → Result α) :
    Aeneas.Std.bind (Result.fail error : Result Never) continuation =
      Result.fail error := by
  exact bind_fail error continuation

/-- The repair also leaves a divergent action divergent. -/
theorem divergence_preserved {α : Type} (continuation : Never → Result α) :
    Aeneas.Std.bind (Result.div : Result Never) continuation = Result.div := by
  exact bind_div continuation

/-- A concrete observable distinction: erasing the call and keeping only a
    panic tail loses the callee's actual failure. -/
theorem failure_is_not_panic {α : Type} :
    Aeneas.Std.bind (Result.fail .integerOverflow : Result Never)
      (fun _ => (Result.fail .panic : Result α)) ≠ Result.fail .panic := by
  rw [bind_fail]
  intro equality
  have impossible : Error.integerOverflow = Error.panic :=
    Result.fail_injective equality
  cases impossible

end Correspondence036.NeverCall
