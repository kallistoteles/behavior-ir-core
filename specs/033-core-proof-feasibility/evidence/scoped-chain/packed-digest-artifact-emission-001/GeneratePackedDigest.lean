import Core033.DigestPacking
import Core033.WordSource
import Core033.MatrixCodec

def main (args : List String) : IO UInt32 := do
  let [directory] := args | do IO.eprintln "usage: GeneratePackedDigest NEW_DIRECTORY";return 3
  let out : System.FilePath := directory
  if ← out.pathExists then IO.eprintln "output must be new";return 3
  IO.FS.createDirAll out
  let source:=(Core033.WordSource.lowerFunction Core033.DigestWords.program).bytes
  let matrix:=Core033.DigestPacking.compile Core033.R1CS.pallasScalarModulus
  IO.FS.writeBinFile (out/"checker_step.rs") ⟨source.toArray⟩
  IO.FS.writeBinFile (out/"matrix.bin") ⟨(Core033.MatrixCodec.encode matrix).toArray⟩
  IO.println s!"inputs={matrix.inputPorts.length},public_u64_outputs={matrix.outputPorts.length},source_u32_outputs=8,variables={matrix.variableCount},rows={matrix.rows.length}"
  IO.println "{\"outcome\":\"GeneratedUncheckedPackedDigest\",\"g1_pass\":false}"
  return 0
