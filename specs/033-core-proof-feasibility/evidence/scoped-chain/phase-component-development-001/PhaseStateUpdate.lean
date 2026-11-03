import Core033.PhaseInputRouting

/- Each next-state word is either preserved or comes from a bounded result port
in the admitted phase. This is an output mux contract, not whole K acceptance. -/
namespace Core033.PhaseStateUpdate
open WordIR WordStage

def expression (phase : Nat) (opcode : Word) (current result : Nat) : Expr :=
  ControlPrimitives.select (WordEquality.expression (.input phase) (.literal opcode))
    (.input result) (.input current)

def program (inputCount count phase : Nat) (opcode : Word)
    (current result : Nat → Nat) : Program :=
  WordSequence.program inputCount ((List.range count).map
    (fun index=>expression phase opcode (current index) (result index)))

theorem expression_bounded (inputCount phase current result : Nat) (opcode : Word)
    (phaseBound : phase<inputCount) (currentBound : current<inputCount)
    (resultBound : result<inputCount) :
    (expression phase opcode current result).Bounded inputCount := by
  simp [expression,WordEquality.expression,ControlPrimitives.select,ControlPrimitives.zero,
    ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded,phaseBound,currentBound,resultBound]

theorem expression_meaning (inputs : Nat → Word) (phase current result : Nat) (opcode : Word) :
    (expression phase opcode current result).eval inputs=
      if inputs phase=opcode then inputs result else inputs current := by
  change ControlPrimitives.selectRaw (WordEquality.equalWord (inputs phase) opcode) (inputs result) (inputs current)=_
  rw [WordEquality.equal_word_exact]
  change WordControl.selectWord (decide (inputs phase=opcode)) (inputs result) (inputs current)=_
  rw [WordControl.select_word_exact]
  by_cases same : inputs phase=opcode <;> simp [same]

theorem program_meaning (inputCount count phase : Nat) (opcode : Word)
    (current result : Nat → Nat) (phaseBound : phase<inputCount)
    (currentBounds : ∀ index,index<count → current index<inputCount)
    (resultBounds : ∀ index,index<count → result index<inputCount) (inputs : Nat → Word) :
    (program inputCount count phase opcode current result).eval inputs=
      (List.range count).map (fun index=>if inputs phase=opcode then inputs (result index) else inputs (current index)) := by
  rw [program,WordSequence.program_meaning]
  · simp only [List.map_map,Function.comp_def,expression_meaning]
  · intro expr member
    obtain ⟨index,inRange,rfl⟩:=List.mem_map.mp member
    exact expression_bounded inputCount phase _ _ opcode phaseBound
      (currentBounds index (List.mem_range.mp inRange)) (resultBounds index (List.mem_range.mp inRange))

theorem inactive_preserves (inputCount count phase : Nat) (opcode : Word)
    (current result : Nat → Nat) (phaseBound : phase<inputCount)
    (currentBounds : ∀ index,index<count → current index<inputCount)
    (resultBounds : ∀ index,index<count → result index<inputCount) (inputs : Nat → Word)
    (inactive : inputs phase≠opcode) :
    (program inputCount count phase opcode current result).eval inputs=
      (List.range count).map (fun index=>inputs (current index)) := by
  rw [program_meaning inputCount count phase opcode current result phaseBound currentBounds resultBounds]
  simp only [inactive,if_false]

theorem active_updates (inputCount count phase : Nat) (opcode : Word)
    (current result : Nat → Nat) (phaseBound : phase<inputCount)
    (currentBounds : ∀ index,index<count → current index<inputCount)
    (resultBounds : ∀ index,index<count → result index<inputCount) (inputs : Nat → Word)
    (active : inputs phase=opcode) :
    (program inputCount count phase opcode current result).eval inputs=
      (List.range count).map (fun index=>inputs (result index)) := by
  rw [program_meaning inputCount count phase opcode current result phaseBound currentBounds resultBounds]
  simp only [active,if_true]

end Core033.PhaseStateUpdate
