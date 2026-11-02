import Core033.MatrixRowBlocks

namespace Core033.MatrixPrivatePorts
open WordField WordMatrix

theorem private_interval (p : Nat) (program : WordIR.Program) :
    (compile p program).privatePorts=(List.range program.inputCount).flatMap WordMatrixPorts.tail++
      List.range' (base program.inputCount) (34*program.operations.length) := by
  change WordMatrixPorts.privateWords program.inputCount (wordCount program)=_
  rw [WordMatrixPorts.private_split _ _ (by unfold wordCount;omega),MatrixRowBlocks.interval_blocks]
  simp only [wordCount,Nat.add_sub_cancel_left]

end Core033.MatrixPrivatePorts
