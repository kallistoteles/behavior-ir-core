import Core033.MatrixCodec

/- Untrusted artifact emission only. Every resulting byte still requires the
independent numeric quotation, kernel correspondence and checked-value binding.
Keep the finite encoding bounded in memory by writing one row at a time. -/
namespace Core033.MatrixFile

def write (path : System.FilePath) (matrix : R1CS.Matrix) : IO Unit := do
  let ports:=matrix.inputPorts++matrix.privatePorts++matrix.outputPorts
  let header:=Matrix.magic++[96,0]++Codec.encodeLE 32 matrix.modulus++
    [matrix.variableCount,matrix.inputPorts.length,matrix.privatePorts.length,matrix.outputPorts.length,
      matrix.rows.length,matrix.constantOne,ports.length].flatMap (Codec.encodeLE 4)++
    ports.flatMap (Codec.encodeLE 4)++Codec.encodeLE 4 matrix.rows.length
  let handle ← IO.FS.Handle.mk path .write
  handle.write ⟨header.toArray⟩
  for row in matrix.rows do
    handle.write ⟨(MatrixCodec.encodeRow row).toArray⟩
  handle.flush

end Core033.MatrixFile
