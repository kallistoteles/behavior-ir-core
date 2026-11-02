import Core033.SHA256Compiled

open Core033
open WordIR WordStage

def numeralList (xs : List Nat) : String := "["++String.intercalate "," (xs.map toString)++"]"
def opLiteral : WordIR.Op → String
  | .literal x => ".literal (BitVec.ofNat 32 "++toString x.toNat++")"
  | .band a b => s!".band {a} {b}"
  | .bxor a b => s!".bxor {a} {b}"
  | .bnot a => s!".bnot {a}"
  | .badd a b => s!".badd {a} {b}"
  | .rotr a n => s!".rotr {a} {n}"
  | .shr a n => s!".shr {a} {n}"
def opList (xs : List WordIR.Op) : String := "["++String.intercalate "," (xs.map opLiteral)++"]"
def arrayLiteral (xs : Array Nat) : String := "#"++numeralList xs.toList
def stateLiteral (s : SHA256Stage.State) : String := "⟨"++String.intercalate "," (s.registers.map toString)++"⟩"

def main (args : List String) : IO UInt32 := do
  let [file] := args | do IO.eprintln "usage: GenerateSHAStages NEW_FILE";return 3
  let path : System.FilePath := file
  if ← path.pathExists then IO.eprintln "output must be new";return 3
  let mut lines := ["import Core033.SHA256Compiled", "namespace Core033.SHAMaterialized", "open WordIR WordStage", "set_option Elab.async false", "set_option maxHeartbeats 4000000", "set_option maxRecDepth 8192", "def ops0 : List WordIR.Op := []", "attribute [irreducible] ops0", "theorem len0 : ops0.length=0 := by unfold ops0;rfl", "def b0 : Builder := ⟨24,ops0⟩", "def w0 : Array Nat := "++arrayLiteral (Array.ofFn SHA256Compiled.inputBlock)]
  let mut builder := Builder.empty 24
  let mut words := Array.ofFn SHA256Compiled.inputBlock
  for i in [:48] do
    let n:=i+1
    let next:=SHA256Schedule.extend builder words
    let addedOps:=next.2.reversedOperations.take (next.2.reversedOperations.length-builder.reversedOperations.length)
    lines:=lines++[s!"def ops{n} : List WordIR.Op := "++opList addedOps++s!"++ops{i}",
      s!"attribute [irreducible] ops{n}",
      s!"theorem len{n} : ops{n}.length={next.2.reversedOperations.length} := by simp only [ops{n},List.length_append,List.length_cons,List.length_nil,len{i}]",
      s!"def b{n} : Builder := ⟨24,ops{n}⟩", s!"def w{n} : Array Nat := "++arrayLiteral next.1,
      s!"theorem step{n} : SHA256Schedule.extend b{i} w{i} = (w{n},b{n}) := by",
      s!"  simp only [SHA256Schedule.extend,SHA256Schedule.expression,w{i},b{i},WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len{i}]",
      s!"  unfold w{n} b{n} ops{n}","  rfl"]
    builder:=next.2;words:=next.1
  lines:=lines++["def s48 : SHA256Stage.State := "++stateLiteral SHA256Compiled.inputState]
  let mut state:=SHA256Compiled.inputState
  for j in [:64] do
    let i:=48+j
    let n:=i+1
    let k:=SHA256.constants.getD j 0
    let w:=words.getD j 0
    let next:=SHA256Stage.round builder state k w
    let addedOps:=next.2.reversedOperations.take (next.2.reversedOperations.length-builder.reversedOperations.length)
    lines:=lines++[s!"def ops{n} : List WordIR.Op := "++opList addedOps++s!"++ops{i}",
      s!"attribute [irreducible] ops{n}",
      s!"theorem len{n} : ops{n}.length={next.2.reversedOperations.length} := by simp only [ops{n},List.length_append,List.length_cons,List.length_nil,len{i}]",
      s!"def b{n} : Builder := ⟨24,ops{n}⟩",s!"def s{n} : SHA256Stage.State := "++stateLiteral next.1,
      s!"theorem step{n} : SHA256Stage.round b{i} s{i} (BitVec.ofNat 32 {k.toNat}) {w} = (s{n},b{n}) := by",
      s!"  simp only [SHA256Stage.round,SHA256Stage.t1,SHA256Stage.t2,SHA256Stage.big0,SHA256Stage.big1,SHA256Stage.choose,SHA256Stage.majority,s{i},b{i},WordStage.compile,WordStage.emit,Builder.next,List.length_cons,len{i}]",
      s!"  unfold s{n} b{n} ops{n}","  rfl"]
    builder:=next.2;state:=next.1
  let final:=SHA256Compiled.feedForward (SHA256Compiled.inputState.registers.zip state.registers) builder
  let addedOps:=final.2.reversedOperations.take (final.2.reversedOperations.length-builder.reversedOperations.length)
  lines:=lines++["def ops113 : List WordIR.Op := "++opList addedOps++"++ops112",
    "attribute [irreducible] ops113",
    "theorem len113 : ops113.length=2360 := by simp only [ops113,List.length_append,List.length_cons,List.length_nil,len112]",
    "def b113 : Builder := ⟨24,ops113⟩", "def outputRegisters : List Nat := "++numeralList final.1,
    "theorem feed_exact : SHA256Compiled.feedForward (SHA256Compiled.inputState.registers.zip s112.registers) b112 = (outputRegisters,b113) := by",
    "  simp only [SHA256Compiled.feedForward,SHA256Compiled.inputState,SHA256Stage.State.registers,s112,List.zip_cons_cons,List.zip_nil_left,b112,WordStage.emit,Builder.next,List.length_cons,len112]",
    "  unfold outputRegisters b113 ops113", "  rfl",
    "theorem scheduled_exact : SHA256Compiled.scheduled=(w48,b48) := by",
    "  unfold SHA256Compiled.scheduled",
    "  have initialBuilder : Builder.empty 24=b0 := by unfold Builder.empty b0 ops0;rfl",
    "  have initialWords : Array.ofFn SHA256Compiled.inputBlock=w0 := rfl",
    "  rw [initialBuilder,initialWords]",
    "  simp only [show List.range 48="++numeralList (List.range 48)++" by decide,SHA256Schedule.loop,"++String.intercalate "," ((List.range 48).map (fun i=>s!"step{i+1}"))++"]",
    "theorem working_exact : SHA256Compiled.working=(s112,b112) := by",
    "  unfold SHA256Compiled.working",
    "  rw [scheduled_exact]",
    "  change SHA256Compiled.roundLoop (List.range 64) s48 b48 w48=(s112,b112)"]++
    (List.range 64).map (fun j=>s!"  have round{j} : SHA256Stage.round b{48+j} s{48+j} (SHA256.constants.getD {j} 0) (w48.getD {j} 0)=(s{49+j},b{49+j}) := step{49+j}")++[
    "  simp only [show List.range 64="++numeralList (List.range 64)++" by decide,SHA256Compiled.roundLoop,"++String.intercalate "," ((List.range 64).map (fun i=>s!"round{i}"))++"]",
    "theorem finished_exact : SHA256Compiled.finished=(outputRegisters,b113) := by",
    "  unfold SHA256Compiled.finished", "  rw [working_exact]", "  exact feed_exact",
    "def program : WordIR.Program := ⟨24,b113.operations,outputRegisters⟩",
    "theorem program_exact : SHA256Compiled.program=program := by",
    "  unfold SHA256Compiled.program", "  rw [finished_exact]", "  rfl",
    "theorem program_meaning (inputs : Nat → WordIR.Word) : program.eval inputs=SHA256.stateWords (SHA256.compress (SHA256Compiled.expectedState inputs) (SHA256Compiled.expectedBlock inputs)) := by",
    "  rw [←program_exact]", "  exact SHA256Compiled.program_meaning inputs",
    "end Core033.SHAMaterialized"]
  IO.FS.writeFile path (String.intercalate "\n" lines++"\n")
  IO.println "Generated unchecked stage equations; every equation still requires kernel checking."
  return 0
