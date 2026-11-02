import Core033.ScalarRangeGuards
import Core033.WordSource
import Core033.MatrixCodec

def main (args : List String) : IO UInt32 := do
  let [directory] := args | do IO.eprintln "usage: GenerateGuardedScalarRanges NEW_DIRECTORY";return 3
  let out : System.FilePath := directory
  if ← out.pathExists then IO.eprintln "output must be new";return 3
  IO.FS.createDirAll out
  for (label,kind) in [("boolean",Core033.ScalarRangeGuards.Kind.boolean),
      ("byte",Core033.ScalarRangeGuards.Kind.byte),("short",Core033.ScalarRangeGuards.Kind.short)] do
    let target:=out/label
    IO.FS.createDirAll target
    let matrix:=Core033.ScalarRangeGuards.compile Core033.R1CS.pallasScalarModulus kind
    let bytes:=Core033.MatrixCodec.encode matrix
    IO.FS.writeBinFile (target/"matrix.bin") ⟨bytes.toArray⟩
    IO.FS.writeBinFile (target/"checker_step.rs")
      ⟨(Core033.WordSource.lowerFunction Core033.ScalarRanges.program).bytes.toArray⟩
    IO.println s!"{label}: rows={matrix.rows.length},bytes={bytes.length}"
  IO.println "{\"outcome\":\"GeneratedUncheckedGuardedScalarRanges\",\"g1_pass\":false}"
  return 0
