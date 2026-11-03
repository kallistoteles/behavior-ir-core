import Core033.FrameHashController
import Core033.DigestWords
import Core033.ParentMetadataProgram

/- Physical post-hash path update, not a whole authenticated opening.
Phase three transfers every raw SHA word through the original digest byte order,
computes the parent count/flags, advances the admitted counter and preserves the
remaining frame/context words. Sibling authentication and outer dispatch remain
separate obligations. State allocation matches FrameHashController exactly. -/
namespace Core033.PathFrameAdvance
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def initial : Builder := Builder.empty 43
def digestPorts (index : Nat) : Nat := 35+index
def digested := WordInline.inline initial DigestWords.program digestPorts
def digestRegister (index : Nat) := WordInlineOutputs.register initial DigestWords.program digestPorts index

def metadataPorts (index : Nat) : Nat := 27+index
def metadata := WordInline.inline digested.2 ParentMetadataProgram.program metadataPorts
def metadataRegister (index : Nat) := WordInlineOutputs.register digested.2 ParentMetadataProgram.program metadataPorts index

def geometryPorts (_ : Nat) : Nat := 2
def geometry := WordInline.inline metadata.2 PathCounterProgram.program geometryPorts
def geometryRegister (index : Nat) := WordInlineOutputs.register metadata.2 PathCounterProgram.program geometryPorts index

def finalExpressions : List Expr := [.literal 4,WordEquality.expression (.input 0) (.literal 3)]
def finalized := WordSequence.compileAll geometry.2 finalExpressions

def statePort (index : Nat) : Nat :=
  if index=0 then finalized.1.getD 0 0
  else if index=2 then geometryRegister 0
  else if 11≤index ∧ index<19 then digestRegister (index-11)
  else if index=27 then metadataRegister 0
  else if index=28 then metadataRegister 1
  else if index=31 then metadataRegister 3
  else if index=33 then metadataRegister 4
  else index

def outputs : List Nat := (List.range 43).map statePort++
  [metadataRegister 2,metadataRegister 5,metadataRegister 6,metadataRegister 7,metadataRegister 8,
    geometryRegister 2,finalized.1.getD 1 0]
def program : Program := ⟨43,finalized.2.operations,outputs⟩

end Core033.PathFrameAdvance
