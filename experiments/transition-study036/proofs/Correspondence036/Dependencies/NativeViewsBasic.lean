module
public import Views.Funs
public import Views.FiniteNativeIds
@[expose] public section

namespace Correspondence036.NativeViewsBasic
open Aeneas.Std
open transition_study036

/-- Exact result of the actual extracted Rust invalidation method. -/
theorem invalidate_exact (view : views.Views) :
    views.Views.impl.invalidate view = Result.ok { view with trusted := false } := rfl

/-- No history, including one equal to the old head, can authorize an
    invalidated view through the actual extracted `matches` method. -/
theorem invalidated_never_matches (view : views.Views)
    (history : behavior_store.documents.HistoryRef) :
    (do
      let after ← views.Views.impl.invalidate view
      views.Views.impl.matches after history) = Result.ok false := by
  change Aeneas.Std.bind (Result.ok { view with trusted := false })
    (fun after => views.Views.impl.matches after history) = Result.ok false
  rw [Aeneas.Std.bind_ok]
  rfl

end Correspondence036.NativeViewsBasic
