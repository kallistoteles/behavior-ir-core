import Core033.WordVectorEquality
import Core033.WordMatrix
import Core033.MatrixFile

def main (args : List String) : IO UInt32 := do
  let [directory] := args | do IO.eprintln "usage: GenerateWordVectorEquality NEW_DIRECTORY";return 3
  let out : System.FilePath := directory
  if ← out.pathExists then IO.eprintln "output must be new";return 3
  IO.FS.createDirAll out
  for (name,count) in [("key",48),("digest",8)] do
    let target:=out/name
    IO.FS.createDirAll target
    let program:=Core033.WordVectorEquality.program count
    let source:=(Core033.WordSource.lowerFunction program).bytes
    let matrix:=Core033.WordMatrix.compile Core033.R1CS.pallasScalarModulus program
    IO.FS.writeBinFile (target/"checker_step.rs") ⟨source.toArray⟩
    Core033.MatrixFile.write (target/"matrix.bin") matrix
    IO.println s!"{name}: inputs={program.inputCount},operations={program.operations.length},outputs={program.outputs.length},bytes={source.length},variables={matrix.variableCount},rows={matrix.rows.length}"
  IO.println "{\"outcome\":\"GeneratedUncheckedFullWordVectorEquality\",\"g1_pass\":false}"
  return 0
