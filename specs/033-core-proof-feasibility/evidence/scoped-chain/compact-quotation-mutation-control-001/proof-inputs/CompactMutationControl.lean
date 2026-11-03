import CompactMutationData0
import Core033.WordMatrix
import Core033.KernelDecide
namespace CompactMutationControl
open Core033 CompactMutationData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
theorem changed_actual_input_row_is_rejected :
    decide (actualRows0=(WordField.booleanBits actualModulus 0++
      [WordField.packing actualModulus 0,SHA256Circuit.literalRow (WordField.carry 0) false]))=false :=
  by core033_kernel_decide
end CompactMutationControl
