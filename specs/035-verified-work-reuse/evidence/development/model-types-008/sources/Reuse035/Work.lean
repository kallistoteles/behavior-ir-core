import Reuse035.Grounds
namespace Reuse035
-- An explicit instruction trace for the admitted local decision, not elapsed
-- time or a cost claim about a native map, serialization, or complete commit.
inductive LogicalAccess where
 | childRead | ownerRead | childWrite | ownerBucketRead | ownerBucketWrite
 | prefixEvent
 deriving DecidableEq

def finishDecisionTrace : List LogicalAccess :=
 [.childRead,.ownerRead,.childWrite,.ownerBucketRead,.ownerBucketWrite]
structure CompletionCharges where
 mapAccess : Nat
 mapCopies : Nat
 historyCopies : Nat
 encodingVisits : Nat
 hashBytes : Nat
 outputBytes : Nat
-- These are nonnegative independent charges, never erased by the local bound.
def totalCharges (physical : CompletionCharges) : Nat :=
 finishDecisionTrace.length + physical.mapAccess + physical.mapCopies +
 physical.historyCopies + physical.encodingVisits + physical.hashBytes + physical.outputBytes

-- The model executes the point algorithm and returns its logical access trace.
def measuredFinish (s : State np nc) (t : Fin nc) : State np nc × List LogicalAccess :=
 (incrementalAfter s t,finishDecisionTrace)

theorem semantic_work_bound (s : State np nc) (t : Fin nc) (physical : CompletionCharges) :
 (measuredFinish s t).1 = incrementalAfter s t ∧
 (measuredFinish s t).2 = finishDecisionTrace ∧
 finishDecisionTrace.length = 5 ∧
 (finishDecisionTrace.filter (fun x => decide (x=.prefixEvent))).length = 0 ∧
 finishDecisionTrace.length ≤ totalCharges physical := by
 simp only [measuredFinish,finishDecisionTrace,List.length_cons,List.length_nil,List.filter_cons,
  List.filter_nil,decide_false,decide_true,Bool.false_eq_true,reduceIte,Prod.fst,Prod.snd,
  totalCharges]
 omega
end Reuse035
