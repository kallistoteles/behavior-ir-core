import Core033.NodeMetadata
import Core033.ScalarRanges

/- Compute parent metadata from the two authenticated child summaries. The
producer cannot choose the resulting count or aggregate flags independently.
Authenticating each child summary remains a separate physical-K obligation. -/
namespace Core033.ParentMetadataProgram
open WordIR WordStage

def booleanExpr (index : Nat) : Expr := ControlPrimitives.zero (.shr (.input index) 1)
def expressions : List Expr := NodeCountProgram.expressions++
  [.band (.input 4) (.input 5),.band (.input 6) (.input 7)]++
    (List.range 4).map (fun index=>booleanExpr (4+index))
def program : Program := WordSequence.program 8 expressions

def left (inputs : Nat → Word) : NodeMetadata.Words := ⟨⟨inputs 0,inputs 1⟩,inputs 4,inputs 6⟩
def right (inputs : Nat → Word) : NodeMetadata.Words := ⟨⟨inputs 2,inputs 3⟩,inputs 5,inputs 7⟩
def expected (inputs : Nat → Word) : List Word := NodeCountProgram.expected inputs++
  [inputs 4 &&& inputs 5,inputs 6 &&& inputs 7]++
    (List.range 4).map (fun index=>ScalarRanges.flag 1 (inputs (4+index)))

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 8 := by
  intro expression member
  simp only [expressions,List.mem_append,List.mem_map,List.mem_range] at member
  rcases member with (count|extra)|⟨index,bound,rfl⟩
  · exact WordStage.bounded_mono expression 4 8 (by decide) (NodeCountProgram.expressions_bounded expression count)
  · simp only [List.mem_cons,List.mem_singleton] at extra
    rcases extra with rfl|rfl <;> simp [Expr.Bounded]
  · simp [booleanExpr,ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded]
    omega

theorem count_expressions (inputs : Nat → Word) :
    NodeCountProgram.expressions.map (fun expression=>expression.eval inputs)=NodeCountProgram.expected inputs := rfl

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=expected inputs := by
  rw [program,WordSequence.program_meaning 8 expressions expressions_bounded]
  simp only [expressions,List.map_append,List.map_map,Function.comp_def,count_expressions]
  rfl

theorem count_admission (inputs : Nat → Word) :
    (program.eval inputs).getD 2 0=WordControl.boolWord
      (decide ((left inputs).count.raw+(right inputs).count.raw≤1048576)) := by
  rw [program_meaning]
  change NodeCounts.allowed ⟨inputs 0,inputs 1⟩ ⟨inputs 2,inputs 3⟩=_
  exact NodeCounts.allowed_exact _ _

theorem combined_original_metadata (inputs : Nat → Word)
    (leftSummary rightSummary : Views.Summary)
    (leftExact : NodeMetadata.Represents (left inputs) leftSummary)
    (rightExact : NodeMetadata.Represents (right inputs) rightSummary)
    (bounded : leftSummary.count+rightSummary.count≤1048576) :
    NodeMetadata.Represents (NodeMetadata.combine (left inputs) (right inputs))
      (Views.branchSummary hash height (leftSummary.count+rightSummary.count) leftSummary rightSummary) :=
  NodeMetadata.branch_summary_metadata hash height _ _ _ _ leftExact rightExact bounded

end Core033.ParentMetadataProgram
