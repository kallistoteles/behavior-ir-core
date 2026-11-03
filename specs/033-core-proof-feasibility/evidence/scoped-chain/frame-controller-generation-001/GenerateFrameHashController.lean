import Core033.FrameHashController
import Core033.WordSource
import Core033.MatrixFile
import Core033.GuardMatrix

open Core033

def main (args : List String) : IO Unit := do
  let [directory] := args | throw (IO.userError "usage: GenerateFrameHashController NEW_DIRECTORY")
  let out : System.FilePath := directory
  if ← out.pathExists then throw (IO.userError "output must be new")
  IO.FS.createDirAll out
  let program := FrameHashController.program
  let wires := (List.range 82).map (fun index=>WordMatrix.outputBase program+43+index)
  let matrix := GuardMatrix.force (WordMatrix.compile R1CS.pallasScalarModulus program) wires
  IO.FS.writeBinFile (out/"checker_step.rs") ⟨((WordSource.lowerFunction program).bytes).toArray⟩
  MatrixFile.write (out/"matrix.bin") matrix
  IO.println s!"{program.inputCount} inputs; {program.operations.length} instructions; {program.outputs.length} outputs; {matrix.variableCount} variables; {matrix.rows.length} guarded rows"
