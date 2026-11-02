import Core033.WordComposition

namespace Core033.WordInline
open WordIR WordStage

def operations (builder : Builder) (program : Program) (ports : Nat → Nat) : List Op :=
  program.operations.map (WordComposition.Op.rename (WordComposition.mapping program.inputCount builder.next ports))

def inline (builder : Builder) (program : Program) (ports : Nat → Nat) : List Nat × Builder :=
  (program.outputs.map (WordComposition.mapping program.inputCount builder.next ports),
    ⟨builder.inputCount,(operations builder program ports).reverse++builder.reversedOperations⟩)

theorem operations_exact (builder : Builder) (program : Program) (ports : Nat → Nat) :
    (inline builder program ports).2.operations=builder.operations++operations builder program ports := by
  simp [inline,Builder.operations]

theorem extends (builder : Builder) (program : Program) (ports : Nat → Nat) :
    Extends builder (inline builder program ports).2 :=
  ⟨rfl,operations builder program ports,operations_exact builder program ports⟩

theorem next_exact (builder : Builder) (program : Program) (ports : Nat → Nat) :
    (inline builder program ports).2.next=builder.next+program.operations.length := by
  simp [inline,Builder.next,operations,List.length_map]
  omega

theorem prefix_kept (builder : Builder) (program : Program) (ports : Nat → Nat)
    (inputs : Nat → Word) (register : Nat) (before : register<builder.next) :
    (inline builder program ports).2.values inputs register=builder.values inputs register :=
  extends_values builder _ (extends builder program ports) inputs register before

theorem output_bounds (builder : Builder) (program : Program) (valid : program.Valid)
    (ports : Nat → Nat) (bounded : ∀ index,index<program.inputCount → ports index<builder.next) :
    ∀ register∈(inline builder program ports).1,register<(inline builder program ports).2.next := by
  intro register member
  obtain ⟨original,member,same⟩:=List.mem_map.mp member
  subst register
  have bound:=WordComposition.mapping_bounded program.inputCount builder.next ports bounded
    (program.inputCount+program.operations.length) (by omega) original (valid.2 original member)
  simpa only [Nat.add_sub_cancel_left,next_exact] using bound

theorem complete_meaning (builder : Builder) (program : Program) (valid : program.Valid)
    (ports : Nat → Nat) (bounded : ∀ index,index<program.inputCount → ports index<builder.next)
    (inputs : Nat → Word) :
    (inline builder program ports).1.map ((inline builder program ports).2.values inputs)=
      program.eval (fun index=>builder.values inputs (ports index)) := by
  have meaning:=WordComposition.complete_program_meaning program valid builder.next ports bounded (builder.values inputs)
  change (program.outputs.map (WordComposition.mapping program.inputCount builder.next ports)).map _=_
  rw [List.map_map]
  have execution : (inline builder program ports).2.values inputs=
      WordComposition.run program builder.next ports (builder.values inputs) := by
    unfold Builder.values
    rw [operations_exact]
    simp only [inline,WordStage.run_append,operations,WordComposition.run,←builder_next_exact]
  rw [execution]
  exact meaning

theorem topological_append (before after : List Op) : ∀ first,
    Topological first (before++after) ↔ Topological first before ∧ Topological (first+before.length) after := by
  induction before with
  | nil => intro first;simp [Topological]
  | cons operation rest ih =>
    intro first
    simp only [List.cons_append,Topological,ih,List.length_cons]
    rw [show first+(rest.length+1)=(first+1)+rest.length by omega]
    exact and_assoc.symm

theorem topological (builder : Builder) (program : Program) (valid : program.Valid)
    (beforeValid : Topological builder.inputCount builder.operations)
    (ports : Nat → Nat) (bounded : ∀ index,index<program.inputCount → ports index<builder.next) :
    Topological (inline builder program ports).2.inputCount (inline builder program ports).2.operations := by
  change Topological builder.inputCount _
  rw [operations_exact,topological_append,←builder_next_exact]
  refine ⟨beforeValid,?_⟩
  simpa only [operations,Nat.sub_self,Nat.add_zero] using
    WordComposition.renamed_topological program.inputCount builder.next ports bounded
      program.operations program.inputCount (by omega) valid.1

end Core033.WordInline
