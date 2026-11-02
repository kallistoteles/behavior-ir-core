import Core033.WordMatrix
import Core033.SHAMaterializedFinal

/- Untrusted emission in the unchanged canonical binary matrix format.
Generation and supplementary parsing never replace actual matrix refinement. -/
namespace Core033.WordMatrixEmission

def littleEndian (width value : Nat) : List UInt8 :=
  (List.range width).map (fun i=>UInt8.ofNat (value/256^i%256))
def vector (terms : R1CS.Linear) : List UInt8 :=
  littleEndian 4 terms.length++terms.flatMap (fun term=>littleEndian 4 term.wire++littleEndian 32 term.coefficient)
def matrixBytes (matrix : R1CS.Matrix) : List UInt8 :=
  let ports:=matrix.inputPorts++matrix.privatePorts++matrix.outputPorts
  "core033.semantic.v1".toUTF8.data.toList++[0,96,0]++littleEndian 32 matrix.modulus++
  [matrix.variableCount,matrix.inputPorts.length,matrix.privatePorts.length,matrix.outputPorts.length,
    matrix.rows.length,matrix.constantOne,ports.length].flatMap (littleEndian 4)++
  ports.flatMap (littleEndian 4)++littleEndian 4 matrix.rows.length++
  matrix.rows.flatMap (fun row=>vector row.a++vector row.b++vector row.c)
end Core033.WordMatrixEmission

def main (args : List String) : IO UInt32 := do
  let [directory] := args | do IO.eprintln "usage: GenerateWordMatrix NEW_DIRECTORY";return 3
  let out : System.FilePath := directory
  if ← out.pathExists then IO.eprintln "output must be new";return 3
  IO.FS.createDirAll out
  let matrix:=Core033.WordMatrix.compile Core033.R1CS.pallasScalarModulus Core033.SHAMaterialized.program
  let bytes:=Core033.WordMatrixEmission.matrixBytes matrix
  IO.FS.writeBinFile (out/"matrix.bin") ⟨bytes.toArray⟩
  IO.println s!"variables={matrix.variableCount},rows={matrix.rows.length},inputs={matrix.inputPorts.length},outputs={matrix.outputPorts.length},private={matrix.privatePorts.length},bytes={bytes.length}"
  IO.println "{\"outcome\":\"GeneratedUncheckedSHAWordMatrix\",\"actual_matrix_correspondence\":false,\"release_relation_complete\":false,\"g1_pass\":false}"
  return 0
