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
  let source:=(Core033.WordSource.lowerFunction program).bytes
  IO.FS.writeBinFile (out/"checker_step.rs") ⟨source.toArray⟩
  IO.println s!"inputs={program.inputCount},operations={program.operations.length},outputs={program.outputs.length},bytes={source.length}"
  IO.println "{\"outcome\":\"GeneratedUncheckedThreePhaseDispatch\",\"g1_pass\":false}"
  return 0
