import Core033.WordSharingCertificate

/- Ordinary generic proof composition. Concrete callers need not build
rewrite motives over an already decided large closed checker expression.
The original checker definition and universal meaning remain unchanged. -/
namespace Core033.WordSharingComposition
open WordIR WordSharingCertificate
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

theorem append_checked (target : Program) (alias : Nat → Nat)
    (left right : List Op) (first next : Nat)
    (offset : first+left.length=next)
    (left_ok : checkSteps target alias first left=true)
    (right_ok : checkSteps target alias next right=true) :
    checkSteps target alias first (left++right)=true := by
  rw [check_steps_append,left_ok,offset,right_ok]
  rfl

theorem from_facts (source target : Program) (certificate : Certificate)
    (counts : decide (source.inputCount=target.inputCount)=true)
    (source_valid : checkProgram source=true) (target_valid : checkProgram target=true)
    (aliases : decide (certificate.aliases.length=source.inputCount+source.operations.length)=true)
    (inputs : (List.range source.inputCount).all (fun index=>decide (certificate.alias index=index))=true)
    (outputs : decide (target.outputs=source.outputs.map certificate.alias)=true)
    (steps : checkSteps target certificate.alias source.inputCount source.operations=true) :
    check source target certificate=true := by
  simp only [check,counts,source_valid,target_valid,aliases,inputs,outputs,steps,Bool.and_self]

end Core033.WordSharingComposition
