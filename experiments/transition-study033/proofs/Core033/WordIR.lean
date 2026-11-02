import Core033.SHA256

/- Sharing-preserving straight-line u32 IR. SHA schedule/round registers are
computed once; compiling an expanded expression tree would duplicate work.
Actual source-byte and allocated-matrix validation remain separate obligations. -/
namespace Core033.WordIR
abbrev Word := SHA256.Word

inductive Op where
  | literal (value : Word)
  | band (a b : Nat)
  | bxor (a b : Nat)
  | bnot (a : Nat)
  | badd (a b : Nat)
  | rotr (a shift : Nat)
  | shr (a shift : Nat)
  deriving DecidableEq, Repr

def Op.eval (values : Nat → Word) : Op → Word
  | .literal value => value
  | .band a b => values a &&& values b
  | .bxor a b => values a ^^^ values b
  | .bnot a => ~~~(values a)
  | .badd a b => values a+values b
  | .rotr a shift => (values a).rotateRight shift
  | .shr a shift => (values a).ushiftRight shift

def Op.Bounded (bound : Nat) : Op → Prop
  | .literal _ => True
  | .band a b | .bxor a b | .badd a b => a < bound ∧ b < bound
  | .bnot a | .rotr a _ | .shr a _ => a < bound

instance (bound : Nat) (op : Op) : Decidable (op.Bounded bound) := by cases op <;> unfold Op.Bounded <;> infer_instance

def Topological : Nat → List Op → Prop
  | _,[] => True
  | first,op::rest => op.Bounded first ∧ Topological (first+1) rest

def checkTopological : Nat → List Op → Bool
  | _,[] => true
  | first,op::rest => decide (op.Bounded first) && checkTopological (first+1) rest

theorem topological_check_exact (ops : List Op) : ∀ first,
    checkTopological first ops = true ↔ Topological first ops := by
  induction ops with
  | nil => intro first; simp [Topological,checkTopological]
  | cons op rest ih => intro first; simp [Topological,checkTopological,ih]

def write (values : Nat → Word) (index : Nat) (value : Word) : Nat → Word :=
  fun i => if i=index then value else values i

def run : Nat → List Op → (Nat → Word) → (Nat → Word)
  | _,[],values => values
  | first,op::rest,values => run (first+1) rest (write values first (op.eval values))

theorem run_keeps_prefix (ops : List Op) : ∀ first values i, i < first → run first ops values i = values i := by
  induction ops with
  | nil => intros; rfl
  | cons op rest ih =>
      intro first values i before
      rw [run,ih (first+1) _ i (by omega)]
      simp [write,show i≠first by omega]

theorem op_eval_congr (op : Op) (bound : Nat) (a b : Nat → Word) (valid : op.Bounded bound)
    (same : ∀ i, i < bound → a i = b i) : op.eval a = op.eval b := by
  cases op with
  | literal value => rfl
  | band x y => simp only [Op.eval,same x valid.1,same y valid.2]
  | bxor x y => simp only [Op.eval,same x valid.1,same y valid.2]
  | badd x y => simp only [Op.eval,same x valid.1,same y valid.2]
  | bnot x => simp only [Op.eval,same x valid]
  | rotr x shift => simp only [Op.eval,same x valid]
  | shr x shift => simp only [Op.eval,same x valid]

def Consistent : Nat → List Op → (Nat → Word) → Prop
  | _,[],_ => True
  | first,op::rest,values => values first = op.eval values ∧ Consistent (first+1) rest values

theorem run_consistent (ops : List Op) : ∀ first values, Topological first ops →
    Consistent first ops (run first ops values) := by
  induction ops with
  | nil => intros; trivial
  | cons op rest ih =>
      intro first values valid
      change _ ∧ _
      constructor
      · have kept := run_keeps_prefix rest (first+1) (write values first (op.eval values)) first (by omega)
        change run (first+1) rest (write values first (op.eval values)) first = _
        rw [kept]
        simp only [write]
        exact op_eval_congr op first _ _ valid.1 (by
          intro i before
          exact (run_keeps_prefix (op::rest) first values i before).symm)
      · exact ih (first+1) (write values first (op.eval values)) valid.2

theorem consistent_deterministic (ops : List Op) : ∀ first a b,
    Topological first ops → Consistent first ops a → Consistent first ops b →
    (∀ i, i < first → a i = b i) → ∀ i, i < first+ops.length → a i = b i := by
  induction ops with
  | nil => intro first a b valid ca cb same i bound; exact same i (by simpa using bound)
  | cons op rest ih =>
      intro first a b valid ca cb same i bound
      have head : a first = b first := ca.1.trans ((op_eval_congr op first a b valid.1 same).trans cb.1.symm)
      apply ih (first+1) a b valid.2 ca.2 cb.2 (fun i before => ?_) i (by simp only [List.length_cons] at bound; omega)
      by_cases old : i < first
      · exact same i old
      · have index : i=first := by omega
        simpa only [index] using head

structure Program where
  inputCount : Nat
  operations : List Op
  outputs : List Nat
  deriving DecidableEq, Repr

def Program.Valid (program : Program) : Prop :=
  Topological program.inputCount program.operations ∧
  ∀ output ∈ program.outputs, output < program.inputCount+program.operations.length

def Program.eval (program : Program) (inputs : Nat → Word) : List Word :=
  program.outputs.map (run program.inputCount program.operations inputs)

theorem program_meaning_unique (program : Program) (valid : program.Valid) (inputs a b : Nat → Word)
    (aInputs : ∀ i, i < program.inputCount → a i=inputs i)
    (bInputs : ∀ i, i < program.inputCount → b i=inputs i)
    (aSteps : Consistent program.inputCount program.operations a)
    (bSteps : Consistent program.inputCount program.operations b) :
    program.outputs.map a = program.outputs.map b := by
  apply List.map_congr_left
  intro output member
  exact consistent_deterministic program.operations program.inputCount a b valid.1 aSteps bSteps
    (fun i before => (aInputs i before).trans (bInputs i before).symm) output (valid.2 output member)

end Core033.WordIR
