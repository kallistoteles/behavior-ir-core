import Core033.WordSequenceOutputs
import Core033.ControlPrimitives

/- Materialize the computed activation exactly once, then route every operand.
The activation expression belongs to the fixed program. The Boolean equation
below is a proof obligation on that expression, not an extra producer input. -/
namespace Core033.MaskedRouting
open WordIR WordStage
attribute [local irreducible] WordStage.compile WordStage.emit WordSequence.compileAll

structure Config where
  inputCount : Nat
  count : Nat
  activation : Expr
  ports : Nat → Nat
  fallback : Nat → Word

def Config.initial (cfg : Config) := Builder.empty cfg.inputCount
def Config.activated (cfg : Config) := WordStage.compile cfg.activation cfg.initial
def Config.expression (cfg : Config) (index : Nat) : Expr :=
  ControlPrimitives.select (.input cfg.activated.1) (.input (cfg.ports index)) (.literal (cfg.fallback index))
def Config.expressions (cfg : Config) := (List.range cfg.count).map cfg.expression
def Config.routed (cfg : Config) := WordSequence.compileAll cfg.activated.2 cfg.expressions
def Config.program (cfg : Config) : Program := ⟨cfg.inputCount,cfg.routed.2.operations,cfg.routed.1⟩

theorem activation_meaning (cfg : Config) (bounded : cfg.activation.Bounded cfg.inputCount)
    (inputs : Nat → Word) : Meaning cfg.activated.2 inputs cfg.activated.1 (cfg.activation.eval inputs) :=
  WordStage.compile_sound cfg.activation cfg.initial inputs bounded

theorem original_bound (cfg : Config) (index : Nat) (bound : index<cfg.inputCount) :
    index<cfg.activated.2.next :=
  Nat.lt_of_lt_of_le bound (extends_next cfg.initial cfg.activated.2 (compile_extends _ _))

theorem expressions_bounded (cfg : Config) (bounded : cfg.activation.Bounded cfg.inputCount)
    (ports : ∀ index,index<cfg.count → cfg.ports index<cfg.inputCount) :
    ∀ expression∈cfg.expressions,expression.Bounded cfg.activated.2.next := by
  intro expression member
  obtain ⟨index,member,rfl⟩:=List.mem_map.mp member
  have activeBound:=(activation_meaning cfg bounded (fun _=>0)).1
  have portBound:=original_bound cfg (cfg.ports index) (ports index (List.mem_range.mp member))
  simp only [Config.expression,ControlPrimitives.select,Expr.Bounded]
  tauto

theorem expression_meaning (cfg : Config) (bounded : cfg.activation.Bounded cfg.inputCount)
    (inputs : Nat → Word) (active : Bool)
    (boolean : cfg.activation.eval inputs=WordControl.boolWord active)
    (index : Nat) (port : cfg.ports index<cfg.inputCount) :
    (cfg.expression index).eval (cfg.activated.2.values inputs)=
      if active then inputs (cfg.ports index) else cfg.fallback index := by
  have activation:=(activation_meaning cfg bounded inputs).2
  have kept:=extends_values cfg.initial cfg.activated.2 (compile_extends _ _) inputs (cfg.ports index) port
  change ControlPrimitives.selectRaw (cfg.activated.2.values inputs cfg.activated.1)
    (cfg.activated.2.values inputs (cfg.ports index)) (cfg.fallback index)=_
  rw [activation,boolean,kept]
  exact WordControl.select_word_exact active _ _

theorem program_meaning (cfg : Config) (bounded : cfg.activation.Bounded cfg.inputCount)
    (ports : ∀ index,index<cfg.count → cfg.ports index<cfg.inputCount)
    (inputs : Nat → Word) (active : Bool)
    (boolean : cfg.activation.eval inputs=WordControl.boolWord active) :
    cfg.program.eval inputs=(List.range cfg.count).map
      (fun index=>if active then inputs (cfg.ports index) else cfg.fallback index) := by
  have sound:=WordSequence.all_sound cfg.expressions cfg.activated.2 inputs
    (expressions_bounded cfg bounded ports)
  have count : cfg.routed.2.inputCount=cfg.inputCount :=
    (WordSequence.all_extends cfg.expressions cfg.activated.2).1.trans (compile_extends _ _).1
  have same:=sound.2
  change cfg.routed.1.map (cfg.routed.2.values inputs)=_ at same
  change cfg.routed.1.map (WordIR.run cfg.inputCount cfg.routed.2.operations inputs)=_
  have runSame:=congrArg (fun n=>cfg.routed.1.map (WordIR.run n cfg.routed.2.operations inputs)) count.symm
  rw [runSame,same]
  simp only [Config.expressions,List.map_map,Function.comp_def]
  apply List.map_congr_left
  intro index member
  exact expression_meaning cfg bounded inputs active boolean index (ports index (List.mem_range.mp member))

theorem output_count (cfg : Config) : cfg.program.outputs.length=cfg.count := by
  change cfg.routed.1.length=cfg.count
  rw [WordSequenceOutputs.arity]
  simp only [Config.expressions,List.length_map,List.length_range]

end Core033.MaskedRouting
