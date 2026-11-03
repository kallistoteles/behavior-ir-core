import Core033.WordEquality

/- Fixed-phase operand selection for the remaining controller. Inactive
components receive fixed admitted dummy operands; their outputs cannot be used
as state updates. The phase is a full word, not a producer approval Boolean. -/
namespace Core033.PhaseInputRouting
open WordIR WordStage

def expression (phase : Nat) (opcode : Word) (port : Nat) (fallback : Word) : Expr :=
  ControlPrimitives.select (WordEquality.expression (.input phase) (.literal opcode)) (.input port) (.literal fallback)

def expressions (count phase : Nat) (opcode : Word) (ports : Nat → Nat) (fallback : Nat → Word) : List Expr :=
  (List.range count).map (fun index=>expression phase opcode (ports index) (fallback index))

def program (inputCount count phase : Nat) (opcode : Word) (ports : Nat → Nat) (fallback : Nat → Word) : Program :=
  WordSequence.program inputCount (expressions count phase opcode ports fallback)

theorem expression_bounded (inputCount phase port : Nat) (opcode fallback : Word)
    (phaseBound : phase<inputCount) (portBound : port<inputCount) :
    (expression phase opcode port fallback).Bounded inputCount := by
  simp [expression,WordEquality.expression,ControlPrimitives.select,ControlPrimitives.zero,
    ControlPrimitives.less,ControlPrimitives.carry,Expr.Bounded,phaseBound,portBound]

theorem expression_meaning (inputs : Nat → Word) (phase port : Nat) (opcode fallback : Word) :
    (expression phase opcode port fallback).eval inputs=
      if inputs phase=opcode then inputs port else fallback := by
  change ControlPrimitives.selectRaw (WordEquality.equalWord (inputs phase) opcode) (inputs port) fallback=_
  rw [WordEquality.equal_word_exact]
  change WordControl.selectWord (decide (inputs phase=opcode)) (inputs port) fallback=_
  rw [WordControl.select_word_exact]
  by_cases same : inputs phase=opcode <;> simp only [same,decide_true,decide_false,if_true,if_false]

theorem program_meaning (inputCount count phase : Nat) (opcode : Word) (ports : Nat → Nat)
    (fallback : Nat → Word) (phaseBound : phase<inputCount)
    (portBounds : ∀ index,index<count → ports index<inputCount) (inputs : Nat → Word) :
    (program inputCount count phase opcode ports fallback).eval inputs=
      (List.range count).map (fun index=>if inputs phase=opcode then inputs (ports index) else fallback index) := by
  rw [program,WordSequence.program_meaning]
  · simp only [expressions,List.map_map,Function.comp_def,expression_meaning]
  · intro expr member
    obtain ⟨index,inRange,rfl⟩:=List.mem_map.mp member
    exact expression_bounded inputCount phase _ opcode _ phaseBound (portBounds index (List.mem_range.mp inRange))

end Core033.PhaseInputRouting
