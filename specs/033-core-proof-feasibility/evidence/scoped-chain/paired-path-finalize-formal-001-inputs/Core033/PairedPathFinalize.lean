import Core033.WordSequence
import Core033.WordEquality

/- Local admitted-path completion, not a public Core endpoint.
State79..86 anchors the expected old root;87..88 its expected count.
The caller must bind those immutable words to the prior certified subject and
establish initialization/each preceding round and all original path coordinates. -/
namespace Core033.PairedPathFinalize
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def stateExpression (index : Nat) : Expr := if index=0 then .literal 8 else .input index
def finalState (inputs : Nat → Word) (index : Nat) : Word := if index=0 then 8 else inputs index

def guardExpression (index : Nat) : Expr :=
  if index=0 then WordEquality.expression (.input 0) (.literal 7)
  else if index=1 then WordEquality.expression (.input 2) (.literal 256)
  else if index<10 then WordEquality.expression (.input (55+(index-2))) (.input (79+(index-2)))
  else if index<12 then WordEquality.expression (.input (63+(index-10))) (.input (87+(index-10)))
  else if index=12 then WordEquality.expression (.input 65) (.literal 1)
  else if index=13 then WordEquality.expression (.input 66) (.literal 1)
  else if index=14 then WordEquality.expression (.input 77) (.literal 1)
  else WordEquality.expression (.input 78) (.literal 1)

def predicate (inputs : Nat → Word) (index : Nat) : Prop :=
  if index=0 then inputs 0=7
  else if index=1 then inputs 2=256
  else if index<10 then inputs (55+(index-2))=inputs (79+(index-2))
  else if index<12 then inputs (63+(index-10))=inputs (87+(index-10))
  else if index=12 then inputs 65=1
  else if index=13 then inputs 66=1
  else if index=14 then inputs 77=1
  else inputs 78=1

def guardValue (inputs : Nat → Word) (index : Nat) : Word :=
  (guardExpression index).eval inputs
def Admitted (inputs : Nat → Word) : Prop := ∀ index,index<16 → predicate inputs index

def expressions : List Expr := (List.range 96).map stateExpression++(List.range 16).map guardExpression
def program := WordSequence.program 96 expressions

theorem state_bounded (index : Nat) (bound : index<96) : (stateExpression index).Bounded 96 := by
  simp only [stateExpression]
  split_ifs <;> simp [Expr.Bounded,bound]

theorem guard_bounded (index : Nat) (bound : index<16) : (guardExpression index).Bounded 96 := by
  unfold guardExpression
  split_ifs <;> simp [WordEquality.expression,ControlPrimitives.zero,
    ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded] <;> omega

theorem state_meaning (inputs : Nat → Word) (index : Nat) :
    (stateExpression index).eval inputs=finalState inputs index := by
  unfold stateExpression finalState
  split_ifs <;> rfl

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    (List.range 96).map (finalState inputs)++(List.range 16).map (guardValue inputs) := by
  rw [program,WordSequence.program_meaning]
  · simp only [expressions,List.map_append,List.map_map,Function.comp_def,state_meaning,guardValue]
    rfl
  · intro expr member
    simp only [expressions,List.mem_append,List.mem_map,List.mem_range] at member
    rcases member with ⟨index,bound,rfl⟩|⟨index,bound,rfl⟩
    · exact state_bounded index bound
    · exact guard_bounded index bound

theorem bool_word_eq_one (bit : Bool) : WordControl.boolWord bit=1 ↔ bit=true := by
  cases bit <;> decide

theorem guard_exact (inputs : Nat → Word) (index : Nat) :
    guardValue inputs index=1 ↔ predicate inputs index := by
  unfold guardValue guardExpression predicate
  split_ifs
  all_goals
    rw [WordEquality.expression_meaning,WordEquality.equal_word_exact,bool_word_eq_one,decide_eq_true_eq]
    rfl

theorem admission_exact (inputs : Nat → Word) :
    ((List.range 16).map (guardValue inputs)).all (fun flag=>decide (flag=1))=true ↔ Admitted inputs := by
  simp only [List.all_map,List.all_eq_true,List.mem_range,Function.comp_def,decide_eq_true_eq,guard_exact,Admitted]

theorem admitted_phase (inputs : Nat → Word) (admitted : Admitted inputs) : inputs 0=7 :=
  admitted 0 (by decide)

theorem admitted_counter (inputs : Nat → Word) (admitted : Admitted inputs) : inputs 2=256 :=
  admitted 1 (by decide)

theorem admitted_old_root (inputs : Nat → Word) (admitted : Admitted inputs)
    (index : Nat) (bound : index<8) : inputs (55+index)=inputs (79+index) := by
  have exactWord:=admitted (2+index) (by omega)
  have zero : 2+index≠0 := by omega
  have one : 2+index≠1 := by omega
  have range : 2+index<10 := by omega
  have offset : 2+index-2=index := by omega
  simpa only [predicate,if_neg zero,if_neg one,if_pos range,offset] using exactWord

theorem admitted_old_count (inputs : Nat → Word) (admitted : Admitted inputs)
    (index : Nat) (bound : index<2) : inputs (63+index)=inputs (87+index) := by
  have exactWord:=admitted (10+index) (by omega)
  have zero : 10+index≠0 := by omega
  have one : 10+index≠1 := by omega
  have notRoot : ¬10+index<10 := by omega
  have range : 10+index<12 := by omega
  have offset : 10+index-10=index := by omega
  simpa only [predicate,if_neg zero,if_neg one,if_neg notRoot,if_pos range,offset] using exactWord

theorem admitted_old_flags (inputs : Nat → Word) (admitted : Admitted inputs) :
    inputs 65=1 ∧ inputs 66=1 := ⟨admitted 12 (by decide),admitted 13 (by decide)⟩

theorem admitted_new_flags (inputs : Nat → Word) (admitted : Admitted inputs) :
    inputs 77=1 ∧ inputs 78=1 := ⟨admitted 14 (by decide),admitted 15 (by decide)⟩

theorem state_preserved (inputs : Nat → Word) (index : Nat) (notPhase : index≠0) :
    finalState inputs index=inputs index := if_neg notPhase

theorem final_phase (inputs : Nat → Word) : finalState inputs 0=8 := rfl

end Core033.PairedPathFinalize
