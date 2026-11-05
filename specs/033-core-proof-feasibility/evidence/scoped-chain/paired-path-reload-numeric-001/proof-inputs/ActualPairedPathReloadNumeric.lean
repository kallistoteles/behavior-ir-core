import ControlWindowMatrixConstants
import ControlWindowMatrixData0
import ControlWindowMatrixData1
import ControlWindowMatrixData2
import ActualPairedPathReloadIR
import Core033.KernelDecide
import Core033.WordGuardSuffix
namespace ActualPairedPathReloadNumeric
open Core033 ControlWindowNumericData
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 16000000
def actualFullRows : List R1CS.Row := [actualRows0,actualRows1,actualRows2,actualRows3,actualRows4,actualRows5,actualRows6,actualRows7,actualRows8,actualRows9,actualRows10,actualRows11,actualRows12,actualRows13,actualRows14,actualRows15,actualRows16,actualRows17,actualRows18,actualRows19,actualRows20,actualRows21,actualRows22,actualRows23,actualRows24,actualRows25,actualRows26,actualRows27,actualRows28,actualRows29,actualRows30,actualRows31,actualRows32,actualRows33,actualRows34,actualRows35,actualRows36,actualRows37,actualRows38,actualRows39,actualRows40,actualRows41,actualRows42,actualRows43,actualRows44,actualRows45,actualRows46,actualRows47,actualRows48,actualRows49,actualRows50,actualRows51,actualRows52,actualRows53,actualRows54,actualRows55,actualRows56,actualRows57,actualRows58,actualRows59,actualRows60,actualRows61,actualRows62,actualRows63,actualRows64,actualRows65,actualRows66,actualRows67,actualRows68,actualRows69,actualRows70,actualRows71,actualRows72,actualRows73,actualRows74,actualRows75,actualRows76,actualRows77,actualRows78,actualRows79,actualRows80,actualRows81,actualRows82,actualRows83,actualRows84,actualRows85,actualRows86,actualRows87,actualRows88,actualRows89,actualRows90,actualRows91,actualRows92,actualRows93,actualRows94,actualRows95,actualRows96,actualRows97,actualRows98,actualRows99,actualRows100,actualRows101,actualRows102,actualRows103,actualRows104,actualRows105,actualRows106,actualRows107,actualRows108,actualRows109,actualRows110,actualRows111,actualRows112,actualRows113,actualRows114,actualRows115,actualRows116,actualRows117,actualRows118,actualRows119,actualRows120,actualRows121,actualRows122,actualRows123,actualRows124,actualRows125,actualRows126,actualRows127,actualRows128,actualRows129,actualRows130,actualRows131,actualRows132,actualRows133,actualRows134,actualRows135,actualRows136,actualRows137,actualRows138,actualRows139,actualRows140,actualRows141,actualRows142,actualRows143,actualRows144,actualRows145,actualRows146,actualRows147,actualRows148,actualRows149,actualRows150,actualRows151,actualRows152,actualRows153,actualRows154,actualRows155,actualRows156,actualRows157].flatten
def actualMatrix : R1CS.Matrix := ⟨actualModulus,actualVariableCount,actualInputPorts,actualPrivatePorts,actualOutputPorts,actualConstantOne,actualFullRows⟩
theorem actual_model : actualMatrix=WordGuardSuffix.compile R1CS.pallasScalarModulus ActualPairedPathReloadIR.program 96 3 := by core033_kernel_decide
theorem actual_guard {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (valuation : Nat → F) (inputs : Nat → WordIR.Word)
    (accepted : actualMatrix.satisfies valuation)
    (inputValues : ∀ index,index<108 → valuation (WordField.packed index)=((inputs index).toNat : F))
    (position : Nat) (bound : position<3) :
    (ActualPairedPathReloadIR.program.eval inputs).getD (96+position) 0=1 := by
  rw [actual_model] at accepted
  exact WordGuardSuffix.forced_output_one R1CS.modulus_larger_than_word ActualPairedPathReloadIR.program ActualPairedPathReloadIR.program_valid
    96 3 (by rw [ActualPairedPathReloadIR.output_count]) valuation inputs accepted inputValues position bound
theorem actual_admitted_complete {F : Type} [Field F] [CharP F R1CS.pallasScalarModulus]
    (inputs : Nat → WordIR.Word)
    (admitted : ∀ position,position<3 → (ActualPairedPathReloadIR.program.eval inputs).getD (96+position) 0=1) :
    ∃ valuation : Nat → F,actualMatrix.satisfies valuation ∧
      (∀ index,index<108 → valuation (WordField.packed index)=((inputs index).toNat : F)) := by
  rw [actual_model]
  exact WordGuardSuffix.admitted_complete (F:=F) R1CS.modulus_larger_than_word ActualPairedPathReloadIR.program
    ActualPairedPathReloadIR.program_valid 96 3 (by rw [ActualPairedPathReloadIR.output_count]) inputs admitted
end ActualPairedPathReloadNumeric
