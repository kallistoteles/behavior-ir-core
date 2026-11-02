import Core033.WordMatrixPorts
import Core033.MatrixCodecPayload

namespace Core033.MatrixRowBlocks
open R1CS WordField WordMatrix MatrixCodec

theorem rows_append (p first : Nat) (left right : List WordIR.Op) :
    WordField.rows p first (left++right)=WordField.rows p first left++WordField.rows p (first+left.length) right := by
  induction left generalizing first with
  | nil => simp [WordField.rows]
  | cons operation rest ih =>
    simp [WordField.rows,ih,List.append_assoc,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm]

def body (p : Nat) : Nat → List (List WordIR.Op) → List Row
  | _,[] => []
  | first,block::rest => WordField.rows p first block++body p (first+block.length) rest

theorem body_exact (p : Nat) (blocks : List (List WordIR.Op)) : ∀ first,
    body p first blocks=WordField.rows p first blocks.flatten := by
  induction blocks with
  | nil => intro first;rfl
  | cons block rest ih =>
    intro first
    simp only [body,List.flatten_cons,rows_append,ih]

inductive RowChain (p : Nat) : Nat → List (List WordIR.Op) → List (List Row) → Prop where
  | empty (first : Nat) : RowChain p first [] []
  | cons (first : Nat) (block : List WordIR.Op) (rest : List (List WordIR.Op)) (actual : List Row) (tailRows : List (List Row))
      (checked : actual=WordField.rows p first block)
      (remaining : RowChain p (first+block.length) rest tailRows) : RowChain p first (block::rest) (actual::tailRows)

theorem chain_exact {p first : Nat} {blocks : List (List WordIR.Op)} {actual : List (List Row)}
    (checked : RowChain p first blocks actual) : actual.flatten=body p first blocks := by
  induction checked with
  | empty => rfl
  | cons first block rest actual tailRows checked remaining ih =>
    simp only [List.flatten_cons,body,checked,ih]

def rowWeight (row : Row) : Nat := 12+36*(row.a.length+row.b.length+row.c.length)
def rowsWeight (rows : List Row) : Nat := (rows.map rowWeight).sum

theorem encoded_rows_size (rows : List Row) : (rows.flatMap encodeRow).length=rowsWeight rows := by
  induction rows with
  | nil => rfl
  | cons row rest ih => simp [rowsWeight,List.flatMap_cons,MatrixCodecPayload.row_size,ih,rowWeight]

theorem rows_weight_append (left right : List Row) : rowsWeight (left++right)=rowsWeight left+rowsWeight right := by
  simp [rowsWeight]

theorem encoded_matrix_size (matrix : R1CS.Matrix) :
    (encode matrix).length=86+4*(matrix.inputPorts.length+matrix.privatePorts.length+matrix.outputPorts.length)+rowsWeight matrix.rows := by
  simp only [MatrixCodecPayload.encode_factorization,MatrixCodecHeader.encodeHeader,MatrixCodecHeader.preamble,
    MatrixCodecHeader.header_roundtrip,MatrixCodecPayload.header,MatrixCodecPayload.encodePayload,
    List.length_append,Codec.encodeLE_size,MatrixCodecPayload.integer_list_size,encoded_rows_size,
    MatrixCodecHeader.preamble,MatrixCodecPayload.ports,List.length_append]
  decide +revert

theorem interval_blocks (start count : Nat) :
    (List.range' start count).flatMap WordMatrixPorts.block=List.range' (base start) (34*count) := by
  have whole:=WordMatrixPorts.all_words_interval (start+count)
  have part:=WordMatrixPorts.all_words_interval start
  unfold WordMatrixPorts.allWords at whole part
  rw [WordMatrixPorts.split_range start (start+count) (by omega),Nat.add_sub_cancel_left,List.flatMap_append,part] at whole
  have intervals : List.range' 1 (34*(start+count))=List.range' 1 (34*start)++List.range' (base start) (34*count) := by
    unfold base
    rw [Nat.mul_add]
    exact List.range'_append_1.symm
  rw [intervals] at whole
  exact List.append_cancel_left whole

end Core033.MatrixRowBlocks
