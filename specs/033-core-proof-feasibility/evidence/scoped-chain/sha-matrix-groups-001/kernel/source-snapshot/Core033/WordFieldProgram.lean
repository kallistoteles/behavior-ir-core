import Core033.WordField

namespace Core033.WordField

def expectedCarry (values : Nat → Word) : WordIR.Op → Bool
  | .badd a b => decide (2^32≤(values a).toNat+(values b).toNat)
  | _ => false

theorem operation_exact {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (output : Nat) (operation : WordIR.Op) (values : Nat → Word)
    (one : valuation 0=1) (valid : operation.Bounded output)
    (inputs : ∀ i,i<output → Encodes valuation i (values i)) :
    (∀ row∈canonicalRows p output operation,row.satisfies valuation) ↔
      Encodes valuation output (operation.eval values) ∧
        valuation (carry output)=R1CS.bitValue (expectedCarry values operation) := by
  rw [canonical_rows_exact]
  cases operation with
  | literal word => exact literal_exact fieldBound valuation output word one
  | band a b => exact and_exact fieldBound valuation a b output _ _ one (inputs a valid.1) (inputs b valid.2)
  | bxor a b => exact xor_exact fieldBound valuation a b output _ _ one (inputs a valid.1) (inputs b valid.2)
  | bnot a => exact not_exact fieldBound valuation a output _ one (inputs a valid)
  | badd a b => exact add_exact fieldBound valuation a b output _ _ one (inputs a valid.1) (inputs b valid.2)
  | rotr a shift => exact rotate_exact fieldBound valuation a output shift _ one (inputs a valid)
  | shr a shift => exact shift_exact fieldBound valuation a output shift _ one (inputs a valid)

def rows (p : Nat) : Nat → List WordIR.Op → List R1CS.Row
  | _,[] => []
  | first,operation::rest => canonicalRows p first operation++rows p (first+1) rest

theorem run_rows_sound {F : Type} [Field F] {p : Nat} [CharP F p] (fieldBound : 2^64<p)
    (valuation : Nat → F) (operations : List WordIR.Op) : ∀ first values,
    WordIR.Topological first operations → valuation 0=1 →
    (∀ i,i<first → Encodes valuation i (values i)) →
    (∀ row∈rows p first operations,row.satisfies valuation) →
    ∀ i,i<first+operations.length → Encodes valuation i (WordIR.run first operations values i) := by
  induction operations with
  | nil =>
    intro first values valid one inputs satisfied i bound
    exact inputs i (by simpa using bound)
  | cons operation rest ih =>
    intro first values valid one inputs satisfied
    have all : (∀ row∈canonicalRows p first operation,row.satisfies valuation) ∧
        ∀ row∈rows p (first+1) rest,row.satisfies valuation := by
      simpa only [rows,List.forall_mem_append] using satisfied
    have result:=(operation_exact fieldBound valuation first operation values one valid.1 inputs).mp all.1
    have nextInputs : ∀ i,i<first+1 → Encodes valuation i (WordIR.write values first (operation.eval values) i) := by
      intro i bound
      by_cases current : i=first
      · subst i
        simpa only [WordIR.write,if_pos rfl] using result.1
      · simp only [WordIR.write,if_neg current]
        exact inputs i (by omega)
    have restResult:=ih (first+1) (WordIR.write values first (operation.eval values)) valid.2 one nextInputs all.2
    intro i bound
    apply restResult i
    simp only [List.length_cons] at bound
    omega

end Core033.WordField
