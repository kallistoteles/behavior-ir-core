import Core033.MatrixCodecHeader
import Core033.MatrixCodecBounds

namespace Core033.MatrixCodecPayload
open R1CS MatrixCodec MatrixCodecHeader MatrixCodecBounds

def ports (matrix : R1CS.Matrix) : List Nat := matrix.inputPorts++matrix.privatePorts++matrix.outputPorts

def header (matrix : R1CS.Matrix) : Header :=
  ⟨matrix.modulus,matrix.variableCount,matrix.inputPorts.length,matrix.privatePorts.length,
    matrix.outputPorts.length,matrix.rows.length,matrix.constantOne,(ports matrix).length⟩

def encodePayload (matrix : R1CS.Matrix) : Bytes :=
  (ports matrix).flatMap (Codec.encodeLE 4)++Codec.encodeLE 4 matrix.rows.length++matrix.rows.flatMap encodeRow

theorem encode_factorization (matrix : R1CS.Matrix) : encode matrix=encodeHeader (header matrix)++encodePayload matrix := by
  simp only [encode,encodeHeader,encodePayload,header,ports,preamble,List.append_assoc]

theorem header_valid (matrix : R1CS.Matrix) (shape : matrix.wellFormed=true)
    (rowsBound : 0<matrix.rows.length ∧ matrix.rows.length≤16777216) : (header matrix).Valid := by
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq] at shape
  obtain ⟨large,fieldBound,countPositive,countBound,portLength,unique⟩:=shape.1.1
  have oneBound:=shape.1.2 matrix.constantOne (by simp)
  have portCount : (ports matrix).length+1=matrix.variableCount := by
    simpa only [List.length_append,List.length_cons,List.length_nil,Nat.add_zero,ports] using portLength
  have inputBound : matrix.inputPorts.length≤matrix.variableCount := by
    simp only [ports,List.length_append] at portCount
    omega
  have privateBound : matrix.privatePorts.length≤matrix.variableCount := by
    simp only [ports,List.length_append] at portCount
    omega
  have outputBound : matrix.outputPorts.length≤matrix.variableCount := by
    simp only [ports,List.length_append] at portCount
    omega
  change matrix.modulus<2^256 ∧ 0<matrix.variableCount ∧ matrix.variableCount≤16777216 ∧
    matrix.inputPorts.length≤matrix.variableCount ∧ matrix.privatePorts.length≤matrix.variableCount ∧
    matrix.outputPorts.length≤matrix.variableCount ∧ 0<matrix.rows.length ∧ matrix.rows.length≤16777216 ∧
    matrix.constantOne<2^32 ∧ (ports matrix).length=matrix.inputPorts.length+matrix.privatePorts.length+matrix.outputPorts.length ∧
      (ports matrix).length≤16777216
  exact ⟨fieldBound,countPositive,countBound,inputBound,privateBound,outputBound,rowsBound.1,rowsBound.2,
    by omega,by simp [ports,List.length_append,Nat.add_assoc],by omega⟩

theorem ports_width (matrix : R1CS.Matrix) (shape : matrix.wellFormed=true) :
    ∀ wire∈ports matrix,wire<256^4 := by
  simp only [R1CS.Matrix.wellFormed,Bool.and_eq_true,List.all_eq_true,decide_eq_true_eq] at shape
  obtain ⟨large,fieldBound,countPositive,countBound,portLength,unique⟩:=shape.1.1
  intro wire member
  have bound:=shape.1.2 wire (List.mem_append_left _ member)
  omega

theorem integer_list_size (width : Nat) (items : List Nat) :
    (items.flatMap (Codec.encodeLE width)).length=width*items.length := by
  induction items with
  | nil => simp
  | cons item rest ih => simp [ih,Codec.encodeLE_size,Nat.mul_add,Nat.add_comm]

theorem row_size (row : Row) : (encodeRow row).length=12+36*(row.a.length+row.b.length+row.c.length) := by
  simp only [encodeRow,List.length_append,encoded_linear_size]
  omega

theorem rows_minimum_size (rows : List Row) : 12*rows.length≤(rows.flatMap encodeRow).length := by
  induction rows with
  | nil => simp
  | cons row rest ih =>
    simp only [List.length_cons,List.flatMap_cons,List.length_append,row_size]
    omega

theorem ports_reassemble (matrix : R1CS.Matrix) :
    R1CS.Matrix.mk matrix.modulus matrix.variableCount ((ports matrix).take matrix.inputPorts.length)
      (((ports matrix).drop matrix.inputPorts.length).take matrix.privatePorts.length)
      ((ports matrix).drop (matrix.inputPorts.length+matrix.privatePorts.length)) matrix.constantOne matrix.rows=matrix := by
  cases matrix
  simp [ports,List.append_assoc]

theorem payload_roundtrip (matrix : R1CS.Matrix) (shape : matrix.wellFormed=true)
    (rowsBound : 0<matrix.rows.length ∧ matrix.rows.length≤16777216) (suffix : Bytes) :
    (readPayload (header matrix)).run ⟨encodePayload matrix++suffix,(encodePayload matrix++suffix).length⟩=
      some (matrix,⟨suffix,suffix.length⟩) := by
  have portWidth:=ports_width matrix shape
  have rowWidths:=matrix_rows_admissible matrix shape
  have portBudget : (ports matrix).length*4≤
      ((ports matrix).flatMap (Codec.encodeLE 4)++(Codec.encodeLE 4 matrix.rows.length++(matrix.rows.flatMap encodeRow++suffix))).length := by
    simp only [List.length_append,integer_list_size,Codec.encodeLE_size]
    omega
  have rowBudget : matrix.rows.length*12≤(matrix.rows.flatMap encodeRow++suffix).length := by
    have minimum:=rows_minimum_size matrix.rows
    simp only [List.length_append]
    omega
  unfold readPayload encodePayload
  simp only [header,List.append_assoc,bind_run]
  rw [remaining_run]
  simp only [Option.bind_some]
  conv_lhs =>
    arg 1
    unfold Matrix.require
    rw [if_pos portBudget]
  simp only [pure_run,Option.bind_some]
  rw [read_many_suffix (Codec.encodeLE 4) Matrix.u32 (fun wire=>wire<256^4)
    (by intro wire bound suffix;exact read_integer_suffix 4 wire bound suffix) (ports matrix) portWidth]
  simp only [Option.bind_some,Matrix.u32]
  rw [read_integer_suffix 4 matrix.rows.length (by omega)]
  simp only [Option.bind_some]
  rw [require_true _ rfl]
  simp only [Option.bind_some]
  rw [remaining_run]
  simp only [Option.bind_some]
  rw [require_true _ rowBudget]
  simp only [Option.bind_some]
  rw [read_many_suffix encodeRow Matrix.row RowBounds
    (by
      intro row valid suffix
      exact read_row_suffix row ⟨valid.1.1,valid.2.1.1,valid.2.2.1⟩
        ⟨valid.1.2,valid.2.1.2,valid.2.2.2⟩ suffix) matrix.rows rowWidths]
  simp only [Option.bind_some]
  simp only [ports_reassemble matrix]
  have rebuiltShape : (R1CS.Matrix.mk matrix.modulus matrix.variableCount ((ports matrix).take matrix.inputPorts.length)
      (((ports matrix).drop matrix.inputPorts.length).take matrix.privatePorts.length)
      ((ports matrix).drop (matrix.inputPorts.length+matrix.privatePorts.length)) matrix.constantOne matrix.rows).wellFormed=true :=
    (congrArg R1CS.Matrix.wellFormed (ports_reassemble matrix)).trans shape
  conv_lhs =>
    arg 1
    unfold Matrix.require
    rw [if_pos rebuiltShape]
  simp only [pure_run,Option.bind_some]

theorem matrix_roundtrip_suffix (matrix : R1CS.Matrix) (shape : matrix.wellFormed=true)
    (rowsBound : 0<matrix.rows.length ∧ matrix.rows.length≤16777216) (suffix : Bytes) :
    Matrix.readMatrix.run ⟨encode matrix++suffix,(encode matrix++suffix).length⟩=
      some (matrix,⟨suffix,suffix.length⟩) := by
  rw [encode_factorization,MatrixCodecHeader.parser_factorization]
  simp only [List.append_assoc,bind_run]
  rw [header_roundtrip (header matrix) (header_valid matrix shape rowsBound)]
  simp only [Option.bind_some]
  exact payload_roundtrip matrix shape rowsBound suffix

theorem matrix_roundtrip (matrix : R1CS.Matrix) (shape : matrix.wellFormed=true)
    (rowsBound : 0<matrix.rows.length ∧ matrix.rows.length≤16777216) (byteBound : (encode matrix).length≤1073741824) :
    Matrix.parse (encode matrix)=some matrix := by
  unfold Matrix.parse
  rw [if_pos byteBound]
  have read:=matrix_roundtrip_suffix matrix shape rowsBound []
  simp only [List.append_nil] at read
  rw [read]
  rfl

end Core033.MatrixCodecPayload
