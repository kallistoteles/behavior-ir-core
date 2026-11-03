import Core033.WordIR

/- A checked alias certificate for an untrusted pure-SSA sharing pass. This is
not an optimized artifact or a measured speedup. Inputs and every output remain
bound, and every old instruction must match a real instruction of a valid new
program. No producer-supplied semantic approval premise is accepted. -/
namespace Core033.WordSharingCertificate
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def rename (alias : Nat → Nat) : Op → Op
  | .literal value => .literal value
  | .band a b => .band (alias a) (alias b)
  | .bxor a b => .bxor (alias a) (alias b)
  | .badd a b => .badd (alias a) (alias b)
  | .bnot a => .bnot (alias a)
  | .rotr a n => .rotr (alias a) n
  | .shr a n => .shr (alias a) n

theorem renamed_eval (alias : Nat → Nat) (op : Op) (values : Nat → Word) :
    (rename alias op).eval values=op.eval (fun index=>values (alias index)) := by
  cases op <;> rfl

theorem consistent_lookup (ops : List Op) : ∀ first values index op,
    Consistent first ops values → ops[index]?=some op →
      values (first+index)=op.eval values := by
  induction ops with
  | nil => intro first values index op consistent found;simp at found
  | cons head tail induction =>
    intro first values index op consistent found
    cases index with
    | zero =>
      have same : head=op := Option.some.inj found
      subst op
      exact consistent.1
    | succ index =>
      have value:=induction (first+1) values index op consistent.2 found
      have indices : first+(index+1)=(first+1)+index := by omega
      exact (congrArg values indices).trans value

def checkProgram (program : Program) : Bool :=
  checkTopological program.inputCount program.operations &&
    program.outputs.all (fun output=>decide (output<program.inputCount+program.operations.length))

theorem program_check_exact (program : Program) : checkProgram program=true ↔ program.Valid := by
  simp only [checkProgram,Bool.and_eq_true,topological_check_exact,List.all_eq_true,decide_eq_true_eq,Program.Valid]

def checkSteps (target : Program) (alias : Nat → Nat) : Nat → List Op → Bool
  | _, [] => true
  | first, op::rest =>
      decide (target.inputCount≤alias first) &&
      decide (target.operations[alias first-target.inputCount]?=some (rename alias op)) &&
      checkSteps target alias (first+1) rest

theorem check_steps_append (target : Program) (alias : Nat → Nat) (left right : List Op) :
    ∀ first, checkSteps target alias first (left++right)=
      (checkSteps target alias first left && checkSteps target alias (first+left.length) right) := by
  induction left with
  | nil => intro first; simp [checkSteps]
  | cons op rest induction =>
    intro first
    simp only [List.cons_append,checkSteps,induction,List.length_cons]
    have same : first+(rest.length+1)=(first+1)+rest.length := by omega
    rw [same]
    simp only [Bool.and_assoc]

theorem checked_steps_consistent (target : Program) (alias : Nat → Nat) (ops : List Op) :
    ∀ first values,Consistent target.inputCount target.operations values →
      checkSteps target alias first ops=true →
        Consistent first ops (fun index=>values (alias index)) := by
  induction ops with
  | nil => intro first values consistent accepted;trivial
  | cons op rest induction =>
    intro first values consistent accepted
    simp only [checkSteps,Bool.and_eq_true,decide_eq_true_eq] at accepted
    obtain ⟨⟨lower,found⟩,later⟩:=accepted
    have actual:=consistent_lookup target.operations target.inputCount values
      (alias first-target.inputCount) (rename alias op) consistent found
    have index : target.inputCount+(alias first-target.inputCount)=alias first := Nat.add_sub_of_le lower
    have selected : values (alias first)=(rename alias op).eval values :=
      (congrArg values index.symm).trans actual
    exact ⟨selected.trans (renamed_eval alias op values),induction (first+1) values consistent later⟩

structure Certificate where
  aliases : List Nat
  deriving DecidableEq, Repr

def Certificate.alias (certificate : Certificate) (index : Nat) : Nat := certificate.aliases.getD index 0

def check (source target : Program) (certificate : Certificate) : Bool :=
  decide (source.inputCount=target.inputCount) &&
  checkProgram source && checkProgram target &&
  decide (certificate.aliases.length=source.inputCount+source.operations.length) &&
  (List.range source.inputCount).all (fun index=>decide (certificate.alias index=index)) &&
  decide (target.outputs=source.outputs.map certificate.alias) &&
  checkSteps target certificate.alias source.inputCount source.operations

theorem checked_program_meaning (source target : Program) (certificate : Certificate)
    (accepted : check source target certificate=true) (inputs : Nat → Word) :
    source.eval inputs=target.eval inputs := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq,program_check_exact,List.all_eq_true] at accepted
  obtain ⟨⟨⟨⟨⟨⟨counts,sourceValid⟩,targetValid⟩,aliasLength⟩,inputAliases⟩,outputs⟩,steps⟩:=accepted
  let sourceValues:=WordIR.run source.inputCount source.operations inputs
  let targetValues:=WordIR.run target.inputCount target.operations inputs
  have sourceConsistent:=run_consistent source.operations source.inputCount inputs sourceValid.1
  have targetConsistent:=run_consistent target.operations target.inputCount inputs targetValid.1
  have aliasedConsistent:=checked_steps_consistent target certificate.alias source.operations
    source.inputCount targetValues targetConsistent steps
  have sourceInputs : ∀ index,index<source.inputCount → sourceValues index=inputs index := by
    intro index bound
    exact run_keeps_prefix source.operations source.inputCount inputs index bound
  have targetInputs : ∀ index,index<source.inputCount → targetValues (certificate.alias index)=inputs index := by
    intro index bound
    have aliasSame:=inputAliases index (List.mem_range.mpr bound)
    rw [aliasSame]
    exact run_keeps_prefix target.operations target.inputCount inputs index (by omega)
  have meaning:=program_meaning_unique source sourceValid inputs sourceValues
    (fun index=>targetValues (certificate.alias index)) sourceInputs targetInputs sourceConsistent aliasedConsistent
  change source.outputs.map sourceValues=target.outputs.map targetValues
  rw [outputs,List.map_map]
  exact meaning

/- Small kernel controls for certificate completeness and binding. They are
not a claim about an optimized production source or matrix. -/
def exampleSource : Program := ⟨1,[.literal 1,.badd 0 1,.literal 1,.badd 0 3],[2,4]⟩
def exampleTarget : Program := ⟨1,[.literal 1,.badd 0 1],[2,2]⟩
def exampleCertificate : Certificate := ⟨[0,1,2,1,2]⟩

theorem honest_example_accepted : check exampleSource exampleTarget exampleCertificate=true := by decide
theorem dropped_duplicate_output_rejected :
    check exampleSource {exampleTarget with outputs:=[2]} exampleCertificate=false := by decide
theorem wrong_alias_rejected :
    check exampleSource exampleTarget ⟨[0,1,2,1,1]⟩=false := by decide
theorem changed_input_alias_rejected :
    check exampleSource exampleTarget ⟨[1,1,2,1,2]⟩=false := by decide
theorem changed_literal_rejected :
    check exampleSource {exampleTarget with operations:=[.literal 2,.badd 0 1]} exampleCertificate=false := by decide
theorem missing_alias_rejected :
    check exampleSource exampleTarget ⟨[0,1,2,1]⟩=false := by decide
theorem missing_instruction_rejected :
    check exampleSource {exampleTarget with operations:=[.literal 1]} exampleCertificate=false := by decide
theorem future_operand_rejected :
    check {exampleSource with operations:=[.literal 1,.badd 0 3,.literal 1,.badd 0 3]} exampleTarget exampleCertificate=false := by decide
theorem changed_input_count_rejected :
    check exampleSource {exampleTarget with inputCount:=2} exampleCertificate=false := by decide

end Core033.WordSharingCertificate
