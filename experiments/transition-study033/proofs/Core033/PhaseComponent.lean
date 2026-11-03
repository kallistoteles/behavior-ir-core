import Core033.PhaseInputRouting
import Core033.WordInlineOutputs

namespace Core033.PhaseComponent
open WordIR WordStage

structure Config where
  inputCount : Nat
  phase : Nat
  opcode : Word
  body : Program
  ports : Nat → Nat
  fallback : Nat → Word

def Config.router (cfg : Config) : Program := PhaseInputRouting.program cfg.inputCount cfg.body.inputCount cfg.phase cfg.opcode cfg.ports cfg.fallback
def Config.initial (cfg : Config) : Builder := Builder.empty cfg.inputCount
def Config.routed (cfg : Config) := WordInline.inline cfg.initial cfg.router id
def Config.register (cfg : Config) (index : Nat) := WordInlineOutputs.register cfg.initial cfg.router id index
def Config.evaluated (cfg : Config) := WordInline.inline cfg.routed.2 cfg.body cfg.register
def Config.program (cfg : Config) : Program := ⟨cfg.inputCount,cfg.evaluated.2.operations,cfg.evaluated.1⟩
def Config.selected (cfg : Config) (inputs : Nat → Word) (index : Nat) : Word :=
  if inputs cfg.phase=cfg.opcode then inputs (cfg.ports index) else cfg.fallback index

theorem routing_ports (cfg : Config) : ∀ index,index<cfg.router.inputCount → id index<cfg.initial.next := by
  intro index bound
  exact bound

theorem routing_arity (cfg : Config) (phaseBound : cfg.phase<cfg.inputCount)
    (portBounds : ∀ index,index<cfg.body.inputCount → cfg.ports index<cfg.inputCount) :
    cfg.router.outputs.length=cfg.body.inputCount := by
  have meaning:=PhaseInputRouting.program_meaning cfg.inputCount cfg.body.inputCount cfg.phase cfg.opcode cfg.ports cfg.fallback phaseBound portBounds (fun _=>0)
  have length:=congrArg List.length meaning
  simpa only [WordIR.Program.eval,List.length_map,List.length_range] using length

theorem body_ports (cfg : Config) (routeValid : cfg.router.Valid)
    (phaseBound : cfg.phase<cfg.inputCount)
    (portBounds : ∀ index,index<cfg.body.inputCount → cfg.ports index<cfg.inputCount) :
    ∀ index,index<cfg.body.inputCount → cfg.register index<cfg.routed.2.next := by
  intro index bound
  exact (WordInlineOutputs.exact_output cfg.initial cfg.router routeValid id (routing_ports cfg)
    (fun _=>0) index (by rw [routing_arity cfg phaseBound portBounds];exact bound)).1

theorem selected_input (cfg : Config) (routeValid : cfg.router.Valid)
    (phaseBound : cfg.phase<cfg.inputCount)
    (portBounds : ∀ index,index<cfg.body.inputCount → cfg.ports index<cfg.inputCount)
    (inputs : Nat → Word) (index : Nat) (bound : index<cfg.body.inputCount) :
    cfg.routed.2.values inputs (cfg.register index)=cfg.selected inputs index := by
  have value:=WordInlineOutputs.exact_output cfg.initial cfg.router routeValid id (routing_ports cfg)
    inputs index (by rw [routing_arity cfg phaseBound portBounds];exact bound)
  have meaning:=PhaseInputRouting.program_meaning cfg.inputCount cfg.body.inputCount cfg.phase cfg.opcode cfg.ports cfg.fallback phaseBound portBounds inputs
  change Meaning cfg.routed.2 inputs (cfg.register index) ((cfg.router.eval inputs).getD index 0) at value
  unfold Config.router at value
  rw [meaning] at value
  simpa only [List.getD_eq_getElem?_getD,List.getElem?_map,List.getElem?_range bound,Option.map_some,Option.getD_some] using value.2

theorem program_meaning (cfg : Config) (routeValid : cfg.router.Valid) (bodyValid : cfg.body.Valid)
    (phaseBound : cfg.phase<cfg.inputCount)
    (portBounds : ∀ index,index<cfg.body.inputCount → cfg.ports index<cfg.inputCount) (inputs : Nat → Word) :
    cfg.program.eval inputs=cfg.body.eval (cfg.selected inputs) := by
  have meaning:=WordInline.complete_meaning cfg.routed.2 cfg.body bodyValid cfg.register
    (body_ports cfg routeValid phaseBound portBounds) inputs
  have same:=WordInline.input_congr cfg.body bodyValid
    (fun index=>cfg.routed.2.values inputs (cfg.register index)) (cfg.selected inputs)
    (selected_input cfg routeValid phaseBound portBounds inputs)
  exact meaning.trans same

theorem active_meaning (cfg : Config) (routeValid : cfg.router.Valid) (bodyValid : cfg.body.Valid)
    (phaseBound : cfg.phase<cfg.inputCount)
    (portBounds : ∀ index,index<cfg.body.inputCount → cfg.ports index<cfg.inputCount)
    (inputs : Nat → Word) (active : inputs cfg.phase=cfg.opcode) :
    cfg.program.eval inputs=cfg.body.eval (fun index=>inputs (cfg.ports index)) := by
  rw [program_meaning cfg routeValid bodyValid phaseBound portBounds inputs]
  apply WordInline.input_congr cfg.body bodyValid
  intro index bound
  exact if_pos active

theorem inactive_meaning (cfg : Config) (routeValid : cfg.router.Valid) (bodyValid : cfg.body.Valid)
    (phaseBound : cfg.phase<cfg.inputCount)
    (portBounds : ∀ index,index<cfg.body.inputCount → cfg.ports index<cfg.inputCount)
    (inputs : Nat → Word) (inactive : inputs cfg.phase≠cfg.opcode) :
    cfg.program.eval inputs=cfg.body.eval cfg.fallback := by
  rw [program_meaning cfg routeValid bodyValid phaseBound portBounds inputs]
  apply WordInline.input_congr cfg.body bodyValid
  intro index bound
  exact if_neg inactive

end Core033.PhaseComponent
