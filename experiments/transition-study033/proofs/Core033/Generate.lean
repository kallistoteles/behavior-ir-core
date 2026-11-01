import Core033.IR
import Core033.R1CS

/- Untrusted emission. Acceptance is by the separate actual-byte source and
matrix validators after emission/formatting, never by trusting this generator. -/
namespace Core033.Generate

def littleEndian (width value : Nat) : List UInt8 :=
  (List.range width).map (fun i => UInt8.ofNat (value / 256^i % 256))

def vector (terms : R1CS.Linear) : List UInt8 :=
  littleEndian 4 terms.length ++ terms.flatMap (fun term =>
    littleEndian 4 term.wire ++ littleEndian 32 term.coefficient)

def matrixBytes (matrix : R1CS.Matrix) : List UInt8 :=
  let ports := matrix.inputPorts ++ matrix.privatePorts ++ matrix.outputPorts
  "core033.semantic.v1".toUTF8.data.toList ++ [0,96,0] ++
  littleEndian 32 matrix.modulus ++
  ([matrix.variableCount, matrix.inputPorts.length, matrix.privatePorts.length,
    matrix.outputPorts.length, matrix.rows.length, matrix.constantOne,
    ports.length].flatMap (littleEndian 4)) ++
  ports.flatMap (littleEndian 4) ++ littleEndian 4 matrix.rows.length ++
  matrix.rows.flatMap (fun row => vector row.a ++ vector row.b ++ vector row.c)

def firstSource : Option String :=
  match IR.firstPrimitive with
  | .negative (.wordInput index) =>
      if index.val = 0 then some "pub fn checker_step(x: i64) -> bool {\n    x < 0_i64\n}\n" else none
  | _ => none

end Core033.Generate

def main (args : List String) : IO UInt32 := do
  let [directory] := args | do
    IO.eprintln "usage: generate OUTPUT_DIRECTORY"
    return 3
  let some source := Core033.Generate.firstSource | do
    IO.eprintln "unsupported first IR primitive"
    return 6
  let out : System.FilePath := directory
  if ← out.pathExists then
    IO.eprintln "output directory must be new"
    return 3
  IO.FS.createDirAll out
  IO.FS.writeFile (out / "checker_step.rs") source
  IO.FS.writeBinFile (out / "matrix.bin")
    ⟨(Core033.Generate.matrixBytes (Core033.R1CS.compileNegative Core033.R1CS.pallasScalarModulus)).toArray⟩
  IO.println "{\"status\":\"GeneratedUnchecked\",\"g1_pass\":false}"
  return 0
