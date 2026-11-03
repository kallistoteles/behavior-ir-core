import Core033.PathRoundDispatchGuards

/- Fixed local paired-path state, not whole K or sibling authentication.
0 phase; 1 kind; 2 processed; 3..10 address;
11..22 old child summary; 23..34 new child summary; 35..46 shared sibling;
47..54 SHA work; 55..66 computed old parent; 67..78 computed new parent;
79..95 preserved outer context words. A summary is root[8],count[2],P,C.
Phases1/2/3 execute the old round; phases4/5/6 the new round. Phase7 returns.
All original summaries/sibling/address/context remain immutable in this round.
The common counter advances only at phase6. No producer direction or phase bit.
The caller must authenticate the sibling and bind all beginning/end summaries. -/
namespace Core033.PairedPathRound
open WordIR WordStage
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def equalPhase (opcode : Word) := WordEquality.expression (.input 0) (.literal opcode)
def newActivation : Expr := .bxor (.bxor (equalPhase 4) (equalPhase 5)) (equalPhase 6)
def secondActivation : Expr := .bxor (equalPhase 2) (equalPhase 5)
def thirdActivation : Expr := .bxor (equalPhase 3) (equalPhase 6)
def admission : Expr := .bxor (.bxor (.bxor (equalPhase 1) (equalPhase 2))
  (.bxor (equalPhase 3) (equalPhase 4))) (.bxor (equalPhase 5) (equalPhase 6))

def initial : Builder := Builder.empty 96
def selectors := WordSequence.compileAll initial
  [newActivation,secondActivation,thirdActivation,equalPhase 3,equalPhase 6,admission]
def selected (position : Nat) : Expr := .input (selectors.1.getD position 0)
def chooseNew (old later : Nat) : Expr := ControlPrimitives.select (selected 0) (.input later) (.input old)

def localExpression (index : Nat) : Expr :=
  if index=0 then ControlPrimitives.select (selected 2) (.literal 3)
    (ControlPrimitives.select (selected 1) (.literal 2) (.literal 1))
  else if index<11 then .input index
  else if index<19 then chooseNew index (index+12)
  else if index<27 then .input (35+(index-19))
  else if index=27 then chooseNew 19 31
  else if index=28 then chooseNew 20 32
  else if index=29 then .input 43
  else if index=30 then .input 44
  else if index=31 then chooseNew 21 33
  else if index=32 then .input 45
  else if index=33 then chooseNew 22 34
  else if index=34 then .input 46
  else .input (47+(index-35))

def routedExpressions := (List.range 43).map localExpression
def routed := WordSequence.compileAll selectors.2 routedExpressions
def localInput (index : Nat) := routed.1.getD index 0
def round := WordInline.inline routed.2 PathRoundDispatch.program localInput
def localOutput (index : Nat) := WordInlineOutputs.register routed.2 PathRoundDispatch.program localInput index

def parentIndex (index : Nat) : Nat :=
  if index<8 then 11+index else if index<10 then 27+(index-8)
  else if index=10 then 31 else 33

def stateExpression (index : Nat) : Expr :=
  if index=0 then .badd (.input 0) (.literal 1)
  else if index=2 then ControlPrimitives.select (selected 4) (.input (localOutput 2)) (.input 2)
  else if 47≤index ∧ index<55 then .input (localOutput (35+(index-47)))
  else if 55≤index ∧ index<67 then ControlPrimitives.select (selected 3)
    (.input (localOutput (parentIndex (index-55)))) (.input index)
  else if 67≤index ∧ index<79 then ControlPrimitives.select (selected 4)
    (.input (localOutput (parentIndex (index-67)))) (.input index)
  else .input index

def finalExpressions := (List.range 96).map stateExpression
def finalized := WordSequence.compileAll round.2 finalExpressions
def outputs : List Nat := finalized.1++round.1.drop 43++[selectors.1.getD 5 0]
def program : Program := ⟨96,finalized.2.operations,outputs⟩

end Core033.PairedPathRound
