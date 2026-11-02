import Core033.DigestWords
import Core033.WordSource
import Core033.WordMatrix
import Core033.MatrixCodec

def main (args : List String) : IO UInt32 := do
  let [directory] := args | do IO.eprintln "usage: GenerateDigestWords NEW_DIRECTORY";return 3
  let out : System.FilePath := directory
  if ← out.pathExists then IO.eprintln "output must be new";return 3
  IO.FS.createDirAll out
  let program:=Core033.DigestWords.program
  let source:=(Core033.WordSource.lowerFunction program).bytes
  let matrix:=Core033.WordMatrix.compile Core033.R1CS.pallasScalarModulus program
  IO.FS.writeBinFile (out/"checker_step.rs") ⟨source.toArray⟩
  IO.FS.writeBinFile (out/"matrix.bin") ⟨(Core033.MatrixCodec.encode matrix).toArray⟩
  IO.println s!"inputs={program.inputCount},operations={program.operations.length},outputs={program.outputs.length},source_bytes={source.length},variables={matrix.variableCount},rows={matrix.rows.length}"
  IO.println "{\"outcome\":\"GeneratedUncheckedDigestWordPrimitives\",\"g1_pass\":false}"
  return 0
