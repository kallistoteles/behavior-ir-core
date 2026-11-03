import Core033.PairedPathRound
import Core033.WordSource
import Core033.MatrixFile
import Core033.GuardMatrix

open Core033

def main (args : List String) : IO Unit := do
  let [directory] := args | throw (IO.userError "usage: GeneratePairedPathRound NEW_DIRECTORY")
  let out : System.FilePath := directory
  if ← out.pathExists then throw (IO.userError "output must be new")
  IO.FS.createDirAll out
  let program := PairedPathRound.program
  let wires := (List.range 91).map (fun index=>WordMatrix.outputBase program+96+index)
  -- Untrusted bounded emission. Complete source/actual-row correspondence and
  -- full byte bindings are required independently before any Checked claim.
  let p := R1CS.pallasScalarModulus
  let mut groups : Array (List R1CS.Row) := #[WordMatrix.inputRows p program.inputCount]
  let mut position := program.inputCount
  for operation in program.operations do
    groups := groups.push (WordField.canonicalRows p position operation)
    position := position+1
  groups := groups.push (WordMatrix.outputRows p program)
  groups := groups.push (wires.map (fun wire=>SHA256Circuit.literalRow wire true))
  let count := WordMatrix.wordCount program
  let matrix : R1CS.Matrix := ⟨p,WordMatrix.outputBase program+program.outputs.length,
    (List.range program.inputCount).map WordField.packed,
    (List.range count).flatMap (fun register=>if register<program.inputCount
      then (List.range 33).map (fun offset=>WordField.base register+1+offset)
      else (List.range 34).map (fun offset=>WordField.base register+offset)),
    (List.range program.outputs.length).map (fun index=>WordMatrix.outputBase program+index),0,
    groups.toList.flatten⟩
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
