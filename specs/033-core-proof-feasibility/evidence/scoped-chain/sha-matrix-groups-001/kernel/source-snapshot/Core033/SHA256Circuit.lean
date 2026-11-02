import Core033.R1CS
import Core033.SHA256

/- Concrete Boolean field rows used by SHA bit lowering. These are numeric
polynomial constraints; the later actual matrix/embedding checks stay mandatory. -/
namespace Core033.SHA256Circuit
open R1CS

def andRow (a b output : Nat) : Row := ⟨[⟨a,1⟩],[⟨b,1⟩],[⟨output,1⟩]⟩

def xorRow (p a b output : Nat) : Row :=
  ⟨[⟨a,2⟩],[⟨b,1⟩],[⟨a,1⟩,⟨b,1⟩,⟨output,p-1⟩]⟩

def notRow (p a output : Nat) : Row :=
  ⟨[⟨0,1⟩,⟨a,p-1⟩],[⟨0,1⟩],[⟨output,1⟩]⟩

theorem and_row_exact {F : Type} [Field F] (valuation : Nat → F) (a b output : Nat) (x y : Bool)
    (inputA : valuation a = bitValue x) (inputB : valuation b = bitValue y) :
    (andRow a b output).satisfies valuation ↔ valuation output = bitValue (x && y) := by
  cases x <;> cases y <;>
    simp [andRow,Row.satisfies,evalLinear,inputA,inputB,bitValue,eq_comm]

theorem xor_row_exact {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (valuation : Nat → F) (a b output : Nat) (x y : Bool)
    (inputA : valuation a = bitValue x) (inputB : valuation b = bitValue y) :
    (xorRow p a b output).satisfies valuation ↔ valuation output = bitValue (Bool.xor x y) := by
  simp only [xorRow,Row.satisfies,evalLinear,Nat.cast_ofNat,Nat.cast_one,one_mul,add_zero,
    canonical_negative 1 positive,inputA,inputB,neg_one_mul]
  rw [← add_assoc,← sub_eq_add_neg,eq_sub_iff_add_eq]
  cases x <;> cases y <;> simp [bitValue,one_add_one_eq_two]

theorem not_row_exact {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (valuation : Nat → F) (a output : Nat) (x : Bool)
    (one : valuation 0 = 1) (input : valuation a = bitValue x) :
    (notRow p a output).satisfies valuation ↔ valuation output = bitValue (!x) := by
  cases x <;>
    simp [notRow,Row.satisfies,evalLinear,canonical_negative 1 positive,one,input,bitValue,eq_comm]

inductive Op where
  | band (a b : Nat)
  | bxor (a b : Nat)
  | bnot (a : Nat)
  | literal (value : Bool)

def Op.inBounds (bound : Nat) : Op → Prop
  | .band a b | .bxor a b => a < bound ∧ b < bound
  | .bnot a => a < bound
  | .literal _ => True

def Op.eval (values : Nat → Bool) : Op → Bool
  | .band a b => values a && values b
  | .bxor a b => Bool.xor (values a) (values b)
  | .bnot a => !values a
  | .literal value => value

def literalRow (output : Nat) (value : Bool) : Row :=
  if value then ⟨[⟨0,1⟩],[⟨0,1⟩],[⟨output,1⟩]⟩ else ⟨[],[],[⟨output,1⟩]⟩

def Op.row (p output : Nat) : Op → Row
  | .band a b => andRow (a+1) (b+1) output
  | .bxor a b => xorRow p (a+1) (b+1) output
  | .bnot a => notRow p (a+1) output
  | .literal value => literalRow output value

theorem literal_row_exact {F : Type} [Field F] (valuation : Nat → F) (output : Nat) (value : Bool)
    (one : valuation 0 = 1) :
    (literalRow output value).satisfies valuation ↔ valuation output = bitValue value := by
  cases value <;> simp [literalRow,Row.satisfies,evalLinear,one,bitValue,eq_comm]

theorem op_row_exact {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (valuation : Nat → F) (values : Nat → Bool) (bound output : Nat) (op : Op)
    (one : valuation 0 = 1) (inputs : ∀ i, i < bound → valuation (i+1) = bitValue (values i))
    (valid : op.inBounds bound) :
    (op.row p output).satisfies valuation ↔ valuation output = bitValue (op.eval values) := by
  cases op with
  | band a b => exact and_row_exact valuation _ _ output _ _ (inputs a valid.1) (inputs b valid.2)
  | bxor a b => exact xor_row_exact positive valuation _ _ output _ _ (inputs a valid.1) (inputs b valid.2)
  | bnot a => exact not_row_exact positive valuation _ output _ one (inputs a valid)
  | literal value => exact literal_row_exact valuation output value one

def write (values : Nat → Bool) (position : Nat) (value : Bool) : Nat → Bool :=
  fun index => if index = position then value else values index

def run (first : Nat) (ops : List Op) (values : Nat → Bool) : Nat → Bool :=
  match ops with
  | [] => values
  | op::rest => run (first+1) rest (write values first (op.eval values))

def Topological (first : Nat) : List Op → Prop
  | [] => True
  | op::rest => op.inBounds first ∧ Topological (first+1) rest

def checkBounds (bound : Nat) : Op → Bool
  | .band a b | .bxor a b => decide (a < bound ∧ b < bound)
  | .bnot a => decide (a < bound)
  | .literal _ => true

def checkTopological (first : Nat) : List Op → Bool
  | [] => true
  | op::rest => checkBounds first op && checkTopological (first+1) rest

theorem check_bounds_exact (bound : Nat) (op : Op) : checkBounds bound op = true ↔ op.inBounds bound := by
  cases op <;> simp [checkBounds,Op.inBounds]

theorem check_topological_exact (ops : List Op) : ∀ first,
    checkTopological first ops = true ↔ Topological first ops := by
  induction ops with
  | nil => intro first; simp [checkTopological,Topological]
  | cons op rest ih =>
      intro first
      simp only [checkTopological,Topological,Bool.and_eq_true_iff,check_bounds_exact,ih]

def rows (p first : Nat) : List Op → List Row
  | [] => []
  | op::rest => op.row p (first+1) :: rows p (first+1) rest

def Satisfies {F : Type} [Field F] (p first : Nat) (ops : List Op) (valuation : Nat → F) : Prop :=
  ∀ row ∈ rows p first ops, row.satisfies valuation

theorem boolean_program_sound {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (ops : List Op) : ∀ (first : Nat) (values : Nat → Bool) (valuation : Nat → F),
      valuation 0 = 1 → (∀ i, i < first → valuation (i+1) = bitValue (values i)) →
      Topological first ops → Satisfies p first ops valuation →
      ∀ i, i < first+ops.length → valuation (i+1) = bitValue (run first ops values i) := by
  induction ops with
  | nil => intro first values valuation one inputs valid satisfied i bound; exact inputs i bound
  | cons op rest ih =>
      intro first values valuation one inputs valid satisfied
      have output := (op_row_exact positive valuation values first (first+1) op one inputs valid.1).mp
        (satisfied _ List.mem_cons_self)
      have nextInputs : ∀ i, i < first+1 →
          valuation (i+1) = bitValue (write values first (op.eval values) i) := by
        intro i bound
        by_cases same : i = first
        · subst i; simpa only [write,if_pos rfl] using output
        · have before : i < first := by omega
          simpa only [write,if_neg same] using inputs i before
      have tailSatisfied : Satisfies p (first+1) rest valuation := by
        intro row member
        exact satisfied row (List.mem_cons_of_mem _ member)
      have complete := ih (first+1) (write values first (op.eval values)) valuation one nextInputs valid.2 tailSatisfied
      intro i bound
      apply complete i
      simp only [List.length_cons] at bound
      omega

theorem run_keeps_prefix (ops : List Op) : ∀ (first : Nat) (values : Nat → Bool) (i : Nat),
    i < first → run first ops values i = values i := by
  induction ops with
  | nil => intro first values i bound; rfl
  | cons op rest ih =>
      intro first values i bound
      have next := ih (first+1) (write values first (op.eval values)) i (by omega)
      simpa only [run,write,if_neg (Nat.ne_of_lt bound)] using next

theorem op_eval_congr (op : Op) (bound : Nat) (a b : Nat → Bool)
    (valid : op.inBounds bound) (equal : ∀ i, i < bound → a i = b i) : op.eval a = op.eval b := by
  cases op with
  | band x y => simp only [Op.eval,equal x valid.1,equal y valid.2]
  | bxor x y => simp only [Op.eval,equal x valid.1,equal y valid.2]
  | bnot x => simp only [Op.eval,equal x valid]
  | literal value => rfl

def Consistent (first : Nat) (ops : List Op) (values : Nat → Bool) : Prop :=
  match ops with
  | [] => True
  | op::rest => values first = op.eval values ∧ Consistent (first+1) rest values

theorem run_consistent (ops : List Op) : ∀ (first : Nat) (values : Nat → Bool),
    Topological first ops → Consistent first ops (run first ops values) := by
  induction ops with
  | nil => intro first values valid; trivial
  | cons op rest ih =>
      intro first values valid
      constructor
      · have output := run_keeps_prefix rest (first+1) (write values first (op.eval values)) first (by omega)
        have inputs : ∀ i, i < first → run first (op::rest) values i = values i :=
          fun i bound => run_keeps_prefix (op::rest) first values i bound
        have same := op_eval_congr op first (run first (op::rest) values) values valid.1 inputs
        change run (first+1) rest (write values first (op.eval values)) first = _
        rw [output]
        simpa only [write,if_pos rfl] using same.symm
      · exact ih (first+1) (write values first (op.eval values)) valid.2

theorem consistent_satisfies {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p) (ops : List Op) :
    ∀ (first : Nat) (values : Nat → Bool) (valuation : Nat → F),
      valuation 0 = 1 → (∀ i, valuation (i+1) = bitValue (values i)) →
      Topological first ops → Consistent first ops values → Satisfies p first ops valuation := by
  induction ops with
  | nil => intro first values valuation one fields valid consistent row present; cases present
  | cons op rest ih =>
      intro first values valuation one fields valid consistent row present
      simp only [rows,List.mem_cons] at present
      rcases present with head | tail
      · subst row
        apply (op_row_exact positive valuation values first (first+1) op one (fun i _ => fields i) valid.1).mpr
        rw [fields,consistent.1]
      · exact ih (first+1) values valuation one fields valid.2 consistent.2 row tail

theorem boolean_program_complete {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (ops : List Op) (first : Nat) (values : Nat → Bool) (valid : Topological first ops) :
    ∃ valuation : Nat → F, valuation 0 = 1 ∧
      (∀ i, i < first → valuation (i+1) = bitValue (values i)) ∧ Satisfies p first ops valuation := by
  let final := run first ops values
  let valuation : Nat → F := fun wire => if wire = 0 then 1 else bitValue (final (wire-1))
  have fields : ∀ i, valuation (i+1) = bitValue (final i) := by intro i; simp [valuation]
  have one : valuation 0 = 1 := by simp [valuation]
  refine ⟨valuation,one,?_,?_⟩
  · intro i before
    rw [fields]
    exact congrArg bitValue (run_keeps_prefix ops first values i before)
  · exact consistent_satisfies positive ops first final valuation one fields valid (run_consistent ops first values valid)

def booleanRow (p wire : Nat) : Row := ⟨[⟨wire,1⟩],[⟨0,p-1⟩,⟨wire,1⟩],[]⟩

theorem boolean_row_decodes {F : Type} [Field F] {p : Nat} [CharP F p] (positive : 1 ≤ p)
    (valuation : Nat → F) (wire : Nat) (one : valuation 0 = 1)
    (satisfied : (booleanRow p wire).satisfies valuation) : ∃ value : Bool, valuation wire = bitValue value := by
  have equation : valuation wire * (valuation wire-1) = 0 := by
    simpa only [booleanRow,Row.satisfies,evalLinear,Nat.cast_one,one_mul,add_zero,
      canonical_negative 1 positive,one,mul_one,neg_one_mul,add_comm (-(1:F)),← sub_eq_add_neg] using satisfied
  rcases boolean_sound _ equation with zero | one
  · exact ⟨false,zero⟩
  · exact ⟨true,one⟩

end Core033.SHA256Circuit
