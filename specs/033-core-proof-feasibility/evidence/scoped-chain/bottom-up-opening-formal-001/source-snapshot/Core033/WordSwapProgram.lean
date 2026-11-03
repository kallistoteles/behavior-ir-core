import Core033.BooleanValues
import Core033.ControlPrimitives

/- Ordered child/sibling words from a checked address bit. The full-u32 control
word is separately admitted as canonical Boolean; no host direction is trusted. -/
namespace Core033.WordSwapProgram
open WordIR WordStage

def choose (rightSide : Bool) (index : Nat) : Expr :=
  let left:=.input (1+index)
  let right:=.input (13+index)
  if rightSide then ControlPrimitives.select (.input 0) left right
  else ControlPrimitives.select (.input 0) right left

def expressions : List Expr := (List.range 12).map (choose false)++
  (List.range 12).map (choose true)++[ScalarRanges.expression 1]
def program : Program := WordSequence.program 25 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 25 := by
  intro expression member
  simp only [expressions,List.mem_append,List.mem_map,List.mem_singleton] at member
  rcases member with (⟨index,inRange,rfl⟩|⟨index,inRange,rfl⟩)|rfl
  · have bound:=List.mem_range.mp inRange
    simp [choose,ControlPrimitives.select,Expr.Bounded]
    omega
  · have bound:=List.mem_range.mp inRange
    simp [choose,ControlPrimitives.select,Expr.Bounded]
    omega
  · simp [ScalarRanges.expression,ControlPrimitives.zero,ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded]

def rawExpected (inputs : Nat → Word) : List Word :=
  (List.range 12).map (fun index=>ControlPrimitives.selectRaw (inputs 0) (inputs (13+index)) (inputs (1+index)))++
  (List.range 12).map (fun index=>ControlPrimitives.selectRaw (inputs 0) (inputs (1+index)) (inputs (13+index)))++
  [ScalarRanges.flag 1 (inputs 0)]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=rawExpected inputs := by
  rw [program,WordSequence.program_meaning 25 expressions expressions_bounded]
  simp only [expressions,rawExpected,List.map_append,List.map_map,List.map_cons,List.map_nil,Function.comp_def]
  rfl

theorem canonical_direction (inputs : Nat → Word) (rightSide : Bool)
    (direction : inputs 0=WordControl.boolWord rightSide) :
    program.eval inputs=
      (List.range 12).map (fun index=>if rightSide then inputs (13+index) else inputs (1+index))++
      (List.range 12).map (fun index=>if rightSide then inputs (1+index) else inputs (13+index))++[1] := by
  rw [program_meaning]
  have selectExact (yes no : Word) : ControlPrimitives.selectRaw (WordControl.boolWord rightSide) yes no=
      (if rightSide then yes else no) := WordControl.select_word_exact rightSide yes no
  have guardOne : ScalarRanges.flag 1 (WordControl.boolWord rightSide)=1 := by cases rightSide <;> decide
  simp only [rawExpected,direction,selectExact,guardOne]

end Core033.WordSwapProgram
