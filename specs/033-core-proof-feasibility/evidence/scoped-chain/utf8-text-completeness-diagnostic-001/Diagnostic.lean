import Core033.ControlPrimitives
import Core033.Codec

namespace Core033.Utf8Encoding
open WordIR WordStage

def chooseLess (word cutoff yes no : Word) : Word :=
  ControlPrimitives.selectRaw (WordControl.lessWord word cutoff) yes no

theorem choose_less (word cutoff yes no : Word) :
    chooseLess word cutoff yes no=(if word.toNat<cutoff.toNat then yes else no) := by
  rw [chooseLess,WordControl.less_word_exact]
  have select (bit : Bool) : ControlPrimitives.selectRaw (WordControl.boolWord bit) yes no=
      (if bit then yes else no) := WordControl.select_word_exact bit yes no
  rw [select]
  simp only [decide_eq_true_eq]

def part (word : Word) (shift mask prefixValue : Nat) : Word :=
  (word.ushiftRight shift &&& BitVec.ofNat 32 mask)+BitVec.ofNat 32 prefixValue

def first (word : Word) : Word :=
  chooseLess word 128 word (chooseLess word 2048 (part word 6 31 192)
    (chooseLess word 65536 (part word 12 15 224) (part word 18 7 240)))

def second (word : Word) : Word :=
  chooseLess word 128 0 (chooseLess word 2048 (part word 0 63 128)
    (chooseLess word 65536 (part word 6 63 128) (part word 12 63 128)))

def third (word : Word) : Word :=
  chooseLess word 2048 0 (chooseLess word 65536 (part word 0 63 128) (part word 6 63 128))

def fourth (word : Word) : Word := chooseLess word 65536 0 (part word 0 63 128)

def width (word : Word) : Word :=
  chooseLess word 128 1 (chooseLess word 2048 2 (chooseLess word 65536 3 4))

def scalarFlag (word : Word) : Word :=
  WordControl.lessWord word 1114112 &&&
    (WordControl.lessWord word 55296 ^^^ WordControl.lessWord word 57344 ^^^ 1)

def Scalar (word : Word) : Prop := word.toNat≤1114111 ∧ (word.toNat<55296 ∨ 57343<word.toNat)

instance (word : Word) : Decidable (Scalar word) := by unfold Scalar;infer_instance

theorem bool_xor (left right : Bool) :
    WordControl.boolWord left ^^^ WordControl.boolWord right=WordControl.boolWord (Bool.xor left right) := by
  cases left <;> cases right <;> rfl

theorem scalar_flag_exact (word : Word) :
    scalarFlag word=WordControl.boolWord (decide (Scalar word)) := by
  simp only [scalarFlag,WordControl.less_word_exact]
  change WordControl.boolWord (decide (word.toNat<1114112)) &&&
    (WordControl.boolWord (decide (word.toNat<55296)) ^^^
      WordControl.boolWord (decide (word.toNat<57344)) ^^^ WordControl.boolWord true)=_
  rw [bool_xor,bool_xor,WordControl.bool_and]
  apply congrArg WordControl.boolWord
  apply Bool.eq_iff_iff.mpr
  by_cases low : word.toNat<55296 <;> by_cases high : word.toNat<57344 <;>
    by_cases upper : word.toNat<1114112
  all_goals simp [Scalar,low,high,upper]
  all_goals omega

def charWord (char : Char) : Word := char.val.toBitVec

theorem char_word_scalar (char : Char) : Scalar (charWord char) := by
  have valid:=char.valid
  change char.toNat.isValidChar at valid
  change char.toNat≤1114111 ∧ (char.toNat<55296 ∨ 57343<char.toNat)
  unfold Nat.isValidChar at valid
  omega

def toChar (word : Word) (valid : Scalar word) : Char :=
  Char.ofNatAux word.toNat (by unfold Scalar at valid;unfold Nat.isValidChar;omega)

theorem reconstructed_char_word (word : Word) (valid : Scalar word) : charWord (toChar word valid)=word := by
  apply BitVec.eq_of_toNat_eq
  change word.toNat=word.toNat
  rfl

theorem part_byte (word : Word) (shift bits prefixValue : Nat)
    (bitCount : bits=3 ∨ bits=4 ∨ bits=5 ∨ bits=6) (prefixBound : prefixValue<256) :
    UInt8.ofNat (part word shift (2^bits-1) prefixValue).toNat=
      UInt8.ofNat ((word.toNat/2^shift)%2^bits+prefixValue) := by
  apply UInt8.toNat.inj
  simp only [part,BitVec.toNat_add,BitVec.toNat_and,BitVec.ushiftRight_eq,
    BitVec.toNat_ushiftRight,Nat.shiftRight_eq_div_pow,BitVec.toNat_ofNat,UInt8.toNat_ofNat']
  have maskSmall : 2^bits-1<2^32 := by rcases bitCount with rfl|rfl|rfl|rfl <;> decide
  have prefixSmall : prefixValue<2^32 := by omega
  rw [Nat.mod_eq_of_lt maskSmall,Nat.mod_eq_of_lt prefixSmall,
    Nat.and_two_pow_sub_one_eq_mod,Nat.mod_mod_of_dvd _ (by decide : 256∣2^32)]

def encoding (word : Word) : List UInt8 :=
  ([first word,second word,third word,fourth word].map (fun value=>UInt8.ofNat value.toNat)).take (width word).toNat

theorem encoding_char (char : Char) : encoding (charWord char)=String.utf8EncodeChar char := by
  have charNat : (charWord char).toNat=char.toNat := rfl
  have head2:=part_byte (charWord char) 6 5 192 (by simp) (by decide)
  have head3:=part_byte (charWord char) 12 4 224 (by simp) (by decide)
  have head4:=part_byte (charWord char) 18 3 240 (by simp) (by decide)
  have tail0:=part_byte (charWord char) 0 6 128 (by simp) (by decide)
  have tail6:=part_byte (charWord char) 6 6 128 (by simp) (by decide)
  have tail12:=part_byte (charWord char) 12 6 128 (by simp) (by decide)
  simp only [Nat.reducePow,Nat.reduceSub,Nat.reduceDiv,charNat] at head2 head3 head4 tail0 tail6 tail12
  have one : (char.toNat≤127) ↔ char.toNat<128 := by omega
  have two : (char.toNat≤2047) ↔ char.toNat<2048 := by omega
  have three : (char.toNat≤65535) ↔ char.toNat<65536 := by omega
  by_cases small : char.toNat<128 <;> by_cases middle : char.toNat<2048 <;>
    by_cases large : char.toNat<65536
  all_goals simp [encoding,first,second,third,fourth,width,choose_less,charNat,
    show (128 : Word).toNat=128 by decide,show (2048 : Word).toNat=2048 by decide,
    show (65536 : Word).toNat=65536 by decide,
    show (1 : Word).toNat=1 by decide,show (2 : Word).toNat=2 by decide,
    show (3 : Word).toNat=3 by decide,show (4 : Word).toNat=4 by decide,
    head2,head3,head4,tail0,tail6,tail12,String.utf8EncodeChar,one,two,three,small,middle,large]
  all_goals first | rfl | omega

theorem scalar_encoding_exact (word : Word) (valid : Scalar word) :
    encoding word=String.utf8EncodeChar (toChar word valid) := by
  calc
    encoding word=encoding (charWord (toChar word valid)) :=
      congrArg encoding (reconstructed_char_word word valid).symm
    _=String.utf8EncodeChar (toChar word valid) := encoding_char _

theorem encoding_valid_utf8 (word : Word) (valid : Scalar word) :
    (encoding word).toByteArray.IsValidUTF8 := by
  rw [scalar_encoding_exact word valid]
  exact Char.isValidUTF8_toByteArray_utf8EncodeChar

theorem encoding_complete (char : Char) :
    ∃ word,Scalar word ∧ encoding word=String.utf8EncodeChar char :=
  ⟨charWord char,char_word_scalar char,encoding_char char⟩

structure Witness where
  word : Word
  valid : Scalar word

def Witness.character (witness : Witness) : Char := toChar witness.word witness.valid

def witnessBytes (witnesses : List Witness) : List UInt8 :=
  witnesses.flatMap (fun witness=>encoding witness.word)

def witnessText (witnesses : List Witness) : String := String.ofList (witnesses.map Witness.character)

theorem witness_text_exact (witnesses : List Witness) :
    witnessBytes witnesses=Codec.textBytes (witnessText witnesses) := by
  unfold witnessBytes witnessText Codec.textBytes
  simp only [String.toByteArray_ofList,List.utf8Encode,List.flatMap_map,Function.comp_def]
  simp only [List.toList_data_toByteArray]
  induction witnesses with
  | nil => rfl
  | cons witness rest ih =>
    simp only [List.flatMap_cons,scalar_encoding_exact witness.word witness.valid,ih]
    rfl


def charWitness (char : Char) : Witness := ⟨charWord char,char_word_scalar char⟩

theorem char_witness_exact (char : Char) : (charWitness char).character=char := by
  apply Char.ext
  apply UInt32.toNat.inj
  rfl

theorem text_witness_complete (text : String) :
    ∃ witnesses,witnessText witnesses=text ∧ witnessBytes witnesses=Codec.textBytes text := by
  obtain ⟨chars,represented⟩:=String.exists_eq_ofList text
  refine ⟨chars.map charWitness,?_,?_⟩
  · unfold witnessText
    simp only [List.map_map,Function.comp_def,char_witness_exact,List.map_id]
    exact represented.symm
  · rw [witness_text_exact]
    congr 1
    unfold witnessText
    simp only [List.map_map,Function.comp_def,char_witness_exact,List.map_id]
    exact represented.symm

theorem accepted_text_unique (witnesses : List Witness) (text : String)
    (same : witnessBytes witnesses=Codec.textBytes text) : witnessText witnesses=text := by
  apply Codec.text_bytes_exact
  exact (witness_text_exact witnesses).symm.trans same

theorem accepted_text_decode (witnesses : List Witness) :
    Codec.decodeText (witnessBytes witnesses)=some (witnessText witnesses) := by
  rw [witness_text_exact]
  exact Codec.text_roundtrip _

end Core033.Utf8Encoding
