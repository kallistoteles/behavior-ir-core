import Core033.OwnBranchRouting
import Core033.WordMatrix
import Core033.MatrixFile
import Core033.WordGuardSuffix

def main (args : List String) : IO UInt32 := do
  let [directory] := args | do IO.eprintln "usage: GenerateOwnBranchRouting NEW_DIRECTORY";return 3
  let out : System.FilePath := directory
  if ← out.pathExists then IO.eprintln "output must be new";return 3
  IO.FS.createDirAll out
  let program:=Core033.OwnBranchRouting.program
  let source:=(Core033.WordSource.lowerFunction program).bytes
  let matrix:=Core033.WordGuardSuffix.compile Core033.R1CS.pallasScalarModulus program 43 2
  IO.FS.writeBinFile (out/"checker_step.rs") ⟨source.toArray⟩
  Core033.MatrixFile.write (out/"matrix.bin") matrix
  IO.println s!"inputs={program.inputCount},operations={program.operations.length},outputs={program.outputs.length},bytes={source.length},variables={matrix.variableCount},rows={matrix.rows.length}"
  IO.println "{\"outcome\":\"GeneratedUncheckedOwnBranchRouting\",\"g1_pass\":false}"
  return 0
