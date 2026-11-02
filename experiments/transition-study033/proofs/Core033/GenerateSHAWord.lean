import Core033.SHA256Compiled

def main (args : List String) : IO UInt32 := do
  let [directory] := args | do
    IO.eprintln "usage: GenerateSHAWord NEW_DIRECTORY"
    return 3
  let out : System.FilePath := directory
  if ← out.pathExists then
    IO.eprintln "output must be new"
    return 3
  IO.FS.createDirAll out
  let program:=Core033.SHA256Compiled.program
  let source:=(Core033.WordSource.lowerFunction program).bytes
  IO.FS.writeBinFile (out / "checker_step.rs") ⟨source.toArray⟩
  IO.println s!"operations={program.operations.length},inputs={program.inputCount},outputs={program.outputs.length},source_bytes={source.length}"
  IO.println "{\"status\":\"GeneratedUncheckedSHAWordProgram\",\"release_relation_complete\":false,\"g1_pass\":false}"
  return 0
