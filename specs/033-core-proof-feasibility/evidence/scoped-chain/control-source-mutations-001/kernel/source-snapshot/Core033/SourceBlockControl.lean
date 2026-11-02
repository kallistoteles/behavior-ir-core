import Core033.WordSourceBlocks

/- A small changed block refutes the unchanged complete source validator.
The unmodified prefix/suffix remain exact bytes, not omitted data or hash claims. -/
namespace Core033.SourceBlockControl
open WordIR WordSource

theorem replacement_rejected (program : Program) (before good bad after : Bytes)
    (accepted : validate program (before++good++after)=true) (changed : bad≠good) :
    validate program (before++bad++after)=false := by
  apply changed_actual_bytes_rejected
  intro same
  have original:=(validation_facts program (before++good++after) accepted).2.1
  have whole : (before++bad)++after=(before++good)++after := same.trans original.symm
  exact changed (List.append_cancel_left (List.append_cancel_right whole))

theorem same_checked_component (good bad expected : Bytes) (original : good=expected)
    (rejected : decide (bad=expected)=false) : bad≠good := by
  intro same
  rw [same,original] at rejected
  simp at rejected

end Core033.SourceBlockControl
