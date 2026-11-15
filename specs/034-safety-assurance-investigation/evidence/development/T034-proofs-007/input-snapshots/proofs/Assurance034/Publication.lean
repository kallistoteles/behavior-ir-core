import Assurance034.Claims
namespace Assurance034
structure Publication (S R C : Type) where
 subject : Subject
 state : S
 result : R
 outbox : List C
-- A logical atomic exact-parent publication relation. No physical durability,
-- host authority, command delivery or Rust implementation theorem is asserted.
def AtomicPublish {S R C : Type} (expected : Subject) (candidate current : Publication S R C) : Prop :=
 current.subject = expected

def Published {S R C : Type} (expected : Subject) (candidate current published : Publication S R C) : Prop :=
 AtomicPublish expected candidate current ∧ published = candidate

theorem publication_conditional {S R C : Type} (expected : Subject)
 (candidate current published : Publication S R C)
 (atomic : Published expected candidate current published) :
 current.subject = expected ∧ published.subject = candidate.subject ∧ published.state = candidate.state ∧
 published.result = candidate.result ∧ published.outbox = candidate.outbox := by
 rcases atomic with ⟨parent,eq⟩
 subst published
 exact ⟨parent,rfl,rfl,rfl,rfl⟩
end Assurance034
