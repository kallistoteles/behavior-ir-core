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
  let function := WordSource.lowerFunction program
  let source ← IO.FS.Handle.mk (out/"checker_step.rs") .write
  let header := Codec.textBytes "pub fn checker_step(\n"++WordSource.parameterBytes 0 function.inputCount++
    Codec.textBytes ") -> [u32; 0x"++WordSource.hexDigits 8 function.outputs.length++Codec.textBytes "_usize] {\n"
  source.write ⟨header.toArray⟩
  let mut register := function.inputCount
  for expression in function.statements do
    source.write ⟨(WordSource.statementBytes register [expression]).toArray⟩
    register := register+1
  let footer := Codec.textBytes "    ["++WordSource.returnBytes function.outputs++Codec.textBytes "]\n}\n"
  source.write ⟨footer.toArray⟩
  source.flush
  MatrixFile.write (out/"matrix.bin") matrix
  IO.println s!"{program.inputCount} inputs; {program.operations.length} instructions; {program.outputs.length} outputs; {matrix.variableCount} variables; {matrix.rows.length} guarded rows"
