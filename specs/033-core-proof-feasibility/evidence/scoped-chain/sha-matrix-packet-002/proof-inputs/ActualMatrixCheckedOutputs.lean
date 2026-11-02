import Core033.MatrixRowBlocks
import Core033.KernelDecide
import ActualMatrixData37
namespace ActualSHAMatrixRows
open Core033 ActualSHAWordMatrixData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem rows2384 : actualRows2384=[CanonicalLinear.normalizeRow (WordField.equality actualModulus (WordField.packed 2376) 81057),CanonicalLinear.normalizeRow (WordField.equality actualModulus (WordField.packed 2377) 81058),CanonicalLinear.normalizeRow (WordField.equality actualModulus (WordField.packed 2378) 81059),CanonicalLinear.normalizeRow (WordField.equality actualModulus (WordField.packed 2379) 81060),CanonicalLinear.normalizeRow (WordField.equality actualModulus (WordField.packed 2380) 81061),CanonicalLinear.normalizeRow (WordField.equality actualModulus (WordField.packed 2381) 81062),CanonicalLinear.normalizeRow (WordField.equality actualModulus (WordField.packed 2382) 81063),CanonicalLinear.normalizeRow (WordField.equality actualModulus (WordField.packed 2383) 81064)] := by core033_kernel_decide
theorem stats2384 : actualRows2384.length=8 ∧ MatrixRowBlocks.rowsWeight actualRows2384=960 := by core033_kernel_decide
def partRowsOutputs : List R1CS.Row := actualRows2384
theorem partStatsOutputs : partRowsOutputs.length=8 ∧ MatrixRowBlocks.rowsWeight partRowsOutputs=960 := by
  simp only [partRowsOutputs,List.length_append,MatrixRowBlocks.rows_weight_append,stats2384.1,stats2384.2]
  decide
end ActualSHAMatrixRows
