import Core033.MatrixCodec

/- Exact finite chunks for a bounded-memory file serializer. This proves byte
meaning only; actual file I/O remains an explicitly named ordinary assumption. -/
namespace Core033.MatrixCodecChunks

def header (matrix : R1CS.Matrix) : Codec.Bytes :=
  let ports:=matrix.inputPorts++matrix.privatePorts++matrix.outputPorts
  Matrix.magic++[96,0]++Codec.encodeLE 32 matrix.modulus++
    [matrix.variableCount,matrix.inputPorts.length,matrix.privatePorts.length,matrix.outputPorts.length,
      matrix.rows.length,matrix.constantOne,ports.length].flatMap (Codec.encodeLE 4)++
    ports.flatMap (Codec.encodeLE 4)++Codec.encodeLE 4 matrix.rows.length

def chunks (matrix : R1CS.Matrix) : List Codec.Bytes := header matrix::matrix.rows.map MatrixCodec.encodeRow

theorem exact_encoding (matrix : R1CS.Matrix) : (chunks matrix).flatten=MatrixCodec.encode matrix := by
  simp only [chunks,List.flatten_cons,List.flatten_map,header,MatrixCodec.encode,List.append_assoc]

end Core033.MatrixCodecChunks
