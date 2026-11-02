import Core033.CanonicalLinear

namespace Core033.CanonicalShape
open R1CS

theorem normalize_ordered_identity (terms : Linear)
    (ordered : terms.Pairwise (fun a b=>a.wire<b.wire))
    (nonzero : ∀ term∈terms,term.coefficient≠0) : CanonicalLinear.normalize terms=terms := by
  induction terms with
  | nil => rfl
  | cons term rest ih =>
    have pair:=List.pairwise_cons.mp ordered
    have tailNonzero : ∀ t∈rest,t.coefficient≠0 := by
      intro t member;exact nonzero t (List.mem_cons_of_mem term member)
    rw [CanonicalLinear.normalize,ih pair.2 tailNonzero]
    have current:=nonzero term (by simp)
    cases rest with
    | nil => simp [CanonicalLinear.insert,current]
    | cons head tail =>
      have earlier:=pair.1 head (by simp)
      simp [CanonicalLinear.insert,current,earlier]

theorem linear_shape (p count : Nat) (terms : Linear)
    (bounds : ∀ term∈terms,term.wire<count ∧ 0<term.coefficient ∧ term.coefficient<p)
    (ordered : terms.Pairwise (fun a b=>a.wire<b.wire)) : linearWellFormed p count terms=true := by
  simp only [linearWellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq]
  exact ⟨bounds,ordered⟩

theorem empty_shape (p count : Nat) : linearWellFormed p count []=true := by simp [linearWellFormed]

theorem singleton_shape (p count wire coefficient : Nat)
    (bound : wire<count) (positive : 0<coefficient) (small : coefficient<p) :
    linearWellFormed p count [⟨wire,coefficient⟩]=true := by
  apply linear_shape
  · intro term member
    simp only [List.mem_singleton] at member
    subst term
    exact ⟨bound,positive,small⟩
  · exact List.pairwise_singleton _ _

end Core033.CanonicalShape
