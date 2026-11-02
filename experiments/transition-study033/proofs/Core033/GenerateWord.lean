import Core033.WordPrimitive

def main (args : List String) : IO UInt32 := do
  let [directory] := args | do
    IO.eprintln "usage: GenerateWord NEW_DIRECTORY"
    return 3
  let out : System.FilePath := directory
  if ← out.pathExists then
    IO.eprintln "output must be new"
    return 3
  IO.FS.createDirAll out
  let bytes := (Core033.WordSource.lowerFunction Core033.WordPrimitive.program).bytes
  IO.FS.writeBinFile (out / "checker_step.rs") ⟨bytes.toArray⟩
  IO.println "{\"status\":\"GeneratedUncheckedU32Fixture\",\"release_relation_complete\":false,\"g1_pass\":false}"
  return 0
