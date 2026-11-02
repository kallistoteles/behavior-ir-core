import Core033.BranchWordProgram
import Core033.BooleanValues

namespace Core033.BranchWordEncoding
open WordIR
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000

def fieldBytes (inputs : Nat → Word) (start count : Nat) : Codec.Bytes :=
  (List.range' start count).flatMap (fun register=>WordBytesLE.bytes (inputs register))

theorem field_bytes_size (inputs : Nat → Word) (start count : Nat) :
    (fieldBytes inputs start count).length=count*4 := by
  simp [fieldBytes,List.length_flatMap,WordBytesLE.bytes_size,List.map_const',List.length_range',List.sum_replicate_nat]

theorem field_values_bytes (inputs : Nat → Word) (start count : Nat) :
    (BranchWordProgram.fieldValues inputs start count).map (fun word=>UInt8.ofNat word.toNat)=fieldBytes inputs start count := by
  simp only [BranchWordProgram.fieldValues,BranchWordProgram.wordValues,fieldBytes,
    List.map_flatMap,List.map_map,Function.comp_def,WordBytesLE.bytes]

theorem pair_field_exact (inputs : Nat → Word) (start : Nat) :
    fieldBytes inputs start 2=Codec.encodeLE 8 (WideControl.Pair.raw ⟨inputs start,inputs (start+1)⟩) := by
  change WordBytesLE.bytes (inputs start)++(WordBytesLE.bytes (inputs (start+1))++[])=_
  rw [List.append_nil]
  exact WordBytesLE.pair_bytes_exact _

theorem header_word_bytes :
    (BranchWordProgram.headerBytes.map (fun byte=>BitVec.ofNat 32 byte.toNat)).map
      (fun word=>UInt8.ofNat word.toNat)=BranchWordProgram.headerBytes := by
  rw [List.map_map]
  have mapped : ∀ byte : UInt8,UInt8.ofNat (BitVec.ofNat 32 byte.toNat).toNat=byte := by
    intro byte
    apply UInt8.toNat.inj
    have bound : byte.toNat<256 := byte.toNat_lt_size
    rw [BitVec.toNat_ofNat,Nat.mod_eq_of_lt (by omega),UInt8.toNat_ofNat',Nat.mod_eq_of_lt bound]
  simp only [Function.comp_def,mapped,List.map_id_fun']
  rfl

def branch (inputs : Nat → Word) (positive covered : Bool) : BranchCodec.Branch :=
  ⟨(inputs 0).toNat,(inputs 1).toNat,fieldBytes inputs 2 8,fieldBytes inputs 10 8,
    WideControl.Pair.raw ⟨inputs 18,inputs 19⟩,WideControl.Pair.raw ⟨inputs 20,inputs 21⟩,
    WideControl.Pair.raw ⟨inputs 22,inputs 23⟩,positive,covered⟩

def emittedBytes (inputs : Nat → Word) : Codec.Bytes :=
  (BranchWordProgram.program.eval inputs).map (fun word=>UInt8.ofNat word.toNat)

theorem exact_original_branch_encoding (inputs : Nat → Word) (positive covered : Bool)
    (positiveWord : inputs 24=WordControl.boolWord positive)
    (coveredWord : inputs 25=WordControl.boolWord covered) :
    emittedBytes inputs=BranchCodec.encode (branch inputs positive covered) := by
  simp only [emittedBytes,BranchWordProgram.program_meaning,BranchWordProgram.expected,
    List.map_append,List.map_cons,List.map_nil,header_word_bytes,field_values_bytes]
  rw [pair_field_exact inputs 18,pair_field_exact inputs 20,pair_field_exact inputs 22]
  simp only [WordBytesLE.byte_value,Nat.pow_zero,Nat.div_one,Nat.pow_one,positiveWord,coveredWord]
  unfold BranchCodec.encode branch BranchWordProgram.headerBytes
  cases positive <;> cases covered
  all_goals simp only [BranchCodec.boolNat,Bool.false_eq_true,if_false,Bool.true_eq,if_true,
    WordControl.boolWord,Codec.encodeLE]
  all_goals rfl

theorem represented_fields_framed (inputs : Nat → Word) (positive covered : Bool)
    (kind : (inputs 0).toNat=1 ∨ (inputs 0).toNat=2) (depth : (inputs 1).toNat<256) :
    BranchCodec.Framed (branch inputs positive covered) := by
  exact ⟨kind,depth,by simp [branch,field_bytes_size],
    by simp [branch,field_bytes_size],
    WideControl.pair_raw_bound _,WideControl.pair_raw_bound _,WideControl.pair_raw_bound _⟩

end Core033.BranchWordEncoding
