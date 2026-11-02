import Core033.NodeCountProgram
import Core033.BooleanValues
import Core033.Views

/- Metadata representation only. Canonical node bytes, digest computation and
authenticated path/state wiring remain independent required obligations. -/
namespace Core033.NodeMetadata

structure Words where
  count : WideControl.Pair
  positive : WordControl.Word
  covered : WordControl.Word

def Represents (words : Words) (summary : Views.Summary) : Prop :=
  words.count.raw=summary.count ∧ BooleanValues.decode words.positive=some summary.positive ∧
    BooleanValues.decode words.covered=some summary.covered

def combine (left right : Words) : Words :=
  ⟨WideControl.add left.count right.count,left.positive &&& right.positive,left.covered &&& right.covered⟩

theorem combined_metadata_exact (left right : Words) (leftSummary rightSummary : Views.Summary)
    (leftExact : Represents left leftSummary) (rightExact : Represents right rightSummary)
    (bounded : leftSummary.count+rightSummary.count≤1048576) :
    (combine left right).count.raw=leftSummary.count+rightSummary.count ∧
      BooleanValues.decode (combine left right).positive=some (leftSummary.positive && rightSummary.positive) ∧
      BooleanValues.decode (combine left right).covered=some (leftSummary.covered && rightSummary.covered) := by
  refine ⟨?_,?_,?_⟩
  · change (WideControl.add left.count right.count).raw=_
    rw [NodeCounts.exact_sum _ _ (by rw [leftExact.1,rightExact.1];exact bounded),leftExact.1,rightExact.1]
  · change BooleanValues.decode (left.positive &&& right.positive)=_
    rw [BooleanValues.decoded_and _ _ _ _ leftExact.2.1 rightExact.2.1,BooleanValues.boolean_complete]
  · change BooleanValues.decode (left.covered &&& right.covered)=_
    rw [BooleanValues.decoded_and _ _ _ _ leftExact.2.2 rightExact.2.2,BooleanValues.boolean_complete]

theorem branch_summary_metadata {α : Type} (hash : Views.Node α → Views.Digest) (height : Nat)
    (left right : Words) (leftSummary rightSummary : Views.Summary)
    (leftExact : Represents left leftSummary) (rightExact : Represents right rightSummary)
    (bounded : leftSummary.count+rightSummary.count≤1048576) :
    Represents (combine left right)
      (Views.branchSummary hash height (leftSummary.count+rightSummary.count) leftSummary rightSummary) :=
  combined_metadata_exact left right leftSummary rightSummary leftExact rightExact bounded

end Core033.NodeMetadata
