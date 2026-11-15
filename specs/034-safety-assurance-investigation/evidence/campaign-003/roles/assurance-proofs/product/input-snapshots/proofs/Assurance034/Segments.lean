import Assurance034.Claims
namespace Assurance034
private theorem covered_preserves {np nc} {s t : Safety.Lifecycle.State np nc}
 (h : CoveredStep np nc s t) (valid : Safety.Lifecycle.safe s) : Safety.Lifecycle.safe t := by
 cases h
 apply Safety.action_preserves <;> assumption

theorem segment_safe {np nc} {s final : Safety.Lifecycle.State np nc} {states}
 (initial : Safety.Lifecycle.safe s) (coverage : Chain (CoveredStep np nc) s states final) :
 Throughout Safety.Lifecycle.safe s states ∧ Safety.Lifecycle.safe final := by
 induction coverage with
 | nil => exact ⟨⟨initial,by simp⟩,initial⟩
 | cons step tail ih =>
   have next := covered_preserves step initial
   have rest := ih next
   refine ⟨⟨initial, ?_⟩,rest.2⟩
   intro x hx
   rcases List.mem_cons.mp hx with h | h
   · simpa [h] using next
   · exact rest.1.2 x h

theorem segments_compose {S : Type} {R : S → S → Prop} {start boundary final : S} {left right}
 (first : Chain R start left boundary) (second : Chain R boundary right final) :
 Chain R start (left ++ right) final := by
 induction first with
 | nil => exact second
 | cons h tail ih => exact .cons h (ih second)

-- Different segment predicates do not imply a global property without both bridges.
theorem policy_change_global_claim {S : Type} {P Q G : S → Prop} {start boundary : S} {left right}
 (first : Throughout P start left) (second : Throughout Q boundary right)
 (leftImplies : ∀ s, P s → G s) (rightImplies : ∀ s, Q s → G s)
 (adjoining : boundary = (left.getLast?).getD start) :
 Throughout G start (left ++ right) := by
 constructor
 · exact leftImplies start first.1
 · intro s hs
   rcases List.mem_append.mp hs with h | h
   · exact leftImplies s (first.2 s h)
   · exact rightImplies s (second.2 s h)
end Assurance034
