import Core033.WordStage

/- Register-sharing composition. A subprogram's inputs point to already
computed registers; its operations are appended once and outputs are aliases.
No expression-tree expansion or opaque semantic operation is introduced. -/
namespace Core033.WordComposition
open WordIR

def Op.rename (mapping : Nat → Nat) : Op → Op
  | .literal value => .literal value
  | .band a b => .band (mapping a) (mapping b)
  | .bxor a b => .bxor (mapping a) (mapping b)
  | .bnot a => .bnot (mapping a)
  | .badd a b => .badd (mapping a) (mapping b)
  | .rotr a shift => .rotr (mapping a) shift
  | .shr a shift => .shr (mapping a) shift

theorem rename_eval (mapping : Nat → Nat) (operation : Op) (values : Nat → Word) :
    (Op.rename mapping operation).eval values=operation.eval (fun index=>values (mapping index)) := by
  cases operation <;> rfl

def mapping (inputs base : Nat) (ports : Nat → Nat) (index : Nat) : Nat :=
  if index<inputs then ports index else base+(index-inputs)

theorem mapping_bounded (inputs base : Nat) (ports : Nat → Nat)
    (portsBounded : ∀ index,index<inputs → ports index<base)
    (first : Nat) (afterInputs : inputs≤first) (index : Nat) (bound : index<first) :
    mapping inputs base ports index<base+(first-inputs) := by
  unfold mapping
  split
  · rename_i input
    have :=portsBounded index input
    omega
  · omega

theorem mapping_current (inputs base : Nat) (ports : Nat → Nat) (first : Nat) (afterInputs : inputs≤first) :
    mapping inputs base ports first=base+(first-inputs) := by
  simp only [mapping,if_neg (by omega : ¬first<inputs)]

theorem rename_bounded (inputs base : Nat) (ports : Nat → Nat)
    (portsBounded : ∀ index,index<inputs → ports index<base)
    (first : Nat) (afterInputs : inputs≤first) (operation : Op) (valid : operation.Bounded first) :
    (Op.rename (mapping inputs base ports) operation).Bounded (base+(first-inputs)) := by
  cases operation with
  | literal value => trivial
  | band a b | bxor a b | badd a b =>
    exact ⟨mapping_bounded inputs base ports portsBounded first afterInputs a valid.1,
      mapping_bounded inputs base ports portsBounded first afterInputs b valid.2⟩
  | bnot a | rotr a shift | shr a shift =>
    exact mapping_bounded inputs base ports portsBounded first afterInputs a valid

theorem renamed_topological (inputs base : Nat) (ports : Nat → Nat)
    (portsBounded : ∀ index,index<inputs → ports index<base) (operations : List Op) :
    ∀ first,inputs≤first → Topological first operations →
      Topological (base+(first-inputs)) (operations.map (Op.rename (mapping inputs base ports))) := by
  induction operations with
  | nil => intro first after valid;trivial
  | cons operation rest ih =>
    intro first after valid
    refine ⟨rename_bounded inputs base ports portsBounded first after operation valid.1,?_⟩
    have next:=ih (first+1) (by omega) valid.2
    simpa only [show base+(first+1-inputs)=base+(first-inputs)+1 by omega] using next

theorem consistent_pullback (inputs base : Nat) (ports : Nat → Nat) (operations : List Op) :
    ∀ first,inputs≤first → ∀ values,
      Consistent (base+(first-inputs)) (operations.map (Op.rename (mapping inputs base ports))) values →
        Consistent first operations (fun index=>values (mapping inputs base ports index)) := by
  induction operations with
  | nil => intro first after values consistent;trivial
  | cons operation rest ih =>
    intro first after values consistent
    refine ⟨?_,?_⟩
    · rw [mapping_current inputs base ports first after,←rename_eval]
      exact consistent.1
    · apply ih (first+1) (by omega) values
      simpa only [show base+(first+1-inputs)=base+(first-inputs)+1 by omega] using consistent.2

def run (program : Program) (base : Nat) (ports : Nat → Nat) (values : Nat → Word) : Nat → Word :=
  WordIR.run base (program.operations.map (Op.rename (mapping program.inputCount base ports))) values

theorem complete_program_meaning (program : Program) (valid : program.Valid)
    (base : Nat) (ports : Nat → Nat) (portsBounded : ∀ index,index<program.inputCount → ports index<base)
    (values : Nat → Word) :
    program.outputs.map (fun index=>run program base ports values (mapping program.inputCount base ports index))=
      program.eval (fun index=>values (ports index)) := by
  let originalInputs : Nat → Word := fun index=>values (ports index)
  let after:=run program base ports values
  have topological : Topological base (program.operations.map (Op.rename (mapping program.inputCount base ports))) := by
    simpa only [Nat.sub_self,Nat.add_zero] using
      renamed_topological program.inputCount base ports portsBounded program.operations program.inputCount (by omega) valid.1
  have consistent:=WordIR.run_consistent _ base values topological
  have pulled : Consistent program.inputCount program.operations
      (fun index=>after (mapping program.inputCount base ports index)) := by
    apply consistent_pullback program.inputCount base ports program.operations program.inputCount (by omega) after
    simpa only [Nat.sub_self,Nat.add_zero] using consistent
  exact WordIR.program_meaning_unique program valid originalInputs
    (fun index=>after (mapping program.inputCount base ports index))
    (WordIR.run program.inputCount program.operations originalInputs)
    (by
      intro index bound
      simp only [mapping,if_pos bound]
      exact WordIR.run_keeps_prefix _ base values (ports index) (portsBounded index bound))
    (by intro index bound;exact WordIR.run_keeps_prefix _ program.inputCount originalInputs index bound)
    pulled (WordIR.run_consistent _ _ _ valid.1)

end Core033.WordComposition
