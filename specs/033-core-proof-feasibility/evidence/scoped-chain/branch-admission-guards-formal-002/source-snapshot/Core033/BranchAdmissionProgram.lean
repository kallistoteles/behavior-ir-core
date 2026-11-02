import Core033.BranchAdmission

namespace Core033.BranchAdmissionProgram
open WordIR WordStage

def expressions : List WordStage.Expr :=
  let low:=.badd (.input 18) (.input 20)
  let high:=.badd (.badd (.input 19) (.input 21)) (ControlPrimitives.carry (.input 18) (.input 20))
  [.band (ControlPrimitives.less (.literal 0) (.input 0)) (ControlPrimitives.less (.input 0) (.literal 3)),
    ControlPrimitives.zero (.shr (.input 1) 8),
    ControlPrimitives.zero (.shr (.input 24) 1),ControlPrimitives.zero (.shr (.input 25) 1),
    WordEquality.expression low (.input 22),WordEquality.expression high (.input 23),
    .band (.band (NodeCountProgram.withinExpr (.input 18) (.input 19))
      (NodeCountProgram.withinExpr (.input 20) (.input 21))) (NodeCountProgram.withinExpr low high)]

def program : WordIR.Program := WordSequence.program 26 expressions

theorem expressions_bounded : ∀ expression∈expressions,expression.Bounded 26 := by
  simp [expressions,NodeCountProgram.withinExpr,WordEquality.expression,ControlPrimitives.zero,
    ControlPrimitives.less,ControlPrimitives.carry,WordStage.Expr.Bounded]

theorem program_meaning (inputs : Nat → Word) : program.eval inputs=BranchAdmission.flags inputs := by
  rw [program,WordSequence.program_meaning 26 expressions expressions_bounded]
  rfl

theorem exact_admission (inputs : Nat → Word) :
    (∀ flag∈program.eval inputs,flag=1) ↔ BranchAdmission.Admitted inputs := by
  rw [program_meaning]
  rfl

theorem admitted_original_encoding (inputs : Nat → Word) (accepted : ∀ flag∈program.eval inputs,flag=1) :
    ∃ positive covered,
      BranchCodec.Framed (BranchWordEncoding.branch inputs positive covered) ∧
      BranchCodec.MetadataAdmitted (BranchWordEncoding.branch inputs positive covered) ∧
      BranchWordEncoding.emittedBytes inputs=BranchCodec.encode (BranchWordEncoding.branch inputs positive covered) :=
  BranchAdmission.admitted_original_encoding inputs ((exact_admission inputs).mp accepted)

end Core033.BranchAdmissionProgram
