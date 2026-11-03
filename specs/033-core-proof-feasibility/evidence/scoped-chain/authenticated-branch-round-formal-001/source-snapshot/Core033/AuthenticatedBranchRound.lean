import Core033.PathRoundDispatchGuards

/- Local nine-phase construction candidate, not whole K or a release relation.
The original paired96word window is extended with the sibling's OWN record:
96..111 left/right roots,112..115 left/right counts,116selfP,117selfC.
The shared counter is the sibling height and must be1..255 for this branch case.
Phases1..3 hash the own sibling record,4..6 the old parent,7..9 the new parent.
One actual local hash/update body is reused. Sibling summary ports35..46 are
written only from that body's complete own-record return at phase3. The original
record, child summaries, address and context remain unchanged across all9steps.
Leaf-height0 and complete opening/genesis/whole-Core binding are separate. -/
namespace Core033.AuthenticatedBranchRound
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def equalPhase (opcode : Word) := WordEquality.expression (.input 0) (.literal opcode)
def ownActivation : Expr := .bxor (.bxor (equalPhase 1) (equalPhase 2)) (equalPhase 3)
def newActivation : Expr := .bxor (.bxor (equalPhase 7) (equalPhase 8)) (equalPhase 9)
def secondActivation : Expr := .bxor (.bxor (equalPhase 2) (equalPhase 5)) (equalPhase 8)
def thirdActivation : Expr := .bxor (.bxor (equalPhase 3) (equalPhase 6)) (equalPhase 9)
def admission : Expr := .bxor (.bxor ownActivation
  (.bxor (.bxor (equalPhase 4) (equalPhase 5)) (equalPhase 6))) newActivation

def initial : Builder := Builder.empty 118
def selectors := WordSequence.compileAll initial
  [ownActivation,newActivation,secondActivation,thirdActivation,equalPhase 3,equalPhase 6,equalPhase 9,admission]
def selected (position : Nat) : Expr := .input (selectors.1.getD position 0)
def localPhase : Expr := ControlPrimitives.select (selected 3) (.literal 3)
  (ControlPrimitives.select (selected 2) (.literal 2) (.literal 1))
def chooseNew (old later : Nat) : Expr := ControlPrimitives.select (selected 1) (.input later) (.input old)

def parentExpression (index : Nat) : Expr :=
  if index=0 then localPhase else if index<11 then .input index
  else if index<19 then chooseNew index (index+12)
  else if index<27 then .input (35+(index-19))
  else if index=27 then chooseNew 19 31 else if index=28 then chooseNew 20 32
  else if index=29 then .input 43 else if index=30 then .input 44
  else if index=31 then chooseNew 21 33 else if index=32 then .input 45
  else if index=33 then chooseNew 22 34 else if index=34 then .input 46
  else .input (47+(index-35))

def ownExpression (index : Nat) : Expr :=
  if index=0 then localPhase else if index=1 then .input 1
  else if index=2 then .badd (.input 2) (.literal 4294967295)
  else if index<11 then .literal 0 else if index<27 then .input (96+(index-11))
  else if index<31 then .input (112+(index-27))
  else if index=31 then .input 116 else if index=32 then .literal 1
  else if index=33 then .input 117 else if index=34 then .literal 1
  else .input (47+(index-35))

def localExpression (index : Nat) : Expr :=
  ControlPrimitives.select (selected 0) (ownExpression index) (parentExpression index)
def routedExpressions := (List.range 43).map localExpression
def routed := WordSequence.compileAll selectors.2 routedExpressions
def localInput (index : Nat) := routed.1.getD index 0
def round := WordInline.inline routed.2 PathRoundDispatch.program localInput
def localOutput (index : Nat) := WordInlineOutputs.register routed.2 PathRoundDispatch.program localInput index

def parentIndex (index : Nat) : Nat :=
  if index<8 then 11+index else if index<10 then 27+(index-8) else if index=10 then 31 else 33

def stateExpression (index : Nat) : Expr :=
  if index=0 then .badd (.input 0) (.literal 1)
  else if index=2 then ControlPrimitives.select (selected 6) (.input (localOutput 2)) (.input 2)
  else if 35≤index ∧ index<47 then ControlPrimitives.select (selected 4)
    (.input (localOutput (parentIndex (index-35)))) (.input index)
  else if 47≤index ∧ index<55 then .input (localOutput (35+(index-47)))
  else if 55≤index ∧ index<67 then ControlPrimitives.select (selected 5)
    (.input (localOutput (parentIndex (index-55)))) (.input index)
  else if 67≤index ∧ index<79 then ControlPrimitives.select (selected 6)
    (.input (localOutput (parentIndex (index-67)))) (.input index)
  else .input index

def finalExpressions := (List.range 118).map stateExpression
def finalized := WordSequence.compileAll round.2 finalExpressions
def outputs : List Nat := finalized.1++round.1.drop 43++[selectors.1.getD 7 0]
def program : Program := ⟨118,finalized.2.operations,outputs⟩

end Core033.AuthenticatedBranchRound
