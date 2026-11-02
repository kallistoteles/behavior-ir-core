import Core033.Matrix
import Core033.Codec

/- Exact canonical integer/stream encoding for the actual binary matrix reader.
This develops decoder refinement; no native parser result or generated equality
alone establishes an actual matrix certificate. -/
namespace Core033.MatrixCodec
open R1CS
abbrev Bytes := List UInt8

def encodeTerm (term : Term) : Bytes := Codec.encodeLE 4 term.wire++Codec.encodeLE 32 term.coefficient

def encodeLinear (terms : Linear) : Bytes := Codec.encodeLE 4 terms.length++terms.flatMap encodeTerm

def encodeRow (row : Row) : Bytes := encodeLinear row.a++encodeLinear row.b++encodeLinear row.c

def encode (matrix : R1CS.Matrix) : Bytes :=
  let ports:=matrix.inputPorts++matrix.privatePorts++matrix.outputPorts
  Matrix.magic++[96,0]++Codec.encodeLE 32 matrix.modulus++
    [matrix.variableCount,matrix.inputPorts.length,matrix.privatePorts.length,matrix.outputPorts.length,
      matrix.rows.length,matrix.constantOne,ports.length].flatMap (Codec.encodeLE 4)++
    ports.flatMap (Codec.encodeLE 4)++Codec.encodeLE 4 matrix.rows.length++matrix.rows.flatMap encodeRow

theorem decoder_integer_identical (bytes : Bytes) : Matrix.littleEndian bytes=Codec.decodeLE bytes := by
  induction bytes with
  | nil => rfl
  | cons byte rest ih => simp only [Matrix.littleEndian,Codec.decodeLE,ih]

theorem take_actual_suffix (prefixBytes suffix : Bytes) :
    (Matrix.take prefixBytes.length).run ⟨prefixBytes++suffix,(prefixBytes++suffix).length⟩=
      some (prefixBytes,⟨suffix,suffix.length⟩) := by
  unfold Matrix.take
  have actualGet : (get : Matrix.Read Matrix.Cursor)=StateT.get := rfl
  rw [actualGet]
  dsimp [StateT.run,Bind.bind,StateT.bind,StateT.get]
  rw [if_pos (by simp)]
  simp only [StateT.set,StateT.pure,set,Bind.bind,StateT.bind,Option.bind_some]
  simp
  rfl

theorem read_integer_suffix (width value : Nat) (bound : value<256^width) (suffix : Bytes) :
    (Matrix.natural width).run ⟨Codec.encodeLE width value++suffix,(Codec.encodeLE width value++suffix).length⟩=
      some (value,⟨suffix,suffix.length⟩) := by
  have taken:=take_actual_suffix (Codec.encodeLE width value) suffix
  rw [Codec.encodeLE_size] at taken
  change Option.bind ((Matrix.take width).run ⟨Codec.encodeLE width value++suffix,(Codec.encodeLE width value++suffix).length⟩)
      (fun pair=>some (Matrix.littleEndian pair.1,pair.2))=_
  rw [taken]
  simp only [Option.bind_some,decoder_integer_identical,Codec.bounded_integer_roundtrip width value bound]

theorem encoded_term_size (term : Term) : (encodeTerm term).length=36 := by
  simp [encodeTerm,Codec.encodeLE_size]

theorem encoded_linear_size (terms : Linear) : (encodeLinear terms).length=4+36*terms.length := by
  induction terms with
  | nil => simp [encodeLinear,Codec.encodeLE_size]
  | cons term rest ih =>
    simp only [encodeLinear,List.length_append,Codec.encodeLE_size,List.flatMap_cons,List.length_cons,encoded_term_size]
    have old : (rest.flatMap encodeTerm).length=36*rest.length := by
      simp only [encodeLinear,List.length_append,Codec.encodeLE_size] at ih
      omega
    rw [old]
    omega

theorem pure_run {α : Type} (value : α) (cursor : Matrix.Cursor) :
    (pure value : Matrix.Read α).run cursor=some (value,cursor) := rfl

theorem bind_run {α β : Type} (action : Matrix.Read α) (next : α → Matrix.Read β) (cursor : Matrix.Cursor) :
    (action >>= next).run cursor=(action.run cursor).bind (fun pair=>(next pair.1).run pair.2) := rfl

theorem read_term_suffix (term : Term) (wireBound : term.wire<2^32) (coefficientBound : term.coefficient<2^256) (suffix : Bytes) :
    Matrix.term.run ⟨encodeTerm term++suffix,(encodeTerm term++suffix).length⟩=
      some (term,⟨suffix,suffix.length⟩) := by
  unfold Matrix.term encodeTerm
  simp only [List.append_assoc,bind_run,Matrix.u32]
  rw [read_integer_suffix 4 term.wire (by simpa using wireBound)]
  simp only [Option.bind_some]
  rw [read_integer_suffix 32 term.coefficient (by simpa using coefficientBound)]
  simp only [Option.bind_some,pure_run]

theorem read_many_suffix {α : Type} (encoder : α → Bytes) (reader : Matrix.Read α) (admissible : α → Prop)
    (single : ∀ item,admissible item → ∀ suffix,
      reader.run ⟨encoder item++suffix,(encoder item++suffix).length⟩=some (item,⟨suffix,suffix.length⟩))
    (items : List α) (valid : ∀ item∈items,admissible item) : ∀ suffix,
    (Matrix.many items.length reader).run ⟨items.flatMap encoder++suffix,(items.flatMap encoder++suffix).length⟩=
      some (items,⟨suffix,suffix.length⟩) := by
  induction items with
  | nil => intro suffix;exact pure_run [] _
  | cons item rest ih =>
    intro suffix
    simp only [List.length_cons,Matrix.many,List.flatMap_cons,List.append_assoc,bind_run]
    rw [single item (valid item (by simp))]
    simp only [Option.bind_some]
    rw [ih (by intro x hx;exact valid x (List.mem_cons_of_mem item hx)) suffix]
    simp only [Option.bind_some,pure_run]

theorem require_true (condition : Prop) [Decidable condition] (valid : condition) (cursor : Matrix.Cursor) :
    (Matrix.require condition).run cursor=some ((),cursor) := by
  unfold Matrix.require
  rw [if_pos valid]
  exact pure_run () cursor

theorem remaining_run (cursor : Matrix.Cursor) : Matrix.remaining.run cursor=some (cursor.available,cursor) := rfl

theorem encoded_terms_size (terms : Linear) : (terms.flatMap encodeTerm).length=36*terms.length := by
  have whole:=encoded_linear_size terms
  simp only [encodeLinear,List.length_append,Codec.encodeLE_size] at whole
  omega

theorem read_linear_suffix (terms : Linear) (countBound : terms.length≤16777216)
    (termBounds : ∀ term∈terms,term.wire<2^32 ∧ term.coefficient<2^256) (suffix : Bytes) :
    Matrix.linear.run ⟨encodeLinear terms++suffix,(encodeLinear terms++suffix).length⟩=
      some (terms,⟨suffix,suffix.length⟩) := by
  unfold Matrix.linear encodeLinear
  simp only [List.append_assoc,bind_run,Matrix.u32]
  rw [read_integer_suffix 4 terms.length (by omega)]
  simp only [Option.bind_some]
  rw [require_true _ countBound]
  simp only [Option.bind_some]
  rw [remaining_run]
  simp only [Option.bind_some]
  have available : terms.length*36≤(terms.flatMap encodeTerm++suffix).length := by
    rw [List.length_append,encoded_terms_size]
    omega
  rw [require_true _ available]
  simp only [Option.bind_some]
  exact read_many_suffix encodeTerm Matrix.term (fun term=>term.wire<2^32 ∧ term.coefficient<2^256)
    (by intro term bound suffix;exact read_term_suffix term bound.1 bound.2 suffix) terms termBounds suffix

theorem read_row_suffix (row : Row)
    (counts : row.a.length≤16777216 ∧ row.b.length≤16777216 ∧ row.c.length≤16777216)
    (bounds : (∀ term∈row.a,term.wire<2^32 ∧ term.coefficient<2^256) ∧
      (∀ term∈row.b,term.wire<2^32 ∧ term.coefficient<2^256) ∧
      ∀ term∈row.c,term.wire<2^32 ∧ term.coefficient<2^256) (suffix : Bytes) :
    Matrix.row.run ⟨encodeRow row++suffix,(encodeRow row++suffix).length⟩=
      some (row,⟨suffix,suffix.length⟩) := by
  unfold Matrix.row encodeRow
  simp only [List.append_assoc,bind_run]
  rw [read_linear_suffix row.a counts.1 bounds.1]
  simp only [Option.bind_some]
  rw [read_linear_suffix row.b counts.2.1 bounds.2.1]
  simp only [Option.bind_some]
  rw [read_linear_suffix row.c counts.2.2 bounds.2.2]
  simp only [Option.bind_some,pure_run]

end Core033.MatrixCodec
