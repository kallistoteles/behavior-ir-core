import ActualHashBlockMatrixPacket
import Core033.MatrixCodec
import Core033.MatrixCodecChunks
def main (args : List String) : IO UInt32 := do
  let [path] := args | do IO.eprintln "one output path required";return 3
  let matrix : Core033.R1CS.Matrix := ActualHashBlockMatrixPacket.actualMatrix
  let handle ← IO.FS.Handle.mk path .write
  handle.write ⟨(Core033.MatrixCodecChunks.header matrix).toArray⟩
  for row in matrix.rows do
    handle.write ⟨(Core033.MatrixCodec.encodeRow row).toArray⟩
  handle.flush
  IO.println s!"bound closed matrix rows={matrix.rows.length}"
  return 0
