import Checker
namespace Core032
/-- Abstract authenticated support lookup. Collision resistance, JSON DAG
materialization and canonical serialization are explicit correspondence boundaries. -/
structure ObservationReference where
  identity : String
  deriving DecidableEq

def expandSupport (support : List (String × Observation)) (r : ObservationReference) : Option Observation :=
  (support.find? (fun entry => entry.1 == r.identity)).map Prod.snd

def checkExpansion (expected : Observation) (support : List (String × Observation))
    (r : ObservationReference) : Bool :=
  match expandSupport support r with
  | some result => true
  | none => false

theorem expansion_exact (expected : Observation) (support : List (String × Observation))
    (r : ObservationReference) (accepted : checkExpansion expected support r = true) :
    expandSupport support r = some expected := by
  unfold checkExpansion at accepted
  cases h : expandSupport support r with
  | none => simp [h] at accepted
  | some result =>
    have same : result = expected := of_decide_eq_true (by simpa [h] using accepted)
    simpa [same] using h

theorem export_roundtrip (identity : String) (observation : Observation) :
    expandSupport [(identity,observation)] ⟨identity⟩ = some observation := by
  simp [expandSupport]
end Core032
