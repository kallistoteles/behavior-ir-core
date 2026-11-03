import Core033.FrameHashController
import Core033.ScalarRanges

/- Adapter for an OWN sibling branch record, not a proof that its root is
authenticated. Its input is the original record's child roots/counts and its
own P/C fields. Those P/C fields are hashed; they are not asserted to describe
unauthenticated grandchildren. Full root equality and inherited valid genesis
must bind this record to the actual sibling before its summary can be reused.

33 inputs: height0,kind1,leftRoot2..9,rightRoot10..17,leftCount18/19,
rightCount20/21,ownP22,ownC23,localPhase24,SHA25..32.
43 outputs feed FrameHashController; final flags require 0<height<256.
The synthetic child flags (ownP,true,ownC,true) only reproduce the OWN branch
record's stored P/C bytes. They do not authenticate grandchild summaries. -/
namespace Core033.OwnBranchRouting
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def expression (index : Nat) : Expr :=
  if index=0 then .input 24
  else if index=1 then .input 1
  else if index=2 then .badd (.input 0) (.literal 4294967295)
  else if index<11 then .literal 0
  else if index<31 then .input (index-9)
  else if index=31 then .input 22
  else if index=32 then .literal 1
  else if index=33 then .input 23
  else if index=34 then .literal 1
  else .input (index-10)

def expressions : List Expr := (List.range 43).map expression++
  [ControlPrimitives.less (.literal 0) (.input 0),ScalarRanges.expression 8]
def program := WordSequence.program 33 expressions

def routed (inputs : Nat → Word) (index : Nat) : Word :=
  if index=0 then inputs 24
  else if index=1 then inputs 1
  else if index=2 then inputs 0+4294967295
  else if index<11 then 0
  else if index<31 then inputs (index-9)
  else if index=31 then inputs 22
  else if index=32 then 1
  else if index=33 then inputs 23
  else if index=34 then 1
  else inputs (index-10)

theorem expression_bounded (index : Nat) (bound : index<43) : (expression index).Bounded 33 := by
  unfold expression
  split_ifs <;> simp only [Expr.Bounded] <;> omega

theorem expression_meaning (inputs : Nat → Word) (index : Nat) : (expression index).eval inputs=routed inputs index := by
  unfold expression routed
  split_ifs <;> rfl

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    (List.range 43).map (routed inputs)++
      [WordControl.lessWord 0 (inputs 0),ScalarRanges.flag 8 (inputs 0)] := by
  rw [program,WordSequence.program_meaning]
  · simp only [expressions,List.map_append,List.map_map,Function.comp_def,expression_meaning,
      List.map_cons,List.map_nil]
    rfl
  · intro expr member
    simp only [expressions,List.mem_append,List.mem_map,List.mem_range,List.mem_cons,List.not_mem_nil,or_false] at member
    rcases member with ⟨index,bound,rfl⟩|rfl|rfl
    · exact expression_bounded index bound
    · simp [ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded]
    · simp [ScalarRanges.expression,ControlPrimitives.zero,ControlPrimitives.less,
        ControlPrimitives.carry,Expr.Bounded]

end Core033.OwnBranchRouting
