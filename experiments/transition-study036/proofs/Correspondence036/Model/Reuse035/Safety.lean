import Reuse035.Exact
namespace Reuse035

theorem projection_valid (s : State np nc) :
 valid s ↔ Safety.Lifecycle.safe (project s) := by
 constructor
 · intro h
   constructor <;> intro i <;> cases row : s.children i with
   | none => simp [Safety.Lifecycle.R,Safety.Lifecycle.P,project,row]
   | some child =>
     have source := h i child row
     cases hp : s.parents child.owner with
     | none => simp_all [Safety.Lifecycle.R,Safety.Lifecycle.P,project]
     | some p =>
       cases p <;> cases hc : child.phase <;>
        simp_all [Safety.Lifecycle.R,Safety.Lifecycle.P,project,prohibited]
 · intro h i child row
   have hr := h.1 i
   have hp := h.2 i
   cases parent : s.parents child.owner with
   | none => simp_all [Safety.Lifecycle.R,Safety.Lifecycle.P,project]
   | some p =>
     cases p <;> cases phase : child.phase <;>
      simp_all [Safety.Lifecycle.R,Safety.Lifecycle.P,project,prohibited]

theorem projection_finish (s : State np nc) (t : Fin nc) :
 project (incrementalAfter s t) =
 Safety.Lifecycle.apply (.childState t true) (project s) := by
 unfold project incrementalAfter Safety.Lifecycle.apply
 congr 1
 funext i
 by_cases hit : i=t
 · subst i
   cases row : s.children t <;>
    simp [project,incrementalAfter,point,Safety.Lifecycle.apply,Safety.Lifecycle.update,row,terminalize]
 · simp [project,incrementalAfter,point,Safety.Lifecycle.apply,Safety.Lifecycle.update,hit]

theorem finish_preserves_safety (s : State np nc) (t : Fin nc) (initial : valid s) :
 valid (incrementalAfter s t) := by
 apply (projection_valid _).mpr
 rw [projection_finish]
 exact Safety.LifecycleDependency.sound (.childState t true) (project s)
   ((projection_valid s).mp initial) (by simp [Safety.Lifecycle.permitted])
end Reuse035
