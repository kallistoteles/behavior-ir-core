import ActualPackedDigestMatrixData0
import ActualDigestBytes
import Core033.DigestPackingWitness
import Core033.MatrixRowBlocks
import Core033.KernelDecide
namespace CheckedPackedDigestMatrix
open Core033 ActualPackedDigestData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def actualMatrix : R1CS.Matrix := ⟨actualModulus,actualVariableCount,actualInputPorts,actualPrivatePorts,actualOutputPorts,actualConstantOne,[actualRows0,actualRows1,actualRows2,actualRows3,actualRows4,actualRows5,actualRows6,actualRows7,actualRows8,actualRows9,actualRows10,actualRows11,actualRows12,actualRows13,actualRows14,actualRows15,actualRows16,actualRows17,actualRows18,actualRows19,actualRows20,actualRows21,actualRows22,actualRows23,actualRows24,actualRows25,actualRows26,actualRows27,actualRows28,actualRows29,actualRows30,actualRows31,actualRows32,actualRows33,actualRows34].flatten⟩
theorem matrix_exact : actualMatrix=DigestPacking.compile R1CS.pallasScalarModulus := by core033_kernel_decide
theorem matrix_shape : actualMatrix.wellFormed=true := by
  rw [matrix_exact]
  exact DigestPackingShape.complete_well_formedness _ R1CS.modulus_larger_than_word (by decide)
theorem row_stats : actualMatrix.rows.length=2188 ∧ MatrixRowBlocks.rowsWeight actualMatrix.rows=329520 := by core033_kernel_decide
theorem port_stats : actualMatrix.inputPorts.length=8 ∧ actualMatrix.privatePorts.length=2176 ∧ actualMatrix.outputPorts.length=4 := by core033_kernel_decide
theorem binary_size : (MatrixCodec.encode actualMatrix).length=338358 := by
  rw [MatrixRowBlocks.encoded_matrix_size,port_stats.1,port_stats.2.1,port_stats.2.2,row_stats.2]
theorem actual_parsed : Matrix.parse (MatrixCodec.encode actualMatrix)=some actualMatrix := by
  apply MatrixCodecPayload.matrix_roundtrip actualMatrix matrix_shape
  · rw [row_stats.1];decide
  · rw [binary_size];decide
theorem actual_limb_sound {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (satisfied : actualMatrix.satisfies valuation)
    (inputValues : ∀ i,i<8 → valuation (WordField.packed i)=((inputs i).toNat : F)) (limb : Fin 4) :
    valuation (2185+limb.val)=
      (ByteLimbCodec.packPair (inputs (2*limb.val)) (inputs (2*limb.val+1)) : F) := by
  rw [matrix_exact] at satisfied
  have result:=DigestPacking.full_limb_sound R1CS.modulus_larger_than_word valuation inputs satisfied inputValues limb
  simpa only [(DigestPacking.layout R1CS.pallasScalarModulus).1] using result
theorem actual_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus] (inputs : Nat → WordIR.Word) :
    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧
      (∀ index,index<8 → valuation (WordField.packed index)=((inputs index).toNat : F)) ∧
      ∀ limb : Fin 4,valuation (2185+limb.val)=
        (ByteLimbCodec.packPair (inputs (2*limb.val)) (inputs (2*limb.val+1)) : F) := by
  rw [matrix_exact]
  simpa only [(DigestPacking.layout R1CS.pallasScalarModulus).1] using
    DigestPackingWitness.complete (F:=F) R1CS.modulus_larger_than_word (by decide) inputs
theorem source_denotes (inputs : Nat → WordIR.Word) :
    WordSource.NativeDenotes ActualDigestBytes.actualBytes inputs ((List.range 8).map (fun index=>ByteOrder.byteSwap (inputs index))) :=
  ActualDigestBytes.actual_meaning inputs
end CheckedPackedDigestMatrix
