import Core033.AuthenticatedBranchRouting
import Core033.PairedPathRouteMeaning
import Core033.OwnBranchRouting

namespace Core033.AuthenticatedBranchOwnProjection
open WordIR WordStage AuthenticatedBranchRound AuthenticatedBranchRouting
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
attribute [local irreducible] WordIR.Program.eval WordInline.inline WordSequence.compileAll AuthenticatedBranchRound.selectors

def phaseWord (values : Nat → Word) : Word :=
  ControlPrimitives.selectRaw (values (selectors.1.getD 3 0)) 3
    (ControlPrimitives.selectRaw (values (selectors.1.getD 2 0)) 2 1)

def ownRaw (inputs : Nat → Word) (phase : Word) (index : Nat) : Word :=
  if index=0 then inputs 2 else if index=1 then inputs 1
  else if index<24 then inputs (96+(index-2)) else if index=24 then phase
  else inputs (47+(index-25))

def ownProject (inputs : Nat → Word) (phase : Word) (index : Nat) : Word :=
  if index=0 then phase else if index=1 then inputs 1
  else if index=2 then inputs 2+4294967295 else if index<11 then 0
  else if index<27 then inputs (96+(index-11)) else if index<31 then inputs (112+(index-27))
  else if index=31 then inputs 116 else if index=32 then 1
  else if index=33 then inputs 117 else if index=34 then 1
  else inputs (47+(index-35))

theorem parent_expression_projected (values : Nat → Word) (index : Nat) :
    (parentExpression index).eval values=PairedPathRouteMeaning.project values
      (values (selectors.1.getD 1 0)) (values (selectors.1.getD 2 0)) (values (selectors.1.getD 3 0)) index := by
  unfold parentExpression PairedPathRouteMeaning.project
  by_cases h0 : index=0
  · simp only [if_pos h0]
    all_goals rfl
  · simp only [if_neg h0]
    by_cases h1 : index<11
    · simp only [if_pos h1]
      all_goals rfl
    · simp only [if_neg h1]
      by_cases h2 : index<19
      · simp only [if_pos h2]
        all_goals rfl
      · simp only [if_neg h2]
        by_cases h3 : index<27
        · simp only [if_pos h3]
          all_goals rfl
        · simp only [if_neg h3]
          by_cases h4 : index=27
          · simp only [if_pos h4]
            all_goals rfl
          · simp only [if_neg h4]
            by_cases h5 : index=28
            · simp only [if_pos h5]
              all_goals rfl
            · simp only [if_neg h5]
              by_cases h6 : index=29
              · simp only [if_pos h6]
                all_goals rfl
              · simp only [if_neg h6]
                by_cases h7 : index=30
                · simp only [if_pos h7]
                  all_goals rfl
                · simp only [if_neg h7]
                  by_cases h8 : index=31
                  · simp only [if_pos h8]
                    all_goals rfl
                  · simp only [if_neg h8]
                    by_cases h9 : index=32
                    · simp only [if_pos h9]
                      all_goals rfl
                    · simp only [if_neg h9]
                      by_cases h10 : index=33
                      · simp only [if_pos h10]
                        all_goals rfl
                      · simp only [if_neg h10]
                        by_cases h11 : index=34
                        · simp only [if_pos h11]
                          all_goals rfl
                        · simp only [if_neg h11]
                          all_goals rfl

theorem own_expression_projected (values : Nat → Word) (index : Nat) :
    (ownExpression index).eval values=ownProject values (phaseWord values) index := by
  unfold ownExpression ownProject
  by_cases h0 : index=0
  · simp only [if_pos h0]
    all_goals rfl
  · simp only [if_neg h0]
    by_cases h1 : index=1
    · simp only [if_pos h1]
      all_goals rfl
    · simp only [if_neg h1]
      by_cases h2 : index=2
      · simp only [if_pos h2]
        all_goals rfl
      · simp only [if_neg h2]
        by_cases h3 : index<11
        · simp only [if_pos h3]
          all_goals rfl
        · simp only [if_neg h3]
          by_cases h4 : index<27
          · simp only [if_pos h4]
            all_goals rfl
          · simp only [if_neg h4]
            by_cases h5 : index<31
            · simp only [if_pos h5]
              all_goals rfl
            · simp only [if_neg h5]
              by_cases h6 : index=31
              · simp only [if_pos h6]
                all_goals rfl
              · simp only [if_neg h6]
                by_cases h7 : index=32
                · simp only [if_pos h7]
                  all_goals rfl
                · simp only [if_neg h7]
                  by_cases h8 : index=33
                  · simp only [if_pos h8]
                    all_goals rfl
                  · simp only [if_neg h8]
                    by_cases h9 : index=34
                    · simp only [if_pos h9]
                      all_goals rfl
                    · simp only [if_neg h9]
                      rfl

theorem own_routed_projected (inputs : Nat → Word) (phase : Word) (index : Nat) (bound : index<43) :
    OwnBranchRouting.routed (ownRaw inputs phase) index=ownProject inputs phase index := by
  have alternatives : index=0 ∨ index=1 ∨ index=2 ∨ index=3 ∨ index=4 ∨ index=5 ∨ index=6 ∨ index=7 ∨ index=8 ∨ index=9 ∨ index=10 ∨ index=11 ∨ index=12 ∨ index=13 ∨ index=14 ∨ index=15 ∨ index=16 ∨ index=17 ∨ index=18 ∨ index=19 ∨ index=20 ∨ index=21 ∨ index=22 ∨ index=23 ∨ index=24 ∨ index=25 ∨ index=26 ∨ index=27 ∨ index=28 ∨ index=29 ∨ index=30 ∨ index=31 ∨ index=32 ∨ index=33 ∨ index=34 ∨ index=35 ∨ index=36 ∨ index=37 ∨ index=38 ∨ index=39 ∨ index=40 ∨ index=41 ∨ index=42 := by omega
  rcases alternatives with rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl|rfl
  all_goals simp [OwnBranchRouting.routed,ownRaw,ownProject]

theorem own_project_congr (left right : Nat → Word) (phase : Word)
    (same : ∀ index,index<118 → left index=right index) (index : Nat) (bound : index<43) :
    ownProject left phase index=ownProject right phase index := by
  unfold ownProject
  by_cases h0 : index=0
  · simp only [if_pos h0]
    all_goals rfl
  · simp only [if_neg h0]
    by_cases h1 : index=1
    · simp only [if_pos h1]
      exact same 1 (by decide)
    · simp only [if_neg h1]
      by_cases h2 : index=2
      · simp only [if_pos h2]
        exact congrArg (fun word : Word=>word+4294967295) (same 2 (by decide))
      · simp only [if_neg h2]
        by_cases h3 : index<11
        · simp only [if_pos h3]
          all_goals rfl
        · simp only [if_neg h3]
          by_cases h4 : index<27
          · simp only [if_pos h4]
            exact same _ (by omega)
          · simp only [if_neg h4]
            by_cases h5 : index<31
            · simp only [if_pos h5]
              exact same _ (by omega)
            · simp only [if_neg h5]
              by_cases h6 : index=31
              · simp only [if_pos h6]
                exact same 116 (by decide)
              · simp only [if_neg h6]
                by_cases h7 : index=32
                · simp only [if_pos h7]
                  all_goals rfl
                · simp only [if_neg h7]
                  by_cases h8 : index=33
                  · simp only [if_pos h8]
                    exact same 117 (by decide)
                  · simp only [if_neg h8]
                    by_cases h9 : index=34
                    · simp only [if_pos h9]
                      all_goals rfl
                    · simp only [if_neg h9]
                      exact same _ (by omega)

theorem local_expression_projected (values : Nat → Word) (index : Nat) :
    (localExpression index).eval values=ControlPrimitives.selectRaw (values (selectors.1.getD 0 0))
      (ownProject values (phaseWord values) index)
      (PairedPathRouteMeaning.project values (values (selectors.1.getD 1 0))
        (values (selectors.1.getD 2 0)) (values (selectors.1.getD 3 0)) index) := by
  have selected : (localExpression index).eval values=ControlPrimitives.selectRaw
      (values (selectors.1.getD 0 0)) ((ownExpression index).eval values) ((parentExpression index).eval values) := rfl
  have first:=congrArg (fun word=>ControlPrimitives.selectRaw (values (selectors.1.getD 0 0))
    word ((parentExpression index).eval values)) (own_expression_projected values index)
  have second:=congrArg (fun word=>ControlPrimitives.selectRaw (values (selectors.1.getD 0 0))
    (ownProject values (phaseWord values) index) word) (parent_expression_projected values index)
  exact selected.trans (first.trans second)

theorem original_operands (inputs : Nat → Word) (index : Nat) (bound : index<43) :
    routedWord inputs index=ControlPrimitives.selectRaw
      (selectors.2.values inputs (selectors.1.getD 0 0))
      (ownProject inputs (phaseWord (selectors.2.values inputs)) index)
      (PairedPathRouteMeaning.project inputs (selectors.2.values inputs (selectors.1.getD 1 0))
        (selectors.2.values inputs (selectors.1.getD 2 0))
        (selectors.2.values inputs (selectors.1.getD 3 0)) index) := by
  have actual:=local_expression_projected (selectors.2.values inputs) index
  have own:=own_project_congr (selectors.2.values inputs) inputs (phaseWord (selectors.2.values inputs))
    (original_at_selectors inputs) index bound
  have parent:=PairedPathRouteMeaning.project_congr (selectors.2.values inputs) inputs
    (selectors.2.values inputs (selectors.1.getD 1 0))
    (selectors.2.values inputs (selectors.1.getD 2 0))
    (selectors.2.values inputs (selectors.1.getD 3 0))
    (by intro position bounded;exact original_at_selectors inputs position (by omega)) index bound
  exact actual.trans (PairedPathRouteMeaning.select_congr _ _ _ _ _ own parent)

end Core033.AuthenticatedBranchOwnProjection
