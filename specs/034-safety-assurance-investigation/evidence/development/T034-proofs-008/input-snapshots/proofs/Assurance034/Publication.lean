import Assurance034.Claims
namespace Assurance034
structure Publication (S R C : Type) where
 subject : Subject
 state : S
 result : R
 outbox : List C
-- A logical atomic exact-parent publication relation. No physical durability,
-- host authority, command delivery or Rust implementation theorem is asserted.
def atomicPublish {S R C : Type} (expected : Subject) (candidate current : Publication S R C) : Option (Publication S R C) :=
 if current.subject = expected then some candidate else none

theorem publication_conditional {S R C : Type} (expected : Subject)
 (candidate current published : Publication S R C)
 (accepted : atomicPublish expected candidate current = some published) :
 current.subject = expected ∧ published.subject = candidate.subject ∧ published.state = candidate.state ∧
 published.result = candidate.result ∧ published.outbox = candidate.outbox := by
 unfold atomicPublish at accepted
 split at accepted
 next h =>
  have eq := Option.some.inj accepted
  subst published
  exact ⟨h,rfl,rfl,rfl,rfl⟩
 next h => simp at accepted
end Assurance034
