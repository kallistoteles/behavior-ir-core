import Core033.R1CS

/- Reference meaning of the frozen canonical matrix format. Actual bytes are
decoded into numeric coefficients, wires, ports and rows before interpretation.
There is no hash/generator-equality substitute for the R1CS field relation. -/
namespace Core033.Matrix
open R1CS
abbrev Bytes := List UInt8

structure Cursor where
  bytes : Bytes
  available : Nat

abbrev Read (α : Type) := StateT Cursor Option α
def fail : Read α := fun _ => none

def require (condition : Prop) [Decidable condition] : Read Unit :=
  if condition then pure () else fail

def take (count : Nat) : Read Bytes := do
  let cursor ← get
  if count ≤ cursor.available then
    set (⟨cursor.bytes.drop count,cursor.available-count⟩ : Cursor)
    return cursor.bytes.take count
  else fail

def littleEndian : Bytes → Nat
  | [] => 0
  | b::rest => b.toNat + 256 * littleEndian rest

def natural (width : Nat) : Read Nat := littleEndian <$> take width
def u32 : Read Nat := natural 4

def remaining : Read Nat := do
  let cursor ← get
  return cursor.available

def many (count : Nat) (reader : Read α) : Read (List α) :=
  match count with
  | 0 => pure []
  | n+1 => do
      let first ← reader
      let rest ← many n reader
      return first::rest

def term : Read Term := do
  let wire ← u32
  let coefficient ← natural 32
  return ⟨wire,coefficient⟩

def linear : Read Linear := do
  let count ← u32
  require (count ≤ 16777216)
  let available ← remaining
  require (count * 36 ≤ available)
  many count term

def row : Read Row := do
  let a ← linear
  let b ← linear
  let c ← linear
  return ⟨a,b,c⟩

def magic : Bytes := "core033.semantic.v1".toUTF8.data.toList ++ [0]

def readMatrix : Read R1CS.Matrix := do
  let prefixBytes ← take (magic.length+2)
  require (prefixBytes = magic ++ [96,0])
  let p ← natural 32
  let count ← u32
  let inputCount ← u32
  let privateCount ← u32
  let outputCount ← u32
  let constraints ← u32
  let one ← u32
  require (0 < count ∧ count ≤ 16777216)
  require (inputCount ≤ count ∧ privateCount ≤ count ∧ outputCount ≤ count)
  require (0 < constraints ∧ constraints ≤ 16777216)
  let portCount ← u32
  require (portCount = inputCount + privateCount + outputCount ∧ portCount ≤ 16777216)
  let available ← remaining
  require (portCount * 4 ≤ available)
  let ports ← many portCount u32
  let rowCount ← u32
  require (rowCount = constraints)
  let available ← remaining
  require (rowCount * 12 ≤ available)
  let rows ← many rowCount row
  let matrix : R1CS.Matrix := ⟨p,count,ports.take inputCount,
    (ports.drop inputCount).take privateCount,ports.drop (inputCount+privateCount),one,rows⟩
  require (matrix.wellFormed = true)
  return matrix

def parse (bytes : Bytes) : Option R1CS.Matrix :=
  if bytes.length ≤ 1073741824 then
    match readMatrix.run ⟨bytes,bytes.length⟩ with
    | some (matrix,cursor) => if cursor.available = 0 ∧ cursor.bytes = [] then some matrix else none
    | none => none
  else none

def validate (bytes : Bytes) : Bool := decide (parse bytes = some (compileNegative pallasScalarModulus))

/-- The actual decoded matrix's field relation, including its own declared ports
and constant-one convention. Validation does not change this interpretation. -/
def Denotes [Field F] (bytes : Bytes) (input output : F) : Prop :=
  ∃ matrix valuation, parse bytes = some matrix ∧ matrix.satisfies valuation ∧
    matrix.inputPorts.map valuation = [input] ∧ matrix.outputPorts.map valuation = [output]

theorem validation_decodes_actual (bytes : Bytes) (h : validate bytes = true) :
    parse bytes = some (compileNegative pallasScalarModulus) := of_decide_eq_true h

theorem actual_matrix_sound [Field F] [CharP F pallasScalarModulus]
    (bytes : Bytes) (word : IR.Word64) (output : F) (h : validate bytes = true)
    (relation : Denotes bytes (word.raw : F) output) : output = bitValue word.negative := by
  obtain ⟨matrix,valuation,hm,hs,hi,ho⟩ := relation
  have equal : compileNegative pallasScalarModulus = matrix :=
    Option.some.inj ((validation_decodes_actual bytes h).symm.trans hm)
  subst matrix
  have input : valuation 1 = (word.raw : F) := by simpa [compileNegative] using hi
  have result : valuation 2 = output := by simpa [compileNegative] using ho
  exact result.symm.trans (compiled_sound modulus_larger_than_word word valuation hs input)

theorem actual_matrix_complete [Field F] [CharP F pallasScalarModulus]
    (bytes : Bytes) (word : IR.Word64) (h : validate bytes = true) :
    Denotes bytes (word.raw : F) (bitValue word.negative) := by
  obtain ⟨valuation,hs,hi,ho⟩ := compiled_complete (F:=F) modulus_larger_than_word word
  refine ⟨compileNegative pallasScalarModulus,valuation,validation_decodes_actual bytes h,hs,?_,?_⟩
  · simpa [compileNegative] using hi
  · simpa [compileNegative] using ho

end Core033.Matrix
