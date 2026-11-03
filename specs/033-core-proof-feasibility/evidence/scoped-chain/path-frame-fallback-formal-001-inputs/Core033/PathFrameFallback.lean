import Core033.PathFrameCompleteness

/- Fixed inactive operands are locally admitted. They are not a claim about an
actual authenticated sibling or an initialized public machine state. -/
namespace Core033.PathFrameFallback
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def inputs (index : Nat) : Word := if index=0 then 1 else 0

theorem kind : (inputs 0).toNat=1 ∨ (inputs 0).toNat=2 := Or.inl rfl

theorem active : (inputs 1).toNat<256 := by decide

theorem children : PathFrameCompleteness.CanonicalChildren inputs := by
  intro position bound
  refine ⟨false,?_⟩
  have nonzero : 30+position≠0 := by omega
  simp only [inputs,if_neg nonzero]
  rfl

theorem count_bound : WideControl.Pair.raw ⟨inputs 26,inputs 27⟩+
    WideControl.Pair.raw ⟨inputs 28,inputs 29⟩≤1048576 := by decide

theorem all_flags_one : ∀ position,position<17 →
    (PathFrameProgram.program.eval inputs).getD (115+position) 0=1 :=
  PathFrameCompleteness.all_flags_one inputs kind active children count_bound

theorem field_complete {F : Type} [Field F] {p : Nat} [CharP F p] (large : 2^64<p) :
    ∃ valuation : Nat → F,(PathFrameGuards.compile p).satisfies valuation ∧
      ∀ index,index<PathFrameProgram.program.inputCount →
        valuation (WordField.packed index)=((inputs index).toNat : F) :=
  PathFrameCompleteness.typed_complete large inputs kind active children count_bound

end Core033.PathFrameFallback
