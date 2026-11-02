import Core033.IntegerIngress
import Core033.SignedProgram

namespace Core033.IntegerRulePipeline
open WordIR

def pair (inputs : Nat → Word) : WideControl.Pair :=
  ⟨IntegerIngress.packLE (inputs 0) (inputs 1) (inputs 2) (inputs 3),
    IntegerIngress.packLE (inputs 4) (inputs 5) (inputs 6) (inputs 7)⟩

def bytes (inputs : Nat → Word) : Codec.Bytes :=
  (List.range 8).map (fun index=>UInt8.ofNat (inputs index).toNat)

theorem pair_raw_exact (inputs : Nat → Word) (bounded : ∀ index,index<8 → (inputs index).toNat<256) :
    (pair inputs).raw=Codec.decodeLE (bytes inputs) :=
  IntegerIngress.full_u64_exact inputs bounded

theorem positive_bytes_exact (inputs : Nat → Word)
    (bounded : ∀ index,index<8 → (inputs index).toNat<256) :
    SignedGuards.positiveWord (pair inputs)=
      WordControl.boolWord (decide (0<Codec.signedValue (Codec.decodeLE (bytes inputs)))) := by
  rw [SignedGuards.positive_word_exact,←SignedGuards.signed_raw_exact,
    WideControl.to_ir_raw,pair_raw_exact inputs bounded]

theorem positive_core_exact (value : Reference.Int64) (inputs : Nat → Word)
    (bounded : ∀ index,index<8 → (inputs index).toNat<256)
    (represented : bytes inputs=Codec.encodeInt64 value) :
    SignedGuards.positiveWord (pair inputs)=WordControl.boolWord (decide (0<value.value)) := by
  rw [positive_bytes_exact inputs bounded,represented,Codec.signed_bytes_roundtrip]

def ruleInputs (inputs : Nat → Word) (index : Nat) : Word :=
  if index=0 then (pair inputs).low else (pair inputs).high

theorem rule_program_exact (value : Reference.Int64) (inputs : Nat → Word)
    (bounded : ∀ index,index<8 → (inputs index).toNat<256)
    (represented : bytes inputs=Codec.encodeInt64 value) :
    SignedProgram.program.eval (ruleInputs inputs)=
      [WordControl.boolWord (decide (0<value.value))] := by
  rw [SignedProgram.program_meaning]
  change [SignedGuards.positiveWord (pair inputs)]=_
  rw [positive_core_exact value inputs bounded represented]

end Core033.IntegerRulePipeline
