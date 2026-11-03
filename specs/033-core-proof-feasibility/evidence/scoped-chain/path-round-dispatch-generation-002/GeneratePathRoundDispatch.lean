import Core033.PathRoundDispatch
import Core033.WordMatrix

/- Source-only development candidate. Actual artifact correspondence and the
guarded numeric packet are independent subsequent obligations. -/
def main (args : List String) : IO UInt32 := do
  let [directory] := args | do IO.eprintln "usage: GeneratePathRoundDispatch NEW_DIRECTORY";return 3
  let out : System.FilePath := directory
  if ← out.pathExists then IO.eprintln "output must be new";return 3
  IO.FS.createDirAll out
  let program:=Core033.PathRoundDispatch.program
  let function:=Core033.WordSource.lowerFunction program
  let source ← IO.FS.Handle.mk (out/"checker_step.rs") .write
  let header:=Core033.Codec.textBytes "pub fn checker_step(\n"++
    Core033.WordSource.parameterBytes 0 function.inputCount++
    Core033.Codec.textBytes ") -> [u32; 0x"++Core033.WordSource.hexDigits 8 function.outputs.length++
    Core033.Codec.textBytes "_usize] {\n"
  source.write ⟨header.toArray⟩
  let mut register:=function.inputCount
  for expression in function.statements do
    source.write ⟨(Core033.WordSource.statementBytes register [expression]).toArray⟩
    register:=register+1
  let footer:=Core033.Codec.textBytes "    ["++Core033.WordSource.returnBytes function.outputs++
    Core033.Codec.textBytes "]\n}\n"
  source.write ⟨footer.toArray⟩
  source.flush
  IO.println s!"inputs={program.inputCount},operations={program.operations.length},outputs={program.outputs.length}"
  IO.println "{\"outcome\":\"GeneratedUncheckedThreePhaseDispatch\",\"g1_pass\":false}"
  return 0
