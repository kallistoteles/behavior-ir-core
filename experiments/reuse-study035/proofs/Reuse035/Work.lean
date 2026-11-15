import Reuse035.Grounds
namespace Reuse035
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

def totalCharges (physical : CompletionCharges) : Nat :=
 finishDecisionTrace.length + physical.mapAccess + physical.mapCopies +
 physical.historyCopies + physical.encodingVisits + physical.hashBytes + physical.outputBytes

-- Logged primitives return the data actually used by the point algorithm.
-- OwnerRead is the owner field of the bound row, not a population scan.
def readAccess (tag : LogicalAccess) (value : α) : α × List LogicalAccess := (value,[tag])
def writeAccess (tag : LogicalAccess) (f : Fin n → α) (i : Fin n) (value : α) :
 (Fin n → α) × List LogicalAccess := (point f i value,[tag])

def measuredFinish (s : State np nc) (v : Views np nc) (t : Fin nc) :
 State np nc × Views np nc × List LogicalAccess :=
 let (old,a) := readAccess .childRead (v.children t)
 match old with
 | none => (s,v,a)
 | some row =>
  let (owner,b) := readAccess .ownerRead row.owner
  let (children,c) := writeAccess .childWrite v.children t (some (terminalize row))
  let (bucket,d) := readAccess .ownerBucketRead (v.activeByOwner owner)
  let (index,e) := writeAccess .ownerBucketWrite v.activeByOwner owner (point bucket t false)
  ({s with children := children,position := s.position+1},
   {v with children := children,activeByOwner := index},a++b++c++d++e)

theorem semantic_work_bound (s : State np nc) (v : Views np nc) (t : Fin nc)
 (row : Child np) (bound : s.children t = some row) (canonical : v=rebuild s)
 (physical : CompletionCharges) :
 (measuredFinish s v t).1 = incrementalAfter s t ∧
 (measuredFinish s v t).2.1 = advance v t ∧
 (measuredFinish s v t).2.2 = finishDecisionTrace ∧
 (measuredFinish s v t).2.2.length = 5 ∧
 ((measuredFinish s v t).2.2.filter (fun x => decide (x=.prefixEvent))).length = 0 ∧
 5 ≤ totalCharges physical := by
 subst v
 simp only [measuredFinish,rebuild,readAccess,writeAccess,bound]
 refine ⟨?_,?_,rfl,rfl,by decide,?_⟩
 · simp [incrementalAfter,bound]
 · simp [advance,rebuild,bound]
 · change 5 ≤ 5 + physical.mapAccess + physical.mapCopies + physical.historyCopies +
    physical.encodingVisits + physical.hashBytes + physical.outputBytes
   omega
end Reuse035
