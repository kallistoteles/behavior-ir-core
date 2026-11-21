module
public import NativeProjectionLaws
public import Aeneas.Std.WP
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Unchecked draft for an exact conserved loop under candidate dependencies.
Native map/cursor order, library/compiler/effects and whole Core remain open. -/
namespace Correspondence036.NativeMaterializeLoop
open NativeProjectionLaws

def foldRows (basis : Rows) (rows : List (String × views.ChildRow)) (children : Rows) : Rows :=
  rows.foldl (fun acc entry => put acc entry.1
    (.Object ⟨projectedFields basis entry.2.owner entry.2.phase⟩)) children

private theorem eq_ok_of_total_spec {α : Type} {program : Result α} {expected : α}
    (h : WP.spec program (fun value => value = expected)) : program = ok expected := by
  cases program using Result.cases <;> simp_all

theorem materialize_loop1_fold (basis children : Rows)
    (rows : List (String × views.ChildRow)) :
    views.Views.impl.materialize_loop1 ⟨basis⟩ ⟨rows⟩ ⟨children⟩ =
      ok (serde_json.map.Map.mk (foldRows basis rows children)) := by
  apply eq_ok_of_total_spec
  unfold views.Views.impl.materialize_loop1
  apply loop.spec_decr_nat
    (fun state => state.1.remaining.length)
    (fun state => foldRows basis state.1.remaining state.2.data = foldRows basis rows children)
    (fun out => out = serde_json.map.Map.mk (foldRows basis rows children))
    (fun state => views.Views.impl.materialize_loop1.body ⟨basis⟩ state.1 state.2)
    (alloc.collections.btree.map.Iter.mk rows, serde_json.map.Map.mk children)
  · rintro ⟨⟨remaining⟩, ⟨acc⟩⟩ invariant
    cases remaining with
    | nil =>
      rw [NativeProjectionLaws.materialize_empty]
      simp only [WP.spec_ok]
      apply congrArg serde_json.map.Map.mk
      simpa only [foldRows, List.foldl_nil] using invariant
    | cons entry tail =>
      rcases entry with ⟨id, row⟩
      rw [NativeProjectionLaws.materialize_step]
      simp only [WP.spec_ok]
      constructor
      · simpa only [foldRows, List.foldl_cons] using invariant
      · exact Nat.lt_succ_self _
  · rfl

end Correspondence036.NativeMaterializeLoop
