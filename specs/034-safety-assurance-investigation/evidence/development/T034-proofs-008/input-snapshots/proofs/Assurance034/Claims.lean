import Assurance034.Imports
namespace Assurance034
inductive ClaimClass where
 | program_preservation | state_validity | exact_transition
 | segment_safety | exact_prefix | authoritative_publication
 deriving DecidableEq, Repr
inductive PremiseStatus where
 | checked | explicit_trust | unestablished | violated
 deriving DecidableEq, Repr
structure Subject where
 lineage : String
 position : Nat
 stateIdentity : String
 historyIdentity : String
 behavior : String
 policies : String
 deriving DecidableEq, Repr
-- A known failed proof is never an admissible trusted premise.
def premiseAdmissible (failedProof : Bool) (status : PremiseStatus) : Prop :=
 failedProof = false ∧ (status = .checked ∨ status = .explicit_trust)

-- Full exact-module/checker/projection premises from the actual Safety theorem.
-- No constructor assumes the post-state is safe.
inductive CoveredStep (np nc : Nat) : Safety.Lifecycle.State np nc → Safety.Lifecycle.State np nc → Prop where
 | checked (m : Safety.LifecycleData) (checked : Safety.checkLifecycle m = true)
   (a : Safety.CoreAction) (ha : a ∈ m.actions)
   (d : Safety.LifecyclePolicy) (di : Nat) (hd : (d,di) ∈ m.dependencies.zipIdx)
   (b : Safety.RuntimeBindings np nc) (s result : Safety.Lifecycle.State np nc)
   (holds : List Nat → Prop) (roots : ∀ hash ∈ a.roots, holds hash)
   (semantics : Safety.ProbeSemantics a di b s holds)
   (core : ∀ o ∈ a.operations, Safety.OrdinaryCoreConditions a d o b s)
   (execution : result = Safety.LifecycleDependency.execute (Safety.projectedOperations a d di a.operations b) s) :
   CoveredStep np nc s result

inductive Chain {S : Type} (step : S → S → Prop) : S → List S → S → Prop where
 | nil (s) : Chain step s [] s
 | cons {s t final rest} : step s t → Chain step t rest final → Chain step s (t::rest) final

def Throughout {S : Type} (Q : S → Prop) (start : S) (states : List S) : Prop :=
 Q start ∧ ∀ s ∈ states, Q s
end Assurance034
