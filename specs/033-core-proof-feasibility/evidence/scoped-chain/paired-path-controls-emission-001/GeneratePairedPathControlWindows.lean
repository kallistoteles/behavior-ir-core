import Core033.PairedPathReloadGuards
import Core033.PairedPathFinalizeGuards
import Core033.MatrixFile
import Lean.Data.Json

/- Untrusted emission. Literal/model, actual Rust bytes, complete actual numeric
rows and closed-value file bindings remain independent required acceptance. -/
open Core033

def operationText : WordIR.Op → String
  | .literal word => s!".literal (BitVec.ofNat 32 {word.toNat})"
  | .band a b => s!".band {a} {b}"
  | .bxor a b => s!".bxor {a} {b}"
  | .badd a b => s!".badd {a} {b}"
  | .bnot a => s!".bnot {a}"
  | .rotr a n => s!".rotr {a} {n}"
  | .shr a n => s!".shr {a} {n}"

def emit (directory : System.FilePath) (model : String) (program : WordIR.Program)
    (guardCount : Nat) : IO Unit := do
  IO.FS.createDirAll directory
  let matrix := WordGuardSuffix.compile R1CS.pallasScalarModulus program 96 guardCount
  let source := (WordSource.lowerFunction program).bytes
  IO.FS.writeBinFile (directory/"checker_step.rs") ⟨source.toArray⟩
  MatrixFile.write (directory/"matrix.bin") matrix
  let operations := program.operations.map operationText
  IO.FS.writeFile (directory/"operation-literals.json")
    ((Lean.Json.arr (operations.toArray.map Lean.Json.str)).compress++"\n")
  let mut code := s!"import Core033.{model}Guards\nnamespace Actual{model}IR\nopen Core033\nset_option Elab.async false\nset_option maxRecDepth 16384\nset_option maxHeartbeats 8000000\n"
  let groups := (operations.length+63)/64
  for group in List.range groups do
    let chunk := (operations.drop (64*group)).take 64
    code := code++s!"def operations{group} : List WordIR.Op := ["++String.intercalate "," chunk++"]\n"
  code := code++"def operationChunks : List (List WordIR.Op) := ["++
    String.intercalate "," ((List.range groups).map (fun group=>s!"operations{group}"))++"]\n"
  code := code++s!"def program : WordIR.Program := ⟨{program.inputCount},operationChunks.flatten,["++
    String.intercalate "," (program.outputs.map toString)++"]⟩\n"
  code := code++s!"theorem ir_exact : program=Core033.{model}.program := by core033_kernel_decide\n"++
    "theorem safe_checked : WordSource.checkSafe (WordSource.lowerFunction program)=true := by core033_kernel_decide\n"++
    "theorem program_valid : program.Valid := WordSourceValidity.safe_program_valid _ ((WordSource.check_safe_exact _).mp safe_checked)\n"++
    s!"theorem output_count : program.outputs.length={program.outputs.length} := by decide\nend Actual{model}IR\n"
  IO.FS.writeFile (directory/s!"Actual{model}IR.lean") code
  IO.println ((Lean.Json.mkObj [("model",.str model),("input_words",toJson program.inputCount),
    ("operations",toJson operations.length),("outputs",toJson program.outputs.length),
    ("guards",toJson guardCount),("matrix_variables",toJson matrix.variableCount),
    ("matrix_rows",toJson matrix.rows.length),("source_bytes",toJson source.length),
    ("scope",.str "unchecked emission only"),("g1_pass",.bool false)]).compress)

def main (args : List String) : IO Unit := do
  let [directory] := args | throw (IO.userError "usage: GeneratePairedPathControlWindows NEW_DIRECTORY")
  let out : System.FilePath := directory
  if ← out.pathExists then throw (IO.userError "output must be new")
  IO.FS.createDirAll out
  emit (out/"reload") "PairedPathReload" PairedPathReload.program 3
  emit (out/"finalize") "PairedPathFinalize" PairedPathFinalize.program 16
