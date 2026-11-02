import CheckedGuardedScalarMatrices
import Core033.MatrixCodec
def main (args : List String) : IO UInt32 := do
  let [path] := args | do IO.eprintln "one output path required";return 3
  let bytes : List UInt8 := Core033.MatrixCodec.encode CheckedGuardedScalarMatrices.actualShort
  IO.FS.writeBinFile path ⟨bytes.toArray⟩
  IO.println s!"bound closed data bytes={bytes.length}"
  return 0
