import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixConstants
namespace ActualMatrixHeader
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def outputRegisters : List Nat := [2376,2377,2378,2379,2380,2381,2382,2383]
theorem input_ports : actualInputPorts=(List.range 24).map WordField.packed := by core033_kernel_decide
theorem output_ports : actualOutputPorts=(List.range 8).map (fun i=>81057+i) := by core033_kernel_decide
theorem private_ports : actualPrivatePorts=(List.range 24).flatMap WordMatrixPorts.tail++List.range' 817 80240 := by
  unfold actualPrivatePorts
  rw [show List.range' 784 80273=List.range' 784 33++List.range' 817 80240 from List.range'_append_1.symm]
  change _=(_++List.range' 784 33)++List.range' 817 80240
  simp only [List.append_assoc]
  rfl
theorem port_lengths : actualInputPorts.length=24 ∧ actualPrivatePorts.length=81032 ∧ actualOutputPorts.length=8 := by
  simp only [actualInputPorts,actualPrivatePorts,actualOutputPorts,List.length_append,List.length_cons,List.length_nil,List.length_range']
  decide
theorem constants : actualModulus=R1CS.pallasScalarModulus ∧ actualVariableCount=81065 ∧ actualConstantOne=0 := by decide
end ActualMatrixHeader
