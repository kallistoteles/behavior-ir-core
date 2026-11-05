import Core033.WordSequence
import Core033.WordEquality

/- Local continuation between two completed six-phase paired rounds.
Inputs0..95 are the preceding state; inputs96..107 are the next sibling.
This does not establish that the preceding round ran or bind a public endpoint.
The global caller must preserve origin/root/coordinates and terminal obligations. -/
namespace Core033.PairedPathReload
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def expression (index : Nat) : Expr :=
  if index=0 then .literal 1
  else if 11≤index ∧ index<23 then .input (55+(index-11))
  else if 23≤index ∧ index<35 then .input (67+(index-23))
  else if 35≤index ∧ index<47 then .input (96+(index-35))
  else .input index

def guards : List Expr :=
  [WordEquality.expression (.input 0) (.literal 7),
    ControlPrimitives.less (.literal 0) (.input 2),
    ControlPrimitives.less (.input 2) (.literal 256)]

def expressions : List Expr := (List.range 96).map expression++guards
def program := WordSequence.program 108 expressions

def reloaded (inputs : Nat → Word) (index : Nat) : Word :=
  if index=0 then 1
  else if 11≤index ∧ index<23 then inputs (55+(index-11))
  else if 23≤index ∧ index<35 then inputs (67+(index-23))
  else if 35≤index ∧ index<47 then inputs (96+(index-35))
  else inputs index

theorem expression_bounded (index : Nat) (bound : index<96) : (expression index).Bounded 108 := by
  unfold expression
  split_ifs <;> simp [Expr.Bounded] <;> omega

theorem expression_meaning (inputs : Nat → Word) (index : Nat) :
    (expression index).eval inputs=reloaded inputs index := by
  unfold expression reloaded
  split_ifs <;> rfl

theorem guards_bounded : ∀ guard∈guards,guard.Bounded 108 := by
  simp [guards,WordEquality.expression,ControlPrimitives.zero,ControlPrimitives.less,
    ControlPrimitives.carry,Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=
    (List.range 96).map (reloaded inputs)++
      [WordEquality.equalWord (inputs 0) 7,
       WordControl.lessWord 0 (inputs 2),WordControl.lessWord (inputs 2) 256] := by
  rw [program,WordSequence.program_meaning]
  · simp only [expressions,List.map_append,List.map_map,Function.comp_def,expression_meaning,
      guards,List.map_cons,List.map_nil]
    rfl
  · intro expr member
    simp only [expressions,List.mem_append,List.mem_map,List.mem_range] at member
    rcases member with ⟨index,bound,rfl⟩|guard
    · exact expression_bounded index bound
    · exact guards_bounded expr guard

theorem bool_word_eq_one (bit : Bool) : WordControl.boolWord bit=1 ↔ bit=true := by
  cases bit <;> decide

theorem admission_exact (inputs : Nat → Word) :
    (WordEquality.equalWord (inputs 0) 7=1 ∧ WordControl.lessWord 0 (inputs 2)=1 ∧
      WordControl.lessWord (inputs 2) 256=1) ↔
    inputs 0=7 ∧ 0<(inputs 2).toNat ∧ (inputs 2).toNat<256 := by
  simp only [WordEquality.equal_word_exact,WordControl.less_word_exact,bool_word_eq_one,
    decide_eq_true_eq]
  rfl

theorem next_phase (inputs : Nat → Word) : reloaded inputs 0=1 := rfl

theorem counter_preserved (inputs : Nat → Word) : reloaded inputs 2=inputs 2 := rfl

theorem old_parent_becomes_child (inputs : Nat → Word) (index : Nat) (bound : index<12) :
    reloaded inputs (11+index)=inputs (55+index) := by
  simp only [reloaded]
  split_ifs <;> try omega
  all_goals
    apply congrArg inputs
    omega

theorem new_parent_becomes_child (inputs : Nat → Word) (index : Nat) (bound : index<12) :
    reloaded inputs (23+index)=inputs (67+index) := by
  simp only [reloaded]
  split_ifs <;> try omega
  all_goals
    apply congrArg inputs
    omega

theorem next_sibling_exact (inputs : Nat → Word) (index : Nat) (bound : index<12) :
    reloaded inputs (35+index)=inputs (96+index) := by
  simp only [reloaded]
  split_ifs <;> try omega
  all_goals
    apply congrArg inputs
    omega

theorem original_preserved (inputs : Nat → Word) (index : Nat) (bound : index<96)
    (notPhase : index≠0) (notOld : ¬(11≤index ∧ index<23))
    (notNew : ¬(23≤index ∧ index<35)) (notSibling : ¬(35≤index ∧ index<47)) :
    reloaded inputs index=inputs index := by
  simp [reloaded,notPhase,notOld,notNew,notSibling]

theorem terminal_counter_refused (inputs : Nat → Word) (last : inputs 2=256) :
    WordControl.lessWord (inputs 2) 256≠1 := by
  rw [last,WordControl.less_word_exact]
  decide

end Core033.PairedPathReload
