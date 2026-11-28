module
public import NativeWholeCanonicalExact
public import NativeWholeViewsMaterialize
public import Aeneas.Std.WP
@[expose] public section
open Aeneas Aeneas.Std Result
open transition_study036

/- Whole actual canonical fold under the same explicit candidate API meanings.
Only row representation premises occur here; Store export, typed-view seed and
native runtime/source adequacy remain separate obligations. -/
namespace Correspondence036.NativeWholeCanonicalFold
open NativeWholeCanonicalRow

abbrev Maps := serde_json.map.Map String Value
abbrev Folded := Rows × Rows × Option StudyError
abbrev Cursor := alloc.vec.Vec Row × Maps × Maps

def pack (result : Folded) : Maps × Maps × Option StudyError :=
  (⟨result.1⟩, ⟨result.2.1⟩, result.2.2)

private theorem next_nil :
    alloc.vec.into_iter.IteratorIntoIter.next (alloc.vec.Vec.new Row) =
      ok (none, alloc.vec.Vec.new Row) := by
  have values : ((alloc.vec.Vec.new Row : alloc.vec.into_iter.IntoIter Row) : List Row) = [] := by
    exact alloc.vec.Vec.from_val [] _
  unfold alloc.vec.into_iter.IteratorIntoIter.next
  split
  · rfl
  · rename_i head tail equation
    have impossible := values.symm.trans equation
    cases impossible

private theorem next_cons (row : Row) (tail : List Row)
    (bound : (row :: tail).length ≤ Usize.max) :
    alloc.vec.into_iter.IteratorIntoIter.next (alloc.vec.Vec.from (row :: tail) bound) =
      ok (some row, alloc.vec.Vec.from tail (Nat.le_trans (Nat.le_succ tail.length) bound)) := by
  have values : ((alloc.vec.Vec.from (row :: tail) bound :
      alloc.vec.into_iter.IntoIter Row) : List Row) = row :: tail := by
    exact alloc.vec.Vec.from_val (row :: tail) bound
  unfold alloc.vec.into_iter.IteratorIntoIter.next
  split
  · rename_i equation
    have impossible := values.symm.trans equation
    cases impossible
  · rename_i head rest equation
    have same := values.symm.trans equation
    cases same
    rfl

private theorem body_nil (parents children : Rows) :
    reference.state_fact_rows_loop.body (alloc.vec.Vec.new Row) ⟨parents⟩ ⟨children⟩ =
      ok (ControlFlow.done (serde_json.map.Map.mk parents, serde_json.map.Map.mk children, none)) := by
  unfold reference.state_fact_rows_loop.body
  rw (config := { transparency := .all }) [next_nil, bind_ok]
  all_goals rw (config := { transparency := .all }) [Aeneas.Std.uncurry_apply_pair]
  all_goals rfl

private theorem body_cons (row : Row) (tail : List Row)
    (bound : (row :: tail).length ≤ Usize.max) (parents children : Rows) :
    reference.state_fact_rows_loop.body (alloc.vec.Vec.from (row :: tail) bound) ⟨parents⟩ ⟨children⟩ =
      (do
        let (status, ps, cs) ← reference.state_fact_row row ⟨parents⟩ ⟨children⟩
        match status with
        | .Ok _ => ok (ControlFlow.cont
            (alloc.vec.Vec.from tail (Nat.le_trans (Nat.le_succ tail.length) bound), ps, cs))
        | .Err failure => ok (ControlFlow.done (ps, cs, some failure))) := by
  unfold reference.state_fact_rows_loop.body
  rw (config := { transparency := .all }) [next_cons, bind_ok]
  all_goals rw (config := { transparency := .all }) [Aeneas.Std.uncurry_apply_pair]
  all_goals rfl

private theorem eq_ok_of_spec {α : Type} {program : Result α} {expected : α}
    (h : WP.spec program (fun value => value = expected)) : program = ok expected := by
  cases program using Result.cases <;> simp_all

theorem canonical_loop_fold (rows : alloc.vec.Vec Row) (parents children : Rows)
    (domain : ∀ row ∈ rows.val, InputDomain row) :
    reference.state_fact_rows_loop rows ⟨parents⟩ ⟨children⟩ =
      ok (pack (foldRows rows.val parents children)) := by
  apply eq_ok_of_spec
  unfold reference.state_fact_rows_loop
  dsimp only [alloc.vec.into_iter.IntoIter]
  apply loop.spec_decr_nat
    (fun (state : Cursor) => state.1.val.length)
    (fun (state : Cursor) =>
      (∀ row ∈ state.1.val, InputDomain row) ∧
      foldRows state.1.val state.2.1.data state.2.2.data = foldRows rows.val parents children)
    (fun (out : Maps × Maps × Option StudyError) => out = pack (foldRows rows.val parents children))
    (fun (state : Cursor) => reference.state_fact_rows_loop.body state.1 state.2.1 state.2.2)
    (rows, serde_json.map.Map.mk parents, serde_json.map.Map.mk children)
  · rintro ⟨cursor, ⟨ps⟩, ⟨cs⟩⟩ ⟨domains, invariant⟩
    cases remaining : cursor.val with
    | nil =>
      have emptyCursor : cursor = alloc.vec.Vec.new Row := by
        apply alloc.vec.Vec.ext
        simpa only [alloc.vec.Vec.new, alloc.vec.Vec.from_val] using remaining
      rw [emptyCursor, body_nil]
      dsimp only [alloc.vec.into_iter.IntoIter]
      refine (WP.spec_ok _).2 ?_
      change pack (ps, cs, none) = pack (foldRows rows.val parents children)
      apply congrArg pack
      simpa only [remaining, foldRows] using invariant
    | cons row tail =>
      have headDomain : InputDomain row := domains row (by simp [remaining])
      have bound : (row :: tail).length ≤ Usize.max := by
        simpa only [remaining] using cursor.property
      have concreteCursor : cursor = alloc.vec.Vec.from (row :: tail) bound := by
        apply alloc.vec.Vec.ext
        simpa only [alloc.vec.Vec.from_val] using remaining
      rw [concreteCursor, body_cons]
      rw [state_fact_row_exact row ps cs headDomain]
      cases step : rowSpec row ps cs with
      | mk status maps =>
        rcases maps with ⟨ps1, cs1⟩
        cases status with
        | Ok unit =>
          simp only [bind_ok, Aeneas.Std.uncurry_apply_pair]
          dsimp only [alloc.vec.into_iter.IntoIter]
          refine (WP.spec_ok _).2 ?_
          constructor
          · constructor
            · intro item present
              apply domains item
              simp only [alloc.vec.Vec.from_val] at present
              rw [remaining]
              exact List.mem_cons_of_mem row present
            · simpa only [remaining, foldRows, step, alloc.vec.Vec.from_val] using invariant
          · simp only [alloc.vec.Vec.from_val, remaining, List.length_cons]
            exact Nat.lt_succ_self _
        | Err failure =>
          simp only [bind_ok, Aeneas.Std.uncurry_apply_pair]
          dsimp only [alloc.vec.into_iter.IntoIter]
          refine (WP.spec_ok _).2 ?_
          change pack (ps1, cs1, some failure) = pack (foldRows rows.val parents children)
          apply congrArg pack
          simpa only [remaining, foldRows, step] using invariant
  · exact ⟨domain, rfl⟩

def encoded (result : Folded) : core.result.Result Value StudyError :=
  match result.2.2 with
  | some failure => .Err failure
  | none => .Ok (.Object ⟨put (put .nil "parents" (.Object ⟨result.1⟩))
      "children" (.Object ⟨result.2.1⟩)⟩)

theorem canonical_rows_exact (rows : alloc.vec.Vec Row)
    (domain : ∀ row ∈ rows.val, InputDomain row) :
    reference.state_fact_rows rows = ok (encoded (foldRows rows.val .nil .nil)) := by
  unfold reference.state_fact_rows
  dsimp only [alloc.vec.into_iter.IntoIter]
  simp only [NativeJsonMapOperations.empty_new, alloc.vec.IntoIteratorVec.into_iter,
    alloc.vec.into_iter.IntoIter, bind_ok, Aeneas.Std.uncurry_apply_pair]
  rw [canonical_loop_fold rows .nil .nil domain]
  simp only [bind_ok, pack, Aeneas.Std.uncurry_apply_pair]
  cases folded : foldRows rows.val .nil .nil with
  | mk ps rest =>
    rcases rest with ⟨cs, failure⟩
    cases failure with
    | some error => rfl
    | none =>
      simp [encoded, put, NativeProjectionLaws.put,
        _root_.Str.Insts.AllocBorrowToOwnedString.to_owned,
        NativeStringCodec.own_result_decoded _ _ NativeWholeViewsMaterialize.parents_decoded,
        NativeStringCodec.own_result_decoded _ _ NativeWholeViewsMaterialize.children_decoded,
        NativeJsonMapOperations.insert_spec, Aeneas.Std.uncurry_apply_pair]

end Correspondence036.NativeWholeCanonicalFold
