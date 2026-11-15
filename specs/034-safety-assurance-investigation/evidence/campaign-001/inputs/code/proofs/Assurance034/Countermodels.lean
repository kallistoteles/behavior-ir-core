import Assurance034.Claims
namespace Assurance034
-- Each theorem supplies a concrete witness to a failed implication.
def tinyState (gone : Bool) : Safety.Lifecycle.State 1 1 :=
 ⟨fun _ => some gone, fun _ => some ⟨⟨0,by decide⟩,false⟩⟩
theorem current_valid_not_safe_past : ∃ (old current : Safety.Lifecycle.State 1 1),
 Safety.Lifecycle.safe current ∧ ¬ Safety.Lifecycle.safe old := by
 exact ⟨tinyState true,tinyState false,by decide,by decide⟩
theorem preservation_not_exact_output : ∃ (requested actual : Nat → Nat),
 (∀ n, n > 0 → requested n > 0) ∧ (∀ n, n > 0 → actual n > 0) ∧ requested 1 ≠ actual 1 := by
 exact ⟨id,fun n => n+1,by intro n h; exact h,by intro n _; exact Nat.zero_lt_succ n,by decide⟩
theorem certificate_not_enforcement : ∃ (approved executed : Nat → Nat) (start : Nat),
 (∀ n, n > 0 → approved n > 0) ∧ start > 0 ∧ ¬ executed start > 0 := by
 exact ⟨id,fun _ => 0,1,by intro n h; exact h,by decide,by decide⟩
theorem metadata_not_verified_basis : ∃ (flag checked : Bool), flag = true ∧ checked = false := by
 exact ⟨true,false,rfl,rfl⟩
theorem valid_branch_not_expected_branch : ∃ (expected supplied : List Nat), expected.length = supplied.length ∧ expected ≠ supplied := by
 exact ⟨[1],[2],rfl,by decide⟩
theorem uncontrolled_writer_breaks_induction : ∃ (permitted : Nat → Nat → Prop) (start bad : Nat),
 (∀ s t, permitted s t → s > 0 → t > 0) ∧ start > 0 ∧ bad = 0 ∧ ¬ permitted start bad := by
 exact ⟨fun s t => t = s,1,0,by intro s t eq hs; simpa [eq] using hs,by decide,rfl,by decide⟩
theorem unsafe_migration : ∃ (validCore safe : Nat → Prop) (old target : Nat),
 validCore old ∧ validCore target ∧ safe old ∧ ¬ safe target := by
 exact ⟨fun _ => True, fun n => n > 0,1,0,True.intro,True.intro,by decide,by decide⟩
theorem weakened_policy_not_global : ∃ (strong weak : Nat → Prop) (state : Nat), weak state ∧ ¬ strong state := by
 exact ⟨fun n => n > 0,fun _ => True,0,True.intro,by decide⟩
end Assurance034
